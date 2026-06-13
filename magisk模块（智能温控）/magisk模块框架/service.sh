#!/system/bin/sh
# ============================================================
# 飞智 B6X 增强计划 — 开机自启动脚本
# ============================================================
# MODDIR 由 Magisk 自动设为模块所在目录
# tempctrl 自身会通过 /proc/self/exe 自动定位 profile.conf
# ============================================================

MODDIR=${0%/*}

# 等待系统启动完成（防止过早启动导致 sysfs 不可读）
# 最多等 60 秒，每 5 秒检测一次
for i in $(seq 1 12); do
    if [ "$(getprop sys.boot_completed)" = "1" ]; then
        break
    fi
    sleep 5
done

# 启动智能温控守护程序
# 日志重定向到 /cache/tempctrl.log
nohup "$MODDIR/tempctrl" >> /cache/tempctrl.log 2>&1 &
