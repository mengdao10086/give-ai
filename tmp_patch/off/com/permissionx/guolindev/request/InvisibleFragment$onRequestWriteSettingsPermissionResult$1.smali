.class final Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InvisibleFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/permissionx/guolindev/request/InvisibleFragment;->onRequestWriteSettingsPermissionResult()V
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
    iput-object p1, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

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
    .line 493
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->invoke()V

    #@3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@5
    return-object v0
.end method

.method public final invoke()V
    .registers 6

    #@0
    .line 495
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@2
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requireContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    #@9
    move-result v0

    #@a
    const-string v1, "task"

    #@c
    const/4 v2, 0x0

    #@d
    if-eqz v0, :cond_21

    #@f
    .line 496
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@11
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_1b

    #@17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move-object v2, v0

    #@1c
    :goto_1c
    invoke-interface {v2}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@1f
    goto/16 :goto_a9

    #@21
    .line 497
    :cond_21
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@23
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@26
    move-result-object v0

    #@27
    const-string v3, "pb"

    #@29
    if-nez v0, :cond_2f

    #@2b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@2e
    move-object v0, v2

    #@2f
    :cond_2f
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@31
    if-nez v0, :cond_43

    #@33
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@35
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@38
    move-result-object v0

    #@39
    if-nez v0, :cond_3f

    #@3b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@3e
    move-object v0, v2

    #@3f
    :cond_3f
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@41
    if-eqz v0, :cond_a9

    #@43
    .line 498
    :cond_43
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@45
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@48
    move-result-object v0

    #@49
    if-nez v0, :cond_4f

    #@4b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@4e
    move-object v0, v2

    #@4f
    :cond_4f
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@51
    const-string v4, "android.permission.WRITE_SETTINGS"

    #@53
    if-eqz v0, :cond_80

    #@55
    .line 500
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@57
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@5a
    move-result-object v0

    #@5b
    if-nez v0, :cond_61

    #@5d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@60
    move-object v0, v2

    #@61
    :cond_61
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@66
    .line 501
    iget-object v3, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@68
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v3}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@6b
    move-result-object v3

    #@6c
    if-nez v3, :cond_72

    #@6e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@71
    goto :goto_73

    #@72
    :cond_72
    move-object v2, v3

    #@73
    :goto_73
    invoke-interface {v2}, Lcom/permissionx/guolindev/request/ChainTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@76
    move-result-object v1

    #@77
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@7a
    move-result-object v2

    #@7b
    const/4 v3, 0x0

    #@7c
    .line 500
    invoke-interface {v0, v1, v2, v3}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@7f
    goto :goto_a9

    #@80
    .line 504
    :cond_80
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@82
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@85
    move-result-object v0

    #@86
    if-nez v0, :cond_8c

    #@88
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@8b
    move-object v0, v2

    #@8c
    :cond_8c
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@8e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@91
    .line 505
    iget-object v3, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestWriteSettingsPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@93
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v3}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@96
    move-result-object v3

    #@97
    if-nez v3, :cond_9d

    #@99
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@9c
    goto :goto_9e

    #@9d
    :cond_9d
    move-object v2, v3

    #@9e
    :goto_9e
    invoke-interface {v2}, Lcom/permissionx/guolindev/request/ChainTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@a1
    move-result-object v1

    #@a2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@a5
    move-result-object v2

    #@a6
    .line 504
    invoke-interface {v0, v1, v2}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@a9
    :cond_a9
    :goto_a9
    return-void
.end method
