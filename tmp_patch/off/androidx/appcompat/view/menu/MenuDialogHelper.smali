.class Landroidx/appcompat/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@5
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    #@0
    .line 140
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 141
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    #@7
    :cond_7
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    #@0
    .line 170
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@b
    move-result-object p2

    #@c
    check-cast p2, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@e
    const/4 v0, 0x0

    #@f
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@12
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 4

    #@0
    if-nez p2, :cond_6

    #@2
    .line 152
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    if-ne p1, v0, :cond_9

    #@6
    .line 153
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuDialogHelper;->dismiss()V

    #@9
    .line 155
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 156
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    #@10
    :cond_10
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    #@0
    .line 147
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    #@2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/ListMenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    #@8
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    const/16 v0, 0x52

    #@2
    if-eq p2, v0, :cond_7

    #@4
    const/4 v0, 0x4

    #@5
    if-ne p2, v0, :cond_5b

    #@7
    .line 96
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x1

    #@c
    if-nez v0, :cond_2c

    #@e
    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_2c

    #@14
    .line 98
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    #@16
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@19
    move-result-object p1

    #@1a
    if-eqz p1, :cond_5b

    #@1c
    .line 100
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1f
    move-result-object p1

    #@20
    if-eqz p1, :cond_5b

    #@22
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@25
    move-result-object p1

    #@26
    if-eqz p1, :cond_5b

    #@28
    .line 104
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@2b
    return v1

    #@2c
    .line 109
    :cond_2c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@2f
    move-result v0

    #@30
    if-ne v0, v1, :cond_5b

    #@32
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_5b

    #@38
    .line 110
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    #@3a
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@3d
    move-result-object v0

    #@3e
    if-eqz v0, :cond_5b

    #@40
    .line 112
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@43
    move-result-object v0

    #@44
    if-eqz v0, :cond_5b

    #@46
    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@49
    move-result-object v0

    #@4a
    if-eqz v0, :cond_5b

    #@4c
    .line 115
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_5b

    #@52
    .line 116
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@54
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@57
    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@5a
    return v1

    #@5b
    .line 126
    :cond_5b
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@5d
    const/4 v0, 0x0

    #@5e
    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    #@61
    move-result p1

    #@62
    return p1
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .registers 3

    #@0
    .line 162
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 163
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

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

.method public setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    #@0
    .line 131
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 7

    #@0
    .line 54
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    .line 57
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@b
    .line 59
    new-instance v2, Landroidx/appcompat/view/menu/ListMenuPresenter;

    #@d
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    #@10
    move-result-object v3

    #@11
    sget v4, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    #@13
    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    #@16
    iput-object v2, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    #@18
    .line 62
    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/ListMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@1b
    .line 63
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1d
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    #@1f
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    #@22
    .line 64
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    #@24
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@2b
    .line 67
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    #@2e
    move-result-object v2

    #@2f
    if-eqz v2, :cond_35

    #@31
    .line 70
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@34
    goto :goto_44

    #@35
    .line 73
    :cond_35
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@44
    .line 77
    :goto_44
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@47
    .line 80
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    #@4d
    .line 81
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@50
    .line 83
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    #@52
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@59
    move-result-object v0

    #@5a
    const/16 v1, 0x3eb

    #@5c
    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5e
    if-eqz p1, :cond_62

    #@60
    .line 86
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@62
    .line 88
    :cond_62
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@64
    const/high16 v1, 0x20000

    #@66
    or-int/2addr p1, v1

    #@67
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@69
    .line 90
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    #@6b
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    #@6e
    return-void
.end method
