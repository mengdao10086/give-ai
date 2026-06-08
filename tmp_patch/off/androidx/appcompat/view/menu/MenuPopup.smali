.class abstract Landroidx/appcompat/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    .line 147
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4
    move-result v1

    #@5
    .line 148
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@8
    move-result v2

    #@9
    .line 149
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    #@c
    move-result v3

    #@d
    const/4 v4, 0x0

    #@e
    move v5, v0

    #@f
    move v6, v5

    #@10
    move-object v7, v4

    #@11
    :goto_11
    if-ge v0, v3, :cond_36

    #@13
    .line 151
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@16
    move-result v8

    #@17
    if-eq v8, v6, :cond_1b

    #@19
    move-object v7, v4

    #@1a
    move v6, v8

    #@1b
    :cond_1b
    if-nez p1, :cond_22

    #@1d
    .line 158
    new-instance p1, Landroid/widget/FrameLayout;

    #@1f
    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@22
    .line 161
    :cond_22
    invoke-interface {p0, v0, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@25
    move-result-object v7

    #@26
    .line 162
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    #@29
    .line 164
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    #@2c
    move-result v8

    #@2d
    if-lt v8, p3, :cond_30

    #@2f
    return p3

    #@30
    :cond_30
    if-le v8, v5, :cond_33

    #@32
    move v5, v8

    #@33
    :cond_33
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_11

    #@36
    :cond_36
    return v5
.end method

.method protected static shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .registers 6

    #@0
    .line 203
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_1d

    #@8
    .line 206
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@b
    move-result-object v3

    #@c
    .line 207
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1a

    #@12
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_1a

    #@18
    const/4 v1, 0x1

    #@19
    goto :goto_1d

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_6

    #@1d
    :cond_1d
    :goto_1d
    return v1
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;
    .registers 2

    #@0
    .line 184
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 185
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    #@6
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    #@c
    return-object p0

    #@d
    .line 187
    :cond_d
    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    #@f
    return-object p0
.end method


# virtual methods
.method public abstract addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .registers 2

    #@0
    .line 78
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getId()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .registers 3

    #@0
    .line 103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "MenuPopups manage their own views"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 3

    #@0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .line 123
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroid/widget/ListAdapter;

    #@6
    .line 124
    invoke-static {p1}, Landroidx/appcompat/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;

    #@9
    move-result-object p2

    #@a
    .line 128
    iget-object p2, p2, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@c
    .line 129
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroid/view/MenuItem;

    #@12
    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z

    #@15
    move-result p3

    #@16
    if-eqz p3, :cond_1a

    #@18
    const/4 p3, 0x0

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 p3, 0x4

    #@1b
    .line 128
    :goto_1b
    invoke-virtual {p2, p1, p0, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    #@1e
    return-void
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 71
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    #@2
    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
