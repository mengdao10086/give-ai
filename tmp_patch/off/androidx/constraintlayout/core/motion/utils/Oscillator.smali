.class public Landroidx/constraintlayout/core/motion/utils/Oscillator;
.super Ljava/lang/Object;
.source "Oscillator.java"


# static fields
.field public static final BOUNCE:I = 0x6

.field public static final COS_WAVE:I = 0x5

.field public static final CUSTOM:I = 0x7

.field public static final REVERSE_SAW_WAVE:I = 0x4

.field public static final SAW_WAVE:I = 0x3

.field public static final SIN_WAVE:I = 0x0

.field public static final SQUARE_WAVE:I = 0x1

.field public static TAG:Ljava/lang/String; = "Oscillator"

.field public static final TRIANGLE_WAVE:I = 0x2


# instance fields
.field PI2:D

.field mArea:[D

.field mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

.field mCustomType:Ljava/lang/String;

.field private mNormalized:Z

.field mPeriod:[F

.field mPosition:[D

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    new-array v1, v0, [F

    #@6
    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@8
    new-array v1, v0, [D

    #@a
    .line 28
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@c
    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    #@11
    .line 41
    iput-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    #@13
    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    #@15
    return-void
.end method


# virtual methods
.method public addPoint(DF)V
    .registers 8

    #@0
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@2
    array-length v0, v0

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    .line 62
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@7
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    #@a
    move-result v1

    #@b
    if-gez v1, :cond_10

    #@d
    neg-int v1, v1

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    .line 66
    :cond_10
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@12
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@18
    .line 67
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@1a
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@20
    .line 68
    new-array v2, v0, [D

    #@22
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    #@24
    .line 69
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@26
    add-int/lit8 v3, v1, 0x1

    #@28
    sub-int/2addr v0, v1

    #@29
    add-int/lit8 v0, v0, -0x1

    #@2b
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@30
    aput-wide p1, v0, v1

    #@32
    .line 71
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@34
    aput p3, p1, v1

    #@36
    const/4 p1, 0x0

    #@37
    .line 72
    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    #@39
    return-void
.end method

.method getDP(D)D
    .registers 13

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmpg-double v2, p1, v0

    #@4
    if-gtz v2, :cond_c

    #@6
    const-wide p1, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@b
    goto :goto_17

    #@c
    :cond_c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@e
    cmpl-double v2, p1, v2

    #@10
    if-ltz v2, :cond_17

    #@12
    const-wide p1, 0x3feffffde7210be9L    # 0.999999

    #@17
    .line 153
    :cond_17
    :goto_17
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@19
    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    #@1c
    move-result v2

    #@1d
    if-lez v2, :cond_20

    #@1f
    return-wide v0

    #@20
    :cond_20
    if-eqz v2, :cond_3c

    #@22
    neg-int v0, v2

    #@23
    add-int/lit8 v0, v0, -0x1

    #@25
    .line 161
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@27
    aget v2, v1, v0

    #@29
    add-int/lit8 v3, v0, -0x1

    #@2b
    aget v1, v1, v3

    #@2d
    sub-float/2addr v2, v1

    #@2e
    float-to-double v4, v2

    #@2f
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@31
    aget-wide v6, v2, v0

    #@33
    aget-wide v8, v2, v3

    #@35
    sub-double/2addr v6, v8

    #@36
    div-double/2addr v4, v6

    #@37
    mul-double/2addr p1, v4

    #@38
    float-to-double v0, v1

    #@39
    mul-double/2addr v4, v8

    #@3a
    sub-double/2addr v0, v4

    #@3b
    add-double/2addr v0, p1

    #@3c
    :cond_3c
    return-wide v0
.end method

.method getP(D)D
    .registers 13

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmpg-double v2, p1, v0

    #@4
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    #@6
    if-gez v2, :cond_a

    #@8
    move-wide p1, v0

    #@9
    goto :goto_f

    #@a
    :cond_a
    cmpl-double v2, p1, v3

    #@c
    if-lez v2, :cond_f

    #@e
    move-wide p1, v3

    #@f
    .line 108
    :cond_f
    :goto_f
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@11
    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    #@14
    move-result v2

    #@15
    if-lez v2, :cond_19

    #@17
    move-wide v0, v3

    #@18
    goto :goto_45

    #@19
    :cond_19
    if-eqz v2, :cond_45

    #@1b
    neg-int v0, v2

    #@1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    .line 115
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@20
    aget v2, v1, v0

    #@22
    add-int/lit8 v3, v0, -0x1

    #@24
    aget v1, v1, v3

    #@26
    sub-float/2addr v2, v1

    #@27
    float-to-double v4, v2

    #@28
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@2a
    aget-wide v6, v2, v0

    #@2c
    aget-wide v8, v2, v3

    #@2e
    sub-double/2addr v6, v8

    #@2f
    div-double/2addr v4, v6

    #@30
    .line 116
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    #@32
    aget-wide v2, v0, v3

    #@34
    float-to-double v0, v1

    #@35
    mul-double v6, v4, v8

    #@37
    sub-double/2addr v0, v6

    #@38
    sub-double v6, p1, v8

    #@3a
    mul-double/2addr v0, v6

    #@3b
    add-double/2addr v2, v0

    #@3c
    mul-double/2addr p1, p1

    #@3d
    mul-double/2addr v8, v8

    #@3e
    sub-double/2addr p1, v8

    #@3f
    mul-double/2addr v4, p1

    #@40
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    #@42
    div-double/2addr v4, p1

    #@43
    add-double v0, v2, v4

    #@45
    :cond_45
    :goto_45
    return-wide v0
.end method

.method public getSlope(DDD)D
    .registers 11

    #@0
    .line 168
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    #@3
    move-result-wide v0

    #@4
    add-double/2addr p3, v0

    #@5
    .line 170
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getDP(D)D

    #@8
    move-result-wide p1

    #@9
    add-double/2addr p1, p5

    #@a
    .line 171
    iget p5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    #@c
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@e
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    #@10
    packed-switch p5, :pswitch_data_50

    #@13
    .line 174
    iget-wide p5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    #@15
    mul-double/2addr p1, p5

    #@16
    mul-double/2addr p5, p3

    #@17
    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    #@1a
    move-result-wide p3

    #@1b
    mul-double/2addr p1, p3

    #@1c
    return-wide p1

    #@1d
    .line 188
    :pswitch_1d
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@1f
    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    #@21
    rem-double/2addr p3, p5

    #@22
    const/4 p2, 0x0

    #@23
    invoke-virtual {p1, p3, p4, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    #@26
    move-result-wide p1

    #@27
    return-wide p1

    #@28
    :pswitch_28
    mul-double/2addr p1, v2

    #@29
    mul-double/2addr p3, v2

    #@2a
    add-double/2addr p3, v0

    #@2b
    rem-double/2addr p3, v2

    #@2c
    sub-double/2addr p3, v0

    #@2d
    mul-double/2addr p1, p3

    #@2e
    return-wide p1

    #@2f
    .line 184
    :pswitch_2f
    iget-wide p5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    #@31
    neg-double v0, p5

    #@32
    mul-double/2addr v0, p1

    #@33
    mul-double/2addr p5, p3

    #@34
    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    #@37
    move-result-wide p1

    #@38
    mul-double/2addr v0, p1

    #@39
    return-wide v0

    #@3a
    :pswitch_3a
    neg-double p1, p1

    #@3b
    mul-double/2addr p1, v0

    #@3c
    return-wide p1

    #@3d
    :pswitch_3d
    mul-double/2addr p1, v0

    #@3e
    return-wide p1

    #@3f
    :pswitch_3f
    mul-double/2addr p1, v2

    #@40
    mul-double/2addr p3, v2

    #@41
    const-wide/high16 p5, 0x4008000000000000L    # 3.0

    #@43
    add-double/2addr p3, p5

    #@44
    rem-double/2addr p3, v2

    #@45
    sub-double/2addr p3, v0

    #@46
    .line 178
    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    #@49
    move-result-wide p3

    #@4a
    mul-double/2addr p1, p3

    #@4b
    return-wide p1

    #@4c
    :pswitch_4c
    const-wide/16 p1, 0x0

    #@4e
    return-wide p1

    #@4f
    nop

    #@50
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_3f
        :pswitch_3d
        :pswitch_3a
        :pswitch_2f
        :pswitch_28
        :pswitch_1d
    .end packed-switch
.end method

.method public getValue(DD)D
    .registers 12

    #@0
    .line 124
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    #@3
    move-result-wide p1

    #@4
    add-double/2addr p1, p3

    #@5
    .line 125
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    #@7
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    #@9
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    #@b
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    #@d
    packed-switch v0, :pswitch_data_52

    #@10
    .line 128
    iget-wide p3, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    #@12
    mul-double/2addr p3, p1

    #@13
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    #@16
    move-result-wide p1

    #@17
    return-wide p1

    #@18
    .line 143
    :pswitch_18
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@1a
    rem-double/2addr p1, v5

    #@1b
    const/4 p4, 0x0

    #@1c
    invoke-virtual {p3, p1, p2, p4}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    #@1f
    move-result-wide p1

    #@20
    return-wide p1

    #@21
    :pswitch_21
    mul-double/2addr p1, v1

    #@22
    rem-double/2addr p1, v1

    #@23
    sub-double/2addr p1, v3

    #@24
    .line 140
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    #@27
    move-result-wide p1

    #@28
    sub-double p1, v5, p1

    #@2a
    mul-double/2addr p1, p1

    #@2b
    :goto_2b
    sub-double/2addr v5, p1

    #@2c
    return-wide v5

    #@2d
    .line 138
    :pswitch_2d
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    #@2f
    add-double/2addr p3, p1

    #@30
    mul-double/2addr v0, p3

    #@31
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@34
    move-result-wide p1

    #@35
    return-wide p1

    #@36
    :pswitch_36
    mul-double/2addr p1, v3

    #@37
    add-double/2addr p1, v5

    #@38
    rem-double/2addr p1, v3

    #@39
    goto :goto_2b

    #@3a
    :pswitch_3a
    mul-double/2addr p1, v3

    #@3b
    add-double/2addr p1, v5

    #@3c
    rem-double/2addr p1, v3

    #@3d
    sub-double/2addr p1, v5

    #@3e
    return-wide p1

    #@3f
    :pswitch_3f
    mul-double/2addr p1, v1

    #@40
    add-double/2addr p1, v5

    #@41
    rem-double/2addr p1, v1

    #@42
    sub-double/2addr p1, v3

    #@43
    .line 132
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    #@46
    move-result-wide p1

    #@47
    goto :goto_2b

    #@48
    :pswitch_48
    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    #@4a
    rem-double/2addr p1, v5

    #@4b
    sub-double/2addr p3, p1

    #@4c
    .line 130
    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    #@4f
    move-result-wide p1

    #@50
    return-wide p1

    #@51
    nop

    #@52
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3f
        :pswitch_3a
        :pswitch_36
        :pswitch_2d
        :pswitch_21
        :pswitch_18
    .end packed-switch
.end method

.method public normalize()V
    .registers 18

    #@0
    move-object/from16 v0, p0

    #@2
    const-wide/16 v1, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    move-wide v5, v1

    #@6
    move v4, v3

    #@7
    .line 81
    :goto_7
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@9
    array-length v8, v7

    #@a
    if-ge v4, v8, :cond_13

    #@c
    .line 82
    aget v7, v7, v4

    #@e
    float-to-double v7, v7

    #@f
    add-double/2addr v5, v7

    #@10
    add-int/lit8 v4, v4, 0x1

    #@12
    goto :goto_7

    #@13
    :cond_13
    const/4 v4, 0x1

    #@14
    move-wide v8, v1

    #@15
    move v7, v4

    #@16
    .line 84
    :goto_16
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@18
    array-length v11, v10

    #@19
    const/high16 v12, 0x40000000    # 2.0f

    #@1b
    if-ge v7, v11, :cond_32

    #@1d
    add-int/lit8 v11, v7, -0x1

    #@1f
    .line 85
    aget v13, v10, v11

    #@21
    aget v10, v10, v7

    #@23
    add-float/2addr v13, v10

    #@24
    div-float/2addr v13, v12

    #@25
    .line 86
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@27
    aget-wide v14, v10, v7

    #@29
    aget-wide v11, v10, v11

    #@2b
    sub-double/2addr v14, v11

    #@2c
    float-to-double v10, v13

    #@2d
    mul-double/2addr v14, v10

    #@2e
    add-double/2addr v8, v14

    #@2f
    add-int/lit8 v7, v7, 0x1

    #@31
    goto :goto_16

    #@32
    :cond_32
    move v7, v3

    #@33
    .line 90
    :goto_33
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@35
    array-length v11, v10

    #@36
    if-ge v7, v11, :cond_44

    #@38
    .line 91
    aget v11, v10, v7

    #@3a
    float-to-double v13, v11

    #@3b
    div-double v15, v5, v8

    #@3d
    mul-double/2addr v13, v15

    #@3e
    double-to-float v11, v13

    #@3f
    aput v11, v10, v7

    #@41
    add-int/lit8 v7, v7, 0x1

    #@43
    goto :goto_33

    #@44
    .line 93
    :cond_44
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    #@46
    aput-wide v1, v5, v3

    #@48
    move v1, v4

    #@49
    .line 94
    :goto_49
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@4b
    array-length v3, v2

    #@4c
    if-ge v1, v3, :cond_69

    #@4e
    add-int/lit8 v3, v1, -0x1

    #@50
    .line 95
    aget v5, v2, v3

    #@52
    aget v2, v2, v1

    #@54
    add-float/2addr v5, v2

    #@55
    div-float/2addr v5, v12

    #@56
    .line 96
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@58
    aget-wide v6, v2, v1

    #@5a
    aget-wide v8, v2, v3

    #@5c
    sub-double/2addr v6, v8

    #@5d
    .line 97
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    #@5f
    aget-wide v8, v2, v3

    #@61
    float-to-double v10, v5

    #@62
    mul-double/2addr v6, v10

    #@63
    add-double/2addr v8, v6

    #@64
    aput-wide v8, v2, v1

    #@66
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_49

    #@69
    .line 99
    :cond_69
    iput-boolean v4, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    #@6b
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .registers 3

    #@0
    .line 53
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    #@2
    .line 54
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomType:Ljava/lang/String;

    #@4
    if-eqz p2, :cond_c

    #@6
    .line 56
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->buildWave(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@9
    move-result-object p1

    #@a
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@c
    :cond_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "pos ="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    #@9
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, " period="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    #@19
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method
