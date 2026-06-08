.class public final Lcom/permissionx/guolindev/request/RequestChain;
.super Ljava/lang/Object;
.source "RequestChain.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\tJ\r\u0010\n\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u000bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/RequestChain;",
        "",
        "()V",
        "headTask",
        "Lcom/permissionx/guolindev/request/BaseTask;",
        "tailTask",
        "addTaskToChain",
        "",
        "task",
        "addTaskToChain$permissionx_release",
        "runTask",
        "runTask$permissionx_release",
        "permissionx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private headTask:Lcom/permissionx/guolindev/request/BaseTask;

.field private tailTask:Lcom/permissionx/guolindev/request/BaseTask;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V
    .registers 4

    #@0
    const-string v0, "task"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 39
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestChain;->headTask:Lcom/permissionx/guolindev/request/BaseTask;

    #@7
    if-nez v0, :cond_b

    #@9
    .line 40
    iput-object p1, p0, Lcom/permissionx/guolindev/request/RequestChain;->headTask:Lcom/permissionx/guolindev/request/BaseTask;

    #@b
    .line 43
    :cond_b
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestChain;->tailTask:Lcom/permissionx/guolindev/request/BaseTask;

    #@d
    if-nez v0, :cond_10

    #@f
    goto :goto_15

    #@10
    :cond_10
    move-object v1, p1

    #@11
    check-cast v1, Lcom/permissionx/guolindev/request/ChainTask;

    #@13
    iput-object v1, v0, Lcom/permissionx/guolindev/request/BaseTask;->next:Lcom/permissionx/guolindev/request/ChainTask;

    #@15
    .line 44
    :goto_15
    iput-object p1, p0, Lcom/permissionx/guolindev/request/RequestChain;->tailTask:Lcom/permissionx/guolindev/request/BaseTask;

    #@17
    return-void
.end method

.method public final runTask$permissionx_release()V
    .registers 2

    #@0
    .line 51
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestChain;->headTask:Lcom/permissionx/guolindev/request/BaseTask;

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/BaseTask;->request()V

    #@7
    :cond_7
    return-void
.end method
