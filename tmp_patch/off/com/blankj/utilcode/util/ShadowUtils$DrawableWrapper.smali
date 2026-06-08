.class Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowUtils.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ShadowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableWrapper"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 544
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 545
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 549
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@5
    return-void
.end method

.method public getChangingConfigurations()I
    .registers 2

    #@0
    .line 561
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 597
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    #@0
    .line 617
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    #@0
    .line 613
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    #@0
    .line 625
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    #@0
    .line 621
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    .line 605
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    #@0
    .line 629
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getState()[I
    .registers 2

    #@0
    .line 589
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    #@0
    .line 609
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 677
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 633
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->invalidateSelf()V

    #@3
    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    #@0
    .line 653
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    .line 581
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    #@0
    .line 593
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 553
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@5
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3

    #@0
    .line 645
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    #@0
    .line 637
    invoke-virtual {p0, p2, p3, p4}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@3
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 573
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@5
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    #@0
    .line 649
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    #@5
    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    #@0
    .line 557
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    #@5
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 577
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@5
    return-void
.end method

.method public setDither(Z)V
    .registers 3

    #@0
    .line 565
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    #@5
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    #@0
    .line 569
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    #@5
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    #@0
    .line 669
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    #@5
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    #@0
    .line 673
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    #@5
    return-void
.end method

.method public setState([I)Z
    .registers 3

    #@0
    .line 585
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public setTint(I)V
    .registers 3

    #@0
    .line 657
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@5
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 661
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 665
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@5
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    #@0
    .line 601
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_11

    #@6
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p1, 0x1

    #@12
    :goto_12
    return p1
.end method

.method public setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 681
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_b

    #@4
    const/4 v1, 0x0

    #@5
    .line 682
    move-object v2, v1

    #@6
    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    #@8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@b
    .line 685
    :cond_b
    iput-object p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz p1, :cond_12

    #@f
    .line 687
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@12
    :cond_12
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 641
    invoke-virtual {p0, p2}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@3
    return-void
.end method
