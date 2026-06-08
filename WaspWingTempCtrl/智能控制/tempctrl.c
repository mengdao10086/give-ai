// ================================================================
// tempctrl.c — 飞智 WaspWing 散热器智能温控守护程序
// ================================================================
//
// 运行环境：Magisk 模块，由 service.sh 启动并守护
// 通信方式：am broadcast → LSPosed 模块 → WaspWingManager
//
// 温度单位：整型 0.1°C（电池原生单位，CPU m°C ÷ 100）
//   例：350 = 35.0°C, 753 = 75.3°C
//
// 编译（Termux）：
//   clang -static -o tempctrl tempctrl.c
//
// ================================================================

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>

// ======================== 档位定义 ========================
//
// 档位    模式             目标温度   风扇转速/RPM   制冷片强度  备注
// ─────────────────────────────────────────────────────────────────
//  10    智能温控(mode=0)   10°C       6000          —           峰值制冷
//   9    智能温控(mode=0)   11°C       6000          —
//   8    智能温控(mode=0)   12°C       6000          —
//   7    智能温控(mode=0)   13°C       6000          —
//   6    智能温控(mode=0)   14°C       6000          —           满速临界
//   5    智能温控(mode=0)   15°C       5600          —
//   4    智能温控(mode=0)   16°C       5200          —
//   3    智能温控(mode=0)   17°C       4800          —
//   2    智能温控(mode=0)   18°C       4400          —
//   1    智能温控(mode=0)   19°C       4000          —
//   0    智能温控(mode=0)   20°C       3600          —           最弱智能
//  -1    固定功率(mode=1)   —          3200          60
//  -2    固定功率(mode=1)   —          2800          35
//  -3    固定功率(mode=1)   —          2400          20           最低功耗
//
// setRunMode 签名：
//   setRunMode(mode, targetTemperature,
//              windLevelOverclock, coldLevelOverclock,
//              windLevel, modeCustom, extra)
//
// 参数映射：
//   mode=0（智能温控）：targetTemperature, windLevel(风扇上限)
//   mode=1（固定功率）：windLevelOverclock(风扇转速), coldLevelOverclock(制冷强度)
//
// ================================================================

// --- 档位范围 ---
#define LEVEL_MAX          10
#define LEVEL_MIN_NEG      -3
#define LEVEL_ZERO          0     // 正负分界

// --- 风扇转速表（每级递减 400RPM，6 级以上满速）---
#define FAN_RPM_FULL       6000
#define FAN_RPM_STEP        400
#define FAN_RPM_MIN       2000     // 散热器最低转速
#define FAN_RPM_MAX       6000     // 散热器最高转速

// --- 制冷片强度范围 ---
#define COLD_MIN             1
#define COLD_MAX           194     // 最大有效值（以上需超频模式，本场景不用）
#define COLD_SMART_MODE    194     // 智能温控模式下允许最大制冷

// --- 电池温度阈值（0.1°C）---
#define BATT_UP_2          350     // ≥35.0°C → +2 档
#define BATT_UP_1          345     // ≥34.5°C → +1 档
#define BATT_DOWN_1        335     // ≤33.5°C → -1 档
#define BATT_DOWN_2        330     // ≤33.0°C → -2 档

// --- CPU 紧急干预阈值（0.1°C）---
#define CPU_EMERG_3        850     // >85.0°C → 等级 3
#define CPU_EMERG_2        750     // >75.0°C → 等级 2
#define CPU_EMERG_1        650     // >65.0°C → 等级 1
#define CPU_RECOVER_0      550     // <55.0°C → 清除紧急
#define CPU_RECOVER_1      650     // <65.0°C 且 ≥2 级时降为 1
#define CPU_RECOVER_2      750     // <75.0°C 且 ≥3 级时降为 2

// --- 紧急强制最低档位 ---
#define EMERG_FORCED_1       4
#define EMERG_FORCED_2       6
#define EMERG_FORCED_3       8

// --- 冷却期 ---
#define COOLDOWN_CYCLES      4     // 每次调整后冷却 20 秒（4×5s）

// --- 断联检测 ---
#define DISCONNECT_TIMEOUT   1     // 检测到 App 不在次数 ≥ 此值 → 视为关机
                                   // 检测周期 ~60 秒，1 次 ≈ 1 分钟

// --- 日志 ---
#define LOG_FILE "/cache/tempctrl.log"

// ======================== 全局状态 ========================

static int battery_fan_level = 0;      // 电池控制决定的基础档位
static int emergency_level = 0;        // CPU 紧急等级 0~3
static int forced_min_level = 0;       // 紧急强制最低档位
static int cpu_weighted = 250;         // 加权 CPU 温度，初始 25.0°C
static int cooldown_counter = 0;       // 冷却期剩余周期数
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
 * level ≥ 0：智能温控模式（mode=0）
 *   target = 20 - level
 *   windLevel = 风扇转速上限 (RPM)
 *   windLevelOverclock / coldLevelOverclock = 0（此模式下不用）
 *
 * level < 0：固定功率模式（mode=1）
 *   windLevelOverclock = 风扇固定转速 (RPM)
 *   coldLevelOverclock = 制冷片强度 (1~230)
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

    if (level >= 0) {
        // --- 智能温控 ---
        mode = 0;
        target = 20 - level;                           // 20°C ~ 10°C
        target = clamp(target, 5, 35);

        // 风扇转速上限：6 级以上满速，以下每级减 400
        if (level >= 6) {
            windLevel = FAN_RPM_FULL;
        } else {
            windLevel = FAN_RPM_FULL - (6 - level) * FAN_RPM_STEP;
        }
        windLevel = clamp(windLevel, FAN_RPM_MIN, FAN_RPM_MAX);

        // 固定功率参数在智能模式下置 0
        windOC = 0;
        coldOC = 0;    // 智能模式让散热器自行管理制冷
    } else {
        // --- 固定功率 ---
        mode = 1;
        target = 20;   // 模式 1 下此字段无效，设安全值

        // 风扇固定转速：从 level 6 向下每级减 400
        // level=-1: 6000-7*400=3200, -2: 2800, -3: 2400
        windOC = FAN_RPM_FULL - (6 - level) * FAN_RPM_STEP;
        windOC = clamp(windOC, FAN_RPM_MIN, FAN_RPM_MAX);

        // 制冷片强度
        switch (level) {
            case -1: coldOC = 60;  break;
            case -2: coldOC = 35;  break;
            case -3: coldOC = 20;  break;
            default: coldOC = 0;   break;
        }
        coldOC = clamp(coldOC, COLD_MIN, COLD_MAX);

        // 智能模式参数置 0
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

    level = clamp(level, LEVEL_MIN_NEG, LEVEL_MAX);
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

// ======================== 进程管理 ========================

/**
 * 检查飞智 App 进程是否存活
 * 使用 pgrep -f（toybox，Android 内置）
 * 返回 1=存活，0=已死
 */
static int is_app_alive(void) {
    FILE *fp = popen(
        "pgrep -f 'com.flydigi.waspwing.experimental' 2>/dev/null",
        "r");
    if (!fp) return 0;
    int pid;
    int found = (fscanf(fp, "%d", &pid) == 1);
    pclose(fp);
    return found;
}

/**
 * 尝试启动飞智 App
 * 启动后等待 BLE 初始化
 */
static void launch_app(void) {
    write_log("LAUNCH App process not found, starting...");
    system("am start -n "
           "com.flydigi.waspwing.experimental/.MainActivity "
           "-W >/dev/null 2>&1");

    // 等待 App 初始化和 BLE 连接建立
    // TODO: 后续可用 logcat 监听 GATT 连接成功日志代替硬等
    sleep(8);
}

// ======================== 状态重置 ========================

static int disconnect_count = 0;

/**
 * 重置所有状态（视为刚开机）
 * 在断联超时后 App 重新出现时调用
 * 根据当前电池温度重新计算初始档位
 */
static void reset_state(void) {
    int batt = read_battery_temp();
    if (batt >= 0) {
        // 35.0°C → 0 档，每 1°C 一档
        int init = (batt - 350) / 10;
        init = clamp(init, LEVEL_MIN_NEG, LEVEL_MAX);
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

    // 清发送缓存，确保重置参数一定下发
    last_sent_valid = 0;
    last_mode = -1;
    last_target_temp = -1;
    last_windOC = -1;
    last_coldOC = -1;
    last_windLevel = -1;

    disconnect_count = 0;

    // 立即下发重置后的档位
    apply_level(battery_fan_level);
}

/**
 * 断联检测（每 ~60 秒调用一次）
 *
 * 逻辑：
 * 1. App 进程存活 → 断联计数归零
 * 2. App 进程不在 → 计数累加 + 尝试启动
 * 3. 计数超阈值 → 标记为"下次联机时重置"
 */
static void detect_disconnection(void) {
    if (is_app_alive()) {
        if (disconnect_count > 0) {
            // App 之前死了现在回来了
            write_log("ALIVE App process recovered, disc_count=%d", disconnect_count);
            if (disconnect_count >= DISCONNECT_TIMEOUT) {
                // 断联超时过，视为关机后重连 → 重置
                reset_state();
                return;   // reset_state 已下发指令
            }
        }
        disconnect_count = 0;
        return;
    }

    // App 不在
    disconnect_count++;
    write_log("DEAD App not running (count=%d/%d)",
              disconnect_count, DISCONNECT_TIMEOUT);

    // 尝试启动
    launch_app();

    // 超时标记（达到阈值且在等待恢复中）
    // 实际重置在 App 重新出现时进行
}

// ======================== 电池温度控制 ========================

/**
 * 根据电池温度调整基础档位
 * 每 5 秒调用一次
 *
 * 调整策略：
 *   ≥35.0°C → +2 档
 *   ≥34.5°C → +1 档
 *   ≤33.0°C → -2 档
 *   ≤33.5°C → -1 档
 *   每次调整后冷却 20 秒
 */
static void battery_control(void) {
    if (cooldown_counter > 0) {
        cooldown_counter--;
        return;
    }

    int batt = read_battery_temp();
    if (batt < 0) {
        // 读不到温度传感器，保持当前档位不变
        return;
    }

    int delta = 0;
    if      (batt >= BATT_UP_2)   delta = 2;
    else if (batt >= BATT_UP_1)   delta = 1;
    else if (batt <= BATT_DOWN_2) delta = -2;
    else if (batt <= BATT_DOWN_1) delta = -1;

    if (delta != 0) {
        int old = battery_fan_level;
        battery_fan_level += delta;
        battery_fan_level = clamp(battery_fan_level, LEVEL_MIN_NEG, LEVEL_MAX);
        cooldown_counter = COOLDOWN_CYCLES;

        write_log("BATT batt=%d.%d lv %+d (%d→%d)",
                  batt / 10, batt % 10, delta, old, battery_fan_level);
    }
}

// ======================== CPU 紧急干预 ========================

/**
 * CPU 温度紧急干预
 * 每 5 秒调用一次
 *
 * 使用一阶低通滤波（α=0.25）平滑温度
 *
 * 紧急等级分布：
 *   等级 1（>65°C）→ 最低档位 4
 *   等级 2（>75°C）→ 最低档位 6
 *   等级 3（>85°C）→ 最低档位 8
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
        if (old == 3 && new_level < 3 && battery_fan_level > LEVEL_MAX)
            battery_fan_level = LEVEL_MAX;
        if (old == 2 && new_level < 2 && battery_fan_level > 8)
            battery_fan_level = 8;
        if (old == 1 && new_level < 1 && battery_fan_level > 6)
            battery_fan_level = 6;

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
 * 35.0°C → 0 档，每 ±1°C → ±1 档
 */
static void init_fan_level(void) {
    int batt = read_battery_temp();
    if (batt < 0) {
        battery_fan_level = 0;
        write_log("INIT batt_err default_lv=0");
        return;
    }

    int init = (batt - 350) / 10;
    init = clamp(init, LEVEL_MIN_NEG, LEVEL_MAX);
    battery_fan_level = init;

    write_log("INIT batt=%d.%d lv=%d", batt / 10, batt % 10, battery_fan_level);
}

// ======================== 主循环 ========================

static void handle_signal(int sig) {
    (void)sig;
    running = 0;
}

static int main_loop(void) {
    // 1. CPU 紧急干预（更新 cpu_weighted 和 emergency_level）
    emergency_intervention();

    // 2. 电池温度控制（内部处理冷却期）
    battery_control();

    // 3. 计算最终档位 = max(电池基础档位, 紧急强制最低档位)
    int final_level = battery_fan_level;
    if (forced_min_level > final_level) final_level = forced_min_level;
    final_level = clamp(final_level, LEVEL_MIN_NEG, LEVEL_MAX);

    // 4. 下发（仅在参数变化时实际发送）
    return apply_level(final_level);
}

// ======================== 程序入口 ========================

int main(int argc, char *argv[]) {
    // --- 信号处理 ---
    signal(SIGTERM, handle_signal);
    signal(SIGINT,  handle_signal);

    // --- 初始化 ---
    init_fan_level();
    cooldown_counter = 0;
    emergency_level = 0;
    forced_min_level = 0;
    first_run = 1;

    write_log("=== tempctrl STARTED (level=%d) ===", battery_fan_level);

    // --- 启动后初始下发 ---
    // 强制下发（清缓存确保）
    last_sent_valid = 0;
    apply_level(battery_fan_level);

    // --- 启动 App（如果没在运行）---
    if (!is_app_alive()) {
        launch_app();
    }

    // --- 断联检测计数器 ---
    int check_counter = 0;

    // --- 主循环：每 5 秒一次 ---
    while (running) {
        main_loop();

        // 每 12 次循环（~60 秒）检查 App 进程状态
        check_counter++;
        if (check_counter >= 12) {
            check_counter = 0;
            detect_disconnection();
        }

        // 逐秒睡眠以响应信号
        for (int i = 0; i < 5 && running; i++) {
            sleep(1);
        }
    }

    // --- 退出 ---
    write_log("=== tempctrl EXIT ===");
    return 0;
}
