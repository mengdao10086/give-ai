.class final Landroidx/core/content/res/CamUtils;
.super Ljava/lang/Object;
.source "CamUtils.java"


# static fields
.field static final CAM16RGB_TO_XYZ:[[F

.field static final SRGB_TO_XYZ:[[F

.field static final WHITE_POINT_D65:[F

.field static final XYZ_TO_CAM16RGB:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [[F

    #@3
    new-array v2, v0, [F

    #@5
    .line 52
    fill-array-data v2, :array_58

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    new-array v2, v0, [F

    #@d
    fill-array-data v2, :array_62

    #@10
    const/4 v4, 0x1

    #@11
    aput-object v2, v1, v4

    #@13
    new-array v2, v0, [F

    #@15
    fill-array-data v2, :array_6c

    #@18
    const/4 v5, 0x2

    #@19
    aput-object v2, v1, v5

    #@1b
    sput-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    #@1d
    new-array v1, v0, [[F

    #@1f
    new-array v2, v0, [F

    #@21
    .line 59
    fill-array-data v2, :array_76

    #@24
    aput-object v2, v1, v3

    #@26
    new-array v2, v0, [F

    #@28
    fill-array-data v2, :array_80

    #@2b
    aput-object v2, v1, v4

    #@2d
    new-array v2, v0, [F

    #@2f
    fill-array-data v2, :array_8a

    #@32
    aput-object v2, v1, v5

    #@34
    sput-object v1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    #@36
    new-array v1, v0, [F

    #@38
    .line 67
    fill-array-data v1, :array_94

    #@3b
    sput-object v1, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    #@3d
    new-array v1, v0, [[F

    #@3f
    new-array v2, v0, [F

    #@41
    .line 73
    fill-array-data v2, :array_9e

    #@44
    aput-object v2, v1, v3

    #@46
    new-array v2, v0, [F

    #@48
    fill-array-data v2, :array_a8

    #@4b
    aput-object v2, v1, v4

    #@4d
    new-array v0, v0, [F

    #@4f
    fill-array-data v0, :array_b2

    #@52
    aput-object v0, v1, v5

    #@54
    sput-object v1, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    #@56
    return-void

    #@57
    nop

    #@58
    :array_58
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    #@62
    :array_62
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    #@6c
    :array_6c
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    #@76
    :array_76
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    #@80
    :array_80
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    #@8a
    :array_8a
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    #@94
    :array_94
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    #@9e
    :array_9e
    .array-data 4
        0x3ed31e17
        0x3eb71a0d
        0x3e38d7b9
    .end array-data

    #@a8
    :array_a8
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3f371759    # 0.7152f
        0x3d93dd98    # 0.0722f
    .end array-data

    #@b2
    :array_b2
    .array-data 4
        0x3c9e47ef
        0x3df40c29
        0x3f7349cc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static intFromLStar(F)I
    .registers 16

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    cmpg-float v0, p0, v0

    #@4
    if-gez v0, :cond_9

    #@6
    const/high16 p0, -0x1000000

    #@8
    return p0

    #@9
    :cond_9
    const/high16 v0, 0x42c60000    # 99.0f

    #@b
    cmpl-float v0, p0, v0

    #@d
    if-lez v0, :cond_11

    #@f
    const/4 p0, -0x1

    #@10
    return p0

    #@11
    :cond_11
    const/high16 v0, 0x41800000    # 16.0f

    #@13
    add-float v1, p0, v0

    #@15
    const/high16 v2, 0x42e80000    # 116.0f

    #@17
    div-float/2addr v1, v2

    #@18
    const/high16 v3, 0x41000000    # 8.0f

    #@1a
    cmpl-float v3, p0, v3

    #@1c
    const/4 v4, 0x1

    #@1d
    const/4 v5, 0x0

    #@1e
    if-lez v3, :cond_22

    #@20
    move v3, v4

    #@21
    goto :goto_23

    #@22
    :cond_22
    move v3, v5

    #@23
    :goto_23
    const v6, 0x4461d2f7

    #@26
    if-eqz v3, :cond_2c

    #@28
    mul-float p0, v1, v1

    #@2a
    mul-float/2addr p0, v1

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    div-float/2addr p0, v6

    #@2d
    :goto_2d
    mul-float v3, v1, v1

    #@2f
    mul-float/2addr v3, v1

    #@30
    const v7, 0x3c111aa7

    #@33
    cmpl-float v7, v3, v7

    #@35
    if-lez v7, :cond_39

    #@37
    move v7, v4

    #@38
    goto :goto_3a

    #@39
    :cond_39
    move v7, v5

    #@3a
    :goto_3a
    if-eqz v7, :cond_3e

    #@3c
    move v8, v3

    #@3d
    goto :goto_42

    #@3e
    :cond_3e
    mul-float v8, v1, v2

    #@40
    sub-float/2addr v8, v0

    #@41
    div-float/2addr v8, v6

    #@42
    :goto_42
    if-eqz v7, :cond_45

    #@44
    goto :goto_49

    #@45
    :cond_45
    mul-float/2addr v1, v2

    #@46
    sub-float/2addr v1, v0

    #@47
    div-float v3, v1, v6

    #@49
    .line 101
    :goto_49
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    #@4b
    aget v1, v0, v5

    #@4d
    mul-float/2addr v8, v1

    #@4e
    float-to-double v9, v8

    #@4f
    aget v1, v0, v4

    #@51
    mul-float/2addr p0, v1

    #@52
    float-to-double v11, p0

    #@53
    const/4 p0, 0x2

    #@54
    aget p0, v0, p0

    #@56
    mul-float/2addr v3, p0

    #@57
    float-to-double v13, v3

    #@58
    invoke-static/range {v9 .. v14}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    #@5b
    move-result p0

    #@5c
    return p0
.end method

.method static lStarFromInt(I)F
    .registers 1

    #@0
    .line 111
    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->yFromInt(I)F

    #@3
    move-result p0

    #@4
    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->lStarFromY(F)F

    #@7
    move-result p0

    #@8
    return p0
.end method

.method static lStarFromY(F)F
    .registers 3

    #@0
    const/high16 v0, 0x42c80000    # 100.0f

    #@2
    div-float/2addr p0, v0

    #@3
    const v0, 0x3c111aa7

    #@6
    cmpg-float v0, p0, v0

    #@8
    if-gtz v0, :cond_f

    #@a
    const v0, 0x4461d2f7

    #@d
    mul-float/2addr p0, v0

    #@e
    return p0

    #@f
    :cond_f
    float-to-double v0, p0

    #@10
    .line 121
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    #@13
    move-result-wide v0

    #@14
    double-to-float p0, v0

    #@15
    const/high16 v0, 0x42e80000    # 116.0f

    #@17
    mul-float/2addr p0, v0

    #@18
    const/high16 v0, 0x41800000    # 16.0f

    #@1a
    sub-float/2addr p0, v0

    #@1b
    return p0
.end method

.method static lerp(FFF)F
    .registers 3

    #@0
    sub-float/2addr p1, p0

    #@1
    mul-float/2addr p1, p2

    #@2
    add-float/2addr p0, p1

    #@3
    return p0
.end method

.method static linearized(I)F
    .registers 7

    #@0
    int-to-float p0, p0

    #@1
    const/high16 v0, 0x437f0000    # 255.0f

    #@3
    div-float/2addr p0, v0

    #@4
    const v0, 0x3d25aee6    # 0.04045f

    #@7
    cmpg-float v0, p0, v0

    #@9
    const/high16 v1, 0x42c80000    # 100.0f

    #@b
    if-gtz v0, :cond_13

    #@d
    const v0, 0x414eb852    # 12.92f

    #@10
    div-float/2addr p0, v0

    #@11
    :goto_11
    mul-float/2addr p0, v1

    #@12
    return p0

    #@13
    :cond_13
    const v0, 0x3d6147ae    # 0.055f

    #@16
    add-float/2addr p0, v0

    #@17
    const v0, 0x3f870a3d    # 1.055f

    #@1a
    div-float/2addr p0, v0

    #@1b
    float-to-double v2, p0

    #@1c
    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    #@21
    .line 163
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@24
    move-result-wide v2

    #@25
    double-to-float p0, v2

    #@26
    goto :goto_11
.end method

.method static xyzFromInt(I)[F
    .registers 11

    #@0
    .line 137
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    #@7
    move-result v0

    #@8
    .line 138
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@b
    move-result v1

    #@c
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    #@f
    move-result v1

    #@10
    .line 139
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@13
    move-result p0

    #@14
    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    #@17
    move-result p0

    #@18
    .line 141
    sget-object v2, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    #@1a
    const/4 v3, 0x0

    #@1b
    .line 142
    aget-object v4, v2, v3

    #@1d
    aget v5, v4, v3

    #@1f
    mul-float/2addr v5, v0

    #@20
    const/4 v6, 0x1

    #@21
    aget v7, v4, v6

    #@23
    mul-float/2addr v7, v1

    #@24
    add-float/2addr v5, v7

    #@25
    const/4 v7, 0x2

    #@26
    aget v4, v4, v7

    #@28
    mul-float/2addr v4, p0

    #@29
    add-float/2addr v5, v4

    #@2a
    .line 143
    aget-object v4, v2, v6

    #@2c
    aget v8, v4, v3

    #@2e
    mul-float/2addr v8, v0

    #@2f
    aget v9, v4, v6

    #@31
    mul-float/2addr v9, v1

    #@32
    add-float/2addr v8, v9

    #@33
    aget v4, v4, v7

    #@35
    mul-float/2addr v4, p0

    #@36
    add-float/2addr v8, v4

    #@37
    .line 144
    aget-object v2, v2, v7

    #@39
    aget v4, v2, v3

    #@3b
    mul-float/2addr v0, v4

    #@3c
    aget v4, v2, v6

    #@3e
    mul-float/2addr v1, v4

    #@3f
    add-float/2addr v0, v1

    #@40
    aget v1, v2, v7

    #@42
    mul-float/2addr p0, v1

    #@43
    add-float/2addr v0, p0

    #@44
    const/4 p0, 0x3

    #@45
    new-array p0, p0, [F

    #@47
    aput v5, p0, v3

    #@49
    aput v8, p0, v6

    #@4b
    aput v0, p0, v7

    #@4d
    return-object p0
.end method

.method static yFromInt(I)F
    .registers 6

    #@0
    .line 127
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    #@7
    move-result v0

    #@8
    .line 128
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@b
    move-result v1

    #@c
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    #@f
    move-result v1

    #@10
    .line 129
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@13
    move-result p0

    #@14
    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    #@17
    move-result p0

    #@18
    .line 130
    sget-object v2, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    #@1a
    const/4 v3, 0x1

    #@1b
    .line 131
    aget-object v2, v2, v3

    #@1d
    const/4 v4, 0x0

    #@1e
    aget v4, v2, v4

    #@20
    mul-float/2addr v0, v4

    #@21
    aget v3, v2, v3

    #@23
    mul-float/2addr v1, v3

    #@24
    add-float/2addr v0, v1

    #@25
    const/4 v1, 0x2

    #@26
    aget v1, v2, v1

    #@28
    mul-float/2addr p0, v1

    #@29
    add-float/2addr v0, p0

    #@2a
    return v0
.end method

.method static yFromLStar(F)F
    .registers 7

    #@0
    const/high16 v0, 0x41000000    # 8.0f

    #@2
    cmpl-float v0, p0, v0

    #@4
    const/high16 v1, 0x42c80000    # 100.0f

    #@6
    if-lez v0, :cond_18

    #@8
    float-to-double v2, p0

    #@9
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    #@b
    add-double/2addr v2, v4

    #@c
    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    #@e
    div-double/2addr v2, v4

    #@f
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    #@11
    .line 151
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@14
    move-result-wide v2

    #@15
    double-to-float p0, v2

    #@16
    :goto_16
    mul-float/2addr p0, v1

    #@17
    return p0

    #@18
    :cond_18
    const v0, 0x4461d2f7

    #@1b
    div-float/2addr p0, v0

    #@1c
    goto :goto_16
.end method
