# 项目记忆索引

- [完整修复历程](修复历程/完整修复历程.md) — 全部 4 层 Bug 修复全记录
- [LSPosed 模块源码](lsp模块（apk修复+温控接口）/app/src/main/java/com/example/waspwingtempctrl/MainHook.java) — 最终 MainHook.java（含 FIFO 唤醒、BLE 断联检测）
- [智能温控 C 守护程序](智能温控脚本/tempctrl.c) — 智能温控算法源码（FIFO 事件驱动，查表法档位，断联超时重置）
- [智能温控伪代码](智能温控脚本/tempctrl_pseudo.c) — 智能温控详细设计文档
- [反编译分析](参考资料/反编译及分析结果/bug_analysis_report.md) — 原始 Bug 分析报告
- [第一阶段修复](修复历程/修复过程记录.md) — smali 修改尝试记录

## FIFO 通信协议

| 方向 | 方式 | 数据 |
|------|------|------|
| LSPosed 模块 → C 守护程序 | FIFO（`/data/local/tmp/b6x_fifo`） | `'1'` = BLE 连接 / `'0'` = BLE 断联 |
| C 守护程序 → LSPosed 模块 | `am broadcast` | `com.flydigi.SET_TEMPERATURE` 带 7 参数 |

## 核心逻辑

- daemon 启动时非阻塞 peek FIFO，有 `'1'` 直接工作，无数据阻塞等待
- FIFO 阻塞 read() 期间 CPU 占用 = 0%（内核挂起）
- BLE 断联 → 模块写 `'0'` → daemon 进入阻塞等待
- BLE 重连 → 模块写 `'1'` → daemon 检查断联时间
  - ≥60 秒 → `reset_state()` 重新根据电池温度算初始档位
  - <60 秒 → 正常恢复控制
- App 前后台切换不影响控制（只要 BLE 连着就不写 FIFO）
