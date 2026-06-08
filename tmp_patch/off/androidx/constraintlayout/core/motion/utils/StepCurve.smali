.class public Landroidx/constraintlayout/core/motion/utils/StepCurve;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "StepCurve.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 10

    #@0
    .line 31
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->str:Ljava/lang/String;

    #@5
    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->str:Ljava/lang/String;

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    div-int/lit8 v0, v0, 0x2

    #@d
    new-array v0, v0, [D

    #@f
    const/16 v1, 0x28

    #@11
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@14
    move-result v1

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    const/16 v2, 0x2c

    #@19
    .line 36
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@1c
    move-result v3

    #@1d
    const/4 v4, 0x0

    #@1e
    :goto_1e
    const/4 v5, -0x1

    #@1f
    if-eq v3, v5, :cond_39

    #@21
    .line 39
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    add-int/lit8 v5, v4, 0x1

    #@2b
    .line 40
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@2e
    move-result-wide v6

    #@2f
    aput-wide v6, v0, v4

    #@31
    add-int/lit8 v1, v3, 0x1

    #@33
    .line 41
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@36
    move-result v3

    #@37
    move v4, v5

    #@38
    goto :goto_1e

    #@39
    :cond_39
    const/16 v2, 0x29

    #@3b
    .line 43
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@3e
    move-result v2

    #@3f
    .line 44
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@46
    move-result-object p1

    #@47
    add-int/lit8 v1, v4, 0x1

    #@49
    .line 45
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@4c
    move-result-wide v2

    #@4d
    aput-wide v2, v0, v4

    #@4f
    .line 47
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    #@52
    move-result-object p1

    #@53
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/StepCurve;->genSpline([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@56
    move-result-object p1

    #@57
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@59
    return-void
.end method

.method private static genSpline(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .registers 6

    #@0
    const-string v0, "\\s+"

    #@2
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    .line 53
    array-length v0, p0

    #@7
    new-array v1, v0, [D

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v0, :cond_17

    #@c
    .line 55
    aget-object v3, p0, v2

    #@e
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@11
    move-result-wide v3

    #@12
    aput-wide v3, v1, v2

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_a

    #@17
    .line 57
    :cond_17
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/StepCurve;->genSpline([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@1a
    move-result-object p0

    #@1b
    return-object p0
.end method

.method private static genSpline([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    .line 61
    array-length v1, v0

    #@3
    mul-int/lit8 v1, v1, 0x3

    #@5
    const/4 v2, 0x2

    #@6
    sub-int/2addr v1, v2

    #@7
    .line 62
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
    .line 64
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@18
    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, [[D

    #@1e
    .line 65
    new-array v1, v1, [D

    #@20
    move v9, v4

    #@21
    .line 66
    :goto_21
    array-length v10, v0

    #@22
    if-ge v9, v10, :cond_50

    #@24
    .line 67
    aget-wide v10, v0, v9

    #@26
    add-int v12, v9, v3

    #@28
    .line 68
    aget-object v13, v2, v12

    #@2a
    aput-wide v10, v13, v4

    #@2c
    int-to-double v13, v9

    #@2d
    mul-double/2addr v13, v5

    #@2e
    .line 69
    aput-wide v13, v1, v12

    #@30
    if-lez v9, :cond_4d

    #@32
    mul-int/lit8 v12, v3, 0x2

    #@34
    add-int/2addr v12, v9

    #@35
    .line 71
    aget-object v15, v2, v12

    #@37
    add-double v16, v10, v7

    #@39
    aput-wide v16, v15, v4

    #@3b
    add-double v15, v13, v7

    #@3d
    .line 72
    aput-wide v15, v1, v12

    #@3f
    add-int/lit8 v12, v9, -0x1

    #@41
    .line 74
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
    .line 75
    aput-wide v13, v1, v12

    #@4d
    :cond_4d
    add-int/lit8 v9, v9, 0x1

    #@4f
    goto :goto_21

    #@50
    .line 89
    :cond_50
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@52
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    #@55
    .line 90
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@57
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    const-string v3, " 0 "

    #@5b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5e
    const-wide/16 v5, 0x0

    #@60
    invoke-virtual {v0, v5, v6, v4}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    #@63
    move-result-wide v5

    #@64
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6f
    .line 91
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@71
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    const-string v3, " 1 "

    #@75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@78
    invoke-virtual {v0, v7, v8, v4}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    #@7b
    move-result-wide v3

    #@7c
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    return-object v0
.end method


# virtual methods
.method public get(D)D
    .registers 5

    #@0
    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    #@6
    move-result-wide p1

    #@7
    return-wide p1
.end method

.method public getDiff(D)D
    .registers 5

    #@0
    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    #@6
    move-result-wide p1

    #@7
    return-wide p1
.end method
