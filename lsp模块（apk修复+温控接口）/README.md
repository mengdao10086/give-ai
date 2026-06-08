# 飞智散热器智能温控系统

本项目包含两个组件，协作实现散热器的全自动智能温控：

| 组件 | 功能 | 运行位置 |
|------|------|---------|
| **LSPosed 模块** | 接收外部广播 → 调用 WaspWingManager API | 飞智 App 进程内部 |
| **tempctrl 守护程序 (C)** | 读取手机温度 → 决策档位 → 发广播 | Magisk 模块（系统 root） |

---

## 一、系统架构

```
┌──────────────────────────────────────────────────┐
│                  手机系统层                         │
│  ┌────────────────┐    ┌─────────────────────┐    │
│  │ tempctrl (C)   │    │  飞智 App 进程       │    │
│  │                │    │  ┌───────────────┐  │    │
│  │ 每5秒循环:     │    │  │LSPosed 模块   │  │    │
│  │ ① 读电池温度   │───→│  │BroadcastReceiver│  │    │
│  │ ② 读CPU温度    │am  │  │       ↓        │  │    │
│  │ ③ 算法决策档位  │broad│  │WaspWingManager│  │    │
│  │ ④ 发广播       │cast │  │       ↓        │  │    │
│  │                │    │  │  BLE 指令       │  │    │
│  │ Magisk保活     │    │  └───────────────┘  │    │
│  └────────────────┘    └─────────────────────┘    │
│                           │                       │
│                           ▼                       │
│                     ┌──────────┐                  │
│                     │ WaspWing │                  │
│                     │  散热器   │                  │
│                     └──────────┘                  │
└──────────────────────────────────────────────────┘
```

---

## 二、tempctrl 智能温控守护程序

### 2.1 角色说明

tempctrl 是一个 C 语言编写的系统级守护程序，由 Magisk 模块的 `service.sh` 启动并保活。
它**不依赖手机上的任何 App**（包括 Scene/工具箱子模块），直接读取 sysfs 温度传感器，独立决策散热策略。

### 2.2 档位定义

程序根据电池温度和 CPU 温度综合决策，输出一个 **0 ~ 10** 的档位。每个档位映射到具体的散热器控制参数（使用查表法，非公式计算）：

| 档位 | 模式 | 目标温度 | 风扇转速 | 制冷片 | 说明 |
|------|------|---------|---------|--------|------|
| 10 | 固定功率(mode=1) | — | 6000RPM | 190 | 制冷峰值（更高强度下鳍片解热不足反而倒退） |
| 9 | 智能温控(mode=0) | 12°C | 5800RPM | 自动 | **紧急3-min** |
| 8 | 智能温控(mode=0) | 13°C | 5500RPM | 自动 | 官方默认风扇满速值 |
| 7 | 智能温控(mode=0) | 14°C | 5100RPM | 自动 | **紧急2-min** |
| 6 | 智能温控(mode=0) | 15°C | 4600RPM | 自动 | |
| 5 | 智能温控(mode=0) | 16°C | 4000RPM | 自动 | 自此以下智能模式温度波动较大，**紧急1-min** |
| 4 | 智能温控(mode=0) | 18°C | 3400RPM | 自动 | |
| 3 | 固定功率(mode=1) | — | 2900RPM | 80 | 低功耗1 |
| 2 | 固定功率(mode=1) | — | 2500RPM | 60 | 低功耗2 |
| 1 | 固定功率(mode=1) | — | 2200RPM | 40 | 低功耗3 |
| 0 | 固定功率(mode=1) | — | 2000RPM | 20 | 伪待机 |

**setRunMode 参数映射（完整签名）：**

```
setRunMode(mode, targetTemperature,
           windLevelOverclock, coldLevelOverclock,
           windLevel, modeCustom, extra)
```

| 参数 | 对应档位含义 |
|------|------------|
| `mode` | 0=智能温控（档位 4~9），1=固定功率（档位 0~3,10） |
| `targetTemperature` | 智能温控的目标温度，查表取值：12/13/14/15/16/18°C |
| `windLevelOverclock` | 固定功率模式下**风扇转速** (RPM)，查表取值 |
| `coldLevelOverclock` | 固定功率模式下**制冷片强度**，查表取值：20/40/60/80/190 |
| `windLevel` | 智能温控模式下**风扇转速上限** (RPM)，查表取值 |
| `modeCustom` | 自定义模式（本系统暂不使用） |
| `extra` | 额外参数（本系统暂不使用） |

### 2.3 控制算法

**电池温度控制**（每 5 秒）：

```
读取电池温度（/sys/class/power_supply/battery/temp，单位 0.1°C）

≥35.0°C → +2 档（手机烫手，强制提档）
≥34.5°C → +1 档
≤33.5°C → -1 档
≤33.0°C → -2 档
其他      → 不变

每次调整后冷却 20 秒（避免频繁跳变）
```

**CPU 紧急干预**（每 5 秒，一阶滤波 α=0.25）：

```
加权温度 = 原始 × 0.25 + 旧加权 × 0.75

>85°C → 紧急 3 级 → 强制最低 9 档（12°C/5800RPM，紧急3-min）
>75°C → 紧急 2 级 → 强制最低 7 档（14°C/5100RPM，紧急2-min）
>65°C → 紧急 1 级 → 强制最低 5 档（16°C/4000RPM，紧急1-min）

降温有 10°C 滞回，逐级下降
```

**最终档位** = max(电池控制档位, 紧急强制最低档位)

### 2.4 断联容错

- 每 **60 秒**检查一次飞智 App 进程是否存在
- 不存在时自动 `am start` 启动
- 断联超过 **1 分钟** → 标记为散热器关机，下次 App 复活时重置所有状态，重新根据电池温度设定初始档位
- `SIGTERM` 处理：Magisk 模块更新/禁用时发信号退出，退出前不做额外操作（被杀时来不及发指令）

### 2.5 发送去重

每次下发前检查参数是否与上一次相同。**完全相同则跳过**，因为散热器每次参数调整都会暂时影响性能（约数秒回升），减少不必要的切换可保持稳定。

### 2.6 温度传感器

| 传感器 | 路径 | 原始单位 | 转换 |
|--------|------|---------|------|
| 电池温度 | `/sys/class/power_supply/battery/temp` | 0.1°C（350=35.0°C） | 直接使用 |
| CPU 温度 | `/sys/class/thermal/thermal_zone[30-40]/temp` | m°C（75000=75.0°C） | ÷100 → 0.1°C |

CPU 温度取 `thermal_zone30~40` 中所有传感器的**最大值**。

---

## 三、LSPosed 模块（广播接收器）

### 3.1 功能

在飞智散热器 App 进程内注册一个 `BroadcastReceiver`，监听 `com.flydigi.SET_TEMPERATURE` 广播，解析参数后调用 `WaspWingManager.setRunMode()`。

### 3.2 Shell 调用（手动测试/LSPosed 模块直用）

```bash
# 最简：智能温控 25°C
am broadcast -a com.flydigi.SET_TEMPERATURE --ei temperature 25

# 智能温控 18°C + 风扇限速 4400RPM
am broadcast -a com.flydigi.SET_TEMPERATURE \
    --ei mode 0 --ei temperature 18 --ei windLevel 4400

# 固定功率模式：风扇 3200RPM + 制冷片强度 60
am broadcast -a com.flydigi.SET_TEMPERATURE \
    --ei mode 1 --ei windOC 3200 --ei coldOC 60

# 仅风模式
am broadcast -a com.flydigi.SET_TEMPERATURE --ei mode 2
```

### 3.3 Tasker 配置

1. 新建动作 → **系统 → 发送广播**
2. Action: `com.flydigi.SET_TEMPERATURE`
3. Extra（根据需求）：
   - `temperature:20` （目标温度）
   - `mode:0` （运行模式）
   - `windLevel:3600` （智能温控风扇上限）
4. 可通过 Tasker 的"时间"、"温度"、"电量"等事件触发

---

## 四、文件结构

```
lsp模块（apk修复+温控接口）/
├── app/
│   ├── build.gradle.kts           # 模块构建配置
│   └── src/main/
│       ├── AndroidManifest.xml    # 模块声明 + Xposed 元数据
│       ├── assets/
│       │   └── xposed_init        # Xposed 入口声明
│       └── java/com/example/waspwingtempctrl/
│           └── MainHook.java      # 核心注入代码（广播接收器）
├── build.gradle.kts               # 根构建配置
├── settings.gradle.kts            # Gradle 设置
├── .github/workflows/
│   └── build.yml                  # GitHub Actions 自动构建
├── gradlew / gradlew.bat          # Gradle Wrapper
└── README.md                      # 本文件（项目文档在项目根目录）
```

---

## 五、构建方法

### 5.1 编译 LSPosed 模块 APK

**Android Studio（推荐）：**
1. 用 Android Studio 打开本项目
2. 等待 Gradle 同步
3. Build → Build APK
4. 产物在 `app/build/outputs/apk/debug/app-debug.apk`

**命令行：**
```bash
export ANDROID_HOME=/path/to/Android/Sdk
./gradlew assembleDebug
```

**GitHub Actions：**
Push 到 GitHub 后自动构建，在 Actions 页面下载 `WaspWingTempCtrl-debug` 制品。

### 5.2 编译 tempctrl C 程序

在 Termux 中编译：

```bash
pkg install clang
clang -static -o tempctrl tempctrl.c
```

编译产物放到 Magisk 模块的 `others/` 目录下，由 `service.sh` 启动。

---

## 六、安装与部署

### 6.1 安装 LSPosed 模块

1. 首先准备好已编译的 LSPosed 模块 APK，注意**无需签名**——LSPosed 不校验 APK 签名
2. 安装 `app-debug.apk`（允许未知来源应用）
3. 打开 **LSPosed** App
4. 在模块列表中找到 **飞智散热器温度控制**，勾选启用
5. 在作用域中勾选 **飞智散热器**（`com.flydigi.waspwing.experimental`）
6. 强制停止飞智散热器 App（或重启手机）
7. 重新打开飞智散热器 App，连接设备后即可用 `am broadcast` 控制温度

> **关于 GitHub Actions 构建产物的说明：**
> 本项目的 GitHub Actions CI 构建产物是 **debug APK**（已签名），但不建议直接使用该 APK 安装。因为 debug 签名会随构建环境变化，可能和本地构建冲突。正确的做法是：在本地用 Android Studio 或 `./gradlew assembleDebug` 构建一次，让 Gradle 生成稳定的 debug 签名，后续用 GitHub Actions 产物覆盖安装。

### 6.2 部署 tempctrl 守护程序

1. 创建 Magisk 模块（或集成到已有模块）
2. 将编译好的 `tempctrl` 放入 `$MODDIR/others/`
3. 编写 `service.sh`，启动 `$MODDIR/others/tempctrl` 并保活

---

## 七、验证

```bash
# 查看 LSPosed 日志
adb logcat -s WaspWingTempCtrl

# 期望输出：
# [WaspWingTempCtrl] 模块已加载到 com.flydigi.waspwing.experimental
# [WaspWingTempCtrl] BroadcastReceiver 已注册

# 手动测试广播
adb shell am broadcast -a com.flydigi.SET_TEMPERATURE --ei temperature 30

# 查看 tempctrl 日志
adb shell cat /cache/tempctrl.log

# 格式示例：
# [2026-06-06 12:00:00] SEND lv=4 mode=0 t=16 wOC=0 cOC=0 wLv=5200 ret=0
# [2026-06-06 12:00:05] BATT batt=35.0 lv +2 (4→6)
```

---

## 八、常见问题

**Q: 发送广播后温度没变？**
A: 检查① LSPosed 中模块已勾选且作用域正确 ② 飞智散热器 App 的 BLE 已连接 ③ `adb logcat | grep WaspWingTempCtrl` 查看错误日志

**Q: 模块不生效？**
A: 确保 LSPosed 版本 ≥ 1.8，模块启用后**强制停止目标 App**（或重启手机）

**Q: tempctrl 没在运行？**
A: 检查 Magisk 模块的 `service.sh` 是否正确，以及 `/cache/tempctrl.log` 是否有日志

**Q: 提示权限不足？**
A: ADB 发送广播需要权限。非 root 的 ADB 需要 Android 11+。发送 `com.flydigi.SET_TEMPERATURE` 广播不需要 root，但 LSPosed 本身需要 root。

**Q: 能否在非 root 手机上使用？**
A: LSPosed 需要 root 或 GSP 虚拟环境。非 root 方案需要直接修补 APK。

**Q: 参数没变时 tempctrl 会重复发广播吗？**
A: 不会。tempctrl 有去重逻辑——参数完全相同时跳过下发，避免散热器频繁切换导致性能波动。
