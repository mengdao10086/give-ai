.class final Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InvisibleFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/permissionx/guolindev/request/InvisibleFragment;->onRequestBodySensorsBackgroundPermissionResult(Z)V
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
.field final synthetic $granted:Z

.field final synthetic this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;


# direct methods
.method constructor <init>(ZLcom/permissionx/guolindev/request/InvisibleFragment;)V
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->$granted:Z

    #@2
    iput-object p2, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@4
    const/4 p1, 0x0

    #@5
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    #@8
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    #@0
    .line 614
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->invoke()V

    #@3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@5
    return-object v0
.end method

.method public final invoke()V
    .registers 8

    #@0
    .line 615
    iget-boolean v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->$granted:Z

    #@2
    const-string v1, "task"

    #@4
    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    #@6
    const-string v3, "pb"

    #@8
    const/4 v4, 0x0

    #@9
    if-eqz v0, :cond_50

    #@b
    .line 616
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@d
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_17

    #@13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@16
    move-object v0, v4

    #@17
    :cond_17
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@19
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1c
    .line 618
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@1e
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@21
    move-result-object v0

    #@22
    if-nez v0, :cond_28

    #@24
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@27
    move-object v0, v4

    #@28
    :cond_28
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    #@2a
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@2d
    .line 619
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@2f
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@32
    move-result-object v0

    #@33
    if-nez v0, :cond_39

    #@35
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@38
    move-object v0, v4

    #@39
    :cond_39
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    #@3b
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3e
    .line 620
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@40
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@43
    move-result-object v0

    #@44
    if-nez v0, :cond_4a

    #@46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@49
    goto :goto_4b

    #@4a
    :cond_4a
    move-object v4, v0

    #@4b
    :goto_4b
    invoke-interface {v4}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@4e
    goto/16 :goto_141

    #@50
    .line 624
    :cond_50
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@52
    invoke-virtual {v0, v2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    #@55
    move-result v0

    #@56
    .line 626
    iget-object v5, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@58
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v5}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@5b
    move-result-object v5

    #@5c
    if-nez v5, :cond_62

    #@5e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@61
    move-object v5, v4

    #@62
    :cond_62
    iget-object v5, v5, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@64
    const/4 v6, 0x0

    #@65
    if-nez v5, :cond_77

    #@67
    iget-object v5, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@69
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v5}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@6c
    move-result-object v5

    #@6d
    if-nez v5, :cond_73

    #@6f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@72
    move-object v5, v4

    #@73
    :cond_73
    iget-object v5, v5, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@75
    if-eqz v5, :cond_dd

    #@77
    :cond_77
    if-eqz v0, :cond_dd

    #@79
    .line 629
    new-instance v0, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7e
    check-cast v0, Ljava/util/List;

    #@80
    .line 630
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@83
    .line 631
    iget-object v2, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@85
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@88
    move-result-object v2

    #@89
    if-nez v2, :cond_8f

    #@8b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@8e
    move-object v2, v4

    #@8f
    :cond_8f
    iget-object v2, v2, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@91
    if-eqz v2, :cond_b8

    #@93
    .line 633
    iget-object v2, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@95
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@98
    move-result-object v2

    #@99
    if-nez v2, :cond_9f

    #@9b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@9e
    move-object v2, v4

    #@9f
    :cond_9f
    iget-object v2, v2, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@a1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@a4
    .line 634
    iget-object v5, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@a6
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v5}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@a9
    move-result-object v5

    #@aa
    if-nez v5, :cond_b0

    #@ac
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@af
    move-object v5, v4

    #@b0
    :cond_b0
    invoke-interface {v5}, Lcom/permissionx/guolindev/request/ChainTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@b3
    move-result-object v5

    #@b4
    .line 633
    invoke-interface {v2, v5, v0, v6}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@b7
    goto :goto_11f

    #@b8
    .line 637
    :cond_b8
    iget-object v2, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@ba
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@bd
    move-result-object v2

    #@be
    if-nez v2, :cond_c4

    #@c0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@c3
    move-object v2, v4

    #@c4
    :cond_c4
    iget-object v2, v2, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@c6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@c9
    .line 638
    iget-object v5, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@cb
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v5}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@ce
    move-result-object v5

    #@cf
    if-nez v5, :cond_d5

    #@d1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@d4
    move-object v5, v4

    #@d5
    :cond_d5
    invoke-interface {v5}, Lcom/permissionx/guolindev/request/ChainTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@d8
    move-result-object v5

    #@d9
    .line 637
    invoke-interface {v2, v5, v0}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@dc
    goto :goto_11f

    #@dd
    .line 642
    :cond_dd
    iget-object v5, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@df
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v5}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@e2
    move-result-object v5

    #@e3
    if-nez v5, :cond_e9

    #@e5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@e8
    move-object v5, v4

    #@e9
    :cond_e9
    iget-object v5, v5, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;

    #@eb
    if-eqz v5, :cond_11e

    #@ed
    if-nez v0, :cond_11e

    #@ef
    .line 645
    new-instance v0, Ljava/util/ArrayList;

    #@f1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f4
    check-cast v0, Ljava/util/List;

    #@f6
    .line 646
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f9
    .line 647
    iget-object v2, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@fb
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@fe
    move-result-object v2

    #@ff
    if-nez v2, :cond_105

    #@101
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@104
    move-object v2, v4

    #@105
    :cond_105
    iget-object v2, v2, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;

    #@107
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@10a
    .line 648
    iget-object v5, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@10c
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v5}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@10f
    move-result-object v5

    #@110
    if-nez v5, :cond_116

    #@112
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@115
    move-object v5, v4

    #@116
    :cond_116
    invoke-interface {v5}, Lcom/permissionx/guolindev/request/ChainTask;->getForwardScope()Lcom/permissionx/guolindev/request/ForwardScope;

    #@119
    move-result-object v5

    #@11a
    .line 647
    invoke-interface {v2, v5, v0}, Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;->onForwardToSettings(Lcom/permissionx/guolindev/request/ForwardScope;Ljava/util/List;)V

    #@11d
    goto :goto_11f

    #@11e
    :cond_11e
    const/4 v6, 0x1

    #@11f
    :goto_11f
    if-nez v6, :cond_131

    #@121
    .line 656
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@123
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@126
    move-result-object v0

    #@127
    if-nez v0, :cond_12d

    #@129
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@12c
    move-object v0, v4

    #@12d
    :cond_12d
    iget-boolean v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->showDialogCalled:Z

    #@12f
    if-nez v0, :cond_141

    #@131
    .line 657
    :cond_131
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@133
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@136
    move-result-object v0

    #@137
    if-nez v0, :cond_13d

    #@139
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@13c
    goto :goto_13e

    #@13d
    :cond_13d
    move-object v4, v0

    #@13e
    :goto_13e
    invoke-interface {v4}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@141
    :cond_141
    :goto_141
    return-void
.end method
