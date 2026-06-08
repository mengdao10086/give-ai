.class Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "CamColor.java"


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final mAstar:F

.field private final mBstar:F

.field private final mChroma:F

.field private final mHue:F

.field private final mJ:F

.field private final mJstar:F

.field private final mM:F

.field private final mQ:F

.field private final mS:F


# direct methods
.method constructor <init>(FFFFFFFFF)V
    .registers 10

    #@0
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 129
    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    #@5
    .line 130
    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    #@7
    .line 131
    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    #@9
    .line 132
    iput p4, p0, Landroidx/core/content/res/CamColor;->mQ:F

    #@b
    .line 133
    iput p5, p0, Landroidx/core/content/res/CamColor;->mM:F

    #@d
    .line 134
    iput p6, p0, Landroidx/core/content/res/CamColor;->mS:F

    #@f
    .line 135
    iput p7, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    #@11
    .line 136
    iput p8, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    #@13
    .line 137
    iput p9, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    #@15
    return-void
.end method

.method private static findCamByJ(FFF)Landroidx/core/content/res/CamColor;
    .registers 15

    #@0
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x42c80000    # 100.0f

    #@3
    const/high16 v2, 0x447a0000    # 1000.0f

    #@5
    const/4 v3, 0x0

    #@6
    move v5, v0

    #@7
    move-object v4, v3

    #@8
    move v3, v2

    #@9
    :goto_9
    sub-float v6, v5, v1

    #@b
    .line 490
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@e
    move-result v6

    #@f
    const v7, 0x3c23d70a    # 0.01f

    #@12
    cmpl-float v6, v6, v7

    #@14
    if-lez v6, :cond_63

    #@16
    sub-float v6, v1, v5

    #@18
    const/high16 v7, 0x40000000    # 2.0f

    #@1a
    div-float/2addr v6, v7

    #@1b
    add-float/2addr v6, v5

    #@1c
    .line 493
    invoke-static {v6, p1, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    #@1f
    move-result-object v7

    #@20
    .line 497
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->viewedInSrgb()I

    #@23
    move-result v7

    #@24
    .line 498
    invoke-static {v7}, Landroidx/core/content/res/CamUtils;->lStarFromInt(I)F

    #@27
    move-result v8

    #@28
    sub-float v9, p2, v8

    #@2a
    .line 499
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@2d
    move-result v9

    #@2e
    const v10, 0x3e4ccccd    # 0.2f

    #@31
    cmpg-float v10, v9, v10

    #@33
    if-gez v10, :cond_52

    #@35
    .line 507
    invoke-static {v7}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    #@38
    move-result-object v7

    #@39
    .line 509
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getJ()F

    #@3c
    move-result v10

    #@3d
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getChroma()F

    #@40
    move-result v11

    #@41
    invoke-static {v10, v11, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    #@44
    move-result-object v10

    #@45
    .line 508
    invoke-virtual {v7, v10}, Landroidx/core/content/res/CamColor;->distance(Landroidx/core/content/res/CamColor;)F

    #@48
    move-result v10

    #@49
    const/high16 v11, 0x3f800000    # 1.0f

    #@4b
    cmpg-float v11, v10, v11

    #@4d
    if-gtz v11, :cond_52

    #@4f
    move-object v4, v7

    #@50
    move v2, v9

    #@51
    move v3, v10

    #@52
    :cond_52
    cmpl-float v7, v2, v0

    #@54
    if-nez v7, :cond_5b

    #@56
    cmpl-float v7, v3, v0

    #@58
    if-nez v7, :cond_5b

    #@5a
    goto :goto_63

    #@5b
    :cond_5b
    cmpg-float v7, v8, p2

    #@5d
    if-gez v7, :cond_61

    #@5f
    move v5, v6

    #@60
    goto :goto_9

    #@61
    :cond_61
    move v1, v6

    #@62
    goto :goto_9

    #@63
    :cond_63
    :goto_63
    return-object v4
.end method

.method static fromColor(I)Landroidx/core/content/res/CamColor;
    .registers 2

    #@0
    .line 160
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    #@2
    invoke-static {p0, v0}, Landroidx/core/content/res/CamColor;->fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method static fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .registers 25

    #@0
    .line 171
    invoke-static/range {p0 .. p0}, Landroidx/core/content/res/CamUtils;->xyzFromInt(I)[F

    #@3
    move-result-object v0

    #@4
    .line 174
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    #@6
    const/4 v2, 0x0

    #@7
    .line 175
    aget v3, v0, v2

    #@9
    aget-object v4, v1, v2

    #@b
    aget v5, v4, v2

    #@d
    mul-float/2addr v5, v3

    #@e
    const/4 v6, 0x1

    #@f
    aget v7, v0, v6

    #@11
    aget v8, v4, v6

    #@13
    mul-float/2addr v8, v7

    #@14
    add-float/2addr v5, v8

    #@15
    const/4 v8, 0x2

    #@16
    aget v0, v0, v8

    #@18
    aget v4, v4, v8

    #@1a
    mul-float/2addr v4, v0

    #@1b
    add-float/2addr v5, v4

    #@1c
    .line 176
    aget-object v4, v1, v6

    #@1e
    aget v9, v4, v2

    #@20
    mul-float/2addr v9, v3

    #@21
    aget v10, v4, v6

    #@23
    mul-float/2addr v10, v7

    #@24
    add-float/2addr v9, v10

    #@25
    aget v4, v4, v8

    #@27
    mul-float/2addr v4, v0

    #@28
    add-float/2addr v9, v4

    #@29
    .line 177
    aget-object v1, v1, v8

    #@2b
    aget v4, v1, v2

    #@2d
    mul-float/2addr v3, v4

    #@2e
    aget v4, v1, v6

    #@30
    mul-float/2addr v7, v4

    #@31
    add-float/2addr v3, v7

    #@32
    aget v1, v1, v8

    #@34
    mul-float/2addr v0, v1

    #@35
    add-float/2addr v3, v0

    #@36
    .line 180
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    #@39
    move-result-object v0

    #@3a
    aget v0, v0, v2

    #@3c
    mul-float/2addr v0, v5

    #@3d
    .line 181
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    #@40
    move-result-object v1

    #@41
    aget v1, v1, v6

    #@43
    mul-float/2addr v1, v9

    #@44
    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    #@47
    move-result-object v2

    #@48
    aget v2, v2, v8

    #@4a
    mul-float/2addr v2, v3

    #@4b
    .line 185
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    #@4e
    move-result v3

    #@4f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@52
    move-result v4

    #@53
    mul-float/2addr v3, v4

    #@54
    float-to-double v3, v3

    #@55
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    #@57
    div-double/2addr v3, v5

    #@58
    const-wide v7, 0x3fdae147ae147ae1L    # 0.42

    #@5d
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    #@60
    move-result-wide v3

    #@61
    double-to-float v3, v3

    #@62
    .line 186
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    #@65
    move-result v4

    #@66
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@69
    move-result v9

    #@6a
    mul-float/2addr v4, v9

    #@6b
    float-to-double v9, v4

    #@6c
    div-double/2addr v9, v5

    #@6d
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    #@70
    move-result-wide v9

    #@71
    double-to-float v4, v9

    #@72
    .line 187
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    #@75
    move-result v9

    #@76
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@79
    move-result v10

    #@7a
    mul-float/2addr v9, v10

    #@7b
    float-to-double v9, v9

    #@7c
    div-double/2addr v9, v5

    #@7d
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    #@80
    move-result-wide v7

    #@81
    double-to-float v7, v7

    #@82
    .line 188
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    #@85
    move-result v0

    #@86
    const/high16 v8, 0x43c80000    # 400.0f

    #@88
    mul-float/2addr v0, v8

    #@89
    mul-float/2addr v0, v3

    #@8a
    const v9, 0x41d90a3d    # 27.13f

    #@8d
    add-float/2addr v3, v9

    #@8e
    div-float/2addr v0, v3

    #@8f
    .line 189
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    #@92
    move-result v1

    #@93
    mul-float/2addr v1, v8

    #@94
    mul-float/2addr v1, v4

    #@95
    add-float/2addr v4, v9

    #@96
    div-float/2addr v1, v4

    #@97
    .line 190
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    #@9a
    move-result v2

    #@9b
    mul-float/2addr v2, v8

    #@9c
    mul-float/2addr v2, v7

    #@9d
    add-float/2addr v7, v9

    #@9e
    div-float/2addr v2, v7

    #@9f
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    #@a1
    float-to-double v7, v0

    #@a2
    mul-double/2addr v7, v3

    #@a3
    const-wide/high16 v3, -0x3fd8000000000000L    # -12.0

    #@a5
    float-to-double v9, v1

    #@a6
    mul-double/2addr v9, v3

    #@a7
    add-double/2addr v7, v9

    #@a8
    float-to-double v3, v2

    #@a9
    add-double/2addr v7, v3

    #@aa
    double-to-float v7, v7

    #@ab
    const/high16 v8, 0x41300000    # 11.0f

    #@ad
    div-float/2addr v7, v8

    #@ae
    add-float v8, v0, v1

    #@b0
    float-to-double v8, v8

    #@b1
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@b3
    mul-double/2addr v3, v10

    #@b4
    sub-double/2addr v8, v3

    #@b5
    double-to-float v3, v8

    #@b6
    const/high16 v4, 0x41100000    # 9.0f

    #@b8
    div-float/2addr v3, v4

    #@b9
    const/high16 v4, 0x41a00000    # 20.0f

    #@bb
    mul-float v8, v0, v4

    #@bd
    mul-float/2addr v1, v4

    #@be
    add-float/2addr v8, v1

    #@bf
    const/high16 v9, 0x41a80000    # 21.0f

    #@c1
    mul-float/2addr v9, v2

    #@c2
    add-float/2addr v8, v9

    #@c3
    div-float/2addr v8, v4

    #@c4
    const/high16 v9, 0x42200000    # 40.0f

    #@c6
    mul-float/2addr v0, v9

    #@c7
    add-float/2addr v0, v1

    #@c8
    add-float/2addr v0, v2

    #@c9
    div-float/2addr v0, v4

    #@ca
    float-to-double v1, v3

    #@cb
    float-to-double v12, v7

    #@cc
    .line 202
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    #@cf
    move-result-wide v1

    #@d0
    double-to-float v1, v1

    #@d1
    const/high16 v2, 0x43340000    # 180.0f

    #@d3
    mul-float/2addr v1, v2

    #@d4
    const v4, 0x40490fdb    # (float)Math.PI

    #@d7
    div-float/2addr v1, v4

    #@d8
    const/4 v9, 0x0

    #@d9
    cmpg-float v9, v1, v9

    #@db
    const/high16 v12, 0x43b40000    # 360.0f

    #@dd
    if-gez v9, :cond_e2

    #@df
    add-float/2addr v1, v12

    #@e0
    :cond_e0
    :goto_e0
    move v14, v1

    #@e1
    goto :goto_e8

    #@e2
    :cond_e2
    cmpl-float v9, v1, v12

    #@e4
    if-ltz v9, :cond_e0

    #@e6
    sub-float/2addr v1, v12

    #@e7
    goto :goto_e0

    #@e8
    :goto_e8
    mul-float/2addr v4, v14

    #@e9
    div-float/2addr v4, v2

    #@ea
    .line 211
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    #@ed
    move-result v1

    #@ee
    mul-float/2addr v0, v1

    #@ef
    .line 214
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    #@f2
    move-result v1

    #@f3
    div-float/2addr v0, v1

    #@f4
    float-to-double v0, v0

    #@f5
    .line 215
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    #@f8
    move-result v2

    #@f9
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    #@fc
    move-result v9

    #@fd
    mul-float/2addr v2, v9

    #@fe
    float-to-double v5, v2

    #@ff
    .line 214
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    #@102
    move-result-wide v0

    #@103
    double-to-float v0, v0

    #@104
    const/high16 v1, 0x42c80000    # 100.0f

    #@106
    mul-float/2addr v0, v1

    #@107
    .line 218
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    #@10a
    move-result v2

    #@10b
    const/high16 v5, 0x40800000    # 4.0f

    #@10d
    div-float v2, v5, v2

    #@10f
    div-float v1, v0, v1

    #@111
    float-to-double v10, v1

    #@112
    .line 219
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@115
    move-result-wide v9

    #@116
    double-to-float v1, v9

    #@117
    mul-float/2addr v2, v1

    #@118
    .line 220
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    #@11b
    move-result v1

    #@11c
    add-float/2addr v1, v5

    #@11d
    mul-float/2addr v2, v1

    #@11e
    .line 221
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    #@121
    move-result v1

    #@122
    mul-float/2addr v1, v2

    #@123
    float-to-double v9, v14

    #@124
    const-wide v19, 0x403423d70a3d70a4L    # 20.14

    #@129
    cmpg-double v2, v9, v19

    #@12b
    if-gez v2, :cond_12f

    #@12d
    add-float/2addr v12, v14

    #@12e
    goto :goto_130

    #@12f
    :cond_12f
    move v12, v14

    #@130
    :goto_130
    float-to-double v9, v12

    #@131
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    #@136
    mul-double/2addr v9, v11

    #@137
    const-wide v11, 0x4066800000000000L    # 180.0

    #@13c
    div-double/2addr v9, v11

    #@13d
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    #@13f
    add-double/2addr v9, v11

    #@140
    .line 225
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    #@143
    move-result-wide v9

    #@144
    const-wide v11, 0x400e666666666666L    # 3.8

    #@149
    add-double/2addr v9, v11

    #@14a
    double-to-float v2, v9

    #@14b
    const/high16 v6, 0x3e800000    # 0.25f

    #@14d
    mul-float/2addr v2, v6

    #@14e
    const v6, 0x45706276

    #@151
    mul-float/2addr v2, v6

    #@152
    .line 226
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    #@155
    move-result v6

    #@156
    mul-float/2addr v2, v6

    #@157
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    #@15a
    move-result v6

    #@15b
    mul-float/2addr v2, v6

    #@15c
    mul-float/2addr v7, v7

    #@15d
    mul-float/2addr v3, v3

    #@15e
    add-float/2addr v7, v3

    #@15f
    float-to-double v6, v7

    #@160
    .line 227
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@163
    move-result-wide v6

    #@164
    double-to-float v3, v6

    #@165
    mul-float/2addr v2, v3

    #@166
    const v3, 0x3e9c28f6    # 0.305f

    #@169
    add-float/2addr v8, v3

    #@16a
    div-float/2addr v2, v8

    #@16b
    .line 228
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    #@16e
    move-result v3

    #@16f
    float-to-double v6, v3

    #@170
    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    #@175
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@178
    move-result-wide v6

    #@179
    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    #@17e
    sub-double/2addr v8, v6

    #@17f
    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    #@184
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@187
    move-result-wide v6

    #@188
    double-to-float v3, v6

    #@189
    float-to-double v6, v2

    #@18a
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    #@18f
    .line 229
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@192
    move-result-wide v6

    #@193
    double-to-float v2, v6

    #@194
    mul-float/2addr v3, v2

    #@195
    float-to-double v6, v0

    #@196
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@198
    div-double/2addr v6, v8

    #@199
    .line 231
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@19c
    move-result-wide v6

    #@19d
    double-to-float v2, v6

    #@19e
    mul-float v15, v3, v2

    #@1a0
    .line 232
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    #@1a3
    move-result v2

    #@1a4
    mul-float v18, v15, v2

    #@1a6
    .line 233
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    #@1a9
    move-result v2

    #@1aa
    mul-float/2addr v3, v2

    #@1ab
    .line 234
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    #@1ae
    move-result v2

    #@1af
    add-float/2addr v2, v5

    #@1b0
    div-float/2addr v3, v2

    #@1b1
    float-to-double v2, v3

    #@1b2
    .line 233
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@1b5
    move-result-wide v2

    #@1b6
    double-to-float v2, v2

    #@1b7
    const/high16 v3, 0x42480000    # 50.0f

    #@1b9
    mul-float v19, v2, v3

    #@1bb
    const v2, 0x3fd9999a    # 1.7f

    #@1be
    mul-float/2addr v2, v0

    #@1bf
    const v3, 0x3be56042    # 0.007f

    #@1c2
    mul-float/2addr v3, v0

    #@1c3
    const/high16 v5, 0x3f800000    # 1.0f

    #@1c5
    add-float/2addr v3, v5

    #@1c6
    div-float v20, v2, v3

    #@1c8
    const v2, 0x3cbac711    # 0.0228f

    #@1cb
    mul-float v2, v2, v18

    #@1cd
    add-float/2addr v2, v5

    #@1ce
    float-to-double v2, v2

    #@1cf
    .line 238
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    #@1d2
    move-result-wide v2

    #@1d3
    double-to-float v2, v2

    #@1d4
    const v3, 0x422f7048

    #@1d7
    mul-float/2addr v2, v3

    #@1d8
    float-to-double v3, v4

    #@1d9
    .line 239
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    #@1dc
    move-result-wide v5

    #@1dd
    double-to-float v5, v5

    #@1de
    mul-float v21, v2, v5

    #@1e0
    .line 240
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    #@1e3
    move-result-wide v3

    #@1e4
    double-to-float v3, v3

    #@1e5
    mul-float v22, v2, v3

    #@1e7
    .line 242
    new-instance v2, Landroidx/core/content/res/CamColor;

    #@1e9
    move-object v13, v2

    #@1ea
    move/from16 v16, v0

    #@1ec
    move/from16 v17, v1

    #@1ee
    invoke-direct/range {v13 .. v22}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    #@1f1
    return-object v2
.end method

.method private static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .registers 4

    #@0
    .line 253
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    #@2
    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method private static fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .registers 17

    #@0
    move v3, p0

    #@1
    .line 266
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    #@4
    move-result v0

    #@5
    const/high16 v1, 0x40800000    # 4.0f

    #@7
    div-float v0, v1, v0

    #@9
    float-to-double v4, v3

    #@a
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    #@c
    div-double/2addr v4, v6

    #@d
    .line 267
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@10
    move-result-wide v6

    #@11
    double-to-float v2, v6

    #@12
    mul-float/2addr v0, v2

    #@13
    .line 268
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    #@16
    move-result v2

    #@17
    add-float/2addr v2, v1

    #@18
    mul-float/2addr v0, v2

    #@19
    .line 269
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    #@1c
    move-result v2

    #@1d
    mul-float v6, v0, v2

    #@1f
    .line 270
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    #@22
    move-result v0

    #@23
    mul-float v7, p1, v0

    #@25
    .line 271
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@28
    move-result-wide v4

    #@29
    double-to-float v0, v4

    #@2a
    div-float v0, p1, v0

    #@2c
    .line 272
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    #@2f
    move-result v2

    #@30
    mul-float/2addr v0, v2

    #@31
    .line 273
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    #@34
    move-result v2

    #@35
    add-float/2addr v2, v1

    #@36
    div-float/2addr v0, v2

    #@37
    float-to-double v0, v0

    #@38
    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@3b
    move-result-wide v0

    #@3c
    double-to-float v0, v0

    #@3d
    const/high16 v1, 0x42480000    # 50.0f

    #@3f
    mul-float v8, v0, v1

    #@41
    const v0, 0x40490fdb    # (float)Math.PI

    #@44
    mul-float/2addr v0, p2

    #@45
    const/high16 v1, 0x43340000    # 180.0f

    #@47
    div-float/2addr v0, v1

    #@48
    const v1, 0x3fd9999a    # 1.7f

    #@4b
    mul-float/2addr v1, v3

    #@4c
    const v2, 0x3be56042    # 0.007f

    #@4f
    mul-float/2addr v2, v3

    #@50
    const/high16 v4, 0x3f800000    # 1.0f

    #@52
    add-float/2addr v2, v4

    #@53
    div-float v9, v1, v2

    #@55
    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    #@5a
    float-to-double v4, v7

    #@5b
    mul-double/2addr v4, v1

    #@5c
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    #@5e
    add-double/2addr v4, v1

    #@5f
    .line 277
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    #@62
    move-result-wide v1

    #@63
    double-to-float v1, v1

    #@64
    const v2, 0x422f7048

    #@67
    mul-float/2addr v1, v2

    #@68
    float-to-double v4, v0

    #@69
    .line 278
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@6c
    move-result-wide v10

    #@6d
    double-to-float v0, v10

    #@6e
    mul-float v10, v1, v0

    #@70
    .line 279
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@73
    move-result-wide v4

    #@74
    double-to-float v0, v4

    #@75
    mul-float v11, v1, v0

    #@77
    .line 280
    new-instance v12, Landroidx/core/content/res/CamColor;

    #@79
    move-object v0, v12

    #@7a
    move v1, p2

    #@7b
    move v2, p1

    #@7c
    move v4, v6

    #@7d
    move v5, v7

    #@7e
    move v6, v8

    #@7f
    move v7, v9

    #@80
    move v8, v10

    #@81
    move v9, v11

    #@82
    invoke-direct/range {v0 .. v9}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    #@85
    return-object v12
.end method

.method static toColor(FFF)I
    .registers 4

    #@0
    .line 149
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    #@2
    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->toColor(FFFLandroidx/core/content/res/ViewingConditions;)I

    #@5
    move-result p0

    #@6
    return p0
.end method

.method static toColor(FFFLandroidx/core/content/res/ViewingConditions;)I
    .registers 10

    #@0
    float-to-double v0, p1

    #@1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@3
    cmpg-double v0, v0, v2

    #@5
    if-ltz v0, :cond_6a

    #@7
    .line 414
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@a
    move-result v0

    #@b
    int-to-double v0, v0

    #@c
    const-wide/16 v2, 0x0

    #@e
    cmpg-double v0, v0, v2

    #@10
    if-lez v0, :cond_6a

    #@12
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@15
    move-result v0

    #@16
    int-to-double v0, v0

    #@17
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    #@19
    cmpl-double v0, v0, v2

    #@1b
    if-ltz v0, :cond_1e

    #@1d
    goto :goto_6a

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    cmpg-float v1, p0, v0

    #@21
    if-gez v1, :cond_25

    #@23
    move p0, v0

    #@24
    goto :goto_2b

    #@25
    :cond_25
    const/high16 v1, 0x43b40000    # 360.0f

    #@27
    .line 418
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    #@2a
    move-result p0

    #@2b
    :goto_2b
    const/4 v1, 0x1

    #@2c
    const/4 v2, 0x0

    #@2d
    move-object v3, v2

    #@2e
    move v2, v1

    #@2f
    move v1, v0

    #@30
    move v0, p1

    #@31
    :goto_31
    sub-float v4, v1, p1

    #@33
    .line 431
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@36
    move-result v4

    #@37
    const v5, 0x3ecccccd    # 0.4f

    #@3a
    cmpl-float v4, v4, v5

    #@3c
    if-ltz v4, :cond_5e

    #@3e
    .line 434
    invoke-static {p0, v0, p2}, Landroidx/core/content/res/CamColor;->findCamByJ(FFF)Landroidx/core/content/res/CamColor;

    #@41
    move-result-object v4

    #@42
    const/high16 v5, 0x40000000    # 2.0f

    #@44
    if-eqz v2, :cond_53

    #@46
    if-eqz v4, :cond_4d

    #@48
    .line 438
    invoke-virtual {v4, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    #@4b
    move-result p0

    #@4c
    return p0

    #@4d
    :cond_4d
    sub-float v0, p1, v1

    #@4f
    div-float/2addr v0, v5

    #@50
    add-float/2addr v0, v1

    #@51
    const/4 v2, 0x0

    #@52
    goto :goto_31

    #@53
    :cond_53
    if-nez v4, :cond_57

    #@55
    move p1, v0

    #@56
    goto :goto_59

    #@57
    :cond_57
    move v1, v0

    #@58
    move-object v3, v4

    #@59
    :goto_59
    sub-float v0, p1, v1

    #@5b
    div-float/2addr v0, v5

    #@5c
    add-float/2addr v0, v1

    #@5d
    goto :goto_31

    #@5e
    :cond_5e
    if-nez v3, :cond_65

    #@60
    .line 468
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    #@63
    move-result p0

    #@64
    return p0

    #@65
    .line 471
    :cond_65
    invoke-virtual {v3, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    #@68
    move-result p0

    #@69
    return p0

    #@6a
    .line 415
    :cond_6a
    :goto_6a
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    #@6d
    move-result p0

    #@6e
    return p0
.end method


# virtual methods
.method distance(Landroidx/core/content/res/CamColor;)F
    .registers 6

    #@0
    .line 290
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJStar()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getJStar()F

    #@7
    move-result v1

    #@8
    sub-float/2addr v0, v1

    #@9
    .line 291
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getAStar()F

    #@c
    move-result v1

    #@d
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getAStar()F

    #@10
    move-result v2

    #@11
    sub-float/2addr v1, v2

    #@12
    .line 292
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getBStar()F

    #@15
    move-result v2

    #@16
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getBStar()F

    #@19
    move-result p1

    #@1a
    sub-float/2addr v2, p1

    #@1b
    mul-float/2addr v0, v0

    #@1c
    mul-float/2addr v1, v1

    #@1d
    add-float/2addr v0, v1

    #@1e
    mul-float/2addr v2, v2

    #@1f
    add-float/2addr v0, v2

    #@20
    float-to-double v0, v0

    #@21
    .line 293
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@24
    move-result-wide v0

    #@25
    const-wide v2, 0x3fe428f5c28f5c29L    # 0.63

    #@2a
    .line 294
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@2d
    move-result-wide v0

    #@2e
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    #@33
    mul-double/2addr v0, v2

    #@34
    double-to-float p1, v0

    #@35
    return p1
.end method

.method getAStar()F
    .registers 2

    #@0
    .line 116
    iget v0, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    #@2
    return v0
.end method

.method getBStar()F
    .registers 2

    #@0
    .line 123
    iget v0, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    #@2
    return v0
.end method

.method getChroma()F
    .registers 2

    #@0
    .line 63
    iget v0, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    #@2
    return v0
.end method

.method getHue()F
    .registers 2

    #@0
    .line 57
    iget v0, p0, Landroidx/core/content/res/CamColor;->mHue:F

    #@2
    return v0
.end method

.method getJ()F
    .registers 2

    #@0
    .line 69
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJ:F

    #@2
    return v0
.end method

.method getJStar()F
    .registers 2

    #@0
    .line 109
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    #@2
    return v0
.end method

.method getM()F
    .registers 2

    #@0
    .line 92
    iget v0, p0, Landroidx/core/content/res/CamColor;->mM:F

    #@2
    return v0
.end method

.method getQ()F
    .registers 2

    #@0
    .line 81
    iget v0, p0, Landroidx/core/content/res/CamColor;->mQ:F

    #@2
    return v0
.end method

.method getS()F
    .registers 2

    #@0
    .line 103
    iget v0, p0, Landroidx/core/content/res/CamColor;->mS:F

    #@2
    return v0
.end method

.method viewed(Landroidx/core/content/res/ViewingConditions;)I
    .registers 17

    #@0
    .line 308
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    #@3
    move-result v0

    #@4
    float-to-double v0, v0

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmpl-double v0, v0, v2

    #@9
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    #@b
    if-eqz v0, :cond_28

    #@d
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    #@10
    move-result v0

    #@11
    float-to-double v0, v0

    #@12
    cmpl-double v0, v0, v2

    #@14
    if-nez v0, :cond_17

    #@16
    goto :goto_28

    #@17
    .line 310
    :cond_17
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    #@1e
    move-result v1

    #@1f
    float-to-double v6, v1

    #@20
    div-double/2addr v6, v4

    #@21
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@24
    move-result-wide v6

    #@25
    double-to-float v1, v6

    #@26
    div-float/2addr v0, v1

    #@27
    goto :goto_29

    #@28
    :cond_28
    :goto_28
    const/4 v0, 0x0

    #@29
    :goto_29
    float-to-double v0, v0

    #@2a
    .line 313
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    #@2d
    move-result v6

    #@2e
    float-to-double v6, v6

    #@2f
    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    #@34
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@37
    move-result-wide v6

    #@38
    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    #@3d
    sub-double/2addr v8, v6

    #@3e
    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    #@43
    .line 312
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@46
    move-result-wide v6

    #@47
    div-double/2addr v0, v6

    #@48
    const-wide v6, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    #@4d
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@50
    move-result-wide v0

    #@51
    double-to-float v0, v0

    #@52
    .line 314
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getHue()F

    #@55
    move-result v1

    #@56
    const v6, 0x40490fdb    # (float)Math.PI

    #@59
    mul-float/2addr v1, v6

    #@5a
    const/high16 v6, 0x43340000    # 180.0f

    #@5c
    div-float/2addr v1, v6

    #@5d
    float-to-double v6, v1

    #@5e
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@60
    add-double/2addr v8, v6

    #@61
    .line 316
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    #@64
    move-result-wide v8

    #@65
    const-wide v10, 0x400e666666666666L    # 3.8

    #@6a
    add-double/2addr v8, v10

    #@6b
    double-to-float v1, v8

    #@6c
    const/high16 v8, 0x3e800000    # 0.25f

    #@6e
    mul-float/2addr v1, v8

    #@6f
    .line 317
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    #@72
    move-result v8

    #@73
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    #@76
    move-result v9

    #@77
    float-to-double v9, v9

    #@78
    div-double/2addr v9, v4

    #@79
    .line 318
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    #@7c
    move-result v4

    #@7d
    float-to-double v4, v4

    #@7e
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    #@80
    div-double/2addr v11, v4

    #@81
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    #@84
    move-result v4

    #@85
    float-to-double v4, v4

    #@86
    div-double/2addr v11, v4

    #@87
    .line 317
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@8a
    move-result-wide v4

    #@8b
    double-to-float v4, v4

    #@8c
    mul-float/2addr v8, v4

    #@8d
    const v4, 0x45706276

    #@90
    mul-float/2addr v1, v4

    #@91
    .line 320
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    #@94
    move-result v4

    #@95
    mul-float/2addr v1, v4

    #@96
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    #@99
    move-result v4

    #@9a
    mul-float/2addr v1, v4

    #@9b
    .line 321
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    #@9e
    move-result v4

    #@9f
    div-float/2addr v8, v4

    #@a0
    .line 323
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    #@a3
    move-result-wide v4

    #@a4
    double-to-float v4, v4

    #@a5
    .line 324
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    #@a8
    move-result-wide v5

    #@a9
    double-to-float v5, v5

    #@aa
    const v6, 0x3e9c28f6    # 0.305f

    #@ad
    add-float/2addr v6, v8

    #@ae
    const/high16 v7, 0x41b80000    # 23.0f

    #@b0
    mul-float/2addr v6, v7

    #@b1
    mul-float/2addr v6, v0

    #@b2
    mul-float/2addr v1, v7

    #@b3
    const/high16 v7, 0x41300000    # 11.0f

    #@b5
    mul-float/2addr v7, v0

    #@b6
    mul-float/2addr v7, v5

    #@b7
    add-float/2addr v1, v7

    #@b8
    const/high16 v7, 0x42d80000    # 108.0f

    #@ba
    mul-float/2addr v0, v7

    #@bb
    mul-float/2addr v0, v4

    #@bc
    add-float/2addr v1, v0

    #@bd
    div-float/2addr v6, v1

    #@be
    mul-float/2addr v5, v6

    #@bf
    mul-float/2addr v6, v4

    #@c0
    const/high16 v0, 0x43e60000    # 460.0f

    #@c2
    mul-float/2addr v8, v0

    #@c3
    const v0, 0x43e18000    # 451.0f

    #@c6
    mul-float/2addr v0, v5

    #@c7
    add-float/2addr v0, v8

    #@c8
    const/high16 v1, 0x43900000    # 288.0f

    #@ca
    mul-float/2addr v1, v6

    #@cb
    add-float/2addr v0, v1

    #@cc
    const v1, 0x44af6000    # 1403.0f

    #@cf
    div-float/2addr v0, v1

    #@d0
    const v4, 0x445ec000    # 891.0f

    #@d3
    mul-float/2addr v4, v5

    #@d4
    sub-float v4, v8, v4

    #@d6
    const v7, 0x43828000    # 261.0f

    #@d9
    mul-float/2addr v7, v6

    #@da
    sub-float/2addr v4, v7

    #@db
    div-float/2addr v4, v1

    #@dc
    const/high16 v7, 0x435c0000    # 220.0f

    #@de
    mul-float/2addr v5, v7

    #@df
    sub-float/2addr v8, v5

    #@e0
    const v5, 0x45c4e000    # 6300.0f

    #@e3
    mul-float/2addr v6, v5

    #@e4
    sub-float/2addr v8, v6

    #@e5
    div-float/2addr v8, v1

    #@e6
    .line 334
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@e9
    move-result v1

    #@ea
    float-to-double v5, v1

    #@eb
    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    #@f0
    mul-double/2addr v5, v9

    #@f1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@f4
    move-result v1

    #@f5
    float-to-double v11, v1

    #@f6
    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    #@f8
    sub-double v11, v13, v11

    #@fa
    div-double/2addr v5, v11

    #@fb
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    #@fe
    move-result-wide v5

    #@ff
    double-to-float v1, v5

    #@100
    .line 335
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    #@103
    move-result v0

    #@104
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    #@107
    move-result v5

    #@108
    const/high16 v6, 0x42c80000    # 100.0f

    #@10a
    div-float v5, v6, v5

    #@10c
    mul-float/2addr v0, v5

    #@10d
    float-to-double v11, v1

    #@10e
    const-wide v6, 0x40030c30c30c30c3L    # 2.380952380952381

    #@113
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@116
    move-result-wide v11

    #@117
    double-to-float v5, v11

    #@118
    mul-float/2addr v0, v5

    #@119
    .line 337
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@11c
    move-result v5

    #@11d
    float-to-double v11, v5

    #@11e
    mul-double/2addr v11, v9

    #@11f
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@122
    move-result v5

    #@123
    float-to-double v9, v5

    #@124
    sub-double v9, v13, v9

    #@126
    div-double/2addr v11, v9

    #@127
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    #@12a
    move-result-wide v9

    #@12b
    double-to-float v5, v9

    #@12c
    .line 338
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    #@12f
    move-result v4

    #@130
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    #@133
    move-result v9

    #@134
    const/high16 v1, 0x42c80000    # 100.0f

    #@136
    div-float v9, v1, v9

    #@138
    mul-float/2addr v4, v9

    #@139
    float-to-double v9, v5

    #@13a
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@13d
    move-result-wide v9

    #@13e
    double-to-float v5, v9

    #@13f
    mul-float/2addr v4, v5

    #@140
    .line 340
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    #@143
    move-result v5

    #@144
    float-to-double v9, v5

    #@145
    const-wide v11, 0x403b2147ae147ae1L    # 27.13

    #@14a
    mul-double/2addr v9, v11

    #@14b
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    #@14e
    move-result v5

    #@14f
    float-to-double v11, v5

    #@150
    sub-double/2addr v13, v11

    #@151
    div-double/2addr v9, v13

    #@152
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(DD)D

    #@155
    move-result-wide v2

    #@156
    double-to-float v2, v2

    #@157
    .line 341
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    #@15a
    move-result v3

    #@15b
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    #@15e
    move-result v5

    #@15f
    const/high16 v1, 0x42c80000    # 100.0f

    #@161
    div-float/2addr v1, v5

    #@162
    mul-float/2addr v3, v1

    #@163
    float-to-double v1, v2

    #@164
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@167
    move-result-wide v1

    #@168
    double-to-float v1, v1

    #@169
    mul-float/2addr v3, v1

    #@16a
    .line 343
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    #@16d
    move-result-object v1

    #@16e
    const/4 v2, 0x0

    #@16f
    aget v1, v1, v2

    #@171
    div-float/2addr v0, v1

    #@172
    .line 344
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    #@175
    move-result-object v1

    #@176
    const/4 v5, 0x1

    #@177
    aget v1, v1, v5

    #@179
    div-float/2addr v4, v1

    #@17a
    .line 345
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    #@17d
    move-result-object v1

    #@17e
    const/4 v6, 0x2

    #@17f
    aget v1, v1, v6

    #@181
    div-float/2addr v3, v1

    #@182
    .line 348
    sget-object v1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    #@184
    .line 349
    aget-object v7, v1, v2

    #@186
    aget v8, v7, v2

    #@188
    mul-float/2addr v8, v0

    #@189
    aget v9, v7, v5

    #@18b
    mul-float/2addr v9, v4

    #@18c
    add-float/2addr v8, v9

    #@18d
    aget v7, v7, v6

    #@18f
    mul-float/2addr v7, v3

    #@190
    add-float/2addr v8, v7

    #@191
    .line 350
    aget-object v7, v1, v5

    #@193
    aget v9, v7, v2

    #@195
    mul-float/2addr v9, v0

    #@196
    aget v10, v7, v5

    #@198
    mul-float/2addr v10, v4

    #@199
    add-float/2addr v9, v10

    #@19a
    aget v7, v7, v6

    #@19c
    mul-float/2addr v7, v3

    #@19d
    add-float/2addr v9, v7

    #@19e
    .line 351
    aget-object v1, v1, v6

    #@1a0
    aget v2, v1, v2

    #@1a2
    mul-float/2addr v0, v2

    #@1a3
    aget v2, v1, v5

    #@1a5
    mul-float/2addr v4, v2

    #@1a6
    add-float/2addr v0, v4

    #@1a7
    aget v1, v1, v6

    #@1a9
    mul-float/2addr v3, v1

    #@1aa
    add-float/2addr v0, v3

    #@1ab
    float-to-double v1, v8

    #@1ac
    float-to-double v3, v9

    #@1ad
    float-to-double v5, v0

    #@1ae
    .line 353
    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    #@1b1
    move-result v0

    #@1b2
    return v0
.end method

.method viewedInSrgb()I
    .registers 2

    #@0
    .line 301
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    #@2
    invoke-virtual {p0, v0}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
