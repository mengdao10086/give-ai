.class public final Lcom/permissionx/guolindev/request/RequestNormalPermissions;
.super Lcom/permissionx/guolindev/request/BaseTask;
.source "RequestNormalPermissions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/RequestNormalPermissions;",
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
    .line 27
    invoke-direct {p0, p1}, Lcom/permissionx/guolindev/request/BaseTask;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@8
    return-void
.end method


# virtual methods
.method public request()V
    .registers 5

    #@0
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 31
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@7
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->normalPermissions:Ljava/util/Set;

    #@9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_33

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/String;

    #@19
    .line 32
    iget-object v3, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@1b
    invoke-virtual {v3}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/content/Context;

    #@21
    invoke-static {v3, v2}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2f

    #@27
    .line 33
    iget-object v3, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@29
    iget-object v3, v3, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@2b
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_d

    #@2f
    .line 35
    :cond_2f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_d

    #@33
    .line 38
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3d

    #@39
    .line 39
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->finish()V

    #@3c
    return-void

    #@3d
    .line 42
    :cond_3d
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@3f
    iget-boolean v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonBeforeRequest:Z

    #@41
    if-eqz v1, :cond_87

    #@43
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@45
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@47
    if-nez v1, :cond_4f

    #@49
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@4b
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@4d
    if-eqz v1, :cond_87

    #@4f
    .line 43
    :cond_4f
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@51
    const/4 v2, 0x0

    #@52
    iput-boolean v2, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonBeforeRequest:Z

    #@54
    .line 44
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@56
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    #@58
    move-object v2, v0

    #@59
    check-cast v2, Ljava/util/Collection;

    #@5b
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5e
    .line 45
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@60
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@62
    if-eqz v1, :cond_76

    #@64
    .line 47
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@66
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@68
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@6b
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@6e
    move-result-object v2

    #@6f
    check-cast v0, Ljava/util/List;

    #@71
    const/4 v3, 0x1

    #@72
    invoke-interface {v1, v2, v0, v3}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@75
    goto :goto_93

    #@76
    .line 49
    :cond_76
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@78
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@7a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@7d
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@80
    move-result-object v2

    #@81
    check-cast v0, Ljava/util/List;

    #@83
    invoke-interface {v1, v2, v0}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@86
    goto :goto_93

    #@87
    .line 53
    :cond_87
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@89
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@8b
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->normalPermissions:Ljava/util/Set;

    #@8d
    move-object v2, p0

    #@8e
    check-cast v2, Lcom/permissionx/guolindev/request/ChainTask;

    #@90
    invoke-virtual {v0, v1, v2}, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestNow(Ljava/util/Set;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@93
    :goto_93
    return-void
.end method

.method public requestAgain(Ljava/util/List;)V
    .registers 4
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
    .line 63
    new-instance v0, Ljava/util/HashSet;

    #@7
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@9
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@b
    check-cast v1, Ljava/util/Collection;

    #@d
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@10
    check-cast v0, Ljava/util/Set;

    #@12
    .line 64
    check-cast p1, Ljava/util/Collection;

    #@14
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 65
    move-object p1, v0

    #@18
    check-cast p1, Ljava/util/Collection;

    #@1a
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@1d
    move-result p1

    #@1e
    xor-int/lit8 p1, p1, 0x1

    #@20
    if-eqz p1, :cond_2b

    #@22
    .line 66
    iget-object p1, p0, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@24
    move-object v1, p0

    #@25
    check-cast v1, Lcom/permissionx/guolindev/request/ChainTask;

    #@27
    invoke-virtual {p1, v0, v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestNow(Ljava/util/Set;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@2a
    goto :goto_2e

    #@2b
    .line 68
    :cond_2b
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestNormalPermissions;->finish()V

    #@2e
    :goto_2e
    return-void
.end method
