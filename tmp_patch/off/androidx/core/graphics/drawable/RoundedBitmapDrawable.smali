.class public abstract Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedBitmapDrawable.java"


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x3


# instance fields
.field private mApplyGravity:Z

.field final mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mCornerRadius:F

.field final mDstRect:Landroid/graphics/Rect;

.field private final mDstRectF:Landroid/graphics/RectF;

.field private mGravity:I

.field private mIsCircular:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mTargetDensity:I


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 5

    #@0
    .line 382
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    const/16 v0, 0xa0

    #@5
    .line 50
    iput v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@7
    const/16 v0, 0x77

    #@9
    .line 51
    iput v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@b
    .line 52
    new-instance v0, Landroid/graphics/Paint;

    #@d
    const/4 v1, 0x3

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@11
    iput-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@13
    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    #@15
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@18
    iput-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    #@1a
    .line 57
    new-instance v0, Landroid/graphics/Rect;

    #@1c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1f
    iput-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@21
    .line 58
    new-instance v0, Landroid/graphics/RectF;

    #@23
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@26
    iput-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@28
    const/4 v0, 0x1

    #@29
    .line 60
    iput-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@2b
    if-eqz p1, :cond_35

    #@2d
    .line 384
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@30
    move-result-object p1

    #@31
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@33
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@35
    .line 387
    :cond_35
    iput-object p2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@37
    if-eqz p2, :cond_48

    #@39
    .line 389
    invoke-direct {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    #@3c
    .line 390
    new-instance p1, Landroid/graphics/BitmapShader;

    #@3e
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@40
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@42
    invoke-direct {p1, p2, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@45
    iput-object p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@47
    goto :goto_50

    #@48
    :cond_48
    const/4 p1, -0x1

    #@49
    .line 392
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@4b
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@4d
    const/4 p1, 0x0

    #@4e
    .line 393
    iput-object p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@50
    :goto_50
    return-void
.end method

.method private computeBitmapSize()V
    .registers 3

    #@0
    .line 84
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    iget v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@a
    .line 85
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@c
    iget v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@14
    return-void
.end method

.method private static isGreaterThanZero(F)Z
    .registers 2

    #@0
    const v0, 0x3d4ccccd    # 0.05f

    #@3
    cmpl-float p0, p0, v0

    #@5
    if-lez p0, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method private updateCircularCornerRadius()V
    .registers 3

    #@0
    .line 315
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@2
    iget v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v0

    #@8
    .line 316
    div-int/lit8 v0, v0, 0x2

    #@a
    int-to-float v0, v0

    #@b
    iput v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@d
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 260
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 265
    :cond_5
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateDstRect()V

    #@8
    .line 266
    iget-object v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    #@d
    move-result-object v1

    #@e
    if-nez v1, :cond_19

    #@10
    .line 267
    iget-object v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@12
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@18
    goto :goto_22

    #@19
    .line 269
    :cond_19
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@1b
    iget v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@1d
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@1f
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@22
    :goto_22
    return-void
.end method

.method public getAlpha()I
    .registers 2

    #@0
    .line 284
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    #@0
    .line 80
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    #@0
    .line 295
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    #@0
    .line 356
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@2
    return v0
.end method

.method public getGravity()I
    .registers 2

    #@0
    .line 140
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@2
    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    #@0
    .line 366
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    #@0
    .line 361
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .registers 4

    #@0
    .line 371
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@2
    const/16 v1, 0x77

    #@4
    const/4 v2, -0x3

    #@5
    if-ne v0, v1, :cond_2a

    #@7
    iget-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@9
    if-eqz v0, :cond_c

    #@b
    goto :goto_2a

    #@c
    .line 374
    :cond_c
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@e
    if-eqz v0, :cond_2a

    #@10
    .line 376
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_2a

    #@16
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@18
    .line 377
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@1b
    move-result v0

    #@1c
    const/16 v1, 0xff

    #@1e
    if-lt v0, v1, :cond_2a

    #@20
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@22
    .line 378
    invoke-static {v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_29

    #@28
    goto :goto_2a

    #@29
    :cond_29
    const/4 v2, -0x1

    #@2a
    :cond_2a
    :goto_2a
    return v2
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .registers 2

    #@0
    .line 72
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public hasAntiAlias()Z
    .registers 2

    #@0
    .line 206
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasMipMap()Z
    .registers 2

    #@0
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isCircular()Z
    .registers 2

    #@0
    .line 323
    iget-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@2
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 345
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 346
    iget-boolean p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@5
    if-eqz p1, :cond_a

    #@7
    .line 347
    invoke-direct {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    #@a
    :cond_a
    const/4 p1, 0x1

    #@b
    .line 349
    iput-boolean p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@d
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 275
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@5
    move-result v0

    #@6
    if-eq p1, v0, :cond_10

    #@8
    .line 277
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@d
    .line 278
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@10
    :cond_10
    return-void
.end method

.method public setAntiAlias(Z)V
    .registers 3

    #@0
    .line 194
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@5
    .line 195
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@8
    return-void
.end method

.method public setCircular(Z)V
    .registers 3

    #@0
    .line 303
    iput-boolean p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@2
    const/4 v0, 0x1

    #@3
    .line 304
    iput-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@5
    if-eqz p1, :cond_15

    #@7
    .line 306
    invoke-direct {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    #@a
    .line 307
    iget-object p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@c
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@e
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@11
    .line 308
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@14
    goto :goto_19

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    .line 310
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    #@19
    :goto_19
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 289
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    .line 290
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@8
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    #@0
    .line 330
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 332
    iput-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@a
    .line 333
    invoke-static {p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 334
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@12
    iget-object v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@17
    goto :goto_1e

    #@18
    .line 336
    :cond_18
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@1e
    .line 339
    :goto_1e
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@20
    .line 340
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@23
    return-void
.end method

.method public setDither(Z)V
    .registers 3

    #@0
    .line 217
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    #@5
    .line 218
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@8
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    #@0
    .line 211
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@5
    .line 212
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@8
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    #@0
    .line 151
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@2
    if-eq v0, p1, :cond_c

    #@4
    .line 152
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@6
    const/4 p1, 0x1

    #@7
    .line 153
    iput-boolean p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@9
    .line 154
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@c
    :cond_c
    return-void
.end method

.method public setMipMap(Z)V
    .registers 2

    #@0
    .line 170
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public setTargetDensity(I)V
    .registers 3

    #@0
    .line 123
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@2
    if-eq v0, p1, :cond_14

    #@4
    if-nez p1, :cond_8

    #@6
    const/16 p1, 0xa0

    #@8
    .line 124
    :cond_8
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    #@a
    .line 125
    iget-object p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@c
    if-eqz p1, :cond_11

    #@e
    .line 126
    invoke-direct {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    #@11
    .line 128
    :cond_11
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    #@14
    :cond_14
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    #@3
    move-result p1

    #@4
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    #@7
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .registers 2

    #@0
    .line 111
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    #@5
    return-void
.end method

.method updateDstRect()V
    .registers 10

    #@0
    .line 227
    iget-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@2
    if-eqz v0, :cond_ad

    #@4
    .line 228
    iget-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_54

    #@9
    .line 229
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@b
    iget v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@d
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v6

    #@11
    .line 230
    iget v4, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@13
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    #@16
    move-result-object v7

    #@17
    iget-object v8, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@19
    move-object v3, p0

    #@1a
    move v5, v6

    #@1b
    invoke-virtual/range {v3 .. v8}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@1e
    .line 234
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@23
    move-result v0

    #@24
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@26
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@29
    move-result v2

    #@2a
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v0

    #@2e
    .line 235
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@30
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@33
    move-result v2

    #@34
    sub-int/2addr v2, v0

    #@35
    div-int/lit8 v2, v2, 0x2

    #@37
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v2

    #@3b
    .line 236
    iget-object v3, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@3d
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@40
    move-result v3

    #@41
    sub-int/2addr v3, v0

    #@42
    div-int/lit8 v3, v3, 0x2

    #@44
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v3

    #@48
    .line 237
    iget-object v4, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@4a
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    #@4d
    const/high16 v2, 0x3f000000    # 0.5f

    #@4f
    int-to-float v0, v0

    #@50
    mul-float/2addr v0, v2

    #@51
    .line 238
    iput v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    #@53
    goto :goto_64

    #@54
    .line 240
    :cond_54
    iget v3, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    #@56
    iget v4, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    #@58
    iget v5, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    #@5a
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    #@5d
    move-result-object v6

    #@5e
    iget-object v7, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@60
    move-object v2, p0

    #@61
    invoke-virtual/range {v2 .. v7}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@64
    .line 242
    :goto_64
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@66
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@68
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@6b
    .line 244
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@6d
    if-eqz v0, :cond_ab

    #@6f
    .line 246
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    #@71
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@73
    iget v2, v2, Landroid/graphics/RectF;->left:F

    #@75
    iget-object v3, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@77
    iget v3, v3, Landroid/graphics/RectF;->top:F

    #@79
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@7c
    .line 247
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    #@7e
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@80
    .line 248
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@83
    move-result v2

    #@84
    iget-object v3, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@86
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    #@89
    move-result v3

    #@8a
    int-to-float v3, v3

    #@8b
    div-float/2addr v2, v3

    #@8c
    iget-object v3, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    #@8e
    .line 249
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    #@91
    move-result v3

    #@92
    iget-object v4, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@94
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    #@97
    move-result v4

    #@98
    int-to-float v4, v4

    #@99
    div-float/2addr v3, v4

    #@9a
    .line 247
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    #@9d
    .line 250
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@9f
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    #@a1
    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@a4
    .line 251
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@a6
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@a8
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@ab
    .line 254
    :cond_ab
    iput-boolean v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    #@ad
    :cond_ad
    return-void
.end method
