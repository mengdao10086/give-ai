.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    #@0
    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_13

    #@5
    if-eq v0, v1, :cond_9

    #@7
    const/4 p1, 0x0

    #@8
    return p1

    #@9
    .line 266
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@d
    iget p1, p1, Landroid/os/Message;->arg1:I

    #@f
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->hideView(I)V

    #@12
    return v1

    #@13
    .line 263
    :cond_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    check-cast p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@17
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->showView()V

    #@1a
    return v1
.end method
