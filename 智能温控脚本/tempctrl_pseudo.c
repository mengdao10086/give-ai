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
// 档位映射使用查表法（见 build_params），因为风扇转速、目标温度不再是线性关系。
//
// setRunMode 完整签名：
//   setRunMode(int mode, int targetTemperature,
//              int windLevelOverclock, int coldLevelOverclock,
//              int windLevel, int modeCustom, int extra)
//
// ================================================================

#define LEVEL_MAX         10      // 最高档
#define LEVEL_MIN          0      // 最低档（档位范围 0~10，无负档位）

// --- 档位查表 ---
// 注意：风扇转速、目标温度、制冷片强度在档位间不是线性关系，
//       必须使用查表法而非公式计算。
static const int FAN_RPM_TABLE[11] = {
    2000, 2200, 2500, 2900, 3400, 4000, 4600, 5100, 5500, 5800, 6000
};
static const int GEAR_MODE_TABLE[11] = {
    1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1
};
static const int TARGET_TEMP_TABLE[11] = {
    20, 20, 20, 20, 18, 16, 15, 14, 13, 12, 20
};
static const int COLD_INTENSITY_TABLE[11] = {
    20, 40, 60, 80, 0, 0, 0, 0, 0, 0, 190
};

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
#define EMERG_FORCED_1       5     // 紧急1-min（智能16°C/4000RPM）
#define EMERG_FORCED_2       7     // 紧急2-min（智能14°C/5100RPM）
#define EMERG_FORCED_3       9     // 紧急3-min（智能12°C/5800RPM）

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
 * 使用查表法，因为档位与风扇转速、目标温度之间不是线性关系。
 *
 * 智能温控模式（mode=0）：
 *   targetTemp = 查表目标温度
 *   windLevel = 查表风扇转速上限 (RPM)
 *   windOC / coldOC = 0（此模式下不用）
 *
 * 固定功率模式（mode=1）：
 *   windOC = 查表风扇固定转速 (RPM)
 *   coldOC = 查表制冷片强度
 *   targetTemp = 占位 20
 *   windLevel = 0
 */
static void apply_level(int level) {
    int mode       = GEAR_MODE_TABLE[level];
    int target_temp = TARGET_TEMP_TABLE[level];
    if (target_temp < 5)  target_temp = 5;
    if (target_temp > 35) target_temp = 35;

    int windOC = 0;
    int coldOC = 0;
    int windLevel = 0;
    int modeCustom = 0;
    int extra = 0;

    if (mode == 0) {
        // --- 智能温控模式 ---
        windLevel = FAN_RPM_TABLE[level];
        windOC = 0;
        coldOC = 0;
    } else {
        // --- 固定功率模式 ---
        windOC = FAN_RPM_TABLE[level];
        coldOC = COLD_INTENSITY_TABLE[level];
        if (coldOC < 1) coldOC = 1;
        windLevel = 0;
    }

    // 构建 am broadcast 命令
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
// [A] ✅ 档位表已更新（根据 Sheet2）
//     档位范围改为 0~10，使用查表法代替公式计算。
//     紧急干预最低档位调整为：1-min=5, 2-min=7, 3-min=9。
//
// [B] windOC / coldOC 的有效范围
//     当前假设 windOC=RPM（直接传转速值），coldOC=整型强度值(1~194)。
//     setRunMode 的参数含义：
//       - windLevelOverclock(windOC)：固定功率模式风扇转速 (RPM)
//       - coldLevelOverclock(coldOC)：固定功率模式制冷片强度
//       - windLevel：智能温控模式风扇转速上限 (RPM)
//     需要在实际散热器上验证这些参数是否按预期工作。
//
// [C] LSPosed 模块需要扩展
//     当前模块已支持完整的 7 参数广播协议，无须额外修改。
//
// [D] 断联超时时间
//     当前 DISCONNECT_TIMEOUT=1（约 1 分钟），如需调整可改。
//
// [E] 去重逻辑
//     已在 tempctrl.c 中实现，原理：参数与上次完全相同时跳过下发。
//
// ================================================================
