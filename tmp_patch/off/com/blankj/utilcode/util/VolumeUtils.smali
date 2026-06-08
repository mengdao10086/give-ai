.class public Lcom/blankj/utilcode/util/VolumeUtils;
.super Ljava/lang/Object;
.source "VolumeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMaxVolume(I)I
    .registers 3

    #@0
    .line 91
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "audio"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/AudioManager;

    #@c
    .line 93
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    #@f
    move-result p0

    #@10
    return p0
.end method

.method public static getMinVolume(I)I
    .registers 4

    #@0
    .line 113
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "audio"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/AudioManager;

    #@c
    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@e
    const/16 v2, 0x1c

    #@10
    if-lt v1, v2, :cond_17

    #@12
    .line 116
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    #@15
    move-result p0

    #@16
    return p0

    #@17
    :cond_17
    const/4 p0, 0x0

    #@18
    return p0
.end method

.method public static getVolume(I)I
    .registers 3

    #@0
    .line 34
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "audio"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/AudioManager;

    #@c
    .line 36
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@f
    move-result p0

    #@10
    return p0
.end method

.method public static setVolume(III)V
    .registers 5

    #@0
    .line 66
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "audio"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/AudioManager;

    #@c
    .line 69
    :try_start_c
    invoke-virtual {v0, p0, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_f} :catch_f

    #@f
    :catch_f
    return-void
.end method
