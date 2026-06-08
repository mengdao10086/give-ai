.class public Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;
.super Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;
.source "ShadowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ShadowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowDrawable"
.end annotation


# static fields
.field private static final COS_45:D


# instance fields
.field private isCircle:Z

.field private mAddPaddingForCorners:Z

.field private mContentBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mCornerShadowPaint:Landroid/graphics/Paint;

.field private mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Landroid/graphics/Paint;

.field private mMaxShadowSize:F

.field private mRawMaxShadowSize:F

.field private mRawShadowSize:F

.field private mRotation:F

.field private mShadowBottomScale:F

.field private final mShadowEndColor:I

.field private mShadowHorizScale:F

.field private mShadowMultiplier:F

.field private mShadowSize:F

.field private final mShadowStartColor:I

.field private mShadowTopScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide v0, 0x4046800000000000L    # 45.0

    #@5
    .line 177
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@c
    move-result-wide v0

    #@d
    sput-wide v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->COS_45:D

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FFFIZ)V
    .registers 9

    #@0
    .line 217
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@3
    const/high16 p1, 0x3f800000    # 1.0f

    #@5
    .line 179
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    #@7
    .line 181
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowTopScale:F

    #@9
    .line 182
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowHorizScale:F

    #@b
    .line 183
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowBottomScale:F

    #@d
    const/4 v0, 0x1

    #@e
    .line 204
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mDirty:Z

    #@10
    const/4 v0, 0x0

    #@11
    .line 209
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mAddPaddingForCorners:Z

    #@13
    .line 218
    iput p5, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    #@15
    const v1, 0xffffff

    #@18
    and-int/2addr p5, v1

    #@19
    .line 219
    iput p5, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowEndColor:I

    #@1b
    .line 220
    iput-boolean p6, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->isCircle:Z

    #@1d
    if-eqz p6, :cond_27

    #@1f
    .line 222
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    #@21
    .line 223
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowTopScale:F

    #@23
    .line 224
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowHorizScale:F

    #@25
    .line 225
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowBottomScale:F

    #@27
    .line 228
    :cond_27
    new-instance p1, Landroid/graphics/Paint;

    #@29
    const/4 p5, 0x5

    #@2a
    invoke-direct {p1, p5}, Landroid/graphics/Paint;-><init>(I)V

    #@2d
    iput-object p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@2f
    .line 229
    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@31
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@34
    .line 230
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@37
    move-result p1

    #@38
    int-to-float p1, p1

    #@39
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@3b
    .line 231
    new-instance p1, Landroid/graphics/RectF;

    #@3d
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@40
    iput-object p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@42
    .line 232
    new-instance p1, Landroid/graphics/Paint;

    #@44
    iget-object p2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@46
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@49
    iput-object p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@4b
    .line 233
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@4e
    .line 234
    invoke-virtual {p0, p3, p4}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->setShadowSize(FF)V

    #@51
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .registers 8

    #@0
    .line 496
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->isCircle:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 497
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@7
    move-result v0

    #@8
    div-int/lit8 v0, v0, 0x2

    #@a
    int-to-float v0, v0

    #@b
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@d
    .line 499
    :cond_d
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@f
    iget v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    #@11
    mul-float/2addr v0, v1

    #@12
    .line 500
    iget-object v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@14
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@16
    int-to-float v2, v2

    #@17
    iget v3, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@19
    add-float/2addr v2, v3

    #@1a
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@1c
    int-to-float v3, v3

    #@1d
    add-float/2addr v3, v0

    #@1e
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@20
    int-to-float v4, v4

    #@21
    iget v5, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@23
    sub-float/2addr v4, v5

    #@24
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@26
    int-to-float p1, p1

    #@27
    sub-float/2addr p1, v0

    #@28
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    #@2b
    .line 503
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    #@2e
    move-result-object p1

    #@2f
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@31
    iget v0, v0, Landroid/graphics/RectF;->left:F

    #@33
    float-to-int v0, v0

    #@34
    iget-object v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@36
    iget v1, v1, Landroid/graphics/RectF;->top:F

    #@38
    float-to-int v1, v1

    #@39
    iget-object v2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@3b
    iget v2, v2, Landroid/graphics/RectF;->right:F

    #@3d
    float-to-int v2, v2

    #@3e
    iget-object v3, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@40
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    #@42
    float-to-int v3, v3

    #@43
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@46
    .line 505
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->buildShadowCorners()V

    #@49
    return-void
.end method

.method private buildShadowCorners()V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    .line 426
    iget-boolean v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->isCircle:Z

    #@4
    const/high16 v2, 0x3f800000    # 1.0f

    #@6
    const/4 v3, 0x2

    #@7
    const/4 v4, 0x1

    #@8
    const/4 v5, 0x3

    #@9
    const/high16 v6, 0x43340000    # 180.0f

    #@b
    const/4 v7, 0x0

    #@c
    const/4 v8, 0x0

    #@d
    if-eqz v1, :cond_95

    #@f
    .line 427
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@11
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@14
    move-result v1

    #@15
    const/high16 v9, 0x40000000    # 2.0f

    #@17
    div-float/2addr v1, v9

    #@18
    sub-float/2addr v1, v2

    #@19
    .line 428
    new-instance v9, Landroid/graphics/RectF;

    #@1b
    neg-float v10, v1

    #@1c
    invoke-direct {v9, v10, v10, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@1f
    .line 429
    new-instance v11, Landroid/graphics/RectF;

    #@21
    invoke-direct {v11, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@24
    .line 430
    iget v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowSize:F

    #@26
    neg-float v13, v12

    #@27
    neg-float v12, v12

    #@28
    invoke-virtual {v11, v13, v12}, Landroid/graphics/RectF;->inset(FF)V

    #@2b
    .line 432
    iget-object v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@2d
    if-nez v12, :cond_37

    #@2f
    .line 433
    new-instance v12, Landroid/graphics/Path;

    #@31
    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    #@34
    iput-object v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@36
    goto :goto_3a

    #@37
    .line 435
    :cond_37
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    #@3a
    .line 437
    :goto_3a
    iget-object v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@3c
    sget-object v13, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@3e
    invoke-virtual {v12, v13}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@41
    .line 438
    iget-object v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@43
    invoke-virtual {v12, v10, v7}, Landroid/graphics/Path;->moveTo(FF)V

    #@46
    .line 439
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@48
    iget v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowSize:F

    #@4a
    neg-float v12, v12

    #@4b
    invoke-virtual {v10, v12, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    #@4e
    .line 441
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@50
    invoke-virtual {v10, v11, v6, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@53
    .line 442
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@55
    invoke-virtual {v10, v11, v7, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@58
    .line 444
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@5a
    invoke-virtual {v10, v9, v6, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@5d
    .line 445
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@5f
    invoke-virtual {v10, v9, v7, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@62
    .line 446
    iget-object v6, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@64
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    #@67
    .line 448
    iget v6, v11, Landroid/graphics/RectF;->top:F

    #@69
    neg-float v12, v6

    #@6a
    cmpl-float v6, v12, v7

    #@6c
    if-lez v6, :cond_94

    #@6e
    div-float/2addr v1, v12

    #@6f
    .line 451
    iget-object v6, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@71
    new-instance v15, Landroid/graphics/RadialGradient;

    #@73
    const/4 v10, 0x0

    #@74
    const/4 v11, 0x0

    #@75
    new-array v13, v5, [I

    #@77
    aput v8, v13, v8

    #@79
    iget v9, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    #@7b
    aput v9, v13, v4

    #@7d
    iget v9, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowEndColor:I

    #@7f
    aput v9, v13, v3

    #@81
    new-array v14, v5, [F

    #@83
    aput v7, v14, v8

    #@85
    aput v1, v14, v4

    #@87
    aput v2, v14, v3

    #@89
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@8b
    move-object v9, v15

    #@8c
    move-object v2, v15

    #@8d
    move-object v15, v1

    #@8e
    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@91
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@94
    :cond_94
    return-void

    #@95
    .line 458
    :cond_95
    new-instance v1, Landroid/graphics/RectF;

    #@97
    iget v9, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@99
    neg-float v10, v9

    #@9a
    neg-float v11, v9

    #@9b
    invoke-direct {v1, v10, v11, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@9e
    .line 459
    new-instance v9, Landroid/graphics/RectF;

    #@a0
    invoke-direct {v9, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@a3
    .line 460
    iget v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowSize:F

    #@a5
    neg-float v11, v10

    #@a6
    neg-float v10, v10

    #@a7
    invoke-virtual {v9, v11, v10}, Landroid/graphics/RectF;->inset(FF)V

    #@aa
    .line 462
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@ac
    if-nez v10, :cond_b6

    #@ae
    .line 463
    new-instance v10, Landroid/graphics/Path;

    #@b0
    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    #@b3
    iput-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@b5
    goto :goto_b9

    #@b6
    .line 465
    :cond_b6
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    #@b9
    .line 467
    :goto_b9
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@bb
    sget-object v11, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@bd
    invoke-virtual {v10, v11}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@c0
    .line 468
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@c2
    iget v11, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@c4
    neg-float v11, v11

    #@c5
    invoke-virtual {v10, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    #@c8
    .line 469
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@ca
    iget v11, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowSize:F

    #@cc
    neg-float v11, v11

    #@cd
    invoke-virtual {v10, v11, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    #@d0
    .line 471
    iget-object v10, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@d2
    const/high16 v11, 0x42b40000    # 90.0f

    #@d4
    invoke-virtual {v10, v9, v6, v11, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@d7
    .line 473
    iget-object v6, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@d9
    const/high16 v10, 0x43870000    # 270.0f

    #@db
    const/high16 v11, -0x3d4c0000    # -90.0f

    #@dd
    invoke-virtual {v6, v1, v10, v11, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@e0
    .line 474
    iget-object v6, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@e2
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    #@e5
    .line 476
    iget v6, v9, Landroid/graphics/RectF;->top:F

    #@e7
    neg-float v13, v6

    #@e8
    cmpl-float v6, v13, v7

    #@ea
    if-lez v6, :cond_11a

    #@ec
    .line 478
    iget v6, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@ee
    div-float/2addr v6, v13

    #@ef
    .line 479
    iget-object v15, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@f1
    new-instance v14, Landroid/graphics/RadialGradient;

    #@f3
    const/4 v11, 0x0

    #@f4
    new-array v10, v5, [I

    #@f6
    aput v8, v10, v8

    #@f8
    iget v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    #@fa
    aput v12, v10, v4

    #@fc
    iget v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowEndColor:I

    #@fe
    aput v12, v10, v3

    #@100
    new-array v5, v5, [F

    #@102
    aput v7, v5, v8

    #@104
    aput v6, v5, v4

    #@106
    aput v2, v5, v3

    #@108
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@10a
    move-object v3, v10

    #@10b
    move-object v10, v14

    #@10c
    const/4 v4, 0x0

    #@10d
    move v12, v4

    #@10e
    move-object v4, v14

    #@10f
    move-object v14, v3

    #@110
    move-object v3, v15

    #@111
    move-object v15, v5

    #@112
    move-object/from16 v16, v2

    #@114
    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@117
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@11a
    .line 487
    :cond_11a
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@11c
    new-instance v3, Landroid/graphics/LinearGradient;

    #@11e
    const/4 v11, 0x0

    #@11f
    iget v12, v1, Landroid/graphics/RectF;->top:F

    #@121
    const/4 v13, 0x0

    #@122
    iget v14, v9, Landroid/graphics/RectF;->top:F

    #@124
    iget v15, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    #@126
    iget v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowEndColor:I

    #@128
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@12a
    move-object v10, v3

    #@12b
    move/from16 v16, v1

    #@12d
    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@130
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@133
    .line 489
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@135
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@138
    return-void
.end method

.method private static calculateHorizontalPadding(FFZ)F
    .registers 9

    #@0
    if-eqz p2, :cond_c

    #@2
    float-to-double v0, p0

    #@3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@5
    .line 304
    sget-wide v4, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->COS_45:D

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

.method private calculateVerticalPadding(FFZ)F
    .registers 10

    #@0
    if-eqz p3, :cond_10

    #@2
    .line 295
    iget p3, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    #@4
    mul-float/2addr p1, p3

    #@5
    float-to-double v0, p1

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    sget-wide v4, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->COS_45:D

    #@a
    sub-double/2addr v2, v4

    #@b
    float-to-double p1, p2

    #@c
    mul-double/2addr v2, p1

    #@d
    add-double/2addr v0, v2

    #@e
    double-to-float p1, v0

    #@f
    return p1

    #@10
    .line 297
    :cond_10
    iget p2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    #@12
    mul-float/2addr p1, p2

    #@13
    return p1
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v7, p1

    #@4
    .line 344
    iget-boolean v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->isCircle:Z

    #@6
    if-eqz v1, :cond_26

    #@8
    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@b
    move-result v1

    #@c
    .line 346
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@e
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    #@11
    move-result v2

    #@12
    iget-object v3, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@14
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    #@17
    move-result v3

    #@18
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@1b
    .line 347
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@1d
    iget-object v3, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@1f
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@22
    .line 348
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@25
    return-void

    #@26
    .line 352
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@29
    move-result v8

    #@2a
    .line 353
    iget v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRotation:F

    #@2c
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@2e
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    #@31
    move-result v2

    #@32
    iget-object v3, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@34
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    #@37
    move-result v3

    #@38
    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@3b
    .line 355
    iget v9, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@3d
    neg-float v1, v9

    #@3e
    iget v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowSize:F

    #@40
    sub-float v10, v1, v2

    #@42
    .line 357
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@44
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@47
    move-result v1

    #@48
    const/high16 v2, 0x40000000    # 2.0f

    #@4a
    mul-float v11, v9, v2

    #@4c
    sub-float/2addr v1, v11

    #@4d
    const/4 v2, 0x0

    #@4e
    cmpl-float v1, v1, v2

    #@50
    const/4 v3, 0x1

    #@51
    const/4 v4, 0x0

    #@52
    if-lez v1, :cond_56

    #@54
    move v12, v3

    #@55
    goto :goto_57

    #@56
    :cond_56
    move v12, v4

    #@57
    .line 358
    :goto_57
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@59
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@5c
    move-result v1

    #@5d
    sub-float/2addr v1, v11

    #@5e
    cmpl-float v1, v1, v2

    #@60
    if-lez v1, :cond_64

    #@62
    move v13, v3

    #@63
    goto :goto_65

    #@64
    :cond_64
    move v13, v4

    #@65
    .line 360
    :goto_65
    iget v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    #@67
    iget v3, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowTopScale:F

    #@69
    mul-float/2addr v3, v1

    #@6a
    sub-float v3, v1, v3

    #@6c
    .line 361
    iget v4, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowHorizScale:F

    #@6e
    mul-float/2addr v4, v1

    #@6f
    sub-float v4, v1, v4

    #@71
    .line 362
    iget v5, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowBottomScale:F

    #@73
    mul-float/2addr v5, v1

    #@74
    sub-float/2addr v1, v5

    #@75
    cmpl-float v2, v9, v2

    #@77
    const/high16 v14, 0x3f800000    # 1.0f

    #@79
    if-nez v2, :cond_7d

    #@7b
    move v15, v14

    #@7c
    goto :goto_81

    #@7d
    :cond_7d
    add-float/2addr v4, v9

    #@7e
    div-float v4, v9, v4

    #@80
    move v15, v4

    #@81
    :goto_81
    if-nez v2, :cond_85

    #@83
    move v6, v14

    #@84
    goto :goto_89

    #@85
    :cond_85
    add-float/2addr v3, v9

    #@86
    div-float v3, v9, v3

    #@88
    move v6, v3

    #@89
    :goto_89
    if-nez v2, :cond_8d

    #@8b
    move v5, v14

    #@8c
    goto :goto_91

    #@8d
    :cond_8d
    add-float/2addr v1, v9

    #@8e
    div-float v1, v9, v1

    #@90
    move v5, v1

    #@91
    .line 369
    :goto_91
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@94
    move-result v4

    #@95
    .line 370
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@97
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@99
    add-float/2addr v1, v9

    #@9a
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@9c
    iget v2, v2, Landroid/graphics/RectF;->top:F

    #@9e
    add-float/2addr v2, v9

    #@9f
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@a2
    .line 371
    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    #@a5
    .line 372
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@a7
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@a9
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@ac
    if-eqz v12, :cond_d8

    #@ae
    div-float v1, v14, v15

    #@b0
    .line 375
    invoke-virtual {v7, v1, v14}, Landroid/graphics/Canvas;->scale(FF)V

    #@b3
    const/4 v2, 0x0

    #@b4
    .line 376
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@b6
    .line 377
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@b9
    move-result v1

    #@ba
    sub-float v16, v1, v11

    #@bc
    iget v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@be
    neg-float v3, v1

    #@bf
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@c1
    move-object/from16 v17, v1

    #@c3
    move-object/from16 v1, p1

    #@c5
    move/from16 v18, v3

    #@c7
    move v3, v10

    #@c8
    move v14, v4

    #@c9
    move/from16 v4, v16

    #@cb
    move/from16 v19, v5

    #@cd
    move/from16 v5, v18

    #@cf
    move/from16 v16, v8

    #@d1
    move v8, v6

    #@d2
    move-object/from16 v6, v17

    #@d4
    .line 376
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@d7
    goto :goto_de

    #@d8
    :cond_d8
    move v14, v4

    #@d9
    move/from16 v19, v5

    #@db
    move/from16 v16, v8

    #@dd
    move v8, v6

    #@de
    .line 380
    :goto_de
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@e1
    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@e4
    move-result v14

    #@e5
    .line 383
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@e7
    iget v1, v1, Landroid/graphics/RectF;->right:F

    #@e9
    sub-float/2addr v1, v9

    #@ea
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@ec
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    #@ee
    sub-float/2addr v2, v9

    #@ef
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@f2
    move/from16 v6, v19

    #@f4
    .line 384
    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    #@f7
    const/high16 v1, 0x43340000    # 180.0f

    #@f9
    .line 385
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    #@fc
    .line 386
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@fe
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@100
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@103
    if-eqz v12, :cond_125

    #@105
    const/high16 v1, 0x3f800000    # 1.0f

    #@107
    div-float v2, v1, v15

    #@109
    .line 389
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@10c
    const/4 v2, 0x0

    #@10d
    .line 390
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@10f
    .line 391
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@112
    move-result v1

    #@113
    sub-float v4, v1, v11

    #@115
    iget v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@117
    neg-float v5, v1

    #@118
    iget-object v12, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@11a
    move-object/from16 v1, p1

    #@11c
    move v3, v10

    #@11d
    move/from16 v17, v8

    #@11f
    move v8, v6

    #@120
    move-object v6, v12

    #@121
    .line 390
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@124
    goto :goto_128

    #@125
    :cond_125
    move/from16 v17, v8

    #@127
    move v8, v6

    #@128
    .line 394
    :goto_128
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@12b
    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@12e
    move-result v12

    #@12f
    .line 397
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@131
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@133
    add-float/2addr v1, v9

    #@134
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@136
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    #@138
    sub-float/2addr v2, v9

    #@139
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@13c
    .line 398
    invoke-virtual {v7, v15, v8}, Landroid/graphics/Canvas;->scale(FF)V

    #@13f
    const/high16 v1, 0x43870000    # 270.0f

    #@141
    .line 399
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    #@144
    .line 400
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@146
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@148
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@14b
    if-eqz v13, :cond_168

    #@14d
    const/high16 v1, 0x3f800000    # 1.0f

    #@14f
    div-float v14, v1, v8

    #@151
    .line 403
    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@154
    const/4 v2, 0x0

    #@155
    .line 404
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@157
    .line 405
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@15a
    move-result v1

    #@15b
    sub-float v4, v1, v11

    #@15d
    iget v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@15f
    neg-float v5, v1

    #@160
    iget-object v6, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@162
    move-object/from16 v1, p1

    #@164
    move v3, v10

    #@165
    .line 404
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@168
    .line 407
    :cond_168
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@16b
    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@16e
    move-result v8

    #@16f
    .line 410
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@171
    iget v1, v1, Landroid/graphics/RectF;->right:F

    #@173
    sub-float/2addr v1, v9

    #@174
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@176
    iget v2, v2, Landroid/graphics/RectF;->top:F

    #@178
    add-float/2addr v2, v9

    #@179
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@17c
    move/from16 v14, v17

    #@17e
    .line 411
    invoke-virtual {v7, v15, v14}, Landroid/graphics/Canvas;->scale(FF)V

    #@181
    const/high16 v1, 0x42b40000    # 90.0f

    #@183
    .line 412
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    #@186
    .line 413
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    #@188
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@18a
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@18d
    if-eqz v13, :cond_1aa

    #@18f
    const/high16 v1, 0x3f800000    # 1.0f

    #@191
    div-float v14, v1, v14

    #@193
    .line 416
    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@196
    const/4 v2, 0x0

    #@197
    .line 417
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    #@199
    .line 418
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@19c
    move-result v1

    #@19d
    sub-float v4, v1, v11

    #@19f
    iget v1, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@1a1
    neg-float v5, v1

    #@1a2
    iget-object v6, v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@1a4
    move-object/from16 v1, p1

    #@1a6
    move v3, v10

    #@1a7
    .line 417
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@1aa
    .line 420
    :cond_1aa
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1ad
    move/from16 v1, v16

    #@1af
    .line 422
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1b2
    return-void
.end method

.method private static toEven(F)I
    .registers 3

    #@0
    .line 241
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@3
    move-result p0

    #@4
    .line 242
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
    .line 327
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mDirty:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 328
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->buildComponents(Landroid/graphics/Rect;)V

    #@b
    const/4 v0, 0x0

    #@c
    .line 329
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mDirty:Z

    #@e
    .line 331
    :cond_e
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    #@11
    .line 333
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    #@14
    return-void
.end method

.method public bridge synthetic getChangingConfigurations()I
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    #@0
    .line 509
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@2
    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getIntrinsicHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getIntrinsicWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMaxShadowSize()F
    .registers 2

    #@0
    .line 525
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@2
    return v0
.end method

.method public getMinHeight()F
    .registers 5

    #@0
    .line 535
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@4
    iget v2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    #@6
    mul-float/2addr v2, v0

    #@7
    const/high16 v3, 0x40000000    # 2.0f

    #@9
    div-float/2addr v2, v3

    #@a
    add-float/2addr v1, v2

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@e
    move-result v0

    #@f
    mul-float/2addr v0, v3

    #@10
    .line 537
    iget v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@12
    iget v2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    #@14
    mul-float/2addr v1, v2

    #@15
    mul-float/2addr v1, v3

    #@16
    add-float/2addr v0, v1

    #@17
    return v0
.end method

.method public getMinWidth()F
    .registers 5

    #@0
    .line 529
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@4
    const/high16 v2, 0x40000000    # 2.0f

    #@6
    div-float v3, v0, v2

    #@8
    add-float/2addr v1, v3

    #@9
    .line 530
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@c
    move-result v0

    #@d
    mul-float/2addr v0, v2

    #@e
    .line 531
    iget v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@10
    mul-float/2addr v1, v2

    #@11
    add-float/2addr v0, v1

    #@12
    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getMinimumHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getMinimumWidth()I

    #@3
    move-result v0

    #@4
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
    .line 284
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@4
    iget-boolean v2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mAddPaddingForCorners:Z

    #@6
    invoke-direct {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->calculateVerticalPadding(FFZ)F

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
    .line 286
    iget v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@12
    iget v2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@14
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mAddPaddingForCorners:Z

    #@16
    invoke-static {v1, v2, v3}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->calculateHorizontalPadding(FFZ)F

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
    .line 288
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    const/4 p1, 0x1

    #@24
    return p1
.end method

.method public getShadowSize()F
    .registers 2

    #@0
    .line 521
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    #@2
    return v0
.end method

.method public bridge synthetic getState()[I
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getState()[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getTransparentRegion()Landroid/graphics/Region;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->isAutoMirrored()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isStateful()Z
    .registers 2

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->isStateful()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .registers 1

    #@0
    .line 175
    invoke-super {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->jumpToCurrentState()V

    #@3
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 259
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mDirty:Z

    #@3
    return-void
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    #@0
    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@3
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .registers 2

    #@0
    .line 246
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mAddPaddingForCorners:Z

    #@2
    .line 247
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 252
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setAlpha(I)V

    #@3
    .line 253
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@8
    .line 254
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@d
    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setAutoMirrored(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setChangingConfigurations(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@3
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3

    #@0
    .line 316
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@3
    move-result p1

    #@4
    int-to-float p1, p1

    #@5
    .line 317
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@7
    cmpl-float v0, v0, p1

    #@9
    if-nez v0, :cond_c

    #@b
    return-void

    #@c
    .line 320
    :cond_c
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    #@e
    const/4 p1, 0x1

    #@f
    .line 321
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mDirty:Z

    #@11
    .line 322
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->invalidateSelf()V

    #@14
    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setDither(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setFilterBitmap(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .registers 3

    #@0
    .line 175
    invoke-super {p0, p1, p2}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setHotspot(FF)V

    #@3
    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .registers 5

    #@0
    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setHotspotBounds(IIII)V

    #@3
    return-void
.end method

.method public setMaxShadowSize(F)V
    .registers 3

    #@0
    .line 517
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->setShadowSize(FF)V

    #@5
    return-void
.end method

.method final setRotation(F)V
    .registers 3

    #@0
    .line 337
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRotation:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 338
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRotation:F

    #@8
    .line 339
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->invalidateSelf()V

    #@b
    :cond_b
    return-void
.end method

.method public setShadowSize(F)V
    .registers 3

    #@0
    .line 513
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->setShadowSize(FF)V

    #@5
    return-void
.end method

.method setShadowSize(FF)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    if-ltz v1, :cond_3c

    #@5
    cmpg-float v0, p2, v0

    #@7
    if-ltz v0, :cond_3c

    #@9
    .line 266
    invoke-static {p1}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->toEven(F)I

    #@c
    move-result p1

    #@d
    int-to-float p1, p1

    #@e
    .line 267
    invoke-static {p2}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->toEven(F)I

    #@11
    move-result p2

    #@12
    int-to-float p2, p2

    #@13
    cmpl-float v0, p1, p2

    #@15
    if-lez v0, :cond_18

    #@17
    move p1, p2

    #@18
    .line 271
    :cond_18
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    #@1a
    cmpl-float v0, v0, p1

    #@1c
    if-nez v0, :cond_25

    #@1e
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@20
    cmpl-float v0, v0, p2

    #@22
    if-nez v0, :cond_25

    #@24
    return-void

    #@25
    .line 274
    :cond_25
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    #@27
    .line 275
    iput p2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    #@29
    .line 276
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    #@2b
    mul-float/2addr p1, v0

    #@2c
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@2f
    move-result p1

    #@30
    int-to-float p1, p1

    #@31
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mShadowSize:F

    #@33
    .line 277
    iput p2, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mMaxShadowSize:F

    #@35
    const/4 p1, 0x1

    #@36
    .line 278
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->mDirty:Z

    #@38
    .line 279
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;->invalidateSelf()V

    #@3b
    return-void

    #@3c
    .line 264
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string p2, "invalid shadow size"

    #@40
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw p1
.end method

.method public bridge synthetic setState([I)Z
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setState([I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic setTint(I)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setTint(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@3
    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .registers 3

    #@0
    .line 175
    invoke-super {p0, p1, p2}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setVisible(ZZ)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 175
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 175
    invoke-super {p0, p1, p2}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@3
    return-void
.end method
