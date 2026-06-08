.class public final Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;
.super Lcom/permissionx/guolindev/request/BaseTask;
.source "RequestBackgroundLocationPermission.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;",
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
        "Companion",
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


# static fields
.field public static final ACCESS_BACKGROUND_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_BACKGROUND_LOCATION"

.field public static final Companion:Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->Companion:Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission$Companion;

    #@8
    return-void
.end method

.method public constructor <init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V
    .registers 3

    #@0
    const-string v0, "permissionBuilder"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 28
    invoke-direct {p0, p1}, Lcom/permissionx/guolindev/request/BaseTask;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@8
    return-void
.end method


# virtual methods
.method public request()V
    .registers 5

    #@0
    .line 31
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestBackgroundLocationPermission()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_96

    #@8
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@a
    const/16 v1, 0x1d

    #@c
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    #@e
    if-ge v0, v1, :cond_22

    #@10
    .line 35
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@12
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@14
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@17
    .line 36
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@19
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->permissionsWontRequest:Ljava/util/Set;

    #@1b
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e
    .line 37
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->finish()V

    #@21
    return-void

    #@22
    .line 40
    :cond_22
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@24
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/content/Context;

    #@2a
    invoke-static {v0, v2}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_34

    #@30
    .line 42
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->finish()V

    #@33
    return-void

    #@34
    .line 45
    :cond_34
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@36
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/content/Context;

    #@3c
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    #@3e
    invoke-static {v0, v1}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    .line 46
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@44
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Landroid/content/Context;

    #@4a
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    #@4c
    invoke-static {v1, v3}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    #@4f
    move-result v1

    #@50
    if-nez v0, :cond_54

    #@52
    if-eqz v1, :cond_96

    #@54
    .line 48
    :cond_54
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@56
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@58
    if-nez v0, :cond_69

    #@5a
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@5c
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@5e
    if-eqz v0, :cond_61

    #@60
    goto :goto_69

    #@61
    .line 58
    :cond_61
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {p0, v0}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->requestAgain(Ljava/util/List;)V

    #@68
    goto :goto_95

    #@69
    .line 49
    :cond_69
    :goto_69
    filled-new-array {v2}, [Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    #@70
    move-result-object v0

    #@71
    .line 50
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@73
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@75
    if-eqz v1, :cond_87

    #@77
    .line 52
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@79
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@7b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@7e
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@81
    move-result-object v2

    #@82
    const/4 v3, 0x1

    #@83
    invoke-interface {v1, v2, v0, v3}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@86
    goto :goto_95

    #@87
    .line 54
    :cond_87
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@89
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@8b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@8e
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@91
    move-result-object v2

    #@92
    invoke-interface {v1, v2, v0}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@95
    :goto_95
    return-void

    #@96
    .line 64
    :cond_96
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->finish()V

    #@99
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
    .line 69
    iget-object p1, p0, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@7
    move-object v0, p0

    #@8
    check-cast v0, Lcom/permissionx/guolindev/request/ChainTask;

    #@a
    invoke-virtual {p1, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestAccessBackgroundLocationPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V

    #@d
    return-void
.end method
