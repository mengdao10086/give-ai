.class abstract Landroidx/appcompat/view/menu/BaseMenuWrapper;
.super Ljava/lang/Object;
.source "BaseMenuWrapper.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/core/internal/view/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/core/internal/view/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 39
    instance-of v0, p1, Landroidx/core/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_28

    #@4
    .line 40
    check-cast p1, Landroidx/core/internal/view/SupportMenuItem;

    #@6
    .line 43
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 44
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@c
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@11
    .line 48
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@13
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/view/MenuItem;

    #@19
    if-nez v0, :cond_27

    #@1b
    .line 52
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    #@1d
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    #@1f
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    #@22
    .line 53
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@24
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    :cond_27
    return-object v0

    #@28
    :cond_28
    return-object p1
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .registers 4

    #@0
    .line 62
    instance-of v0, p1, Landroidx/core/internal/view/SupportSubMenu;

    #@2
    if-eqz v0, :cond_28

    #@4
    .line 63
    check-cast p1, Landroidx/core/internal/view/SupportSubMenu;

    #@6
    .line 66
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 67
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@c
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    #@11
    .line 70
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    #@13
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/view/SubMenu;

    #@19
    if-nez v0, :cond_27

    #@1b
    .line 73
    new-instance v0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;

    #@1d
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    #@1f
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V

    #@22
    .line 74
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    #@24
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    :cond_27
    return-object v0

    #@28
    :cond_28
    return-object p1
.end method

.method final internalClear()V
    .registers 2

    #@0
    .line 83
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 84
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    #@7
    .line 86
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 87
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    #@e
    :cond_e
    return-void
.end method

.method final internalRemoveGroup(I)V
    .registers 4

    #@0
    .line 92
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 95
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@8
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_26

    #@e
    .line 96
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@10
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    #@16
    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getGroupId()I

    #@19
    move-result v1

    #@1a
    if-ne v1, p1, :cond_23

    #@1c
    .line 97
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@1e
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    #@21
    add-int/lit8 v0, v0, -0x1

    #@23
    :cond_23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_6

    #@26
    :cond_26
    return-void
.end method

.method final internalRemoveItem(I)V
    .registers 4

    #@0
    .line 104
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 107
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@8
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_25

    #@e
    .line 108
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@10
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    #@16
    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getItemId()I

    #@19
    move-result v1

    #@1a
    if-ne v1, p1, :cond_22

    #@1c
    .line 109
    iget-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    #@1e
    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    #@21
    goto :goto_25

    #@22
    :cond_22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_6

    #@25
    :cond_25
    :goto_25
    return-void
.end method
