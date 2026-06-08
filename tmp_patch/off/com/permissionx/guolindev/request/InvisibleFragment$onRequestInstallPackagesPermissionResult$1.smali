.class final Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InvisibleFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/permissionx/guolindev/request/InvisibleFragment;->onRequestInstallPackagesPermissionResult()V
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
    iput-object p1, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

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
    .line 552
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->invoke()V

    #@3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@5
    return-object v0
.end method

.method public final invoke()V
    .registers 6

    #@0
    .line 554
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@2
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    #@d
    move-result v0

    #@e
    const-string v1, "task"

    #@10
    const/4 v2, 0x0

    #@11
    if-eqz v0, :cond_25

    #@13
    .line 555
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@15
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_1f

    #@1b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move-object v2, v0

    #@20
    :goto_20
    invoke-interface {v2}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@23
    goto/16 :goto_ad

    #@25
    .line 556
    :cond_25
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@27
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string v3, "pb"

    #@2d
    if-nez v0, :cond_33

    #@2f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@32
    move-object v0, v2

    #@33
    :cond_33
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@35
    if-nez v0, :cond_47

    #@37
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@39
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@3c
    move-result-object v0

    #@3d
    if-nez v0, :cond_43

    #@3f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@42
    move-object v0, v2

    #@43
    :cond_43
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@45
    if-eqz v0, :cond_ad

    #@47
    .line 557
    :cond_47
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@49
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@4c
    move-result-object v0

    #@4d
    if-nez v0, :cond_53

    #@4f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@52
    move-object v0, v2

    #@53
    :cond_53
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@55
    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    #@57
    if-eqz v0, :cond_84

    #@59
    .line 559
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@5b
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@5e
    move-result-object v0

    #@5f
    if-nez v0, :cond_65

    #@61
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@64
    move-object v0, v2

    #@65
    :cond_65
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@67
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@6a
    .line 560
    iget-object v3, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@6c
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v3}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@6f
    move-result-object v3

    #@70
    if-nez v3, :cond_76

    #@72
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@75
    goto :goto_77

    #@76
    :cond_76
    move-object v2, v3

    #@77
    :goto_77
    invoke-interface {v2}, Lcom/permissionx/guolindev/request/ChainTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@7a
    move-result-object v1

    #@7b
    .line 561
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@7e
    move-result-object v2

    #@7f
    const/4 v3, 0x0

    #@80
    .line 559
    invoke-interface {v0, v1, v2, v3}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@83
    goto :goto_ad

    #@84
    .line 565
    :cond_84
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@86
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;
    invoke-static {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getPb$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@89
    move-result-object v0

    #@8a
    if-nez v0, :cond_90

    #@8c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@8f
    move-object v0, v2

    #@90
    :cond_90
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@92
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@95
    .line 566
    iget-object v3, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$onRequestInstallPackagesPermissionResult$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@97
    # getter for: Lcom/permissionx/guolindev/request/InvisibleFragment;->task:Lcom/permissionx/guolindev/request/ChainTask;
    invoke-static {v3}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$getTask$p(Lcom/permissionx/guolindev/request/InvisibleFragment;)Lcom/permissionx/guolindev/request/ChainTask;

    #@9a
    move-result-object v3

    #@9b
    if-nez v3, :cond_a1

    #@9d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@a0
    goto :goto_a2

    #@a1
    :cond_a1
    move-object v2, v3

    #@a2
    :goto_a2
    invoke-interface {v2}, Lcom/permissionx/guolindev/request/ChainTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@a5
    move-result-object v1

    #@a6
    .line 567
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@a9
    move-result-object v2

    #@aa
    .line 565
    invoke-interface {v0, v1, v2}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@ad
    :cond_ad
    :goto_ad
    return-void
.end method
