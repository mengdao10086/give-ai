.class public final Landroidx/core/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/ColorUtils$Api26Impl;
    }
.end annotation


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static HSLToColor([F)I
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 319
    aget v1, p0, v0

    #@3
    const/4 v2, 0x1

    #@4
    .line 320
    aget v2, p0, v2

    #@6
    const/4 v3, 0x2

    #@7
    .line 321
    aget p0, p0, v3

    #@9
    const/high16 v3, 0x40000000    # 2.0f

    #@b
    mul-float v4, p0, v3

    #@d
    const/high16 v5, 0x3f800000    # 1.0f

    #@f
    sub-float/2addr v4, v5

    #@10
    .line 323
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@13
    move-result v4

    #@14
    sub-float v4, v5, v4

    #@16
    mul-float/2addr v4, v2

    #@17
    const/high16 v2, 0x3f000000    # 0.5f

    #@19
    mul-float/2addr v2, v4

    #@1a
    sub-float/2addr p0, v2

    #@1b
    const/high16 v2, 0x42700000    # 60.0f

    #@1d
    div-float v2, v1, v2

    #@1f
    rem-float/2addr v2, v3

    #@20
    sub-float/2addr v2, v5

    #@21
    .line 325
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@24
    move-result v2

    #@25
    sub-float/2addr v5, v2

    #@26
    mul-float/2addr v5, v4

    #@27
    float-to-int v1, v1

    #@28
    .line 327
    div-int/lit8 v1, v1, 0x3c

    #@2a
    const/high16 v2, 0x437f0000    # 255.0f

    #@2c
    packed-switch v1, :pswitch_data_b6

    #@2f
    move p0, v0

    #@30
    move v1, p0

    #@31
    move v3, v1

    #@32
    goto :goto_a2

    #@33
    :pswitch_33
    add-float/2addr v4, p0

    #@34
    mul-float/2addr v4, v2

    #@35
    .line 359
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@38
    move-result v1

    #@39
    mul-float v3, p0, v2

    #@3b
    .line 360
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@3e
    move-result v3

    #@3f
    add-float/2addr v5, p0

    #@40
    mul-float/2addr v5, v2

    #@41
    .line 361
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@44
    move-result p0

    #@45
    goto :goto_a2

    #@46
    :pswitch_46
    add-float/2addr v5, p0

    #@47
    mul-float/2addr v5, v2

    #@48
    .line 353
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@4b
    move-result v1

    #@4c
    mul-float v3, p0, v2

    #@4e
    .line 354
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@51
    move-result v3

    #@52
    add-float/2addr v4, p0

    #@53
    mul-float/2addr v4, v2

    #@54
    .line 355
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@57
    move-result p0

    #@58
    goto :goto_a2

    #@59
    :pswitch_59
    mul-float v1, p0, v2

    #@5b
    .line 348
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@5e
    move-result v1

    #@5f
    add-float/2addr v5, p0

    #@60
    mul-float/2addr v5, v2

    #@61
    .line 349
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@64
    move-result v3

    #@65
    add-float/2addr v4, p0

    #@66
    mul-float/2addr v4, v2

    #@67
    .line 350
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@6a
    move-result p0

    #@6b
    goto :goto_a2

    #@6c
    :pswitch_6c
    mul-float v1, p0, v2

    #@6e
    .line 343
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@71
    move-result v1

    #@72
    add-float/2addr v4, p0

    #@73
    mul-float/2addr v4, v2

    #@74
    .line 344
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@77
    move-result v3

    #@78
    add-float/2addr v5, p0

    #@79
    mul-float/2addr v5, v2

    #@7a
    .line 345
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@7d
    move-result p0

    #@7e
    goto :goto_a2

    #@7f
    :pswitch_7f
    add-float/2addr v5, p0

    #@80
    mul-float/2addr v5, v2

    #@81
    .line 338
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@84
    move-result v1

    #@85
    add-float/2addr v4, p0

    #@86
    mul-float/2addr v4, v2

    #@87
    .line 339
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@8a
    move-result v3

    #@8b
    mul-float/2addr p0, v2

    #@8c
    .line 340
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@8f
    move-result p0

    #@90
    goto :goto_a2

    #@91
    :pswitch_91
    add-float/2addr v4, p0

    #@92
    mul-float/2addr v4, v2

    #@93
    .line 333
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@96
    move-result v1

    #@97
    add-float/2addr v5, p0

    #@98
    mul-float/2addr v5, v2

    #@99
    .line 334
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@9c
    move-result v3

    #@9d
    mul-float/2addr p0, v2

    #@9e
    .line 335
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@a1
    move-result p0

    #@a2
    :goto_a2
    const/16 v2, 0xff

    #@a4
    .line 365
    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    #@a7
    move-result v1

    #@a8
    .line 366
    invoke-static {v3, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    #@ab
    move-result v3

    #@ac
    .line 367
    invoke-static {p0, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    #@af
    move-result p0

    #@b0
    .line 369
    invoke-static {v1, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    #@b3
    move-result p0

    #@b4
    return p0

    #@b5
    nop

    #@b6
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_91
        :pswitch_7f
        :pswitch_6c
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .registers 14

    #@0
    .line 583
    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    #@3
    move-result-object v7

    #@4
    move-wide v0, p0

    #@5
    move-wide v2, p2

    #@6
    move-wide v4, p4

    #@7
    move-object v6, v7

    #@8
    .line 584
    invoke-static/range {v0 .. v6}, Landroidx/core/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    #@b
    const/4 p0, 0x0

    #@c
    .line 585
    aget-wide v0, v7, p0

    #@e
    const/4 p0, 0x1

    #@f
    aget-wide v2, v7, p0

    #@11
    const/4 p0, 0x2

    #@12
    aget-wide v4, v7, p0

    #@14
    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    #@17
    move-result p0

    #@18
    return p0
.end method

.method public static LABToXYZ(DDD[D)V
    .registers 26

    #@0
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    #@2
    add-double v2, p0, v0

    #@4
    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    #@6
    div-double/2addr v2, v4

    #@7
    const-wide v6, 0x407f400000000000L    # 500.0

    #@c
    div-double v6, p2, v6

    #@e
    add-double/2addr v6, v2

    #@f
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    #@11
    div-double v8, p4, v8

    #@13
    sub-double v8, v2, v8

    #@15
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    #@17
    .line 530
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@1a
    move-result-wide v12

    #@1b
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    #@20
    cmpl-double v16, v12, v14

    #@22
    const-wide v17, 0x408c3a6666666666L    # 903.3

    #@27
    if-lez v16, :cond_2a

    #@29
    goto :goto_2e

    #@2a
    :cond_2a
    mul-double/2addr v6, v4

    #@2b
    sub-double/2addr v6, v0

    #@2c
    div-double v12, v6, v17

    #@2e
    :goto_2e
    const-wide v6, 0x401fff9da4c11507L    # 7.9996247999999985

    #@33
    cmpl-double v6, p0, v6

    #@35
    if-lez v6, :cond_3c

    #@37
    .line 532
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@3a
    move-result-wide v2

    #@3b
    goto :goto_3e

    #@3c
    :cond_3c
    div-double v2, p0, v17

    #@3e
    .line 534
    :goto_3e
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@41
    move-result-wide v6

    #@42
    cmpl-double v10, v6, v14

    #@44
    if-lez v10, :cond_47

    #@46
    goto :goto_4b

    #@47
    :cond_47
    mul-double/2addr v8, v4

    #@48
    sub-double/2addr v8, v0

    #@49
    div-double v6, v8, v17

    #@4b
    :goto_4b
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    #@50
    mul-double/2addr v12, v0

    #@51
    const/4 v0, 0x0

    #@52
    .line 537
    aput-wide v12, p6, v0

    #@54
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@56
    mul-double/2addr v2, v0

    #@57
    const/4 v0, 0x1

    #@58
    .line 538
    aput-wide v2, p6, v0

    #@5a
    const-wide v0, 0x405b3883126e978dL    # 108.883

    #@5f
    mul-double/2addr v6, v0

    #@60
    const/4 v0, 0x2

    #@61
    .line 539
    aput-wide v6, p6, v0

    #@63
    return-void
.end method

.method public static RGBToHSL(III[F)V
    .registers 11

    #@0
    int-to-float p0, p0

    #@1
    const/high16 v0, 0x437f0000    # 255.0f

    #@3
    div-float/2addr p0, v0

    #@4
    int-to-float p1, p1

    #@5
    div-float/2addr p1, v0

    #@6
    int-to-float p2, p2

    #@7
    div-float/2addr p2, v0

    #@8
    .line 258
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    #@b
    move-result v0

    #@c
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    #@f
    move-result v0

    #@10
    .line 259
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    #@13
    move-result v1

    #@14
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    #@17
    move-result v1

    #@18
    sub-float v2, v0, v1

    #@1a
    add-float v3, v0, v1

    #@1c
    const/high16 v4, 0x40000000    # 2.0f

    #@1e
    div-float/2addr v3, v4

    #@1f
    cmpl-float v1, v0, v1

    #@21
    const/high16 v5, 0x3f800000    # 1.0f

    #@23
    const/4 v6, 0x0

    #@24
    if-nez v1, :cond_29

    #@26
    move p1, v6

    #@27
    move v2, p1

    #@28
    goto :goto_4a

    #@29
    :cond_29
    cmpl-float v1, v0, p0

    #@2b
    if-nez v1, :cond_33

    #@2d
    sub-float/2addr p1, p2

    #@2e
    div-float/2addr p1, v2

    #@2f
    const/high16 p0, 0x40c00000    # 6.0f

    #@31
    rem-float/2addr p1, p0

    #@32
    goto :goto_41

    #@33
    :cond_33
    cmpl-float v0, v0, p1

    #@35
    if-nez v0, :cond_3c

    #@37
    sub-float/2addr p2, p0

    #@38
    div-float/2addr p2, v2

    #@39
    add-float p1, p2, v4

    #@3b
    goto :goto_41

    #@3c
    :cond_3c
    sub-float/2addr p0, p1

    #@3d
    div-float/2addr p0, v2

    #@3e
    const/high16 p1, 0x40800000    # 4.0f

    #@40
    add-float/2addr p1, p0

    #@41
    :goto_41
    mul-float/2addr v4, v3

    #@42
    sub-float/2addr v4, v5

    #@43
    .line 277
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@46
    move-result p0

    #@47
    sub-float p0, v5, p0

    #@49
    div-float/2addr v2, p0

    #@4a
    :goto_4a
    const/high16 p0, 0x42700000    # 60.0f

    #@4c
    mul-float/2addr p1, p0

    #@4d
    const/high16 p0, 0x43b40000    # 360.0f

    #@4f
    rem-float/2addr p1, p0

    #@50
    cmpg-float p2, p1, v6

    #@52
    if-gez p2, :cond_55

    #@54
    add-float/2addr p1, p0

    #@55
    :cond_55
    const/4 p2, 0x0

    #@56
    .line 285
    invoke-static {p1, v6, p0}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    #@59
    move-result p0

    #@5a
    aput p0, p3, p2

    #@5c
    const/4 p0, 0x1

    #@5d
    .line 286
    invoke-static {v2, v6, v5}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    #@60
    move-result p1

    #@61
    aput p1, p3, p0

    #@63
    const/4 p0, 0x2

    #@64
    .line 287
    invoke-static {v3, v6, v5}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    #@67
    move-result p1

    #@68
    aput p1, p3, p0

    #@6a
    return-void
.end method

.method public static RGBToLAB(III[D)V
    .registers 11

    #@0
    .line 412
    invoke-static {p0, p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    #@3
    const/4 p0, 0x0

    #@4
    .line 414
    aget-wide v0, p3, p0

    #@6
    const/4 p0, 0x1

    #@7
    aget-wide v2, p3, p0

    #@9
    const/4 p0, 0x2

    #@a
    aget-wide v4, p3, p0

    #@c
    move-object v6, p3

    #@d
    invoke-static/range {v0 .. v6}, Landroidx/core/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    #@10
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .registers 20

    #@0
    move-object/from16 v0, p3

    #@2
    .line 457
    array-length v1, v0

    #@3
    const/4 v2, 0x3

    #@4
    if-ne v1, v2, :cond_ae

    #@6
    move/from16 v1, p0

    #@8
    int-to-double v1, v1

    #@9
    const-wide v3, 0x406fe00000000000L    # 255.0

    #@e
    div-double/2addr v1, v3

    #@f
    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    #@14
    cmpg-double v7, v1, v5

    #@16
    const-wide v8, 0x4029d70a3d70a3d7L    # 12.92

    #@1b
    const-wide v10, 0x4003333333333333L    # 2.4

    #@20
    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    #@25
    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    #@2a
    if-gez v7, :cond_2e

    #@2c
    div-double/2addr v1, v8

    #@2d
    goto :goto_34

    #@2e
    :cond_2e
    add-double/2addr v1, v14

    #@2f
    div-double/2addr v1, v12

    #@30
    .line 462
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@33
    move-result-wide v1

    #@34
    :goto_34
    move/from16 v7, p1

    #@36
    int-to-double v10, v7

    #@37
    div-double/2addr v10, v3

    #@38
    cmpg-double v7, v10, v5

    #@3a
    if-gez v7, :cond_3e

    #@3c
    div-double/2addr v10, v8

    #@3d
    goto :goto_49

    #@3e
    :cond_3e
    add-double/2addr v10, v14

    #@3f
    div-double/2addr v10, v12

    #@40
    const-wide v12, 0x4003333333333333L    # 2.4

    #@45
    .line 464
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@48
    move-result-wide v10

    #@49
    :goto_49
    move/from16 v7, p2

    #@4b
    int-to-double v12, v7

    #@4c
    div-double/2addr v12, v3

    #@4d
    cmpg-double v3, v12, v5

    #@4f
    if-gez v3, :cond_53

    #@51
    div-double/2addr v12, v8

    #@52
    goto :goto_63

    #@53
    :cond_53
    add-double/2addr v12, v14

    #@54
    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    #@59
    div-double/2addr v12, v3

    #@5a
    const-wide v3, 0x4003333333333333L    # 2.4

    #@5f
    .line 466
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->pow(DD)D

    #@62
    move-result-wide v12

    #@63
    :goto_63
    const-wide v3, 0x3fda64c2f837b4a2L    # 0.4124

    #@68
    mul-double/2addr v3, v1

    #@69
    const-wide v5, 0x3fd6e2eb1c432ca5L    # 0.3576

    #@6e
    mul-double/2addr v5, v10

    #@6f
    add-double/2addr v3, v5

    #@70
    const-wide v5, 0x3fc71a9fbe76c8b4L    # 0.1805

    #@75
    mul-double/2addr v5, v12

    #@76
    add-double/2addr v3, v5

    #@77
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    #@79
    mul-double/2addr v3, v5

    #@7a
    const/4 v7, 0x0

    #@7b
    .line 468
    aput-wide v3, v0, v7

    #@7d
    const-wide v3, 0x3fcb367a0f9096bcL    # 0.2126

    #@82
    mul-double/2addr v3, v1

    #@83
    const-wide v7, 0x3fe6e2eb1c432ca5L    # 0.7152

    #@88
    mul-double/2addr v7, v10

    #@89
    add-double/2addr v3, v7

    #@8a
    const-wide v7, 0x3fb27bb2fec56d5dL    # 0.0722

    #@8f
    mul-double/2addr v7, v12

    #@90
    add-double/2addr v3, v7

    #@91
    mul-double/2addr v3, v5

    #@92
    const/4 v7, 0x1

    #@93
    .line 469
    aput-wide v3, v0, v7

    #@95
    const-wide v3, 0x3f93c36113404ea5L    # 0.0193

    #@9a
    mul-double/2addr v1, v3

    #@9b
    const-wide v3, 0x3fbe83e425aee632L    # 0.1192

    #@a0
    mul-double/2addr v10, v3

    #@a1
    add-double/2addr v1, v10

    #@a2
    const-wide v3, 0x3fee6a7ef9db22d1L    # 0.9505

    #@a7
    mul-double/2addr v12, v3

    #@a8
    add-double/2addr v1, v12

    #@a9
    mul-double/2addr v1, v5

    #@aa
    const/4 v3, 0x2

    #@ab
    .line 470
    aput-wide v1, v0, v3

    #@ad
    return-void

    #@ae
    .line 458
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b0
    const-string v1, "outXyz must have a length of 3."

    #@b2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v0
.end method

.method public static XYZToColor(DDD)I
    .registers 23

    #@0
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    #@5
    mul-double v0, v0, p0

    #@7
    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    #@c
    mul-double v2, v2, p2

    #@e
    add-double/2addr v0, v2

    #@f
    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    #@14
    mul-double v2, v2, p4

    #@16
    add-double/2addr v0, v2

    #@17
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    #@19
    div-double/2addr v0, v2

    #@1a
    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    #@1f
    mul-double v4, v4, p0

    #@21
    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    #@26
    mul-double v6, v6, p2

    #@28
    add-double/2addr v4, v6

    #@29
    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    #@2e
    mul-double v6, v6, p4

    #@30
    add-double/2addr v4, v6

    #@31
    div-double/2addr v4, v2

    #@32
    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    #@37
    mul-double v6, v6, p0

    #@39
    const-wide v8, -0x4035e353f7ced917L    # -0.204

    #@3e
    mul-double v8, v8, p2

    #@40
    add-double/2addr v6, v8

    #@41
    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    #@46
    mul-double v8, v8, p4

    #@48
    add-double/2addr v6, v8

    #@49
    div-double/2addr v6, v2

    #@4a
    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    #@4f
    cmpl-double v8, v0, v2

    #@51
    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    #@56
    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    #@5b
    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    #@60
    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    #@65
    if-lez v8, :cond_6e

    #@67
    .line 561
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@6a
    move-result-wide v0

    #@6b
    mul-double/2addr v0, v13

    #@6c
    sub-double/2addr v0, v9

    #@6d
    goto :goto_6f

    #@6e
    :cond_6e
    mul-double/2addr v0, v15

    #@6f
    :goto_6f
    cmpl-double v8, v4, v2

    #@71
    if-lez v8, :cond_7a

    #@73
    .line 562
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@76
    move-result-wide v4

    #@77
    mul-double/2addr v4, v13

    #@78
    sub-double/2addr v4, v9

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    mul-double/2addr v4, v15

    #@7b
    :goto_7b
    cmpl-double v2, v6, v2

    #@7d
    if-lez v2, :cond_86

    #@7f
    .line 563
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@82
    move-result-wide v2

    #@83
    mul-double/2addr v2, v13

    #@84
    sub-double/2addr v2, v9

    #@85
    goto :goto_88

    #@86
    :cond_86
    mul-double v2, v6, v15

    #@88
    :goto_88
    const-wide v6, 0x406fe00000000000L    # 255.0

    #@8d
    mul-double/2addr v0, v6

    #@8e
    .line 566
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@91
    move-result-wide v0

    #@92
    long-to-int v0, v0

    #@93
    const/4 v1, 0x0

    #@94
    const/16 v8, 0xff

    #@96
    invoke-static {v0, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    #@99
    move-result v0

    #@9a
    mul-double/2addr v4, v6

    #@9b
    .line 567
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    #@9e
    move-result-wide v4

    #@9f
    long-to-int v4, v4

    #@a0
    invoke-static {v4, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    #@a3
    move-result v4

    #@a4
    mul-double/2addr v2, v6

    #@a5
    .line 568
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    #@a8
    move-result-wide v2

    #@a9
    long-to-int v2, v2

    #@aa
    invoke-static {v2, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    #@ad
    move-result v1

    #@ae
    .line 565
    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    #@b1
    move-result v0

    #@b2
    return v0
.end method

.method public static XYZToLAB(DDD[D)V
    .registers 11

    #@0
    .line 494
    array-length v0, p6

    #@1
    const/4 v1, 0x3

    #@2
    if-ne v0, v1, :cond_40

    #@4
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    #@9
    div-double/2addr p0, v0

    #@a
    .line 497
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    #@d
    move-result-wide p0

    #@e
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@10
    div-double/2addr p2, v0

    #@11
    .line 498
    invoke-static {p2, p3}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    #@14
    move-result-wide p2

    #@15
    const-wide v0, 0x405b3883126e978dL    # 108.883

    #@1a
    div-double/2addr p4, v0

    #@1b
    .line 499
    invoke-static {p4, p5}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    #@1e
    move-result-wide p4

    #@1f
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    #@21
    mul-double/2addr v0, p2

    #@22
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    #@24
    sub-double/2addr v0, v2

    #@25
    const-wide/16 v2, 0x0

    #@27
    .line 500
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    #@2a
    move-result-wide v0

    #@2b
    const/4 v2, 0x0

    #@2c
    aput-wide v0, p6, v2

    #@2e
    const-wide v0, 0x407f400000000000L    # 500.0

    #@33
    sub-double/2addr p0, p2

    #@34
    mul-double/2addr p0, v0

    #@35
    const/4 v0, 0x1

    #@36
    .line 501
    aput-wide p0, p6, v0

    #@38
    const-wide/high16 p0, 0x4069000000000000L    # 200.0

    #@3a
    sub-double/2addr p2, p4

    #@3b
    mul-double/2addr p2, p0

    #@3c
    const/4 p0, 0x2

    #@3d
    .line 502
    aput-wide p2, p6, p0

    #@3f
    return-void

    #@40
    .line 495
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@42
    const-string p1, "outLab must have a length of 3."

    #@44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw p0
.end method

.method public static blendARGB(IIF)I
    .registers 8

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    sub-float/2addr v0, p2

    #@3
    .line 629
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@6
    move-result v1

    #@7
    int-to-float v1, v1

    #@8
    mul-float/2addr v1, v0

    #@9
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@c
    move-result v2

    #@d
    int-to-float v2, v2

    #@e
    mul-float/2addr v2, p2

    #@f
    add-float/2addr v1, v2

    #@10
    .line 630
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@13
    move-result v2

    #@14
    int-to-float v2, v2

    #@15
    mul-float/2addr v2, v0

    #@16
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    #@19
    move-result v3

    #@1a
    int-to-float v3, v3

    #@1b
    mul-float/2addr v3, p2

    #@1c
    add-float/2addr v2, v3

    #@1d
    .line 631
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@20
    move-result v3

    #@21
    int-to-float v3, v3

    #@22
    mul-float/2addr v3, v0

    #@23
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    #@26
    move-result v4

    #@27
    int-to-float v4, v4

    #@28
    mul-float/2addr v4, p2

    #@29
    add-float/2addr v3, v4

    #@2a
    .line 632
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@2d
    move-result p0

    #@2e
    int-to-float p0, p0

    #@2f
    mul-float/2addr p0, v0

    #@30
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    #@33
    move-result p1

    #@34
    int-to-float p1, p1

    #@35
    mul-float/2addr p1, p2

    #@36
    add-float/2addr p0, p1

    #@37
    float-to-int p1, v1

    #@38
    float-to-int p2, v2

    #@39
    float-to-int v0, v3

    #@3a
    float-to-int p0, p0

    #@3b
    .line 633
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    #@3e
    move-result p0

    #@3f
    return p0
.end method

.method public static blendHSL([F[FF[F)V
    .registers 8

    #@0
    .line 651
    array-length v0, p3

    #@1
    const/4 v1, 0x3

    #@2
    if-ne v0, v1, :cond_27

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    sub-float/2addr v0, p2

    #@7
    const/4 v1, 0x0

    #@8
    .line 656
    aget v2, p0, v1

    #@a
    aget v3, p1, v1

    #@c
    invoke-static {v2, v3, p2}, Landroidx/core/graphics/ColorUtils;->circularInterpolate(FFF)F

    #@f
    move-result v2

    #@10
    aput v2, p3, v1

    #@12
    const/4 v1, 0x1

    #@13
    .line 657
    aget v2, p0, v1

    #@15
    mul-float/2addr v2, v0

    #@16
    aget v3, p1, v1

    #@18
    mul-float/2addr v3, p2

    #@19
    add-float/2addr v2, v3

    #@1a
    aput v2, p3, v1

    #@1c
    const/4 v1, 0x2

    #@1d
    .line 658
    aget p0, p0, v1

    #@1f
    mul-float/2addr p0, v0

    #@20
    aget p1, p1, v1

    #@22
    mul-float/2addr p1, p2

    #@23
    add-float/2addr p0, p1

    #@24
    aput p0, p3, v1

    #@26
    return-void

    #@27
    .line 652
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string p1, "result must have a length of 3."

    #@2b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw p0
.end method

.method public static blendLAB([D[DD[D)V
    .registers 12

    #@0
    .line 675
    array-length v0, p4

    #@1
    const/4 v1, 0x3

    #@2
    if-ne v0, v1, :cond_26

    #@4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@6
    sub-double/2addr v0, p2

    #@7
    const/4 v2, 0x0

    #@8
    .line 679
    aget-wide v3, p0, v2

    #@a
    mul-double/2addr v3, v0

    #@b
    aget-wide v5, p1, v2

    #@d
    mul-double/2addr v5, p2

    #@e
    add-double/2addr v3, v5

    #@f
    aput-wide v3, p4, v2

    #@11
    const/4 v2, 0x1

    #@12
    .line 680
    aget-wide v3, p0, v2

    #@14
    mul-double/2addr v3, v0

    #@15
    aget-wide v5, p1, v2

    #@17
    mul-double/2addr v5, p2

    #@18
    add-double/2addr v3, v5

    #@19
    aput-wide v3, p4, v2

    #@1b
    const/4 v2, 0x2

    #@1c
    .line 681
    aget-wide v3, p0, v2

    #@1e
    mul-double/2addr v3, v0

    #@1f
    aget-wide p0, p1, v2

    #@21
    mul-double/2addr p0, p2

    #@22
    add-double/2addr v3, p0

    #@23
    aput-wide v3, p4, v2

    #@25
    return-void

    #@26
    .line 676
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string p1, "outResult must have a length of 3."

    #@2a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw p0
.end method

.method public static calculateContrast(II)D
    .registers 6

    #@0
    .line 172
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xff

    #@6
    if-ne v0, v1, :cond_2b

    #@8
    .line 176
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@b
    move-result v0

    #@c
    if-ge v0, v1, :cond_12

    #@e
    .line 178
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@11
    move-result p0

    #@12
    .line 181
    :cond_12
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    #@15
    move-result-wide v0

    #@16
    const-wide v2, 0x3fa999999999999aL    # 0.05

    #@1b
    add-double/2addr v0, v2

    #@1c
    .line 182
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    #@1f
    move-result-wide p0

    #@20
    add-double/2addr p0, v2

    #@21
    .line 185
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    #@24
    move-result-wide v2

    #@25
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    #@28
    move-result-wide p0

    #@29
    div-double/2addr v2, p0

    #@2a
    return-wide v2

    #@2b
    .line 173
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v0, Ljava/lang/StringBuilder;

    #@2f
    const-string v1, "background can not be translucent: #"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@37
    move-result-object p1

    #@38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw p0
.end method

.method public static calculateLuminance(I)D
    .registers 6

    #@0
    .line 158
    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    #@3
    move-result-object v0

    #@4
    .line 159
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToXYZ(I[D)V

    #@7
    const/4 p0, 0x1

    #@8
    .line 161
    aget-wide v1, v0, p0

    #@a
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    #@c
    div-double/2addr v1, v3

    #@d
    return-wide v1
.end method

.method public static calculateMinimumAlpha(IIF)I
    .registers 11

    #@0
    .line 200
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xff

    #@6
    if-ne v0, v1, :cond_39

    #@8
    .line 206
    invoke-static {p0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@b
    move-result v0

    #@c
    .line 207
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    #@f
    move-result-wide v2

    #@10
    float-to-double v4, p2

    #@11
    cmpg-double p2, v2, v4

    #@13
    if-gez p2, :cond_17

    #@15
    const/4 p0, -0x1

    #@16
    return p0

    #@17
    :cond_17
    const/4 p2, 0x0

    #@18
    move v0, p2

    #@19
    :goto_19
    const/16 v2, 0xa

    #@1b
    if-gt p2, v2, :cond_38

    #@1d
    sub-int v2, v1, v0

    #@1f
    const/4 v3, 0x1

    #@20
    if-le v2, v3, :cond_38

    #@22
    add-int v2, v0, v1

    #@24
    .line 220
    div-int/lit8 v2, v2, 0x2

    #@26
    .line 222
    invoke-static {p0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@29
    move-result v3

    #@2a
    .line 223
    invoke-static {v3, p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    #@2d
    move-result-wide v6

    #@2e
    cmpg-double v3, v6, v4

    #@30
    if-gez v3, :cond_34

    #@32
    move v0, v2

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v1, v2

    #@35
    :goto_35
    add-int/lit8 p2, p2, 0x1

    #@37
    goto :goto_19

    #@38
    :cond_38
    return v1

    #@39
    .line 201
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@3b
    new-instance p2, Ljava/lang/StringBuilder;

    #@3d
    const-string v0, "background can not be translucent: #"

    #@3f
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@42
    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@45
    move-result-object p1

    #@46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object p1

    #@4e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw p0
.end method

.method static circularInterpolate(FFF)F
    .registers 5

    #@0
    sub-float v0, p1, p0

    #@2
    .line 686
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x43340000    # 180.0f

    #@8
    cmpl-float v0, v0, v1

    #@a
    const/high16 v1, 0x43b40000    # 360.0f

    #@c
    if-lez v0, :cond_15

    #@e
    cmpl-float v0, p1, p0

    #@10
    if-lez v0, :cond_14

    #@12
    add-float/2addr p0, v1

    #@13
    goto :goto_15

    #@14
    :cond_14
    add-float/2addr p1, v1

    #@15
    :cond_15
    :goto_15
    sub-float/2addr p1, p0

    #@16
    mul-float/2addr p1, p2

    #@17
    add-float/2addr p0, p1

    #@18
    rem-float/2addr p0, v1

    #@19
    return p0
.end method

.method public static colorToHSL(I[F)V
    .registers 4

    #@0
    .line 302
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@7
    move-result v1

    #@8
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@b
    move-result p0

    #@c
    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    #@f
    return-void
.end method

.method public static colorToLAB(I[D)V
    .registers 4

    #@0
    .line 391
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@7
    move-result v1

    #@8
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@b
    move-result p0

    #@c
    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToLAB(III[D)V

    #@f
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .registers 4

    #@0
    .line 434
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@7
    move-result v1

    #@8
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@b
    move-result p0

    #@c
    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    #@f
    return-void
.end method

.method private static compositeAlpha(II)I
    .registers 2

    #@0
    rsub-int p1, p1, 0xff

    #@2
    rsub-int p0, p0, 0xff

    #@4
    mul-int/2addr p1, p0

    #@5
    .line 144
    div-int/lit16 p1, p1, 0xff

    #@7
    rsub-int p0, p1, 0xff

    #@9
    return p0
.end method

.method public static compositeColors(II)I
    .registers 8

    #@0
    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    .line 55
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@7
    move-result v1

    #@8
    .line 56
    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->compositeAlpha(II)I

    #@b
    move-result v2

    #@c
    .line 58
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@f
    move-result v3

    #@10
    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    #@13
    move-result v4

    #@14
    .line 58
    invoke-static {v3, v1, v4, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    #@17
    move-result v3

    #@18
    .line 60
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@1b
    move-result v4

    #@1c
    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    #@1f
    move-result v5

    #@20
    .line 60
    invoke-static {v4, v1, v5, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    #@23
    move-result v4

    #@24
    .line 62
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@27
    move-result p0

    #@28
    .line 63
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    #@2b
    move-result p1

    #@2c
    .line 62
    invoke-static {p0, v1, p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    #@2f
    move-result p0

    #@30
    .line 65
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    #@33
    move-result p0

    #@34
    return p0
.end method

.method public static compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;
    .registers 2

    #@0
    .line 93
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils$Api26Impl;->compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static compositeComponent(IIIII)I
    .registers 5

    #@0
    if-nez p4, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    :cond_4
    mul-int/lit16 p0, p0, 0xff

    #@6
    mul-int/2addr p0, p1

    #@7
    mul-int/2addr p2, p3

    #@8
    rsub-int p1, p1, 0xff

    #@a
    mul-int/2addr p2, p1

    #@b
    add-int/2addr p0, p2

    #@c
    mul-int/lit16 p4, p4, 0xff

    #@e
    .line 149
    div-int/2addr p0, p4

    #@f
    return p0
.end method

.method private static constrain(FFF)F
    .registers 4

    #@0
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_5

    #@4
    goto :goto_9

    #@5
    .line 600
    :cond_5
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    #@8
    move-result p1

    #@9
    :goto_9
    return p1
.end method

.method private static constrain(III)I
    .registers 3

    #@0
    if-ge p0, p1, :cond_3

    #@2
    goto :goto_7

    #@3
    .line 605
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    #@6
    move-result p1

    #@7
    :goto_7
    return p1
.end method

.method public static distanceEuclidean([D[D)D
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    .line 593
    aget-wide v1, p0, v0

    #@3
    aget-wide v3, p1, v0

    #@5
    sub-double/2addr v1, v3

    #@6
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    #@8
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    #@b
    move-result-wide v0

    #@c
    const/4 v2, 0x1

    #@d
    aget-wide v5, p0, v2

    #@f
    aget-wide v7, p1, v2

    #@11
    sub-double/2addr v5, v7

    #@12
    .line 594
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    #@15
    move-result-wide v5

    #@16
    add-double/2addr v0, v5

    #@17
    const/4 v2, 0x2

    #@18
    aget-wide v5, p0, v2

    #@1a
    aget-wide p0, p1, v2

    #@1c
    sub-double/2addr v5, p0

    #@1d
    .line 595
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    #@20
    move-result-wide p0

    #@21
    add-double/2addr v0, p0

    #@22
    .line 593
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@25
    move-result-wide p0

    #@26
    return-wide p0
.end method

.method private static getTempDouble3Array()[D
    .registers 2

    #@0
    .line 697
    sget-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, [D

    #@8
    if-nez v1, :cond_10

    #@a
    const/4 v1, 0x3

    #@b
    new-array v1, v1, [D

    #@d
    .line 700
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@10
    :cond_10
    return-object v1
.end method

.method private static pivotXyzComponent(D)D
    .registers 4

    #@0
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    #@5
    cmpl-double v0, p0, v0

    #@7
    if-lez v0, :cond_13

    #@9
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    #@e
    .line 610
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@11
    move-result-wide p0

    #@12
    goto :goto_1f

    #@13
    :cond_13
    const-wide v0, 0x408c3a6666666666L    # 903.3

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
    :goto_1f
    return-wide p0
.end method

.method public static setAlphaComponent(II)I
    .registers 3

    #@0
    if-ltz p1, :cond_e

    #@2
    const/16 v0, 0xff

    #@4
    if-gt p1, v0, :cond_e

    #@6
    const v0, 0xffffff

    #@9
    and-int/2addr p0, v0

    #@a
    shl-int/lit8 p1, p1, 0x18

    #@c
    or-int/2addr p0, p1

    #@d
    return p0

    #@e
    .line 379
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string p1, "alpha must be between 0 and 255."

    #@12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw p0
.end method
