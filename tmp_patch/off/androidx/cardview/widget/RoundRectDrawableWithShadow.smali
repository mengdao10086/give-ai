.class Landroidx/cardview/widget/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field private static final COS_45:D

.field private static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private mAddPaddingForCorners:Z

.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mCardBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mCornerShadowPaint:Landroid/graphics/Paint;

.field private mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Landroid/graphics/Paint;

.field private final mInsetShadow:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field private mRawMaxShadowSize:F

.field private mRawShadowSize:F

.field private final mShadowEndColor:I

.field private mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide v0, 0x4046800000000000L    # 45.0

    #@5
    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@c
    move-result-wide v0

    #@d
    sput-wide v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    #@f
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .registers 8

    #@0
    .line 92
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 78
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    #@6
    .line 84
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    #@8
    const/4 v0, 0x0

    #@9
    .line 89
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    #@b
    .line 93
    sget v1, Landroidx/cardview/R$color;->cardview_shadow_start_color:I

    #@d
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    #@10
    move-result v1

    #@11
    iput v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    #@13
    .line 94
    sget v1, Landroidx/cardview/R$color;->cardview_shadow_end_color:I

    #@15
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    #@1b
    .line 95
    sget v1, Landroidx/cardview/R$dimen;->cardview_compat_inset_shadow:I

    #@1d
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@20
    move-result p1

    #@21
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@23
    .line 96
    new-instance p1, Landroid/graphics/Paint;

    #@25
    const/4 v1, 0x5

    #@26
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@29
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@2b
    .line 97
    invoke-direct {p0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setBackground(Landroid/content/res/ColorStateList;)V

    #@2e
    .line 98
    new-instance p1, Landroid/graphics/Paint;

    #@30
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@33
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@35
    .line 99
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@37
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@3a
    const/high16 p1, 0x3f000000    # 0.5f

    #@3c
    add-float/2addr p3, p1

    #@3d
    float-to-int p1, p3

    #@3e
    int-to-float p1, p1

    #@3f
    .line 100
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@41
    .line 101
    new-instance p1, Landroid/graphics/RectF;

    #@43
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@46
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@48
    .line 102
    new-instance p1, Landroid/graphics/Paint;

    #@4a
    iget-object p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@4c
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@4f
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@51
    .line 103
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@54
    .line 104
    invoke-direct {p0, p4, p5}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    #@57
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .registers 8

    #@0
    .line 334
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    const/high16 v1, 0x3fc00000    # 1.5f

    #@4
    mul-float/2addr v0, v1

    #@5
    .line 335
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@7
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@9
    int-to-float v2, v2

    #@a
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

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
    iget v5, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

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
    .line 337
    invoke-direct {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->buildShadowCorners()V

    #@21
    return-void
.end method

.method private buildShadowCorners()V
    .registers 26

    #@0
    move-object/from16 v0, p0

    #@2
    .line 297
    new-instance v1, Landroid/graphics/RectF;

    #@4
    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@6
    neg-float v3, v2

    #@7
    neg-float v4, v2

    #@8
    invoke-direct {v1, v3, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@b
    .line 298
    new-instance v2, Landroid/graphics/RectF;

    #@d
    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@10
    .line 299
    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    #@12
    neg-float v4, v3

    #@13
    neg-float v3, v3

    #@14
    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    #@17
    .line 301
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@19
    if-nez v3, :cond_23

    #@1b
    .line 302
    new-instance v3, Landroid/graphics/Path;

    #@1d
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    #@20
    iput-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@22
    goto :goto_26

    #@23
    .line 304
    :cond_23
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    #@26
    .line 306
    :goto_26
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@28
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@2a
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@2d
    .line 307
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@2f
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@31
    neg-float v4, v4

    #@32
    const/4 v5, 0x0

    #@33
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    #@36
    .line 308
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@38
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    #@3a
    neg-float v4, v4

    #@3b
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    #@3e
    .line 310
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@40
    const/high16 v4, 0x43340000    # 180.0f

    #@42
    const/high16 v6, 0x42b40000    # 90.0f

    #@44
    const/4 v7, 0x0

    #@45
    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@48
    .line 312
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@4a
    const/high16 v3, 0x43870000    # 270.0f

    #@4c
    const/high16 v4, -0x3d4c0000    # -90.0f

    #@4e
    invoke-virtual {v2, v1, v3, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@51
    .line 313
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@53
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    #@56
    .line 314
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@58
    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    #@5a
    add-float/2addr v2, v1

    #@5b
    div-float/2addr v1, v2

    #@5c
    .line 315
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@5e
    new-instance v3, Landroid/graphics/RadialGradient;

    #@60
    const/4 v9, 0x0

    #@61
    const/4 v10, 0x0

    #@62
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@64
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    #@66
    add-float v11, v4, v6

    #@68
    const/4 v4, 0x3

    #@69
    new-array v12, v4, [I

    #@6b
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    #@6d
    aput v6, v12, v7

    #@6f
    const/4 v15, 0x1

    #@70
    aput v6, v12, v15

    #@72
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    #@74
    const/16 v16, 0x2

    #@76
    aput v6, v12, v16

    #@78
    new-array v13, v4, [F

    #@7a
    aput v5, v13, v7

    #@7c
    aput v1, v13, v15

    #@7e
    const/high16 v1, 0x3f800000    # 1.0f

    #@80
    aput v1, v13, v16

    #@82
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@84
    move-object v8, v3

    #@85
    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@88
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@8b
    .line 323
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@8d
    new-instance v2, Landroid/graphics/LinearGradient;

    #@8f
    const/16 v18, 0x0

    #@91
    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@93
    neg-float v5, v3

    #@94
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    #@96
    add-float v19, v5, v6

    #@98
    const/16 v20, 0x0

    #@9a
    neg-float v3, v3

    #@9b
    sub-float v21, v3, v6

    #@9d
    new-array v3, v4, [I

    #@9f
    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    #@a1
    aput v5, v3, v7

    #@a3
    aput v5, v3, v15

    #@a5
    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    #@a7
    aput v5, v3, v16

    #@a9
    new-array v4, v4, [F

    #@ab
    fill-array-data v4, :array_c2

    #@ae
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@b0
    move-object/from16 v17, v2

    #@b2
    move-object/from16 v22, v3

    #@b4
    move-object/from16 v23, v4

    #@b6
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@b9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@bc
    .line 327
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@be
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@c1
    return-void

    #@c2
    :array_c2
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .registers 9

    #@0
    if-eqz p2, :cond_c

    #@2
    float-to-double v0, p0

    #@3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@5
    .line 190
    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

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

.method static calculateVerticalPadding(FFZ)F
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
    .line 181
    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

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
    .registers 14

    #@0
    .line 249
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@2
    neg-float v1, v0

    #@3
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    #@5
    sub-float/2addr v1, v2

    #@6
    .line 250
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@8
    int-to-float v2, v2

    #@9
    add-float/2addr v0, v2

    #@a
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@c
    const/high16 v3, 0x40000000    # 2.0f

    #@e
    div-float/2addr v2, v3

    #@f
    add-float/2addr v0, v2

    #@10
    .line 251
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@12
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@15
    move-result v2

    #@16
    mul-float v9, v0, v3

    #@18
    sub-float/2addr v2, v9

    #@19
    const/4 v3, 0x0

    #@1a
    cmpl-float v2, v2, v3

    #@1c
    const/4 v4, 0x1

    #@1d
    const/4 v5, 0x0

    #@1e
    if-lez v2, :cond_22

    #@20
    move v2, v4

    #@21
    goto :goto_23

    #@22
    :cond_22
    move v2, v5

    #@23
    .line 252
    :goto_23
    iget-object v6, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@25
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    #@28
    move-result v6

    #@29
    sub-float/2addr v6, v9

    #@2a
    cmpl-float v3, v6, v3

    #@2c
    if-lez v3, :cond_30

    #@2e
    move v10, v4

    #@2f
    goto :goto_31

    #@30
    :cond_30
    move v10, v5

    #@31
    .line 254
    :goto_31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@34
    move-result v11

    #@35
    .line 255
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@37
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@39
    add-float/2addr v3, v0

    #@3a
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@3c
    iget v4, v4, Landroid/graphics/RectF;->top:F

    #@3e
    add-float/2addr v4, v0

    #@3f
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@42
    .line 256
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@44
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@46
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@49
    if-eqz v2, :cond_5e

    #@4b
    const/4 v4, 0x0

    #@4c
    .line 258
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@4e
    .line 259
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    #@51
    move-result v3

    #@52
    sub-float v6, v3, v9

    #@54
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@56
    neg-float v7, v3

    #@57
    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@59
    move-object v3, p1

    #@5a
    move v5, v1

    #@5b
    .line 258
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@5e
    .line 262
    :cond_5e
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@61
    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@64
    move-result v11

    #@65
    .line 265
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@67
    iget v3, v3, Landroid/graphics/RectF;->right:F

    #@69
    sub-float/2addr v3, v0

    #@6a
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@6c
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    #@6e
    sub-float/2addr v4, v0

    #@6f
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@72
    const/high16 v3, 0x43340000    # 180.0f

    #@74
    .line 266
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    #@77
    .line 267
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@79
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@7b
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@7e
    if-eqz v2, :cond_97

    #@80
    const/4 v4, 0x0

    #@81
    .line 269
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@83
    .line 270
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@86
    move-result v2

    #@87
    sub-float v6, v2, v9

    #@89
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@8b
    neg-float v2, v2

    #@8c
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    #@8e
    add-float v7, v2, v3

    #@90
    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@92
    move-object v3, p1

    #@93
    move v5, v1

    #@94
    .line 269
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@97
    .line 273
    :cond_97
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@9a
    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@9d
    move-result v2

    #@9e
    .line 276
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@a0
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@a2
    add-float/2addr v3, v0

    #@a3
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@a5
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    #@a7
    sub-float/2addr v4, v0

    #@a8
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@ab
    const/high16 v3, 0x43870000    # 270.0f

    #@ad
    .line 277
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    #@b0
    .line 278
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@b2
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@b4
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@b7
    if-eqz v10, :cond_cc

    #@b9
    const/4 v4, 0x0

    #@ba
    .line 280
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@bc
    .line 281
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    #@bf
    move-result v3

    #@c0
    sub-float v6, v3, v9

    #@c2
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@c4
    neg-float v7, v3

    #@c5
    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@c7
    move-object v3, p1

    #@c8
    move v5, v1

    #@c9
    .line 280
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@cc
    .line 283
    :cond_cc
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@cf
    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@d2
    move-result v2

    #@d3
    .line 286
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@d5
    iget v3, v3, Landroid/graphics/RectF;->right:F

    #@d7
    sub-float/2addr v3, v0

    #@d8
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@da
    iget v4, v4, Landroid/graphics/RectF;->top:F

    #@dc
    add-float/2addr v4, v0

    #@dd
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@e0
    const/high16 v0, 0x42b40000    # 90.0f

    #@e2
    .line 287
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    #@e5
    .line 288
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@e7
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@e9
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@ec
    if-eqz v10, :cond_101

    #@ee
    const/4 v4, 0x0

    #@ef
    .line 290
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@f1
    .line 291
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@f4
    move-result v0

    #@f5
    sub-float v6, v0, v9

    #@f7
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@f9
    neg-float v7, v0

    #@fa
    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@fc
    move-object v3, p1

    #@fd
    move v5, v1

    #@fe
    .line 290
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@101
    .line 293
    :cond_101
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@104
    return-void
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 108
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@6
    move-result-object p1

    #@7
    :cond_7
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    #@9
    .line 109
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@b
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getState()[I

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    #@11
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@14
    move-result v2

    #@15
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@18
    move-result p1

    #@19
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@1c
    return-void
.end method

.method private setShadowSize(FF)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    const-string v2, ". Must be >= 0"

    #@5
    if-ltz v1, :cond_5f

    #@7
    cmpg-float v0, p2, v0

    #@9
    if-ltz v0, :cond_46

    #@b
    .line 150
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->toEven(F)I

    #@e
    move-result p1

    #@f
    int-to-float p1, p1

    #@10
    .line 151
    invoke-direct {p0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->toEven(F)I

    #@13
    move-result p2

    #@14
    int-to-float p2, p2

    #@15
    cmpl-float v0, p1, p2

    #@17
    const/4 v1, 0x1

    #@18
    if-lez v0, :cond_21

    #@1a
    .line 154
    iget-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    #@1c
    if-nez p1, :cond_20

    #@1e
    .line 155
    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    #@20
    :cond_20
    move p1, p2

    #@21
    .line 158
    :cond_21
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@23
    cmpl-float v0, v0, p1

    #@25
    if-nez v0, :cond_2e

    #@27
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@29
    cmpl-float v0, v0, p2

    #@2b
    if-nez v0, :cond_2e

    #@2d
    return-void

    #@2e
    .line 161
    :cond_2e
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@30
    .line 162
    iput p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@32
    const/high16 p2, 0x3fc00000    # 1.5f

    #@34
    mul-float/2addr p1, p2

    #@35
    .line 163
    iget p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@37
    int-to-float p2, p2

    #@38
    add-float/2addr p1, p2

    #@39
    const/high16 p2, 0x3f000000    # 0.5f

    #@3b
    add-float/2addr p1, p2

    #@3c
    float-to-int p1, p1

    #@3d
    int-to-float p1, p1

    #@3e
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    #@40
    .line 164
    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    #@42
    .line 165
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@45
    return-void

    #@46
    .line 147
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v0, Ljava/lang/StringBuilder;

    #@4a
    const-string v1, "Invalid max shadow size "

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@52
    move-result-object p2

    #@53
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object p2

    #@57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object p2

    #@5b
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw p1

    #@5f
    .line 143
    :cond_5f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@61
    new-instance v0, Ljava/lang/StringBuilder;

    #@63
    const-string v1, "Invalid shadow size "

    #@65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@6b
    move-result-object p1

    #@6c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object p1

    #@70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object p1

    #@74
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@77
    throw p2
.end method

.method private toEven(F)I
    .registers 4

    #@0
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    add-float/2addr p1, v0

    #@3
    float-to-int p1, p1

    #@4
    .line 117
    rem-int/lit8 v0, p1, 0x2

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_a

    #@9
    sub-int/2addr p1, v1

    #@a
    :cond_a
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 238
    iget-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 239
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->buildComponents(Landroid/graphics/Rect;)V

    #@b
    const/4 v0, 0x0

    #@c
    .line 240
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    #@e
    .line 242
    :cond_e
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@10
    const/high16 v1, 0x40000000    # 2.0f

    #@12
    div-float/2addr v0, v1

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@17
    .line 243
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->drawShadow(Landroid/graphics/Canvas;)V

    #@1a
    .line 244
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@1c
    neg-float v0, v0

    #@1d
    div-float/2addr v0, v1

    #@1e
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@21
    .line 245
    sget-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    #@23
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@25
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@27
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@29
    invoke-interface {v0, p1, v1, v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    #@2c
    return-void
.end method

.method getColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 382
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getCornerRadius()F
    .registers 2

    #@0
    .line 341
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@2
    return v0
.end method

.method getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 345
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getPadding(Landroid/graphics/Rect;)Z

    #@3
    return-void
.end method

.method getMaxShadowSize()F
    .registers 2

    #@0
    .line 361
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    return v0
.end method

.method getMinHeight()F
    .registers 6

    #@0
    .line 371
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@4
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@6
    int-to-float v2, v2

    #@7
    add-float/2addr v1, v2

    #@8
    const/high16 v2, 0x3fc00000    # 1.5f

    #@a
    mul-float v3, v0, v2

    #@c
    const/high16 v4, 0x40000000    # 2.0f

    #@e
    div-float/2addr v3, v4

    #@f
    add-float/2addr v1, v3

    #@10
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@13
    move-result v0

    #@14
    mul-float/2addr v0, v4

    #@15
    .line 373
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@17
    mul-float/2addr v1, v2

    #@18
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@1a
    int-to-float v2, v2

    #@1b
    add-float/2addr v1, v2

    #@1c
    mul-float/2addr v1, v4

    #@1d
    add-float/2addr v0, v1

    #@1e
    return v0
.end method

.method getMinWidth()F
    .registers 5

    #@0
    .line 365
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@4
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@6
    int-to-float v2, v2

    #@7
    add-float/2addr v1, v2

    #@8
    const/high16 v2, 0x40000000    # 2.0f

    #@a
    div-float v3, v0, v2

    #@c
    add-float/2addr v1, v3

    #@d
    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@10
    move-result v0

    #@11
    mul-float/2addr v0, v2

    #@12
    .line 367
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@14
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@16
    int-to-float v3, v3

    #@17
    add-float/2addr v1, v3

    #@18
    mul-float/2addr v1, v2

    #@19
    add-float/2addr v0, v1

    #@1a
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
    .line 170
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@4
    iget-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    #@6
    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    #@9
    move-result v0

    #@a
    float-to-double v0, v0

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int v0, v0

    #@10
    .line 172
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@12
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@14
    iget-boolean v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    #@16
    invoke-static {v1, v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    #@19
    move-result v1

    #@1a
    float-to-double v1, v1

    #@1b
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    #@1e
    move-result-wide v1

    #@1f
    double-to-int v1, v1

    #@20
    .line 174
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    const/4 p1, 0x1

    #@24
    return p1
.end method

.method getShadowSize()F
    .registers 2

    #@0
    .line 357
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@2
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    .line 210
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_10

    #@a
    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 137
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    const/4 p1, 0x1

    #@4
    .line 138
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    #@6
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 4

    #@0
    .line 198
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@9
    move-result p1

    #@a
    .line 199
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@c
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@f
    move-result v0

    #@10
    if-ne v0, p1, :cond_14

    #@12
    const/4 p1, 0x0

    #@13
    return p1

    #@14
    .line 202
    :cond_14
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@19
    const/4 p1, 0x1

    #@1a
    .line 203
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    #@1c
    .line 204
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@1f
    return p1
.end method

.method setAddPaddingForCorners(Z)V
    .registers 2

    #@0
    .line 124
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    #@2
    .line 125
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 130
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@5
    .line 131
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@a
    .line 132
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@c
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@f
    return-void
.end method

.method setColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 377
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setBackground(Landroid/content/res/ColorStateList;)V

    #@3
    .line 378
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 215
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    return-void
.end method

.method setCornerRadius(F)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-ltz v0, :cond_1a

    #@5
    const/high16 v0, 0x3f000000    # 0.5f

    #@7
    add-float/2addr p1, v0

    #@8
    float-to-int p1, p1

    #@9
    int-to-float p1, p1

    #@a
    .line 228
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@c
    cmpl-float v0, v0, p1

    #@e
    if-nez v0, :cond_11

    #@10
    return-void

    #@11
    .line 231
    :cond_11
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@13
    const/4 p1, 0x1

    #@14
    .line 232
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    #@16
    .line 233
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@19
    return-void

    #@1a
    .line 225
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    const-string v2, "Invalid radius "

    #@20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    const-string v1, ". Must be >= 0"

    #@29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p1

    #@31
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method setMaxShadowSize(F)V
    .registers 3

    #@0
    .line 353
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@2
    invoke-direct {p0, v0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    #@5
    return-void
.end method

.method setShadowSize(F)V
    .registers 3

    #@0
    .line 349
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    #@5
    return-void
.end method
