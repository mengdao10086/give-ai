.class Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;
.super Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
.source "RoundedBitmapDrawable21.java"


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 3

    #@0
    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@3
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    #@0
    .line 37
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->updateDstRect()V

    #@3
    .line 38
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mDstRect:Landroid/graphics/Rect;

    #@5
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->getCornerRadius()F

    #@8
    move-result v1

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    #@c
    return-void
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    #@0
    const/4 v5, 0x0

    #@1
    move v0, p1

    #@2
    move v1, p2

    #@3
    move v2, p3

    #@4
    move-object v3, p4

    #@5
    move-object v4, p5

    #@6
    .line 57
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@9
    return-void
.end method

.method public hasMipMap()Z
    .registers 2

    #@0
    .line 51
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    #@6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public setMipMap(Z)V
    .registers 3

    #@0
    .line 43
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 44
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    #@9
    .line 45
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->invalidateSelf()V

    #@c
    :cond_c
    return-void
.end method
