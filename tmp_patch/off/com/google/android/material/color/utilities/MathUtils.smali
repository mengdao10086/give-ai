.class public Lcom/google/android/material/color/utilities/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static clampDouble(DDD)D
    .registers 7

    #@0
    cmpg-double v0, p4, p0

    #@2
    if-gez v0, :cond_5

    #@4
    return-wide p0

    #@5
    :cond_5
    cmpl-double p0, p4, p2

    #@7
    if-lez p0, :cond_a

    #@9
    return-wide p2

    #@a
    :cond_a
    return-wide p4
.end method

.method public static clampInt(III)I
    .registers 3

    #@0
    if-ge p2, p0, :cond_3

    #@2
    return p0

    #@3
    :cond_3
    if-le p2, p1, :cond_6

    #@5
    return p1

    #@6
    :cond_6
    return p2
.end method

.method public static differenceDegrees(DD)D
    .registers 4

    #@0
    sub-double/2addr p0, p2

    #@1
    .line 130
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@4
    move-result-wide p0

    #@5
    const-wide p2, 0x4066800000000000L    # 180.0

    #@a
    sub-double/2addr p0, p2

    #@b
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@e
    move-result-wide p0

    #@f
    sub-double/2addr p2, p0

    #@10
    return-wide p2
.end method

.method public static lerp(DDD)D
    .registers 8

    #@0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@2
    sub-double/2addr v0, p4

    #@3
    mul-double/2addr v0, p0

    #@4
    mul-double/2addr p4, p2

    #@5
    add-double/2addr v0, p4

    #@6
    return-wide v0
.end method

.method public static matrixMultiply([D[[D)[D
    .registers 18

    #@0
    const/4 v0, 0x0

    #@1
    .line 135
    aget-wide v1, p0, v0

    #@3
    aget-object v3, p1, v0

    #@5
    aget-wide v4, v3, v0

    #@7
    mul-double/2addr v4, v1

    #@8
    const/4 v6, 0x1

    #@9
    aget-wide v7, p0, v6

    #@b
    aget-wide v9, v3, v6

    #@d
    mul-double/2addr v9, v7

    #@e
    add-double/2addr v4, v9

    #@f
    const/4 v9, 0x2

    #@10
    aget-wide v10, p0, v9

    #@12
    aget-wide v12, v3, v9

    #@14
    mul-double/2addr v12, v10

    #@15
    add-double/2addr v4, v12

    #@16
    .line 136
    aget-object v3, p1, v6

    #@18
    aget-wide v12, v3, v0

    #@1a
    mul-double/2addr v12, v1

    #@1b
    aget-wide v14, v3, v6

    #@1d
    mul-double/2addr v14, v7

    #@1e
    add-double/2addr v12, v14

    #@1f
    aget-wide v14, v3, v9

    #@21
    mul-double/2addr v14, v10

    #@22
    add-double/2addr v12, v14

    #@23
    .line 137
    aget-object v3, p1, v9

    #@25
    aget-wide v14, v3, v0

    #@27
    mul-double/2addr v1, v14

    #@28
    aget-wide v14, v3, v6

    #@2a
    mul-double/2addr v7, v14

    #@2b
    add-double/2addr v1, v7

    #@2c
    aget-wide v7, v3, v9

    #@2e
    mul-double/2addr v10, v7

    #@2f
    add-double/2addr v1, v10

    #@30
    const/4 v3, 0x3

    #@31
    new-array v3, v3, [D

    #@33
    aput-wide v4, v3, v0

    #@35
    aput-wide v12, v3, v6

    #@37
    aput-wide v1, v3, v9

    #@39
    return-object v3
.end method

.method public static rotationDirection(DD)D
    .registers 4

    #@0
    sub-double/2addr p2, p0

    #@1
    .line 124
    invoke-static {p2, p3}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    #@4
    move-result-wide p0

    #@5
    const-wide p2, 0x4066800000000000L    # 180.0

    #@a
    cmpg-double p0, p0, p2

    #@c
    if-gtz p0, :cond_11

    #@e
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    #@10
    goto :goto_13

    #@11
    :cond_11
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    #@13
    :goto_13
    return-wide p0
.end method

.method public static sanitizeDegreesDouble(D)D
    .registers 6

    #@0
    const-wide v0, 0x4076800000000000L    # 360.0

    #@5
    rem-double/2addr p0, v0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmpg-double v2, p0, v2

    #@a
    if-gez v2, :cond_d

    #@c
    add-double/2addr p0, v0

    #@d
    :cond_d
    return-wide p0
.end method

.method public static sanitizeDegreesInt(I)I
    .registers 1

    #@0
    .line 92
    rem-int/lit16 p0, p0, 0x168

    #@2
    if-gez p0, :cond_6

    #@4
    add-int/lit16 p0, p0, 0x168

    #@6
    :cond_6
    return p0
.end method

.method public static signum(D)I
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmpg-double v2, p0, v0

    #@4
    if-gez v2, :cond_8

    #@6
    const/4 p0, -0x1

    #@7
    return p0

    #@8
    :cond_8
    cmpl-double p0, p0, v0

    #@a
    if-nez p0, :cond_e

    #@c
    const/4 p0, 0x0

    #@d
    return p0

    #@e
    :cond_e
    const/4 p0, 0x1

    #@f
    return p0
.end method
