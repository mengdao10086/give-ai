.class public Landroidx/appcompat/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# instance fields
.field mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemLayoutRes:I

.field private final mOverflowOnly:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V
    .registers 6

    #@0
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 36
    iput v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    #@6
    .line 45
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    #@8
    .line 46
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@a
    .line 47
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@c
    .line 48
    iput p4, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mItemLayoutRes:I

    #@e
    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuAdapter;->findExpandedIndex()V

    #@11
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 6

    #@0
    .line 114
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_23

    #@8
    .line 116
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@a
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@d
    move-result-object v1

    #@e
    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    const/4 v3, 0x0

    #@13
    :goto_13
    if-ge v3, v2, :cond_23

    #@15
    .line 119
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1b
    if-ne v4, v0, :cond_20

    #@1d
    .line 121
    iput v3, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    #@1f
    return-void

    #@20
    :cond_20
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_13

    #@23
    :cond_23
    const/4 v0, -0x1

    #@24
    .line 126
    iput v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    #@26
    return-void
.end method

.method public getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 2

    #@0
    .line 71
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public getCount()I
    .registers 3

    #@0
    .line 62
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 63
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@6
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    goto :goto_11

    #@b
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@d
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@10
    move-result-object v0

    #@11
    .line 64
    :goto_11
    iget v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    #@13
    if-gez v1, :cond_1a

    #@15
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 67
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    return v0
.end method

.method public getForceShowIcon()Z
    .registers 2

    #@0
    .line 53
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    #@2
    return v0
.end method

.method public getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 4

    #@0
    .line 76
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 77
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@6
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    goto :goto_11

    #@b
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@d
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@10
    move-result-object v0

    #@11
    .line 78
    :goto_11
    iget v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    #@13
    if-ltz v1, :cond_19

    #@15
    if-lt p1, v1, :cond_19

    #@17
    add-int/lit8 p1, p1, 0x1

    #@19
    .line 81
    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object p1

    #@1d
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1f
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    #@0
    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p2, :cond_b

    #@3
    .line 94
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@5
    iget v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mItemLayoutRes:I

    #@7
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a
    move-result-object p2

    #@b
    .line 97
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@e
    move-result-object p3

    #@f
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@12
    move-result p3

    #@13
    add-int/lit8 v1, p1, -0x1

    #@15
    if-ltz v1, :cond_20

    #@17
    .line 99
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@1e
    move-result v1

    #@1f
    goto :goto_21

    #@20
    :cond_20
    move v1, p3

    #@21
    .line 101
    :goto_21
    move-object v2, p2

    #@22
    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    #@24
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@26
    .line 102
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    #@29
    move-result v3

    #@2a
    const/4 v4, 0x1

    #@2b
    if-eqz v3, :cond_31

    #@2d
    if-eq p3, v1, :cond_31

    #@2f
    move p3, v4

    #@30
    goto :goto_32

    #@31
    :cond_31
    move p3, v0

    #@32
    :goto_32
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    #@35
    .line 105
    move-object p3, p2

    #@36
    check-cast p3, Landroidx/appcompat/view/menu/MenuView$ItemView;

    #@38
    .line 106
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    #@3a
    if-eqz v1, :cond_3f

    #@3c
    .line 107
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    #@3f
    .line 109
    :cond_3f
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@42
    move-result-object p1

    #@43
    invoke-interface {p3, p1, v0}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    #@46
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    #@0
    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuAdapter;->findExpandedIndex()V

    #@3
    .line 132
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@6
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    #@0
    .line 57
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    #@2
    return-void
.end method
