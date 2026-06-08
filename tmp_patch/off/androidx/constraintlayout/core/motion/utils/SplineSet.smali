.class public abstract Landroidx/constraintlayout/core/motion/utils/SplineSet;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;,
        Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;,
        Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;,
        Landroidx/constraintlayout/core/motion/utils/SplineSet$Sort;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplineSet"


# instance fields
.field private count:I

.field protected mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0xa

    #@5
    new-array v1, v0, [I

    #@7
    .line 36
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    #@9
    new-array v0, v0, [F

    #@b
    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    #@d
    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .registers 3

    #@0
    .line 114
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)V

    #@5
    return-object v0
.end method

.method public static makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .registers 3

    #@0
    .line 118
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)V

    #@5
    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .registers 4

    #@0
    .line 123
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;-><init>(Ljava/lang/String;J)V

    #@5
    return-object v0
.end method


# virtual methods
.method public get(F)F
    .registers 5

    #@0
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    float-to-double v1, p1

    #@3
    const/4 p1, 0x0

    #@4
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(DI)D

    #@7
    move-result-wide v0

    #@8
    double-to-float p1, v0

    #@9
    return p1
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .registers 2

    #@0
    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    return-object v0
.end method

.method public getSlope(F)F
    .registers 5

    #@0
    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    float-to-double v1, p1

    #@3
    const/4 p1, 0x0

    #@4
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(DI)D

    #@7
    move-result-wide v0

    #@8
    double-to-float p1, v0

    #@9
    return p1
.end method

.method public setPoint(IF)V
    .registers 6

    #@0
    .line 74
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    #@2
    array-length v1, v0

    #@3
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    #@5
    add-int/lit8 v2, v2, 0x1

    #@7
    if-ge v1, v2, :cond_1d

    #@9
    .line 75
    array-length v1, v0

    #@a
    mul-int/lit8 v1, v1, 0x2

    #@c
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    #@12
    .line 76
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    #@14
    array-length v1, v0

    #@15
    mul-int/lit8 v1, v1, 0x2

    #@17
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    #@1d
    .line 78
    :cond_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    #@1f
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    #@21
    aput p1, v0, v1

    #@23
    .line 79
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    #@25
    aput p2, p1, v1

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    .line 80
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    #@2b
    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V
    .registers 4

    #@0
    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    #@9
    move-result p2

    #@a
    invoke-interface {p1, v0, p2}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(IF)Z

    #@d
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 57
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setup(I)V
    .registers 11

    #@0
    .line 84
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 88
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    #@7
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    #@9
    const/4 v3, 0x1

    #@a
    sub-int/2addr v0, v3

    #@b
    const/4 v4, 0x0

    #@c
    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet$Sort;->doubleQuickSort([I[FII)V

    #@f
    move v0, v3

    #@10
    move v1, v0

    #@11
    .line 92
    :goto_11
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    #@13
    if-ge v0, v2, :cond_24

    #@15
    .line 93
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    #@17
    add-int/lit8 v5, v0, -0x1

    #@19
    aget v5, v2, v5

    #@1b
    aget v2, v2, v0

    #@1d
    if-eq v5, v2, :cond_21

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    :cond_21
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_11

    #@24
    .line 98
    :cond_24
    new-array v0, v1, [D

    #@26
    const/4 v2, 0x2

    #@27
    new-array v2, v2, [I

    #@29
    aput v3, v2, v3

    #@2b
    aput v1, v2, v4

    #@2d
    .line 99
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2f
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, [[D

    #@35
    move v2, v4

    #@36
    move v3, v2

    #@37
    .line 101
    :goto_37
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    #@39
    if-ge v2, v5, :cond_63

    #@3b
    if-lez v2, :cond_48

    #@3d
    .line 102
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    #@3f
    aget v6, v5, v2

    #@41
    add-int/lit8 v7, v2, -0x1

    #@43
    aget v5, v5, v7

    #@45
    if-ne v6, v5, :cond_48

    #@47
    goto :goto_60

    #@48
    .line 106
    :cond_48
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    #@4a
    aget v5, v5, v2

    #@4c
    int-to-double v5, v5

    #@4d
    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    #@52
    mul-double/2addr v5, v7

    #@53
    aput-wide v5, v0, v3

    #@55
    .line 107
    aget-object v5, v1, v3

    #@57
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    #@59
    aget v6, v6, v2

    #@5b
    float-to-double v6, v6

    #@5c
    aput-wide v6, v5, v4

    #@5e
    add-int/lit8 v3, v3, 0x1

    #@60
    :goto_60
    add-int/lit8 v2, v2, 0x1

    #@62
    goto :goto_37

    #@63
    .line 110
    :cond_63
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@66
    move-result-object p1

    #@67
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

    #@2
    .line 48
    new-instance v1, Ljava/text/DecimalFormat;

    #@4
    const-string v2, "##.##"

    #@6
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    #@9
    const/4 v2, 0x0

    #@a
    .line 49
    :goto_a
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    #@c
    if-ge v2, v3, :cond_45

    #@e
    .line 50
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
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

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
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    #@2d
    aget v3, v3, v2

    #@2f
    float-to-double v3, v3

    #@30
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    const-string v3, "] "

    #@3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_a

    #@45
    :cond_45
    return-object v0
.end method
