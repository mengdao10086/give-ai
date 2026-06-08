// ================================================================
// 飞智 WaspWing 散热器 — 智能温控守护程序 (详细伪代码 v2)
// ================================================================
//
// 运行环境：Magisk 模块内部，由 service.sh 启动并守护
// 通信方式：am broadcast → LSPosed 模块 → WaspWingManager.setRunMode()
//
// 温度单位：整型，0.1°C 精度
//   电池：/sys/class/power_supply/battery/temp，原生 0.1°C，如 350=35.0°C
//   CPU：/sys/class/thermal/thermal_zone[30-40]/temp ÷ 100，如 753=75.3°C
//
// ================================================================

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <dirent.h>
#include <ctype.h>

// ======================== 档位定义 ========================
//
// 档位  模式             目标温度    风扇限速    制冷片功率
// ─────────────────────────────────────────────────────────────
// 10    智能温控(mode=0)   10°C       6000RPM     full
//  9    智能温控(mode=0)   11°C       6000RPM     full
//  8    智能温控(mode=0)   12°C       6000RPM     full
//  7    智能温控(mode=0)   13°C       6000RPM     full
//  6    智能温控(mode=0)   14°C       6000RPM     full    ← 满速临界
//  5    智能温控(mode=0)   15°C       5600RPM     full
//  4    智能温控(mode=0)   16°C       5200RPM     full
//  3    智能温控(mode=0)   17°C       4800RPM     full
//  2    智能温控(mode=0)   18°C       4400RPM     full
//  1    智能温控(mode=0)   19°C       4000RPM     full
//  0    智能温控(mode=0)   20°C       3600RPM     full    ← 最弱智能温控
// -1    固定功率(mode=1)   ─         3200RPM     60%     制冷片低功率
// -2    固定功率(mode=1)   ─         2800RPM     35%
// -3    固定功率(mode=1)   ─         2400RPM     20%     最低功耗待机
//
// setRunMode 完整签名：
//   setRunMode(int mode, int targetTemperature,
//              int windLevelOverclock, int coldLevelOverclock,
//              int windLevel, int modeCustom, int extra)
//
// TODO: 需要确认的参数
//   - mode=1（普通模式）是否就是固定功率模式？
//   - windOC (windLevelOverclock) 范围？推测 0~100 风扇限速百分比
//   - coldOC (coldLevelOverclock) 范围？推测 0~100 制冷片功率百分比
//   - windLevel 和 modeCustom 在智能温控模式下的作用？
//   - 以上参数值写死了先测通，还是先留 0 逐步调试？
//
// ================================================================

#define LEVEL_POS_MAX     10      // 最高档
#define LEVEL_POS_MIN      0      // 正档最低（智能温控）
#define LEVEL_NEG_MIN     -3      // 最低档（固定功率）
// TODO: -1~-3 未完全实现，主要是确认协议参数

// --- 风扇限速表（0.1°C 单位：RPM 用整型直接存）---
// 级别 6+：满速 6000
// 级别 5→0：每降 1 级减 400
// 级别 -1→-3：每降 1 级减 400
#define FAN_FULL_RPM       6000
#define FAN_STEP_RPM        400   // 每级降低的风扇转速

// --- RMP → windOC（百分比）的简单换算 ---
// windOC 可能含义：风扇最大转速百分比（0~100）
// 6000RPM = 100%, 3600RPM = 60%, 2400RPM = 40%
// TODO: 如果实际是别的范围（如 0~255），调整此宏
#define RPM_TO_WINDOC(rpm)  ((rpm) * 100 / FAN_FULL_RPM)

// --- 固定功率模式参数（负档位）---
// TODO: coldOC 的范围可能不是 0~100，待确认
#define COLD_PCT_N1     60   // -1 档制冷片强度
#define COLD_PCT_N2     35   // -2 档制冷片强度
#define COLD_PCT_N3     20   // -3 档制冷片强度

// default 参数（仅在智能温控模式下用到非 0 值）
#define WINDOC_DEFAULT    100   // 智能温控默认不限风扇（设为 100%）
#define COLDOC_DEFAULT    100   // 智能温控默认不限制冷片

// ======================== 温度阈值（0.1°C）=======================

// 电池控制阈值
#define BATT_UP_2          350    // ≥ 35.0°C → 升 2 档
#define BATT_UP_1          345    // ≥ 34.5°C → 升 1 档
#define BATT_DOWN_2        330    // ≤ 33.0°C → 降 2 档
#define BATT_DOWN_1        335    // ≤ 33.5°C → 降 1 档

// CPU 紧急干预阈值
#define CPU_EMERG_3        850    // > 85.0°C → 紧急等级 3
#define CPU_EMERG_2        750    // > 75.0°C → 紧急等级 2
#define CPU_EMERG_1        650    // > 65.0°C → 紧急等级 1
#define CPU_RECOVER_0      550    // < 55.0°C → 清除紧急等级
#define CPU_RECOVER_1      650    // < 65.0°C 且 emerg≥2 → 降为 1
#define CPU_RECOVER_2      750    // < 75.0°C 且 emerg≥3 → 降为 2

// 紧急强制最低档位
#define EMERG_FORCED_1       4
#define EMERG_FORCED_2       6
#define EMERG_FORCED_3       8

// 冷却期（每周期 5 秒）
#define COOLDOWN_CYCLES      4     // 一次调整后冷却 20 秒

// ======================== 全局状态 ========================

static int battery_fan_level = 0;     // 电池控制决定的基础档位
static int emergency_level = 0;       // CPU 紧急等级 0~3
static int forced_min_level = 0;      // 紧急强制最低档位
static int cpu_weighted = 250;        // 加权 CPU 温度，初始 25.0°C
static int cooldown_counter = 0;      // 冷却期剩余周期数，0=可调节
static int first_run = 1;            // 首次运行标记
static volatile int running = 1;      // 信号控制的主循环标记

// ======================== 温度读取 ========================

/**
 * 读取电池温度，返回 0.1°C 整数值
 * /sys/class/power_supply/battery/temp，原生单位 0.1°C
 * 如 350 → 35.0°C。失败返回 -1
 */
static int read_battery_temp(void) {
    FILE *f = fopen("/sys/class/power_supply/battery/temp", "r");
    if (!f) return -1;
    int val;
    if (fscanf(f, "%d", &val) != 1) { fclose(f); return -1; }
    fclose(f);
    return val;
}

/**
 * 读取 CPU 最高温度，返回 0.1°C 整数值
 * 扫描 thermal_zone30~40，取各传感器中的最大值
 * 原始值 m°C，除以 100 转 0.1°C，如 75321 → 753（=75.3°C）
 * 全部失败返回 -1
 */
static int read_cpu_temp_max(void) {
    int max_temp = -1;
    char path[64];
    // TODO: thermal_zone 范围可能在部分 SoC 不同
    // 后续可改为扫描全部 thermal_zone*，读 type 文件白名单匹配"cpu"/"cpuss"等
    for (int i = 30; i <= 40; i++) {
        snprintf(path, sizeof(path),
                 "/sys/class/thermal/thermal_zone%d/temp", i);
        FILE *f = fopen(path, "r");
        if (!f) continue;
        int raw;
        if (fscanf(f, "%d", &raw) != 1) { fclose(f); continue; }
        fclose(f);
        if (raw <= 0 || raw > 150000) continue;   // 滤除异常值
        int decic = raw / 100;
        if (decic > max_temp) max_temp = decic;
    }
    return max_temp;
}

// ======================== 控制指令下发 ========================

/**
 * 根据档位计算 WaspWing 的控制参数，通过 am broadcast 发送
 *
 * 正档 (0~10)：智能温控模式
 *   targetTemp = 20 - level
 *   windOC（风扇限速）根据 RPM 换算为百分比
 *   coldOC = 100（制冷片全开）
 *
 * 负档 (-3~-1)：固定功率模式（mode=1）
 *   windOC 设对应限速百分比
 *   coldOC 设对应制冷片强度
 *   targetTemp 设为安全值（智能温控模式下才使用）
 */
static void apply_level(int level) {
    int mode = 0;           // 默认智能温控
    int target_temp = 20;   // 默认 20°C（最弱制冷）
    int windOC = 100;       // 风扇限速百分比
    int coldOC = 100;       // 制冷片功率百分比
    int windLevel = 0;      // 风扇直接档位（普通模式用）
    int modeCustom = 0;     // 自定义模式
    int extra = 0;          // 保留

    if (level >= 0 && level <= LEVEL_POS_MAX) {
        // --- 智能温控模式 (mode=0) ---
        mode = 0;
        target_temp = 20 - level;
        if (target_temp < 5)  target_temp = 5;
        if (target_temp > 35) target_temp = 35;

        // 风扇限速：level 6+ 满速，以下每降一级减 400RPM
        int rpm;
        if (level >= 6) {
            rpm = FAN_FULL_RPM;
        } else {
            // level 0~5: 3600 ~ 5600 RPM
            rpm = FAN_FULL_RPM - (6 - level) * FAN_STEP_RPM;
        }
        windOC = RPM_TO_WINDOC(rpm);
        if (windOC > 100) windOC = 100;
        if (windOC < 0)   windOC = 0;

        coldOC = COLDOC_DEFAULT;    // 智能温控下制冷片全开

    } else if (level < 0 && level >= LEVEL_NEG_MIN) {
        // --- 固定功率模式 (mode=1?) ---
        mode = 1;
        // TODO: mode=1 是否就是固定功率模式？需确认
        // 备选：mode=2（仅风）？
        target_temp = 20;           // 固定功率下目标温度无效，设个安全值

        // 负档位的风扇限速：继续按每级 400 递减
        int rpm = FAN_FULL_RPM - (6 - level) * FAN_STEP_RPM;
        // level=-1 → 6000-7*400=3200, level=-2 → 2800, level=-3 → 2400
        if (rpm < 0) rpm = 0;
        windOC = RPM_TO_WINDOC(rpm);

        // 制冷片强度按档位设定
        switch (level) {
            case -1: coldOC = COLD_PCT_N1; break;
            case -2: coldOC = COLD_PCT_N2; break;
            case -3: coldOC = COLD_PCT_N3; break;
        }

        // TODO: 固定功率模式下 windLevel 是否需要设置？
        // 如果 mode=1 时制冷片和风扇是独立控制的，可能还需要设 windLevel
        // windLevel 的内容不明，暂时保留 0
    }

    // 构建 am broadcast 命令
    // TODO: windLevel, modeCustom, extra 含义待确认，暂时传 0
    char cmd[512];
    snprintf(cmd, sizeof(cmd),
        "am broadcast --user 0 "
        "-a com.flydigi.SET_TEMPERATURE "
        "--ei mode %d "
        "--ei temperature %d "
        "--ei windOC %d "
        "--ei coldOC %d "
        "--ei windLevel %d "
        "--ei modeCustom %d "
        "--ei extra %d "
        "> /dev/null 2>&1",
        mode, target_temp, windOC, coldOC,
        windLevel, modeCustom, extra);

    system(cmd);
}

// ======================== 进程存活检测 ========================

/**
 * 检查飞智散热器 App 进程是否存活
 * 使用 pgrep -f（toybox，Android 系统内置）
 * 返回 1=存活，0=已死
 *
 * TODO: 如果某些精简 ROM 没有 pgrep，降级到 /proc 遍历
 *       但目前够用，暂不实现 fallback
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
 * 尝试通过 am start 启动飞智 App
 */
static void launch_app(void) {
    system("am start -n "
           "com.flydigi.waspwing.experimental/.MainActivity "
           "-W > /dev/null 2>&1");

    // 启动后等待 8 秒让 App 初始化 BLE 并连接散热器
    // TODO: 更精确的做法是监听 logcat 中 GATT 连接成功的日志
    sleep(8);
}

/**
 * 断联检测（每 ~60 秒调用一次）
 *
 * 如果 App 进程不在，尝试重启。
 * 如果 App 在但散热器无响应——目前无法从外部判断：
 *   需要 LSPosed 模块配合发回复广播。先跳过。
 *
 * 如果断联超过 N 次（约 N×60 秒）仍无法恢复，
 * 就认为散热器已关机，重置状态。
 */
static int disconnect_count = 0;
#define DISCONNECT_TIMEOUT   12    // 12 次检测 ≈ 12 分钟超时
// TODO: 上面用户说暂定 "超过1分钟视为散热器关机"
// 检测周期是 60 秒，所以 1 次检测 ≈ 1 分钟
// 我暂写为 DISCONNECT_TIMEOUT=1，你看对不对

/**
 * 重置所有状态，模拟刚开机
 */
static void reset_state(void) {
    // 强制重新 init_fan_level 会读取当前电池温度重算
    int batt = read_battery_temp();
    if (batt >= 0) {
        int init = (batt - 350) / 10;
        if (init > LEVEL_POS_MAX) init = LEVEL_POS_MAX;
        if (init < LEVEL_NEG_MIN) init = LEVEL_NEG_MIN;
        battery_fan_level = init;
    } else {
        battery_fan_level = 0;
    }
    cooldown_counter = 0;
    emergency_level = 0;
    forced_min_level = 0;
    cpu_weighted = 250;    // 重置到 25.0°C
    first_run = 1;         // 让紧急干预重新初始化加权滤波

    disconnect_count = 0;

    // 立刻下发重置后的档位
    apply_level(battery_fan_level);
}

static void detect_disconnection(void) {
    if (is_app_alive()) {
        // App 正常→断联计数归零
        disconnect_count = 0;
        return;
    }

    // App 不在
    disconnect_count++;
    if (disconnect_count >= DISCONNECT_TIMEOUT) {
        // 超过 N 分钟未连上→视为散热器关机
        // 下次连上时当作刚开机（下次检测到进程复活时重置）
        // TODO: 这里只计数，真正重置在 App 重新出现时做更合理
        // 但如果是 App 长时间未启动，可在这里直接重置
    }

    // 尝试启动 App
    launch_app();

    // 启动后等一会，下次 detect_disconnection 再检查进程是否真起来了
}

// ======================== 电池温度控制 ========================

static void battery_control(void) {
    if (cooldown_counter > 0) {
        cooldown_counter--;
        return;
    }

    int batt = read_battery_temp();
    if (batt < 0) return;     // 读取失败，保持当前档位

    int delta = 0;
    if      (batt >= BATT_UP_2)    delta = 2;
    else if (batt >= BATT_UP_1)    delta = 1;
    else if (batt <= BATT_DOWN_2)  delta = -2;
    else if (batt <= BATT_DOWN_1)  delta = -1;

    if (delta != 0) {
        battery_fan_level += delta;
        if (battery_fan_level > LEVEL_POS_MAX) battery_fan_level = LEVEL_POS_MAX;
        if (battery_fan_level < LEVEL_NEG_MIN) battery_fan_level = LEVEL_NEG_MIN;
        cooldown_counter = COOLDOWN_CYCLES;
    }
}

// ======================== CPU 紧急干预 ========================

static void emergency_intervention(void) {
    int cpu_now = read_cpu_temp_max();
    if (cpu_now < 0) return;

    // 一阶低通滤波：weighted = raw * 0.25 + weighted * 0.75
    if (first_run) {
        cpu_weighted = cpu_now;
        first_run = 0;
    } else {
        cpu_weighted = (cpu_now * 25 + cpu_weighted * 75) / 100;
    }

    int t = cpu_weighted;
    int new_level = emergency_level;

    // 升温：直接跳升
    if      (t > CPU_EMERG_3) new_level = 3;
    else if (t > CPU_EMERG_2) new_level = 2;
    else if (t > CPU_EMERG_1) new_level = 1;
    // 降温：10°C 滞回逐级下降
    else if (t < CPU_RECOVER_0)                         new_level = 0;
    else if (t < CPU_RECOVER_1 && emergency_level >= 2) new_level = 1;
    else if (t < CPU_RECOVER_2 && emergency_level >= 3) new_level = 2;

    if (new_level != emergency_level) {
        // 退出高等级时限制基础档位上限，防止骤降
        if (emergency_level == 3 && new_level < 3 &&
                battery_fan_level > LEVEL_POS_MAX)
            battery_fan_level = LEVEL_POS_MAX;
        if (emergency_level == 2 && new_level < 2 &&
                battery_fan_level > 8)
            battery_fan_level = 8;
        if (emergency_level == 1 && new_level < 1 &&
                battery_fan_level > 6)
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
 * 根据当前电池温度设定初始档位
 * 35°C → 0 档，每 ±1°C 调 ±1 档（注意现在是 0.1°C 单位）
 */
static void init_fan_level(void) {
    int batt = read_battery_temp();
    if (batt < 0) {
        battery_fan_level = 0;
        return;
    }

    // batt 单位 0.1°C，35.0°C = 350，每 10（=1°C）一档
    int init_level = (batt - 350) / 10;
    if (init_level > LEVEL_POS_MAX) init_level = LEVEL_POS_MAX;
    if (init_level < LEVEL_NEG_MIN) init_level = LEVEL_NEG_MIN;
    battery_fan_level = init_level;
}

// ======================== 主循环 ========================

static void handle_signal(int sig) {
    (void)sig;
    running = 0;
}

static void main_loop(void) {
    // 1. CPU 紧急干预
    emergency_intervention();

    // 2. 电池温度控制
    battery_control();

    // 3. 计算最终档位 = max(电池基础档位, 紧急强制最低档位)
    int final_level = battery_fan_level;
    if (forced_min_level > final_level) final_level = forced_min_level;
    if (final_level > LEVEL_POS_MAX) final_level = LEVEL_POS_MAX;
    if (final_level < LEVEL_NEG_MIN) final_level = LEVEL_NEG_MIN;

    // TODO: 在最终档位没有变化时跳过 apply_level？
    //       可以减少不必要的 am broadcast 调用（省电）
    //       但初始版本先每次都下发，稳定后再优化

    // 4. 下发控制指令
    apply_level(final_level);

    // TODO: 记录日志到 /cache/tempctrl.log
    // 格式: "时间 | 电池温 | CPU最高 | CPU加权 | 基础档 | 紧急 | 最终档 | mode | 目标温"
}

int main(int argc, char *argv[]) {
    signal(SIGTERM, handle_signal);
    signal(SIGINT,  handle_signal);
    // TODO: SIGHUP 是否用来重新加载配置？

    // 初始化
    init_fan_level();
    cooldown_counter = 0;
    emergency_level = 0;
    forced_min_level = 0;
    first_run = 1;

    // App 保活检测计数器
    int disconnect_check_counter = 0;
    disconnect_count = 0;

    // 如果 App 还没运行，先启动
    if (!is_app_alive()) {
        launch_app();
    }

    // 主循环：每 5 秒执行一次
    while (running) {
        main_loop();

        // 每 12 次（~60 秒）检查 App 状态
        disconnect_check_counter++;
        if (disconnect_check_counter >= 12) {
            disconnect_check_counter = 0;

            int was_dead = !is_app_alive();
            detect_disconnection();
            // 如果 detect 发现 App 刚复活（之前 dead 现在触发了启动）
            // 并且之前断联超时过，要重置状态
            if (was_dead && is_app_alive() && disconnect_count > 0) {
                // 断联超时标记已发生，这次 App 回来了→重置为刚开机
                reset_state();
            }
        }

        // 逐秒睡眠以响应信号
        for (int i = 0; i < 5 && running; i++) {
            sleep(1);
        }
    }

    return 0;
}

// ================================================================
// 待确认 / 待实现 清单
// ================================================================
//
// [A] 负档位的 mode 编号
//     目前暂写 mode=1。负档位到底用哪个 mode 值？需要试。
//
// [B] windOC / coldOC 的有效范围
//     目前假设 0~100（百分比），但可能是 0~10 或 0~255。
//     需要你在 App 里调节对应的风扇限速/制冷片强度时，
//     抓一份 BLE 日志确认实际写入值。
//
// [C] LSPosed 模块需要扩展
//     当前模块只转发 temperature/mode/extra 三个字段。
//     需要用 windOC/coldOC/windLevel/modeCustom 的 extra 扩展广播协议。
//     这部分等我改好 C 程序后再动。
//
// [D] 断联超时时间
//     你在上一条说"超过1分钟视为散热器关机"，当前 DISCONNECT_TIMEOUT=1
//     （检测周期 60 秒，1 次 ≈ 1 分钟）。
//     但进程被杀后 launch_app 又要等 8 秒，所以实际超时约 68 秒。
//     如果你觉得合适，我就不动。
//
// [E] 档位不变时跳过下发（性能优化）
//     每次循环都 am broadcast 其实问题不大（~100ms/5s）
//     但如果你想省电模式加这个优化，注释里标了位置。
//
// ================================================================
