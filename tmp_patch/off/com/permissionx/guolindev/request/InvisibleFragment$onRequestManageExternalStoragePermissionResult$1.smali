.class final Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InvisibleFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/permissionx/guolindev/request/InvisibleFragment;->onRequestManageExternalStoragePermissionResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;


# direct methods
.method constructor <init>(Lcom/permissionx/guolindev/request/InvisibleFragment;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@2
    const/4 p1, 0x0

    #@3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    #@6
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    #@0
    .line 521
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->invoke()V

    #@3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@5
    return-object v0
.end method

.method public final invoke()V
    .registers 6

    #@0
    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    const-string v2, "task"

    #@6
    const/4 v3, 0x0

    #@7
    if-lt v0, v1, :cond_aa

    #@9
    .line 523
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_21

    #@f
    .line 524
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@11
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_1b

    #@17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move-object v3, v0

    #@1c
    :goto_1c
    invoke-interface {v3}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@1f
    goto/16 :goto_ba

    #@21
    .line 525
    :cond_21
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@23
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@26
    move-result-object v0

    #@27
    const-string v1, "pb"

    #@29
    if-nez v0, :cond_2f

    #@2b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@2e
    move-object v0, v3

    #@2f
    :cond_2f
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@31
    if-nez v0, :cond_43

    #@33
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@35
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@38
    move-result-object v0

    #@39
    if-nez v0, :cond_3f

    #@3b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@3e
    move-object v0, v3

    #@3f
    :cond_3f
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@41
    if-eqz v0, :cond_ba

    #@43
    .line 526
    :cond_43
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@45
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@48
    move-result-object v0

    #@49
    if-nez v0, :cond_4f

    #@4b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@4e
    move-object v0, v3

    #@4f
    :cond_4f
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@51
    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    #@53
    if-eqz v0, :cond_80

    #@55
    .line 528
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@57
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@5a
    move-result-object v0

    #@5b
    if-nez v0, :cond_61

    #@5d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@60
    move-object v0, v3

    #@61
    :cond_61
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@66
    .line 529
    iget-object v1, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@68
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@6b
    move-result-object v1

    #@6c
    if-nez v1, :cond_72

    #@6e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@71
    goto :goto_73

    #@72
    :cond_72
    move-object v3, v1

    #@73
    :goto_73
    invoke-interface {v3}, Lcom/permissionx/guolindev/request/ChainTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@76
    move-result-object v1

    #@77
    .line 530
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@7a
    move-result-object v2

    #@7b
    const/4 v3, 0x0

    #@7c
    .line 528
    invoke-interface {v0, v1, v2, v3}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@7f
    goto :goto_ba

    #@80
    .line 534
    :cond_80
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@82
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@85
    move-result-object v0

    #@86
    if-nez v0, :cond_8c

    #@88
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@8b
    move-object v0, v3

    #@8c
    :cond_8c
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@8e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@91
    .line 535
    iget-object v1, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@93
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@96
    move-result-object v1

    #@97
    if-nez v1, :cond_9d

    #@99
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@9c
    goto :goto_9e

    #@9d
    :cond_9d
    move-object v3, v1

    #@9e
    :goto_9e
    invoke-interface {v3}, Lcom/permissionx/guolindev/request/ChainTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@a1
    move-result-object v1

    #@a2
    .line 536
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@a5
    move-result-object v2

    #@a6
    .line 534
    invoke-interface {v0, v1, v2}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@a9
    goto :goto_ba

    #@aa
    .line 541
    :cond_aa
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestManageExternalStoragePermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@ac
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@af
    move-result-object v0

    #@b0
    if-nez v0, :cond_b6

    #@b2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@b5
    goto :goto_b7

    #@b6
    :cond_b6
    move-object v3, v0

    #@b7
    :goto_b7
    invoke-interface {v3}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@ba
    :cond_ba
    :goto_ba
    return-void
.end method
