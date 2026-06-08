.class public Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "MonotonicCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTangent:[[D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 24

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v2, p2

    #@6
    .line 34
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    #@9
    const/4 v3, 0x1

    #@a
    .line 31
    iput-boolean v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    #@c
    .line 35
    array-length v4, v1

    #@d
    const/4 v5, 0x0

    #@e
    .line 36
    aget-object v6, v2, v5

    #@10
    array-length v6, v6

    #@11
    .line 37
    new-array v7, v6, [D

    #@13
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@15
    add-int/lit8 v7, v4, -0x1

    #@17
    const/4 v8, 0x2

    #@18
    new-array v9, v8, [I

    #@1a
    aput v6, v9, v3

    #@1c
    aput v7, v9, v5

    #@1e
    .line 38
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@20
    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@23
    move-result-object v9

    #@24
    check-cast v9, [[D

    #@26
    new-array v10, v8, [I

    #@28
    aput v6, v10, v3

    #@2a
    aput v4, v10, v5

    #@2c
    .line 39
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2e
    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, [[D

    #@34
    move v10, v5

    #@35
    :goto_35
    if-ge v10, v6, :cond_77

    #@37
    move v11, v5

    #@38
    :goto_38
    if-ge v11, v7, :cond_6a

    #@3a
    add-int/lit8 v12, v11, 0x1

    #@3c
    .line 42
    aget-wide v13, v1, v12

    #@3e
    aget-wide v15, v1, v11

    #@40
    sub-double/2addr v13, v15

    #@41
    .line 43
    aget-object v15, v9, v11

    #@43
    aget-object v16, v2, v12

    #@45
    aget-wide v17, v16, v10

    #@47
    aget-object v16, v2, v11

    #@49
    aget-wide v19, v16, v10

    #@4b
    sub-double v17, v17, v19

    #@4d
    div-double v17, v17, v13

    #@4f
    aput-wide v17, v15, v10

    #@51
    if-nez v11, :cond_58

    #@53
    .line 45
    aget-object v11, v3, v11

    #@55
    aput-wide v17, v11, v10

    #@57
    goto :goto_68

    #@58
    .line 47
    :cond_58
    aget-object v13, v3, v11

    #@5a
    add-int/lit8 v11, v11, -0x1

    #@5c
    aget-object v11, v9, v11

    #@5e
    aget-wide v14, v11, v10

    #@60
    add-double v14, v14, v17

    #@62
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    #@64
    mul-double v14, v14, v16

    #@66
    aput-wide v14, v13, v10

    #@68
    :goto_68
    move v11, v12

    #@69
    goto :goto_38

    #@6a
    .line 50
    :cond_6a
    aget-object v11, v3, v7

    #@6c
    add-int/lit8 v12, v4, -0x2

    #@6e
    aget-object v12, v9, v12

    #@70
    aget-wide v13, v12, v10

    #@72
    aput-wide v13, v11, v10

    #@74
    add-int/lit8 v10, v10, 0x1

    #@76
    goto :goto_35

    #@77
    :cond_77
    move v4, v5

    #@78
    :goto_78
    if-ge v4, v7, :cond_c9

    #@7a
    move v8, v5

    #@7b
    :goto_7b
    if-ge v8, v6, :cond_c6

    #@7d
    .line 55
    aget-object v10, v9, v4

    #@7f
    aget-wide v11, v10, v8

    #@81
    const-wide/16 v13, 0x0

    #@83
    cmpl-double v10, v11, v13

    #@85
    if-nez v10, :cond_92

    #@87
    .line 56
    aget-object v10, v3, v4

    #@89
    aput-wide v13, v10, v8

    #@8b
    add-int/lit8 v10, v4, 0x1

    #@8d
    .line 57
    aget-object v10, v3, v10

    #@8f
    aput-wide v13, v10, v8

    #@91
    goto :goto_c3

    #@92
    .line 59
    :cond_92
    aget-object v10, v3, v4

    #@94
    aget-wide v13, v10, v8

    #@96
    div-double/2addr v13, v11

    #@97
    add-int/lit8 v10, v4, 0x1

    #@99
    .line 60
    aget-object v15, v3, v10

    #@9b
    aget-wide v16, v15, v8

    #@9d
    div-double v11, v16, v11

    #@9f
    .line 61
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    #@a2
    move-result-wide v15

    #@a3
    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    #@a5
    cmpl-double v17, v15, v17

    #@a7
    if-lez v17, :cond_c3

    #@a9
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    #@ab
    div-double v17, v17, v15

    #@ad
    .line 64
    aget-object v15, v3, v4

    #@af
    mul-double v13, v13, v17

    #@b1
    aget-object v16, v9, v4

    #@b3
    aget-wide v19, v16, v8

    #@b5
    mul-double v13, v13, v19

    #@b7
    aput-wide v13, v15, v8

    #@b9
    .line 65
    aget-object v10, v3, v10

    #@bb
    mul-double v17, v17, v11

    #@bd
    aget-wide v11, v16, v8

    #@bf
    mul-double v17, v17, v11

    #@c1
    aput-wide v17, v10, v8

    #@c3
    :cond_c3
    :goto_c3
    add-int/lit8 v8, v8, 0x1

    #@c5
    goto :goto_7b

    #@c6
    :cond_c6
    add-int/lit8 v4, v4, 0x1

    #@c8
    goto :goto_78

    #@c9
    .line 70
    :cond_c9
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@cb
    .line 71
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@cd
    .line 72
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    #@cf
    return-void
.end method

.method public static buildWave(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .registers 9

    #@0
    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    new-array v0, v0, [D

    #@8
    const/16 v1, 0x28

    #@a
    .line 311
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v1

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    const/16 v2, 0x2c

    #@12
    .line 312
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@15
    move-result v3

    #@16
    const/4 v4, 0x0

    #@17
    :goto_17
    const/4 v5, -0x1

    #@18
    if-eq v3, v5, :cond_32

    #@1a
    .line 315
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    add-int/lit8 v5, v4, 0x1

    #@24
    .line 316
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@27
    move-result-wide v6

    #@28
    aput-wide v6, v0, v4

    #@2a
    add-int/lit8 v1, v3, 0x1

    #@2c
    .line 317
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@2f
    move-result v3

    #@30
    move v4, v5

    #@31
    goto :goto_17

    #@32
    :cond_32
    const/16 v2, 0x29

    #@34
    .line 319
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@37
    move-result v2

    #@38
    .line 320
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object p0

    #@3c
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3f
    move-result-object p0

    #@40
    add-int/lit8 v1, v4, 0x1

    #@42
    .line 321
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@45
    move-result-wide v2

    #@46
    aput-wide v2, v0, v4

    #@48
    .line 323
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    #@4b
    move-result-object p0

    #@4c
    invoke-static {p0}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->buildWave([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@4f
    move-result-object p0

    #@50
    return-object p0
.end method

.method private static buildWave([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    .line 327
    array-length v1, v0

    #@3
    mul-int/lit8 v1, v1, 0x3

    #@5
    const/4 v2, 0x2

    #@6
    sub-int/2addr v1, v2

    #@7
    .line 328
    array-length v3, v0

    #@8
    const/4 v4, 0x1

    #@9
    sub-int/2addr v3, v4

    #@a
    int-to-double v5, v3

    #@b
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    #@d
    div-double v5, v7, v5

    #@f
    new-array v2, v2, [I

    #@11
    aput v4, v2, v4

    #@13
    const/4 v4, 0x0

    #@14
    aput v1, v2, v4

    #@16
    .line 330
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@18
    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, [[D

    #@1e
    .line 331
    new-array v1, v1, [D

    #@20
    move v9, v4

    #@21
    .line 332
    :goto_21
    array-length v10, v0

    #@22
    if-ge v9, v10, :cond_50

    #@24
    .line 333
    aget-wide v10, v0, v9

    #@26
    add-int v12, v9, v3

    #@28
    .line 334
    aget-object v13, v2, v12

    #@2a
    aput-wide v10, v13, v4

    #@2c
    int-to-double v13, v9

    #@2d
    mul-double/2addr v13, v5

    #@2e
    .line 335
    aput-wide v13, v1, v12

    #@30
    if-lez v9, :cond_4d

    #@32
    mul-int/lit8 v12, v3, 0x2

    #@34
    add-int/2addr v12, v9

    #@35
    .line 337
    aget-object v15, v2, v12

    #@37
    add-double v16, v10, v7

    #@39
    aput-wide v16, v15, v4

    #@3b
    add-double v15, v13, v7

    #@3d
    .line 338
    aput-wide v15, v1, v12

    #@3f
    add-int/lit8 v12, v9, -0x1

    #@41
    .line 340
    aget-object v15, v2, v12

    #@43
    sub-double/2addr v10, v7

    #@44
    sub-double/2addr v10, v5

    #@45
    aput-wide v10, v15, v4

    #@47
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    #@49
    add-double/2addr v13, v10

    #@4a
    sub-double/2addr v13, v5

    #@4b
    .line 341
    aput-wide v13, v1, v12

    #@4d
    :cond_4d
    add-int/lit8 v9, v9, 0x1

    #@4f
    goto :goto_21

    #@50
    .line 345
    :cond_50
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@52
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    #@55
    return-object v0
.end method

.method private static diff(DDDDDD)D
    .registers 22

    #@0
    mul-double v0, p2, p2

    #@2
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    #@4
    mul-double/2addr v2, v0

    #@5
    mul-double v2, v2, p6

    #@7
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    #@9
    mul-double v6, p2, v4

    #@b
    mul-double v8, v6, p6

    #@d
    add-double/2addr v2, v8

    #@e
    mul-double/2addr v4, v0

    #@f
    mul-double/2addr v4, p4

    #@10
    add-double/2addr v2, v4

    #@11
    mul-double/2addr v6, p4

    #@12
    sub-double/2addr v2, v6

    #@13
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    #@15
    mul-double/2addr v4, p0

    #@16
    mul-double v6, v4, p10

    #@18
    mul-double/2addr v6, v0

    #@19
    add-double/2addr v2, v6

    #@1a
    mul-double v4, v4, p8

    #@1c
    mul-double/2addr v4, v0

    #@1d
    add-double/2addr v2, v4

    #@1e
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@20
    mul-double/2addr v0, p0

    #@21
    mul-double v0, v0, p10

    #@23
    mul-double/2addr v0, p2

    #@24
    sub-double/2addr v2, v0

    #@25
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    #@27
    mul-double/2addr v0, p0

    #@28
    mul-double v0, v0, p8

    #@2a
    mul-double/2addr v0, p2

    #@2b
    sub-double/2addr v2, v0

    #@2c
    mul-double v0, p0, p8

    #@2e
    add-double/2addr v2, v0

    #@2f
    return-wide v2
.end method

.method private static interpolate(DDDDDD)D
    .registers 24

    #@0
    mul-double v0, p2, p2

    #@2
    mul-double v2, v0, p2

    #@4
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    #@6
    mul-double/2addr v4, v2

    #@7
    mul-double v4, v4, p6

    #@9
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    #@b
    mul-double/2addr v6, v0

    #@c
    mul-double v8, v6, p6

    #@e
    add-double/2addr v4, v8

    #@f
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@11
    mul-double v10, v2, v8

    #@13
    mul-double v10, v10, p4

    #@15
    add-double/2addr v4, v10

    #@16
    mul-double v6, v6, p4

    #@18
    sub-double/2addr v4, v6

    #@19
    add-double v4, v4, p4

    #@1b
    mul-double v6, p0, p10

    #@1d
    mul-double v10, v6, v2

    #@1f
    add-double/2addr v4, v10

    #@20
    mul-double v10, p0, p8

    #@22
    mul-double/2addr v2, v10

    #@23
    add-double/2addr v4, v2

    #@24
    mul-double/2addr v6, v0

    #@25
    sub-double/2addr v4, v6

    #@26
    mul-double v2, p0, v8

    #@28
    mul-double v2, v2, p8

    #@2a
    mul-double/2addr v2, v0

    #@2b
    sub-double/2addr v4, v2

    #@2c
    mul-double/2addr v10, p2

    #@2d
    add-double/2addr v4, v10

    #@2e
    return-wide v4
.end method


# virtual methods
.method public getPos(DI)D
    .registers 26

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p3

    #@4
    .line 187
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@6
    array-length v3, v2

    #@7
    .line 188
    iget-boolean v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    #@9
    const/4 v5, 0x0

    #@a
    if-eqz v4, :cond_36

    #@c
    .line 189
    aget-wide v6, v2, v5

    #@e
    cmpg-double v4, p1, v6

    #@10
    if-gtz v4, :cond_21

    #@12
    .line 190
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@14
    aget-object v2, v2, v5

    #@16
    aget-wide v3, v2, v1

    #@18
    sub-double v8, p1, v6

    #@1a
    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    #@1d
    move-result-wide v1

    #@1e
    :goto_1e
    mul-double/2addr v8, v1

    #@1f
    add-double/2addr v3, v8

    #@20
    return-wide v3

    #@21
    :cond_21
    add-int/lit8 v4, v3, -0x1

    #@23
    .line 192
    aget-wide v6, v2, v4

    #@25
    cmpl-double v2, p1, v6

    #@27
    if-ltz v2, :cond_52

    #@29
    .line 193
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@2b
    aget-object v2, v2, v4

    #@2d
    aget-wide v3, v2, v1

    #@2f
    sub-double v8, p1, v6

    #@31
    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    #@34
    move-result-wide v1

    #@35
    goto :goto_1e

    #@36
    .line 196
    :cond_36
    aget-wide v6, v2, v5

    #@38
    cmpg-double v4, p1, v6

    #@3a
    if-gtz v4, :cond_43

    #@3c
    .line 197
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@3e
    aget-object v2, v2, v5

    #@40
    aget-wide v1, v2, v1

    #@42
    return-wide v1

    #@43
    :cond_43
    add-int/lit8 v4, v3, -0x1

    #@45
    .line 199
    aget-wide v6, v2, v4

    #@47
    cmpl-double v2, p1, v6

    #@49
    if-ltz v2, :cond_52

    #@4b
    .line 200
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@4d
    aget-object v2, v2, v4

    #@4f
    aget-wide v1, v2, v1

    #@51
    return-wide v1

    #@52
    :cond_52
    :goto_52
    add-int/lit8 v2, v3, -0x1

    #@54
    if-ge v5, v2, :cond_8e

    #@56
    .line 205
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@58
    aget-wide v6, v2, v5

    #@5a
    cmpl-double v4, p1, v6

    #@5c
    if-nez v4, :cond_65

    #@5e
    .line 206
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@60
    aget-object v2, v2, v5

    #@62
    aget-wide v1, v2, v1

    #@64
    return-wide v1

    #@65
    :cond_65
    add-int/lit8 v4, v5, 0x1

    #@67
    .line 208
    aget-wide v8, v2, v4

    #@69
    cmpg-double v2, p1, v8

    #@6b
    if-gez v2, :cond_8c

    #@6d
    sub-double v10, v8, v6

    #@6f
    sub-double v2, p1, v6

    #@71
    div-double v12, v2, v10

    #@73
    .line 211
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@75
    aget-object v3, v2, v5

    #@77
    aget-wide v14, v3, v1

    #@79
    .line 212
    aget-object v2, v2, v4

    #@7b
    aget-wide v16, v2, v1

    #@7d
    .line 213
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    #@7f
    aget-object v3, v2, v5

    #@81
    aget-wide v18, v3, v1

    #@83
    .line 214
    aget-object v2, v2, v4

    #@85
    aget-wide v20, v2, v1

    #@87
    .line 215
    invoke-static/range {v10 .. v21}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    #@8a
    move-result-wide v1

    #@8b
    return-wide v1

    #@8c
    :cond_8c
    move v5, v4

    #@8d
    goto :goto_52

    #@8e
    :cond_8e
    const-wide/16 v1, 0x0

    #@90
    return-wide v1
.end method

.method public getPos(D[D)V
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    .line 77
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@4
    array-length v2, v1

    #@5
    .line 78
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@7
    const/4 v4, 0x0

    #@8
    aget-object v3, v3, v4

    #@a
    array-length v3, v3

    #@b
    .line 79
    iget-boolean v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    #@d
    if-eqz v5, :cond_5c

    #@f
    .line 80
    aget-wide v5, v1, v4

    #@11
    cmpg-double v7, p1, v5

    #@13
    if-gtz v7, :cond_35

    #@15
    .line 81
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@17
    invoke-virtual {v0, v5, v6, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    #@1a
    move v1, v4

    #@1b
    :goto_1b
    if-ge v1, v3, :cond_34

    #@1d
    .line 83
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@1f
    aget-object v2, v2, v4

    #@21
    aget-wide v5, v2, v1

    #@23
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@25
    aget-wide v7, v2, v4

    #@27
    sub-double v7, p1, v7

    #@29
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@2b
    aget-wide v9, v2, v1

    #@2d
    mul-double/2addr v7, v9

    #@2e
    add-double/2addr v5, v7

    #@2f
    aput-wide v5, p3, v1

    #@31
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_1b

    #@34
    :cond_34
    return-void

    #@35
    :cond_35
    add-int/lit8 v5, v2, -0x1

    #@37
    .line 87
    aget-wide v6, v1, v5

    #@39
    cmpl-double v1, p1, v6

    #@3b
    if-ltz v1, :cond_87

    #@3d
    .line 88
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@3f
    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    #@42
    :goto_42
    if-ge v4, v3, :cond_5b

    #@44
    .line 90
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@46
    aget-object v1, v1, v5

    #@48
    aget-wide v6, v1, v4

    #@4a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@4c
    aget-wide v8, v1, v5

    #@4e
    sub-double v1, p1, v8

    #@50
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@52
    aget-wide v9, v8, v4

    #@54
    mul-double/2addr v1, v9

    #@55
    add-double/2addr v6, v1

    #@56
    aput-wide v6, p3, v4

    #@58
    add-int/lit8 v4, v4, 0x1

    #@5a
    goto :goto_42

    #@5b
    :cond_5b
    return-void

    #@5c
    .line 95
    :cond_5c
    aget-wide v5, v1, v4

    #@5e
    cmpg-double v5, p1, v5

    #@60
    if-gtz v5, :cond_71

    #@62
    move v1, v4

    #@63
    :goto_63
    if-ge v1, v3, :cond_70

    #@65
    .line 97
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@67
    aget-object v2, v2, v4

    #@69
    aget-wide v5, v2, v1

    #@6b
    aput-wide v5, p3, v1

    #@6d
    add-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_63

    #@70
    :cond_70
    return-void

    #@71
    :cond_71
    add-int/lit8 v5, v2, -0x1

    #@73
    .line 101
    aget-wide v6, v1, v5

    #@75
    cmpl-double v1, p1, v6

    #@77
    if-ltz v1, :cond_87

    #@79
    :goto_79
    if-ge v4, v3, :cond_86

    #@7b
    .line 103
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@7d
    aget-object v1, v1, v5

    #@7f
    aget-wide v6, v1, v4

    #@81
    aput-wide v6, p3, v4

    #@83
    add-int/lit8 v4, v4, 0x1

    #@85
    goto :goto_79

    #@86
    :cond_86
    return-void

    #@87
    :cond_87
    move v1, v4

    #@88
    :goto_88
    add-int/lit8 v5, v2, -0x1

    #@8a
    if-ge v1, v5, :cond_d6

    #@8c
    .line 110
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@8e
    aget-wide v6, v5, v1

    #@90
    cmpl-double v5, p1, v6

    #@92
    if-nez v5, :cond_a2

    #@94
    move v5, v4

    #@95
    :goto_95
    if-ge v5, v3, :cond_a2

    #@97
    .line 112
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@99
    aget-object v6, v6, v1

    #@9b
    aget-wide v7, v6, v5

    #@9d
    aput-wide v7, p3, v5

    #@9f
    add-int/lit8 v5, v5, 0x1

    #@a1
    goto :goto_95

    #@a2
    .line 115
    :cond_a2
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@a4
    add-int/lit8 v6, v1, 0x1

    #@a6
    aget-wide v7, v5, v6

    #@a8
    cmpg-double v9, p1, v7

    #@aa
    if-gez v9, :cond_d4

    #@ac
    .line 116
    aget-wide v9, v5, v1

    #@ae
    sub-double/2addr v7, v9

    #@af
    sub-double v9, p1, v9

    #@b1
    div-double/2addr v9, v7

    #@b2
    :goto_b2
    if-ge v4, v3, :cond_d3

    #@b4
    .line 119
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@b6
    aget-object v5, v2, v1

    #@b8
    aget-wide v15, v5, v4

    #@ba
    .line 120
    aget-object v2, v2, v6

    #@bc
    aget-wide v17, v2, v4

    #@be
    .line 121
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    #@c0
    aget-object v5, v2, v1

    #@c2
    aget-wide v19, v5, v4

    #@c4
    .line 122
    aget-object v2, v2, v6

    #@c6
    aget-wide v21, v2, v4

    #@c8
    move-wide v11, v7

    #@c9
    move-wide v13, v9

    #@ca
    .line 123
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    #@cd
    move-result-wide v11

    #@ce
    aput-wide v11, p3, v4

    #@d0
    add-int/lit8 v4, v4, 0x1

    #@d2
    goto :goto_b2

    #@d3
    :cond_d3
    return-void

    #@d4
    :cond_d4
    move v1, v6

    #@d5
    goto :goto_88

    #@d6
    :cond_d6
    return-void
.end method

.method public getPos(D[F)V
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    .line 132
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@4
    array-length v2, v1

    #@5
    .line 133
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@7
    const/4 v4, 0x0

    #@8
    aget-object v3, v3, v4

    #@a
    array-length v3, v3

    #@b
    .line 134
    iget-boolean v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    #@d
    if-eqz v5, :cond_5e

    #@f
    .line 135
    aget-wide v5, v1, v4

    #@11
    cmpg-double v7, p1, v5

    #@13
    if-gtz v7, :cond_36

    #@15
    .line 136
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@17
    invoke-virtual {v0, v5, v6, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    #@1a
    move v1, v4

    #@1b
    :goto_1b
    if-ge v1, v3, :cond_35

    #@1d
    .line 138
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@1f
    aget-object v2, v2, v4

    #@21
    aget-wide v5, v2, v1

    #@23
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@25
    aget-wide v7, v2, v4

    #@27
    sub-double v7, p1, v7

    #@29
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@2b
    aget-wide v9, v2, v1

    #@2d
    mul-double/2addr v7, v9

    #@2e
    add-double/2addr v5, v7

    #@2f
    double-to-float v2, v5

    #@30
    aput v2, p3, v1

    #@32
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_1b

    #@35
    :cond_35
    return-void

    #@36
    :cond_36
    add-int/lit8 v5, v2, -0x1

    #@38
    .line 142
    aget-wide v6, v1, v5

    #@3a
    cmpl-double v1, p1, v6

    #@3c
    if-ltz v1, :cond_8b

    #@3e
    .line 143
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@40
    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    #@43
    :goto_43
    if-ge v4, v3, :cond_5d

    #@45
    .line 145
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@47
    aget-object v1, v1, v5

    #@49
    aget-wide v6, v1, v4

    #@4b
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@4d
    aget-wide v8, v1, v5

    #@4f
    sub-double v1, p1, v8

    #@51
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    #@53
    aget-wide v9, v8, v4

    #@55
    mul-double/2addr v1, v9

    #@56
    add-double/2addr v6, v1

    #@57
    double-to-float v1, v6

    #@58
    aput v1, p3, v4

    #@5a
    add-int/lit8 v4, v4, 0x1

    #@5c
    goto :goto_43

    #@5d
    :cond_5d
    return-void

    #@5e
    .line 150
    :cond_5e
    aget-wide v5, v1, v4

    #@60
    cmpg-double v5, p1, v5

    #@62
    if-gtz v5, :cond_74

    #@64
    move v1, v4

    #@65
    :goto_65
    if-ge v1, v3, :cond_73

    #@67
    .line 152
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@69
    aget-object v2, v2, v4

    #@6b
    aget-wide v5, v2, v1

    #@6d
    double-to-float v2, v5

    #@6e
    aput v2, p3, v1

    #@70
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_65

    #@73
    :cond_73
    return-void

    #@74
    :cond_74
    add-int/lit8 v5, v2, -0x1

    #@76
    .line 156
    aget-wide v6, v1, v5

    #@78
    cmpl-double v1, p1, v6

    #@7a
    if-ltz v1, :cond_8b

    #@7c
    :goto_7c
    if-ge v4, v3, :cond_8a

    #@7e
    .line 158
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@80
    aget-object v1, v1, v5

    #@82
    aget-wide v6, v1, v4

    #@84
    double-to-float v1, v6

    #@85
    aput v1, p3, v4

    #@87
    add-int/lit8 v4, v4, 0x1

    #@89
    goto :goto_7c

    #@8a
    :cond_8a
    return-void

    #@8b
    :cond_8b
    move v1, v4

    #@8c
    :goto_8c
    add-int/lit8 v5, v2, -0x1

    #@8e
    if-ge v1, v5, :cond_dc

    #@90
    .line 165
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@92
    aget-wide v6, v5, v1

    #@94
    cmpl-double v5, p1, v6

    #@96
    if-nez v5, :cond_a7

    #@98
    move v5, v4

    #@99
    :goto_99
    if-ge v5, v3, :cond_a7

    #@9b
    .line 167
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@9d
    aget-object v6, v6, v1

    #@9f
    aget-wide v7, v6, v5

    #@a1
    double-to-float v6, v7

    #@a2
    aput v6, p3, v5

    #@a4
    add-int/lit8 v5, v5, 0x1

    #@a6
    goto :goto_99

    #@a7
    .line 170
    :cond_a7
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@a9
    add-int/lit8 v6, v1, 0x1

    #@ab
    aget-wide v7, v5, v6

    #@ad
    cmpg-double v9, p1, v7

    #@af
    if-gez v9, :cond_da

    #@b1
    .line 171
    aget-wide v9, v5, v1

    #@b3
    sub-double/2addr v7, v9

    #@b4
    sub-double v9, p1, v9

    #@b6
    div-double/2addr v9, v7

    #@b7
    :goto_b7
    if-ge v4, v3, :cond_d9

    #@b9
    .line 174
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@bb
    aget-object v5, v2, v1

    #@bd
    aget-wide v15, v5, v4

    #@bf
    .line 175
    aget-object v2, v2, v6

    #@c1
    aget-wide v17, v2, v4

    #@c3
    .line 176
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    #@c5
    aget-object v5, v2, v1

    #@c7
    aget-wide v19, v5, v4

    #@c9
    .line 177
    aget-object v2, v2, v6

    #@cb
    aget-wide v21, v2, v4

    #@cd
    move-wide v11, v7

    #@ce
    move-wide v13, v9

    #@cf
    .line 178
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    #@d2
    move-result-wide v11

    #@d3
    double-to-float v2, v11

    #@d4
    aput v2, p3, v4

    #@d6
    add-int/lit8 v4, v4, 0x1

    #@d8
    goto :goto_b7

    #@d9
    :cond_d9
    return-void

    #@da
    :cond_da
    move v1, v6

    #@db
    goto :goto_8c

    #@dc
    :cond_dc
    return-void
.end method

.method public getSlope(DI)D
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    .line 251
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@4
    array-length v2, v1

    #@5
    const/4 v3, 0x0

    #@6
    .line 253
    aget-wide v4, v1, v3

    #@8
    cmpg-double v6, p1, v4

    #@a
    if-gez v6, :cond_d

    #@c
    goto :goto_18

    #@d
    :cond_d
    add-int/lit8 v4, v2, -0x1

    #@f
    .line 255
    aget-wide v4, v1, v4

    #@11
    cmpl-double v1, p1, v4

    #@13
    if-ltz v1, :cond_16

    #@15
    goto :goto_18

    #@16
    :cond_16
    move-wide/from16 v4, p1

    #@18
    :goto_18
    add-int/lit8 v1, v2, -0x1

    #@1a
    if-ge v3, v1, :cond_49

    #@1c
    .line 259
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@1e
    add-int/lit8 v6, v3, 0x1

    #@20
    aget-wide v7, v1, v6

    #@22
    cmpg-double v9, v4, v7

    #@24
    if-gtz v9, :cond_47

    #@26
    .line 260
    aget-wide v9, v1, v3

    #@28
    sub-double/2addr v7, v9

    #@29
    sub-double/2addr v4, v9

    #@2a
    div-double v13, v4, v7

    #@2c
    .line 262
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@2e
    aget-object v2, v1, v3

    #@30
    aget-wide v15, v2, p3

    #@32
    .line 263
    aget-object v1, v1, v6

    #@34
    aget-wide v17, v1, p3

    #@36
    .line 264
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    #@38
    aget-object v2, v1, v3

    #@3a
    aget-wide v19, v2, p3

    #@3c
    .line 265
    aget-object v1, v1, v6

    #@3e
    aget-wide v21, v1, p3

    #@40
    move-wide v11, v7

    #@41
    .line 266
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    #@44
    move-result-wide v1

    #@45
    div-double/2addr v1, v7

    #@46
    return-wide v1

    #@47
    :cond_47
    move v3, v6

    #@48
    goto :goto_18

    #@49
    :cond_49
    const-wide/16 v1, 0x0

    #@4b
    return-wide v1
.end method

.method public getSlope(D[D)V
    .registers 29

    #@0
    move-object/from16 v0, p0

    #@2
    .line 224
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@4
    array-length v2, v1

    #@5
    .line 225
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@7
    const/4 v4, 0x0

    #@8
    aget-object v3, v3, v4

    #@a
    array-length v3, v3

    #@b
    .line 226
    aget-wide v5, v1, v4

    #@d
    cmpg-double v7, p1, v5

    #@f
    if-gtz v7, :cond_12

    #@11
    goto :goto_1d

    #@12
    :cond_12
    add-int/lit8 v5, v2, -0x1

    #@14
    .line 228
    aget-wide v5, v1, v5

    #@16
    cmpl-double v1, p1, v5

    #@18
    if-ltz v1, :cond_1b

    #@1a
    goto :goto_1d

    #@1b
    :cond_1b
    move-wide/from16 v5, p1

    #@1d
    :goto_1d
    move v1, v4

    #@1e
    :goto_1e
    add-int/lit8 v7, v2, -0x1

    #@20
    if-ge v1, v7, :cond_55

    #@22
    .line 233
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@24
    add-int/lit8 v8, v1, 0x1

    #@26
    aget-wide v9, v7, v8

    #@28
    cmpg-double v11, v5, v9

    #@2a
    if-gtz v11, :cond_53

    #@2c
    .line 234
    aget-wide v11, v7, v1

    #@2e
    sub-double/2addr v9, v11

    #@2f
    sub-double/2addr v5, v11

    #@30
    div-double/2addr v5, v9

    #@31
    :goto_31
    if-ge v4, v3, :cond_55

    #@33
    .line 237
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    #@35
    aget-object v7, v2, v1

    #@37
    aget-wide v17, v7, v4

    #@39
    .line 238
    aget-object v2, v2, v8

    #@3b
    aget-wide v19, v2, v4

    #@3d
    .line 239
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    #@3f
    aget-object v7, v2, v1

    #@41
    aget-wide v21, v7, v4

    #@43
    .line 240
    aget-object v2, v2, v8

    #@45
    aget-wide v23, v2, v4

    #@47
    move-wide v13, v9

    #@48
    move-wide v15, v5

    #@49
    .line 241
    invoke-static/range {v13 .. v24}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    #@4c
    move-result-wide v11

    #@4d
    div-double/2addr v11, v9

    #@4e
    aput-wide v11, p3, v4

    #@50
    add-int/lit8 v4, v4, 0x1

    #@52
    goto :goto_31

    #@53
    :cond_53
    move v1, v8

    #@54
    goto :goto_1e

    #@55
    :cond_55
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    #@0
    .line 274
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    #@2
    return-object v0
.end method
