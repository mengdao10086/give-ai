.class public final Lcom/blankj/utilcode/util/AdaptScreenUtils;
.super Ljava/lang/Object;
.source "AdaptScreenUtils.java"


# static fields
.field private static sMetricsFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method static synthetic access$000()V
    .registers 0

    #@0
    .line 20
    invoke-static {}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->preLoad()V

    #@3
    return-void
.end method

.method public static adaptHeight(Landroid/content/res/Resources;I)Landroid/content/res/Resources;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 43
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->adaptHeight(Landroid/content/res/Resources;IZ)Landroid/content/res/Resources;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static adaptHeight(Landroid/content/res/Resources;IZ)Landroid/content/res/Resources;
    .registers 4

    #@0
    .line 51
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@6
    if-eqz p2, :cond_d

    #@8
    .line 52
    invoke-static {p0}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->getNavBarHeight(Landroid/content/res/Resources;)I

    #@b
    move-result p2

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 p2, 0x0

    #@e
    :goto_e
    add-int/2addr v0, p2

    #@f
    int-to-float p2, v0

    #@10
    const/high16 v0, 0x42900000    # 72.0f

    #@12
    mul-float/2addr p2, v0

    #@13
    int-to-float p1, p1

    #@14
    div-float/2addr p2, p1

    #@15
    .line 54
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyDisplayMetrics(Landroid/content/res/Resources;F)V

    #@18
    return-object p0
.end method

.method public static adaptWidth(Landroid/content/res/Resources;I)Landroid/content/res/Resources;
    .registers 4

    #@0
    .line 33
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@6
    int-to-float v0, v0

    #@7
    const/high16 v1, 0x42900000    # 72.0f

    #@9
    mul-float/2addr v0, v1

    #@a
    int-to-float p1, p1

    #@b
    div-float/2addr v0, p1

    #@c
    .line 34
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyDisplayMetrics(Landroid/content/res/Resources;F)V

    #@f
    return-object p0
.end method

.method private static applyDisplayMetrics(Landroid/content/res/Resources;F)V
    .registers 3

    #@0
    .line 101
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3
    move-result-object v0

    #@4
    iput p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    #@6
    .line 102
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11
    move-result-object v0

    #@12
    iput p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    #@14
    .line 103
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyOtherDisplayMetrics(Landroid/content/res/Resources;F)V

    #@17
    return-void
.end method

.method private static applyMetricsFields(Landroid/content/res/Resources;F)V
    .registers 4

    #@0
    .line 148
    sget-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->sMetricsFields:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_22

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/reflect/Field;

    #@12
    .line 150
    :try_start_12
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/util/DisplayMetrics;

    #@18
    if-eqz v1, :cond_6

    #@1a
    .line 151
    iput p1, v1, Landroid/util/DisplayMetrics;->xdpi:F
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d

    #@1c
    goto :goto_6

    #@1d
    :catch_1d
    move-exception v1

    #@1e
    .line 153
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@21
    goto :goto_6

    #@22
    :cond_22
    return-void
.end method

.method private static applyOtherDisplayMetrics(Landroid/content/res/Resources;F)V
    .registers 9

    #@0
    .line 120
    sget-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->sMetricsFields:Ljava/util/List;

    #@2
    if-nez v0, :cond_49

    #@4
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    sput-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->sMetricsFields:Ljava/util/List;

    #@b
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@12
    move-result-object v1

    #@13
    :goto_13
    if-eqz v1, :cond_4c

    #@15
    .line 124
    array-length v2, v1

    #@16
    if-lez v2, :cond_4c

    #@18
    .line 125
    array-length v2, v1

    #@19
    const/4 v3, 0x0

    #@1a
    :goto_1a
    if-ge v3, v2, :cond_3e

    #@1c
    aget-object v4, v1, v3

    #@1e
    .line 126
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@21
    move-result-object v5

    #@22
    const-class v6, Landroid/util/DisplayMetrics;

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_3b

    #@2a
    const/4 v5, 0x1

    #@2b
    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@2e
    .line 128
    invoke-static {p0, v4}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->getMetricsFromField(Landroid/content/res/Resources;Ljava/lang/reflect/Field;)Landroid/util/DisplayMetrics;

    #@31
    move-result-object v5

    #@32
    if-eqz v5, :cond_3b

    #@34
    .line 130
    sget-object v6, Lcom/blankj/utilcode/util/AdaptScreenUtils;->sMetricsFields:Ljava/util/List;

    #@36
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 131
    iput p1, v5, Landroid/util/DisplayMetrics;->xdpi:F

    #@3b
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_1a

    #@3e
    .line 135
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@41
    move-result-object v0

    #@42
    if-eqz v0, :cond_4c

    #@44
    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@47
    move-result-object v1

    #@48
    goto :goto_13

    #@49
    .line 143
    :cond_49
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyMetricsFields(Landroid/content/res/Resources;F)V

    #@4c
    :cond_4c
    return-void
.end method

.method public static closeAdapt(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .registers 3

    #@0
    .line 73
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
    const/high16 v1, 0x42900000    # 72.0f

    #@c
    mul-float/2addr v0, v1

    #@d
    .line 74
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyDisplayMetrics(Landroid/content/res/Resources;F)V

    #@10
    return-object p0
.end method

.method private static getMetricsFromField(Landroid/content/res/Resources;Ljava/lang/reflect/Field;)Landroid/util/DisplayMetrics;
    .registers 2

    #@0
    .line 160
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroid/util/DisplayMetrics;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return-object p0

    #@7
    :catch_7
    const/4 p0, 0x0

    #@8
    return-object p0
.end method

.method private static getNavBarHeight(Landroid/content/res/Resources;)I
    .registers 4

    #@0
    const-string v0, "dimen"

    #@2
    const-string v1, "android"

    #@4
    const-string v2, "navigation_bar_height"

    #@6
    .line 59
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 61
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@f
    move-result p0

    #@10
    return p0

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    return p0
.end method

.method static getPreLoadRunnable()Ljava/lang/Runnable;
    .registers 1

    #@0
    .line 107
    new-instance v0, Lcom/blankj/utilcode/util/AdaptScreenUtils$1;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/AdaptScreenUtils$1;-><init>()V

    #@5
    return-object v0
.end method

.method private static preLoad()V
    .registers 2

    #@0
    .line 116
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v1

    #@c
    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    #@e
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyDisplayMetrics(Landroid/content/res/Resources;F)V

    #@11
    return-void
.end method

.method public static pt2Px(F)I
    .registers 5

    #@0
    .line 85
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v0

    #@c
    .line 86
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    #@e
    mul-float/2addr p0, v0

    #@f
    const/high16 v0, 0x42900000    # 72.0f

    #@11
    div-float/2addr p0, v0

    #@12
    float-to-double v0, p0

    #@13
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@15
    add-double/2addr v0, v2

    #@16
    double-to-int p0, v0

    #@17
    return p0
.end method

.method public static px2Pt(F)I
    .registers 5

    #@0
    .line 96
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v0

    #@c
    const/high16 v1, 0x42900000    # 72.0f

    #@e
    mul-float/2addr p0, v1

    #@f
    .line 97
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    #@11
    div-float/2addr p0, v0

    #@12
    float-to-double v0, p0

    #@13
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@15
    add-double/2addr v0, v2

    #@16
    double-to-int p0, v0

    #@17
    return p0
.end method
