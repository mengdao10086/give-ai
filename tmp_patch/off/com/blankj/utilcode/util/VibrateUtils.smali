.class public final Lcom/blankj/utilcode/util/VibrateUtils;
.super Ljava/lang/Object;
.source "VibrateUtils.java"


# static fields
.field private static vibrator:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static cancel()V
    .registers 1

    #@0
    .line 58
    invoke-static {}, Lcom/blankj/utilcode/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 60
    :cond_7
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    #@a
    return-void
.end method

.method private static getVibrator()Landroid/os/Vibrator;
    .registers 2

    #@0
    .line 64
    sget-object v0, Lcom/blankj/utilcode/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    #@2
    if-nez v0, :cond_12

    #@4
    .line 65
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@7
    move-result-object v0

    #@8
    const-string v1, "vibrator"

    #@a
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/Vibrator;

    #@10
    sput-object v0, Lcom/blankj/utilcode/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    #@12
    .line 67
    :cond_12
    sget-object v0, Lcom/blankj/utilcode/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    #@14
    return-object v0
.end method

.method public static vibrate(J)V
    .registers 3

    #@0
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 35
    :cond_7
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    #@a
    return-void
.end method

.method public static vibrate([JI)V
    .registers 3

    #@0
    .line 47
    invoke-static {}, Lcom/blankj/utilcode/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 49
    :cond_7
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate([JI)V

    #@a
    return-void
.end method
