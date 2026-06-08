.class abstract Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawableCommon.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# instance fields
.field mDelegateDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    #@0
    .line 95
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 96
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    #@7
    :cond_7
    return-void
.end method

.method public clearColorFilter()V
    .registers 2

    #@0
    .line 103
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    #@7
    return-void

    #@8
    .line 107
    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    #@b
    return-void
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 112
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 113
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 115
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getMinimumHeight()I
    .registers 2

    #@0
    .line 128
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 129
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 131
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    #@0
    .line 120
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 121
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 123
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    #@0
    .line 136
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 137
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 139
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@c
    move-result p1

    #@d
    return p1
.end method

.method public getState()[I
    .registers 2

    #@0
    .line 144
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 147
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    #@0
    .line 153
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 156
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    #@0
    .line 86
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 87
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@7
    :cond_7
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 53
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@7
    return-void

    #@8
    .line 57
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@b
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3

    #@0
    .line 45
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 46
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 48
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    #@c
    move-result p1

    #@d
    return p1
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    #@0
    .line 161
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 162
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    #@7
    return-void

    #@8
    .line 165
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    #@b
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    #@0
    .line 36
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 37
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@7
    return-void

    #@8
    .line 40
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@b
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    #@0
    .line 78
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 79
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    #@7
    :cond_7
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    #@0
    .line 62
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 63
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    #@7
    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    #@0
    .line 70
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 71
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    #@7
    :cond_7
    return-void
.end method

.method public setState([I)Z
    .registers 3

    #@0
    .line 170
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 171
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 173
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@c
    move-result p1

    #@d
    return p1
.end method
