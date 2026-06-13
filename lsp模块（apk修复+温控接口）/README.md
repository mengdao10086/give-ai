# 飞智 B6X 增强计划 — LSPosed 模块

## 简介

**飞智 B6X 增强计划**是一个为飞智 B6X 散热器开发者工具（`com.flydigi.waspwing.experimental`）提供修复和扩展功能的 LSPosed 模块。

### 主要功能

| 版本 | 功能 | 状态 |
|------|------|------|
| **v1.0** | 修复 Android 16 (API 36) 上蓝牙扫描生命周期崩溃导致无法连接散热器的问题 | ✅ 已发布 |
| **v2.0** | 智能温控后台守护程序的广播接口 + pgrep 进程检测 | ⚙️ 开发中 |

---

## 一、修复内容（v1.0）

本模块修复了飞智散热器开发者工具在 **Android 16** 上无法使用的 4 层 Bug：

| 层级 | 问题 | 修复方式 |
|------|------|---------|
| 控制器层 | 设备连接后扫描未停止，影响后续 BLE 操作 | 拦截 `onDeviceConnected` → 调用 `stopScan()` |
| ViewModel 层 | BluetoothViewModel 的 LiveData 未及时更新 | 拦截 `onDeviceConnected` → 手动 postValue |
| UI 层 | 智能温控模式下 UI 闪烁（convertFromDevice 副作用） | 不创建中间态 WaspWingInfo，等正常 BLE 数据流 |
| Android 16 | `checkBluetoothPermission()` 在 BLE 回调线程返回 false，导致 `discoverServices()` 从未被调用 | 强制返回 true |

## 二、智能温控扩展（v2.0 开发中）

### 2.1 系统架构

```
 ┌─ 手机 ──────────────────────────────────────────────────┐
 │                                                         │
 │  飞智 App 进程                        Root 进程          │
 │  ┌──────────────────────┐     pgrep    ┌───────────────┐  │
 │  │ LSPosed 模块          │ ◄────────── │ tempctrl      │  │
 │  │                      │  进程存活检测 │ C 守护程序     │  │
 │  │ BLE 连接/断联        │             │ 每 5 秒：     │  │
 │  │ (tempctrl 自行检测   │             │ 读温度→决策→  │  │
 │  │  进程存活)           │             │ 下发指令      │  │
 │  │                      │             │               │  │
 │  │ ←── am broadcast ────│──指令───────│               │  │
 │  │       mode/temp/     │             │               │  │
 │  │       windOC/coldOC  │             └───────────────┘  │
 │  │          ↓                                          │
 │  │  WaspWingManager                                     │
 │  │  .setRunMode(7 params)                              │
 │  │  .setRunMode(7 params)                              │
 │  │          ↓                                          │
 │  │     BLE 指令 → 散热器                                │
 │  └──────────────────────┘                              │
 └────────────────────────────────────────────────────────┘
```

### 2.2 进程检测与控制通信

C 守护程序通过 `pgrep` 每 5 秒检测 App 进程存活，不再使用命名管道（FIFO）：

```
tempctrl 侧（C 守护程序）：
  每轮 main_loop() 末尾执行 pgrep -f com.flydigi.waspwing.experimental
  ├─ 进程存在 → 正常执行控制
  └─ 进程消失 → 记录失联时间，等待复活
      └─ 复活时检查失联时间
          ├─ ≥60 秒 → reset_state() 重置所有状态
          └─ <60 秒 → 正常恢复，强制重发当前档位

模块侧（不再主动写入 FIFO）：
  模块只负责接收 am broadcast 并调用 setRunMode
  BLE 连接/断联由 tempctrl 自行检测
```

**FIFO 废弃原因**：KernelSU 下 App 进程无权限写 `/data/local/tmp/`，
`Runtime.exec("su", "-c", "echo > fifo")` 在 KSU 中不可靠。

### 2.3 档位定义

> 档位映射使用查表法，基于实测数据（`zone核心温度数值对比.xlsx` Sheet2）。

| 档位 | 模式 | 目标温度 | 风扇转速 | 制冷片 | 说明 |
|------|------|---------|---------|--------|------|
| 10 | 固定功率 | — | 6000RPM | 190 | 制冷峰值（更高强度下鳍片解热不足反而倒退） |
| **9** | **智能温控** | **12°C** | **5800RPM** | **自动** | **紧急3-min** |
| 8 | 智能温控 | 13°C | 5500RPM | 自动 | 官方默认风扇满速值 |
| **7** | **智能温控** | **14°C** | **5100RPM** | **自动** | **紧急2-min** |
| 6 | 智能温控 | 15°C | 4600RPM | 自动 | |
| **5** | **智能温控** | **16°C** | **4000RPM** | **自动** | **自此以下智能模式温度波动较大，紧急1-min** |
| 4 | 智能温控 | 18°C | 3400RPM | 自动 | |
| 3 | 固定功率 | — | 2900RPM | 80 | 低功耗1 |
| 2 | 固定功率 | — | 2500RPM | 60 | 低功耗2 |
| 1 | 固定功率 | — | 2200RPM | 40 | 低功耗3 |
| 0 | 固定功率 | — | 2000RPM | 20 | 伪待机 |

**setRunMode 参数映射：**
```
setRunMode(mode, targetTemperature,
           windLevelOverclock, coldLevelOverclock,
           windLevel, modeCustom, extra)
```
- `mode=0`（智能温控）：`targetTemperature` + `windLevel`（风扇转速上限）
- `mode=1`（固定功率）：`windLevelOverclock`（风扇转速）+ `coldLevelOverclock`（制冷片强度）

---

## 三、编译方法

### 3.1 编译 LSPosed 模块

**Android Studio：** 用 Android Studio 打开 `lsp模块（apk修复+温控接口）/` 目录 → Build → Build APK

**命令行：**
```bash
cd lsp模块（apk修复+温控接口）
export ANDROID_HOME=/path/to/Android/Sdk
./gradlew assembleRelease
```

**GitHub Actions：** 推送 tag（`v*`）或手动触发 workflow_dispatch 即可自动编译。

---

## 四、安装与使用

### 4.1 安装模块

1. 编译或下载 APK
2. 安装到手机（允许未知来源应用）
3. 在 LSPosed 中启用模块，作用域勾选 `com.flydigi.waspwing.experimental`
4. 强制停止目标 App 或重启手机

### 4.2 部署 C 守护程序（v2.0）

编译后将 `tempctrl` 放入 Magisk 模块目录，编写 `service.sh` 启动。

### 4.3 Shell 手动测试广播

```bash
# 智能温控：目标 16°C，风扇上限 4000RPM
am broadcast -a com.flydigi.SET_TEMPERATURE \
    --ei mode 0 --ei temperature 16 --ei windLevel 4000

# 固定功率：风扇 2900RPM，制冷 80
am broadcast -a com.flydigi.SET_TEMPERATURE \
    --ei mode 1 --ei windOC 2900 --ei coldOC 80
```

---

## 五、模块文件结构

```
app/
├── src/main/
│   ├── AndroidManifest.xml       ← 模块声明 + Xposed 元数据
│   ├── assets/xposed_init        ← Xposed 入口
│   └── java/.../MainHook.java    ← 核心注入代码（修复 + 广播接收处理）
├── build.gradle.kts
├── settings.gradle.kts
└── gradle/
```

---

## 六、验证

```bash
# 查看模块日志
adb logcat -s WaspWingTempCtrl

# 查看 tempctrl 日志
adb shell cat /cache/tempctrl.log
```

---

## 七、常见问题

**Q: 模块不生效？**
A: 确保 LSPosed ≥ 1.8，模块启用后**强制停止目标 App** 或重启手机。

**Q: 发送广播后温度没变？**
A: 检查① LSPosed 中模块已勾选且作用域正确 ② App BLE 已连接。

**Q: C 守护程序没在运行？**
A: 检查 Magisk 模块的 `service.sh` 是否正确，查看 `/cache/tempctrl.log`。

---

## 八、注意事项 / 已知风险

| 风险 | 说明 |
|------|------|
| `RECEIVER_EXPORTED` 权限 | `am broadcast` 从系统进程发广播，模块需 `RECEIVER_EXPORTED` 才能收到（Android 14+） |
| BLE 重连时序 | `BluetoothGatt.disconnect()` 钩子可能被多次触发（已移除 FIFO，不影响） |
| `convertFromDevice()` 禁用 | 不要调用该方法——它创建全默认值 WaspWingInfo，触发循环导致 UI 闪烁 |
