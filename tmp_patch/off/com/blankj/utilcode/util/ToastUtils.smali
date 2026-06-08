.class public final Lcom/blankj/utilcode/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ToastUtils$UtilsMaxWidthRelativeLayout;,
        Lcom/blankj/utilcode/util/ToastUtils$IToast;,
        Lcom/blankj/utilcode/util/ToastUtils$AbsToast;,
        Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;,
        Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;,
        Lcom/blankj/utilcode/util/ToastUtils$SystemToast;,
        Lcom/blankj/utilcode/util/ToastUtils$MODE;
    }
.end annotation


# static fields
.field private static final COLOR_DEFAULT:I = -0x1000001

.field private static final DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

.field private static final NOTHING:Ljava/lang/String; = "toast nothing"

.field private static final NULL:Ljava/lang/String; = "toast null"

.field private static final TAG_TOAST:Ljava/lang/String; = "TAG_TOAST"

.field private static sWeakToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/blankj/utilcode/util/ToastUtils$IToast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isLong:Z

.field private isNotUseSystemToast:Z

.field private mBgColor:I

.field private mBgResource:I

.field private mGravity:I

.field private mIcons:[Landroid/graphics/drawable/Drawable;

.field private mMode:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:I

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 66
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->make()Lcom/blankj/utilcode/util/ToastUtils;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@6
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 71
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mGravity:I

    #@6
    .line 72
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mXOffset:I

    #@8
    .line 73
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mYOffset:I

    #@a
    const v1, -0x1000001

    #@d
    .line 74
    iput v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I

    #@f
    .line 75
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mBgResource:I

    #@11
    .line 76
    iput v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mTextColor:I

    #@13
    .line 77
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mTextSize:I

    #@15
    const/4 v0, 0x0

    #@16
    .line 78
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->isLong:Z

    #@18
    const/4 v1, 0x4

    #@19
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    #@1b
    .line 79
    iput-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@1d
    .line 80
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->isNotUseSystemToast:Z

    #@1f
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    #@0
    .line 53
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->sWeakToast:Ljava/lang/ref/WeakReference;

    #@2
    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    #@0
    .line 53
    sput-object p0, Lcom/blankj/utilcode/util/ToastUtils;->sWeakToast:Ljava/lang/ref/WeakReference;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$IToast;
    .registers 1

    #@0
    .line 53
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->newToast(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$1000(Lcom/blankj/utilcode/util/ToastUtils;)I
    .registers 1

    #@0
    .line 53
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mBgResource:I

    #@2
    return p0
.end method

.method static synthetic access$1100(Lcom/blankj/utilcode/util/ToastUtils;)I
    .registers 1

    #@0
    .line 53
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I

    #@2
    return p0
.end method

.method static synthetic access$400(Lcom/blankj/utilcode/util/ToastUtils;)I
    .registers 1

    #@0
    .line 53
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mGravity:I

    #@2
    return p0
.end method

.method static synthetic access$500(Lcom/blankj/utilcode/util/ToastUtils;)I
    .registers 1

    #@0
    .line 53
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mXOffset:I

    #@2
    return p0
.end method

.method static synthetic access$600(Lcom/blankj/utilcode/util/ToastUtils;)I
    .registers 1

    #@0
    .line 53
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mYOffset:I

    #@2
    return p0
.end method

.method static synthetic access$700(Lcom/blankj/utilcode/util/ToastUtils;Ljava/lang/CharSequence;)Landroid/view/View;
    .registers 2

    #@0
    .line 53
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->tryApplyUtilsToastView(Ljava/lang/CharSequence;)Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$800(Lcom/blankj/utilcode/util/ToastUtils;)I
    .registers 1

    #@0
    .line 53
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mTextColor:I

    #@2
    return p0
.end method

.method static synthetic access$900(Lcom/blankj/utilcode/util/ToastUtils;)I
    .registers 1

    #@0
    .line 53
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mTextSize:I

    #@2
    return p0
.end method

.method public static cancel()V
    .registers 1

    #@0
    .line 457
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$1;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/ToastUtils$1;-><init>()V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public static getDefaultMaker()Lcom/blankj/utilcode/util/ToastUtils;
    .registers 1

    #@0
    .line 287
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@2
    return-object v0
.end method

.method private getDuration()I
    .registers 2

    #@0
    .line 336
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->isLong:Z

    #@2
    return v0
.end method

.method private static getToastFriendlyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, "toast null"

    #@4
    goto :goto_d

    #@5
    .line 503
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_d

    #@b
    const-string p0, "toast nothing"

    #@d
    :cond_d
    :goto_d
    return-object p0
.end method

.method public static make()Lcom/blankj/utilcode/util/ToastUtils;
    .registers 1

    #@0
    .line 89
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/ToastUtils;-><init>()V

    #@5
    return-object v0
.end method

.method private static newToast(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$IToast;
    .registers 3

    #@0
    .line 510
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->isNotUseSystemToast:Z

    #@2
    if-nez v0, :cond_1e

    #@4
    .line 511
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1e

    #@12
    .line 515
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isGrantedDrawOverlays()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1e

    #@18
    .line 516
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;

    #@1a
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    #@1d
    return-object v0

    #@1e
    .line 524
    :cond_1e
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isGrantedDrawOverlays()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2c

    #@24
    .line 526
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;

    #@26
    const/16 v1, 0x7f6

    #@28
    invoke-direct {v0, p0, v1}, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;I)V

    #@2b
    return-object v0

    #@2c
    .line 531
    :cond_2c
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    #@2e
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    #@31
    return-object v0
.end method

.method private static show(Landroid/view/View;ILcom/blankj/utilcode/util/ToastUtils;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 476
    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@4
    return-void
.end method

.method private static show(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V
    .registers 5

    #@0
    .line 483
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$2;

    #@2
    invoke-direct {v0, p3, p0, p1, p2}, Lcom/blankj/utilcode/util/ToastUtils$2;-><init>(Lcom/blankj/utilcode/util/ToastUtils;Landroid/view/View;Ljava/lang/CharSequence;I)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method private static show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 472
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getToastFriendlyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@4
    move-result-object p0

    #@5
    invoke-static {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@8
    return-void
.end method

.method public static showLong(I)V
    .registers 3

    #@0
    .line 430
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getString(I)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x1

    #@5
    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@7
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@a
    return-void
.end method

.method public static varargs showLong(I[Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 440
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const/4 p1, 0x1

    #@5
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@7
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@a
    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 421
    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@3
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@6
    return-void
.end method

.method public static varargs showLong(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 450
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const/4 p1, 0x1

    #@5
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@7
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@a
    return-void
.end method

.method public static showShort(I)V
    .registers 3

    #@0
    .line 392
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getString(I)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@7
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@a
    return-void
.end method

.method public static varargs showShort(I[Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 402
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const/4 p1, 0x0

    #@5
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@7
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@a
    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 383
    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@3
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@6
    return-void
.end method

.method public static varargs showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 412
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const/4 p1, 0x0

    #@5
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    #@7
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@a
    return-void
.end method

.method private tryApplyUtilsToastView(Ljava/lang/CharSequence;)Landroid/view/View;
    .registers 10

    #@0
    .line 340
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mMode:Ljava/lang/String;

    #@2
    const-string v1, "dark"

    #@4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    const/4 v2, 0x3

    #@9
    const/4 v3, 0x2

    #@a
    const/4 v4, 0x1

    #@b
    const/4 v5, 0x0

    #@c
    if-nez v0, :cond_2c

    #@e
    const-string v0, "light"

    #@10
    iget-object v6, p0, Lcom/blankj/utilcode/util/ToastUtils;->mMode:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_2c

    #@18
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@1a
    aget-object v6, v0, v5

    #@1c
    if-nez v6, :cond_2c

    #@1e
    aget-object v6, v0, v4

    #@20
    if-nez v6, :cond_2c

    #@22
    aget-object v6, v0, v3

    #@24
    if-nez v6, :cond_2c

    #@26
    aget-object v0, v0, v2

    #@28
    if-nez v0, :cond_2c

    #@2a
    const/4 p1, 0x0

    #@2b
    return-object p1

    #@2c
    .line 345
    :cond_2c
    sget v0, Lcom/blankj/utilcode/R$layout;->utils_toast_view:I

    #@2e
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->layoutId2View(I)Landroid/view/View;

    #@31
    move-result-object v0

    #@32
    const v6, 0x102000b

    #@35
    .line 346
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@38
    move-result-object v6

    #@39
    check-cast v6, Landroid/widget/TextView;

    #@3b
    .line 347
    iget-object v7, p0, Lcom/blankj/utilcode/util/ToastUtils;->mMode:Ljava/lang/String;

    #@3d
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_5a

    #@43
    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    #@4d
    const-string v7, "#BB000000"

    #@4f
    .line 349
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    #@52
    move-result v7

    #@53
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    #@56
    const/4 v1, -0x1

    #@57
    .line 350
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    #@5a
    .line 352
    :cond_5a
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5d
    .line 353
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@5f
    aget-object p1, p1, v5

    #@61
    if-eqz p1, :cond_73

    #@63
    .line 354
    sget p1, Lcom/blankj/utilcode/R$id;->utvLeftIconView:I

    #@65
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@68
    move-result-object p1

    #@69
    .line 355
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@6b
    aget-object v1, v1, v5

    #@6d
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@70
    .line 356
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    #@73
    .line 358
    :cond_73
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@75
    aget-object p1, p1, v4

    #@77
    if-eqz p1, :cond_89

    #@79
    .line 359
    sget p1, Lcom/blankj/utilcode/R$id;->utvTopIconView:I

    #@7b
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@7e
    move-result-object p1

    #@7f
    .line 360
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@81
    aget-object v1, v1, v4

    #@83
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@86
    .line 361
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    #@89
    .line 363
    :cond_89
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@8b
    aget-object p1, p1, v3

    #@8d
    if-eqz p1, :cond_9f

    #@8f
    .line 364
    sget p1, Lcom/blankj/utilcode/R$id;->utvRightIconView:I

    #@91
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@94
    move-result-object p1

    #@95
    .line 365
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@97
    aget-object v1, v1, v3

    #@99
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@9c
    .line 366
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    #@9f
    .line 368
    :cond_9f
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@a1
    aget-object p1, p1, v2

    #@a3
    if-eqz p1, :cond_b5

    #@a5
    .line 369
    sget p1, Lcom/blankj/utilcode/R$id;->utvBottomIconView:I

    #@a7
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@aa
    move-result-object p1

    #@ab
    .line 370
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@ad
    aget-object v1, v1, v2

    #@af
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@b2
    .line 371
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    #@b5
    :cond_b5
    return-object v0
.end method


# virtual methods
.method public final setBgColor(I)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 2

    #@0
    .line 126
    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I

    #@2
    return-object p0
.end method

.method public final setBgResource(I)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 2

    #@0
    .line 138
    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mBgResource:I

    #@2
    return-object p0
.end method

.method public final setBottomIcon(I)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 3

    #@0
    .line 254
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->setBottomIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final setBottomIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 4

    #@0
    .line 265
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v1, 0x3

    #@3
    aput-object p1, v0, v1

    #@5
    return-object p0
.end method

.method public final setDurationIsLong(Z)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 2

    #@0
    .line 173
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->isLong:Z

    #@2
    return-object p0
.end method

.method public final setGravity(III)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 4

    #@0
    .line 112
    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mGravity:I

    #@2
    .line 113
    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils;->mXOffset:I

    #@4
    .line 114
    iput p3, p0, Lcom/blankj/utilcode/util/ToastUtils;->mYOffset:I

    #@6
    return-object p0
.end method

.method public final setLeftIcon(I)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 3

    #@0
    .line 185
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->setLeftIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final setLeftIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 4

    #@0
    .line 196
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v1, 0x0

    #@3
    aput-object p1, v0, v1

    #@5
    return-object p0
.end method

.method public final setMode(Ljava/lang/String;)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 2

    #@0
    .line 98
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mMode:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public final setNotUseSystemToast()Lcom/blankj/utilcode/util/ToastUtils;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 276
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->isNotUseSystemToast:Z

    #@3
    return-object p0
.end method

.method public final setRightIcon(I)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 3

    #@0
    .line 231
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->setRightIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final setRightIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 4

    #@0
    .line 242
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v1, 0x2

    #@3
    aput-object p1, v0, v1

    #@5
    return-object p0
.end method

.method public final setTextColor(I)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 2

    #@0
    .line 150
    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mTextColor:I

    #@2
    return-object p0
.end method

.method public final setTextSize(I)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 2

    #@0
    .line 162
    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mTextSize:I

    #@2
    return-object p0
.end method

.method public final setTopIcon(I)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 3

    #@0
    .line 208
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->setTopIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final setTopIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;
    .registers 4

    #@0
    .line 219
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v1, 0x1

    #@3
    aput-object p1, v0, v1

    #@5
    return-object p0
.end method

.method public final show(I)V
    .registers 3

    #@0
    .line 305
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getString(I)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getDuration()I

    #@7
    move-result v0

    #@8
    invoke-static {p1, v0, p0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@b
    return-void
.end method

.method public final varargs show(I[Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 315
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getDuration()I

    #@7
    move-result p2

    #@8
    invoke-static {p1, p2, p0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@b
    return-void
.end method

.method public final show(Landroid/view/View;)V
    .registers 3

    #@0
    .line 332
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getDuration()I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0, p0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@7
    return-void
.end method

.method public final show(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 296
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getDuration()I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0, p0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@7
    return-void
.end method

.method public final varargs show(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 325
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getDuration()I

    #@7
    move-result p2

    #@8
    invoke-static {p1, p2, p0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    #@b
    return-void
.end method
