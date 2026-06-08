.class public final Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;
.super Lcom/permissionx/guolindev/request/BaseTask;
.source "RequestInstallPackagesPermission.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;",
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
.field public static final Companion:Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission$Companion;

.field public static final REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "android.permission.REQUEST_INSTALL_PACKAGES"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->Companion:Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission$Companion;

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
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestInstallPackagesPermission()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_66

    #@8
    .line 33
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@a
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getTargetSdkVersion()I

    #@d
    move-result v0

    #@e
    const/16 v1, 0x1a

    #@10
    if-lt v0, v1, :cond_66

    #@12
    .line 34
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@14
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_26

    #@22
    .line 36
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->finish()V

    #@25
    return-void

    #@26
    .line 39
    :cond_26
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@28
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@2a
    if-nez v0, :cond_37

    #@2c
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2e
    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@30
    if-eqz v0, :cond_33

    #@32
    goto :goto_37

    #@33
    .line 50
    :cond_33
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->finish()V

    #@36
    goto :goto_69

    #@37
    :cond_37
    :goto_37
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    #@39
    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    #@40
    move-result-object v0

    #@41
    .line 41
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@43
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@45
    if-eqz v1, :cond_57

    #@47
    .line 43
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@49
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@4b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@4e
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@51
    move-result-object v2

    #@52
    const/4 v3, 0x1

    #@53
    invoke-interface {v1, v2, v0, v3}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    #@56
    goto :goto_69

    #@57
    .line 45
    :cond_57
    iget-object v1, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@59
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@5b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@5e
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    #@61
    move-result-object v2

    #@62
    invoke-interface {v1, v2, v0}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    #@65
    goto :goto_69

    #@66
    .line 54
    :cond_66
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->finish()V

    #@69
    :goto_69
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
    .line 60
    iget-object p1, p0, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@7
    move-object v0, p0

    #@8
    check-cast v0, Lcom/permissionx/guolindev/request/ChainTask;

    #@a
    invoke-virtual {p1, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestInstallPackagePermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V

    #@d
    return-void
.end method
