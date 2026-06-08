.class public Lcom/google/android/material/color/utilities/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field static final SRGB_TO_XYZ:[[D

.field static final WHITE_POINT_D65:[D

.field static final XYZ_TO_SRGB:[[D


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [[D

    #@3
    new-array v2, v0, [D

    #@5
    .line 35
    fill-array-data v2, :array_3e

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    new-array v2, v0, [D

    #@d
    fill-array-data v2, :array_4e

    #@10
    const/4 v4, 0x1

    #@11
    aput-object v2, v1, v4

    #@13
    new-array v2, v0, [D

    #@15
    fill-array-data v2, :array_5e

    #@18
    const/4 v5, 0x2

    #@19
    aput-object v2, v1, v5

    #@1b
    sput-object v1, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    #@1d
    new-array v1, v0, [[D

    #@1f
    new-array v2, v0, [D

    #@21
    .line 42
    fill-array-data v2, :array_6e

    #@24
    aput-object v2, v1, v3

    #@26
    new-array v2, v0, [D

    #@28
    fill-array-data v2, :array_7e

    #@2b
    aput-object v2, v1, v4

    #@2d
    new-array v2, v0, [D

    #@2f
    fill-array-data v2, :array_8e

    #@32
    aput-object v2, v1, v5

    #@34
    sput-object v1, Lcom/google/android/material/color/utilities/ColorUtils;->XYZ_TO_SRGB:[[D

    #@36
    new-array v0, v0, [D

    #@38
    .line 55
    fill-array-data v0, :array_9e

    #@3b
    sput-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    #@3d
    return-void

    #@3e
    :array_3e
    .array-data 8
        0x3fda63c2e8477c96L    # 0.41233895
        0x3fd6e341ae4b2c79L    # 0.35762064
        0x3fc71af7273e5d5eL    # 0.18051042
    .end array-data

    #@4e
    :array_4e
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    #@5e
    :array_5e
    .array-data 8
        0x3f93c8fde0401c25L    # 0.01932141
        0x3fbe818525c434ceL    # 0.11916382
        0x3fee693974c0c730L    # 0.95034478
    .end array-data

    #@6e
    :array_6e
    .array-data 8
        0x4009ee5750da932bL    # 3.2413774792388685
        -0x400765b9220c7764L    # -1.5376652402851851
        -0x402012c8101da46cL    # -0.49885366846268053
    .end array-data

    #@7e
    :array_7e
    .array-data 8
        -0x4010fcc31912e57cL    # -0.9691452513005321
        0x3ffe03a05a04781dL    # 1.8758853451067872
        0x3fa5481eb1c0d367L    # 0.04156585616912061
    .end array-data

    #@8e
    :array_8e
    .array-data 8
        0x3fac7a58f1e3e6efL    # 0.05562093689691305
        -0x4035e4cb650c5ffeL    # -0.20395524564742123
        0x3ff0ea357b841dfcL    # 1.0571799111220335
    .end array-data

    #@9e
    :array_9e
    .array-data 8
        0x4057c3020c49ba5eL    # 95.047
        0x4059000000000000L    # 100.0
        0x405b3883126e978dL    # 108.883
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static alphaFromArgb(I)I
    .registers 1

    #@0
    shr-int/lit8 p0, p0, 0x18

    #@2
    and-int/lit16 p0, p0, 0xff

    #@4
    return p0
.end method

.method public static argbFromLab(DDD)I
    .registers 15

    #@0
    .line 117
    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    #@2
    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    #@4
    add-double/2addr p0, v1

    #@5
    const-wide/high16 v1, 0x405d000000000000L    # 116.0

    #@7
    div-double/2addr p0, v1

    #@8
    const-wide v1, 0x407f400000000000L    # 500.0

    #@d
    div-double/2addr p2, v1

    #@e
    add-double/2addr p2, p0

    #@f
    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    #@11
    div-double/2addr p4, v1

    #@12
    sub-double p4, p0, p4

    #@14
    .line 121
    invoke-static {p2, p3}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    #@17
    move-result-wide p2

    #@18
    .line 122
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    #@1b
    move-result-wide p0

    #@1c
    .line 123
    invoke-static {p4, p5}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    #@1f
    move-result-wide p4

    #@20
    const/4 v1, 0x0

    #@21
    .line 124
    aget-wide v1, v0, v1

    #@23
    mul-double v3, p2, v1

    #@25
    const/4 p2, 0x1

    #@26
    .line 125
    aget-wide p2, v0, p2

    #@28
    mul-double v5, p0, p2

    #@2a
    const/4 p0, 0x2

    #@2b
    .line 126
    aget-wide p0, v0, p0

    #@2d
    mul-double v7, p4, p0

    #@2f
    .line 127
    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromXyz(DDD)I

    #@32
    move-result p0

    #@33
    return p0
.end method

.method public static argbFromLinrgb([D)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 64
    aget-wide v0, p0, v0

    #@3
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    .line 65
    aget-wide v1, p0, v1

    #@a
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x2

    #@f
    .line 66
    aget-wide v2, p0, v2

    #@11
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    #@14
    move-result p0

    #@15
    .line 67
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    #@18
    move-result p0

    #@19
    return p0
.end method

.method public static argbFromLstar(D)I
    .registers 2

    #@0
    .line 164
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    #@3
    move-result-wide p0

    #@4
    .line 165
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    #@7
    move-result p0

    #@8
    .line 166
    invoke-static {p0, p0, p0}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static argbFromRgb(III)I
    .registers 4

    #@0
    and-int/lit16 p0, p0, 0xff

    #@2
    shl-int/lit8 p0, p0, 0x10

    #@4
    const/high16 v0, -0x1000000

    #@6
    or-int/2addr p0, v0

    #@7
    and-int/lit16 p1, p1, 0xff

    #@9
    shl-int/lit8 p1, p1, 0x8

    #@b
    or-int/2addr p0, p1

    #@c
    and-int/lit16 p1, p2, 0xff

    #@e
    or-int/2addr p0, p1

    #@f
    return p0
.end method

.method public static argbFromXyz(DDD)I
    .registers 17

    #@0
    .line 97
    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->XYZ_TO_SRGB:[[D

    #@2
    const/4 v1, 0x0

    #@3
    .line 98
    aget-object v2, v0, v1

    #@5
    aget-wide v3, v2, v1

    #@7
    mul-double/2addr v3, p0

    #@8
    const/4 v5, 0x1

    #@9
    aget-wide v6, v2, v5

    #@b
    mul-double/2addr v6, p2

    #@c
    add-double/2addr v3, v6

    #@d
    const/4 v6, 0x2

    #@e
    aget-wide v7, v2, v6

    #@10
    mul-double/2addr v7, p4

    #@11
    add-double/2addr v3, v7

    #@12
    .line 99
    aget-object v2, v0, v5

    #@14
    aget-wide v7, v2, v1

    #@16
    mul-double/2addr v7, p0

    #@17
    aget-wide v9, v2, v5

    #@19
    mul-double/2addr v9, p2

    #@1a
    add-double/2addr v7, v9

    #@1b
    aget-wide v9, v2, v6

    #@1d
    mul-double/2addr v9, p4

    #@1e
    add-double/2addr v7, v9

    #@1f
    .line 100
    aget-object v0, v0, v6

    #@21
    aget-wide v1, v0, v1

    #@23
    mul-double/2addr v1, p0

    #@24
    aget-wide v9, v0, v5

    #@26
    mul-double/2addr v9, p2

    #@27
    add-double/2addr v1, v9

    #@28
    aget-wide v5, v0, v6

    #@2a
    mul-double/2addr v5, p4

    #@2b
    add-double/2addr v1, v5

    #@2c
    .line 101
    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    #@2f
    move-result v0

    #@30
    .line 102
    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    #@33
    move-result v3

    #@34
    .line 103
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    #@37
    move-result v1

    #@38
    .line 104
    invoke-static {v0, v3, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    #@3b
    move-result v0

    #@3c
    return v0
.end method

.method public static blueFromArgb(I)I
    .registers 1

    #@0
    and-int/lit16 p0, p0, 0xff

    #@2
    return p0
.end method

.method public static delinearized(D)I
    .registers 4

    #@0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@2
    div-double/2addr p0, v0

    #@3
    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    #@8
    cmpg-double v0, p0, v0

    #@a
    if-gtz v0, :cond_13

    #@c
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    #@11
    mul-double/2addr p0, v0

    #@12
    goto :goto_28

    #@13
    :cond_13
    const-wide v0, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    #@18
    .line 222
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@1b
    move-result-wide p0

    #@1c
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    #@21
    mul-double/2addr p0, v0

    #@22
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    #@27
    sub-double/2addr p0, v0

    #@28
    :goto_28
    const-wide v0, 0x406fe00000000000L    # 255.0

    #@2d
    mul-double/2addr p0, v0

    #@2e
    .line 224
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    #@31
    move-result-wide p0

    #@32
    long-to-int p0, p0

    #@33
    const/4 p1, 0x0

    #@34
    const/16 v0, 0xff

    #@36
    invoke-static {p1, v0, p0}, Lcom/google/android/material/color/utilities/MathUtils;->clampInt(III)I

    #@39
    move-result p0

    #@3a
    return p0
.end method

.method public static greenFromArgb(I)I
    .registers 1

    #@0
    shr-int/lit8 p0, p0, 0x8

    #@2
    and-int/lit16 p0, p0, 0xff

    #@4
    return p0
.end method

.method public static isOpaque(I)Z
    .registers 2

    #@0
    .line 92
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->alphaFromArgb(I)I

    #@3
    move-result p0

    #@4
    const/16 v0, 0xff

    #@6
    if-lt p0, v0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method

.method static labF(D)D
    .registers 4

    #@0
    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    #@5
    cmpl-double v0, p0, v0

    #@7
    if-lez v0, :cond_13

    #@9
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    #@e
    .line 240
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@11
    move-result-wide p0

    #@12
    return-wide p0

    #@13
    :cond_13
    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    #@18
    mul-double/2addr p0, v0

    #@19
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    #@1b
    add-double/2addr p0, v0

    #@1c
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    #@1e
    div-double/2addr p0, v0

    #@1f
    return-wide p0
.end method

.method public static labFromArgb(I)[D
    .registers 18

    #@0
    .line 137
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@7
    move-result-wide v0

    #@8
    .line 138
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@f
    move-result-wide v2

    #@10
    .line 139
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    #@13
    move-result v4

    #@14
    invoke-static {v4}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@17
    move-result-wide v4

    #@18
    .line 140
    sget-object v6, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    #@1a
    const/4 v7, 0x0

    #@1b
    .line 141
    aget-object v8, v6, v7

    #@1d
    aget-wide v9, v8, v7

    #@1f
    mul-double/2addr v9, v0

    #@20
    const/4 v11, 0x1

    #@21
    aget-wide v12, v8, v11

    #@23
    mul-double/2addr v12, v2

    #@24
    add-double/2addr v9, v12

    #@25
    const/4 v12, 0x2

    #@26
    aget-wide v13, v8, v12

    #@28
    mul-double/2addr v13, v4

    #@29
    add-double/2addr v9, v13

    #@2a
    .line 142
    aget-object v8, v6, v11

    #@2c
    aget-wide v13, v8, v7

    #@2e
    mul-double/2addr v13, v0

    #@2f
    aget-wide v15, v8, v11

    #@31
    mul-double/2addr v15, v2

    #@32
    add-double/2addr v13, v15

    #@33
    aget-wide v15, v8, v12

    #@35
    mul-double/2addr v15, v4

    #@36
    add-double/2addr v13, v15

    #@37
    .line 143
    aget-object v6, v6, v12

    #@39
    aget-wide v15, v6, v7

    #@3b
    mul-double/2addr v15, v0

    #@3c
    aget-wide v0, v6, v11

    #@3e
    mul-double/2addr v0, v2

    #@3f
    add-double/2addr v15, v0

    #@40
    aget-wide v0, v6, v12

    #@42
    mul-double/2addr v0, v4

    #@43
    add-double/2addr v15, v0

    #@44
    .line 144
    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    #@46
    .line 145
    aget-wide v1, v0, v7

    #@48
    div-double/2addr v9, v1

    #@49
    .line 146
    aget-wide v1, v0, v11

    #@4b
    div-double/2addr v13, v1

    #@4c
    .line 147
    aget-wide v1, v0, v12

    #@4e
    div-double/2addr v15, v1

    #@4f
    .line 148
    invoke-static {v9, v10}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    #@52
    move-result-wide v0

    #@53
    .line 149
    invoke-static {v13, v14}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    #@56
    move-result-wide v2

    #@57
    .line 150
    invoke-static/range {v15 .. v16}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    #@5a
    move-result-wide v4

    #@5b
    const-wide/high16 v8, 0x405d000000000000L    # 116.0

    #@5d
    mul-double/2addr v8, v2

    #@5e
    const-wide/high16 v13, 0x4030000000000000L    # 16.0

    #@60
    sub-double/2addr v8, v13

    #@61
    const-wide v13, 0x407f400000000000L    # 500.0

    #@66
    sub-double/2addr v0, v2

    #@67
    mul-double/2addr v0, v13

    #@68
    const-wide/high16 v13, 0x4069000000000000L    # 200.0

    #@6a
    sub-double/2addr v2, v4

    #@6b
    mul-double/2addr v2, v13

    #@6c
    const/4 v4, 0x3

    #@6d
    new-array v4, v4, [D

    #@6f
    aput-wide v8, v4, v7

    #@71
    aput-wide v0, v4, v11

    #@73
    aput-wide v2, v4, v12

    #@75
    return-object v4
.end method

.method static labInvf(D)D
    .registers 6

    #@0
    mul-double v0, p0, p0

    #@2
    mul-double/2addr v0, p0

    #@3
    const-wide v2, 0x3f822354d28f7cd6L    # 0.008856451679035631

    #@8
    cmpl-double v2, v0, v2

    #@a
    if-lez v2, :cond_d

    #@c
    return-wide v0

    #@d
    :cond_d
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    #@f
    mul-double/2addr p0, v0

    #@10
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    #@12
    sub-double/2addr p0, v0

    #@13
    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    #@18
    div-double/2addr p0, v0

    #@19
    return-wide p0
.end method

.method public static linearized(I)D
    .registers 7

    #@0
    int-to-double v0, p0

    #@1
    const-wide v2, 0x406fe00000000000L    # 255.0

    #@6
    div-double/2addr v0, v2

    #@7
    const-wide v2, 0x3fa4b5daa07d970dL    # 0.040449936

    #@c
    cmpg-double p0, v0, v2

    #@e
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    #@10
    if-gtz p0, :cond_1a

    #@12
    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    #@17
    div-double/2addr v0, v4

    #@18
    :goto_18
    mul-double/2addr v0, v2

    #@19
    return-wide v0

    #@1a
    :cond_1a
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    #@1f
    add-double/2addr v0, v4

    #@20
    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    #@25
    div-double/2addr v0, v4

    #@26
    const-wide v4, 0x4003333333333333L    # 2.4

    #@2b
    .line 206
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@2e
    move-result-wide v0

    #@2f
    goto :goto_18
.end method

.method public static lstarFromArgb(I)D
    .registers 5

    #@0
    .line 176
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->xyzFromArgb(I)[D

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x1

    #@5
    aget-wide v0, p0, v0

    #@7
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    #@9
    div-double/2addr v0, v2

    #@a
    .line 177
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    #@d
    move-result-wide v0

    #@e
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    #@10
    mul-double/2addr v0, v2

    #@11
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    #@13
    sub-double/2addr v0, v2

    #@14
    return-wide v0
.end method

.method public static redFromArgb(I)I
    .registers 1

    #@0
    shr-int/lit8 p0, p0, 0x10

    #@2
    and-int/lit16 p0, p0, 0xff

    #@4
    return p0
.end method

.method public static whitePointD65()[D
    .registers 1

    #@0
    .line 233
    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    #@2
    return-object v0
.end method

.method public static xyzFromArgb(I)[D
    .registers 8

    #@0
    .line 109
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@7
    move-result-wide v0

    #@8
    .line 110
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@f
    move-result-wide v2

    #@10
    .line 111
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    #@13
    move-result p0

    #@14
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@17
    move-result-wide v4

    #@18
    const/4 p0, 0x3

    #@19
    new-array p0, p0, [D

    #@1b
    const/4 v6, 0x0

    #@1c
    aput-wide v0, p0, v6

    #@1e
    const/4 v0, 0x1

    #@1f
    aput-wide v2, p0, v0

    #@21
    const/4 v0, 0x2

    #@22
    aput-wide v4, p0, v0

    #@24
    .line 112
    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    #@26
    invoke-static {p0, v0}, Lcom/google/android/material/color/utilities/MathUtils;->matrixMultiply([D[[D)[D

    #@29
    move-result-object p0

    #@2a
    return-object p0
.end method

.method public static yFromLstar(D)D
    .registers 4

    #@0
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    #@2
    add-double/2addr p0, v0

    #@3
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    #@5
    div-double/2addr p0, v0

    #@6
    .line 192
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    #@9
    move-result-wide p0

    #@a
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@c
    mul-double/2addr p0, v0

    #@d
    return-wide p0
.end method
