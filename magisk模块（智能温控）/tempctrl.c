// ================================================================
// tempctrl.c — 飞智 WaspWing 散热器智能温控守护程序
// ================================================================
//
// 运行环境：Magisk / KernelSU 模块，由 service.sh 启动并守护
// App 进程检测：pgrep -f com.flydigi.waspwing.experimental
// 控制指令：am broadcast → LSPosed 模块 → WaspWingManager.setRunMode
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

// --- 电池温度控制（0.1°C）—— 可由 profile.conf 覆盖 ---
static int BATT_BASELINE = 350;     // 基准温度 35.0°C
static int BATT_ZONE_1   = 7;       // ±0.7°C → 不变（死区）
static int BATT_ZONE_2   = 20;      // ±2.0°C → 1 档（超过→2档）

// --- CPU 紧急干预阈值（0.1°C）—— 可由 profile.conf 覆盖 ---
static int CPU_EMERG_3   = 850;     // >85.0°C → 等级 3
static int CPU_EMERG_2   = 750;     // >75.0°C → 等级 2
static int CPU_EMERG_1   = 650;     // >65.0°C → 等级 1
static int CPU_RECOVER_0 = 550;     // <55.0°C → 清除紧急
static int CPU_RECOVER_1 = 650;     // <65.0°C 且 ≥2 级时降为 1
static int CPU_RECOVER_2 = 750;     // <75.0°C 且 ≥3 级时降为 2

// --- 紧急强制最低档位 —— 可由 profile.conf 覆盖 ---
static int EMERG_FORCED_1 = 5;
static int EMERG_FORCED_2 = 7;
static int EMERG_FORCED_3 = 9;

// --- 冷却期 —— 可由 profile.conf 覆盖 ---
static int COOLDOWN_CYCLES = 4;     // 每次调整后冷却 20 秒（4×5s）

// --- FIFO 通信（已废弃，改用 pgrep 检测 App 进程）---
// 保留 DISCONNECT_RESET_SEC 作为断联超时重置
static int DISCONNECT_RESET_SEC = 60;   // 断联超时秒数（可配置）

// --- CPU 滤波系数（百分比，0~100，默认 25=α=0.25）---
static int CPU_FILTER_ALPHA = 25;

// --- 日志路径（默认根据二进制名自动生成，可由 profile.conf 覆盖）---
static char log_file_path[256] = "";

// ======================== 配置文件系统 ========================

// 配置文件路径（自动检测或 --config 指定）
static char config_path[256] = "";
// 配置文件的最后修改时间（用于热重载检测）
static time_t config_mtime = 0;

// 前向声明（配置系统函数位于 write_log/clamp 之前，C 要求先声明后使用）
static void write_log(const char *fmt, ...);
static inline int clamp(int val, int lo, int hi);

/**
 * 从 KEY=VALUE 格式的配置文件加载参数
 * 遇到不认识的 key 或格式错误的行，跳过并记日志
 * 找不到文件则不修改任何变量（保持默认值）
 */
static void load_config(const char *path) {
    FILE *f = fopen(path, "r");
    if (!f) {
        write_log("CONFIG cannot open %s", path);
        return;
    }

    char line[256];
    int loaded = 0;
    while (fgets(line, sizeof(line), f)) {
        char *p = line;
        // 跳过行首空白
        while (*p == ' ' || *p == '\t') p++;
        // 跳过注释和空行
        if (*p == '#' || *p == '\n' || *p == '\0') continue;

        // 按 '=' 分割 key/value
        char *eq = strchr(p, '=');
        if (!eq) continue;
        *eq = '\0';
        char *key = p;
        char *val_str = eq + 1;

        // 去掉 key 尾部空白
        char *end = key + strlen(key) - 1;
        while (end > key && (*end == ' ' || *end == '\t')) *end-- = '\0';

        int val = atoi(val_str);

        // ---- 匹配 key ----
        if      (strcmp(key, "BATT_BASELINE") == 0)        BATT_BASELINE      = clamp(val, 300, 500);
        else if (strcmp(key, "BATT_ZONE_1") == 0)          BATT_ZONE_1        = clamp(val, 1, 100);
        else if (strcmp(key, "BATT_ZONE_2") == 0)          BATT_ZONE_2        = clamp(val, 1, 100);
        else if (strcmp(key, "CPU_EMERG_3") == 0)          CPU_EMERG_3        = clamp(val, 600, 1000);
        else if (strcmp(key, "CPU_EMERG_2") == 0)          CPU_EMERG_2        = clamp(val, 500, 900);
        else if (strcmp(key, "CPU_EMERG_1") == 0)          CPU_EMERG_1        = clamp(val, 400, 800);
        else if (strcmp(key, "CPU_RECOVER_0") == 0)        CPU_RECOVER_0      = clamp(val, 300, 700);
        else if (strcmp(key, "CPU_RECOVER_1") == 0)        CPU_RECOVER_1      = clamp(val, 400, 800);
        else if (strcmp(key, "CPU_RECOVER_2") == 0)        CPU_RECOVER_2      = clamp(val, 500, 900);
        else if (strcmp(key, "EMERG_FORCED_1") == 0)       EMERG_FORCED_1     = clamp(val, 0, 10);
        else if (strcmp(key, "EMERG_FORCED_2") == 0)       EMERG_FORCED_2     = clamp(val, 0, 10);
        else if (strcmp(key, "EMERG_FORCED_3") == 0)       EMERG_FORCED_3     = clamp(val, 0, 10);
        else if (strcmp(key, "COOLDOWN_CYCLES") == 0)      COOLDOWN_CYCLES    = clamp(val, 0, 100);
        else if (strcmp(key, "DISCONNECT_RESET_SEC") == 0) DISCONNECT_RESET_SEC = clamp(val, 10, 600);
        else if (strcmp(key, "CPU_FILTER_ALPHA") == 0)     CPU_FILTER_ALPHA   = clamp(val, 1, 100);
        else if (strcmp(key, "LOG_FILE") == 0) {
            // 直接从 val_str 读取字符串路径
            char *v = val_str;
            while (*v == ' ' || *v == '\t') v++;
            // 去掉尾部换行/空白
            char *nl = v + strlen(v) - 1;
            while (nl > v && (*nl == '\n' || *nl == '\r' || *nl == ' ' || *nl == '\t')) *nl-- = '\0';
            if (*v) {
                strncpy(log_file_path, v, sizeof(log_file_path) - 1);
                log_file_path[sizeof(log_file_path) - 1] = '\0';
            }
        }
        // 不识别的 key 静默跳过
        else { continue; }

        loaded++;
    }
    fclose(f);

    write_log("CONFIG loaded %d params from %s", loaded, path);
}

/**
 * 根据二进制名设定默认日志路径
 * 例：tempctrl → /cache/tempctrl.log
 * 此值为默认值，profile.conf 中 LOG_FILE 可覆盖
 */
static void set_default_log_path(void) {
    char exe_path[512];
    ssize_t len = readlink("/proc/self/exe", exe_path, sizeof(exe_path) - 1);
    if (len > 0) {
        exe_path[len] = '\0';
        char *slash = strrchr(exe_path, '/');
        if (slash) {
            slash++;
            snprintf(log_file_path, sizeof(log_file_path), "/cache/%s.log", slash);
            return;
        }
    }
    // fallback
    strncpy(log_file_path, "/cache/tempctrl.log", sizeof(log_file_path) - 1);
}

/**
 * 自动检测配置文件路径
 *
 * 通过 /proc/self/exe 获取 tempctrl 自身路径，
 * 在同目录下找 profile.conf
 *
 * 返回 1=找到，0=未找到
 */
static int detect_config_path(void) {
    char exe_path[512];
    ssize_t len = readlink("/proc/self/exe", exe_path, sizeof(exe_path) - 1);
    if (len <= 0) return 0;
    exe_path[len] = '\0';

    // 获取 exe 所在目录
    char *last_slash = strrchr(exe_path, '/');
    if (!last_slash) return 0;
    *last_slash = '\0';

    // 在同目录下找 profile.conf
    snprintf(config_path, sizeof(config_path), "%s/profile.conf", exe_path);
    if (access(config_path, F_OK) == 0) return 1;

    config_path[0] = '\0';
    return 0;
}

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

// --- App 进程检测 ---
static int app_was_alive = 0;          // 上次检测时 App 是否存活
static time_t app_dead_since = 0;      // App 失联起始时间戳

// ======================== 辅助函数 ========================

/**
 * 写入日志到 /cache/tempctrl.log
 */
static void write_log(const char *fmt, ...) {
    FILE *f = fopen(log_file_path, "a");
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

// ======================== App 进程检测 ========================

/**
 * 通过 pgrep 检测飞智 App 进程是否存活
 * 返回 1=存活，0=已死
 */
static int is_app_alive(void) {
    return system("pgrep -f 'com.flydigi.waspwing.experimental' >/dev/null 2>&1") == 0;
}

// ======================== 状态重置 ========================

/**
 * 重置所有状态（视为刚开机）
 * 根据当前电池温度重新计算初始档位
 */
static void reset_state(void) {
    int batt = read_battery_temp();
    if (batt >= 0) {
        // 基准温度 → 0 档，每 1°C 一档，范围 0~10
        int init = (batt - BATT_BASELINE) / 10;
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

    app_dead_since = 0;
    app_was_alive = 1;                 // 重置后视为 App 存活，等待检测

    // 清发送缓存，确保重置参数一定下发
    last_sent_valid = 0;

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

    // 一阶低通滤波：weighted = raw×ALPHA% + weighted×(100-ALPHA)%
    if (first_run) {
        cpu_weighted = cpu_now;
        first_run = 0;
    } else {
        cpu_weighted = (cpu_now * CPU_FILTER_ALPHA + cpu_weighted * (100 - CPU_FILTER_ALPHA)) / 100;
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

    int init = (batt - BATT_BASELINE) / 10;
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
 * 检查配置 → 读温度 → 决策 → 下发（去重）
 */
// 记录上一轮紧急等级（用于退出限制判断）
static int prev_emerg_level = 0;

static void main_loop(void) {
    // 0. 检查配置文件是否更新（热重载）
    if (config_path[0] != '\0') {
        struct stat st;
        if (stat(config_path, &st) == 0) {
            if (st.st_mtime != config_mtime) {
                load_config(config_path);
                config_mtime = st.st_mtime;
                write_log("CONFIG hot-reloaded (mtime changed)");
            }
        }
    }

    // 1. CPU 紧急干预（更新 cpu_weighted 和 emergency_level）
    prev_emerg_level = emergency_level;
    emergency_intervention();

    // 2. 电池温度控制（内部处理冷却期）
    battery_control();

    // 3. 计算最终档位 = max(电池基础档位, 紧急强制最低档位)
    int final_level = battery_fan_level;
    if (forced_min_level > final_level) final_level = forced_min_level;
    final_level = clamp(final_level, LEVEL_MIN, LEVEL_MAX);

    // 4. 下发（仅在参数变化时实际发送）
    apply_level(final_level);

    // 5. 同步电池档位 = 实际下发的档位
    // 这样电池控制始终以上次实际使用的档位为基础进行升降
    battery_fan_level = final_level;

    // 6. 退出紧急时限制电池档位上限（在同步之后，保证一定会执行）
    // 防止紧急撤了之后档位过高导致过度散热
    if (prev_emerg_level >= 3 && emergency_level < 3 && battery_fan_level > EMERG_FORCED_3)
        battery_fan_level = EMERG_FORCED_3;
    if (prev_emerg_level >= 2 && emergency_level < 2 && battery_fan_level > EMERG_FORCED_2)
        battery_fan_level = EMERG_FORCED_2;
    if (prev_emerg_level >= 1 && emergency_level < 1 && battery_fan_level > EMERG_FORCED_1)
        battery_fan_level = EMERG_FORCED_1;
}

// ======================== 程序入口 ========================

int main(int argc, char *argv[]) {
    signal(SIGTERM, handle_signal);
    signal(SIGINT,  handle_signal);

    // --- 日志路径、配置加载 ---
    set_default_log_path();
    if (argc >= 3 && strcmp(argv[1], "--config") == 0) {
        strncpy(config_path, argv[2], sizeof(config_path) - 1);
        config_path[sizeof(config_path) - 1] = '\0';
        load_config(config_path);
    } else if (detect_config_path()) {
        load_config(config_path);
    } else {
        config_path[0] = '\0';
    }
    if (config_path[0] != '\0') {
        struct stat st;
        if (stat(config_path, &st) == 0) config_mtime = st.st_mtime;
    }

    // --- 初始化档位 ---
    init_fan_level();
    write_log("=== tempctrl STARTED (level=%d) ===", battery_fan_level);

    // --- 等待 App 进程出现 ---
    while (running) {
        if (is_app_alive()) {
            write_log("WAIT app detected, entering work mode");
            break;
        }
        write_log("WAIT app not found, retry in 5s...");
        sleep(5);
    }
    if (!running) goto exit;

    // --- 进入工作模式 ---
    app_was_alive = 1;
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

        // App 进程存活检测
        if (!is_app_alive()) {
            // App 刚死 → 记录失联时间
            if (app_was_alive) {
                app_dead_since = time(NULL);
                app_was_alive = 0;
                write_log("APP gone, waiting for reconnect...");
            }

            // 等待 App 复活的循环
            while (running) {
                sleep(5);
                if (is_app_alive()) {
                    time_t elapsed = time(NULL) - app_dead_since;
                    if (elapsed >= DISCONNECT_RESET_SEC) {
                        write_log("WAKE app back after %lds (≥%ds), resetting",
                                  (long)elapsed, DISCONNECT_RESET_SEC);
                        reset_state();
                    } else {
                        write_log("WAKE app back after %lds, continuing",
                                  (long)elapsed);
                    }
                    app_was_alive = 1;
                    last_sent_valid = 0;          // 强制重发当前档位
                    apply_level(battery_fan_level);
                    write_log("ENTER work mode (reconnect)");
                    break;
                }
            }
        } else if (!app_was_alive) {
            // App 已复活（但上一轮检测还活着，不用重置）
            app_was_alive = 1;
            last_sent_valid = 0;
            apply_level(battery_fan_level);
            write_log("ENTER work mode (app revived)");
        }

        // 逐秒睡眠（可被信号中断）
        for (int i = 0; i < 5 && running; i++) {
            sleep(1);
        }
    }

exit:
    write_log("=== tempctrl EXIT ===");
    return 0;
}
