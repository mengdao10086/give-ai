.class public final Lcom/blankj/utilcode/util/BarUtils;
.super Ljava/lang/Object;
.source "BarUtils.java"


# static fields
.field private static final KEY_OFFSET:I = -0x7b

.field private static final TAG_OFFSET:Ljava/lang/String; = "TAG_OFFSET"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "TAG_STATUS_BAR"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static addMarginTopEqualStatusBarHeight(Landroid/view/View;)V
    .registers 7

    #@0
    const-string v0, "TAG_OFFSET"

    #@2
    .line 169
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@5
    const/16 v0, -0x7b

    #@7
    .line 170
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_16

    #@d
    .line 171
    check-cast v1, Ljava/lang/Boolean;

    #@f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_16

    #@15
    return-void

    #@16
    .line 172
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1c
    .line 173
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@1e
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@20
    .line 174
    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    #@23
    move-result v4

    #@24
    add-int/2addr v3, v4

    #@25
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@27
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@29
    .line 173
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    #@2c
    const/4 v1, 0x1

    #@2d
    .line 177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@34
    return-void
.end method

.method private static addMarginTopEqualStatusBarHeight(Landroid/view/Window;)V
    .registers 2

    #@0
    .line 199
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    const-string v0, "TAG_OFFSET"

    #@6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@9
    move-result-object p0

    #@a
    if-nez p0, :cond_d

    #@c
    return-void

    #@d
    .line 201
    :cond_d
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->addMarginTopEqualStatusBarHeight(Landroid/view/View;)V

    #@10
    return-void
.end method

.method private static applyStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;
    .registers 3

    #@0
    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/BarUtils;->applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;
    .registers 4

    #@0
    if-eqz p2, :cond_9

    #@2
    .line 362
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@5
    move-result-object p2

    #@6
    check-cast p2, Landroid/view/ViewGroup;

    #@8
    goto :goto_12

    #@9
    :cond_9
    const p2, 0x1020002

    #@c
    .line 363
    invoke-virtual {p0, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@f
    move-result-object p2

    #@10
    check-cast p2, Landroid/view/ViewGroup;

    #@12
    :goto_12
    const-string v0, "TAG_STATUS_BAR"

    #@14
    .line 364
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_2a

    #@1a
    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1d
    move-result p0

    #@1e
    const/16 p2, 0x8

    #@20
    if-ne p0, p2, :cond_26

    #@22
    const/4 p0, 0x0

    #@23
    .line 367
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    #@26
    .line 369
    :cond_26
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    #@29
    goto :goto_35

    #@2a
    .line 371
    :cond_2a
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    #@2d
    move-result-object p0

    #@2e
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/BarUtils;->createStatusBarView(Landroid/content/Context;I)Landroid/view/View;

    #@31
    move-result-object v0

    #@32
    .line 372
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@35
    :goto_35
    return-object v0
.end method

.method private static createStatusBarView(Landroid/content/Context;I)Landroid/view/View;
    .registers 5

    #@0
    .line 397
    new-instance v0, Landroid/view/View;

    #@2
    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@5
    .line 398
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    #@7
    const/4 v1, -0x1

    #@8
    .line 399
    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    #@b
    move-result v2

    #@c
    invoke-direct {p0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@f
    .line 398
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 400
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    #@15
    const-string p0, "TAG_STATUS_BAR"

    #@17
    .line 401
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@1a
    return-object v0
.end method

.method public static getActionBarHeight()I
    .registers 4

    #@0
    .line 433
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 434
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    #@c
    move-result-object v1

    #@d
    const v2, 0x10102eb

    #@10
    const/4 v3, 0x1

    #@11
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2a

    #@17
    .line 435
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@19
    .line 436
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@24
    move-result-object v1

    #@25
    .line 435
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@28
    move-result v0

    #@29
    return v0

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    return v0
.end method

.method public static getNavBarColor(Landroid/app/Activity;)I
    .registers 1

    #@0
    .line 628
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->getNavBarColor(Landroid/view/Window;)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static getNavBarColor(Landroid/view/Window;)I
    .registers 1

    #@0
    .line 639
    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getNavBarHeight()I
    .registers 4

    #@0
    .line 486
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const-string v1, "dimen"

    #@6
    const-string v2, "android"

    #@8
    const-string v3, "navigation_bar_height"

    #@a
    .line 487
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_15

    #@10
    .line 489
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method private static getResNameById(I)Ljava/lang/String;
    .registers 2

    #@0
    .line 591
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@b
    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    #@c
    return-object p0

    #@d
    :catch_d
    const-string p0, ""

    #@f
    return-object p0
.end method

.method public static getStatusBarHeight()I
    .registers 4

    #@0
    .line 60
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const-string v1, "dimen"

    #@6
    const-string v2, "android"

    #@8
    const-string v3, "status_bar_height"

    #@a
    .line 61
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method private static hideStatusBarView(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->hideStatusBarView(Landroid/view/Window;)V

    #@7
    return-void
.end method

.method private static hideStatusBarView(Landroid/view/Window;)V
    .registers 2

    #@0
    .line 382
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroid/view/ViewGroup;

    #@6
    const-string v0, "TAG_STATUS_BAR"

    #@8
    .line 383
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@b
    move-result-object p0

    #@c
    if-nez p0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/16 v0, 0x8

    #@11
    .line 385
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    #@14
    return-void
.end method

.method private static invokePanels(Ljava/lang/String;)V
    .registers 5

    #@0
    .line 466
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "statusbar"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    const-string v1, "android.app.StatusBarManager"

    #@c
    .line 468
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x0

    #@11
    new-array v3, v2, [Ljava/lang/Class;

    #@13
    .line 469
    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    move-result-object p0

    #@17
    new-array v1, v2, [Ljava/lang/Object;

    #@19
    .line 470
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    #@1c
    goto :goto_21

    #@1d
    :catch_1d
    move-exception p0

    #@1e
    .line 472
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@21
    :goto_21
    return-void
.end method

.method public static isNavBarLightMode(Landroid/app/Activity;)Z
    .registers 1

    #@0
    .line 701
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->isNavBarLightMode(Landroid/view/Window;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isNavBarLightMode(Landroid/view/Window;)Z
    .registers 1

    #@0
    .line 712
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    .line 713
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    #@7
    move-result p0

    #@8
    and-int/lit8 p0, p0, 0x10

    #@a
    if-eqz p0, :cond_e

    #@c
    const/4 p0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p0, 0x0

    #@f
    :goto_f
    return p0
.end method

.method public static isNavBarVisible(Landroid/app/Activity;)Z
    .registers 1

    #@0
    .line 544
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->isNavBarVisible(Landroid/view/Window;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isNavBarVisible(Landroid/view/Window;)Z
    .registers 8

    #@0
    .line 556
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroid/view/ViewGroup;

    #@6
    .line 557
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    move v2, v1

    #@c
    :goto_c
    const/4 v3, 0x1

    #@d
    if-ge v2, v0, :cond_31

    #@f
    .line 558
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v4

    #@13
    .line 559
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@16
    move-result v5

    #@17
    const/4 v6, -0x1

    #@18
    if-eq v5, v6, :cond_2e

    #@1a
    .line 561
    invoke-static {v5}, Lcom/blankj/utilcode/util/BarUtils;->getResNameById(I)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    const-string v6, "navigationBarBackground"

    #@20
    .line 562
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2e

    #@26
    .line 563
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_2e

    #@2c
    move v0, v3

    #@2d
    goto :goto_32

    #@2e
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_c

    #@31
    :cond_31
    move v0, v1

    #@32
    :goto_32
    if-eqz v0, :cond_5c

    #@34
    .line 573
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSamsung()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_52

    #@3a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3c
    const/16 v2, 0x1d

    #@3e
    if-ge v0, v2, :cond_52

    #@40
    .line 577
    :try_start_40
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@47
    move-result-object v0

    #@48
    const-string v2, "navigationbar_hide_bar_enabled"

    #@4a
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    #@4d
    move-result p0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4e} :catch_52

    #@4e
    if-nez p0, :cond_51

    #@50
    move v1, v3

    #@51
    :cond_51
    return v1

    #@52
    .line 582
    :catch_52
    :cond_52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    #@55
    move-result p0

    #@56
    and-int/lit8 p0, p0, 0x2

    #@58
    if-nez p0, :cond_5b

    #@5a
    move v1, v3

    #@5b
    :cond_5b
    move v0, v1

    #@5c
    :cond_5c
    return v0
.end method

.method public static isStatusBarLightMode(Landroid/app/Activity;)Z
    .registers 1

    #@0
    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->isStatusBarLightMode(Landroid/view/Window;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isStatusBarLightMode(Landroid/view/Window;)Z
    .registers 1

    #@0
    .line 155
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    #@7
    move-result p0

    #@8
    and-int/lit16 p0, p0, 0x2000

    #@a
    if-eqz p0, :cond_e

    #@c
    const/4 p0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p0, 0x0

    #@f
    :goto_f
    return p0
.end method

.method public static isStatusBarVisible(Landroid/app/Activity;)Z
    .registers 1

    #@0
    .line 102
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
    and-int/lit16 p0, p0, 0x400

    #@c
    if-nez p0, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p0, 0x0

    #@11
    :goto_11
    return p0
.end method

.method public static isSupportNavBar()Z
    .registers 5

    #@0
    .line 649
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
    const/4 v1, 0x0

    #@d
    if-nez v0, :cond_10

    #@f
    return v1

    #@10
    .line 651
    :cond_10
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@13
    move-result-object v0

    #@14
    .line 652
    new-instance v2, Landroid/graphics/Point;

    #@16
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    #@19
    .line 653
    new-instance v3, Landroid/graphics/Point;

    #@1b
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    #@1e
    .line 654
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@21
    .line 655
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@24
    .line 656
    iget v0, v3, Landroid/graphics/Point;->y:I

    #@26
    iget v4, v2, Landroid/graphics/Point;->y:I

    #@28
    if-ne v0, v4, :cond_30

    #@2a
    iget v0, v3, Landroid/graphics/Point;->x:I

    #@2c
    iget v2, v2, Landroid/graphics/Point;->x:I

    #@2e
    if-eq v0, v2, :cond_31

    #@30
    :cond_30
    const/4 v1, 0x1

    #@31
    :cond_31
    return v1
.end method

.method public static setNavBarColor(Landroid/app/Activity;I)V
    .registers 2

    #@0
    .line 605
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/BarUtils;->setNavBarColor(Landroid/view/Window;I)V

    #@7
    return-void
.end method

.method public static setNavBarColor(Landroid/view/Window;I)V
    .registers 3

    #@0
    const/high16 v0, -0x80000000

    #@2
    .line 616
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    #@5
    .line 617
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    #@8
    return-void
.end method

.method public static setNavBarLightMode(Landroid/app/Activity;Z)V
    .registers 2

    #@0
    .line 671
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/BarUtils;->setNavBarLightMode(Landroid/view/Window;Z)V

    #@7
    return-void
.end method

.method public static setNavBarLightMode(Landroid/view/Window;Z)V
    .registers 3

    #@0
    .line 683
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    .line 684
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    #@7
    move-result v0

    #@8
    if-eqz p1, :cond_d

    #@a
    or-int/lit8 p1, v0, 0x10

    #@c
    goto :goto_f

    #@d
    :cond_d
    and-int/lit8 p1, v0, -0x11

    #@f
    .line 690
    :goto_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@12
    return-void
.end method

.method public static setNavBarVisibility(Landroid/app/Activity;Z)V
    .registers 2

    #@0
    .line 503
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/BarUtils;->setNavBarVisibility(Landroid/view/Window;Z)V

    #@7
    return-void
.end method

.method public static setNavBarVisibility(Landroid/view/Window;Z)V
    .registers 8

    #@0
    .line 515
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroid/view/ViewGroup;

    #@6
    .line 516
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    move v2, v1

    #@c
    :goto_c
    if-ge v2, v0, :cond_30

    #@e
    .line 517
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    .line 518
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@15
    move-result v4

    #@16
    const/4 v5, -0x1

    #@17
    if-eq v4, v5, :cond_2d

    #@19
    .line 520
    invoke-static {v4}, Lcom/blankj/utilcode/util/BarUtils;->getResNameById(I)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    const-string v5, "navigationBarBackground"

    #@1f
    .line 521
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2d

    #@25
    if-eqz p1, :cond_29

    #@27
    move v4, v1

    #@28
    goto :goto_2a

    #@29
    :cond_29
    const/4 v4, 0x4

    #@2a
    .line 522
    :goto_2a
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    #@2d
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_c

    #@30
    :cond_30
    if-eqz p1, :cond_3c

    #@32
    .line 530
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    #@35
    move-result p1

    #@36
    and-int/lit16 p1, p1, -0x1203

    #@38
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    #@3b
    goto :goto_45

    #@3c
    .line 532
    :cond_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    #@3f
    move-result p1

    #@40
    or-int/lit16 p1, p1, 0x1202

    #@42
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    #@45
    :goto_45
    return-void
.end method

.method public static setNotificationBarVisibility(Z)V
    .registers 1

    #@0
    if-eqz p0, :cond_5

    #@2
    const-string p0, "expandNotificationsPanel"

    #@4
    goto :goto_7

    #@5
    :cond_5
    const-string p0, "collapsePanels"

    #@7
    .line 460
    :goto_7
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->invokePanels(Ljava/lang/String;)V

    #@a
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)Landroid/view/View;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 219
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;
    .registers 3

    #@0
    .line 234
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    #@3
    .line 235
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/BarUtils;->applyStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)Landroid/view/View;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 247
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static setStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;
    .registers 3

    #@0
    .line 262
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/view/Window;)V

    #@3
    .line 263
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/BarUtils;->applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static setStatusBarColor(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 277
    :cond_b
    invoke-static {v0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    #@e
    const/4 v0, 0x0

    #@f
    .line 278
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    #@12
    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v0

    #@16
    const/4 v1, -0x1

    #@17
    .line 280
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@19
    .line 281
    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    #@1c
    move-result v1

    #@1d
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@1f
    .line 282
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    #@22
    return-void
.end method

.method public static setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 320
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;IZ)V

    #@4
    return-void
.end method

.method public static setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;IZ)V
    .registers 8

    #@0
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 339
    :cond_b
    invoke-static {v0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    #@e
    const/4 v1, 0x0

    #@f
    .line 340
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    #@12
    .line 341
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarColor(Landroid/view/View;I)V

    #@15
    .line 342
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@18
    move-result p1

    #@19
    move v2, v1

    #@1a
    :goto_1a
    if-ge v2, p1, :cond_26

    #@1c
    .line 343
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_1a

    #@26
    :cond_26
    if-eqz p3, :cond_2c

    #@28
    .line 346
    invoke-static {v0}, Lcom/blankj/utilcode/util/BarUtils;->hideStatusBarView(Landroid/app/Activity;)V

    #@2b
    goto :goto_2f

    #@2c
    .line 348
    :cond_2c
    invoke-static {v0, p2, v1}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    #@2f
    :goto_2f
    return-void
.end method

.method public static setStatusBarCustom(Landroid/view/View;)V
    .registers 4

    #@0
    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 294
    :cond_b
    invoke-static {v0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    #@e
    const/4 v0, 0x0

    #@f
    .line 295
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    #@12
    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v0

    #@16
    const/4 v1, -0x1

    #@17
    if-nez v0, :cond_26

    #@19
    .line 298
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@1b
    .line 300
    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    #@1e
    move-result v2

    #@1f
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@22
    .line 302
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@25
    goto :goto_2e

    #@26
    .line 304
    :cond_26
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@28
    .line 305
    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    #@2b
    move-result p0

    #@2c
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2e
    :goto_2e
    return-void
.end method

.method public static setStatusBarLightMode(Landroid/app/Activity;Z)V
    .registers 2

    #@0
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarLightMode(Landroid/view/Window;Z)V

    #@7
    return-void
.end method

.method public static setStatusBarLightMode(Landroid/view/Window;Z)V
    .registers 3

    #@0
    .line 126
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    #@7
    move-result v0

    #@8
    if-eqz p1, :cond_d

    #@a
    or-int/lit16 p1, v0, 0x2000

    #@c
    goto :goto_f

    #@d
    :cond_d
    and-int/lit16 p1, v0, -0x2001

    #@f
    .line 133
    :goto_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@12
    return-void
.end method

.method public static setStatusBarVisibility(Landroid/app/Activity;Z)V
    .registers 2

    #@0
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarVisibility(Landroid/view/Window;Z)V

    #@7
    return-void
.end method

.method public static setStatusBarVisibility(Landroid/view/Window;Z)V
    .registers 3

    #@0
    const/16 v0, 0x400

    #@2
    if-eqz p1, :cond_e

    #@4
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    #@7
    .line 86
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->showStatusBarView(Landroid/view/Window;)V

    #@a
    .line 87
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->addMarginTopEqualStatusBarHeight(Landroid/view/Window;)V

    #@d
    goto :goto_17

    #@e
    .line 89
    :cond_e
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    #@11
    .line 90
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->hideStatusBarView(Landroid/view/Window;)V

    #@14
    .line 91
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->subtractMarginTopEqualStatusBarHeight(Landroid/view/Window;)V

    #@17
    :goto_17
    return-void
.end method

.method private static showStatusBarView(Landroid/view/Window;)V
    .registers 2

    #@0
    .line 389
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroid/view/ViewGroup;

    #@6
    const-string v0, "TAG_STATUS_BAR"

    #@8
    .line 390
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@b
    move-result-object p0

    #@c
    if-nez p0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    .line 392
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    #@13
    return-void
.end method

.method public static subtractMarginTopEqualStatusBarHeight(Landroid/view/View;)V
    .registers 7

    #@0
    const/16 v0, -0x7b

    #@2
    .line 187
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_2f

    #@8
    .line 188
    check-cast v1, Ljava/lang/Boolean;

    #@a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_11

    #@10
    goto :goto_2f

    #@11
    .line 189
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@17
    .line 190
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@19
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@1b
    .line 191
    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    #@1e
    move-result v4

    #@1f
    sub-int/2addr v3, v4

    #@20
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@22
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@24
    .line 190
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    #@27
    const/4 v1, 0x0

    #@28
    .line 194
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@2f
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static subtractMarginTopEqualStatusBarHeight(Landroid/view/Window;)V
    .registers 2

    #@0
    .line 206
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    const-string v0, "TAG_OFFSET"

    #@6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@9
    move-result-object p0

    #@a
    if-nez p0, :cond_d

    #@c
    return-void

    #@d
    .line 208
    :cond_d
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->subtractMarginTopEqualStatusBarHeight(Landroid/view/View;)V

    #@10
    return-void
.end method

.method public static transparentNavBar(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 720
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->transparentNavBar(Landroid/view/Window;)V

    #@7
    return-void
.end method

.method public static transparentNavBar(Landroid/view/Window;)V
    .registers 4

    #@0
    .line 725
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    const/4 v2, 0x0

    #@5
    if-lt v0, v1, :cond_a

    #@7
    .line 726
    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    #@a
    .line 729
    :cond_a
    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    #@d
    .line 735
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@10
    move-result-object p0

    #@11
    .line 736
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    #@14
    move-result v0

    #@15
    or-int/lit16 v0, v0, 0x700

    #@17
    .line 738
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@1a
    return-void
.end method

.method public static transparentStatusBar(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 406
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/view/Window;)V

    #@7
    return-void
.end method

.method public static transparentStatusBar(Landroid/view/Window;)V
    .registers 3

    #@0
    const/high16 v0, 0x4000000

    #@2
    .line 412
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    #@5
    const/high16 v0, -0x80000000

    #@7
    .line 413
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    #@a
    .line 415
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    #@11
    move-result v0

    #@12
    .line 416
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    or-int/lit16 v0, v0, 0x500

    #@18
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 417
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    #@1f
    return-void
.end method
