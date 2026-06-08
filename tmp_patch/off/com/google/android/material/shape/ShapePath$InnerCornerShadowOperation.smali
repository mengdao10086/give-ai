.class Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerCornerShadowOperation"
.end annotation


# instance fields
.field private final operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .registers 5

    #@0
    .line 465
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    #@3
    .line 466
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@5
    .line 467
    iput-object p2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@7
    .line 468
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    #@9
    .line 469
    iput p4, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    #@b
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v10, p2

    #@6
    move/from16 v11, p3

    #@8
    move-object/from16 v12, p4

    #@a
    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getSweepAngle()F

    #@d
    move-result v8

    #@e
    const/4 v13, 0x0

    #@f
    cmpl-float v2, v8, v13

    #@11
    if-lez v2, :cond_14

    #@13
    return-void

    #@14
    .line 481
    :cond_14
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@16
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@19
    move-result v2

    #@1a
    iget v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    #@1c
    sub-float/2addr v2, v3

    #@1d
    float-to-double v2, v2

    #@1e
    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@20
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@23
    move-result v4

    #@24
    iget v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    #@26
    sub-float/2addr v4, v5

    #@27
    float-to-double v4, v4

    #@28
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    #@2b
    move-result-wide v2

    #@2c
    .line 482
    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@2e
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@31
    move-result v4

    #@32
    iget-object v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@34
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v5}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@37
    move-result v5

    #@38
    sub-float/2addr v4, v5

    #@39
    float-to-double v4, v4

    #@3a
    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@3c
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v6}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@3f
    move-result v6

    #@40
    iget-object v7, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@42
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v7}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@45
    move-result v7

    #@46
    sub-float/2addr v6, v7

    #@47
    float-to-double v6, v6

    #@48
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    #@4b
    move-result-wide v14

    #@4c
    int-to-double v4, v11

    #@4d
    .line 483
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(DD)D

    #@50
    move-result-wide v6

    #@51
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    #@54
    move-result-wide v4

    #@55
    double-to-float v4, v4

    #@56
    float-to-double v5, v4

    #@57
    neg-float v7, v8

    #@58
    const/high16 v9, 0x40000000    # 2.0f

    #@5a
    div-float/2addr v7, v9

    #@5b
    float-to-double v9, v7

    #@5c
    .line 484
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    #@5f
    move-result-wide v9

    #@60
    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    #@63
    move-result-wide v9

    #@64
    mul-double/2addr v9, v5

    #@65
    cmpl-double v7, v2, v9

    #@67
    if-lez v7, :cond_8f

    #@69
    .line 487
    new-instance v7, Landroid/graphics/RectF;

    #@6b
    sub-double/2addr v2, v9

    #@6c
    double-to-float v2, v2

    #@6d
    invoke-direct {v7, v13, v13, v2, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@70
    .line 488
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@72
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@75
    .line 489
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@77
    iget v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    #@79
    iget v13, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    #@7b
    invoke-virtual {v2, v3, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@7e
    .line 490
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    #@83
    move-result v3

    #@84
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    #@87
    .line 491
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@89
    move-object/from16 v13, p2

    #@8b
    invoke-virtual {v13, v12, v2, v7, v11}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    #@8e
    goto :goto_91

    #@8f
    :cond_8f
    move-object/from16 v13, p2

    #@91
    .line 494
    :goto_91
    new-instance v7, Landroid/graphics/RectF;

    #@93
    const/high16 v2, 0x40000000    # 2.0f

    #@95
    mul-float/2addr v2, v4

    #@96
    const/4 v3, 0x0

    #@97
    invoke-direct {v7, v3, v3, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@9a
    .line 495
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@9c
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@9f
    .line 496
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@a1
    iget-object v11, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@a3
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v11}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@a6
    move-result v11

    #@a7
    iget-object v12, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@a9
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v12}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@ac
    move-result v12

    #@ad
    invoke-virtual {v3, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@b0
    .line 497
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@b2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    #@b5
    move-result v11

    #@b6
    invoke-virtual {v3, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    #@b9
    .line 498
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@bb
    neg-double v11, v9

    #@bc
    sub-double/2addr v11, v5

    #@bd
    double-to-float v11, v11

    #@be
    const/high16 v12, -0x40000000    # -2.0f

    #@c0
    mul-float/2addr v12, v4

    #@c1
    invoke-virtual {v3, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@c4
    .line 499
    iget-object v11, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@c6
    float-to-int v12, v4

    #@c7
    const/high16 v16, 0x43e10000    # 450.0f

    #@c9
    const/4 v3, 0x2

    #@ca
    new-array v4, v3, [F

    #@cc
    add-double/2addr v5, v9

    #@cd
    double-to-float v3, v5

    #@ce
    const/4 v5, 0x0

    #@cf
    aput v3, v4, v5

    #@d1
    const/4 v3, 0x1

    #@d2
    aput v2, v4, v3

    #@d4
    move-object/from16 v2, p2

    #@d6
    move-object/from16 v3, p4

    #@d8
    move-object/from16 v17, v4

    #@da
    move-object v4, v11

    #@db
    move-object v5, v7

    #@dc
    move v6, v12

    #@dd
    move/from16 v7, v16

    #@df
    move-wide v10, v9

    #@e0
    move-object/from16 v9, v17

    #@e2
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/shadow/ShadowRenderer;->drawInnerCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF[F)V

    #@e5
    cmpl-double v2, v14, v10

    #@e7
    if-lez v2, :cond_120

    #@e9
    .line 509
    new-instance v2, Landroid/graphics/RectF;

    #@eb
    sub-double/2addr v14, v10

    #@ec
    double-to-float v3, v14

    #@ed
    const/4 v4, 0x0

    #@ee
    invoke-direct {v2, v4, v4, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@f1
    .line 510
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@f3
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@f6
    .line 511
    iget-object v1, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@f8
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@fa
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v3}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@fd
    move-result v3

    #@fe
    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@100
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@103
    move-result v4

    #@104
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@107
    .line 512
    iget-object v1, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getEndAngle()F

    #@10c
    move-result v3

    #@10d
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    #@110
    .line 513
    iget-object v1, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@112
    double-to-float v3, v10

    #@113
    const/4 v4, 0x0

    #@114
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@117
    .line 514
    iget-object v1, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@119
    move/from16 v3, p3

    #@11b
    move-object/from16 v4, p4

    #@11d
    invoke-virtual {v13, v4, v1, v2, v3}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    #@120
    :cond_120
    return-void
.end method

.method getEndAngle()F
    .registers 4

    #@0
    .line 523
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@2
    .line 524
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@8
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@b
    move-result v1

    #@c
    sub-float/2addr v0, v1

    #@d
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@f
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@12
    move-result v1

    #@13
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@15
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@18
    move-result v2

    #@19
    sub-float/2addr v1, v2

    #@1a
    div-float/2addr v0, v1

    #@1b
    float-to-double v0, v0

    #@1c
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    #@1f
    move-result-wide v0

    #@20
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    #@23
    move-result-wide v0

    #@24
    double-to-float v0, v0

    #@25
    return v0
.end method

.method getStartAngle()F
    .registers 4

    #@0
    .line 519
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@2
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    #@8
    sub-float/2addr v0, v1

    #@9
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@b
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@e
    move-result v1

    #@f
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    #@11
    sub-float/2addr v1, v2

    #@12
    div-float/2addr v0, v1

    #@13
    float-to-double v0, v0

    #@14
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    #@17
    move-result-wide v0

    #@18
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    #@1b
    move-result-wide v0

    #@1c
    double-to-float v0, v0

    #@1d
    return v0
.end method

.method getSweepAngle()F
    .registers 4

    #@0
    .line 533
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getEndAngle()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    #@7
    move-result v1

    #@8
    sub-float/2addr v0, v1

    #@9
    const/high16 v1, 0x43b40000    # 360.0f

    #@b
    add-float/2addr v0, v1

    #@c
    rem-float/2addr v0, v1

    #@d
    const/high16 v2, 0x43340000    # 180.0f

    #@f
    cmpg-float v2, v0, v2

    #@11
    if-gtz v2, :cond_14

    #@13
    return v0

    #@14
    :cond_14
    sub-float/2addr v0, v1

    #@15
    return v0
.end method
