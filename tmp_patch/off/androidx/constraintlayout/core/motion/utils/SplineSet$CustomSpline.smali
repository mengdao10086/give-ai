.class public Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSpline"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

.field mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)V
    .registers 4

    #@0
    .line 236
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    #@3
    const-string v0, ","

    #@5
    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    const/4 v0, 0x1

    #@a
    aget-object p1, p1, v0

    #@c
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mAttributeName:Ljava/lang/String;

    #@e
    .line 238
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@10
    return-void
.end method


# virtual methods
.method public setPoint(IF)V
    .registers 3

    #@0
    .line 263
    new-instance p1, Ljava/lang/RuntimeException;

    #@2
    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;)V
    .registers 4

    #@0
    .line 271
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    #@5
    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V
    .registers 6

    #@0
    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    float-to-double v1, p2

    #@3
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    #@5
    invoke-virtual {v0, v1, v2, p2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    #@8
    .line 276
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@a
    const/4 v0, 0x0

    #@b
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    #@e
    move-result-object p2

    #@f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    #@11
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    #@14
    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V
    .registers 3

    #@0
    .line 267
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionWidget;

    #@2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V

    #@5
    return-void
.end method

.method public setup(I)V
    .registers 13

    #@0
    .line 242
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->size()I

    #@5
    move-result v0

    #@6
    .line 243
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    #@10
    move-result v1

    #@11
    .line 244
    new-array v3, v0, [D

    #@13
    .line 245
    new-array v4, v1, [F

    #@15
    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    #@17
    const/4 v4, 0x2

    #@18
    new-array v4, v4, [I

    #@1a
    const/4 v5, 0x1

    #@1b
    aput v1, v4, v5

    #@1d
    aput v0, v4, v2

    #@1f
    .line 246
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@21
    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, [[D

    #@27
    move v4, v2

    #@28
    :goto_28
    if-ge v4, v0, :cond_57

    #@2a
    .line 249
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@2c
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keyAt(I)I

    #@2f
    move-result v5

    #@30
    .line 250
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@32
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    #@35
    move-result-object v6

    #@36
    int-to-double v7, v5

    #@37
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    #@3c
    mul-double/2addr v7, v9

    #@3d
    .line 252
    aput-wide v7, v3, v4

    #@3f
    .line 253
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    #@41
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    #@44
    move v5, v2

    #@45
    .line 254
    :goto_45
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    #@47
    array-length v7, v6

    #@48
    if-ge v5, v7, :cond_54

    #@4a
    .line 255
    aget-object v7, v1, v4

    #@4c
    aget v6, v6, v5

    #@4e
    float-to-double v8, v6

    #@4f
    aput-wide v8, v7, v5

    #@51
    add-int/lit8 v5, v5, 0x1

    #@53
    goto :goto_45

    #@54
    :cond_54
    add-int/lit8 v4, v4, 0x1

    #@56
    goto :goto_28

    #@57
    .line 259
    :cond_57
    invoke-static {p1, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@5a
    move-result-object p1

    #@5b
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@5d
    return-void
.end method
