.class abstract Landroidx/interpolator/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mStepSize:F

.field private final mValues:[F


# direct methods
.method protected constructor <init>([F)V
    .registers 3

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    #@5
    .line 32
    array-length p1, p1

    #@6
    add-int/lit8 p1, p1, -0x1

    #@8
    int-to-float p1, p1

    #@9
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    div-float/2addr v0, p1

    #@c
    iput v0, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    #@e
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    cmpl-float v1, p1, v0

    #@4
    if-ltz v1, :cond_7

    #@6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    cmpg-float v1, p1, v0

    #@a
    if-gtz v1, :cond_d

    #@c
    return v0

    #@d
    .line 46
    :cond_d
    iget-object v0, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    #@f
    array-length v1, v0

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    int-to-float v1, v1

    #@13
    mul-float/2addr v1, p1

    #@14
    float-to-int v1, v1

    #@15
    array-length v0, v0

    #@16
    add-int/lit8 v0, v0, -0x2

    #@18
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    int-to-float v1, v0

    #@1d
    .line 49
    iget v2, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    #@1f
    mul-float/2addr v1, v2

    #@20
    sub-float/2addr p1, v1

    #@21
    div-float/2addr p1, v2

    #@22
    .line 54
    iget-object v1, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    #@24
    aget v2, v1, v0

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    aget v0, v1, v0

    #@2a
    sub-float/2addr v0, v2

    #@2b
    mul-float/2addr p1, v0

    #@2c
    add-float/2addr v2, p1

    #@2d
    return v2
.end method
