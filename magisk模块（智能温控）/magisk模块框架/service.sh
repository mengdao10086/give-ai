#!/system/bin/sh
# ============================================================
# 飞智 B6X 增强计划 — 开机自启动脚本
# ============================================================
# MODDIR 由 Magisk/KSU 自动设为模块所在目录
#
# KernelSU 的模块目录通常挂载了 noexec，不能直接运行二进制，
# 所以将 tempctrl 复制到 /data/local/tmp/ 再执行。
# tempctrl 通过 /proc/self/exe 自动定位 profile.conf（同目录/父目录）
#
# 不再使用 FIFO 通信，改为 pgrep 检测 App 进程。
# ============================================================

MODDIR=${0%/*}

# 等待系统启动完成（防止过早启动导致 sysfs 不可读）
for i in $(seq 1 12); do
    if [ "$(getprop sys.boot_completed)" = "1" ]; then
        break
    fi
    sleep 5
done

# 复制二进制到可执行分区（绕过 KernelSU 的 noexec 限制）
cp "$MODDIR/tempctrl" /data/local/tmp/tempctrl
chmod 755 /data/local/tmp/tempctrl

# 复制配置文件到同目录（/proc/self/exe 自动定位）
cp "$MODDIR/profile.conf" /data/local/tmp/profile.conf 2>/dev/null

# 启动智能温控守护程序
nohup /data/local/tmp/tempctrl >> /cache/tempctrl.log 2>&1 &
