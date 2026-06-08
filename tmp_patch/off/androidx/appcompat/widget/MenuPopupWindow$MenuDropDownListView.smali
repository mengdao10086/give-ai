.class public Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroidx/appcompat/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$Api17Impl;
    }
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    #@0
    .line 149
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    #@3
    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object p1

    #@7
    .line 152
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@a
    move-result-object p1

    #@b
    const/4 p2, 0x1

    #@c
    .line 154
    invoke-static {p1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$Api17Impl;->getLayoutDirection(Landroid/content/res/Configuration;)I

    #@f
    move-result p1

    #@10
    const/16 v0, 0x15

    #@12
    const/16 v1, 0x16

    #@14
    if-ne p2, p1, :cond_1b

    #@16
    .line 155
    iput v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    #@18
    .line 156
    iput v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    #@1a
    goto :goto_1f

    #@1b
    .line 158
    :cond_1b
    iput v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    #@1d
    .line 159
    iput v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    #@1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    .line 168
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    #@4
    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .registers 2

    #@0
    .line 140
    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->hasFocus()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .registers 2

    #@0
    .line 140
    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->hasWindowFocus()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isFocused()Z
    .registers 2

    #@0
    .line 140
    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->isFocused()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .registers 2

    #@0
    .line 140
    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic lookForSelectablePosition(IZ)I
    .registers 3

    #@0
    .line 140
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic measureHeightOfChildrenCompat(IIIII)I
    .registers 6

    #@0
    .line 140
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 3

    #@0
    .line 140
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    .line 203
    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    #@2
    if-eqz v0, :cond_5c

    #@4
    .line 207
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@7
    move-result-object v0

    #@8
    .line 208
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    #@a
    if-eqz v1, :cond_19

    #@c
    .line 209
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    #@e
    .line 210
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@11
    move-result v1

    #@12
    .line 211
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    #@18
    goto :goto_1c

    #@19
    .line 214
    :cond_19
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    #@1b
    const/4 v1, 0x0

    #@1c
    .line 219
    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@1f
    move-result v2

    #@20
    const/16 v3, 0xa

    #@22
    if-eq v2, v3, :cond_43

    #@24
    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@27
    move-result v2

    #@28
    float-to-int v2, v2

    #@29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2c
    move-result v3

    #@2d
    float-to-int v3, v3

    #@2e
    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    #@31
    move-result v2

    #@32
    const/4 v3, -0x1

    #@33
    if-eq v2, v3, :cond_43

    #@35
    sub-int/2addr v2, v1

    #@36
    if-ltz v2, :cond_43

    #@38
    .line 223
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    #@3b
    move-result v1

    #@3c
    if-ge v2, v1, :cond_43

    #@3e
    .line 224
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@41
    move-result-object v1

    #@42
    goto :goto_44

    #@43
    :cond_43
    const/4 v1, 0x0

    #@44
    .line 229
    :goto_44
    iget-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    #@46
    if-eq v2, v1, :cond_5c

    #@48
    .line 231
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@4b
    move-result-object v0

    #@4c
    if-eqz v2, :cond_53

    #@4e
    .line 233
    iget-object v3, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    #@50
    invoke-interface {v3, v0, v2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    #@53
    .line 236
    :cond_53
    iput-object v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    #@55
    if-eqz v1, :cond_5c

    #@57
    .line 239
    iget-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    #@59
    invoke-interface {v2, v0, v1}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    #@5c
    .line 244
    :cond_5c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@5f
    move-result p1

    #@60
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    #@0
    .line 173
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    #@6
    const/4 v1, 0x1

    #@7
    if-eqz v0, :cond_29

    #@9
    .line 174
    iget v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    #@b
    if-ne p1, v2, :cond_29

    #@d
    .line 175
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->isEnabled()Z

    #@10
    move-result p1

    #@11
    if-eqz p1, :cond_28

    #@13
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@1a
    move-result p1

    #@1b
    if-eqz p1, :cond_28

    #@1d
    .line 178
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    #@20
    move-result p1

    #@21
    .line 179
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    #@24
    move-result-wide v2

    #@25
    .line 176
    invoke-virtual {p0, v0, p1, v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    #@28
    :cond_28
    return v1

    #@29
    :cond_29
    if-eqz v0, :cond_4f

    #@2b
    .line 182
    iget v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    #@2d
    if-ne p1, v0, :cond_4f

    #@2f
    const/4 p1, -0x1

    #@30
    .line 183
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    #@33
    .line 186
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@36
    move-result-object p1

    #@37
    .line 188
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    #@39
    if-eqz p2, :cond_44

    #@3b
    .line 189
    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    #@3d
    .line 190
    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@40
    move-result-object p1

    #@41
    check-cast p1, Landroidx/appcompat/view/menu/MenuAdapter;

    #@43
    goto :goto_46

    #@44
    .line 192
    :cond_44
    check-cast p1, Landroidx/appcompat/view/menu/MenuAdapter;

    #@46
    .line 194
    :goto_46
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@49
    move-result-object p1

    #@4a
    const/4 p2, 0x0

    #@4b
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@4e
    return v1

    #@4f
    .line 197
    :cond_4f
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@52
    move-result p1

    #@53
    return p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 140
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .registers 2

    #@0
    .line 164
    iput-object p1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    #@2
    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 140
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method
