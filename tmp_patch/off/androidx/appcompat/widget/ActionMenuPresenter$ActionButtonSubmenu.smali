.class Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .registers 11

    #@0
    .line 733
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    const/4 v4, 0x0

    #@3
    .line 734
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    #@5
    move-object v0, p0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    #@c
    .line 736
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@f
    move-result-object p2

    #@10
    check-cast p2, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@12
    .line 737
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    #@15
    move-result p2

    #@16
    if-nez p2, :cond_28

    #@18
    .line 739
    iget-object p2, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@1a
    if-nez p2, :cond_23

    #@1c
    # getter for: Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$200(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;

    #@1f
    move-result-object p2

    #@20
    check-cast p2, Landroid/view/View;

    #@22
    goto :goto_25

    #@23
    :cond_23
    iget-object p2, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    #@25
    :goto_25
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    #@28
    .line 742
    :cond_28
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    #@2a
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@2d
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .registers 3

    #@0
    .line 747
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@5
    .line 748
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@7
    const/4 v1, 0x0

    #@8
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@a
    .line 750
    invoke-super {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    #@d
    return-void
.end method
