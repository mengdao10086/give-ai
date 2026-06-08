# 飞智散热器 App — SDK 36 (Android 16) 蓝牙扫描不停止 Bug 分析报告

## 一、App 架构概览

反编译后的 App 代码结构如下：

```
com.example.extool                        ← 应用层 (ViewModel, Activity)
  ├── App.smali                           应用入口
  ├── MainActivity.smali                  主界面
  ├── BluetoothViewModel.smali            蓝牙 ViewModel (抽象)
  └── WaspWingViewModel.smali            散热器 ViewModel (具体实现)

com.flydigi.sdk.bluetooth                  ← 蓝牙 SDK 层
  ├── AbstractBluetoothController.smali   蓝牙控制器基类 (核心)
  ├── LeDataInteractionController.smali  BLE 数据交互控制器
  ├── BtDataInteractionController.smali   经典蓝牙数据交互控制器

com.flydigi.sdk.waspwing                   ← 散热器专用层
  ├── WaspWingManager.smali               散热器管理器 (单例)
  └── WaspWingDataInteractionController   BLE 数据交互实现
```

## 二、扫描→连接→停止 的正常流程

```
1. WaspWingViewModel.scan()
   → WaspWingManager.startScan(activity, scanMode=2)
     → AbstractBluetoothController.startScan(activity, 2)
       → startLeScan(activity)
         ① 通过 PermissionX 请求权限 (SDK>=31 请求 BLUETOOTH_SCAN，否则请求 ACCESS_FINE_LOCATION)
         ② 权限通过后 → startLeScan() (无参版本)
            - 设置 inScanning = true
            - scanMode==2 → 调用已废弃的 BluetoothAdapter.startLeScan(LeScanCallback)
            - 通知 scanDeviceCallbacks.onScanStarted()

2. 扫描发现设备:
   scanCallback.onScanResult() → onDeviceFound(devices)
     → scanDeviceCallbacks.onDeviceFound(devices)
       → BluetoothViewModel.onDeviceFound(devices)
         ① 调用 this.stopScan() ← 抽象方法
         ② 取第一个设备调用 connect(device)

3. WaspWingViewModel.connect(device)
   → WaspWingManager.connectGattWith(device)
     → LeDataInteractionController.connectGattWith(device)
       → 发起 GATT 连接

4. 设备连接成功:
   mConnectStateReceiver 接收到 ACL_CONNECTED 广播
     → setMBluetoothDevice(device)
     → onDeviceConnected(device)
       → connectionStateCallbacks.onDeviceConnected(device)
         → BluetoothViewModel.onDeviceConnected()
           - 更新 LiveData: bluetoothName, macAddress, connectState=true
```

## 三、Bug 根因分析

### 🔴 致命缺陷：已配对设备自动回连时，扫描永不停止

**触发条件：**
- 散热器设备之前已与手机配对（Bonded）
- 用户打开 App → 开始扫描
- 系统自动回连已配对设备（Android 系统行为）
- `ACL_CONNECTED` 广播触发

**Bug 链路追踪：**

当 `mConnectStateReceiver` 收到 `ACL_CONNECTED` 时，执行路径如下：

```java
// AbstractBluetoothController$mConnectStateReceiver$1.smali (line 238-345)
if (action == "ACL_CONNECTED") {
    setMBluetoothDevice(device);    // 设置当前设备
    onDeviceConnected(device);      // 通知连接回调
    // ⚠️ 这里 NEVER 调用 stopScan()！
}
```

而 `stopScan()` 只在以下两处被调用：

| 调用位置 | 触发条件 |
|---------|---------|
| `BluetoothViewModel.onDeviceFound()` → `stopScan()` | 扫描发现新设备 |
| `AbstractBluetoothController.createBond()` → `stopScan()` | 用户手动点击配对 |

**当设备已配对并自动回连时：**
- ❌ `onDeviceFound()` 不会触发（设备未通过扫描被发现）
- ❌ `createBond()` 不会触发（设备已配对，无需再次配对）
- ✅ `ACL_CONNECTED` 触发 → UI 显示"已连接"
- ❌ 但 `stopScan()` 从未被调用 → **UI 持续显示"扫描中"**

### 🟡 SDK 36 加剧因素 #1：使用了已废弃的 BLE 扫描 API

**问题代码位置：** `AbstractBluetoothController.smali` line 2087-2098

```java
// scanMode == 2 时使用已废弃 API
if (scanMode == 2) {
    mBluetoothAdapter.startLeScan(getLeScanCallback());  
    // ↑ BluetoothAdapter.startLeScan() 自 API 21 已废弃
    // 在 SDK 36 上可能静默失败，返回 false 但不抛异常
}
```

`WaspWingViewModel.scan()` 硬编码使用 `scanMode = 2`：
```java
// WaspWingViewModel.smali line 672-675
WaspWingManager.startScan(activity, 2);
```

**影响：**
- 在 SDK 36 上，废弃的 `startLeScan()` 可能完全不工作
- `inScanning = true` 已设置，`onScanStarted()` 已通知
- 但底层扫描可能从未真正启动或无法发现任何设备
- 导致 `onDeviceFound()` 永远不会触发

### 🟡 SDK 36 加剧因素 #2：`registerReceiver()` 未指定导出标志

**问题代码位置：** `AbstractBluetoothController.smali` 构造函数 (lines 597, 612, 637, 650)

```java
// 当前代码 (已废弃的 API 用法)
mContext.registerReceiver(mClassicScanReceiver, filter);
mContext.registerReceiver(mBluetoothStateReceiver, filter);
mContext.registerReceiver(mConnectStateReceiver, filter);
mContext.registerReceiver(mBondStateReceiver, filter);

// 自 SDK 34 (Android 14) 起，必须使用：
// mContext.registerReceiver(receiver, filter, RECEIVER_NOT_EXPORTED);
```

**影响：**
- SDK 33 起已标记为废弃
- SDK 34+ 要求指明 `RECEIVER_EXPORTED` 或 `RECEIVER_NOT_EXPORTED`
- SDK 36 可能**拒绝注册**未指定标志的 BroadcastReceiver
- 如果 `mConnectStateReceiver` 注册失败 → `ACL_CONNECTED` 事件无法接收
- 同时 `mBluetoothStateReceiver` 失败 → 蓝牙开关状态也无法感知

### 🟡 SDK 36 加剧因素 #3：ConnectDevice/DisconnectDevice 的 SDK 版本判断

**问题代码位置：** `AbstractBluetoothController.smali` lines 1108-1117

```java
// connectDevice() 中:
if (SDK_INT >= 28) {
    return true;  // ⚠️ SDK >= 28 直接返回 true，不做任何连接操作！
}
```

对于 SDK 28+ 设备，`connectDevice()` 直接返回 true 而不执行实际的连接逻辑。这意味着在 SDK 36 上，设备的 GATT 连接完全依赖系统自动回连，而非 App 显式发起。

## 四、修复方案

### 修复 1（最关键）：在 ACL_CONNECTED 时调用 stopScan()

在 `AbstractBluetoothController$mConnectStateReceiver$1.smali` 的 `ACL_CONNECTED` 分支中添加 `stopScan()` 调用：

```java
// 伪代码
if (action == "ACL_CONNECTED") {
    setMBluetoothDevice(device);
    stopScan();  // ← 添加此行
    onDeviceConnected(device);
}
```

### 修复 2：用新版 API 替换废弃的 startLeScan()

修改 `startLeScan()` 方法，使 scanMode==2 也使用 `BluetoothLeScanner`：

```java
// 不再使用废弃的 BluetoothAdapter.startLeScan()
// 统一使用 BluetoothLeScanner.startScan()
if (mBluetoothAdapter != null) {
    BluetoothLeScanner scanner = mBluetoothAdapter.getBluetoothLeScanner();
    if (scanner != null) {
        ScanSettings settings = new ScanSettings.Builder()
            .setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY)
            .setReportDelay(0)
            .build();
        scanner.startScan(Collections.emptyList(), settings, scanCallback);
    }
}
```

### 修复 3：registerReceiver() 添加导出标志

```java
// 对于系统广播，使用 RECEIVER_NOT_EXPORTED
if (SDK_INT >= 33) {
    mContext.registerReceiver(mConnectStateReceiver, filter, Context.RECEIVER_NOT_EXPORTED);
} else {
    mContext.registerReceiver(mConnectStateReceiver, filter);
}
```

### 修复 4：在 onDeviceConnected() 中停止扫描

在 `BluetoothViewModel.onDeviceConnected()` 或子类中调用 `stopScan()`：

```java
// BluetoothViewModel.kt (伪代码)
override fun onDeviceConnected(device: BluetoothDevice?) {
    // 现有逻辑...
    _connectLiveData.postValue(true)
    // 新增：确保连接后停止扫描
    stopScan()
}
```

## 五、文件修改清单

| 文件 | 修改内容 |
|------|---------|
| `AbstractBluetoothController$mConnectStateReceiver$1.smali` | ACL_CONNECTED 分支添加 stopScan() 调用 |
| `AbstractBluetoothController.smali` | ① startLeScan() 中废弃 API 替换 ② registerReceiver() 添加标志 |
| `BluetoothViewModel.smali` | onDeviceConnected() 中添加 stopScan() |
| `WaspWingViewModel.smali` | scan() 中改用非废弃的 scanMode 或移除硬编码 scanMode=2 |
