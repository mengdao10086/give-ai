.class Landroidx/appcompat/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController;)V
    .registers 2

    #@0
    .line 126
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    #@0
    .line 130
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@2
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    #@4
    if-ne p1, v0, :cond_15

    #@6
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@8
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    #@a
    if-eqz v0, :cond_15

    #@c
    .line 131
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@e
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    #@10
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@13
    move-result-object p1

    #@14
    goto :goto_40

    #@15
    .line 132
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@17
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    #@19
    if-ne p1, v0, :cond_2a

    #@1b
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@1d
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    #@1f
    if-eqz v0, :cond_2a

    #@21
    .line 133
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@23
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    #@25
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@28
    move-result-object p1

    #@29
    goto :goto_40

    #@2a
    .line 134
    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@2c
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    #@2e
    if-ne p1, v0, :cond_3f

    #@30
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@32
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    #@34
    if-eqz p1, :cond_3f

    #@36
    .line 135
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@38
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    #@3a
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@3d
    move-result-object p1

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    const/4 p1, 0x0

    #@40
    :goto_40
    if-eqz p1, :cond_45

    #@42
    .line 141
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@45
    .line 145
    :cond_45
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@47
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    #@49
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    #@4b
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    #@4d
    const/4 v1, 0x1

    #@4e
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@51
    move-result-object p1

    #@52
    .line 146
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@55
    return-void
.end method
