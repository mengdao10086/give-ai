.class public Landroidx/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field static final LAYOUT_HINT_NONE:I = 0x0

.field static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field final mAlert:Landroidx/appcompat/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 88
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #@4
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    .line 98
    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    #@3
    move-result p2

    #@4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    #@7
    .line 99
    new-instance p1, Landroidx/appcompat/app/AlertController;

    #@9
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    #@c
    move-result-object p2

    #@d
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@10
    move-result-object v0

    #@11
    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    #@14
    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@16
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 104
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #@4
    .line 105
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    #@7
    .line 106
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@a
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .registers 4

    #@0
    ushr-int/lit8 v0, p1, 0x18

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    const/4 v1, 0x1

    #@5
    if-lt v0, v1, :cond_8

    #@7
    return p1

    #@8
    .line 114
    :cond_8
    new-instance p1, Landroid/util/TypedValue;

    #@a
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    #@d
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@10
    move-result-object p0

    #@11
    sget v0, Landroidx/appcompat/R$attr;->alertDialogTheme:I

    #@13
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@16
    .line 116
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    #@18
    return p0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    #@0
    .line 131
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->getButton(I)Landroid/widget/Button;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    #@0
    .line 140
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertController;->getListView()Landroid/widget/ListView;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 279
    iget-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@5
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertController;->installContent()V

    #@8
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 284
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    return p1

    #@a
    .line 287
    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@d
    move-result p1

    #@e
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 292
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    return p1

    #@a
    .line 295
    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@d
    move-result p1

    #@e
    return p1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 10

    #@0
    .line 226
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    move v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    #@a
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 11

    #@0
    .line 244
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    const/4 v4, 0x0

    #@3
    move v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p4

    #@6
    move-object v5, p3

    #@7
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    #@a
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .registers 10

    #@0
    .line 211
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    move v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v4, p3

    #@7
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    #@a
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .registers 3

    #@0
    .line 196
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->setButtonPanelLayoutHint(I)V

    #@5
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 3

    #@0
    .line 155
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    #@0
    .line 253
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    #@5
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 262
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setIconAttribute(I)V
    .registers 5

    #@0
    .line 271
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 272
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x1

    #@e
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@11
    .line 273
    iget-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@13
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    #@15
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    #@18
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 164
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 145
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@3
    .line 146
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    #@8
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 172
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 12

    #@0
    .line 187
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;IIII)V

    #@a
    return-void
.end method
