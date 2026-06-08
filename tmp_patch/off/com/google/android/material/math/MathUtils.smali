.class public final Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final DEFAULT_EPSILON:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dist(FFFF)F
    .registers 4

    #@0
    sub-float/2addr p2, p0

    #@1
    sub-float/2addr p3, p1

    #@2
    float-to-double p0, p2

    #@3
    float-to-double p2, p3

    #@4
    .line 30
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    #@7
    move-result-wide p0

    #@8
    double-to-float p0, p0

    #@9
    return p0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .registers 7

    #@0
    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    #@3
    move-result v0

    #@4
    .line 67
    invoke-static {p0, p1, p4, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    #@7
    move-result p3

    #@8
    .line 68
    invoke-static {p0, p1, p4, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    #@b
    move-result p4

    #@c
    .line 69
    invoke-static {p0, p1, p2, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    #@f
    move-result p0

    #@10
    .line 65
    invoke-static {v0, p3, p4, p0}, Lcom/google/android/material/math/MathUtils;->max(FFFF)F

    #@13
    move-result p0

    #@14
    return p0
.end method

.method public static floorMod(FI)F
    .registers 5

    #@0
    int-to-float v0, p1

    #@1
    div-float v1, p0, v0

    #@3
    float-to-int v1, v1

    #@4
    .line 84
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    #@7
    move-result v2

    #@8
    mul-float/2addr v2, v0

    #@9
    const/4 v0, 0x0

    #@a
    cmpg-float v0, v2, v0

    #@c
    if-gez v0, :cond_17

    #@e
    mul-int v0, v1, p1

    #@10
    int-to-float v0, v0

    #@11
    cmpl-float v0, v0, p0

    #@13
    if-eqz v0, :cond_17

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    :cond_17
    mul-int/2addr v1, p1

    #@18
    int-to-float p1, v1

    #@19
    sub-float/2addr p0, p1

    #@1a
    return p0
.end method

.method public static floorMod(II)I
    .registers 4

    #@0
    .line 95
    div-int v0, p0, p1

    #@2
    xor-int v1, p0, p1

    #@4
    if-gez v1, :cond_c

    #@6
    mul-int v1, v0, p1

    #@8
    if-eq v1, p0, :cond_c

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    :cond_c
    mul-int/2addr v0, p1

    #@d
    sub-int/2addr p0, v0

    #@e
    return p0
.end method

.method public static geq(FFF)Z
    .registers 3

    #@0
    add-float/2addr p0, p2

    #@1
    cmpl-float p0, p0, p1

    #@3
    if-ltz p0, :cond_7

    #@5
    const/4 p0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    :goto_8
    return p0
.end method

.method public static lerp(FFF)F
    .registers 4

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    sub-float/2addr v0, p2

    #@3
    mul-float/2addr v0, p0

    #@4
    mul-float/2addr p2, p1

    #@5
    add-float/2addr v0, p2

    #@6
    return v0
.end method

.method private static max(FFFF)F
    .registers 5

    #@0
    cmpl-float v0, p0, p1

    #@2
    if-lez v0, :cond_d

    #@4
    cmpl-float v0, p0, p2

    #@6
    if-lez v0, :cond_d

    #@8
    cmpl-float v0, p0, p3

    #@a
    if-lez v0, :cond_d

    #@c
    goto :goto_1e

    #@d
    :cond_d
    cmpl-float p0, p1, p2

    #@f
    if-lez p0, :cond_17

    #@11
    cmpl-float p0, p1, p3

    #@13
    if-lez p0, :cond_17

    #@15
    move p0, p1

    #@16
    goto :goto_1e

    #@17
    :cond_17
    cmpl-float p0, p2, p3

    #@19
    if-lez p0, :cond_1d

    #@1b
    move p0, p2

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move p0, p3

    #@1e
    :goto_1e
    return p0
.end method
