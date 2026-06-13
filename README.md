# 飞智 B6X 增强计划

[![Build](https://github.com/mengdao10086/b6x-Enhancement-Plan-ai/actions/workflows/build-apk.yml/badge.svg)](https://github.com/mengdao10086/b6x-Enhancement-Plan-ai/actions/workflows/build-apk.yml)

飞智 B6X 散热器开发者工具的增强方案。修复了 Android 16 上的 BLE 兼容性问题，并扩展了智能温控功能。

---

## 组件

| 组件 | 路径 | 说明 | 状态 |
|------|------|------|------|
| **LSPosed 模块** | [lsp模块（apk修复+温控接口）/](lsp模块（apk修复+温控接口）/README.md) | 修复 Android 16 BLE Bug + 提供智能温控广播接口 | ✅ v1.0 已发布 |
| **C 守护程序** | [magisk模块（智能温控）/](magisk模块（智能温控）/tempctrl.c) | FIFO 事件驱动的智能温控算法 | ⚙️ v2.0 开发中 |

### LSPosed 模块功能

- 修复 Android 16 (API 36) 上 `checkBluetoothPermission()` 返回 false 导致 BLE 无法连接的问题
- 修复连接后扫描不停、ViewModel LiveData 不更新等 4 层 Bug
- 提供 `com.flydigi.SET_TEMPERATURE` 广播接收器，支持 7 参数完整控制
- 通过 FIFO 与 C 守护进程通信，实现零延迟唤醒

### C 智能温控守护程序

- 读取电池温度（sysfs）和 CPU 温度，综合决策散热档位
- 11 级档位（0~10），使用查表法（实测数据）
- CPU 紧急干预（65/75/85°C 三级，带低通滤波 + 10°C 滞回）
- 电池温度调档（基准 35°C，三级区间：死区/±1档/±2档）
- 温度趋势判断：降温不升档、升温不降档（最多豁免 6 次）
- 温度未变化时跳过升降档，防止重复调整
- 电池档位继承实际下发档位，紧急退出后挡位不暴跌
- 通过 pgrep 检测 App 进程存活，自动恢复控制
- 所有阈值可通过 profile.conf 运行时配置并热重载
- 指令去重，避免散热器频繁切换

---

## 快速开始

### 安装 LSPosed 模块

1. 从 [Actions 页面](https://github.com/mengdao10086/b6x-Enhancement-Plan-ai/actions) 下载最新 APK（`LSPosed-Module-APK` 构件）和 Magisk 模块（`b6x-Magisk-Module` 构件）
2. 安装到手机
3. 在 LSPosed 中启用模块，作用域勾选 `com.flydigi.waspwing.experimental`
4. 强制停止飞智散热器 App，重新打开

### 手动测试广播

```bash
# 设置智能温控 16°C，风扇上限 4000RPM
am broadcast -a com.flydigi.SET_TEMPERATURE \
    --ei mode 0 --ei temperature 16 --ei windLevel 4000
```

---

## 项目结构

```
├── lsp模块（apk修复+温控接口）/     ← LSPosed 模块（Android 项目）
├── magisk模块（智能温控）/          ← C 守护程序源码 + Magisk 模块框架
├── 参考资料/                        ← 原始 APK + 反编译分析
├── 修复历程/                        ← Bug 修复全记录
├── .github/workflows/              ← CI 自动构建（APK + C 二进制）
└── log.md                           ← 修改日志（git 已忽略，仅本地）
└── README.md                       ← 本文件
```

## 构建

APK 和 C 守护程序均由 GitHub Actions 自动构建：
- 推送 `v*` 标签自动触发
- 也可在 Actions 页面手动 `workflow_dispatch` 触发
- 构建产物在对应运行记录的 Artifacts 中下载

> **分支**：所有开发直接提交到 **`main`** 分支（默认分支），不经过 master。
> **CI 注意事项**：NDK (~700MB) 已配置 `actions/cache` 缓存，首次运行后不再重复下载。
> 使用 `workflow_dispatch` 测试，不要推送 release tag 直到测试通过。

### Termux 编译 C 守护程序

```bash
pkg install clang python3
clang -static -O2 -o tempctrl tempctrl.c
python3 patch_tls.py tempctrl   # 修复 PT_TLS 对齐
```

### CI 编译（GitHub Actions）

- 使用 NDK r27c，下载到 `/opt/ndk` 固定路径
- 编译命令：`aarch64-linux-android21-clang -static -O2`
- 不要依赖 `$ANDROID_NDK_HOME`（有时未设置）
- NDK 已配置 `actions/cache` 缓存，首次后不再重复下载

---

## 待办 / 开发中

### C 守护程序待测试

| 任务 | 优先级 | 说明 |
|------|--------|------|
| 本地编译测试 | 🔴 高 | 在手机上用 Termux 编译 `tempctrl.c`，推送到手机测试 |
| FIFO 通信验证 | 🔴 高 | 手动 `echo "1" > /data/local/tmp/b6x_fifo` 看 daemon 是否唤醒 |
| am broadcast 参数验证 | 🟡 中 | 确认 `windOC`/`coldOC`/`windLevel` 参数在真机上的效果 |
| 档位映射验证 | 🟡 中 | 各档位风扇转速和制冷片强度是否与表格预期一致 |
| 断联超时重置测试 | 🟡 中 | BLE 断开 >60 秒重连后，daemon 是否执行 `reset_state()` |
| 睡眠/唤醒延迟测试 | 🟢 低 | FIFO 阻塞 read() 的唤醒延迟是否 <1ms |
| Magisk 模块封装 | 🟢 低 | 将 `tempctrl` 二进制封装为 Magisk 模块，含 `service.sh` |

### CI 可改进

- NDK 缓存：每次 CI 下载 NDK ~700MB，可改为缓存加速（✅ 已实现）
- 自动发布：等 v2.0 稳定后可开启 tag 自动发布 APK + C 二进制

### 待分析/待实现

| 项目 | 类型 | 说明 |
|------|------|------|
| DefaultDispatch 线程死循环 | 🔍 待分析 | App 的 `experimentalRunModeValue` 判断循环导致 RxJava computation 线程吃满一个核心，可能需在模块中打断循环 |
| 退出紧急时挡位下降加验证 | ⚙️ 待实现 | 仅在电池温度低于升档阈值时才允许紧急退出时降档，防止 CPU 温度反弹 |
| 电池温度峰值时间检测 | ⚙️ 待实现 | 计算峰值温度回到基准温度的时间，小于某阈值则反向变一档（抑制温度过冲） |

---

## 本地开发环境

| 项目 | 说明 |
|------|------|
| 代码路径 | `D:\下载\Claude Code\飞智b6x增强计划\` |
| Git 远程 | `https://github.com/mengdao10086/b6x-Enhancement-Plan-ai.git` |
| 默认分支 | `main` |
| 模块编译 | Android Studio 打开 `lsp模块（apk修复+温控接口）/` → Build APK |
| C 编译 | Termux: `cd magisk模块（智能温控） && clang -static -O2 -o tempctrl tempctrl.c && python3 patch_tls.py tempctrl` |
| 模块安装 | LSPosed 勾选模块 + 作用域 `com.flydigi.waspwing.experimental` → 强制停止 App |

## 已知风险

| 风险 | 说明 |
|------|------|
| `RECEIVER_EXPORTED` 权限 | `am broadcast` 从系统进程发广播，模块需 `RECEIVER_EXPORTED` 才能收到（Android 14+） |
| 温度传感器路径 | `thermal_zone30~40` 是 K60 机型路径，其他机型可能不同 |
| BLE 重连时序 | `BluetoothGatt.disconnect()` 钩子可能被多次触发，注意 FIFO 重复写入 |
| FIFO 竞态 | 模块侧写 FIFO 如果 daemon 还没 `open()`，写操作会阻塞 |
| NDK 编译 | CI 中不要依赖 `$ANDROID_NDK_HOME`，改用固定路径下载 NDK r27c |
