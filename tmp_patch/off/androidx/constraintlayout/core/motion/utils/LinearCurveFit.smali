.class public Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 14

    #@0
    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    #@3
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    #@5
    .line 28
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    #@7
    const/4 v0, 0x1

    #@8
    .line 29
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    #@a
    .line 33
    array-length v0, p1

    #@b
    const/4 v0, 0x0

    #@c
    .line 34
    aget-object v1, p2, v0

    #@e
    array-length v1, v1

    #@f
    .line 35
    new-array v2, v1, [D

    #@11
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@13
    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@15
    .line 37
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@17
    const/4 v2, 0x2

    #@18
    if-le v1, v2, :cond_35

    #@1a
    const-wide/16 v1, 0x0

    #@1c
    move v3, v0

    #@1d
    move-wide v4, v1

    #@1e
    :goto_1e
    move-wide v6, v4

    #@1f
    .line 41
    array-length v8, p1

    #@20
    if-ge v3, v8, :cond_33

    #@22
    .line 42
    aget-object v8, p2, v3

    #@24
    aget-wide v9, v8, v0

    #@26
    if-lez v3, :cond_2f

    #@28
    sub-double v4, v9, v4

    #@2a
    sub-double v6, v9, v6

    #@2c
    .line 45
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    #@2f
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    #@31
    move-wide v4, v9

    #@32
    goto :goto_1e

    #@33
    .line 50
    :cond_33
    iput-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    #@35
    :cond_35
    return-void
.end method

.method private getLength2D(D)D
    .registers 25

    #@0
    move-object/from16 v0, p0

    #@2
    .line 62
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    #@4
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    #@7
    move-result v1

    #@8
    const-wide/16 v2, 0x0

    #@a
    if-eqz v1, :cond_d

    #@c
    return-wide v2

    #@d
    .line 65
    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@f
    array-length v4, v1

    #@10
    const/4 v5, 0x0

    #@11
    .line 66
    aget-wide v6, v1, v5

    #@13
    cmpg-double v6, p1, v6

    #@15
    if-gtz v6, :cond_18

    #@17
    return-wide v2

    #@18
    :cond_18
    const/4 v6, 0x1

    #@19
    sub-int/2addr v4, v6

    #@1a
    .line 69
    aget-wide v7, v1, v4

    #@1c
    cmpl-double v1, p1, v7

    #@1e
    if-ltz v1, :cond_23

    #@20
    .line 70
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    #@22
    return-wide v1

    #@23
    :cond_23
    move-wide v7, v2

    #@24
    move-wide v9, v7

    #@25
    move-wide v11, v9

    #@26
    move v1, v5

    #@27
    :goto_27
    if-ge v1, v4, :cond_7c

    #@29
    .line 76
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@2b
    aget-object v13, v13, v1

    #@2d
    aget-wide v14, v13, v5

    #@2f
    .line 77
    aget-wide v16, v13, v6

    #@31
    if-lez v1, :cond_3c

    #@33
    sub-double v9, v14, v9

    #@35
    sub-double v11, v16, v11

    #@37
    .line 79
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    #@3a
    move-result-wide v9

    #@3b
    add-double/2addr v7, v9

    #@3c
    .line 83
    :cond_3c
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@3e
    aget-wide v10, v9, v1

    #@40
    cmpl-double v12, p1, v10

    #@42
    if-nez v12, :cond_45

    #@44
    return-wide v7

    #@45
    :cond_45
    add-int/lit8 v12, v1, 0x1

    #@47
    .line 86
    aget-wide v18, v9, v12

    #@49
    cmpg-double v9, p1, v18

    #@4b
    if-gez v9, :cond_77

    #@4d
    sub-double v18, v18, v10

    #@4f
    sub-double v2, p1, v10

    #@51
    div-double v2, v2, v18

    #@53
    .line 89
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@55
    aget-object v1, v4, v1

    #@57
    aget-wide v9, v1, v5

    #@59
    .line 90
    aget-object v4, v4, v12

    #@5b
    aget-wide v11, v4, v5

    #@5d
    .line 91
    aget-wide v18, v1, v6

    #@5f
    .line 92
    aget-wide v5, v4, v6

    #@61
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    #@63
    sub-double v20, v20, v2

    #@65
    mul-double v18, v18, v20

    #@67
    mul-double/2addr v5, v2

    #@68
    add-double v18, v18, v5

    #@6a
    sub-double v4, v16, v18

    #@6c
    mul-double v9, v9, v20

    #@6e
    mul-double/2addr v11, v2

    #@6f
    add-double/2addr v9, v11

    #@70
    sub-double/2addr v14, v9

    #@71
    .line 96
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    #@74
    move-result-wide v1

    #@75
    add-double/2addr v7, v1

    #@76
    return-wide v7

    #@77
    :cond_77
    move v1, v12

    #@78
    move-wide v9, v14

    #@79
    move-wide/from16 v11, v16

    #@7b
    goto :goto_27

    #@7c
    :cond_7c
    return-wide v2
.end method


# virtual methods
.method public getPos(DI)D
    .registers 12

    #@0
    .line 211
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@2
    array-length v1, v0

    #@3
    .line 212
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    #@5
    const/4 v3, 0x0

    #@6
    if-eqz v2, :cond_30

    #@8
    .line 213
    aget-wide v4, v0, v3

    #@a
    cmpg-double v2, p1, v4

    #@c
    if-gtz v2, :cond_1c

    #@e
    .line 214
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@10
    aget-object v0, v0, v3

    #@12
    aget-wide v1, v0, p3

    #@14
    sub-double/2addr p1, v4

    #@15
    invoke-virtual {p0, v4, v5, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    #@18
    move-result-wide v3

    #@19
    :goto_19
    mul-double/2addr p1, v3

    #@1a
    add-double/2addr v1, p1

    #@1b
    return-wide v1

    #@1c
    :cond_1c
    add-int/lit8 v2, v1, -0x1

    #@1e
    .line 216
    aget-wide v4, v0, v2

    #@20
    cmpl-double v0, p1, v4

    #@22
    if-ltz v0, :cond_4c

    #@24
    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@26
    aget-object v0, v0, v2

    #@28
    aget-wide v1, v0, p3

    #@2a
    sub-double/2addr p1, v4

    #@2b
    invoke-virtual {p0, v4, v5, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    #@2e
    move-result-wide v3

    #@2f
    goto :goto_19

    #@30
    .line 220
    :cond_30
    aget-wide v4, v0, v3

    #@32
    cmpg-double v2, p1, v4

    #@34
    if-gtz v2, :cond_3d

    #@36
    .line 221
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@38
    aget-object p1, p1, v3

    #@3a
    aget-wide p2, p1, p3

    #@3c
    return-wide p2

    #@3d
    :cond_3d
    add-int/lit8 v2, v1, -0x1

    #@3f
    .line 223
    aget-wide v4, v0, v2

    #@41
    cmpl-double v0, p1, v4

    #@43
    if-ltz v0, :cond_4c

    #@45
    .line 224
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@47
    aget-object p1, p1, v2

    #@49
    aget-wide p2, p1, p3

    #@4b
    return-wide p2

    #@4c
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v1, -0x1

    #@4e
    if-ge v3, v0, :cond_7d

    #@50
    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@52
    aget-wide v4, v0, v3

    #@54
    cmpl-double v2, p1, v4

    #@56
    if-nez v2, :cond_5f

    #@58
    .line 230
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@5a
    aget-object p1, p1, v3

    #@5c
    aget-wide p2, p1, p3

    #@5e
    return-wide p2

    #@5f
    :cond_5f
    add-int/lit8 v2, v3, 0x1

    #@61
    .line 232
    aget-wide v6, v0, v2

    #@63
    cmpg-double v0, p1, v6

    #@65
    if-gez v0, :cond_7b

    #@67
    sub-double/2addr v6, v4

    #@68
    sub-double/2addr p1, v4

    #@69
    div-double/2addr p1, v6

    #@6a
    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@6c
    aget-object v1, v0, v3

    #@6e
    aget-wide v3, v1, p3

    #@70
    .line 236
    aget-object v0, v0, v2

    #@72
    aget-wide v1, v0, p3

    #@74
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    #@76
    sub-double/2addr v5, p1

    #@77
    mul-double/2addr v3, v5

    #@78
    mul-double/2addr v1, p1

    #@79
    add-double/2addr v3, v1

    #@7a
    return-wide v3

    #@7b
    :cond_7b
    move v3, v2

    #@7c
    goto :goto_4c

    #@7d
    :cond_7d
    const-wide/16 p1, 0x0

    #@7f
    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 16

    #@0
    .line 105
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@2
    array-length v1, v0

    #@3
    .line 106
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@5
    const/4 v3, 0x0

    #@6
    aget-object v2, v2, v3

    #@8
    array-length v2, v2

    #@9
    .line 107
    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    #@b
    if-eqz v4, :cond_5a

    #@d
    .line 108
    aget-wide v4, v0, v3

    #@f
    cmpg-double v6, p1, v4

    #@11
    if-gtz v6, :cond_33

    #@13
    .line 109
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@15
    invoke-virtual {p0, v4, v5, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    #@18
    move v0, v3

    #@19
    :goto_19
    if-ge v0, v2, :cond_32

    #@1b
    .line 111
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@1d
    aget-object v1, v1, v3

    #@1f
    aget-wide v4, v1, v0

    #@21
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@23
    aget-wide v6, v1, v3

    #@25
    sub-double v6, p1, v6

    #@27
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@29
    aget-wide v8, v1, v0

    #@2b
    mul-double/2addr v6, v8

    #@2c
    add-double/2addr v4, v6

    #@2d
    aput-wide v4, p3, v0

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_19

    #@32
    :cond_32
    return-void

    #@33
    :cond_33
    add-int/lit8 v4, v1, -0x1

    #@35
    .line 115
    aget-wide v5, v0, v4

    #@37
    cmpl-double v0, p1, v5

    #@39
    if-ltz v0, :cond_85

    #@3b
    .line 116
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@3d
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    #@40
    :goto_40
    if-ge v3, v2, :cond_59

    #@42
    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@44
    aget-object v0, v0, v4

    #@46
    aget-wide v5, v0, v3

    #@48
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@4a
    aget-wide v7, v0, v4

    #@4c
    sub-double v0, p1, v7

    #@4e
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@50
    aget-wide v8, v7, v3

    #@52
    mul-double/2addr v0, v8

    #@53
    add-double/2addr v5, v0

    #@54
    aput-wide v5, p3, v3

    #@56
    add-int/lit8 v3, v3, 0x1

    #@58
    goto :goto_40

    #@59
    :cond_59
    return-void

    #@5a
    .line 123
    :cond_5a
    aget-wide v4, v0, v3

    #@5c
    cmpg-double v4, p1, v4

    #@5e
    if-gtz v4, :cond_6f

    #@60
    move p1, v3

    #@61
    :goto_61
    if-ge p1, v2, :cond_6e

    #@63
    .line 125
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@65
    aget-object p2, p2, v3

    #@67
    aget-wide v0, p2, p1

    #@69
    aput-wide v0, p3, p1

    #@6b
    add-int/lit8 p1, p1, 0x1

    #@6d
    goto :goto_61

    #@6e
    :cond_6e
    return-void

    #@6f
    :cond_6f
    add-int/lit8 v4, v1, -0x1

    #@71
    .line 129
    aget-wide v5, v0, v4

    #@73
    cmpl-double v0, p1, v5

    #@75
    if-ltz v0, :cond_85

    #@77
    :goto_77
    if-ge v3, v2, :cond_84

    #@79
    .line 131
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@7b
    aget-object p1, p1, v4

    #@7d
    aget-wide v0, p1, v3

    #@7f
    aput-wide v0, p3, v3

    #@81
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_77

    #@84
    :cond_84
    return-void

    #@85
    :cond_85
    move v0, v3

    #@86
    :goto_86
    add-int/lit8 v4, v1, -0x1

    #@88
    if-ge v0, v4, :cond_c9

    #@8a
    .line 138
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@8c
    aget-wide v5, v4, v0

    #@8e
    cmpl-double v4, p1, v5

    #@90
    if-nez v4, :cond_a0

    #@92
    move v4, v3

    #@93
    :goto_93
    if-ge v4, v2, :cond_a0

    #@95
    .line 140
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@97
    aget-object v5, v5, v0

    #@99
    aget-wide v6, v5, v4

    #@9b
    aput-wide v6, p3, v4

    #@9d
    add-int/lit8 v4, v4, 0x1

    #@9f
    goto :goto_93

    #@a0
    .line 143
    :cond_a0
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@a2
    add-int/lit8 v5, v0, 0x1

    #@a4
    aget-wide v6, v4, v5

    #@a6
    cmpg-double v8, p1, v6

    #@a8
    if-gez v8, :cond_c7

    #@aa
    .line 144
    aget-wide v8, v4, v0

    #@ac
    sub-double/2addr v6, v8

    #@ad
    sub-double/2addr p1, v8

    #@ae
    div-double/2addr p1, v6

    #@af
    :goto_af
    if-ge v3, v2, :cond_c6

    #@b1
    .line 147
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@b3
    aget-object v4, v1, v0

    #@b5
    aget-wide v6, v4, v3

    #@b7
    .line 148
    aget-object v1, v1, v5

    #@b9
    aget-wide v8, v1, v3

    #@bb
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@bd
    sub-double/2addr v10, p1

    #@be
    mul-double/2addr v6, v10

    #@bf
    mul-double/2addr v8, p1

    #@c0
    add-double/2addr v6, v8

    #@c1
    .line 150
    aput-wide v6, p3, v3

    #@c3
    add-int/lit8 v3, v3, 0x1

    #@c5
    goto :goto_af

    #@c6
    :cond_c6
    return-void

    #@c7
    :cond_c7
    move v0, v5

    #@c8
    goto :goto_86

    #@c9
    :cond_c9
    return-void
.end method

.method public getPos(D[F)V
    .registers 16

    #@0
    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@2
    array-length v1, v0

    #@3
    .line 159
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@5
    const/4 v3, 0x0

    #@6
    aget-object v2, v2, v3

    #@8
    array-length v2, v2

    #@9
    .line 160
    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    #@b
    if-eqz v4, :cond_5c

    #@d
    .line 161
    aget-wide v4, v0, v3

    #@f
    cmpg-double v6, p1, v4

    #@11
    if-gtz v6, :cond_34

    #@13
    .line 162
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@15
    invoke-virtual {p0, v4, v5, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    #@18
    move v0, v3

    #@19
    :goto_19
    if-ge v0, v2, :cond_33

    #@1b
    .line 164
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@1d
    aget-object v1, v1, v3

    #@1f
    aget-wide v4, v1, v0

    #@21
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@23
    aget-wide v6, v1, v3

    #@25
    sub-double v6, p1, v6

    #@27
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@29
    aget-wide v8, v1, v0

    #@2b
    mul-double/2addr v6, v8

    #@2c
    add-double/2addr v4, v6

    #@2d
    double-to-float v1, v4

    #@2e
    aput v1, p3, v0

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_19

    #@33
    :cond_33
    return-void

    #@34
    :cond_34
    add-int/lit8 v4, v1, -0x1

    #@36
    .line 168
    aget-wide v5, v0, v4

    #@38
    cmpl-double v0, p1, v5

    #@3a
    if-ltz v0, :cond_89

    #@3c
    .line 169
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@3e
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    #@41
    :goto_41
    if-ge v3, v2, :cond_5b

    #@43
    .line 171
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@45
    aget-object v0, v0, v4

    #@47
    aget-wide v5, v0, v3

    #@49
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@4b
    aget-wide v7, v0, v4

    #@4d
    sub-double v0, p1, v7

    #@4f
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    #@51
    aget-wide v8, v7, v3

    #@53
    mul-double/2addr v0, v8

    #@54
    add-double/2addr v5, v0

    #@55
    double-to-float v0, v5

    #@56
    aput v0, p3, v3

    #@58
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_41

    #@5b
    :cond_5b
    return-void

    #@5c
    .line 176
    :cond_5c
    aget-wide v4, v0, v3

    #@5e
    cmpg-double v4, p1, v4

    #@60
    if-gtz v4, :cond_72

    #@62
    move p1, v3

    #@63
    :goto_63
    if-ge p1, v2, :cond_71

    #@65
    .line 178
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@67
    aget-object p2, p2, v3

    #@69
    aget-wide v0, p2, p1

    #@6b
    double-to-float p2, v0

    #@6c
    aput p2, p3, p1

    #@6e
    add-int/lit8 p1, p1, 0x1

    #@70
    goto :goto_63

    #@71
    :cond_71
    return-void

    #@72
    :cond_72
    add-int/lit8 v4, v1, -0x1

    #@74
    .line 182
    aget-wide v5, v0, v4

    #@76
    cmpl-double v0, p1, v5

    #@78
    if-ltz v0, :cond_89

    #@7a
    :goto_7a
    if-ge v3, v2, :cond_88

    #@7c
    .line 184
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@7e
    aget-object p1, p1, v4

    #@80
    aget-wide v0, p1, v3

    #@82
    double-to-float p1, v0

    #@83
    aput p1, p3, v3

    #@85
    add-int/lit8 v3, v3, 0x1

    #@87
    goto :goto_7a

    #@88
    :cond_88
    return-void

    #@89
    :cond_89
    move v0, v3

    #@8a
    :goto_8a
    add-int/lit8 v4, v1, -0x1

    #@8c
    if-ge v0, v4, :cond_cf

    #@8e
    .line 191
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@90
    aget-wide v5, v4, v0

    #@92
    cmpl-double v4, p1, v5

    #@94
    if-nez v4, :cond_a5

    #@96
    move v4, v3

    #@97
    :goto_97
    if-ge v4, v2, :cond_a5

    #@99
    .line 193
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@9b
    aget-object v5, v5, v0

    #@9d
    aget-wide v6, v5, v4

    #@9f
    double-to-float v5, v6

    #@a0
    aput v5, p3, v4

    #@a2
    add-int/lit8 v4, v4, 0x1

    #@a4
    goto :goto_97

    #@a5
    .line 196
    :cond_a5
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@a7
    add-int/lit8 v5, v0, 0x1

    #@a9
    aget-wide v6, v4, v5

    #@ab
    cmpg-double v8, p1, v6

    #@ad
    if-gez v8, :cond_cd

    #@af
    .line 197
    aget-wide v8, v4, v0

    #@b1
    sub-double/2addr v6, v8

    #@b2
    sub-double/2addr p1, v8

    #@b3
    div-double/2addr p1, v6

    #@b4
    :goto_b4
    if-ge v3, v2, :cond_cc

    #@b6
    .line 200
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@b8
    aget-object v4, v1, v0

    #@ba
    aget-wide v6, v4, v3

    #@bc
    .line 201
    aget-object v1, v1, v5

    #@be
    aget-wide v8, v1, v3

    #@c0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@c2
    sub-double/2addr v10, p1

    #@c3
    mul-double/2addr v6, v10

    #@c4
    mul-double/2addr v8, p1

    #@c5
    add-double/2addr v6, v8

    #@c6
    double-to-float v1, v6

    #@c7
    .line 203
    aput v1, p3, v3

    #@c9
    add-int/lit8 v3, v3, 0x1

    #@cb
    goto :goto_b4

    #@cc
    :cond_cc
    return-void

    #@cd
    :cond_cd
    move v0, v5

    #@ce
    goto :goto_8a

    #@cf
    :cond_cf
    return-void
.end method

.method public getSlope(DI)D
    .registers 11

    #@0
    .line 270
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    .line 272
    aget-wide v3, v0, v2

    #@6
    cmpg-double v5, p1, v3

    #@8
    if-gez v5, :cond_c

    #@a
    :goto_a
    move-wide p1, v3

    #@b
    goto :goto_15

    #@c
    :cond_c
    add-int/lit8 v3, v1, -0x1

    #@e
    .line 274
    aget-wide v3, v0, v3

    #@10
    cmpl-double v0, p1, v3

    #@12
    if-ltz v0, :cond_15

    #@14
    goto :goto_a

    #@15
    :cond_15
    :goto_15
    add-int/lit8 v0, v1, -0x1

    #@17
    if-ge v2, v0, :cond_35

    #@19
    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@1b
    add-int/lit8 v3, v2, 0x1

    #@1d
    aget-wide v4, v0, v3

    #@1f
    cmpg-double v6, p1, v4

    #@21
    if-gtz v6, :cond_33

    #@23
    .line 279
    aget-wide p1, v0, v2

    #@25
    sub-double/2addr v4, p1

    #@26
    .line 281
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@28
    aget-object p2, p1, v2

    #@2a
    aget-wide v0, p2, p3

    #@2c
    .line 282
    aget-object p1, p1, v3

    #@2e
    aget-wide p2, p1, p3

    #@30
    sub-double/2addr p2, v0

    #@31
    div-double/2addr p2, v4

    #@32
    return-wide p2

    #@33
    :cond_33
    move v2, v3

    #@34
    goto :goto_15

    #@35
    :cond_35
    const-wide/16 p1, 0x0

    #@37
    return-wide p1
.end method

.method public getSlope(D[D)V
    .registers 16

    #@0
    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@2
    array-length v1, v0

    #@3
    .line 246
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@5
    const/4 v3, 0x0

    #@6
    aget-object v2, v2, v3

    #@8
    array-length v2, v2

    #@9
    .line 247
    aget-wide v4, v0, v3

    #@b
    cmpg-double v6, p1, v4

    #@d
    if-gtz v6, :cond_11

    #@f
    :goto_f
    move-wide p1, v4

    #@10
    goto :goto_1a

    #@11
    :cond_11
    add-int/lit8 v4, v1, -0x1

    #@13
    .line 249
    aget-wide v4, v0, v4

    #@15
    cmpl-double v0, p1, v4

    #@17
    if-ltz v0, :cond_1a

    #@19
    goto :goto_f

    #@1a
    :cond_1a
    :goto_1a
    move v0, v3

    #@1b
    :goto_1b
    add-int/lit8 v4, v1, -0x1

    #@1d
    if-ge v0, v4, :cond_41

    #@1f
    .line 254
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@21
    add-int/lit8 v5, v0, 0x1

    #@23
    aget-wide v6, v4, v5

    #@25
    cmpg-double v8, p1, v6

    #@27
    if-gtz v8, :cond_3f

    #@29
    .line 255
    aget-wide p1, v4, v0

    #@2b
    sub-double/2addr v6, p1

    #@2c
    :goto_2c
    if-ge v3, v2, :cond_41

    #@2e
    .line 258
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    #@30
    aget-object p2, p1, v0

    #@32
    aget-wide v8, p2, v3

    #@34
    .line 259
    aget-object p1, p1, v5

    #@36
    aget-wide v10, p1, v3

    #@38
    sub-double/2addr v10, v8

    #@39
    div-double/2addr v10, v6

    #@3a
    .line 261
    aput-wide v10, p3, v3

    #@3c
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_2c

    #@3f
    :cond_3f
    move v0, v5

    #@40
    goto :goto_1b

    #@41
    :cond_41
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    #@0
    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    #@2
    return-object v0
.end method
