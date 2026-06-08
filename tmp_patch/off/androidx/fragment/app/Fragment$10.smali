.class Landroidx/fragment/app/Fragment$10;
.super Landroidx/activity/result/ActivityResultLauncher;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/ActivityResultLauncher<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/Fragment;

.field final synthetic val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic val$ref:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;)V
    .registers 4

    #@0
    .line 3604
    iput-object p1, p0, Landroidx/fragment/app/Fragment$10;->this$0:Landroidx/fragment/app/Fragment;

    #@2
    iput-object p2, p0, Landroidx/fragment/app/Fragment$10;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    #@4
    iput-object p3, p0, Landroidx/fragment/app/Fragment$10;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    #@6
    invoke-direct {p0}, Landroidx/activity/result/ActivityResultLauncher;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public getContract()Landroidx/activity/result/contract/ActivityResultContract;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;*>;"
        }
    .end annotation

    #@0
    .line 3626
    iget-object v0, p0, Landroidx/fragment/app/Fragment$10;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    #@2
    return-object v0
.end method

.method public launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    #@0
    .line 3607
    iget-object v0, p0, Landroidx/fragment/app/Fragment$10;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/activity/result/ActivityResultLauncher;

    #@8
    if-eqz v0, :cond_e

    #@a
    .line 3612
    invoke-virtual {v0, p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    #@d
    return-void

    #@e
    .line 3609
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    #@10
    const-string p2, "Operation cannot be started before fragment is in created state"

    #@12
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw p1
.end method

.method public unregister()V
    .registers 3

    #@0
    .line 3617
    iget-object v0, p0, Landroidx/fragment/app/Fragment$10;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/activity/result/ActivityResultLauncher;

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 3619
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    #@e
    :cond_e
    return-void
.end method
