.class Landroidx/cardview/widget/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# instance fields
.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;F)V
    .registers 4

    #@0
    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 47
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    #@6
    const/4 v0, 0x1

    #@7
    .line 48
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    #@9
    .line 53
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@b
    iput-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@d
    .line 56
    iput p2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    #@f
    .line 57
    new-instance p2, Landroid/graphics/Paint;

    #@11
    const/4 v0, 0x5

    #@12
    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@15
    iput-object p2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@17
    .line 58
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    #@1a
    .line 60
    new-instance p1, Landroid/graphics/RectF;

    #@1c
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@1f
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    #@21
    .line 61
    new-instance p1, Landroid/graphics/Rect;

    #@23
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@26
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@28
    return-void
.end method

.method private createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    #@0
    if-eqz p1, :cond_14

    #@2
    if-nez p2, :cond_5

    #@4
    goto :goto_14

    #@5
    .line 209
    :cond_5
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getState()[I

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@d
    move-result p1

    #@e
    .line 210
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    #@10
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@13
    return-object v0

    #@14
    :cond_14
    :goto_14
    const/4 p1, 0x0

    #@15
    return-object p1
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 65
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@6
    move-result-object p1

    #@7
    :cond_7
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    #@9
    .line 66
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@b
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getState()[I

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

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

.method private updateBounds(Landroid/graphics/Rect;)V
    .registers 7

    #@0
    if-nez p1, :cond_6

    #@2
    .line 106
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    #@5
    move-result-object p1

    #@6
    .line 108
    :cond_6
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    #@8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@a
    int-to-float v1, v1

    #@b
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@d
    int-to-float v2, v2

    #@e
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@10
    int-to-float v3, v3

    #@11
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@13
    int-to-float v4, v4

    #@14
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@17
    .line 109
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1c
    .line 110
    iget-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    #@1e
    if-eqz p1, :cond_4c

    #@20
    .line 111
    iget p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    #@22
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    #@24
    iget-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    #@26
    invoke-static {p1, v0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    #@29
    move-result p1

    #@2a
    .line 112
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    #@2c
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    #@2e
    iget-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    #@30
    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    #@33
    move-result v0

    #@34
    .line 113
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@36
    float-to-double v2, v0

    #@37
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@3a
    move-result-wide v2

    #@3b
    double-to-int v0, v2

    #@3c
    float-to-double v2, p1

    #@3d
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@40
    move-result-wide v2

    #@41
    double-to-int p1, v2

    #@42
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    #@45
    .line 115
    iget-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    #@47
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@49
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@4c
    :cond_4c
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 87
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    .line 90
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@4
    if-eqz v1, :cond_13

    #@6
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_13

    #@c
    .line 91
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@11
    const/4 v1, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v1, 0x0

    #@14
    .line 97
    :goto_14
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    #@16
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    #@18
    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@1b
    if-eqz v1, :cond_21

    #@1d
    const/4 p1, 0x0

    #@1e
    .line 100
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@21
    :cond_21
    return-void
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 164
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    #@0
    .line 127
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@2
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    #@7
    return-void
.end method

.method getPadding()F
    .registers 2

    #@0
    .line 82
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    #@2
    return v0
.end method

.method public getRadius()F
    .registers 2

    #@0
    .line 155
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    #@2
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    .line 197
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1a

    #@a
    :cond_a
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    #@c
    if-eqz v0, :cond_14

    #@e
    .line 198
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1a

    #@14
    :cond_14
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    :cond_1a
    const/4 v0, 0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    :goto_1d
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 121
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 122
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    #@6
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 5

    #@0
    .line 183
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@9
    move-result p1

    #@a
    .line 184
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@c
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@f
    move-result v0

    #@10
    const/4 v1, 0x1

    #@11
    if-eq p1, v0, :cond_15

    #@13
    move v0, v1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    :goto_16
    if-eqz v0, :cond_1d

    #@18
    .line 186
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@1a
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@1d
    .line 188
    :cond_1d
    iget-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    #@1f
    if-eqz p1, :cond_2c

    #@21
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@23
    if-eqz v2, :cond_2c

    #@25
    .line 189
    invoke-direct {p0, p1, v2}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@28
    move-result-object p1

    #@29
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@2b
    return v1

    #@2c
    :cond_2c
    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 141
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@5
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 159
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    #@3
    .line 160
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    #@6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 146
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    return-void
.end method

.method setPadding(FZZ)V
    .registers 5

    #@0
    .line 70
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-nez v0, :cond_f

    #@6
    iget-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    #@8
    if-ne v0, p2, :cond_f

    #@a
    iget-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    #@c
    if-ne v0, p3, :cond_f

    #@e
    return-void

    #@f
    .line 74
    :cond_f
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    #@11
    .line 75
    iput-boolean p2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    #@13
    .line 76
    iput-boolean p3, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    #@15
    const/4 p1, 0x0

    #@16
    .line 77
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    #@19
    .line 78
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    #@1c
    return-void
.end method

.method setRadius(F)V
    .registers 3

    #@0
    .line 131
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 134
    :cond_7
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    #@9
    const/4 p1, 0x0

    #@a
    .line 135
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    #@d
    .line 136
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    #@10
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 169
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    #@2
    .line 170
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@7
    move-result-object p1

    #@8
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@a
    .line 171
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    #@d
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 176
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 177
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    #@4
    invoke-direct {p0, v0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@7
    move-result-object p1

    #@8
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@a
    .line 178
    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->invalidateSelf()V

    #@d
    return-void
.end method
