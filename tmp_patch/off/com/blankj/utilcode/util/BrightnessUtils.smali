.class public final Lcom/blankj/utilcode/util/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


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

.method public static getBrightness()I
    .registers 2

    #@0
    .line 67
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "screen_brightness"

    #@a
    .line 66
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    #@d
    move-result v0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    return v0

    #@f
    :catch_f
    move-exception v0

    #@10
    .line 71
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    #@13
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public static getWindowBrightness(Landroid/view/Window;)I
    .registers 2

    #@0
    .line 110
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object p0

    #@4
    .line 111
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@6
    const/4 v0, 0x0

    #@7
    cmpg-float v0, p0, v0

    #@9
    if-gez v0, :cond_10

    #@b
    .line 112
    invoke-static {}, Lcom/blankj/utilcode/util/BrightnessUtils;->getBrightness()I

    #@e
    move-result p0

    #@f
    return p0

    #@10
    :cond_10
    const/high16 v0, 0x437f0000    # 255.0f

    #@12
    mul-float/2addr p0, v0

    #@13
    float-to-int p0, p0

    #@14
    return p0
.end method

.method public static isAutoBrightnessEnabled()Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 33
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v1

    #@9
    const-string v2, "screen_brightness_mode"

    #@b
    .line 32
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    #@e
    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_14

    #@f
    const/4 v2, 0x1

    #@10
    if-ne v1, v2, :cond_13

    #@12
    move v0, v2

    #@13
    :cond_13
    return v0

    #@14
    :catch_14
    move-exception v1

    #@15
    .line 38
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    #@18
    return v0
.end method

.method public static setAutoBrightnessEnabled(Z)Z
    .registers 3

    #@0
    .line 52
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "screen_brightness_mode"

    #@a
    .line 51
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    move-result p0

    #@e
    return p0
.end method

.method public static setBrightness(I)Z
    .registers 4

    #@0
    .line 84
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "screen_brightness"

    #@a
    .line 85
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    move-result p0

    #@e
    .line 86
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    #@16
    return p0
.end method

.method public static setWindowBrightness(Landroid/view/Window;I)V
    .registers 4

    #@0
    .line 98
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    int-to-float p1, p1

    #@5
    const/high16 v1, 0x437f0000    # 255.0f

    #@7
    div-float/2addr p1, v1

    #@8
    .line 99
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@a
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@d
    return-void
.end method
