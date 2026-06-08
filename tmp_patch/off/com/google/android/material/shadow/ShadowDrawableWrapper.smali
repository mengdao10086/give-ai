.class public Lcom/google/android/material/shadow/ShadowDrawableWrapper;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "ShadowDrawableWrapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final COS_45:D

.field static final SHADOW_BOTTOM_SCALE:F = 1.0f

.field static final SHADOW_HORIZ_SCALE:F = 0.5f

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field static final SHADOW_TOP_SCALE:F = 0.25f


# instance fields
.field private addPaddingForCorners:Z

.field final contentBounds:Landroid/graphics/RectF;

.field cornerRadius:F

.field final cornerShadowPaint:Landroid/graphics/Paint;

.field cornerShadowPath:Landroid/graphics/Path;

.field private dirty:Z

.field final edgeShadowPaint:Landroid/graphics/Paint;

.field maxShadowSize:F

.field private printedShadowClipWarning:Z

.field rawMaxShadowSize:F

.field rawShadowSize:F

.field private rotation:F

.field private final shadowEndColor:I

.field private final shadowMiddleColor:I

.field shadowSize:F

.field private final shadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide v0, 0x4046800000000000L    # 45.0

    #@5
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@c
    move-result-wide v0

    #@d
    sput-wide v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V
    .registers 7

    #@0
    .line 87
    invoke-direct {p0, p2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@3
    const/4 p2, 0x1

    #@4
    .line 72
    iput-boolean p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    #@6
    .line 78
    iput-boolean p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    #@8
    const/4 p2, 0x0

    #@9
    .line 83
    iput-boolean p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    #@b
    .line 89
    sget v0, Lcom/google/android/material/R$color;->design_fab_shadow_start_color:I

    #@d
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    #@13
    .line 90
    sget v0, Lcom/google/android/material/R$color;->design_fab_shadow_mid_color:I

    #@15
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    #@1b
    .line 91
    sget v0, Lcom/google/android/material/R$color;->design_fab_shadow_end_color:I

    #@1d
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@20
    move-result p1

    #@21
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    #@23
    .line 93
    new-instance p1, Landroid/graphics/Paint;

    #@25
    const/4 v0, 0x5

    #@26
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@29
    iput-object p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    #@2b
    .line 94
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@2d
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@30
    .line 95
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    #@33
    move-result p3

    #@34
    int-to-float p3, p3

    #@35
    iput p3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@37
    .line 96
    new-instance p3, Landroid/graphics/RectF;

    #@39
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    #@3c
    iput-object p3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@3e
    .line 97
    new-instance p3, Landroid/graphics/Paint;

    #@40
    invoke-direct {p3, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@43
    iput-object p3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    #@45
    .line 98
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@48
    .line 99
    invoke-virtual {p0, p4, p5}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    #@4b
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .registers 8

    #@0
    .line 361
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@2
    const/high16 v1, 0x3fc00000    # 1.5f

    #@4
    mul-float/2addr v0, v1

    #@5
    .line 362
    iget-object v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@7
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@9
    int-to-float v2, v2

    #@a
    iget v3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@c
    add-float/2addr v2, v3

    #@d
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@f
    int-to-float v3, v3

    #@10
    add-float/2addr v3, v0

    #@11
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@13
    int-to-float v4, v4

    #@14
    iget v5, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@16
    sub-float/2addr v4, v5

    #@17
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@19
    int-to-float p1, p1

    #@1a
    sub-float/2addr p1, v0

    #@1b
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    #@1e
    .line 368
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object p1

    #@22
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@24
    iget v0, v0, Landroid/graphics/RectF;->left:F

    #@26
    float-to-int v0, v0

    #@27
    iget-object v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@29
    iget v1, v1, Landroid/graphics/RectF;->top:F

    #@2b
    float-to-int v1, v1

    #@2c
    iget-object v2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@2e
    iget v2, v2, Landroid/graphics/RectF;->right:F

    #@30
    float-to-int v2, v2

    #@31
    iget-object v3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@33
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    #@35
    float-to-int v3, v3

    #@36
    .line 369
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@39
    .line 375
    invoke-direct {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->buildShadowCorners()V

    #@3c
    return-void
.end method

.method private buildShadowCorners()V
    .registers 26

    #@0
    move-object/from16 v0, p0

    #@2
    .line 310
    new-instance v1, Landroid/graphics/RectF;

    #@4
    iget v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@6
    neg-float v3, v2

    #@7
    neg-float v4, v2

    #@8
    invoke-direct {v1, v3, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@b
    .line 311
    new-instance v2, Landroid/graphics/RectF;

    #@d
    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@10
    .line 312
    iget v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    #@12
    neg-float v4, v3

    #@13
    neg-float v3, v3

    #@14
    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    #@17
    .line 314
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@19
    if-nez v3, :cond_23

    #@1b
    .line 315
    new-instance v3, Landroid/graphics/Path;

    #@1d
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    #@20
    iput-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@22
    goto :goto_26

    #@23
    .line 317
    :cond_23
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    #@26
    .line 319
    :goto_26
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@28
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@2a
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@2d
    .line 320
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@2f
    iget v4, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@31
    neg-float v4, v4

    #@32
    const/4 v5, 0x0

    #@33
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    #@36
    .line 321
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@38
    iget v4, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    #@3a
    neg-float v4, v4

    #@3b
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    #@3e
    .line 323
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@40
    const/high16 v4, 0x43340000    # 180.0f

    #@42
    const/high16 v6, 0x42b40000    # 90.0f

    #@44
    const/4 v7, 0x0

    #@45
    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@48
    .line 325
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@4a
    const/high16 v4, 0x43870000    # 270.0f

    #@4c
    const/high16 v6, -0x3d4c0000    # -90.0f

    #@4e
    invoke-virtual {v3, v1, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@51
    .line 326
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@53
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    #@56
    .line 328
    iget v3, v2, Landroid/graphics/RectF;->top:F

    #@58
    neg-float v11, v3

    #@59
    cmpl-float v3, v11, v5

    #@5b
    const/4 v4, 0x2

    #@5c
    const/4 v6, 0x1

    #@5d
    const/4 v15, 0x3

    #@5e
    if-lez v3, :cond_a2

    #@60
    .line 330
    iget v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@62
    div-float/2addr v3, v11

    #@63
    const/high16 v8, 0x3f800000    # 1.0f

    #@65
    sub-float v9, v8, v3

    #@67
    const/high16 v10, 0x40000000    # 2.0f

    #@69
    div-float/2addr v9, v10

    #@6a
    add-float/2addr v9, v3

    #@6b
    .line 332
    iget-object v14, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    #@6d
    new-instance v13, Landroid/graphics/RadialGradient;

    #@6f
    const/4 v12, 0x4

    #@70
    new-array v10, v12, [I

    #@72
    aput v7, v10, v7

    #@74
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    #@76
    aput v8, v10, v6

    #@78
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    #@7a
    aput v8, v10, v4

    #@7c
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    #@7e
    aput v8, v10, v15

    #@80
    new-array v12, v12, [F

    #@82
    aput v5, v12, v7

    #@84
    aput v3, v12, v6

    #@86
    aput v9, v12, v4

    #@88
    const/high16 v3, 0x3f800000    # 1.0f

    #@8a
    aput v3, v12, v15

    #@8c
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@8e
    move-object v8, v13

    #@8f
    const/4 v5, 0x0

    #@90
    move v9, v5

    #@91
    move-object/from16 v16, v10

    #@93
    const/4 v5, 0x0

    #@94
    move v10, v5

    #@95
    move-object v5, v12

    #@96
    move-object/from16 v12, v16

    #@98
    move-object v4, v13

    #@99
    move-object v13, v5

    #@9a
    move-object v5, v14

    #@9b
    move-object v14, v3

    #@9c
    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@9f
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@a2
    .line 345
    :cond_a2
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    #@a4
    new-instance v4, Landroid/graphics/LinearGradient;

    #@a6
    const/16 v18, 0x0

    #@a8
    iget v1, v1, Landroid/graphics/RectF;->top:F

    #@aa
    const/16 v20, 0x0

    #@ac
    iget v2, v2, Landroid/graphics/RectF;->top:F

    #@ae
    new-array v5, v15, [I

    #@b0
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    #@b2
    aput v8, v5, v7

    #@b4
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    #@b6
    aput v8, v5, v6

    #@b8
    iget v6, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    #@ba
    const/4 v8, 0x2

    #@bb
    aput v6, v5, v8

    #@bd
    new-array v6, v15, [F

    #@bf
    fill-array-data v6, :array_da

    #@c2
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@c4
    move-object/from16 v17, v4

    #@c6
    move/from16 v19, v1

    #@c8
    move/from16 v21, v2

    #@ca
    move-object/from16 v22, v5

    #@cc
    move-object/from16 v23, v6

    #@ce
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@d1
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@d4
    .line 354
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    #@d6
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@d9
    return-void

    #@da
    :array_da
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static calculateHorizontalPadding(FFZ)F
    .registers 9

    #@0
    if-eqz p2, :cond_c

    #@2
    float-to-double v0, p0

    #@3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@5
    .line 182
    sget-wide v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    #@7
    sub-double/2addr v2, v4

    #@8
    float-to-double p0, p1

    #@9
    mul-double/2addr v2, p0

    #@a
    add-double/2addr v0, v2

    #@b
    double-to-float p0, v0

    #@c
    :cond_c
    return p0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .registers 9

    #@0
    const/high16 v0, 0x3fc00000    # 1.5f

    #@2
    if-eqz p2, :cond_10

    #@4
    mul-float/2addr p0, v0

    #@5
    float-to-double v0, p0

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    .line 173
    sget-wide v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    #@a
    sub-double/2addr v2, v4

    #@b
    float-to-double p0, p1

    #@c
    mul-double/2addr v2, p0

    #@d
    add-double/2addr v0, v2

    #@e
    double-to-float p0, v0

    #@f
    return p0

    #@10
    :cond_10
    mul-float/2addr p0, v0

    #@11
    return p0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v7, p1

    #@4
    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@7
    move-result v8

    #@8
    .line 223
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    #@a
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@c
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    #@f
    move-result v2

    #@10
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@12
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    #@15
    move-result v3

    #@16
    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@19
    .line 225
    iget v9, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@1b
    neg-float v1, v9

    #@1c
    iget v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    #@1e
    sub-float v10, v1, v2

    #@20
    .line 227
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@22
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@25
    move-result v1

    #@26
    const/high16 v2, 0x40000000    # 2.0f

    #@28
    mul-float v11, v9, v2

    #@2a
    sub-float/2addr v1, v11

    #@2b
    const/4 v2, 0x0

    #@2c
    cmpl-float v1, v1, v2

    #@2e
    const/4 v3, 0x1

    #@2f
    const/4 v4, 0x0

    #@30
    if-lez v1, :cond_34

    #@32
    move v12, v3

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v12, v4

    #@35
    .line 228
    :goto_35
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@37
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@3a
    move-result v1

    #@3b
    sub-float/2addr v1, v11

    #@3c
    cmpl-float v1, v1, v2

    #@3e
    if-lez v1, :cond_42

    #@40
    move v13, v3

    #@41
    goto :goto_43

    #@42
    :cond_42
    move v13, v4

    #@43
    .line 230
    :goto_43
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    #@45
    const/high16 v2, 0x3e800000    # 0.25f

    #@47
    mul-float/2addr v2, v1

    #@48
    sub-float v2, v1, v2

    #@4a
    const/high16 v3, 0x3f000000    # 0.5f

    #@4c
    mul-float/2addr v3, v1

    #@4d
    sub-float v3, v1, v3

    #@4f
    const/high16 v14, 0x3f800000    # 1.0f

    #@51
    mul-float v4, v1, v14

    #@53
    sub-float/2addr v1, v4

    #@54
    add-float/2addr v3, v9

    #@55
    div-float v15, v9, v3

    #@57
    add-float/2addr v2, v9

    #@58
    div-float v6, v9, v2

    #@5a
    add-float/2addr v1, v9

    #@5b
    div-float v5, v9, v1

    #@5d
    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@60
    move-result v4

    #@61
    .line 240
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@63
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@65
    add-float/2addr v1, v9

    #@66
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@68
    iget v2, v2, Landroid/graphics/RectF;->top:F

    #@6a
    add-float/2addr v2, v9

    #@6b
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@6e
    .line 241
    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    #@71
    .line 242
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@73
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    #@75
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@78
    if-eqz v12, :cond_a4

    #@7a
    div-float v1, v14, v15

    #@7c
    .line 245
    invoke-virtual {v7, v1, v14}, Landroid/graphics/Canvas;->scale(FF)V

    #@7f
    const/4 v2, 0x0

    #@80
    .line 246
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@82
    .line 249
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@85
    move-result v1

    #@86
    sub-float v16, v1, v11

    #@88
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@8a
    neg-float v3, v1

    #@8b
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    #@8d
    move-object/from16 v17, v1

    #@8f
    move-object/from16 v1, p1

    #@91
    move/from16 v18, v3

    #@93
    move v3, v10

    #@94
    move v14, v4

    #@95
    move/from16 v4, v16

    #@97
    move/from16 v19, v5

    #@99
    move/from16 v5, v18

    #@9b
    move/from16 v16, v8

    #@9d
    move v8, v6

    #@9e
    move-object/from16 v6, v17

    #@a0
    .line 246
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@a3
    goto :goto_aa

    #@a4
    :cond_a4
    move v14, v4

    #@a5
    move/from16 v19, v5

    #@a7
    move/from16 v16, v8

    #@a9
    move v8, v6

    #@aa
    .line 253
    :goto_aa
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@ad
    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@b0
    move-result v14

    #@b1
    .line 256
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@b3
    iget v1, v1, Landroid/graphics/RectF;->right:F

    #@b5
    sub-float/2addr v1, v9

    #@b6
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@b8
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    #@ba
    sub-float/2addr v2, v9

    #@bb
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@be
    move/from16 v6, v19

    #@c0
    .line 257
    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    #@c3
    const/high16 v1, 0x43340000    # 180.0f

    #@c5
    .line 258
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    #@c8
    .line 259
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@ca
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    #@cc
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@cf
    if-eqz v12, :cond_f5

    #@d1
    const/high16 v1, 0x3f800000    # 1.0f

    #@d3
    div-float v2, v1, v15

    #@d5
    .line 262
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@d8
    const/4 v2, 0x0

    #@d9
    .line 263
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@db
    .line 266
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@de
    move-result v1

    #@df
    sub-float v4, v1, v11

    #@e1
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@e3
    neg-float v1, v1

    #@e4
    iget v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    #@e6
    add-float v5, v1, v3

    #@e8
    iget-object v12, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    #@ea
    move-object/from16 v1, p1

    #@ec
    move v3, v10

    #@ed
    move/from16 v17, v8

    #@ef
    move v8, v6

    #@f0
    move-object v6, v12

    #@f1
    .line 263
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@f4
    goto :goto_f8

    #@f5
    :cond_f5
    move/from16 v17, v8

    #@f7
    move v8, v6

    #@f8
    .line 270
    :goto_f8
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@fb
    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@fe
    move-result v12

    #@ff
    .line 273
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@101
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@103
    add-float/2addr v1, v9

    #@104
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@106
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    #@108
    sub-float/2addr v2, v9

    #@109
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@10c
    .line 274
    invoke-virtual {v7, v15, v8}, Landroid/graphics/Canvas;->scale(FF)V

    #@10f
    const/high16 v1, 0x43870000    # 270.0f

    #@111
    .line 275
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    #@114
    .line 276
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@116
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    #@118
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@11b
    if-eqz v13, :cond_138

    #@11d
    const/high16 v1, 0x3f800000    # 1.0f

    #@11f
    div-float v14, v1, v8

    #@121
    .line 279
    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@124
    const/4 v2, 0x0

    #@125
    .line 280
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@127
    .line 283
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@12a
    move-result v1

    #@12b
    sub-float v4, v1, v11

    #@12d
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@12f
    neg-float v5, v1

    #@130
    iget-object v6, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    #@132
    move-object/from16 v1, p1

    #@134
    move v3, v10

    #@135
    .line 280
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@138
    .line 287
    :cond_138
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@13b
    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@13e
    move-result v8

    #@13f
    .line 290
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@141
    iget v1, v1, Landroid/graphics/RectF;->right:F

    #@143
    sub-float/2addr v1, v9

    #@144
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@146
    iget v2, v2, Landroid/graphics/RectF;->top:F

    #@148
    add-float/2addr v2, v9

    #@149
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@14c
    move/from16 v9, v17

    #@14e
    .line 291
    invoke-virtual {v7, v15, v9}, Landroid/graphics/Canvas;->scale(FF)V

    #@151
    const/high16 v1, 0x42b40000    # 90.0f

    #@153
    .line 292
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    #@156
    .line 293
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    #@158
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    #@15a
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@15d
    if-eqz v13, :cond_17a

    #@15f
    const/high16 v1, 0x3f800000    # 1.0f

    #@161
    div-float v14, v1, v9

    #@163
    .line 296
    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@166
    const/4 v2, 0x0

    #@167
    .line 297
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    #@169
    .line 300
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@16c
    move-result v1

    #@16d
    sub-float v4, v1, v11

    #@16f
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@171
    neg-float v5, v1

    #@172
    iget-object v6, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    #@174
    move-object/from16 v1, p1

    #@176
    move v3, v10

    #@177
    .line 297
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@17a
    .line 304
    :cond_17a
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@17d
    move/from16 v1, v16

    #@17f
    .line 306
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@182
    return-void
.end method

.method private static toEven(F)I
    .registers 3

    #@0
    .line 104
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@3
    move-result p0

    #@4
    .line 105
    rem-int/lit8 v0, p0, 0x2

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_b

    #@9
    add-int/lit8 p0, p0, -0x1

    #@b
    :cond_b
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 205
    iget-boolean v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 206
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->buildComponents(Landroid/graphics/Rect;)V

    #@b
    const/4 v0, 0x0

    #@c
    .line 207
    iput-boolean v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    #@e
    .line 209
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->drawShadow(Landroid/graphics/Canvas;)V

    #@11
    .line 211
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    #@14
    return-void
.end method

.method public getCornerRadius()F
    .registers 2

    #@0
    .line 379
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@2
    return v0
.end method

.method public getMaxShadowSize()F
    .registers 2

    #@0
    .line 387
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@2
    return v0
.end method

.method public getMinHeight()F
    .registers 6

    #@0
    .line 396
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@2
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@4
    const/high16 v2, 0x3fc00000    # 1.5f

    #@6
    mul-float v3, v0, v2

    #@8
    const/high16 v4, 0x40000000    # 2.0f

    #@a
    div-float/2addr v3, v4

    #@b
    add-float/2addr v1, v3

    #@c
    .line 397
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@f
    move-result v0

    #@10
    mul-float/2addr v0, v4

    #@11
    .line 398
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@13
    mul-float/2addr v1, v2

    #@14
    mul-float/2addr v1, v4

    #@15
    add-float/2addr v0, v1

    #@16
    return v0
.end method

.method public getMinWidth()F
    .registers 5

    #@0
    .line 391
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@2
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@4
    const/high16 v2, 0x40000000    # 2.0f

    #@6
    div-float v3, v0, v2

    #@8
    add-float/2addr v1, v3

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@c
    move-result v0

    #@d
    mul-float/2addr v0, v2

    #@e
    .line 392
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@10
    mul-float/2addr v1, v2

    #@11
    add-float/2addr v0, v1

    #@12
    return v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 6

    #@0
    .line 158
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@2
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@4
    iget-boolean v2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    #@6
    .line 161
    invoke-static {v0, v1, v2}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    #@9
    move-result v0

    #@a
    float-to-double v0, v0

    #@b
    .line 160
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int v0, v0

    #@10
    .line 162
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@12
    iget v2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@14
    iget-boolean v3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    #@16
    .line 165
    invoke-static {v1, v2, v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    #@19
    move-result v1

    #@1a
    float-to-double v1, v1

    #@1b
    .line 164
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    #@1e
    move-result-wide v1

    #@1f
    double-to-int v1, v1

    #@20
    .line 166
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    const/4 p1, 0x1

    #@24
    return p1
.end method

.method public getShadowSize()F
    .registers 2

    #@0
    .line 153
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    #@2
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 122
    iput-boolean p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    #@3
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .registers 2

    #@0
    .line 109
    iput-boolean p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    #@2
    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 115
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    #@3
    .line 116
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    #@5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@8
    .line 117
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@d
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3

    #@0
    .line 194
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@3
    move-result p1

    #@4
    int-to-float p1, p1

    #@5
    .line 195
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@7
    cmpl-float v0, v0, p1

    #@9
    if-nez v0, :cond_c

    #@b
    return-void

    #@c
    .line 198
    :cond_c
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    #@e
    const/4 p1, 0x1

    #@f
    .line 199
    iput-boolean p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    #@11
    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    #@14
    return-void
.end method

.method public setMaxShadowSize(F)V
    .registers 3

    #@0
    .line 383
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    #@5
    return-void
.end method

.method public final setRotation(F)V
    .registers 3

    #@0
    .line 215
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 216
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    #@8
    .line 217
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    #@b
    :cond_b
    return-void
.end method

.method public setShadowSize(F)V
    .registers 3

    #@0
    .line 149
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    #@5
    return-void
.end method

.method public setShadowSize(FF)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    if-ltz v1, :cond_42

    #@5
    cmpg-float v0, p2, v0

    #@7
    if-ltz v0, :cond_42

    #@9
    .line 129
    invoke-static {p1}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->toEven(F)I

    #@c
    move-result p1

    #@d
    int-to-float p1, p1

    #@e
    .line 130
    invoke-static {p2}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->toEven(F)I

    #@11
    move-result p2

    #@12
    int-to-float p2, p2

    #@13
    cmpl-float v0, p1, p2

    #@15
    const/4 v1, 0x1

    #@16
    if-lez v0, :cond_1f

    #@18
    .line 133
    iget-boolean p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    #@1a
    if-nez p1, :cond_1e

    #@1c
    .line 134
    iput-boolean v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    #@1e
    :cond_1e
    move p1, p2

    #@1f
    .line 137
    :cond_1f
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    #@21
    cmpl-float v0, v0, p1

    #@23
    if-nez v0, :cond_2c

    #@25
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@27
    cmpl-float v0, v0, p2

    #@29
    if-nez v0, :cond_2c

    #@2b
    return-void

    #@2c
    .line 140
    :cond_2c
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    #@2e
    .line 141
    iput p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    #@30
    const/high16 v0, 0x3fc00000    # 1.5f

    #@32
    mul-float/2addr p1, v0

    #@33
    .line 142
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@36
    move-result p1

    #@37
    int-to-float p1, p1

    #@38
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    #@3a
    .line 143
    iput p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->maxShadowSize:F

    #@3c
    .line 144
    iput-boolean v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    #@3e
    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    #@41
    return-void

    #@42
    .line 127
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@44
    const-string p2, "invalid shadow size"

    #@46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw p1
.end method
