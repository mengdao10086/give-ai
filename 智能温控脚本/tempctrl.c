// ================================================================
// tempctrl.c — 飞智 WaspWing 散热器智能温控守护程序
// ================================================================
//
// 运行环境：Magisk 模块，由 service.sh 启动并守护
// 通信方式：FIFO 接收模块信号 + am broadcast 发出控制指令
//
// FIFO 协议（/data/local/tmp/b6x_fifo）：
//   '1' = BLE 已连接，请求开始控制
//   '0' = BLE 已断开，请求停止控制
//
// 温度单位：整型 0.1°C（电池原生单位，CPU m°C ÷ 100）
//   例：350 = 35.0°C, 753 = 75.3°C
//
// 编译（Termux）：
//   clang -static -o tempctrl tempctrl.c
//   python3 patch_tls.py tempctrl   （修复 PT_TLS 对齐）
//
// ================================================================

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <stdarg.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/select.h>

// ======================== 档位定义 ========================
//
// 档位    模式             目标温度   风扇转速/RPM   制冷片强度  说明
// ─────────────────────────────────────────────────────────────────
//  10    固定功率(mode=1)    —        6000          190        制冷峰值（更高强度下鳍片解热不足反而倒退）
//   9    智能温控(mode=0)   12°C      5800          auto       紧急3-min
//   8    智能温控(mode=0)   13°C      5500          auto       官方默认风扇满速值
//   7    智能温控(mode=0)   14°C      5100          auto       紧急2-min
//   6    智能温控(mode=0)   15°C      4600          auto
//   5    智能温控(mode=0)   16°C      4000          auto       自此以下智能模式温度波动较大，紧急1-min
//   4    智能温控(mode=0)   18°C      3400          auto
//   3    固定功率(mode=1)    —        2900           80        低功耗1
//   2    固定功率(mode=1)    —        2500           60        低功耗2
//   1    固定功率(mode=1)    —        2200           40        低功耗3
//   0    固定功率(mode=1)    —        2000           20        伪待机
//
// setRunMode 签名：
//   setRunMode(mode, targetTemperature,
//              windLevelOverclock, coldLevelOverclock,
//              windLevel, modeCustom, extra)
//
// 参数映射：
//   mode=0（智能温控）：targetTemperature, windLevel(风扇转速上限)
//   mode=1（固定功率）：windLevelOverclock(风扇固定转速), coldLevelOverclock(制冷片强度)
//
// 档位映射使用查表法（见 build_params），因为风扇转速、目标温度不再是线性关系。
//
// ================================================================

// --- 档位范围 ---
#define LEVEL_MAX          10
#define LEVEL_MIN           0     // 档位范围 0~10（无负档位）

// --- 档位查表 ---
// 注意：风扇转速、目标温度、制冷片强度在档位间不是线性关系，
//       必须使用查表法而非公式计算。

// 档位 → 风扇转速 (RPM)
static const int FAN_RPM_TABLE[11] = {
    2000, 2200, 2500, 2900, 3400, 4000, 4600, 5100, 5500, 5800, 6000
};

// 档位 → 运行模式 (0=智能温控, 1=固定功率)
static const int GEAR_MODE_TABLE[11] = {
    1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1
};

// 档位 → 智能温控目标温度 (°C)，固定功率模式该项无效（传 20 占位）
static const int TARGET_TEMP_TABLE[11] = {
    20, 20, 20, 20, 18, 16, 15, 14, 13, 12, 20
};

// 档位 → 固定功率制冷片强度，智能模式该项传 0（让散热器自行管理）
static const int COLD_INTENSITY_TABLE[11] = {
    20, 40, 60, 80, 0, 0, 0, 0, 0, 0, 190
};

// --- 制冷片强度范围 ---
#define COLD_MIN             1
#define COLD_MAX           194     // 最大有效值（以上需超频模式，本场景不用）

// --- 电池温度控制（0.1°C）---
#define BATT_BASELINE      350     // 基准温度 35.0°C
#define BATT_ZONE_1          7     // ±0.7°C → 不变（死区）
#define BATT_ZONE_2         20     // ±2.0°C → 1 档（超过→2档）

// --- CPU 紧急干预阈值（0.1°C）---
#define CPU_EMERG_3        850     // >85.0°C → 等级 3
#define CPU_EMERG_2        750     // >75.0°C → 等级 2
#define CPU_EMERG_1        650     // >65.0°C → 等级 1
#define CPU_RECOVER_0      550     // <55.0°C → 清除紧急
#define CPU_RECOVER_1      650     // <65.0°C 且 ≥2 级时降为 1
#define CPU_RECOVER_2      750     // <75.0°C 且 ≥3 级时降为 2

// --- 紧急强制最低档位 ---
// 根据 Sheet2 标注：
//   紧急1-min → 档位 5（智能 16°C/4000RPM）
//   紧急2-min → 档位 7（智能 14°C/5100RPM）
//   紧急3-min → 档位 9（智能 12°C/5800RPM）
#define EMERG_FORCED_1       5
#define EMERG_FORCED_2       7
#define EMERG_FORCED_3       9

// --- 冷却期 ---
#define COOLDOWN_CYCLES      4     // 每次调整后冷却 20 秒（4×5s）

// --- FIFO 通信 ---
#define FIFO_PATH  "/data/local/tmp/b6x_fifo"
#define DISCONNECT_RESET_SEC  60   // 断联超过 60 秒 → 下次连接视为新开始

// --- 日志 ---
#define LOG_FILE "/cache/tempctrl.log"

// ======================== 全局状态 ========================

static int battery_fan_level = 0;      // 电池控制决定的基础档位
static int emergency_level = 0;        // CPU 紧急等级 0~3
static int forced_min_level = 0;       // 紧急强制最低档位
static int cpu_weighted = 250;         // 加权 CPU 温度，初始 25.0°C
static int cooldown_counter = 0;       // 冷却期剩余周期数
static int prev_batt_temp = -1;       // 上次调整时的电池温度（变化检测）
static int first_run = 1;             // 首次运行（滤波初始化）
static volatile int running = 1;       // 信号控制标记

// --- 发送去重缓存 ---
// 记录上次发送的完整参数，避免重复下发
static int last_sent_valid = 0;        // 0=尚未发送过
static int last_mode = -1;
static int last_target_temp = -1;
static int last_windOC = -1;
static int last_coldOC = -1;
static int last_windLevel = -1;

// --- FIFO 状态 ---
static int fifo_fd = -1;              // FIFO 文件描述符
static time_t disconnect_time = 0;     // 上次收到 "0" 的时间戳（用于断联超时重置）

// ======================== 辅助函数 ========================

/**
 * 写入日志到 /cache/tempctrl.log
 */
static void write_log(const char *fmt, ...) {
    FILE *f = fopen(LOG_FILE, "a");
    if (!f) return;

    // 时间戳
    time_t now = time(NULL);
    struct tm *tm = localtime(&now);
    char ts[32];
    strftime(ts, sizeof(ts), "%Y-%m-%d %H:%M:%S", tm);

    fprintf(f, "[%s] ", ts);

    va_list args;
    va_start(args, fmt);
    vfprintf(f, fmt, args);
    va_end(args);

    fprintf(f, "\n");
    fclose(f);
}

/**
 * 限幅
 */
static inline int clamp(int val, int lo, int hi) {
    if (val < lo) return lo;
    if (val > hi) return hi;
    return val;
}

// ======================== 温度读取 ========================

/**
 * 读取电池温度，返回 0.1°C（如 350 = 35.0°C）
 * 文件路径：/sys/class/power_supply/battery/temp
 * 失败返回 -1
 */
static int read_battery_temp(void) {
    FILE *f = fopen("/sys/class/power_supply/battery/temp", "r");
    if (!f) return -1;
    int val;
    if (fscanf(f, "%d", &val) != 1) {
        fclose(f);
        return -1;
    }
    fclose(f);
    return val;
}

/**
 * 读取 CPU 最高温度，返回 0.1°C（如 753 = 75.3°C）
 * 扫描 thermal_zone30~40，取最高值
 * 原始值 m°C，除以 100 转 0.1°C
 * 全部失败返回 -1
 */
static int read_cpu_temp_max(void) {
    int max_temp = -1;
    char path[64];

    for (int i = 30; i <= 40; i++) {
        snprintf(path, sizeof(path),
                 "/sys/class/thermal/thermal_zone%d/temp", i);
        FILE *f = fopen(path, "r");
        if (!f) continue;

        int raw;
        if (fscanf(f, "%d", &raw) != 1) {
            fclose(f);
            continue;
        }
        fclose(f);

        // 滤除异常值
        if (raw <= 0 || raw > 150000) continue;

        int decic = raw / 100;
        if (decic > max_temp) max_temp = decic;
    }
    return max_temp;
}

// ======================== 控制参数计算与下发 ========================

/**
 * 根据档位计算 setRunMode 的各参数
 *
 * 使用查表法，因为档位与风扇转速、目标温度之间不是线性关系。
 *
 * 智能温控模式（mode=0）：
 *   targetTemperature = 查表目标温度
 *   windLevel = 查表风扇转速上限 (RPM)
 *   windLevelOverclock / coldLevelOverclock = 0（此模式下不用）
 *
 * 固定功率模式（mode=1）：
 *   windLevelOverclock = 查表风扇固定转速 (RPM)
 *   coldLevelOverclock = 查表制冷片强度
 *   targetTemperature = 占位 20
 */
static void build_params(int level,
                         int *out_mode,
                         int *out_target,
                         int *out_windOC,
                         int *out_coldOC,
                         int *out_windLevel)
{
    int mode, target, windOC, coldOC, windLevel;

    mode   = GEAR_MODE_TABLE[level];
    target = TARGET_TEMP_TABLE[level];
    target = clamp(target, 5, 35);

    if (mode == 0) {
        // --- 智能温控 ---
        windLevel = FAN_RPM_TABLE[level];
        windOC = 0;
        coldOC = 0;   // 智能模式让散热器自行管理制冷
    } else {
        // --- 固定功率 ---
        windOC = FAN_RPM_TABLE[level];
        coldOC = COLD_INTENSITY_TABLE[level];
        coldOC = clamp(coldOC, COLD_MIN, COLD_MAX);
        windLevel = 0;
    }

    *out_mode      = mode;
    *out_target    = target;
    *out_windOC    = windOC;
    *out_coldOC    = coldOC;
    *out_windLevel = windLevel;
}

/**
 * 下发控制参数（如有变化）
 * 通过 am broadcast 发送到 LSPosed 模块
 *
 * 注意：散热器每次调整都会暂时性能下降，所以参数无变化时必须跳过
 * 返回 1=已发送，0=跳过（无变化）
 */
static int apply_level(int level) {
    int mode, target, windOC, coldOC, windLevel;

    level = clamp(level, LEVEL_MIN, LEVEL_MAX);
    build_params(level, &mode, &target, &windOC, &coldOC, &windLevel);

    // ---- 去重检测 ----
    if (last_sent_valid &&
        mode      == last_mode &&
        target    == last_target_temp &&
        windOC    == last_windOC &&
        coldOC    == last_coldOC &&
        windLevel == last_windLevel)
    {
        return 0;   // 无变化，跳过
    }

    // ---- 构建命令 ----
    char cmd[512];
    snprintf(cmd, sizeof(cmd),
        "am broadcast --user 0 "
        "-a com.flydigi.SET_TEMPERATURE "
        "--ei mode %d "
        "--ei temperature %d "
        "--ei windOC %d "
        "--ei coldOC %d "
        "--ei windLevel %d "
        "--ei modeCustom 0 "
        "--ei extra 0 "
        ">/dev/null 2>&1",
        mode, target, windOC, coldOC, windLevel);

    int ret = system(cmd);

    // ---- 更新缓存 ----
    last_sent_valid    = 1;
    last_mode          = mode;
    last_target_temp   = target;
    last_windOC        = windOC;
    last_coldOC        = coldOC;
    last_windLevel     = windLevel;

    // ---- 日志 ----
    write_log("SEND lv=%d mode=%d t=%d wOC=%d cOC=%d wLv=%d ret=%d",
              level, mode, target, windOC, coldOC, windLevel, ret);

    return 1;
}

// ======================== FIFO 通信 ========================

// 前向声明（定义在 FIFO 之后，但被 FIFO 函数调用）
static void reset_state(void);

/**
 * 创建 / 初始化 FIFO
 * 每次启动时重新创建，确保没有陈旧的 FIFO 残留
 */
static void init_fifo(void) {
    unlink(FIFO_PATH);
    if (mkfifo(FIFO_PATH, 0666) != 0) {
        write_log("FIFO mkfifo failed, may already exist");
    }
    write_log("FIFO created at %s", FIFO_PATH);
}

/**
 * 阻塞等待 FIFO 信号
 *
 * 读取 FIFO 字节：
 *   '1' → 模块要求唤醒（返回 1）
 *   '0' → 模块要求停止（记录时间，继续等待下一个信号）
 *
 * 返回 1=应进入工作模式，0=进程退出
 */
static int wait_for_fifo(void) {
    write_log("FIFO waiting for signal (blocking)...");

    // 关闭旧 fd 并以阻塞模式重新打开
    if (fifo_fd >= 0) close(fifo_fd);
    fifo_fd = open(FIFO_PATH, O_RDONLY);
    if (fifo_fd < 0) {
        write_log("FIFO open failed, retrying in 5s");
        return 5;  // 容错：等 5 秒重试
    }

    char c;
    while (running) {
        int n = read(fifo_fd, &c, 1);
        if (!running) return 0;

        if (n == 1) {
            if (c == '1') {
                // 唤醒：检查是否超时重置
                if (disconnect_time > 0) {
                    time_t elapsed = time(NULL) - disconnect_time;
                    if (elapsed >= DISCONNECT_RESET_SEC) {
                        write_log("WAKE disconnect %lds ago ≥ %ds, resetting",
                                  (long)elapsed, DISCONNECT_RESET_SEC);
                        reset_state();
                    } else {
                        write_log("WAKE disconnect only %lds ago, continue",
                                  (long)elapsed);
                    }
                    disconnect_time = 0;
                }
                return 1;  // 进入工作模式

            } else if (c == '0') {
                disconnect_time = time(NULL);
                write_log("FIFO got '0', disconnect timer started");
                // 继续阻塞等下一个信号
            }
        } else if (n == 0) {
            // 所有写端关闭（如模块被杀后重新打开），重连 FIFO
            close(fifo_fd);
            fifo_fd = open(FIFO_PATH, O_RDONLY);
            if (fifo_fd < 0) {
                write_log("FIFO reopen failed, retry in 5s");
                sleep(5);
                return 5;
            }
        }
    }
    return 0;
}

/**
 * 非阻塞 peek FIFO，检查模块是否发送了休眠信号
 *
 * 在每轮控制循环结束后调用，检查是否有 "0" 到达。
 * 如果 FIFO 暂时写端全关（read 返回 0），自动重连。
 *
 * 返回 1=模块要求停止，0=继续工作
 */
static int peek_fifo(void) {
    if (fifo_fd < 0) {
        fifo_fd = open(FIFO_PATH, O_RDONLY | O_NONBLOCK);
        if (fifo_fd < 0) return 0;
    }

    struct timeval tv = {0, 0};
    fd_set fds;
    FD_ZERO(&fds);
    FD_SET(fifo_fd, &fds);

    if (select(fifo_fd + 1, &fds, NULL, NULL, &tv) > 0) {
        char c;
        int n = read(fifo_fd, &c, 1);
        if (n == 1) {
            if (c == '0') {
                disconnect_time = time(NULL);
                write_log("FIFO peek got '0', going to sleep");
                return 1;   // 停止工作
            }
            // '1' 在工作模式中已处于活跃状态，忽略
        } else if (n == 0) {
            // 写端全关，重建 FIFO
            close(fifo_fd);
            fifo_fd = open(FIFO_PATH, O_RDONLY | O_NONBLOCK);
        }
    }
    return 0;  // 继续工作
}

// ======================== 状态重置 ========================

/**
 * 重置所有状态（视为刚开机）
 * 根据当前电池温度重新计算初始档位
 */
static void reset_state(void) {
    int batt = read_battery_temp();
    if (batt >= 0) {
        // 35.0°C → 0 档，每 1°C 一档，范围 0~10
        int init = (batt - 350) / 10;
        init = clamp(init, LEVEL_MIN, LEVEL_MAX);
        battery_fan_level = init;
        write_log("RESET battery=%d.%d init_lv=%d",
                  batt / 10, batt % 10, battery_fan_level);
    } else {
        battery_fan_level = 0;
        write_log("RESET batt_err default_lv=0");
    }

    cooldown_counter = 0;
    emergency_level = 0;
    forced_min_level = 0;
    cpu_weighted = 250;      // 25.0°C
    first_run = 1;
    prev_batt_temp = -1;     // 重置温度变化检测

    // 清发送缓存，确保重置参数一定下发
    last_sent_valid = 0;
    last_mode = -1;
    last_target_temp = -1;
    last_windOC = -1;
    last_coldOC = -1;
    last_windLevel = -1;

    // 立即下发重置后的档位
    apply_level(battery_fan_level);
}

// ======================== 电池温度控制 ========================

/**
 * 根据电池温度调整基础档位
 * 每 5 秒调用一次
 *
 * 调整策略（基准温度 35.0°C）：
 *   偏差 ≤0.7°C  → 不变（死区）
 *   偏差 0.7~2°C → ±1 档
 *   偏差 >2°C    → ±2 档
 *
 * 温度读数未变化时跳过升降档（冷却期倒计时正常进行）。
 */
static void battery_control(void) {
    // 冷却期倒计时（始终进行，不影响紧急等级等其他逻辑）
    if (cooldown_counter > 0) {
        cooldown_counter--;
    }

    int batt = read_battery_temp();
    if (batt < 0) {
        // 读不到温度传感器，保持当前档位不变
        return;
    }

    // 温度值与上次调整时相同 → 跳过升降档
    if (batt == prev_batt_temp) {
        return;
    }

    // 冷却期内不执行升降档
    if (cooldown_counter > 0) return;

    // 根据与基准温度的偏差计算档位调整量
    int diff = batt - BATT_BASELINE;
    int delta = 0;

    if (diff > 0) {
        if      (diff <= BATT_ZONE_1) delta = 0;   // ≤0.7°C 死区
        else if (diff <= BATT_ZONE_2) delta = 1;   // 0.7~2°C → +1
        else                          delta = 2;   // >2°C   → +2
    } else if (diff < 0) {
        int abs_diff = -diff;
        if      (abs_diff <= BATT_ZONE_1) delta = 0;   // ≤0.7°C 死区
        else if (abs_diff <= BATT_ZONE_2) delta = -1;  // 0.7~2°C → -1
        else                              delta = -2;  // >2°C   → -2
    }

    if (delta != 0) {
        int old = battery_fan_level;
        prev_batt_temp = batt;
        battery_fan_level += delta;
        battery_fan_level = clamp(battery_fan_level, LEVEL_MIN, LEVEL_MAX);
        cooldown_counter = COOLDOWN_CYCLES;

        write_log("BATT batt=%d.%d diff=%+d delta=%+d lv %d→%d",
                  batt / 10, batt % 10, diff, delta, old, battery_fan_level);
    } else {
        // 死区内或恰好等于基准 → 记录温度但不下调
        prev_batt_temp = batt;
    }
}

// ======================== CPU 紧急干预 ========================

/**
 * CPU 温度紧急干预
 * 每 5 秒调用一次
 *
 * 使用一阶低通滤波（α=0.25）平滑温度
 *
 * 紧急等级分布（档位值根据 Sheet2 标注）：
 *   等级 1（>65°C）→ 最低档位 5（智能 16°C/4000RPM，紧急1-min）
 *   等级 2（>75°C）→ 最低档位 7（智能 14°C/5100RPM，紧急2-min）
 *   等级 3（>85°C）→ 最低档位 9（智能 12°C/5800RPM，紧急3-min）
 *
 * 降温使用 10°C 滞回避免频繁跳变
 */
static void emergency_intervention(void) {
    int cpu_now = read_cpu_temp_max();
    if (cpu_now < 0) return;   // 读取失败，保持当前等级

    // 一阶低通滤波：weighted = raw×0.25 + weighted×0.75
    if (first_run) {
        cpu_weighted = cpu_now;
        first_run = 0;
    } else {
        cpu_weighted = (cpu_now * 25 + cpu_weighted * 75) / 100;
    }

    int t = cpu_weighted;
    int new_level = emergency_level;

    // 升温：直接跳到对应等级
    if      (t > CPU_EMERG_3) new_level = 3;
    else if (t > CPU_EMERG_2) new_level = 2;
    else if (t > CPU_EMERG_1) new_level = 1;
    // 降温：10°C 滞回，逐级下降
    else if (t < CPU_RECOVER_0)                          new_level = 0;
    else if (t < CPU_RECOVER_1 && emergency_level >= 2)  new_level = 1;
    else if (t < CPU_RECOVER_2 && emergency_level >= 3)  new_level = 2;

    // 等级变化处理
    if (new_level != emergency_level) {
        int old = emergency_level;
        write_log("EMERG lv %d→%d cpu=%d.%d(%d.%d)",
                  old, new_level,
                  cpu_now / 10, cpu_now % 10,
                  t / 10, t % 10);

        // 退出高等级时限制基础档位上限，防止突然降速
        if (old == 3 && new_level < 3 && battery_fan_level > 9)
            battery_fan_level = 9;
        if (old == 2 && new_level < 2 && battery_fan_level > 7)
            battery_fan_level = 7;
        if (old == 1 && new_level < 1 && battery_fan_level > 5)
            battery_fan_level = 5;

        cooldown_counter = COOLDOWN_CYCLES;
        emergency_level = new_level;
    }

    // 设定强制最低档位
    switch (emergency_level) {
        case 3: forced_min_level = EMERG_FORCED_3; break;
        case 2: forced_min_level = EMERG_FORCED_2; break;
        case 1: forced_min_level = EMERG_FORCED_1; break;
        default: forced_min_level = 0;             break;
    }
}

// ======================== 初始档位 ========================

/**
 * 启动时根据电池温度设定初始档位
 * 35.0°C → 0 档，每 ±1°C → ±1 档，范围 0~10
 */
static void init_fan_level(void) {
    int batt = read_battery_temp();
    if (batt < 0) {
        battery_fan_level = 0;
        write_log("INIT batt_err default_lv=0");
        return;
    }

    int init = (batt - 350) / 10;
    init = clamp(init, LEVEL_MIN, LEVEL_MAX);
    battery_fan_level = init;
    prev_batt_temp = batt;    // 记录初始温度用于变化检测

    write_log("INIT batt=%d.%d lv=%d", batt / 10, batt % 10, battery_fan_level);
}

// ======================== 主循环 ========================

static void handle_signal(int sig) {
    (void)sig;
    running = 0;
    // 如果阻塞在 read(fifo_fd) 中，信号会中断它
}

/**
 * 单次控制循环
 * 读温度 → 决策 → 下发（去重）
 */
static void main_loop(void) {
    // 1. CPU 紧急干预（更新 cpu_weighted 和 emergency_level）
    emergency_intervention();

    // 2. 电池温度控制（内部处理冷却期）
    battery_control();

    // 3. 计算最终档位 = max(电池基础档位, 紧急强制最低档位)
    int final_level = battery_fan_level;
    if (forced_min_level > final_level) final_level = forced_min_level;
    final_level = clamp(final_level, LEVEL_MIN, LEVEL_MAX);

    // 4. 下发（仅在参数变化时实际发送）
    apply_level(final_level);
}

// ======================== 程序入口 ========================

int main(int argc, char *argv[]) {
    signal(SIGTERM, handle_signal);
    signal(SIGINT,  handle_signal);

    // --- 初始化 ---
    init_fifo();
    init_fan_level();

    write_log("=== tempctrl STARTED (level=%d) ===", battery_fan_level);

    // --- 首次启动：非阻塞 peek FIFO 看模块是否已经活跃 ---
    int start_ok = 0;
    int try_fd = open(FIFO_PATH, O_RDONLY | O_NONBLOCK);
    if (try_fd >= 0) {
        char c;
        if (read(try_fd, &c, 1) == 1 && c == '1') {
            start_ok = 1;  // 模块已经在工作
        }
        close(try_fd);
    }

    if (!start_ok) {
        // 模块未激活，阻塞等待信号
        write_log("WAIT no initial signal, waiting on FIFO...");
        int ret = wait_for_fifo();
        if (ret == 0) goto exit;       // 收到退出信号
        if (ret == 5) start_ok = 0;    // FIFO 创建失败，重试
        else start_ok = 1;
    }

    if (start_ok) {
        // --- 进入工作模式 ---
        // 初始化所有状态（wait_for_fifo 里可能已经 reset_state 了）
        cooldown_counter = 0;
        emergency_level = 0;
        forced_min_level = 0;
        first_run = 1;

        // 强制首次下发
        last_sent_valid = 0;
        apply_level(battery_fan_level);

        write_log("ENTER work mode");

        // ---- 主控制循环：每 5 秒一次 ----
        while (running) {
            main_loop();

            // 每周期结束 peek FIFO 看有没有 "0"
            if (peek_fifo()) {
                write_log("SLEEP module deactivated, waiting on FIFO...");
                goto sleep_wait;
            }

            // 逐秒睡眠（可被信号中断）
            for (int i = 0; i < 5 && running; i++) {
                // 每秒钟也 peek 一下，及时响应
                if (i > 0 && peek_fifo()) {
                    write_log("SLEEP module deactivated mid-cycle");
                    goto sleep_wait;
                }
                sleep(1);
            }
        }
    }

sleep_wait:
    // --- 回到 FIFO 等待 ---
    while (running) {
        int ret = wait_for_fifo();
        if (ret == 0) break;       // 退出
        if (ret == 5) continue;    // FIFO 错误重试

        // 收到 "1"，重新进入工作模式
        write_log("ENTER work mode (wake from sleep)");

        // 如果 wait_for_fifo 没有触发重置但需要初始化
        if (first_run) {
            init_fan_level();
            cooldown_counter = 0;
            emergency_level = 0;
            forced_min_level = 0;
            first_run = 1;
        }

        last_sent_valid = 0;
        apply_level(battery_fan_level);

        // 重新进入主控制循环
        while (running) {
            main_loop();

            if (peek_fifo()) {
                write_log("SLEEP module deactivated");
                goto sleep_wait;
            }

            for (int i = 0; i < 5 && running; i++) {
                if (i > 0 && peek_fifo()) {
                    write_log("SLEEP module deactivated mid-cycle");
                    goto sleep_wait;
                }
                sleep(1);
            }
        }
    }

exit:
    write_log("=== tempctrl EXIT ===");
    if (fifo_fd >= 0) close(fifo_fd);
    unlink(FIFO_PATH);
    return 0;
}
