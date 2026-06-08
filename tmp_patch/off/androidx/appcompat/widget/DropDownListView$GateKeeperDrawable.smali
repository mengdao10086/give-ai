.class Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 388
    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@3
    const/4 p1, 0x1

    #@4
    .line 389
    iput-boolean p1, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    #@6
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 406
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 407
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    #@7
    :cond_7
    return-void
.end method

.method setEnabled(Z)V
    .registers 2

    #@0
    .line 393
    iput-boolean p1, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    #@2
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    #@0
    .line 413
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 414
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    #@7
    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    #@0
    .line 420
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 421
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    #@7
    :cond_7
    return-void
.end method

.method public setState([I)Z
    .registers 3

    #@0
    .line 398
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 399
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setState([I)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method public setVisible(ZZ)Z
    .registers 4

    #@0
    .line 427
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 428
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method
