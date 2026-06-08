.class public Landroidx/transition/CircularPropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 33
    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    #@3
    const/high16 v0, 0x40400000    # 3.0f

    #@5
    .line 35
    iput v0, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    #@7
    return-void
.end method

.method private static distance(FFFF)F
    .registers 4

    #@0
    sub-float/2addr p2, p0

    #@1
    sub-float/2addr p3, p1

    #@2
    mul-float/2addr p2, p2

    #@3
    mul-float/2addr p3, p3

    #@4
    add-float/2addr p2, p3

    #@5
    float-to-double p0, p2

    #@6
    .line 103
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    #@9
    move-result-wide p0

    #@a
    double-to-float p0, p0

    #@b
    return p0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .registers 13

    #@0
    const-wide/16 v0, 0x0

    #@2
    if-nez p3, :cond_7

    #@4
    if-nez p4, :cond_7

    #@6
    return-wide v0

    #@7
    :cond_7
    const/4 v2, 0x1

    #@8
    if-eqz p4, :cond_14

    #@a
    .line 64
    invoke-virtual {p0, p3}, Landroidx/transition/CircularPropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_11

    #@10
    goto :goto_14

    #@11
    :cond_11
    move-object p3, p4

    #@12
    move p4, v2

    #@13
    goto :goto_15

    #@14
    :cond_14
    :goto_14
    const/4 p4, -0x1

    #@15
    .line 71
    :goto_15
    invoke-virtual {p0, p3}, Landroidx/transition/CircularPropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    #@18
    move-result v3

    #@19
    .line 72
    invoke-virtual {p0, p3}, Landroidx/transition/CircularPropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    #@1c
    move-result p3

    #@1d
    .line 74
    invoke-virtual {p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    #@20
    move-result-object v4

    #@21
    if-eqz v4, :cond_2c

    #@23
    .line 78
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    #@26
    move-result v2

    #@27
    .line 79
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    #@2a
    move-result v4

    #@2b
    goto :goto_58

    #@2c
    :cond_2c
    const/4 v4, 0x2

    #@2d
    new-array v5, v4, [I

    #@2f
    .line 82
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@32
    const/4 v6, 0x0

    #@33
    aget v6, v5, v6

    #@35
    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@38
    move-result v7

    #@39
    div-int/2addr v7, v4

    #@3a
    add-int/2addr v6, v7

    #@3b
    int-to-float v6, v6

    #@3c
    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    #@3f
    move-result v7

    #@40
    add-float/2addr v6, v7

    #@41
    .line 83
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    #@44
    move-result v6

    #@45
    aget v2, v5, v2

    #@47
    .line 85
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@4a
    move-result v5

    #@4b
    div-int/2addr v5, v4

    #@4c
    add-int/2addr v2, v5

    #@4d
    int-to-float v2, v2

    #@4e
    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    #@51
    move-result v4

    #@52
    add-float/2addr v2, v4

    #@53
    .line 85
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@56
    move-result v4

    #@57
    move v2, v6

    #@58
    :goto_58
    int-to-float v3, v3

    #@59
    int-to-float p3, p3

    #@5a
    int-to-float v2, v2

    #@5b
    int-to-float v4, v4

    #@5c
    .line 88
    invoke-static {v3, p3, v2, v4}, Landroidx/transition/CircularPropagation;->distance(FFFF)F

    #@5f
    move-result p3

    #@60
    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@63
    move-result v2

    #@64
    int-to-float v2, v2

    #@65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@68
    move-result p1

    #@69
    int-to-float p1, p1

    #@6a
    const/4 v3, 0x0

    #@6b
    invoke-static {v3, v3, v2, p1}, Landroidx/transition/CircularPropagation;->distance(FFFF)F

    #@6e
    move-result p1

    #@6f
    div-float/2addr p3, p1

    #@70
    .line 92
    invoke-virtual {p2}, Landroidx/transition/Transition;->getDuration()J

    #@73
    move-result-wide p1

    #@74
    cmp-long v0, p1, v0

    #@76
    if-gez v0, :cond_7a

    #@78
    const-wide/16 p1, 0x12c

    #@7a
    :cond_7a
    int-to-long v0, p4

    #@7b
    mul-long/2addr p1, v0

    #@7c
    long-to-float p1, p1

    #@7d
    .line 97
    iget p2, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    #@7f
    div-float/2addr p1, p2

    #@80
    mul-float/2addr p1, p3

    #@81
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@84
    move-result p1

    #@85
    int-to-long p1, p1

    #@86
    return-wide p1
.end method

.method public setPropagationSpeed(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-eqz v0, :cond_8

    #@5
    .line 53
    iput p1, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    #@7
    return-void

    #@8
    .line 51
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v0, "propagationSpeed may not be 0"

    #@c
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1
.end method
