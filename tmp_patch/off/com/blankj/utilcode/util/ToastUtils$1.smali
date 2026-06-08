.class Lcom/blankj/utilcode/util/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    .line 460
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->sWeakToast:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Ljava/lang/ref/WeakReference;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_19

    #@6
    .line 461
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->sWeakToast:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Ljava/lang/ref/WeakReference;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@10
    if-eqz v0, :cond_15

    #@12
    .line 463
    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->cancel()V

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    .line 465
    # setter for: Lcom/blankj/utilcode/util/ToastUtils;->sWeakToast:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    #@19
    :cond_19
    return-void
.end method
