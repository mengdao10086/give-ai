.class public final Lcom/permissionx/guolindev/request/PermissionBuilder;
.super Ljava/lang/Object;
.source "PermissionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \\2\u00020\u0001:\u0001\\B5\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\nJ\r\u00102\u001a\u000203H\u0000\u00a2\u0006\u0002\u00084J\u0006\u0010\u0015\u001a\u00020\u0000J\u0016\u00105\u001a\u0002032\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000807H\u0002J\u0008\u00108\u001a\u000203H\u0003J\u0010\u00109\u001a\u00020\u00002\u0008\u0010:\u001a\u0004\u0018\u00010\u0018J\u0010\u00109\u001a\u00020\u00002\u0008\u0010:\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010;\u001a\u00020\u00002\u0008\u0010:\u001a\u0004\u0018\u00010\u001dJ\u0008\u0010<\u001a\u000203H\u0002J\u0010\u0010=\u001a\u0002032\u0008\u0010:\u001a\u0004\u0018\u00010,J\u000e\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020@J\u000e\u0010A\u001a\u0002032\u0006\u0010?\u001a\u00020@J\u000e\u0010B\u001a\u0002032\u0006\u0010?\u001a\u00020@J\u000e\u0010C\u001a\u0002032\u0006\u0010?\u001a\u00020@J\u000e\u0010D\u001a\u0002032\u0006\u0010?\u001a\u00020@J\u001c\u0010E\u001a\u0002032\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00080F2\u0006\u0010?\u001a\u00020@J\u000e\u0010G\u001a\u0002032\u0006\u0010?\u001a\u00020@J\u000e\u0010H\u001a\u0002032\u0006\u0010?\u001a\u00020@J\u0008\u0010I\u001a\u000203H\u0002J\u0016\u0010J\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010K\u001a\u00020\u0016J\u0006\u0010L\u001a\u00020\u0016J\u0006\u0010M\u001a\u00020\u0016J\u0006\u0010N\u001a\u00020\u0016J\u0006\u0010O\u001a\u00020\u0016J\u0006\u0010P\u001a\u00020\u0016J\u0006\u0010Q\u001a\u00020\u0016J\u001e\u0010R\u001a\u0002032\u0006\u0010?\u001a\u00020@2\u0006\u0010S\u001a\u00020\u00162\u0006\u0010T\u001a\u00020UJ\u001e\u0010R\u001a\u0002032\u0006\u0010?\u001a\u00020@2\u0006\u0010S\u001a\u00020\u00162\u0006\u0010V\u001a\u00020WJ>\u0010R\u001a\u0002032\u0006\u0010?\u001a\u00020@2\u0006\u0010S\u001a\u00020\u00162\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u0008072\u0006\u0010X\u001a\u00020\u00082\u0006\u0010Y\u001a\u00020\u00082\u0008\u0010Z\u001a\u0004\u0018\u00010\u0008J\u0008\u0010[\u001a\u000203H\u0002R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0018\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020$8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u000e\u0010\'\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010.\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0018\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006]"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/PermissionBuilder;",
        "",
        "fragmentActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "normalPermissions",
        "",
        "",
        "specialPermissions",
        "(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V",
        "activity",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "setActivity",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "currentDialog",
        "Landroid/app/Dialog;",
        "darkColor",
        "",
        "deniedPermissions",
        "explainReasonBeforeRequest",
        "",
        "explainReasonCallback",
        "Lcom/permissionx/guolindev/callback/ExplainReasonCallback;",
        "explainReasonCallbackWithBeforeParam",
        "Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;",
        "forwardPermissions",
        "forwardToSettingsCallback",
        "Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "getFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "grantedPermissions",
        "invisibleFragment",
        "Lcom/permissionx/guolindev/request/InvisibleFragment;",
        "getInvisibleFragment",
        "()Lcom/permissionx/guolindev/request/InvisibleFragment;",
        "lightColor",
        "originRequestOrientation",
        "permanentDeniedPermissions",
        "permissionsWontRequest",
        "requestCallback",
        "Lcom/permissionx/guolindev/callback/RequestCallback;",
        "showDialogCalled",
        "targetSdkVersion",
        "getTargetSdkVersion",
        "()I",
        "tempPermanentDeniedPermissions",
        "endRequest",
        "",
        "endRequest$permissionx_release",
        "forwardToSettings",
        "permissions",
        "",
        "lockOrientation",
        "onExplainRequestReason",
        "callback",
        "onForwardToSettings",
        "removeInvisibleFragment",
        "request",
        "requestAccessBackgroundLocationPermissionNow",
        "chainTask",
        "Lcom/permissionx/guolindev/request/ChainTask;",
        "requestBodySensorsBackgroundPermissionNow",
        "requestInstallPackagePermissionNow",
        "requestManageExternalStoragePermissionNow",
        "requestNotificationPermissionNow",
        "requestNow",
        "",
        "requestSystemAlertWindowPermissionNow",
        "requestWriteSettingsPermissionNow",
        "restoreOrientation",
        "setDialogTintColor",
        "shouldRequestBackgroundLocationPermission",
        "shouldRequestBodySensorsBackgroundPermission",
        "shouldRequestInstallPackagesPermission",
        "shouldRequestManageExternalStoragePermission",
        "shouldRequestNotificationPermission",
        "shouldRequestSystemAlertWindowPermission",
        "shouldRequestWriteSettingsPermission",
        "showHandlePermissionDialog",
        "showReasonOrGoSettings",
        "dialog",
        "Lcom/permissionx/guolindev/dialog/RationaleDialog;",
        "dialogFragment",
        "Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;",
        "message",
        "positiveText",
        "negativeText",
        "startRequest",
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
.field public static final Companion:Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "InvisibleFragment"


# instance fields
.field public activity:Landroidx/fragment/app/FragmentActivity;

.field public currentDialog:Landroid/app/Dialog;

.field private darkColor:I

.field public deniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public explainReasonBeforeRequest:Z

.field public explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

.field public explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

.field public forwardPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public forwardToSettingsCallback:Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;

.field private fragment:Landroidx/fragment/app/Fragment;

.field public grantedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lightColor:I

.field public normalPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originRequestOrientation:I

.field public permanentDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public permissionsWontRequest:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestCallback:Lcom/permissionx/guolindev/callback/RequestCallback;

.field public showDialogCalled:Z

.field public specialPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tempPermanentDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2fM8AZBC3afP91Vb8dH7uD4M0DI(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/permissionx/guolindev/request/PermissionBuilder;->showHandlePermissionDialog$lambda-1(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$Lryy70HiIObb0uxPBzOJHCEctvI(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V
    .registers 6

    #@0
    invoke-static/range {p0 .. p5}, Lcom/permissionx/guolindev/request/PermissionBuilder;->showHandlePermissionDialog$lambda-3(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$O9Hp_-9YuEjwy3MT2jVR8bjTDnE(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/permissionx/guolindev/request/PermissionBuilder;->showHandlePermissionDialog$lambda-4(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$h5YLp2A-1FdRklk40ZOxzrjCsqk(Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/content/DialogInterface;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->showHandlePermissionDialog$lambda-2(Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/content/DialogInterface;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$uz5q09bKYdOmJDE8SO186N6Iikw(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V
    .registers 6

    #@0
    invoke-static/range {p0 .. p5}, Lcom/permissionx/guolindev/request/PermissionBuilder;->showHandlePermissionDialog$lambda-0(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->Companion:Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;

    #@8
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "normalPermissions"

    #@2
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "specialPermissions"

    #@7
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    const/4 v0, -0x1

    #@e
    .line 64
    iput v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->lightColor:I

    #@10
    .line 69
    iput v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->darkColor:I

    #@12
    .line 75
    iput v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->originRequestOrientation:I

    #@14
    .line 143
    new-instance v0, Ljava/util/LinkedHashSet;

    #@16
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@19
    check-cast v0, Ljava/util/Set;

    #@1b
    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->permissionsWontRequest:Ljava/util/Set;

    #@1d
    .line 149
    new-instance v0, Ljava/util/LinkedHashSet;

    #@1f
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@22
    check-cast v0, Ljava/util/Set;

    #@24
    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@26
    .line 155
    new-instance v0, Ljava/util/LinkedHashSet;

    #@28
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@2b
    check-cast v0, Ljava/util/Set;

    #@2d
    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    #@2f
    .line 162
    new-instance v0, Ljava/util/LinkedHashSet;

    #@31
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@34
    check-cast v0, Ljava/util/Set;

    #@36
    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    #@38
    .line 171
    new-instance v0, Ljava/util/LinkedHashSet;

    #@3a
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@3d
    check-cast v0, Ljava/util/Set;

    #@3f
    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->tempPermanentDeniedPermissions:Ljava/util/Set;

    #@41
    .line 179
    new-instance v0, Ljava/util/LinkedHashSet;

    #@43
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@46
    check-cast v0, Ljava/util/Set;

    #@48
    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    #@4a
    if-eqz p1, :cond_4f

    #@4c
    .line 641
    invoke-virtual {p0, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    #@4f
    :cond_4f
    if-nez p1, :cond_5f

    #@51
    if-eqz p2, :cond_5f

    #@53
    .line 645
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    #@56
    move-result-object p1

    #@57
    const-string v0, "fragment.requireActivity()"

    #@59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@5c
    invoke-virtual {p0, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    #@5f
    .line 647
    :cond_5f
    iput-object p2, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->fragment:Landroidx/fragment/app/Fragment;

    #@61
    .line 648
    iput-object p3, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->normalPermissions:Ljava/util/Set;

    #@63
    .line 649
    iput-object p4, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@65
    return-void
.end method

.method private final forwardToSettings(Ljava/util/List;)V
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
    .line 620
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    .line 621
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    #@7
    check-cast p1, Ljava/util/Collection;

    #@9
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@c
    .line 622
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->forwardToSettings()V

    #@13
    return-void
.end method

.method private final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 3

    #@0
    .line 83
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->fragment:Landroidx/fragment/app/Fragment;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-nez v0, :cond_19

    #@c
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@13
    move-result-object v0

    #@14
    const-string v1, "activity.supportFragmentManager"

    #@16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@19
    :cond_19
    return-object v0
.end method

.method private final getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;
    .registers 5

    #@0
    .line 93
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    const-string v1, "InvisibleFragment"

    #@6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 95
    check-cast v0, Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@e
    goto :goto_26

    #@f
    .line 97
    :cond_f
    new-instance v0, Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@11
    invoke-direct {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;-><init>()V

    #@14
    .line 98
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@1b
    move-result-object v2

    #@1c
    .line 99
    move-object v3, v0

    #@1d
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@1f
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@22
    move-result-object v1

    #@23
    .line 100
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    #@26
    :goto_26
    return-object v0
.end method

.method private final lockOrientation()V
    .registers 3

    #@0
    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1a

    #@4
    if-eq v0, v1, :cond_36

    #@6
    .line 604
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getRequestedOrientation()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->originRequestOrientation:I

    #@10
    .line 605
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1b
    move-result-object v0

    #@1c
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@1e
    const/4 v1, 0x1

    #@1f
    if-eq v0, v1, :cond_2e

    #@21
    const/4 v1, 0x2

    #@22
    if-eq v0, v1, :cond_25

    #@24
    goto :goto_36

    #@25
    .line 607
    :cond_25
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@28
    move-result-object v0

    #@29
    const/4 v1, 0x6

    #@2a
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    #@2d
    goto :goto_36

    #@2e
    .line 609
    :cond_2e
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@31
    move-result-object v0

    #@32
    const/4 v1, 0x7

    #@33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    #@36
    :cond_36
    :goto_36
    return-void
.end method

.method private final removeInvisibleFragment()V
    .registers 3

    #@0
    .line 579
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    const-string v1, "InvisibleFragment"

    #@6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_1b

    #@c
    .line 581
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    #@1b
    :cond_1b
    return-void
.end method

.method private final restoreOrientation()V
    .registers 3

    #@0
    .line 591
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1a

    #@4
    if-eq v0, v1, :cond_f

    #@6
    .line 592
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@9
    move-result-object v0

    #@a
    iget v1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->originRequestOrientation:I

    #@c
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    #@f
    :cond_f
    return-void
.end method

.method private static final showHandlePermissionDialog$lambda-0(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V
    .registers 6

    #@0
    const-string p5, "$dialog"

    #@2
    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p5, "$chainTask"

    #@7
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p5, "$permissions"

    #@c
    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    const-string p5, "this$0"

    #@11
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@14
    .line 359
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->dismiss()V

    #@17
    if-eqz p1, :cond_1d

    #@19
    .line 361
    invoke-interface {p2, p3}, Lcom/permissionx/guolindev/request/ChainTask;->requestAgain(Ljava/util/List;)V

    #@1c
    goto :goto_20

    #@1d
    .line 363
    :cond_1d
    invoke-direct {p4, p3}, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardToSettings(Ljava/util/List;)V

    #@20
    :goto_20
    return-void
.end method

.method private static final showHandlePermissionDialog$lambda-1(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V
    .registers 3

    #@0
    const-string p2, "$dialog"

    #@2
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p2, "$chainTask"

    #@7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 369
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->dismiss()V

    #@d
    .line 370
    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@10
    return-void
.end method

.method private static final showHandlePermissionDialog$lambda-2(Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/content/DialogInterface;)V
    .registers 2

    #@0
    const-string p1, "this$0"

    #@2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    .line 374
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    #@8
    return-void
.end method

.method private static final showHandlePermissionDialog$lambda-3(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V
    .registers 6

    #@0
    const-string p5, "$dialogFragment"

    #@2
    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p5, "$chainTask"

    #@7
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p5, "$permissions"

    #@c
    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    const-string p5, "this$0"

    #@11
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@14
    .line 405
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->dismiss()V

    #@17
    if-eqz p1, :cond_1d

    #@19
    .line 407
    invoke-interface {p2, p3}, Lcom/permissionx/guolindev/request/ChainTask;->requestAgain(Ljava/util/List;)V

    #@1c
    goto :goto_20

    #@1d
    .line 409
    :cond_1d
    invoke-direct {p4, p3}, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardToSettings(Ljava/util/List;)V

    #@20
    :goto_20
    return-void
.end method

.method private static final showHandlePermissionDialog$lambda-4(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V
    .registers 3

    #@0
    const-string p2, "$dialogFragment"

    #@2
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p2, "$chainTask"

    #@7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 415
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->dismiss()V

    #@d
    .line 416
    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@10
    return-void
.end method

.method private final startRequest()V
    .registers 3

    #@0
    .line 560
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->lockOrientation()V

    #@3
    .line 563
    new-instance v0, Lcom/permissionx/guolindev/request/RequestChain;

    #@5
    invoke-direct {v0}, Lcom/permissionx/guolindev/request/RequestChain;-><init>()V

    #@8
    .line 564
    new-instance v1, Lcom/permissionx/guolindev/request/RequestNormalPermissions;

    #@a
    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestNormalPermissions;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@d
    check-cast v1, Lcom/permissionx/guolindev/request/BaseTask;

    #@f
    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    #@12
    .line 565
    new-instance v1, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;

    #@14
    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@17
    check-cast v1, Lcom/permissionx/guolindev/request/BaseTask;

    #@19
    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    #@1c
    .line 566
    new-instance v1, Lcom/permissionx/guolindev/request/RequestSystemAlertWindowPermission;

    #@1e
    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestSystemAlertWindowPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@21
    check-cast v1, Lcom/permissionx/guolindev/request/BaseTask;

    #@23
    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    #@26
    .line 567
    new-instance v1, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;

    #@28
    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@2b
    check-cast v1, Lcom/permissionx/guolindev/request/BaseTask;

    #@2d
    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    #@30
    .line 568
    new-instance v1, Lcom/permissionx/guolindev/request/RequestManageExternalStoragePermission;

    #@32
    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestManageExternalStoragePermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@35
    check-cast v1, Lcom/permissionx/guolindev/request/BaseTask;

    #@37
    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    #@3a
    .line 569
    new-instance v1, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;

    #@3c
    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@3f
    check-cast v1, Lcom/permissionx/guolindev/request/BaseTask;

    #@41
    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    #@44
    .line 570
    new-instance v1, Lcom/permissionx/guolindev/request/RequestNotificationPermission;

    #@46
    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestNotificationPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@49
    check-cast v1, Lcom/permissionx/guolindev/request/BaseTask;

    #@4b
    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    #@4e
    .line 571
    new-instance v1, Lcom/permissionx/guolindev/request/RequestBodySensorsBackgroundPermission;

    #@50
    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestBodySensorsBackgroundPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@53
    check-cast v1, Lcom/permissionx/guolindev/request/BaseTask;

    #@55
    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    #@58
    .line 572
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/RequestChain;->runTask$permissionx_release()V

    #@5b
    return-void
.end method


# virtual methods
.method public final endRequest$permissionx_release()V
    .registers 1

    #@0
    .line 627
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->removeInvisibleFragment()V

    #@3
    .line 629
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->restoreOrientation()V

    #@6
    return-void
.end method

.method public final explainReasonBeforeRequest()Lcom/permissionx/guolindev/request/PermissionBuilder;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 261
    iput-boolean v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonBeforeRequest:Z

    #@3
    return-object p0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 2

    #@0
    .line 54
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->activity:Landroidx/fragment/app/FragmentActivity;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    :cond_5
    const-string v0, "activity"

    #@7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@a
    const/4 v0, 0x0

    #@b
    return-object v0
.end method

.method public final getTargetSdkVersion()I
    .registers 2

    #@0
    .line 211
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a
    return v0
.end method

.method public final onExplainRequestReason(Lcom/permissionx/guolindev/callback/ExplainReasonCallback;)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .registers 2

    #@0
    .line 222
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    #@2
    return-object p0
.end method

.method public final onExplainRequestReason(Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .registers 2

    #@0
    .line 236
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    #@2
    return-object p0
.end method

.method public final onForwardToSettings(Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .registers 2

    #@0
    .line 250
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;

    #@2
    return-object p0
.end method

.method public final request(Lcom/permissionx/guolindev/callback/RequestCallback;)V
    .registers 2

    #@0
    .line 287
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestCallback:Lcom/permissionx/guolindev/callback/RequestCallback;

    #@2
    .line 288
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->startRequest()V

    #@5
    return-void
.end method

.method public final requestAccessBackgroundLocationPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .registers 3

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 437
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestAccessBackgroundLocationPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@c
    return-void
.end method

.method public final requestBodySensorsBackgroundPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .registers 3

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 491
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestBodySensorsBackgroundPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@c
    return-void
.end method

.method public final requestInstallPackagePermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .registers 3

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 473
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestInstallPackagesPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@c
    return-void
.end method

.method public final requestManageExternalStoragePermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .registers 3

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 464
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestManageExternalStoragePermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@c
    return-void
.end method

.method public final requestNotificationPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .registers 3

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 482
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestNotificationPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@c
    return-void
.end method

.method public final requestNow(Ljava/util/Set;Lcom/permissionx/guolindev/request/ChainTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/permissionx/guolindev/request/ChainTask;",
            ")V"
        }
    .end annotation

    #@0
    const-string v0, "permissions"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "chainTask"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 428
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p0, p1, p2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Ljava/util/Set;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@11
    return-void
.end method

.method public final requestSystemAlertWindowPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .registers 3

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 446
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestSystemAlertWindowPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@c
    return-void
.end method

.method public final requestWriteSettingsPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .registers 3

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 455
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getInvisibleFragment()Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestWriteSettingsPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@c
    return-void
.end method

.method public final setActivity(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    #@0
    const-string v0, "<set-?>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 54
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->activity:Landroidx/fragment/app/FragmentActivity;

    #@7
    return-void
.end method

.method public final setDialogTintColor(II)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .registers 3

    #@0
    .line 276
    iput p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->lightColor:I

    #@2
    .line 277
    iput p2, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->darkColor:I

    #@4
    return-object p0
.end method

.method public final shouldRequestBackgroundLocationPermission()Z
    .registers 3

    #@0
    .line 500
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@2
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final shouldRequestBodySensorsBackgroundPermission()Z
    .registers 3

    #@0
    .line 554
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@2
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final shouldRequestInstallPackagesPermission()Z
    .registers 3

    #@0
    .line 536
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@2
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final shouldRequestManageExternalStoragePermission()Z
    .registers 3

    #@0
    .line 527
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@2
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final shouldRequestNotificationPermission()Z
    .registers 3

    #@0
    .line 545
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@2
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final shouldRequestSystemAlertWindowPermission()Z
    .registers 3

    #@0
    .line 509
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@2
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final shouldRequestWriteSettingsPermission()Z
    .registers 3

    #@0
    .line 518
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    #@2
    const-string v1, "android.permission.WRITE_SETTINGS"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final showHandlePermissionDialog(Lcom/permissionx/guolindev/request/ChainTask;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V
    .registers 14

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "dialog"

    #@7
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const/4 v0, 0x1

    #@b
    .line 339
    iput-boolean v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->showDialogCalled:Z

    #@d
    .line 340
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->getPermissionsToRequest()Ljava/util/List;

    #@10
    move-result-object v5

    #@11
    const-string v1, "dialog.permissionsToRequest"

    #@13
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@16
    .line 341
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_20

    #@1c
    .line 342
    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@1f
    return-void

    #@20
    .line 345
    :cond_20
    move-object v1, p3

    #@21
    check-cast v1, Landroid/app/Dialog;

    #@23
    iput-object v1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    #@25
    .line 346
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->show()V

    #@28
    .line 347
    instance-of v1, p3, Lcom/permissionx/guolindev/dialog/DefaultDialog;

    #@2a
    if-eqz v1, :cond_3b

    #@2c
    move-object v1, p3

    #@2d
    check-cast v1, Lcom/permissionx/guolindev/dialog/DefaultDialog;

    #@2f
    invoke-virtual {v1}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->isPermissionLayoutEmpty$permissionx_release()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_3b

    #@35
    .line 350
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->dismiss()V

    #@38
    .line 351
    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@3b
    .line 353
    :cond_3b
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->getPositiveButton()Landroid/view/View;

    #@3e
    move-result-object v7

    #@3f
    const-string v1, "dialog.positiveButton"

    #@41
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@44
    .line 354
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->getNegativeButton()Landroid/view/View;

    #@47
    move-result-object v8

    #@48
    const/4 v1, 0x0

    #@49
    .line 355
    invoke-virtual {p3, v1}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->setCancelable(Z)V

    #@4c
    .line 356
    invoke-virtual {p3, v1}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->setCanceledOnTouchOutside(Z)V

    #@4f
    .line 357
    invoke-virtual {v7, v0}, Landroid/view/View;->setClickable(Z)V

    #@52
    .line 358
    new-instance v9, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda2;

    #@54
    move-object v1, v9

    #@55
    move-object v2, p3

    #@56
    move v3, p2

    #@57
    move-object v4, p1

    #@58
    move-object v6, p0

    #@59
    invoke-direct/range {v1 .. v6}, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@5c
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5f
    if-eqz v8, :cond_6c

    #@61
    .line 367
    invoke-virtual {v8, v0}, Landroid/view/View;->setClickable(Z)V

    #@64
    .line 368
    new-instance p2, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda3;

    #@66
    invoke-direct {p2, p3, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@69
    invoke-virtual {v8, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@6c
    .line 373
    :cond_6c
    iget-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    #@6e
    if-eqz p1, :cond_78

    #@70
    new-instance p2, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda4;

    #@72
    invoke-direct {p2, p0}, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda4;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@75
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@78
    :cond_78
    return-void
.end method

.method public final showHandlePermissionDialog(Lcom/permissionx/guolindev/request/ChainTask;ZLcom/permissionx/guolindev/dialog/RationaleDialogFragment;)V
    .registers 14

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "dialogFragment"

    #@7
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const/4 v0, 0x1

    #@b
    .line 393
    iput-boolean v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->showDialogCalled:Z

    #@d
    .line 394
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->getPermissionsToRequest()Ljava/util/List;

    #@10
    move-result-object v5

    #@11
    const-string v1, "dialogFragment.permissionsToRequest"

    #@13
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@16
    .line 395
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_20

    #@1c
    .line 396
    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    #@1f
    return-void

    #@20
    .line 399
    :cond_20
    invoke-direct {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@23
    move-result-object v1

    #@24
    const-string v2, "PermissionXRationaleDialogFragment"

    #@26
    invoke-virtual {p3, v1, v2}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    #@29
    .line 400
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->getPositiveButton()Landroid/view/View;

    #@2c
    move-result-object v7

    #@2d
    const-string v1, "dialogFragment.positiveButton"

    #@2f
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@32
    .line 401
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->getNegativeButton()Landroid/view/View;

    #@35
    move-result-object v8

    #@36
    const/4 v1, 0x0

    #@37
    .line 402
    invoke-virtual {p3, v1}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->setCancelable(Z)V

    #@3a
    .line 403
    invoke-virtual {v7, v0}, Landroid/view/View;->setClickable(Z)V

    #@3d
    .line 404
    new-instance v9, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;

    #@3f
    move-object v1, v9

    #@40
    move-object v2, p3

    #@41
    move v3, p2

    #@42
    move-object v4, p1

    #@43
    move-object v6, p0

    #@44
    invoke-direct/range {v1 .. v6}, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    #@47
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@4a
    if-eqz v8, :cond_57

    #@4c
    .line 413
    invoke-virtual {v8, v0}, Landroid/view/View;->setClickable(Z)V

    #@4f
    .line 414
    new-instance p2, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda1;

    #@51
    invoke-direct {p2, p3, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@54
    invoke-virtual {v8, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@57
    :cond_57
    return-void
.end method

.method public final showHandlePermissionDialog(Lcom/permissionx/guolindev/request/ChainTask;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/permissionx/guolindev/request/ChainTask;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    const-string v0, "chainTask"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "permissions"

    #@7
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string v0, "message"

    #@c
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    const-string v0, "positiveText"

    #@11
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@14
    .line 312
    new-instance v0, Lcom/permissionx/guolindev/dialog/DefaultDialog;

    #@16
    .line 313
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@19
    move-result-object v1

    #@1a
    move-object v2, v1

    #@1b
    check-cast v2, Landroid/content/Context;

    #@1d
    .line 318
    iget v7, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->lightColor:I

    #@1f
    .line 319
    iget v8, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->darkColor:I

    #@21
    move-object v1, v0

    #@22
    move-object v3, p3

    #@23
    move-object v4, p4

    #@24
    move-object v5, p5

    #@25
    move-object v6, p6

    #@26
    .line 312
    invoke-direct/range {v1 .. v8}, Lcom/permissionx/guolindev/dialog/DefaultDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    #@29
    .line 321
    check-cast v0, Lcom/permissionx/guolindev/dialog/RationaleDialog;

    #@2b
    invoke-virtual {p0, p1, p2, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->showHandlePermissionDialog(Lcom/permissionx/guolindev/request/ChainTask;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V

    #@2e
    return-void
.end method
