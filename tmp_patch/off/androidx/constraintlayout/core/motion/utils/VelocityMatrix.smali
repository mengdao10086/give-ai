.class public Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;
.super Ljava/lang/Object;
.source "VelocityMatrix.java"


# static fields
.field private static TAG:Ljava/lang/String; = "VelocityMatrix"


# instance fields
.field mDRotate:F

.field mDScaleX:F

.field mDScaleY:F

.field mDTranslateX:F

.field mDTranslateY:F

.field mRotate:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public applyTransform(FFII[F)V
    .registers 24

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p3

    #@4
    const/4 v2, 0x0

    #@5
    .line 97
    aget v3, p5, v2

    #@7
    const/4 v4, 0x1

    #@8
    .line 98
    aget v5, p5, v4

    #@a
    const/high16 v6, 0x3f000000    # 0.5f

    #@c
    sub-float v7, p1, v6

    #@e
    const/high16 v8, 0x40000000    # 2.0f

    #@10
    mul-float/2addr v7, v8

    #@11
    sub-float v6, p2, v6

    #@13
    mul-float/2addr v6, v8

    #@14
    .line 101
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    #@16
    add-float/2addr v3, v8

    #@17
    .line 102
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    #@19
    add-float/2addr v5, v8

    #@1a
    .line 103
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    #@1c
    mul-float/2addr v8, v7

    #@1d
    add-float/2addr v3, v8

    #@1e
    .line 104
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    #@20
    mul-float/2addr v8, v6

    #@21
    add-float/2addr v5, v8

    #@22
    .line 105
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    #@24
    float-to-double v8, v8

    #@25
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    #@28
    move-result-wide v8

    #@29
    double-to-float v8, v8

    #@2a
    .line 106
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    #@2c
    float-to-double v9, v9

    #@2d
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    #@30
    move-result-wide v9

    #@31
    double-to-float v9, v9

    #@32
    neg-int v10, v1

    #@33
    int-to-float v10, v10

    #@34
    mul-float/2addr v10, v7

    #@35
    float-to-double v10, v10

    #@36
    float-to-double v12, v8

    #@37
    .line 107
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@3a
    move-result-wide v14

    #@3b
    mul-double/2addr v10, v14

    #@3c
    move/from16 v8, p4

    #@3e
    int-to-float v8, v8

    #@3f
    mul-float/2addr v8, v6

    #@40
    float-to-double v14, v8

    #@41
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@44
    move-result-wide v16

    #@45
    mul-double v16, v16, v14

    #@47
    sub-double v10, v10, v16

    #@49
    double-to-float v6, v10

    #@4a
    mul-float/2addr v6, v9

    #@4b
    add-float/2addr v3, v6

    #@4c
    int-to-float v1, v1

    #@4d
    mul-float/2addr v1, v7

    #@4e
    float-to-double v6, v1

    #@4f
    .line 108
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@52
    move-result-wide v10

    #@53
    mul-double/2addr v6, v10

    #@54
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@57
    move-result-wide v10

    #@58
    mul-double/2addr v14, v10

    #@59
    sub-double/2addr v6, v14

    #@5a
    double-to-float v1, v6

    #@5b
    mul-float/2addr v9, v1

    #@5c
    add-float/2addr v5, v9

    #@5d
    .line 109
    aput v3, p5, v2

    #@5f
    .line 110
    aput v5, p5, v4

    #@61
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 30
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    #@3
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    #@5
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    #@7
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    #@9
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    #@b
    return-void
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .registers 3

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 62
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    #@8
    :cond_8
    return-void
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .registers 4

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 35
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    #@8
    .line 36
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    #@b
    move-result p1

    #@c
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    #@e
    :cond_e
    return-void
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .registers 4

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 79
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    #@8
    :cond_8
    if-eqz p2, :cond_10

    #@a
    .line 82
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    #@10
    :cond_10
    return-void
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .registers 4

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 53
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    #@8
    :cond_8
    if-eqz p2, :cond_10

    #@a
    .line 56
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    #@10
    :cond_10
    return-void
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .registers 4

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 69
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    #@8
    :cond_8
    if-eqz p2, :cond_10

    #@a
    .line 73
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    #@10
    :cond_10
    return-void
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .registers 4

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 43
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    #@8
    :cond_8
    if-eqz p2, :cond_10

    #@a
    .line 46
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    #@10
    :cond_10
    return-void
.end method
