.class Landroidx/core/view/animation/PathInterpolatorApi14;
.super Ljava/lang/Object;
.source "PathInterpolatorApi14.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method constructor <init>(FF)V
    .registers 3

    #@0
    .line 56
    invoke-static {p1, p2}, Landroidx/core/view/animation/PathInterpolatorApi14;->createQuad(FF)Landroid/graphics/Path;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0, p1}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    #@7
    return-void
.end method

.method constructor <init>(FFFF)V
    .registers 5

    #@0
    .line 61
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/animation/PathInterpolatorApi14;->createCubic(FFFF)Landroid/graphics/Path;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0, p1}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    #@7
    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;)V
    .registers 10

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Landroid/graphics/PathMeasure;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@9
    .line 39
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    #@c
    move-result p1

    #@d
    const v2, 0x3b03126f    # 0.002f

    #@10
    div-float v2, p1, v2

    #@12
    float-to-int v2, v2

    #@13
    const/4 v3, 0x1

    #@14
    add-int/2addr v2, v3

    #@15
    .line 42
    new-array v4, v2, [F

    #@17
    iput-object v4, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    #@19
    .line 43
    new-array v4, v2, [F

    #@1b
    iput-object v4, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    #@1d
    const/4 v4, 0x2

    #@1e
    new-array v4, v4, [F

    #@20
    move v5, v1

    #@21
    :goto_21
    if-ge v5, v2, :cond_3c

    #@23
    int-to-float v6, v5

    #@24
    mul-float/2addr v6, p1

    #@25
    add-int/lit8 v7, v2, -0x1

    #@27
    int-to-float v7, v7

    #@28
    div-float/2addr v6, v7

    #@29
    const/4 v7, 0x0

    #@2a
    .line 48
    invoke-virtual {v0, v6, v4, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@2d
    .line 50
    iget-object v6, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    #@2f
    aget v7, v4, v1

    #@31
    aput v7, v6, v5

    #@33
    .line 51
    iget-object v6, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    #@35
    aget v7, v4, v3

    #@37
    aput v7, v6, v5

    #@39
    add-int/lit8 v5, v5, 0x1

    #@3b
    goto :goto_21

    #@3c
    :cond_3c
    return-void
.end method

.method private static createCubic(FFFF)Landroid/graphics/Path;
    .registers 12

    #@0
    .line 107
    new-instance v7, Landroid/graphics/Path;

    #@2
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 108
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    #@9
    const/high16 v5, 0x3f800000    # 1.0f

    #@b
    const/high16 v6, 0x3f800000    # 1.0f

    #@d
    move-object v0, v7

    #@e
    move v1, p0

    #@f
    move v2, p1

    #@10
    move v3, p2

    #@11
    move v4, p3

    #@12
    .line 109
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@15
    return-object v7
.end method

.method private static createQuad(FF)Landroid/graphics/Path;
    .registers 4

    #@0
    .line 99
    new-instance v0, Landroid/graphics/Path;

    #@2
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 100
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@9
    const/high16 v1, 0x3f800000    # 1.0f

    #@b
    .line 101
    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@e
    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    if-gtz v1, :cond_6

    #@5
    return v0

    #@6
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    #@8
    cmpl-float v2, p1, v1

    #@a
    if-ltz v2, :cond_d

    #@c
    return v1

    #@d
    .line 74
    :cond_d
    iget-object v1, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    #@f
    array-length v1, v1

    #@10
    const/4 v2, 0x1

    #@11
    sub-int/2addr v1, v2

    #@12
    const/4 v3, 0x0

    #@13
    :goto_13
    sub-int v4, v1, v3

    #@15
    if-le v4, v2, :cond_27

    #@17
    add-int v4, v3, v1

    #@19
    .line 76
    div-int/lit8 v4, v4, 0x2

    #@1b
    .line 77
    iget-object v5, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    #@1d
    aget v5, v5, v4

    #@1f
    cmpg-float v5, p1, v5

    #@21
    if-gez v5, :cond_25

    #@23
    move v1, v4

    #@24
    goto :goto_13

    #@25
    :cond_25
    move v3, v4

    #@26
    goto :goto_13

    #@27
    .line 84
    :cond_27
    iget-object v2, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    #@29
    aget v4, v2, v1

    #@2b
    aget v2, v2, v3

    #@2d
    sub-float/2addr v4, v2

    #@2e
    cmpl-float v0, v4, v0

    #@30
    if-nez v0, :cond_37

    #@32
    .line 86
    iget-object p1, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    #@34
    aget p1, p1, v3

    #@36
    return p1

    #@37
    :cond_37
    sub-float/2addr p1, v2

    #@38
    div-float/2addr p1, v4

    #@39
    .line 92
    iget-object v0, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    #@3b
    aget v2, v0, v3

    #@3d
    .line 93
    aget v0, v0, v1

    #@3f
    sub-float/2addr v0, v2

    #@40
    mul-float/2addr p1, v0

    #@41
    add-float/2addr v2, p1

    #@42
    return v2
.end method
