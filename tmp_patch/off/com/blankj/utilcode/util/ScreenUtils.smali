.class public final Lcom/blankj/utilcode/util/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getAppScreenHeight()I
    .registers 2

    #@0
    .line 91
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "window"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/WindowManager;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, -0x1

    #@f
    return v0

    #@10
    .line 93
    :cond_10
    new-instance v1, Landroid/graphics/Point;

    #@12
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@15
    .line 94
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@1c
    .line 95
    iget v0, v1, Landroid/graphics/Point;->y:I

    #@1e
    return v0
.end method

.method public static getAppScreenWidth()I
    .registers 2

    #@0
    .line 78
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "window"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/WindowManager;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, -0x1

    #@f
    return v0

    #@10
    .line 80
    :cond_10
    new-instance v1, Landroid/graphics/Point;

    #@12
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@15
    .line 81
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@1c
    .line 82
    iget v0, v1, Landroid/graphics/Point;->x:I

    #@1e
    return v0
.end method

.method public static getScreenDensity()F
    .registers 1

    #@0
    .line 104
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@a
    return v0
.end method

.method public static getScreenDensityDpi()I
    .registers 1

    #@0
    .line 113
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@a
    return v0
.end method

.method public static getScreenHeight()I
    .registers 2

    #@0
    .line 61
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "window"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/WindowManager;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, -0x1

    #@f
    return v0

    #@10
    .line 63
    :cond_10
    new-instance v1, Landroid/graphics/Point;

    #@12
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@15
    .line 65
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@1c
    .line 69
    iget v0, v1, Landroid/graphics/Point;->y:I

    #@1e
    return v0
.end method

.method public static getScreenRotation(Landroid/app/Activity;)I
    .registers 2

    #@0
    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@3
    move-result-object p0

    #@4
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    #@b
    move-result p0

    #@c
    const/4 v0, 0x1

    #@d
    if-eq p0, v0, :cond_1d

    #@f
    const/4 v0, 0x2

    #@10
    if-eq p0, v0, :cond_1a

    #@12
    const/4 v0, 0x3

    #@13
    if-eq p0, v0, :cond_17

    #@15
    const/4 p0, 0x0

    #@16
    return p0

    #@17
    :cond_17
    const/16 p0, 0x10e

    #@19
    return p0

    #@1a
    :cond_1a
    const/16 p0, 0xb4

    #@1c
    return p0

    #@1d
    :cond_1d
    const/16 p0, 0x5a

    #@1f
    return p0
.end method

.method public static getScreenWidth()I
    .registers 2

    #@0
    .line 44
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "window"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/WindowManager;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, -0x1

    #@f
    return v0

    #@10
    .line 46
    :cond_10
    new-instance v1, Landroid/graphics/Point;

    #@12
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@15
    .line 48
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@1c
    .line 52
    iget v0, v1, Landroid/graphics/Point;->x:I

    #@1e
    return v0
.end method

.method public static getScreenXDpi()F
    .registers 1

    #@0
    .line 122
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    #@a
    return v0
.end method

.method public static getScreenYDpi()F
    .registers 1

    #@0
    .line 131
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    #@a
    return v0
.end method

.method public static getSleepDuration()I
    .registers 2

    #@0
    .line 354
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "screen_off_timeout"

    #@a
    .line 353
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
    .line 358
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    #@13
    const/16 v0, -0x7b

    #@15
    return v0
.end method

.method public static isFullScreen(Landroid/app/Activity;)Z
    .registers 2

    #@0
    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object p0

    #@8
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a
    const/16 v0, 0x400

    #@c
    and-int/2addr p0, v0

    #@d
    if-ne p0, v0, :cond_11

    #@f
    const/4 p0, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    :goto_12
    return p0
.end method

.method public static isLandscape()Z
    .registers 2

    #@0
    .line 248
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v0

    #@c
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@e
    const/4 v1, 0x2

    #@f
    if-ne v0, v1, :cond_13

    #@11
    const/4 v0, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    :goto_14
    return v0
.end method

.method public static isPortrait()Z
    .registers 2

    #@0
    .line 258
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v0

    #@c
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@e
    const/4 v1, 0x1

    #@f
    if-ne v0, v1, :cond_12

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v1, 0x0

    #@13
    :goto_13
    return v1
.end method

.method public static isScreenLock()Z
    .registers 2

    #@0
    .line 326
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "keyguard"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/KeyguardManager;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 328
    :cond_10
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public static screenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 290
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ScreenUtils;->screenShot(Landroid/app/Activity;Z)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static screenShot(Landroid/app/Activity;Z)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    .line 302
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    #@b
    move-result-object v0

    #@c
    .line 303
    new-instance v1, Landroid/util/DisplayMetrics;

    #@e
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #@11
    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@14
    move-result-object p0

    #@15
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@18
    move-result-object p0

    #@19
    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@1c
    const/4 p0, 0x0

    #@1d
    if-eqz p1, :cond_2d

    #@1f
    .line 306
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    #@22
    move-result p1

    #@23
    .line 307
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@25
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@27
    sub-int/2addr v1, p1

    #@28
    invoke-static {v0, p0, p1, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    #@2b
    move-result-object p0

    #@2c
    return-object p0

    #@2d
    .line 315
    :cond_2d
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@2f
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@31
    invoke-static {v0, p0, p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    #@34
    move-result-object p0

    #@35
    return-object p0
.end method

.method public static setFullScreen(Landroid/app/Activity;)V
    .registers 2

    #@0
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    const/16 v0, 0x400

    #@6
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    #@9
    return-void
.end method

.method public static setLandscape(Landroid/app/Activity;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 229
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    #@4
    return-void
.end method

.method public static setNonFullScreen(Landroid/app/Activity;)V
    .registers 2

    #@0
    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    const/16 v0, 0x400

    #@6
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    #@9
    return-void
.end method

.method public static setPortrait(Landroid/app/Activity;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 239
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    #@4
    return-void
.end method

.method public static setSleepDuration(I)V
    .registers 3

    #@0
    .line 340
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "screen_off_timeout"

    #@a
    .line 339
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    return-void
.end method

.method public static toggleFullScreen(Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 202
    invoke-static {p0}, Lcom/blankj/utilcode/util/ScreenUtils;->isFullScreen(Landroid/app/Activity;)Z

    #@3
    move-result v0

    #@4
    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@7
    move-result-object p0

    #@8
    const/16 v1, 0x400

    #@a
    if-eqz v0, :cond_10

    #@c
    .line 205
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    #@f
    goto :goto_13

    #@10
    .line 207
    :cond_10
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    #@13
    :goto_13
    return-void
.end method


# virtual methods
.method public calculateDistanceByX(Landroid/view/View;)I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@6
    .line 142
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    #@9
    move-result p1

    #@a
    const/4 v1, 0x0

    #@b
    aget v0, v0, v1

    #@d
    sub-int/2addr p1, v0

    #@e
    return p1
.end method

.method public calculateDistanceByY(Landroid/view/View;)I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@6
    .line 153
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    #@9
    move-result p1

    #@a
    const/4 v1, 0x1

    #@b
    aget v0, v0, v1

    #@d
    sub-int/2addr p1, v0

    #@e
    return p1
.end method

.method public getViewX(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@6
    const/4 p1, 0x0

    #@7
    aget p1, v0, p1

    #@9
    return p1
.end method

.method public getViewY(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@6
    const/4 p1, 0x1

    #@7
    aget p1, v0, p1

    #@9
    return p1
.end method
