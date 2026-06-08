.class final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field private final mAw:F

.field private final mC:F

.field private final mFl:F

.field private final mFlRoot:F

.field private final mN:F

.field private final mNbb:F

.field private final mNc:F

.field private final mNcb:F

.field private final mRgbD:[F

.field private final mZ:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    .line 53
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    #@2
    const/high16 v1, 0x42480000    # 50.0f

    #@4
    .line 56
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    #@7
    move-result v2

    #@8
    float-to-double v2, v2

    #@9
    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    #@e
    mul-double/2addr v2, v4

    #@f
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    #@11
    div-double/2addr v2, v4

    #@12
    double-to-float v2, v2

    #@13
    const/high16 v3, 0x40000000    # 2.0f

    #@15
    const/4 v4, 0x0

    #@16
    .line 54
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/content/res/ViewingConditions;->make([FFFFZ)Landroidx/core/content/res/ViewingConditions;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    #@1c
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .registers 11

    #@0
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    #@5
    .line 114
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    #@7
    .line 115
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    #@9
    .line 116
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    #@b
    .line 117
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    #@d
    .line 118
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    #@f
    .line 119
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    #@11
    .line 120
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    #@13
    .line 121
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    #@15
    .line 122
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    #@17
    return-void
.end method

.method static make([FFFFZ)Landroidx/core/content/res/ViewingConditions;
    .registers 27

    #@0
    move/from16 v0, p1

    #@2
    .line 130
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    #@4
    const/4 v2, 0x0

    #@5
    .line 132
    aget v3, p0, v2

    #@7
    aget-object v4, v1, v2

    #@9
    aget v5, v4, v2

    #@b
    mul-float/2addr v5, v3

    #@c
    const/4 v6, 0x1

    #@d
    aget v7, p0, v6

    #@f
    aget v8, v4, v6

    #@11
    mul-float/2addr v8, v7

    #@12
    add-float/2addr v5, v8

    #@13
    const/4 v8, 0x2

    #@14
    aget v9, p0, v8

    #@16
    aget v4, v4, v8

    #@18
    mul-float/2addr v4, v9

    #@19
    add-float/2addr v5, v4

    #@1a
    .line 133
    aget-object v4, v1, v6

    #@1c
    aget v10, v4, v2

    #@1e
    mul-float/2addr v10, v3

    #@1f
    aget v11, v4, v6

    #@21
    mul-float/2addr v11, v7

    #@22
    add-float/2addr v10, v11

    #@23
    aget v4, v4, v8

    #@25
    mul-float/2addr v4, v9

    #@26
    add-float/2addr v10, v4

    #@27
    .line 134
    aget-object v1, v1, v8

    #@29
    aget v4, v1, v2

    #@2b
    mul-float/2addr v3, v4

    #@2c
    aget v4, v1, v6

    #@2e
    mul-float/2addr v7, v4

    #@2f
    add-float/2addr v3, v7

    #@30
    aget v1, v1, v8

    #@32
    mul-float/2addr v9, v1

    #@33
    add-float/2addr v3, v9

    #@34
    const/high16 v1, 0x41200000    # 10.0f

    #@36
    div-float v4, p3, v1

    #@38
    const v7, 0x3f4ccccd    # 0.8f

    #@3b
    add-float/2addr v4, v7

    #@3c
    float-to-double v11, v4

    #@3d
    const-wide v13, 0x3feccccccccccccdL    # 0.9

    #@42
    cmpl-double v9, v11, v13

    #@44
    const v11, 0x3f170a3d    # 0.59f

    #@47
    if-ltz v9, :cond_57

    #@49
    const v7, 0x3f666666    # 0.9f

    #@4c
    sub-float v7, v4, v7

    #@4e
    mul-float/2addr v7, v1

    #@4f
    const v1, 0x3f30a3d7    # 0.69f

    #@52
    .line 139
    invoke-static {v11, v1, v7}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    #@55
    move-result v1

    #@56
    goto :goto_61

    #@57
    :cond_57
    sub-float v7, v4, v7

    #@59
    mul-float/2addr v7, v1

    #@5a
    const v1, 0x3f066666    # 0.525f

    #@5d
    invoke-static {v1, v11, v7}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    #@60
    move-result v1

    #@61
    :goto_61
    move/from16 v16, v1

    #@63
    const/high16 v1, 0x3f800000    # 1.0f

    #@65
    if-eqz p4, :cond_69

    #@67
    move v7, v1

    #@68
    goto :goto_7d

    #@69
    :cond_69
    neg-float v7, v0

    #@6a
    const/high16 v9, 0x42280000    # 42.0f

    #@6c
    sub-float/2addr v7, v9

    #@6d
    const/high16 v9, 0x42b80000    # 92.0f

    #@6f
    div-float/2addr v7, v9

    #@70
    float-to-double v11, v7

    #@71
    .line 142
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    #@74
    move-result-wide v11

    #@75
    double-to-float v7, v11

    #@76
    const v9, 0x3e8e38e4

    #@79
    mul-float/2addr v7, v9

    #@7a
    sub-float v7, v1, v7

    #@7c
    mul-float/2addr v7, v4

    #@7d
    :goto_7d
    float-to-double v11, v7

    #@7e
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    #@80
    cmpl-double v9, v11, v13

    #@82
    if-lez v9, :cond_86

    #@84
    move v7, v1

    #@85
    goto :goto_8d

    #@86
    :cond_86
    const-wide/16 v13, 0x0

    #@88
    cmpg-double v9, v11, v13

    #@8a
    if-gez v9, :cond_8d

    #@8c
    const/4 v7, 0x0

    #@8d
    :cond_8d
    :goto_8d
    const/4 v9, 0x3

    #@8e
    new-array v15, v9, [F

    #@90
    const/high16 v11, 0x42c80000    # 100.0f

    #@92
    div-float v12, v11, v5

    #@94
    mul-float/2addr v12, v7

    #@95
    add-float/2addr v12, v1

    #@96
    sub-float/2addr v12, v7

    #@97
    aput v12, v15, v2

    #@99
    div-float v12, v11, v10

    #@9b
    mul-float/2addr v12, v7

    #@9c
    add-float/2addr v12, v1

    #@9d
    sub-float/2addr v12, v7

    #@9e
    aput v12, v15, v6

    #@a0
    div-float/2addr v11, v3

    #@a1
    mul-float/2addr v11, v7

    #@a2
    add-float/2addr v11, v1

    #@a3
    sub-float/2addr v11, v7

    #@a4
    aput v11, v15, v8

    #@a6
    const/high16 v7, 0x40a00000    # 5.0f

    #@a8
    mul-float/2addr v7, v0

    #@a9
    add-float/2addr v7, v1

    #@aa
    div-float v7, v1, v7

    #@ac
    mul-float v11, v7, v7

    #@ae
    mul-float/2addr v11, v7

    #@af
    mul-float/2addr v11, v7

    #@b0
    sub-float/2addr v1, v11

    #@b1
    mul-float/2addr v11, v0

    #@b2
    const v7, 0x3dcccccd    # 0.1f

    #@b5
    mul-float/2addr v7, v1

    #@b6
    mul-float/2addr v7, v1

    #@b7
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    #@b9
    float-to-double v0, v0

    #@ba
    mul-double/2addr v0, v12

    #@bb
    .line 165
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    #@be
    move-result-wide v0

    #@bf
    double-to-float v0, v0

    #@c0
    mul-float/2addr v7, v0

    #@c1
    add-float v0, v11, v7

    #@c3
    .line 169
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    #@c6
    move-result v1

    #@c7
    aget v7, p0, v6

    #@c9
    div-float v12, v1, v7

    #@cb
    float-to-double v13, v12

    #@cc
    .line 173
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    #@cf
    move-result-wide v6

    #@d0
    double-to-float v6, v6

    #@d1
    const v7, 0x3fbd70a4    # 1.48f

    #@d4
    add-float v21, v6, v7

    #@d6
    const-wide v6, 0x3fc999999999999aL    # 0.2

    #@db
    .line 176
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@de
    move-result-wide v6

    #@df
    double-to-float v6, v6

    #@e0
    const v7, 0x3f39999a    # 0.725f

    #@e3
    div-float v6, v7, v6

    #@e5
    new-array v7, v9, [F

    #@e7
    aget v9, v15, v2

    #@e9
    mul-float/2addr v9, v0

    #@ea
    mul-float/2addr v9, v5

    #@eb
    float-to-double v13, v9

    #@ec
    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    #@ee
    div-double v13, v13, v17

    #@f0
    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    #@f5
    .line 181
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@f8
    move-result-wide v13

    #@f9
    double-to-float v11, v13

    #@fa
    aput v11, v7, v2

    #@fc
    const/4 v1, 0x1

    #@fd
    aget v11, v15, v1

    #@ff
    mul-float/2addr v11, v0

    #@100
    mul-float/2addr v11, v10

    #@101
    float-to-double v10, v11

    #@102
    div-double v10, v10, v17

    #@104
    .line 182
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@107
    move-result-wide v10

    #@108
    double-to-float v10, v10

    #@109
    aput v10, v7, v1

    #@10b
    const/4 v5, 0x2

    #@10c
    aget v10, v15, v5

    #@10e
    mul-float/2addr v10, v0

    #@10f
    mul-float/2addr v10, v3

    #@110
    float-to-double v10, v10

    #@111
    div-double v10, v10, v17

    #@113
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@116
    move-result-wide v8

    #@117
    double-to-float v3, v8

    #@118
    aput v3, v7, v5

    #@11a
    aget v2, v7, v2

    #@11c
    const/high16 v5, 0x43c80000    # 400.0f

    #@11e
    mul-float v8, v2, v5

    #@120
    const v9, 0x41d90a3d    # 27.13f

    #@123
    add-float/2addr v2, v9

    #@124
    div-float/2addr v8, v2

    #@125
    const/4 v1, 0x1

    #@126
    aget v1, v7, v1

    #@128
    mul-float v2, v1, v5

    #@12a
    add-float/2addr v1, v9

    #@12b
    div-float/2addr v2, v1

    #@12c
    mul-float/2addr v5, v3

    #@12d
    add-float/2addr v3, v9

    #@12e
    div-float/2addr v5, v3

    #@12f
    const/high16 v1, 0x40000000    # 2.0f

    #@131
    mul-float/2addr v8, v1

    #@132
    add-float/2addr v8, v2

    #@133
    const v1, 0x3d4ccccd    # 0.05f

    #@136
    mul-float/2addr v5, v1

    #@137
    add-float/2addr v8, v5

    #@138
    mul-float v13, v8, v6

    #@13a
    .line 191
    new-instance v1, Landroidx/core/content/res/ViewingConditions;

    #@13c
    float-to-double v2, v0

    #@13d
    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    #@13f
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    #@142
    move-result-wide v2

    #@143
    double-to-float v2, v2

    #@144
    move-object v11, v1

    #@145
    move v14, v6

    #@146
    move-object v3, v15

    #@147
    move v15, v6

    #@148
    move/from16 v17, v4

    #@14a
    move-object/from16 v18, v3

    #@14c
    move/from16 v19, v0

    #@14e
    move/from16 v20, v2

    #@150
    invoke-direct/range {v11 .. v21}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    #@153
    return-object v1
.end method


# virtual methods
.method getAw()F
    .registers 2

    #@0
    .line 71
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    #@2
    return v0
.end method

.method getC()F
    .registers 2

    #@0
    .line 87
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    #@2
    return v0
.end method

.method getFl()F
    .registers 2

    #@0
    .line 100
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    #@2
    return v0
.end method

.method getFlRoot()F
    .registers 2

    #@0
    .line 104
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    #@2
    return v0
.end method

.method getN()F
    .registers 2

    #@0
    .line 75
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    #@2
    return v0
.end method

.method getNbb()F
    .registers 2

    #@0
    .line 79
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    #@2
    return v0
.end method

.method getNc()F
    .registers 2

    #@0
    .line 91
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    #@2
    return v0
.end method

.method getNcb()F
    .registers 2

    #@0
    .line 83
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    #@2
    return v0
.end method

.method getRgbD()[F
    .registers 2

    #@0
    .line 96
    iget-object v0, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    #@2
    return-object v0
.end method

.method getZ()F
    .registers 2

    #@0
    .line 108
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    #@2
    return v0
.end method
