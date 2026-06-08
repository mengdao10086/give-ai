.class public abstract Landroidx/appcompat/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Landroidx/appcompat/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    #@0
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    #@5
    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@8
    move-result-object p1

    #@9
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    #@b
    .line 64
    iput p2, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    #@d
    .line 65
    iput p3, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    #@f
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 136
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@b
    .line 138
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@d
    check-cast v0, Landroid/view/ViewGroup;

    #@f
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@12
    return-void
.end method

.method public abstract bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public createItemView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView$ItemView;
    .registers 5

    #@0
    .line 167
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    #@2
    iget v1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@b
    return-object p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 3

    #@0
    .line 148
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@3
    const/4 p1, 0x1

    #@4
    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallback()Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .registers 2

    #@0
    .line 158
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    return-object v0
.end method

.method public getId()I
    .registers 2

    #@0
    .line 244
    iget v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    #@2
    return v0
.end method

.method public getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 183
    instance-of v0, p2, Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 184
    check-cast p2, Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@6
    goto :goto_b

    #@7
    .line 186
    :cond_7
    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@a
    move-result-object p2

    #@b
    .line 188
    :goto_b
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V

    #@e
    .line 189
    check-cast p2, Landroid/view/View;

    #@10
    return-object p2
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .registers 5

    #@0
    .line 77
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@2
    if-nez v0, :cond_1a

    #@4
    .line 78
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    #@6
    iget v1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroidx/appcompat/view/menu/MenuView;

    #@f
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@11
    .line 79
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@13
    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/MenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@16
    const/4 p1, 0x1

    #@17
    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    #@1a
    .line 83
    :cond_1a
    iget-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@1c
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 3

    #@0
    .line 70
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    #@2
    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    #@8
    .line 72
    iput-object p2, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@a
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 4

    #@0
    .line 213
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 214
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    #@7
    :cond_7
    return-void
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 3

    #@0
    .line 220
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    if-eqz v0, :cond_e

    #@4
    if-eqz p1, :cond_7

    #@6
    goto :goto_9

    #@7
    .line 222
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9
    :goto_9
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    #@c
    move-result p1

    #@d
    return p1

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    #@0
    .line 154
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    return-void
.end method

.method public setId(I)V
    .registers 2

    #@0
    .line 248
    iput p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    #@2
    return-void
.end method

.method public shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method

.method public updateMenuView(Z)V
    .registers 11

    #@0
    .line 91
    iget-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    #@2
    check-cast p1, Landroid/view/ViewGroup;

    #@4
    if-nez p1, :cond_7

    #@6
    return-void

    #@7
    .line 95
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9
    const/4 v1, 0x0

    #@a
    if-eqz v0, :cond_51

    #@c
    .line 96
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    #@f
    .line 97
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@11
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@14
    move-result-object v0

    #@15
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v2

    #@19
    move v3, v1

    #@1a
    move v4, v3

    #@1b
    :goto_1b
    if-ge v3, v2, :cond_50

    #@1d
    .line 100
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@23
    .line 101
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_4d

    #@29
    .line 102
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2c
    move-result-object v6

    #@2d
    .line 103
    instance-of v7, v6, Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@2f
    if-eqz v7, :cond_39

    #@31
    .line 104
    move-object v7, v6

    #@32
    check-cast v7, Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@34
    invoke-interface {v7}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    #@37
    move-result-object v7

    #@38
    goto :goto_3a

    #@39
    :cond_39
    const/4 v7, 0x0

    #@3a
    .line 105
    :goto_3a
    invoke-virtual {p0, v5, v6, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3d
    move-result-object v8

    #@3e
    if-eq v5, v7, :cond_46

    #@40
    .line 108
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    #@43
    .line 109
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@46
    :cond_46
    if-eq v8, v6, :cond_4b

    #@48
    .line 112
    invoke-virtual {p0, v8, v4}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    #@4b
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    #@4d
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    #@4f
    goto :goto_1b

    #@50
    :cond_50
    move v1, v4

    #@51
    .line 120
    :cond_51
    :goto_51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@54
    move-result v0

    #@55
    if-ge v1, v0, :cond_60

    #@57
    .line 121
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_51

    #@5d
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_51

    #@60
    :cond_60
    return-void
.end method
