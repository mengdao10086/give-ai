.class public Lcom/google/android/material/shadow/ShadowRenderer;
.super Ljava/lang/Object;
.source "ShadowRenderer.java"


# static fields
.field private static final COLOR_ALPHA_END:I = 0x0

.field private static final COLOR_ALPHA_MIDDLE:I = 0x14

.field private static final COLOR_ALPHA_START:I = 0x44

.field private static final cornerColors:[I

.field private static final cornerPositions:[F

.field private static final edgeColors:[I

.field private static final edgePositions:[F


# instance fields
.field private final cornerShadowPaint:Landroid/graphics/Paint;

.field private final edgeShadowPaint:Landroid/graphics/Paint;

.field private final scratch:Landroid/graphics/Path;

.field private shadowEndColor:I

.field private shadowMiddleColor:I

.field private final shadowPaint:Landroid/graphics/Paint;

.field private shadowStartColor:I

.field private final transparentPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [I

    #@3
    .line 60
    sput-object v1, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    #@5
    new-array v0, v0, [F

    #@7
    .line 62
    fill-array-data v0, :array_1a

    #@a
    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->edgePositions:[F

    #@c
    const/4 v0, 0x4

    #@d
    new-array v1, v0, [I

    #@f
    .line 64
    sput-object v1, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    #@11
    new-array v0, v0, [F

    #@13
    .line 66
    fill-array-data v0, :array_24

    #@16
    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    #@18
    return-void

    #@19
    nop

    #@1a
    :array_1a
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    #@24
    :array_24
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/high16 v0, -0x1000000

    #@2
    .line 72
    invoke-direct {p0, v0}, Lcom/google/android/material/shadow/ShadowRenderer;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    #@a
    .line 69
    new-instance v0, Landroid/graphics/Paint;

    #@c
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    #@11
    .line 76
    new-instance v1, Landroid/graphics/Paint;

    #@13
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@16
    iput-object v1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    #@18
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    #@1b
    const/4 p1, 0x0

    #@1c
    .line 79
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@1f
    .line 80
    new-instance p1, Landroid/graphics/Paint;

    #@21
    const/4 v0, 0x4

    #@22
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@25
    iput-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    #@27
    .line 81
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@2c
    .line 83
    new-instance v0, Landroid/graphics/Paint;

    #@2e
    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@31
    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    #@33
    return-void
.end method


# virtual methods
.method public drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v7, p1

    #@4
    move-object/from16 v2, p3

    #@6
    move/from16 v1, p4

    #@8
    move/from16 v4, p6

    #@a
    const/4 v3, 0x0

    #@b
    cmpg-float v5, v4, v3

    #@d
    const/4 v6, 0x1

    #@e
    const/4 v8, 0x0

    #@f
    if-gez v5, :cond_13

    #@11
    move v5, v6

    #@12
    goto :goto_14

    #@13
    :cond_13
    move v5, v8

    #@14
    .line 132
    :goto_14
    iget-object v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    #@16
    const/4 v10, 0x3

    #@17
    const/4 v11, 0x2

    #@18
    if-eqz v5, :cond_2d

    #@1a
    .line 135
    sget-object v12, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    #@1c
    aput v8, v12, v8

    #@1e
    .line 136
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    #@20
    aput v8, v12, v6

    #@22
    .line 137
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    #@24
    aput v8, v12, v11

    #@26
    .line 138
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    #@28
    aput v8, v12, v10

    #@2a
    move/from16 v12, p5

    #@2c
    goto :goto_58

    #@2d
    .line 141
    :cond_2d
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    #@30
    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    #@33
    move-result v12

    #@34
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    #@37
    move-result v13

    #@38
    invoke-virtual {v9, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    #@3b
    move/from16 v12, p5

    #@3d
    .line 143
    invoke-virtual {v9, v2, v12, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    #@40
    .line 144
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    #@43
    neg-int v13, v1

    #@44
    int-to-float v13, v13

    #@45
    .line 146
    invoke-virtual {v2, v13, v13}, Landroid/graphics/RectF;->inset(FF)V

    #@48
    .line 147
    sget-object v13, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    #@4a
    aput v8, v13, v8

    #@4c
    .line 148
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    #@4e
    aput v8, v13, v6

    #@50
    .line 149
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    #@52
    aput v8, v13, v11

    #@54
    .line 150
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    #@56
    aput v8, v13, v10

    #@58
    .line 153
    :goto_58
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    #@5b
    move-result v8

    #@5c
    const/high16 v10, 0x40000000    # 2.0f

    #@5e
    div-float v16, v8, v10

    #@60
    cmpg-float v3, v16, v3

    #@62
    if-gtz v3, :cond_65

    #@64
    return-void

    #@65
    :cond_65
    int-to-float v1, v1

    #@66
    div-float v1, v1, v16

    #@68
    const/high16 v3, 0x3f800000    # 1.0f

    #@6a
    sub-float v1, v3, v1

    #@6c
    sub-float v8, v3, v1

    #@6e
    div-float/2addr v8, v10

    #@6f
    add-float/2addr v8, v1

    #@70
    .line 161
    sget-object v18, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    #@72
    aput v1, v18, v6

    #@74
    .line 162
    aput v8, v18, v11

    #@76
    .line 163
    new-instance v1, Landroid/graphics/RadialGradient;

    #@78
    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    #@7b
    move-result v14

    #@7c
    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    #@7f
    move-result v15

    #@80
    sget-object v17, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    #@82
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@84
    move-object v13, v1

    #@85
    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@88
    .line 171
    iget-object v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    #@8a
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@8d
    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@90
    .line 173
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@93
    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    #@96
    move-result v1

    #@97
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    #@9a
    move-result v6

    #@9b
    div-float/2addr v1, v6

    #@9c
    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@9f
    if-nez v5, :cond_ab

    #@a1
    .line 177
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@a3
    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@a6
    .line 179
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    #@a8
    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@ab
    :cond_ab
    const/4 v5, 0x1

    #@ac
    .line 182
    iget-object v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    #@ae
    move-object/from16 v1, p1

    #@b0
    move-object/from16 v2, p3

    #@b2
    move/from16 v3, p5

    #@b4
    move/from16 v4, p6

    #@b6
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@b9
    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@bc
    return-void
.end method

.method public drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V
    .registers 14

    #@0
    .line 96
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    #@2
    int-to-float v1, p4

    #@3
    add-float/2addr v0, v1

    #@4
    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    #@6
    neg-int p4, p4

    #@7
    int-to-float p4, p4

    #@8
    const/4 v0, 0x0

    #@9
    .line 97
    invoke-virtual {p3, v0, p4}, Landroid/graphics/RectF;->offset(FF)V

    #@c
    .line 99
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    #@e
    const/4 p4, 0x0

    #@f
    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    #@11
    aput v0, v6, p4

    #@13
    const/4 p4, 0x1

    #@14
    .line 100
    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    #@16
    aput v0, v6, p4

    #@18
    const/4 p4, 0x2

    #@19
    .line 101
    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    #@1b
    aput v0, v6, p4

    #@1d
    .line 103
    iget-object p4, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    #@1f
    new-instance v0, Landroid/graphics/LinearGradient;

    #@21
    iget v2, p3, Landroid/graphics/RectF;->left:F

    #@23
    iget v3, p3, Landroid/graphics/RectF;->top:F

    #@25
    iget v4, p3, Landroid/graphics/RectF;->left:F

    #@27
    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    #@29
    sget-object v7, Lcom/google/android/material/shadow/ShadowRenderer;->edgePositions:[F

    #@2b
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@2d
    move-object v1, v0

    #@2e
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@31
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@34
    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@37
    .line 114
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@3a
    .line 115
    iget-object p2, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    #@3c
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@3f
    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@42
    return-void
.end method

.method public drawInnerCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF[F)V
    .registers 15

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p6, v0

    #@3
    if-lez v0, :cond_7

    #@5
    add-float/2addr p5, p6

    #@6
    neg-float p6, p6

    #@7
    :cond_7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move v4, p4

    #@c
    move v5, p5

    #@d
    move v6, p6

    #@e
    .line 199
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/shadow/ShadowRenderer;->drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    #@11
    .line 201
    iget-object p4, p0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    #@13
    .line 202
    invoke-virtual {p4}, Landroid/graphics/Path;->rewind()V

    #@16
    const/4 v0, 0x0

    #@17
    .line 203
    aget v0, p7, v0

    #@19
    const/4 v1, 0x1

    #@1a
    aget p7, p7, v1

    #@1c
    invoke-virtual {p4, v0, p7}, Landroid/graphics/Path;->moveTo(FF)V

    #@1f
    .line 204
    invoke-virtual {p4, p3, p5, p6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    #@22
    .line 205
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    #@25
    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@28
    .line 208
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@2b
    .line 209
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    #@2e
    move-result p2

    #@2f
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    #@32
    move-result p3

    #@33
    div-float/2addr p2, p3

    #@34
    const/high16 p3, 0x3f800000    # 1.0f

    #@36
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->scale(FF)V

    #@39
    .line 211
    iget-object p2, p0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    #@3b
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@3e
    .line 212
    iget-object p2, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    #@40
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@43
    .line 213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@46
    return-void
.end method

.method public getShadowPaint()Landroid/graphics/Paint;
    .registers 2

    #@0
    .line 218
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method public setShadowColor(I)V
    .registers 3

    #@0
    const/16 v0, 0x44

    #@2
    .line 87
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    #@8
    const/16 v0, 0x14

    #@a
    .line 88
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    #@10
    const/4 v0, 0x0

    #@11
    .line 89
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@14
    move-result p1

    #@15
    iput p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    #@17
    .line 90
    iget-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    #@19
    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@1e
    return-void
.end method
