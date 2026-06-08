.class public abstract Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;
    }
.end annotation


# static fields
.field protected static final CURVE_OFFSET:I = 0x2

.field protected static final CURVE_PERIOD:I = 0x1

.field protected static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field protected static VAL_2PI:F = 6.2831855f


# instance fields
.field protected count:I

.field protected last_cycle:F

.field protected last_time:J

.field protected mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field protected mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    #@6
    const/16 v1, 0xa

    #@8
    new-array v1, v1, [I

    #@a
    .line 33
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    #@c
    const/4 v1, 0x2

    #@d
    new-array v1, v1, [I

    #@f
    .line 34
    fill-array-data v1, :array_28

    #@12
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@14
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, [[F

    #@1a
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    #@1c
    const/4 v1, 0x3

    #@1d
    new-array v1, v1, [F

    #@1f
    .line 37
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCache:[F

    #@21
    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    #@23
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@25
    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    #@27
    return-void

    #@28
    :array_28
    .array-data 4
        0xa
        0x3
    .end array-data
.end method


# virtual methods
.method protected calcWave(F)F
    .registers 5

    #@0
    .line 66
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    #@2
    const/high16 v1, 0x40000000    # 2.0f

    #@4
    const/high16 v2, 0x3f800000    # 1.0f

    #@6
    packed-switch v0, :pswitch_data_42

    #@9
    .line 69
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    #@b
    mul-float/2addr p1, v0

    #@c
    float-to-double v0, p1

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@10
    move-result-wide v0

    #@11
    double-to-float p1, v0

    #@12
    return p1

    #@13
    :pswitch_13
    const/high16 v0, 0x40800000    # 4.0f

    #@15
    mul-float/2addr p1, v0

    #@16
    rem-float/2addr p1, v0

    #@17
    sub-float/2addr p1, v1

    #@18
    .line 81
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@1b
    move-result p1

    #@1c
    sub-float p1, v2, p1

    #@1e
    mul-float/2addr p1, p1

    #@1f
    :goto_1f
    sub-float/2addr v2, p1

    #@20
    return v2

    #@21
    .line 79
    :pswitch_21
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    #@23
    mul-float/2addr p1, v0

    #@24
    float-to-double v0, p1

    #@25
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@28
    move-result-wide v0

    #@29
    double-to-float p1, v0

    #@2a
    return p1

    #@2b
    :pswitch_2b
    mul-float/2addr p1, v1

    #@2c
    add-float/2addr p1, v2

    #@2d
    rem-float/2addr p1, v1

    #@2e
    goto :goto_1f

    #@2f
    :pswitch_2f
    mul-float/2addr p1, v1

    #@30
    add-float/2addr p1, v2

    #@31
    rem-float/2addr p1, v1

    #@32
    sub-float/2addr p1, v2

    #@33
    return p1

    #@34
    .line 73
    :pswitch_34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@37
    move-result p1

    #@38
    goto :goto_1f

    #@39
    .line 71
    :pswitch_39
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    #@3b
    mul-float/2addr p1, v0

    #@3c
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    #@3f
    move-result p1

    #@40
    return p1

    #@41
    nop

    #@42
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2b
        :pswitch_21
        :pswitch_13
    .end packed-switch
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .registers 2

    #@0
    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    return-object v0
.end method

.method public setPoint(IFFIF)V
    .registers 8

    #@0
    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    #@4
    aput p1, v0, v1

    #@6
    .line 96
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    #@8
    aget-object p1, p1, v1

    #@a
    const/4 v0, 0x0

    #@b
    aput p2, p1, v0

    #@d
    const/4 p2, 0x1

    #@e
    .line 97
    aput p3, p1, p2

    #@10
    const/4 p3, 0x2

    #@11
    .line 98
    aput p5, p1, p3

    #@13
    .line 99
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    #@15
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    #@18
    move-result p1

    #@19
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    #@1b
    .line 100
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    #@1d
    add-int/2addr p1, p2

    #@1e
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    #@20
    return-void
.end method

.method protected setStartTime(J)V
    .registers 3

    #@0
    .line 91
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_time:J

    #@2
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 57
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setup(I)V
    .registers 13

    #@0
    .line 178
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    #@2
    if-nez v0, :cond_1b

    #@4
    .line 179
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    const-string v1, "Error no points added to "

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    return-void

    #@1b
    .line 182
    :cond_1b
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    #@1d
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    #@1f
    const/4 v3, 0x1

    #@20
    sub-int/2addr v0, v3

    #@21
    const/4 v4, 0x0

    #@22
    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    #@25
    move v0, v3

    #@26
    move v1, v4

    #@27
    .line 184
    :goto_27
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    #@29
    array-length v5, v2

    #@2a
    if-ge v0, v5, :cond_39

    #@2c
    .line 185
    aget v5, v2, v0

    #@2e
    add-int/lit8 v6, v0, -0x1

    #@30
    aget v2, v2, v6

    #@32
    if-eq v5, v2, :cond_36

    #@34
    add-int/lit8 v1, v1, 0x1

    #@36
    :cond_36
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_27

    #@39
    :cond_39
    if-nez v1, :cond_3c

    #@3b
    move v1, v3

    #@3c
    .line 192
    :cond_3c
    new-array v0, v1, [D

    #@3e
    const/4 v2, 0x2

    #@3f
    new-array v5, v2, [I

    #@41
    const/4 v6, 0x3

    #@42
    aput v6, v5, v3

    #@44
    aput v1, v5, v4

    #@46
    .line 193
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@48
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, [[D

    #@4e
    move v5, v4

    #@4f
    move v6, v5

    #@50
    .line 196
    :goto_50
    iget v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    #@52
    if-ge v5, v7, :cond_88

    #@54
    if-lez v5, :cond_61

    #@56
    .line 197
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    #@58
    aget v8, v7, v5

    #@5a
    add-int/lit8 v9, v5, -0x1

    #@5c
    aget v7, v7, v9

    #@5e
    if-ne v8, v7, :cond_61

    #@60
    goto :goto_85

    #@61
    .line 200
    :cond_61
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    #@63
    aget v7, v7, v5

    #@65
    int-to-double v7, v7

    #@66
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    #@6b
    mul-double/2addr v7, v9

    #@6c
    aput-wide v7, v0, v6

    #@6e
    .line 201
    aget-object v7, v1, v6

    #@70
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    #@72
    aget-object v8, v8, v5

    #@74
    aget v9, v8, v4

    #@76
    float-to-double v9, v9

    #@77
    aput-wide v9, v7, v4

    #@79
    .line 202
    aget v9, v8, v3

    #@7b
    float-to-double v9, v9

    #@7c
    aput-wide v9, v7, v3

    #@7e
    .line 203
    aget v8, v8, v2

    #@80
    float-to-double v8, v8

    #@81
    aput-wide v8, v7, v2

    #@83
    add-int/lit8 v6, v6, 0x1

    #@85
    :goto_85
    add-int/lit8 v5, v5, 0x1

    #@87
    goto :goto_50

    #@88
    .line 206
    :cond_88
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@8b
    move-result-object p1

    #@8c
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@8e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    #@2
    .line 49
    new-instance v1, Ljava/text/DecimalFormat;

    #@4
    const-string v2, "##.##"

    #@6
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    #@9
    const/4 v2, 0x0

    #@a
    .line 50
    :goto_a
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    #@c
    if-ge v2, v3, :cond_44

    #@e
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v3, "["

    #@19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    #@1f
    aget v3, v3, v2

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v3, " , "

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    #@2d
    aget-object v3, v3, v2

    #@2f
    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string v3, "] "

    #@39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_a

    #@44
    :cond_44
    return-object v0
.end method
