.class Lcom/google/android/material/snackbar/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/SnackbarManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/SnackbarManager;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/SnackbarManager;)V
    .registers 2

    #@0
    .line 54
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager$1;->this$0:Lcom/google/android/material/snackbar/SnackbarManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    #@0
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    .line 59
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager$1;->this$0:Lcom/google/android/material/snackbar/SnackbarManager;

    #@8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->handleTimeout(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    #@f
    const/4 p1, 0x1

    #@10
    return p1
.end method
