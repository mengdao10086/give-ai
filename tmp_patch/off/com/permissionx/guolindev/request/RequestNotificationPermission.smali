.class public final Lcom/permissionx/guolindev/request/RequestNotificationPermission;
.super Lcom/permissionx/guolindev/request/BaseTask;
.source "RequestNotificationPermission.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/RequestNotificationPermission;",
        "Lcom/permissionx/guolindev/request/BaseTask;",
        "permissionBuilder",
        "Lcom/permissionx/guolindev/request/PermissionBuilder;",
        "(Lcom/permissionx/guolindev/request/PermissionBuilder;)V",
        "request",
        "",
        "requestAgain",
        "permissions",
        "",
        "",
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


# direct methods
.method public constructor <init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V
    .registers 3

    #@0
    const-string v0, "permissionBuilder"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 26
    invoke-direct {p0, p1}, Lcom/permissionx/guolindev/request/BaseTask;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@8
    return-void
.end method


# virtual methods
.method public request()V
    .registers 5

    #@0
    .line 29
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestNotificationPermission()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_55

    #@8
    .line 30
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@a
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/content/Context;

    #@10
    invoke-static {v0}, Lcom/permissionx/guolindev/PermissionX;->areNotificationsEnabled(Landroid/content/Context;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1a

    #@16
    .line 32
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->finish()V

    #@19
    return-void

    #@1a
    .line 35
    :cond_1a
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@1c
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@1e
    if-nez v0, :cond_26

    #@20
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@22
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@24
    if-eqz v0, :cond_55

    #@26
    :cond_26
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    #@28
    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    #@2f
    move-result-object v0

    #@30
    .line 37
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@32
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@34
    if-eqz v1, :cond_46

    #@36
    .line 39
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@38
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@3a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@3d
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@40
    move-result-object v2

    #@41
    const/4 v3, 0x1

    #@42
    invoke-interface {v1, v2, v0, v3}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@45
    goto :goto_54

    #@46
    .line 41
    :cond_46
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@48
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@4a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@4d
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@50
    move-result-object v2

    #@51
    invoke-interface {v1, v2, v0}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@54
    :goto_54
    return-void

    #@55
    .line 47
    :cond_55
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->finish()V

    #@58
    return-void
.end method

.method public requestAgain(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "permissions"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 52
    iget-object p1, p0, Lcom/permissionx/guolindev/request/RequestNotificationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@7
    move-object v0, p0

    #@8
    check-cast v0, Lcom/permissionx/guolindev/request/ChainTask;

    #@a
    invoke-virtual {p1, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestNotificationPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V

    #@d
    return-void
.end method
