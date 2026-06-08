.class public Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attribute",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 221
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    #@3
    .line 217
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    #@a
    const-string v0, ","

    #@c
    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    const/4 v0, 0x1

    #@11
    aget-object p1, p1, v0

    #@13
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    #@15
    .line 223
    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@17
    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "period",
            "shape",
            "offset"
        }
    .end annotation

    #@0
    .line 249
    new-instance p1, Ljava/lang/RuntimeException;

    #@2
    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "period",
            "shape",
            "offset"
        }
    .end annotation

    #@0
    .line 253
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@5
    .line 254
    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

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
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@13
    .line 255
    iget p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveShape:I

    #@15
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    #@18
    move-result p1

    #@19
    iput p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveShape:I

    #@1b
    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-wide/from16 v2, p3

    #@6
    .line 260
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@8
    move/from16 v5, p2

    #@a
    float-to-double v5, v5

    #@b
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    #@d
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    #@10
    .line 261
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    #@12
    array-length v5, v4

    #@13
    add-int/lit8 v5, v5, -0x2

    #@15
    aget v5, v4, v5

    #@17
    .line 262
    array-length v6, v4

    #@18
    const/4 v7, 0x1

    #@19
    sub-int/2addr v6, v7

    #@1a
    aget v4, v4, v6

    #@1c
    .line 263
    iget-wide v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_time:J

    #@1e
    sub-long v8, v2, v8

    #@20
    .line 265
    iget v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

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
    .line 266
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    #@2c
    move-object/from16 v12, p5

    #@2e
    invoke-virtual {v12, v1, v6, v11}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    #@31
    move-result v6

    #@32
    iput v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    #@34
    .line 267
    iget v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    #@36
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_3e

    #@3c
    .line 268
    iput v10, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    #@3e
    .line 272
    :cond_3e
    iget v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

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
    iput v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    #@51
    .line 273
    iput-wide v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_time:J

    #@53
    .line 274
    iget v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    #@55
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->calcWave(F)F

    #@58
    move-result v2

    #@59
    .line 275
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    #@5b
    move v3, v11

    #@5c
    .line 276
    :goto_5c
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    #@5e
    array-length v6, v6

    #@5f
    if-ge v3, v6, :cond_81

    #@61
    .line 277
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    #@63
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

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
    iput-boolean v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    #@74
    .line 278
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    #@76
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

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
    .line 280
    :cond_81
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@83
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@89
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    #@8b
    invoke-static {v2, v1, v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    #@8e
    cmpl-float v1, v5, v10

    #@90
    if-eqz v1, :cond_94

    #@92
    .line 282
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    #@94
    .line 284
    :cond_94
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    #@96
    return v1
.end method

.method public setup(I)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    #@0
    .line 227
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    .line 228
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@f
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@12
    move-result v1

    #@13
    .line 229
    new-array v3, v0, [D

    #@15
    add-int/lit8 v4, v1, 0x2

    #@17
    .line 230
    new-array v5, v4, [F

    #@19
    iput-object v5, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    #@1b
    .line 231
    new-array v5, v1, [F

    #@1d
    iput-object v5, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    #@1f
    const/4 v5, 0x2

    #@20
    new-array v5, v5, [I

    #@22
    const/4 v6, 0x1

    #@23
    aput v4, v5, v6

    #@25
    aput v0, v5, v2

    #@27
    .line 232
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@29
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, [[D

    #@2f
    move v5, v2

    #@30
    :goto_30
    if-ge v5, v0, :cond_77

    #@32
    .line 234
    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@34
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    #@37
    move-result v7

    #@38
    .line 235
    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3d
    move-result-object v8

    #@3e
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@40
    .line 236
    iget-object v9, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@45
    move-result-object v9

    #@46
    check-cast v9, [F

    #@48
    int-to-double v10, v7

    #@49
    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    #@4e
    mul-double/2addr v10, v12

    #@4f
    .line 237
    aput-wide v10, v3, v5

    #@51
    .line 238
    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    #@53
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    #@56
    move v7, v2

    #@57
    .line 239
    :goto_57
    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    #@59
    array-length v10, v8

    #@5a
    if-ge v7, v10, :cond_66

    #@5c
    .line 240
    aget-object v10, v4, v5

    #@5e
    aget v8, v8, v7

    #@60
    float-to-double v11, v8

    #@61
    aput-wide v11, v10, v7

    #@63
    add-int/lit8 v7, v7, 0x1

    #@65
    goto :goto_57

    #@66
    .line 242
    :cond_66
    aget-object v7, v4, v5

    #@68
    aget v8, v9, v2

    #@6a
    float-to-double v10, v8

    #@6b
    aput-wide v10, v7, v1

    #@6d
    add-int/lit8 v8, v1, 0x1

    #@6f
    .line 243
    aget v9, v9, v6

    #@71
    float-to-double v9, v9

    #@72
    aput-wide v9, v7, v8

    #@74
    add-int/lit8 v5, v5, 0x1

    #@76
    goto :goto_30

    #@77
    .line 245
    :cond_77
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@7a
    move-result-object p1

    #@7b
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@7d
    return-void
.end method
