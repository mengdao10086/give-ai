.class public final Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;
.super Lcom/permissionx/guolindev/request/BaseTask;
.source "RequestWriteSettingsPermission.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;",
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
    .line 29
    invoke-direct {p0, p1}, Lcom/permissionx/guolindev/request/BaseTask;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@8
    return-void
.end method


# virtual methods
.method public request()V
    .registers 5

    #@0
    .line 32
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestWriteSettingsPermission()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_76

    #@8
    .line 33
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@a
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getTargetSdkVersion()I

    #@d
    move-result v0

    #@e
    const/16 v1, 0x17

    #@10
    const-string v2, "android.permission.WRITE_SETTINGS"

    #@12
    if-lt v0, v1, :cond_64

    #@14
    .line 34
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@16
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/content/Context;

    #@1c
    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_26

    #@22
    .line 36
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->finish()V

    #@25
    return-void

    #@26
    .line 39
    :cond_26
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@28
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@2a
    if-nez v0, :cond_37

    #@2c
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2e
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@30
    if-eqz v0, :cond_33

    #@32
    goto :goto_37

    #@33
    .line 50
    :cond_33
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->finish()V

    #@36
    goto :goto_79

    #@37
    .line 40
    :cond_37
    :goto_37
    filled-new-array {v2}, [Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    #@3e
    move-result-object v0

    #@3f
    .line 41
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@41
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@43
    if-eqz v1, :cond_55

    #@45
    .line 43
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@47
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@49
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@4c
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@4f
    move-result-object v2

    #@50
    const/4 v3, 0x1

    #@51
    invoke-interface {v1, v2, v0, v3}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@54
    goto :goto_79

    #@55
    .line 45
    :cond_55
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@57
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@59
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@5c
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@5f
    move-result-object v2

    #@60
    invoke-interface {v1, v2, v0}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@63
    goto :goto_79

    #@64
    .line 54
    :cond_64
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@66
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@68
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6b
    .line 56
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@6d
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@6f
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@72
    .line 57
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->finish()V

    #@75
    goto :goto_79

    #@76
    .line 61
    :cond_76
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->finish()V

    #@79
    :goto_79
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
    .line 67
    iget-object p1, p0, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@7
    move-object v0, p0

    #@8
    check-cast v0, Lcom/permissionx/guolindev/request/ChainTask;

    #@a
    invoke-virtual {p1, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestWriteSettingsPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V

    #@d
    return-void
.end method
