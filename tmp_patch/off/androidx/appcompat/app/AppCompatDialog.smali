.class public Landroidx/appcompat/app/AppCompatDialog;
.super Landroidx/activity/ComponentDialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;


# instance fields
.field private mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field private final mKeyDispatcher:Landroidx/core/view/KeyEventDispatcher$Component;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 51
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    .line 55
    invoke-static {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->getThemeResId(Landroid/content/Context;I)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;I)V

    #@7
    .line 47
    new-instance v0, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

    #@9
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatDialog;)V

    #@c
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Landroidx/core/view/KeyEventDispatcher$Component;

    #@e
    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@11
    move-result-object v0

    #@12
    .line 59
    invoke-static {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->getThemeResId(Landroid/content/Context;I)I

    #@15
    move-result p1

    #@16
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTheme(I)V

    #@19
    const/4 p1, 0x0

    #@1a
    .line 65
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    #@1d
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4

    #@0
    .line 70
    invoke-direct {p0, p1}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;)V

    #@3
    .line 47
    new-instance p1, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

    #@5
    invoke-direct {p1, p0}, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatDialog;)V

    #@8
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Landroidx/core/view/KeyEventDispatcher$Component;

    #@a
    .line 71
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    #@d
    .line 72
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AppCompatDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@10
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .registers 4

    #@0
    if-nez p1, :cond_13

    #@2
    .line 186
    new-instance p1, Landroid/util/TypedValue;

    #@4
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object p0

    #@b
    sget v0, Landroidx/appcompat/R$attr;->dialogTheme:I

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@11
    .line 188
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    #@13
    :cond_13
    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    return-void
.end method

.method public dismiss()V
    .registers 2

    #@0
    .line 140
    invoke-super {p0}, Landroidx/activity/ComponentDialog;->dismiss()V

    #@3
    .line 142
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    #@a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 214
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    .line 215
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Landroidx/core/view/KeyEventDispatcher$Component;

    #@a
    invoke-static {v1, v0, p0, p1}, Landroidx/core/view/KeyEventDispatcher;->dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    #@d
    move-result p1

    #@e
    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    #@0
    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .registers 2

    #@0
    .line 177
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    #@2
    if-nez v0, :cond_a

    #@4
    .line 178
    invoke-static {p0, p0}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Dialog;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    #@a
    .line 180
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    #@c
    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .registers 2

    #@0
    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    #@0
    .line 169
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    #@7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    #@7
    .line 78
    invoke-super {p0, p1}, Landroidx/activity/ComponentDialog;->onCreate(Landroid/os/Bundle;)V

    #@a
    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    #@11
    return-void
.end method

.method protected onStop()V
    .registers 2

    #@0
    .line 134
    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onStop()V

    #@3
    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    #@a
    return-void
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .registers 2

    #@0
    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .registers 2

    #@0
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public setContentView(I)V
    .registers 3

    #@0
    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    #@7
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    #@7
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    return-void
.end method

.method public setTitle(I)V
    .registers 4

    #@0
    .line 123
    invoke-super {p0, p1}, Landroidx/activity/ComponentDialog;->setTitle(I)V

    #@3
    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getContext()Landroid/content/Context;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    #@12
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 117
    invoke-super {p0, p1}, Landroidx/activity/ComponentDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@3
    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    #@a
    return-void
.end method

.method superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    #@0
    .line 209
    invoke-super {p0, p1}, Landroidx/activity/ComponentDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public supportRequestWindowFeature(I)Z
    .registers 3

    #@0
    .line 160
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    #@7
    move-result p1

    #@8
    return p1
.end method
