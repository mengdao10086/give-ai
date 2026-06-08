.class public Lcom/google/android/material/color/utilities/Blend;
.super Ljava/lang/Object;
.source "Blend.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static cam16Ucs(IID)I
    .registers 22

    #@0
    .line 79
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    #@3
    move-result-object v0

    #@4
    .line 80
    invoke-static/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    #@7
    move-result-object v1

    #@8
    .line 81
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    #@b
    move-result-wide v2

    #@c
    .line 82
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    #@f
    move-result-wide v4

    #@10
    .line 83
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    #@13
    move-result-wide v6

    #@14
    .line 84
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    #@17
    move-result-wide v8

    #@18
    .line 85
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    #@1b
    move-result-wide v10

    #@1c
    .line 86
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    #@1f
    move-result-wide v0

    #@20
    sub-double/2addr v8, v2

    #@21
    mul-double v8, v8, p2

    #@23
    add-double v12, v2, v8

    #@25
    sub-double/2addr v10, v4

    #@26
    mul-double v10, v10, p2

    #@28
    add-double v14, v4, v10

    #@2a
    sub-double/2addr v0, v6

    #@2b
    mul-double v0, v0, p2

    #@2d
    add-double v16, v6, v0

    #@2f
    .line 90
    invoke-static/range {v12 .. v17}, Lcom/google/android/material/color/utilities/Cam16;->fromUcs(DDD)Lcom/google/android/material/color/utilities/Cam16;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->toInt()I

    #@36
    move-result v0

    #@37
    return v0
.end method

.method public static harmonize(II)I
    .registers 12

    #@0
    .line 42
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    #@3
    move-result-object p0

    #@4
    .line 43
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    #@7
    move-result-object p1

    #@8
    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    #@b
    move-result-wide v0

    #@c
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    #@f
    move-result-wide v2

    #@10
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    #@13
    move-result-wide v0

    #@14
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@16
    mul-double/2addr v0, v2

    #@17
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    #@19
    .line 45
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    #@1c
    move-result-wide v0

    #@1d
    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    #@20
    move-result-wide v2

    #@21
    .line 49
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    #@24
    move-result-wide v4

    #@25
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    #@28
    move-result-wide v6

    #@29
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/material/color/utilities/MathUtils;->rotationDirection(DD)D

    #@2c
    move-result-wide v4

    #@2d
    mul-double/2addr v0, v4

    #@2e
    add-double/2addr v2, v0

    #@2f
    .line 47
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    #@32
    move-result-wide v4

    #@33
    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    #@36
    move-result-wide v6

    #@37
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    #@3a
    move-result-wide v8

    #@3b
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    #@3e
    move-result-object p0

    #@3f
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    #@42
    move-result p0

    #@43
    return p0
.end method

.method public static hctHue(IID)I
    .registers 10

    #@0
    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Blend;->cam16Ucs(IID)I

    #@3
    move-result p1

    #@4
    .line 64
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    #@7
    move-result-object p1

    #@8
    .line 65
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    #@b
    move-result-object p2

    #@c
    .line 66
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    #@f
    move-result-wide v0

    #@10
    invoke-virtual {p2}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    #@13
    move-result-wide v2

    #@14
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    #@17
    move-result-wide v4

    #@18
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    #@1b
    move-result-object p0

    #@1c
    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    #@1f
    move-result p0

    #@20
    return p0
.end method
