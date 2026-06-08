# 飞智 B6X 增强计划

[![Build](https://github.com/mengdao10086/b6x-Enhancement-Plan-ai/actions/workflows/build-apk.yml/badge.svg)](https://github.com/mengdao10086/b6x-Enhancement-Plan-ai/actions/workflows/build-apk.yml)

飞智 B6X 散热器开发者工具的增强方案。修复了 Android 16 上的 BLE 兼容性问题，并扩展了智能温控功能。

---

## 组件

| 组件 | 路径 | 说明 | 状态 |
|------|------|------|------|
| **LSPosed 模块** | [lsp模块（apk修复+温控接口）/](lsp模块（apk修复+温控接口）/README.md) | 修复 Android 16 BLE Bug + 提供智能温控广播接口 | ✅ v1.0 已发布 |
| **C 守护程序** | [智能温控脚本/](智能温控脚本/tempctrl.c) | FIFO 事件驱动的智能温控算法 | ⚙️ v2.0 开发中 |

### LSPosed 模块功能

- 修复 Android 16 (API 36) 上 `checkBluetoothPermission()` 返回 false 导致 BLE 无法连接的问题
- 修复连接后扫描不停、ViewModel LiveData 不更新等 4 层 Bug
- 提供 `com.flydigi.SET_TEMPERATURE` 广播接收器，支持 7 参数完整控制
- 通过 FIFO 与 C 守护进程通信，实现零延迟唤醒

### C 智能温控守护程序

- 读取电池温度（sysfs）和 CPU 温度，综合决策散热档位
- 11 级档位（0~10），使用查表法（实测数据）
- CPU 紧急干预（65/75/85°C 三级，带低通滤波）
- 电池温度调档（34.5/35°C 迟滞控制）
- 指令去重，避免散热器频繁切换

---

## 快速开始

### 安装 LSPosed 模块

1. 从 [Actions 页面](https://github.com/mengdao10086/b6x-Enhancement-Plan-ai/actions) 下载最新 APK（`LSPosed-Module-APK` 构件）
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
├── 智能温控脚本/                    ← C 守护程序源码
├── 参考资料/                        ← 原始 APK + 反编译分析
├── 修复历程/                        ← Bug 修复全记录
├── .github/workflows/              ← CI 自动构建（APK + C 二进制）
└── README.md                       ← 本文件
```

## 构建

APK 和 C 守护程序均由 GitHub Actions 自动构建：
- 推送 `v*` 标签自动触发
- 也可在 Actions 页面手动 `workflow_dispatch` 触发
- 构建产物在对应运行记录的 Artifacts 中下载
