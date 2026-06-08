# 飞智散热器 App 修复项目 — Claude 指令

## 项目定位
Android APK 逆向修复项目，修复蓝牙扫描生命周期 Bug。**已完成**。

## 工作目录
- 根目录：`D:\下载\Claude Code\飞智散热器app修复`
- LSPosed 模块项目：`./WaspWingTempCtrl/`（Android Studio 项目）
- 所有操作在 **Bash 环境** 下执行

## 最终方案
**LSPosed 1.9.2-it 运行时 Hook**（不修改 APK）

模块类：`com.example.waspwingtempctrl.MainHook`
模块源码：`WaspWingTempCtrl/app/src/main/java/com/example/waspwingtempctrl/MainHook.java`

## 关键文件索引
| 文件 | 说明 |
|------|------|
| `WaspWingTempCtrl/` | LSPosed 模块 Android Studio 项目 |
| `反编译及分析结果/smali_output/` | APK 反编译 smali 代码 |
| `反编译及分析结果/bug_analysis_report.md` | 原始 Bug 分析报告 |
| `修复过程/完整修复历程.md` | 4 层 Bug 的完整修复记录 |
| `修复过程/修复过程记录.md` | 第一阶段 smali 修改尝试记录 |
| `修复过程/修复过程1.1/` | smali 工具链 |

## 修复成果
| 问题 | 修复 | 状态 |
|------|------|------|
| 扫描永不停止 | 钩 `onDeviceConnected` → `stopScan()` | ✅ |
| UI 持续显示"扫描中" | 更新 `_connectLiveData` 和 `_waspWingInfo` | ✅ |
| GATT 服务发现不触发 | 强制 `checkBluetoothPermission()` 返回 true | ✅ |
| 智能温控模式闪烁 | 去掉 `convertFromDevice` 提前创建 WaspWingInfo | ✅ |

## 工具位置
- `baksmali.jar` → `修复过程/修复过程1.1/baksmali.jar`
- `smali.jar` → `修复过程/修复过程1.1/smali.jar`
- `debug.keystore` → `修复过程/修复过程1.1/debug.keystore`
