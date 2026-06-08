.class public Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
.super Ljava/lang/Object;
.source "SpringStopEngine.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# static fields
.field private static final UNSET:D = 1.7976931348623157E308


# instance fields
.field private mBoundaryMode:I

.field mDamping:D

.field private mInitialized:Z

.field private mLastTime:F

.field private mLastVelocity:D

.field private mMass:F

.field private mPos:F

.field private mStiffness:D

.field private mStopThreshold:F

.field private mTargetPos:D

.field private mV:F


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@5
    .line 26
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    #@7
    const/4 v0, 0x0

    #@8
    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mInitialized:Z

    #@a
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    #@c
    return-void
.end method

.method private compute(D)V
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    .line 101
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    #@4
    .line 102
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    #@6
    .line 104
    iget v5, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    #@8
    float-to-double v5, v5

    #@9
    div-double v5, v1, v5

    #@b
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    #@e
    move-result-wide v5

    #@f
    mul-double v5, v5, p1

    #@11
    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    #@13
    mul-double/2addr v5, v7

    #@14
    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    #@16
    div-double/2addr v7, v5

    #@17
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    #@19
    add-double/2addr v7, v5

    #@1a
    double-to-int v5, v7

    #@1b
    int-to-double v6, v5

    #@1c
    div-double v6, p1, v6

    #@1e
    const/4 v8, 0x0

    #@1f
    :goto_1f
    if-ge v8, v5, :cond_8f

    #@21
    .line 108
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@23
    float-to-double v10, v9

    #@24
    iget-wide v12, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    #@26
    sub-double/2addr v10, v12

    #@27
    neg-double v14, v1

    #@28
    mul-double/2addr v14, v10

    #@29
    .line 109
    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    #@2b
    move-wide/from16 v16, v1

    #@2d
    float-to-double v1, v10

    #@2e
    mul-double/2addr v1, v3

    #@2f
    sub-double/2addr v14, v1

    #@30
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    #@32
    move-wide/from16 v18, v3

    #@34
    float-to-double v2, v1

    #@35
    div-double/2addr v14, v2

    #@36
    float-to-double v2, v10

    #@37
    mul-double/2addr v14, v6

    #@38
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    #@3a
    div-double v14, v14, v20

    #@3c
    add-double/2addr v2, v14

    #@3d
    float-to-double v14, v9

    #@3e
    mul-double v22, v6, v2

    #@40
    div-double v22, v22, v20

    #@42
    add-double v14, v14, v22

    #@44
    sub-double/2addr v14, v12

    #@45
    neg-double v11, v14

    #@46
    mul-double v11, v11, v16

    #@48
    mul-double v2, v2, v18

    #@4a
    sub-double/2addr v11, v2

    #@4b
    float-to-double v1, v1

    #@4c
    div-double/2addr v11, v1

    #@4d
    mul-double/2addr v11, v6

    #@4e
    float-to-double v1, v10

    #@4f
    div-double v3, v11, v20

    #@51
    add-double/2addr v1, v3

    #@52
    float-to-double v3, v10

    #@53
    add-double/2addr v3, v11

    #@54
    double-to-float v3, v3

    #@55
    .line 117
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    #@57
    float-to-double v9, v9

    #@58
    mul-double/2addr v1, v6

    #@59
    add-double/2addr v9, v1

    #@5a
    double-to-float v1, v9

    #@5b
    .line 118
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@5d
    .line 119
    iget v2, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    #@5f
    if-lez v2, :cond_88

    #@61
    const/4 v4, 0x0

    #@62
    cmpg-float v4, v1, v4

    #@64
    if-gez v4, :cond_71

    #@66
    and-int/lit8 v4, v2, 0x1

    #@68
    const/4 v9, 0x1

    #@69
    if-ne v4, v9, :cond_71

    #@6b
    neg-float v1, v1

    #@6c
    .line 121
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@6e
    neg-float v1, v3

    #@6f
    .line 122
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    #@71
    .line 124
    :cond_71
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@73
    const/high16 v3, 0x3f800000    # 1.0f

    #@75
    cmpl-float v3, v1, v3

    #@77
    if-lez v3, :cond_88

    #@79
    and-int/lit8 v2, v2, 0x2

    #@7b
    const/4 v3, 0x2

    #@7c
    if-ne v2, v3, :cond_88

    #@7e
    const/high16 v2, 0x40000000    # 2.0f

    #@80
    sub-float/2addr v2, v1

    #@81
    .line 125
    iput v2, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@83
    .line 126
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    #@85
    neg-float v1, v1

    #@86
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    #@88
    :cond_88
    add-int/lit8 v8, v8, 0x1

    #@8a
    move-wide/from16 v1, v16

    #@8c
    move-wide/from16 v3, v18

    #@8e
    goto :goto_1f

    #@8f
    :cond_8f
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;F)Ljava/lang/String;
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public getAcceleration()F
    .registers 9

    #@0
    .line 77
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    #@2
    .line 78
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    #@4
    .line 79
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@6
    float-to-double v4, v4

    #@7
    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    #@9
    sub-double/2addr v4, v6

    #@a
    neg-double v0, v0

    #@b
    mul-double/2addr v0, v4

    #@c
    .line 80
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    #@e
    float-to-double v4, v4

    #@f
    mul-double/2addr v2, v4

    #@10
    sub-double/2addr v0, v2

    #@11
    double-to-float v0, v0

    #@12
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    #@14
    div-float/2addr v0, v1

    #@15
    return v0
.end method

.method public getInterpolation(F)F
    .registers 4

    #@0
    .line 71
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    #@2
    sub-float v0, p1, v0

    #@4
    float-to-double v0, v0

    #@5
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->compute(D)V

    #@8
    .line 72
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    #@a
    .line 73
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@c
    return p1
.end method

.method public getVelocity()F
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getVelocity(F)F
    .registers 2

    #@0
    .line 66
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    #@2
    return p1
.end method

.method public isStopped()Z
    .registers 9

    #@0
    .line 90
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@2
    float-to-double v0, v0

    #@3
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    #@5
    sub-double/2addr v0, v2

    #@6
    .line 91
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    #@8
    .line 92
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    #@a
    float-to-double v4, v4

    #@b
    .line 93
    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    #@d
    float-to-double v6, v6

    #@e
    mul-double/2addr v4, v4

    #@f
    mul-double/2addr v4, v6

    #@10
    mul-double v6, v2, v0

    #@12
    mul-double/2addr v6, v0

    #@13
    add-double/2addr v4, v6

    #@14
    div-double/2addr v4, v2

    #@15
    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@18
    move-result-wide v0

    #@19
    .line 96
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    #@1b
    float-to-double v2, v2

    #@1c
    cmpg-double v0, v0, v2

    #@1e
    if-gtz v0, :cond_22

    #@20
    const/4 v0, 0x1

    #@21
    goto :goto_23

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    :goto_23
    return v0
.end method

.method log(Ljava/lang/String;)V
    .registers 5

    #@0
    .line 45
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, ") "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string v1, "() "

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 47
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object p1

    #@50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object p1

    #@54
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@57
    return-void
.end method

.method public springConfig(FFFFFFFI)V
    .registers 11

    #@0
    float-to-double v0, p2

    #@1
    .line 52
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    #@3
    float-to-double v0, p6

    #@4
    .line 53
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    #@6
    const/4 p2, 0x0

    #@7
    .line 54
    iput-boolean p2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mInitialized:Z

    #@9
    .line 55
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    #@b
    float-to-double p1, p3

    #@c
    .line 56
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastVelocity:D

    #@e
    float-to-double p1, p5

    #@f
    .line 57
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    #@11
    .line 58
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    #@13
    .line 59
    iput p7, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    #@15
    .line 60
    iput p8, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    #@17
    const/4 p1, 0x0

    #@18
    .line 61
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    #@1a
    return-void
.end method
