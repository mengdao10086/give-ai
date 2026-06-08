.class Landroidx/appcompat/app/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L

.field private static sInstance:Landroidx/appcompat/app/TwilightCalculator;


# instance fields
.field public state:I

.field public sunrise:J

.field public sunset:J


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getInstance()Landroidx/appcompat/app/TwilightCalculator;
    .registers 1

    #@0
    .line 31
    sget-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 32
    new-instance v0, Landroidx/appcompat/app/TwilightCalculator;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    #@9
    sput-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    #@b
    .line 34
    :cond_b
    sget-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    #@d
    return-object v0
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .registers 22

    #@0
    move-object v0, p0

    #@1
    const-wide v1, 0xdc6d62da00L

    #@6
    sub-long v3, p1, v1

    #@8
    long-to-float v3, v3

    #@9
    const v4, 0x4ca4cb80    # 8.64E7f

    #@c
    div-float/2addr v3, v4

    #@d
    const v4, 0x3c8ceb25

    #@10
    mul-float/2addr v4, v3

    #@11
    const v5, 0x40c7ae92

    #@14
    add-float/2addr v4, v5

    #@15
    float-to-double v5, v4

    #@16
    const-wide v7, 0x3fa11c5fc0000000L    # 0.03341960161924362

    #@1b
    .line 95
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    #@1e
    move-result-wide v9

    #@1f
    mul-double/2addr v9, v7

    #@20
    add-double/2addr v9, v5

    #@21
    const/high16 v7, 0x40000000    # 2.0f

    #@23
    mul-float/2addr v7, v4

    #@24
    float-to-double v7, v7

    #@25
    .line 96
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    #@28
    move-result-wide v7

    #@29
    const-wide v11, 0x3f36e05b00000000L    # 3.4906598739326E-4

    #@2e
    mul-double/2addr v7, v11

    #@2f
    add-double/2addr v9, v7

    #@30
    const/high16 v7, 0x40400000    # 3.0f

    #@32
    mul-float/2addr v4, v7

    #@33
    float-to-double v7, v4

    #@34
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    #@37
    move-result-wide v7

    #@38
    const-wide v11, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    #@3d
    mul-double/2addr v7, v11

    #@3e
    add-double/2addr v9, v7

    #@3f
    const-wide v7, 0x3ffcbed85e1ce332L    # 1.796593063

    #@44
    add-double/2addr v9, v7

    #@45
    const-wide v7, 0x400921fb54442d18L    # Math.PI

    #@4a
    add-double/2addr v9, v7

    #@4b
    move-wide/from16 v7, p5

    #@4d
    neg-double v7, v7

    #@4e
    const-wide v11, 0x4076800000000000L    # 360.0

    #@53
    div-double/2addr v7, v11

    #@54
    const v4, 0x3a6bedfa    # 9.0E-4f

    #@57
    sub-float/2addr v3, v4

    #@58
    float-to-double v11, v3

    #@59
    sub-double/2addr v11, v7

    #@5a
    .line 103
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    #@5d
    move-result-wide v11

    #@5e
    long-to-float v3, v11

    #@5f
    add-float/2addr v3, v4

    #@60
    float-to-double v3, v3

    #@61
    add-double/2addr v3, v7

    #@62
    const-wide v7, 0x3f75b573eab367a1L    # 0.0053

    #@67
    .line 104
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    #@6a
    move-result-wide v5

    #@6b
    mul-double/2addr v5, v7

    #@6c
    add-double/2addr v3, v5

    #@6d
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    #@6f
    mul-double/2addr v5, v9

    #@70
    .line 105
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    #@73
    move-result-wide v5

    #@74
    const-wide v7, -0x4083bcd35a858794L    # -0.0069

    #@79
    mul-double/2addr v5, v7

    #@7a
    add-double/2addr v3, v5

    #@7b
    .line 108
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    #@7e
    move-result-wide v5

    #@7f
    const-wide v7, 0x3fda31a380000000L    # 0.4092797040939331

    #@84
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    #@87
    move-result-wide v7

    #@88
    mul-double/2addr v5, v7

    #@89
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    #@8c
    move-result-wide v5

    #@8d
    const-wide v7, 0x3f91df46a0000000L    # 0.01745329238474369

    #@92
    mul-double v7, v7, p3

    #@94
    const-wide v9, -0x4045311600000000L    # -0.10471975803375244

    #@99
    .line 112
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    #@9c
    move-result-wide v9

    #@9d
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    #@a0
    move-result-wide v11

    #@a1
    .line 113
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    #@a4
    move-result-wide v13

    #@a5
    mul-double/2addr v11, v13

    #@a6
    sub-double/2addr v9, v11

    #@a7
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    #@aa
    move-result-wide v7

    #@ab
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    #@ae
    move-result-wide v5

    #@af
    mul-double/2addr v7, v5

    #@b0
    div-double/2addr v9, v7

    #@b1
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    #@b3
    cmpl-double v5, v9, v5

    #@b5
    const/4 v6, 0x1

    #@b6
    const-wide/16 v7, -0x1

    #@b8
    if-ltz v5, :cond_c1

    #@ba
    .line 117
    iput v6, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    #@bc
    .line 118
    iput-wide v7, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    #@be
    .line 119
    iput-wide v7, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    #@c0
    return-void

    #@c1
    :cond_c1
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    #@c3
    cmpg-double v5, v9, v11

    #@c5
    const/4 v11, 0x0

    #@c6
    if-gtz v5, :cond_cf

    #@c8
    .line 122
    iput v11, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    #@ca
    .line 123
    iput-wide v7, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    #@cc
    .line 124
    iput-wide v7, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    #@ce
    return-void

    #@cf
    .line 128
    :cond_cf
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    #@d2
    move-result-wide v7

    #@d3
    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    #@d8
    div-double/2addr v7, v9

    #@d9
    double-to-float v5, v7

    #@da
    float-to-double v7, v5

    #@db
    add-double v9, v3, v7

    #@dd
    const-wide v12, 0x4194997000000000L    # 8.64E7

    #@e2
    mul-double/2addr v9, v12

    #@e3
    .line 130
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    #@e6
    move-result-wide v9

    #@e7
    add-long/2addr v9, v1

    #@e8
    iput-wide v9, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    #@ea
    sub-double/2addr v3, v7

    #@eb
    mul-double/2addr v3, v12

    #@ec
    .line 131
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    #@ef
    move-result-wide v3

    #@f0
    add-long/2addr v3, v1

    #@f1
    iput-wide v3, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    #@f3
    cmp-long v1, v3, p1

    #@f5
    if-gez v1, :cond_100

    #@f7
    .line 133
    iget-wide v1, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    #@f9
    cmp-long v1, v1, p1

    #@fb
    if-lez v1, :cond_100

    #@fd
    .line 134
    iput v11, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    #@ff
    goto :goto_102

    #@100
    .line 136
    :cond_100
    iput v6, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    #@102
    :goto_102
    return-void
.end method
