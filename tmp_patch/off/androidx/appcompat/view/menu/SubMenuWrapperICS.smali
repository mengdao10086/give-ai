.class Landroidx/appcompat/view/menu/SubMenuWrapperICS;
.super Landroidx/appcompat/view/menu/MenuWrapperICS;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private final mSubMenu:Landroidx/core/internal/view/SupportSubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V
    .registers 3

    #@0
    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    #@3
    .line 40
    iput-object p2, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@5
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .registers 2

    #@0
    .line 75
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportSubMenu;->clearHeader()V

    #@5
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    #@0
    .line 92
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0}, Landroidx/core/internal/view/SupportSubMenu;->getItem()Landroid/view/MenuItem;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3

    #@0
    .line 57
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    #@5
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    #@5
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3

    #@0
    .line 45
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    #@5
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    #@0
    .line 51
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    #@5
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3

    #@0
    .line 69
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    #@5
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setIcon(I)Landroid/view/SubMenu;

    #@5
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    #@0
    .line 86
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Landroidx/core/internal/view/SupportSubMenu;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    #@5
    return-object p0
.end method
