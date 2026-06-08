.class Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Landroidx/cardview/widget/CardViewImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;
    .registers 2

    #@0
    .line 122
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/cardview/widget/RoundRectDrawable;

    #@6
    return-object p1
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 118
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public getElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 2

    #@0
    .line 83
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 2

    #@0
    .line 58
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 3

    #@0
    .line 68
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    #@3
    move-result p1

    #@4
    const/high16 v0, 0x40000000    # 2.0f

    #@6
    mul-float/2addr p1, v0

    #@7
    return p1
.end method

.method public getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 3

    #@0
    .line 63
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    #@3
    move-result p1

    #@4
    const/high16 v0, 0x40000000    # 2.0f

    #@6
    mul-float/2addr p1, v0

    #@7
    return p1
.end method

.method public getRadius(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 2

    #@0
    .line 73
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public initStatic()V
    .registers 1

    #@0
    return-void
.end method

.method public initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 7

    #@0
    .line 31
    new-instance p2, Landroidx/cardview/widget/RoundRectDrawable;

    #@2
    invoke-direct {p2, p3, p4}, Landroidx/cardview/widget/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    #@5
    .line 32
    invoke-interface {p1, p2}, Landroidx/cardview/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 34
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    #@b
    move-result-object p2

    #@c
    const/4 p3, 0x1

    #@d
    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    #@10
    .line 36
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    #@13
    .line 37
    invoke-virtual {p0, p1, p6}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    #@16
    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .registers 3

    #@0
    .line 103
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    #@7
    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .registers 3

    #@0
    .line 108
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    #@7
    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 113
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .registers 3

    #@0
    .line 78
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    #@7
    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .registers 6

    #@0
    .line 51
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    #@3
    move-result-object v0

    #@4
    .line 52
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getUseCompatPadding()Z

    #@7
    move-result v1

    #@8
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    #@b
    move-result v2

    #@c
    .line 51
    invoke-virtual {v0, p2, v1, v2}, Landroidx/cardview/widget/RoundRectDrawable;->setPadding(FZZ)V

    #@f
    .line 53
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    #@12
    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/RoundRectDrawable;->setRadius(F)V

    #@7
    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V
    .registers 6

    #@0
    .line 88
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getUseCompatPadding()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    const/4 v0, 0x0

    #@7
    .line 89
    invoke-interface {p1, v0, v0, v0, v0}, Landroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    #@a
    return-void

    #@b
    .line 92
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    #@e
    move-result v0

    #@f
    .line 93
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    #@12
    move-result v1

    #@13
    .line 95
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    #@16
    move-result v2

    #@17
    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    #@1a
    move-result v2

    #@1b
    float-to-double v2, v2

    #@1c
    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@1f
    move-result-wide v2

    #@20
    double-to-int v2, v2

    #@21
    .line 97
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    #@24
    move-result v3

    #@25
    invoke-static {v0, v1, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    #@28
    move-result v0

    #@29
    float-to-double v0, v0

    #@2a
    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@2d
    move-result-wide v0

    #@2e
    double-to-int v0, v0

    #@2f
    .line 98
    invoke-interface {p1, v2, v0, v2, v0}, Landroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    #@32
    return-void
.end method
