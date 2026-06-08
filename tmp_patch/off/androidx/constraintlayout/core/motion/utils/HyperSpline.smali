.class public Landroidx/constraintlayout/core/motion/utils/HyperSpline;
.super Ljava/lang/Object;
.source "HyperSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field mCtl:[[D

.field mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

.field mCurveLength:[D

.field mDimensionality:I

.field mPoints:I

.field mTotalLength:D


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>([[D)V
    .registers 2

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->setup([[D)V

    #@6
    return-void
.end method

.method static calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    .registers 26

    #@0
    move/from16 v0, p0

    #@2
    .line 149
    new-array v1, v0, [D

    #@4
    .line 150
    new-array v2, v0, [D

    #@6
    .line 151
    new-array v3, v0, [D

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@c
    const/4 v6, 0x0

    #@d
    .line 154
    aput-wide v4, v1, v6

    #@f
    const/4 v4, 0x1

    #@10
    move v5, v4

    #@11
    :goto_11
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    #@13
    if-ge v5, v0, :cond_22

    #@15
    add-int/lit8 v9, v5, -0x1

    #@17
    .line 156
    aget-wide v9, v1, v9

    #@19
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    #@1b
    sub-double/2addr v11, v9

    #@1c
    div-double/2addr v7, v11

    #@1d
    aput-wide v7, v1, v5

    #@1f
    add-int/lit8 v5, v5, 0x1

    #@21
    goto :goto_11

    #@22
    :cond_22
    add-int/lit8 v5, v0, -0x1

    #@24
    .line 158
    aget-wide v9, v1, v5

    #@26
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    #@28
    sub-double v9, v11, v9

    #@2a
    div-double/2addr v7, v9

    #@2b
    aput-wide v7, v1, v0

    #@2d
    .line 160
    aget-wide v7, p1, v4

    #@2f
    aget-wide v9, p1, v6

    #@31
    sub-double/2addr v7, v9

    #@32
    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    #@34
    mul-double/2addr v7, v9

    #@35
    aget-wide v13, v1, v6

    #@37
    mul-double/2addr v7, v13

    #@38
    aput-wide v7, v2, v6

    #@3a
    :goto_3a
    if-ge v4, v0, :cond_50

    #@3c
    add-int/lit8 v7, v4, 0x1

    #@3e
    .line 162
    aget-wide v13, p1, v7

    #@40
    add-int/lit8 v8, v4, -0x1

    #@42
    aget-wide v15, p1, v8

    #@44
    sub-double/2addr v13, v15

    #@45
    mul-double/2addr v13, v9

    #@46
    aget-wide v15, v2, v8

    #@48
    sub-double/2addr v13, v15

    #@49
    aget-wide v15, v1, v4

    #@4b
    mul-double/2addr v13, v15

    #@4c
    aput-wide v13, v2, v4

    #@4e
    move v4, v7

    #@4f
    goto :goto_3a

    #@50
    .line 164
    :cond_50
    aget-wide v7, p1, v0

    #@52
    aget-wide v13, p1, v5

    #@54
    sub-double/2addr v7, v13

    #@55
    mul-double/2addr v7, v9

    #@56
    aget-wide v13, v2, v5

    #@58
    sub-double/2addr v7, v13

    #@59
    aget-wide v13, v1, v0

    #@5b
    mul-double/2addr v7, v13

    #@5c
    aput-wide v7, v2, v0

    #@5e
    .line 166
    aput-wide v7, v3, v0

    #@60
    :goto_60
    if-ltz v5, :cond_71

    #@62
    .line 168
    aget-wide v7, v2, v5

    #@64
    aget-wide v13, v1, v5

    #@66
    add-int/lit8 v4, v5, 0x1

    #@68
    aget-wide v15, v3, v4

    #@6a
    mul-double/2addr v13, v15

    #@6b
    sub-double/2addr v7, v13

    #@6c
    aput-wide v7, v3, v5

    #@6e
    add-int/lit8 v5, v5, -0x1

    #@70
    goto :goto_60

    #@71
    .line 171
    :cond_71
    new-array v1, v0, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@73
    :goto_73
    if-ge v6, v0, :cond_a0

    #@75
    .line 173
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@77
    aget-wide v4, p1, v6

    #@79
    double-to-float v7, v4

    #@7a
    float-to-double v14, v7

    #@7b
    aget-wide v16, v3, v6

    #@7d
    add-int/lit8 v7, v6, 0x1

    #@7f
    aget-wide v18, p1, v7

    #@81
    sub-double v20, v18, v4

    #@83
    mul-double v20, v20, v9

    #@85
    mul-double v22, v16, v11

    #@87
    sub-double v20, v20, v22

    #@89
    aget-wide v22, v3, v7

    #@8b
    sub-double v20, v20, v22

    #@8d
    sub-double v4, v4, v18

    #@8f
    mul-double/2addr v4, v11

    #@90
    add-double v4, v4, v16

    #@92
    add-double v4, v4, v22

    #@94
    move-object v13, v2

    #@95
    move-wide/from16 v18, v20

    #@97
    move-wide/from16 v20, v4

    #@99
    invoke-direct/range {v13 .. v21}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    #@9c
    aput-object v2, v1, v6

    #@9e
    move v6, v7

    #@9f
    goto :goto_73

    #@a0
    :cond_a0
    return-object v1
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D
    .registers 18

    #@0
    move-object/from16 v0, p1

    #@2
    .line 124
    array-length v1, v0

    #@3
    .line 125
    array-length v1, v0

    #@4
    new-array v1, v1, [D

    #@6
    const-wide/16 v2, 0x0

    #@8
    move-wide v4, v2

    #@9
    move-wide v6, v4

    #@a
    :goto_a
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@c
    cmpg-double v10, v4, v8

    #@e
    const/4 v11, 0x0

    #@f
    if-gez v10, :cond_35

    #@11
    move-wide v8, v2

    #@12
    .line 128
    :goto_12
    array-length v10, v0

    #@13
    if-ge v11, v10, :cond_25

    #@15
    .line 129
    aget-wide v12, v1, v11

    #@17
    .line 130
    aget-object v10, v0, v11

    #@19
    invoke-virtual {v10, v4, v5}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    #@1c
    move-result-wide v14

    #@1d
    aput-wide v14, v1, v11

    #@1f
    sub-double/2addr v12, v14

    #@20
    mul-double/2addr v12, v12

    #@21
    add-double/2addr v8, v12

    #@22
    add-int/lit8 v11, v11, 0x1

    #@24
    goto :goto_12

    #@25
    :cond_25
    cmpl-double v10, v4, v2

    #@27
    if-lez v10, :cond_2e

    #@29
    .line 134
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@2c
    move-result-wide v8

    #@2d
    add-double/2addr v6, v8

    #@2e
    :cond_2e
    const-wide v8, 0x3fb999999999999aL    # 0.1

    #@33
    add-double/2addr v4, v8

    #@34
    goto :goto_a

    #@35
    .line 139
    :cond_35
    :goto_35
    array-length v4, v0

    #@36
    if-ge v11, v4, :cond_48

    #@38
    .line 140
    aget-wide v4, v1, v11

    #@3a
    .line 141
    aget-object v10, v0, v11

    #@3c
    invoke-virtual {v10, v8, v9}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    #@3f
    move-result-wide v12

    #@40
    aput-wide v12, v1, v11

    #@42
    sub-double/2addr v4, v12

    #@43
    mul-double/2addr v4, v4

    #@44
    add-double/2addr v2, v4

    #@45
    add-int/lit8 v11, v11, 0x1

    #@47
    goto :goto_35

    #@48
    .line 144
    :cond_48
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@4b
    move-result-wide v0

    #@4c
    add-double/2addr v6, v0

    #@4d
    return-wide v6
.end method

.method public getPos(DI)D
    .registers 9

    #@0
    .line 112
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    #@2
    mul-double/2addr p1, v0

    #@3
    const/4 v0, 0x0

    #@4
    .line 115
    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@6
    array-length v2, v1

    #@7
    add-int/lit8 v2, v2, -0x1

    #@9
    if-ge v0, v2, :cond_15

    #@b
    aget-wide v2, v1, v0

    #@d
    cmpg-double v4, v2, p1

    #@f
    if-gez v4, :cond_15

    #@11
    sub-double/2addr p1, v2

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_4

    #@15
    .line 118
    :cond_15
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@17
    aget-object p3, v2, p3

    #@19
    aget-object p3, p3, v0

    #@1b
    aget-wide v0, v1, v0

    #@1d
    div-double/2addr p1, v0

    #@1e
    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    #@21
    move-result-wide p1

    #@22
    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 10

    #@0
    .line 88
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    #@2
    mul-double/2addr p1, v0

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    .line 91
    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@7
    array-length v3, v2

    #@8
    add-int/lit8 v3, v3, -0x1

    #@a
    if-ge v1, v3, :cond_16

    #@c
    aget-wide v3, v2, v1

    #@e
    cmpg-double v2, v3, p1

    #@10
    if-gez v2, :cond_16

    #@12
    sub-double/2addr p1, v3

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_5

    #@16
    .line 94
    :cond_16
    :goto_16
    array-length v2, p3

    #@17
    if-ge v0, v2, :cond_2e

    #@19
    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@1b
    aget-object v2, v2, v0

    #@1d
    aget-object v2, v2, v1

    #@1f
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@21
    aget-wide v4, v3, v1

    #@23
    div-double v3, p1, v4

    #@25
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    #@28
    move-result-wide v2

    #@29
    aput-wide v2, p3, v0

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_16

    #@2e
    :cond_2e
    return-void
.end method

.method public getPos(D[F)V
    .registers 10

    #@0
    .line 100
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    #@2
    mul-double/2addr p1, v0

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    .line 103
    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@7
    array-length v3, v2

    #@8
    add-int/lit8 v3, v3, -0x1

    #@a
    if-ge v1, v3, :cond_16

    #@c
    aget-wide v3, v2, v1

    #@e
    cmpg-double v2, v3, p1

    #@10
    if-gez v2, :cond_16

    #@12
    sub-double/2addr p1, v3

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_5

    #@16
    .line 106
    :cond_16
    :goto_16
    array-length v2, p3

    #@17
    if-ge v0, v2, :cond_2f

    #@19
    .line 107
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@1b
    aget-object v2, v2, v0

    #@1d
    aget-object v2, v2, v1

    #@1f
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@21
    aget-wide v4, v3, v1

    #@23
    div-double v3, p1, v4

    #@25
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    #@28
    move-result-wide v2

    #@29
    double-to-float v2, v2

    #@2a
    aput v2, p3, v0

    #@2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_16

    #@2f
    :cond_2f
    return-void
.end method

.method public getVelocity(D[D)V
    .registers 10

    #@0
    .line 76
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    #@2
    mul-double/2addr p1, v0

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    .line 79
    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@7
    array-length v3, v2

    #@8
    add-int/lit8 v3, v3, -0x1

    #@a
    if-ge v1, v3, :cond_16

    #@c
    aget-wide v3, v2, v1

    #@e
    cmpg-double v2, v3, p1

    #@10
    if-gez v2, :cond_16

    #@12
    sub-double/2addr p1, v3

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_5

    #@16
    .line 82
    :cond_16
    :goto_16
    array-length v2, p3

    #@17
    if-ge v0, v2, :cond_2e

    #@19
    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@1b
    aget-object v2, v2, v0

    #@1d
    aget-object v2, v2, v1

    #@1f
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@21
    aget-wide v4, v3, v1

    #@23
    div-double v3, p1, v4

    #@25
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->vel(D)D

    #@28
    move-result-wide v2

    #@29
    aput-wide v2, p3, v0

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_16

    #@2e
    :cond_2e
    return-void
.end method

.method public setup([[D)V
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    .line 48
    aget-object v1, p1, v0

    #@3
    array-length v1, v1

    #@4
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    #@6
    .line 49
    array-length v2, p1

    #@7
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    #@9
    const/4 v3, 0x2

    #@a
    new-array v3, v3, [I

    #@c
    const/4 v4, 0x1

    #@d
    aput v2, v3, v4

    #@f
    aput v1, v3, v0

    #@11
    .line 50
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@13
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [[D

    #@19
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    #@1b
    .line 51
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    #@1d
    new-array v1, v1, [[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@1f
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@21
    move v1, v0

    #@22
    .line 52
    :goto_22
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    #@24
    if-ge v1, v2, :cond_3b

    #@26
    move v2, v0

    #@27
    .line 53
    :goto_27
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    #@29
    if-ge v2, v3, :cond_38

    #@2b
    .line 54
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    #@2d
    aget-object v3, v3, v1

    #@2f
    aget-object v5, p1, v2

    #@31
    aget-wide v6, v5, v1

    #@33
    aput-wide v6, v3, v2

    #@35
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_27

    #@38
    :cond_38
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_22

    #@3b
    :cond_3b
    move p1, v0

    #@3c
    .line 58
    :goto_3c
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    #@3e
    if-ge p1, v1, :cond_50

    #@40
    .line 59
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@42
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    #@44
    aget-object v2, v2, p1

    #@46
    array-length v3, v2

    #@47
    invoke-static {v3, v2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@4a
    move-result-object v2

    #@4b
    aput-object v2, v1, p1

    #@4d
    add-int/lit8 p1, p1, 0x1

    #@4f
    goto :goto_3c

    #@50
    .line 62
    :cond_50
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    #@52
    sub-int/2addr p1, v4

    #@53
    new-array p1, p1, [D

    #@55
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@57
    const-wide/16 v2, 0x0

    #@59
    .line 63
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    #@5b
    .line 64
    new-array p1, v1, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@5d
    move v1, v0

    #@5e
    .line 65
    :goto_5e
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@60
    array-length v2, v2

    #@61
    if-ge v1, v2, :cond_83

    #@63
    move v2, v0

    #@64
    .line 66
    :goto_64
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    #@66
    if-ge v2, v3, :cond_73

    #@68
    .line 68
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    #@6a
    aget-object v3, v3, v2

    #@6c
    aget-object v3, v3, v1

    #@6e
    aput-object v3, p1, v2

    #@70
    add-int/lit8 v2, v2, 0x1

    #@72
    goto :goto_64

    #@73
    .line 71
    :cond_73
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    #@75
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    #@77
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D

    #@7a
    move-result-wide v5

    #@7b
    aput-wide v5, v4, v1

    #@7d
    add-double/2addr v2, v5

    #@7e
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    #@80
    add-int/lit8 v1, v1, 0x1

    #@82
    goto :goto_5e

    #@83
    :cond_83
    return-void
.end method
