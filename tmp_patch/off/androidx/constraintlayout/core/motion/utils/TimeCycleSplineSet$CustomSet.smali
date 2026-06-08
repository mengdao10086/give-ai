.class public Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;
.super Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

.field mTempValues:[F

.field mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)V
    .registers 4

    #@0
    .line 110
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;-><init>()V

    #@3
    .line 106
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    #@a
    const-string v0, ","

    #@c
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    const/4 v0, 0x1

    #@11
    aget-object p1, p1, v0

    #@13
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    #@15
    .line 112
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    #@17
    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .registers 6

    #@0
    .line 138
    new-instance p1, Ljava/lang/RuntimeException;

    #@2
    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setPoint(ILandroidx/constraintlayout/core/motion/CustomAttribute;FIF)V
    .registers 8

    #@0
    .line 142
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->append(ILandroidx/constraintlayout/core/motion/CustomAttribute;)V

    #@5
    .line 143
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    #@7
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [F

    #@a
    const/4 v1, 0x0

    #@b
    aput p3, v0, v1

    #@d
    const/4 p3, 0x1

    #@e
    aput p5, v0, p3

    #@10
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->append(I[F)V

    #@13
    .line 144
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    #@15
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    #@18
    move-result p1

    #@19
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    #@1b
    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-wide/from16 v2, p3

    #@6
    .line 149
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@8
    move/from16 v5, p2

    #@a
    float-to-double v5, v5

    #@b
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    #@d
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    #@10
    .line 150
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    #@12
    array-length v5, v4

    #@13
    add-int/lit8 v5, v5, -0x2

    #@15
    aget v5, v4, v5

    #@17
    .line 151
    array-length v6, v4

    #@18
    const/4 v7, 0x1

    #@19
    sub-int/2addr v6, v7

    #@1a
    aget v4, v4, v6

    #@1c
    .line 152
    iget-wide v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_time:J

    #@1e
    sub-long v8, v2, v8

    #@20
    .line 154
    iget v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    #@22
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@25
    move-result v6

    #@26
    const/4 v10, 0x0

    #@27
    const/4 v11, 0x0

    #@28
    if-eqz v6, :cond_3e

    #@2a
    .line 155
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    #@2c
    move-object/from16 v12, p5

    #@2e
    invoke-virtual {v12, v1, v6, v11}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    #@31
    move-result v6

    #@32
    iput v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    #@34
    .line 156
    iget v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    #@36
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_3e

    #@3c
    .line 157
    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    #@3e
    .line 161
    :cond_3e
    iget v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    #@40
    float-to-double v12, v6

    #@41
    long-to-double v8, v8

    #@42
    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    #@47
    mul-double/2addr v8, v14

    #@48
    float-to-double v14, v5

    #@49
    mul-double/2addr v8, v14

    #@4a
    add-double/2addr v12, v8

    #@4b
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@4d
    rem-double/2addr v12, v8

    #@4e
    double-to-float v6, v12

    #@4f
    iput v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    #@51
    .line 162
    iput-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_time:J

    #@53
    .line 163
    iget v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    #@55
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->calcWave(F)F

    #@58
    move-result v2

    #@59
    .line 164
    iput-boolean v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    #@5b
    move v3, v11

    #@5c
    .line 165
    :goto_5c
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCache:[F

    #@5e
    array-length v6, v6

    #@5f
    if-ge v3, v6, :cond_81

    #@61
    .line 166
    iget-boolean v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    #@63
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    #@65
    aget v8, v8, v3

    #@67
    float-to-double v8, v8

    #@68
    const-wide/16 v12, 0x0

    #@6a
    cmpl-double v8, v8, v12

    #@6c
    if-eqz v8, :cond_70

    #@6e
    move v8, v7

    #@6f
    goto :goto_71

    #@70
    :cond_70
    move v8, v11

    #@71
    :goto_71
    or-int/2addr v6, v8

    #@72
    iput-boolean v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    #@74
    .line 167
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCache:[F

    #@76
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    #@78
    aget v8, v8, v3

    #@7a
    mul-float/2addr v8, v2

    #@7b
    add-float/2addr v8, v4

    #@7c
    aput v8, v6, v3

    #@7e
    add-int/lit8 v3, v3, 0x1

    #@80
    goto :goto_5c

    #@81
    .line 169
    :cond_81
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    #@83
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    #@86
    move-result-object v2

    #@87
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCache:[F

    #@89
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V

    #@8c
    cmpl-float v1, v5, v10

    #@8e
    if-eqz v1, :cond_92

    #@90
    .line 171
    iput-boolean v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    #@92
    .line 173
    :cond_92
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    #@94
    return v1
.end method

.method public setup(I)V
    .registers 16

    #@0
    .line 116
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->size()I

    #@5
    move-result v0

    #@6
    .line 117
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->numberOfInterpolatedValues()I

    #@10
    move-result v1

    #@11
    .line 118
    new-array v3, v0, [D

    #@13
    add-int/lit8 v4, v1, 0x2

    #@15
    .line 119
    new-array v5, v4, [F

    #@17
    iput-object v5, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    #@19
    .line 120
    new-array v5, v1, [F

    #@1b
    iput-object v5, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCache:[F

    #@1d
    const/4 v5, 0x2

    #@1e
    new-array v5, v5, [I

    #@20
    const/4 v6, 0x1

    #@21
    aput v4, v5, v6

    #@23
    aput v0, v5, v2

    #@25
    .line 121
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@27
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, [[D

    #@2d
    move v5, v2

    #@2e
    :goto_2e
    if-ge v5, v0, :cond_71

    #@30
    .line 123
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    #@32
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->keyAt(I)I

    #@35
    move-result v7

    #@36
    .line 124
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    #@38
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    #@3b
    move-result-object v8

    #@3c
    .line 125
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    #@3e
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->valueAt(I)[F

    #@41
    move-result-object v9

    #@42
    int-to-double v10, v7

    #@43
    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    #@48
    mul-double/2addr v10, v12

    #@49
    .line 126
    aput-wide v10, v3, v5

    #@4b
    .line 127
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    #@4d
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/motion/CustomAttribute;->getValuesToInterpolate([F)V

    #@50
    move v7, v2

    #@51
    .line 128
    :goto_51
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    #@53
    array-length v10, v8

    #@54
    if-ge v7, v10, :cond_60

    #@56
    .line 129
    aget-object v10, v4, v5

    #@58
    aget v8, v8, v7

    #@5a
    float-to-double v11, v8

    #@5b
    aput-wide v11, v10, v7

    #@5d
    add-int/lit8 v7, v7, 0x1

    #@5f
    goto :goto_51

    #@60
    .line 131
    :cond_60
    aget-object v7, v4, v5

    #@62
    aget v8, v9, v2

    #@64
    float-to-double v10, v8

    #@65
    aput-wide v10, v7, v1

    #@67
    add-int/lit8 v8, v1, 0x1

    #@69
    .line 132
    aget v9, v9, v6

    #@6b
    float-to-double v9, v9

    #@6c
    aput-wide v9, v7, v8

    #@6e
    add-int/lit8 v5, v5, 0x1

    #@70
    goto :goto_2e

    #@71
    .line 134
    :cond_71
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@74
    move-result-object p1

    #@75
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@77
    return-void
.end method
