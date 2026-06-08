.class final Landroidx/appcompat/app/AlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_DIALOG:I = 0x1


# instance fields
.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .registers 3

    #@0
    .line 156
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    #@a
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, -0x3

    #@3
    if-eq v0, v1, :cond_17

    #@5
    const/4 v1, -0x2

    #@6
    if-eq v0, v1, :cond_17

    #@8
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_17

    #@b
    const/4 v1, 0x1

    #@c
    if-eq v0, v1, :cond_f

    #@e
    goto :goto_28

    #@f
    .line 171
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    check-cast p1, Landroid/content/DialogInterface;

    #@13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@16
    goto :goto_28

    #@17
    .line 167
    :cond_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    #@1b
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    #@1d
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/DialogInterface;

    #@23
    iget p1, p1, Landroid/os/Message;->what:I

    #@25
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    #@28
    :goto_28
    return-void
.end method
