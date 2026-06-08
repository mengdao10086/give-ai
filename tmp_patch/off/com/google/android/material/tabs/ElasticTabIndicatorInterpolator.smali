.class Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;
.super Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.source "ElasticTabIndicatorInterpolator.java"


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;-><init>()V

    #@3
    return-void
.end method

.method private static accInterp(F)F
    .registers 5

    #@0
    float-to-double v0, p0

    #@1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    #@6
    mul-double/2addr v0, v2

    #@7
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    #@9
    div-double/2addr v0, v2

    #@a
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@d
    move-result-wide v0

    #@e
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@10
    sub-double/2addr v2, v0

    #@11
    double-to-float p0, v2

    #@12
    return p0
.end method

.method private static decInterp(F)F
    .registers 5

    #@0
    float-to-double v0, p0

    #@1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    #@6
    mul-double/2addr v0, v2

    #@7
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    #@9
    div-double/2addr v0, v2

    #@a
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@d
    move-result-wide v0

    #@e
    double-to-float p0, v0

    #@f
    return p0
.end method


# virtual methods
.method updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .registers 8

    #@0
    .line 55
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    #@3
    move-result-object p2

    #@4
    .line 56
    invoke-static {p1, p3}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    #@7
    move-result-object p1

    #@8
    .line 61
    iget p3, p2, Landroid/graphics/RectF;->left:F

    #@a
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@c
    cmpg-float p3, p3, v0

    #@e
    if-gez p3, :cond_12

    #@10
    const/4 p3, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p3, 0x0

    #@13
    :goto_13
    if-eqz p3, :cond_1e

    #@15
    .line 67
    invoke-static {p4}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->accInterp(F)F

    #@18
    move-result p3

    #@19
    .line 68
    invoke-static {p4}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->decInterp(F)F

    #@1c
    move-result p4

    #@1d
    goto :goto_26

    #@1e
    .line 70
    :cond_1e
    invoke-static {p4}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->decInterp(F)F

    #@21
    move-result p3

    #@22
    .line 71
    invoke-static {p4}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->accInterp(F)F

    #@25
    move-result p4

    #@26
    .line 73
    :goto_26
    iget v0, p2, Landroid/graphics/RectF;->left:F

    #@28
    float-to-int v0, v0

    #@29
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2b
    float-to-int v1, v1

    #@2c
    .line 74
    invoke-static {v0, v1, p3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    #@2f
    move-result p3

    #@30
    .line 75
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@33
    move-result-object v0

    #@34
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@36
    iget p2, p2, Landroid/graphics/RectF;->right:F

    #@38
    float-to-int p2, p2

    #@39
    iget p1, p1, Landroid/graphics/RectF;->right:F

    #@3b
    float-to-int p1, p1

    #@3c
    .line 76
    invoke-static {p2, p1, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    #@3f
    move-result p1

    #@40
    .line 77
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@43
    move-result-object p2

    #@44
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    #@46
    .line 73
    invoke-virtual {p5, p3, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@49
    return-void
.end method
