.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a

.field private static final ROUNDED_CORNER_FAB_OFFSET:F = 1.75f


# instance fields
.field private cradleVerticalOffset:F

.field private fabCornerSize:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 5

    #@0
    .line 64
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    #@3
    const/high16 v0, -0x40800000    # -1.0f

    #@5
    .line 53
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    #@7
    .line 65
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    #@9
    .line 66
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    #@b
    .line 67
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    #@e
    const/4 p1, 0x0

    #@f
    .line 68
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    #@11
    return-void
.end method


# virtual methods
.method getCradleVerticalOffset()F
    .registers 2

    #@0
    .line 223
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    #@2
    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .registers 28

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    move-object/from16 v9, p4

    #@6
    .line 74
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    #@8
    const/4 v10, 0x0

    #@9
    cmpl-float v3, v2, v10

    #@b
    if-nez v3, :cond_11

    #@d
    .line 76
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@10
    return-void

    #@11
    .line 80
    :cond_11
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    #@13
    const/high16 v11, 0x40000000    # 2.0f

    #@15
    mul-float/2addr v3, v11

    #@16
    add-float/2addr v3, v2

    #@17
    div-float v12, v3, v11

    #@19
    .line 82
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    #@1b
    mul-float v13, p3, v3

    #@1d
    .line 83
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    #@1f
    add-float v14, p2, v3

    #@21
    .line 87
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    #@23
    mul-float v3, v3, p3

    #@25
    const/high16 v4, 0x3f800000    # 1.0f

    #@27
    sub-float v5, v4, p3

    #@29
    mul-float/2addr v5, v12

    #@2a
    add-float/2addr v3, v5

    #@2b
    div-float v5, v3, v12

    #@2d
    cmpl-float v4, v5, v4

    #@2f
    if-ltz v4, :cond_35

    #@31
    .line 93
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@34
    return-void

    #@35
    .line 103
    :cond_35
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    #@37
    mul-float v15, v4, p3

    #@39
    const/high16 v5, -0x40800000    # -1.0f

    #@3b
    cmpl-float v5, v4, v5

    #@3d
    if-eqz v5, :cond_4f

    #@3f
    mul-float/2addr v4, v11

    #@40
    sub-float/2addr v4, v2

    #@41
    .line 104
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@44
    move-result v2

    #@45
    const v4, 0x3dcccccd    # 0.1f

    #@48
    cmpg-float v2, v2, v4

    #@4a
    if-gez v2, :cond_4d

    #@4c
    goto :goto_4f

    #@4d
    :cond_4d
    const/4 v2, 0x0

    #@4e
    goto :goto_50

    #@4f
    :cond_4f
    :goto_4f
    const/4 v2, 0x1

    #@50
    :goto_50
    move/from16 v16, v2

    #@52
    if-nez v16, :cond_59

    #@54
    const/high16 v2, 0x3fe00000    # 1.75f

    #@56
    move/from16 v17, v10

    #@58
    goto :goto_5c

    #@59
    :cond_59
    move/from16 v17, v3

    #@5b
    move v2, v10

    #@5c
    :goto_5c
    add-float v3, v12, v13

    #@5e
    mul-float/2addr v3, v3

    #@5f
    add-float v4, v17, v13

    #@61
    mul-float v5, v4, v4

    #@63
    sub-float/2addr v3, v5

    #@64
    float-to-double v5, v3

    #@65
    .line 114
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    #@68
    move-result-wide v5

    #@69
    double-to-float v3, v5

    #@6a
    sub-float v5, v14, v3

    #@6c
    add-float v18, v14, v3

    #@6e
    div-float/2addr v3, v4

    #@6f
    float-to-double v3, v3

    #@70
    .line 121
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    #@73
    move-result-wide v3

    #@74
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    #@77
    move-result-wide v3

    #@78
    double-to-float v8, v3

    #@79
    const/high16 v3, 0x42b40000    # 90.0f

    #@7b
    sub-float/2addr v3, v8

    #@7c
    add-float v19, v3, v2

    #@7e
    .line 125
    invoke-virtual {v9, v5, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@81
    sub-float v3, v5, v13

    #@83
    const/4 v4, 0x0

    #@84
    add-float/2addr v5, v13

    #@85
    mul-float v20, v13, v11

    #@87
    const/high16 v7, 0x43870000    # 270.0f

    #@89
    move-object/from16 v2, p4

    #@8b
    move/from16 v6, v20

    #@8d
    move/from16 v21, v8

    #@8f
    .line 129
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    #@92
    const/high16 v2, 0x43340000    # 180.0f

    #@94
    if-eqz v16, :cond_ab

    #@96
    sub-float v3, v14, v12

    #@98
    neg-float v4, v12

    #@99
    sub-float v4, v4, v17

    #@9b
    add-float v5, v14, v12

    #@9d
    sub-float v6, v12, v17

    #@9f
    sub-float v7, v2, v19

    #@a1
    mul-float v19, v19, v11

    #@a3
    sub-float v8, v19, v2

    #@a5
    move-object/from16 v2, p4

    #@a7
    .line 139
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    #@aa
    goto :goto_f1

    #@ab
    .line 147
    :cond_ab
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    #@ad
    mul-float v16, v15, v11

    #@af
    add-float v4, v3, v16

    #@b1
    sub-float v5, v14, v12

    #@b3
    add-float v6, v15, v3

    #@b5
    neg-float v6, v6

    #@b6
    add-float v7, v5, v4

    #@b8
    add-float v8, v3, v15

    #@ba
    sub-float v17, v2, v19

    #@bc
    mul-float v3, v19, v11

    #@be
    sub-float/2addr v3, v2

    #@bf
    div-float v22, v3, v11

    #@c1
    move-object/from16 v2, p4

    #@c3
    move v3, v5

    #@c4
    move v4, v6

    #@c5
    move v5, v7

    #@c6
    move v6, v8

    #@c7
    move/from16 v7, v17

    #@c9
    move/from16 v8, v22

    #@cb
    .line 148
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    #@ce
    add-float v5, v14, v12

    #@d0
    .line 156
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    #@d2
    div-float v3, v2, v11

    #@d4
    add-float/2addr v3, v15

    #@d5
    sub-float v3, v5, v3

    #@d7
    add-float/2addr v2, v15

    #@d8
    invoke-virtual {v9, v3, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@db
    .line 159
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    #@dd
    add-float v16, v16, v2

    #@df
    sub-float v3, v5, v16

    #@e1
    add-float v4, v15, v2

    #@e3
    neg-float v4, v4

    #@e4
    add-float v6, v2, v15

    #@e6
    const/high16 v7, 0x42b40000    # 90.0f

    #@e8
    const/high16 v2, -0x3d4c0000    # -90.0f

    #@ea
    add-float v8, v19, v2

    #@ec
    move-object/from16 v2, p4

    #@ee
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    #@f1
    :goto_f1
    sub-float v3, v18, v13

    #@f3
    const/4 v4, 0x0

    #@f4
    add-float v5, v18, v13

    #@f6
    const/high16 v2, 0x43870000    # 270.0f

    #@f8
    sub-float v7, v2, v21

    #@fa
    move-object/from16 v2, p4

    #@fc
    move/from16 v6, v20

    #@fe
    move/from16 v8, v21

    #@100
    .line 170
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    #@103
    .line 179
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@106
    return-void
.end method

.method public getFabCornerRadius()F
    .registers 2

    #@0
    .line 255
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    #@2
    return v0
.end method

.method getFabCradleMargin()F
    .registers 2

    #@0
    .line 239
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    #@2
    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .registers 2

    #@0
    .line 247
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    #@2
    return v0
.end method

.method public getFabDiameter()F
    .registers 2

    #@0
    .line 189
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    #@2
    return v0
.end method

.method public getHorizontalOffset()F
    .registers 2

    #@0
    .line 214
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    #@2
    return v0
.end method

.method setCradleVerticalOffset(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-ltz v0, :cond_8

    #@5
    .line 235
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    #@7
    return-void

    #@8
    .line 233
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v0, "cradleVerticalOffset must be positive."

    #@c
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1
.end method

.method public setFabCornerSize(F)V
    .registers 2

    #@0
    .line 259
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    #@2
    return-void
.end method

.method setFabCradleMargin(F)V
    .registers 2

    #@0
    .line 243
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    #@2
    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .registers 2

    #@0
    .line 251
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    #@2
    return-void
.end method

.method public setFabDiameter(F)V
    .registers 2

    #@0
    .line 199
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    #@2
    return-void
.end method

.method setHorizontalOffset(F)V
    .registers 2

    #@0
    .line 204
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    #@2
    return-void
.end method
