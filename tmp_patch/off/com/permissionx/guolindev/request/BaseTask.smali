.class public abstract Lcom/permissionx/guolindev/request/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.kt"

# interfaces
.implements Lcom/permissionx/guolindev/request/ChainTask;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008 \u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/BaseTask;",
        "Lcom/permissionx/guolindev/request/ChainTask;",
        "pb",
        "Lcom/permissionx/guolindev/request/PermissionBuilder;",
        "(Lcom/permissionx/guolindev/request/PermissionBuilder;)V",
        "explainReasonScope",
        "Lcom/permissionx/guolindev/request/ExplainScope;",
        "forwardToSettingsScope",
        "Lcom/permissionx/guolindev/request/ForwardScope;",
        "next",
        "finish",
        "",
        "getExplainScope",
        "getForwardScope",
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


# instance fields
.field private explainReasonScope:Lcom/permissionx/guolindev/request/ExplainScope;

.field private forwardToSettingsScope:Lcom/permissionx/guolindev/request/ForwardScope;

.field public next:Lcom/permissionx/guolindev/request/ChainTask;

.field public pb:Lcom/permissionx/guolindev/request/PermissionBuilder;


# direct methods
.method public constructor <init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V
    .registers 4

    #@0
    const-string v0, "pb"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object p1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@a
    .line 41
    new-instance p1, Lcom/permissionx/guolindev/request/ExplainScope;

    #@c
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@e
    move-object v1, p0

    #@f
    check-cast v1, Lcom/permissionx/guolindev/request/ChainTask;

    #@11
    invoke-direct {p1, v0, v1}, Lcom/permissionx/guolindev/request/ExplainScope;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@14
    iput-object p1, p0, Lcom/permissionx/guolindev/request/BaseTask;->explainReasonScope:Lcom/permissionx/guolindev/request/ExplainScope;

    #@16
    .line 46
    new-instance p1, Lcom/permissionx/guolindev/request/ForwardScope;

    #@18
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@1a
    invoke-direct {p1, v0, v1}, Lcom/permissionx/guolindev/request/ForwardScope;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@1d
    iput-object p1, p0, Lcom/permissionx/guolindev/request/BaseTask;->forwardToSettingsScope:Lcom/permissionx/guolindev/request/ForwardScope;

    #@1f
    .line 125
    new-instance p1, Lcom/permissionx/guolindev/request/ExplainScope;

    #@21
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@23
    invoke-direct {p1, v0, v1}, Lcom/permissionx/guolindev/request/ExplainScope;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@26
    iput-object p1, p0, Lcom/permissionx/guolindev/request/BaseTask;->explainReasonScope:Lcom/permissionx/guolindev/request/ExplainScope;

    #@28
    .line 126
    new-instance p1, Lcom/permissionx/guolindev/request/ForwardScope;

    #@2a
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2c
    invoke-direct {p1, v0, v1}, Lcom/permissionx/guolindev/request/ForwardScope;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    #@2f
    iput-object p1, p0, Lcom/permissionx/guolindev/request/BaseTask;->forwardToSettingsScope:Lcom/permissionx/guolindev/request/ForwardScope;

    #@31
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 6

    #@0
    .line 54
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->next:Lcom/permissionx/guolindev/request/ChainTask;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-interface {v0}, Lcom/permissionx/guolindev/request/ChainTask;->request()V

    #@7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-nez v0, :cond_16d

    #@d
    move-object v0, p0

    #@e
    check-cast v0, Lcom/permissionx/guolindev/request/BaseTask;

    #@10
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    check-cast v0, Ljava/util/List;

    #@17
    .line 57
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@19
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    #@1b
    check-cast v1, Ljava/util/Collection;

    #@1d
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@20
    .line 58
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@22
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    #@24
    check-cast v1, Ljava/util/Collection;

    #@26
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@29
    .line 59
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@2b
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->permissionsWontRequest:Ljava/util/Set;

    #@2d
    check-cast v1, Ljava/util/Collection;

    #@2f
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@32
    .line 60
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@34
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestBackgroundLocationPermission()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_55

    #@3a
    .line 61
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@3c
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Landroid/content/Context;

    #@42
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    #@44
    invoke-static {v1, v2}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_52

    #@4a
    .line 62
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@4c
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@4e
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@51
    goto :goto_55

    #@52
    .line 64
    :cond_52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@55
    .line 67
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@57
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestSystemAlertWindowPermission()Z

    #@5a
    move-result v1

    #@5b
    const/16 v2, 0x17

    #@5d
    if-eqz v1, :cond_82

    #@5f
    .line 68
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@61
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getTargetSdkVersion()I

    #@64
    move-result v1

    #@65
    if-lt v1, v2, :cond_82

    #@67
    .line 69
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@69
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@6c
    move-result-object v1

    #@6d
    check-cast v1, Landroid/content/Context;

    #@6f
    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    #@72
    move-result v1

    #@73
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    #@75
    if-eqz v1, :cond_7f

    #@77
    .line 70
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@79
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@7b
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7e
    goto :goto_82

    #@7f
    .line 72
    :cond_7f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@82
    .line 75
    :cond_82
    :goto_82
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@84
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestWriteSettingsPermission()Z

    #@87
    move-result v1

    #@88
    if-eqz v1, :cond_ad

    #@8a
    .line 76
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@8c
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getTargetSdkVersion()I

    #@8f
    move-result v1

    #@90
    if-lt v1, v2, :cond_ad

    #@92
    .line 77
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@94
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@97
    move-result-object v1

    #@98
    check-cast v1, Landroid/content/Context;

    #@9a
    invoke-static {v1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    #@9d
    move-result v1

    #@9e
    const-string v2, "android.permission.WRITE_SETTINGS"

    #@a0
    if-eqz v1, :cond_aa

    #@a2
    .line 78
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@a4
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@a6
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a9
    goto :goto_ad

    #@aa
    .line 80
    :cond_aa
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ad
    .line 83
    :cond_ad
    :goto_ad
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@af
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestManageExternalStoragePermission()Z

    #@b2
    move-result v1

    #@b3
    if-eqz v1, :cond_ce

    #@b5
    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@b7
    const/16 v2, 0x1e

    #@b9
    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    #@bb
    if-lt v1, v2, :cond_cb

    #@bd
    .line 85
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    #@c0
    move-result v1

    #@c1
    if-eqz v1, :cond_cb

    #@c3
    .line 86
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@c5
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@c7
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ca
    goto :goto_ce

    #@cb
    .line 88
    :cond_cb
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ce
    .line 91
    :cond_ce
    :goto_ce
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@d0
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestInstallPackagesPermission()Z

    #@d3
    move-result v1

    #@d4
    if-eqz v1, :cond_101

    #@d6
    .line 92
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@d8
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getTargetSdkVersion()I

    #@db
    move-result v1

    #@dc
    const/16 v2, 0x1a

    #@de
    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    #@e0
    if-lt v1, v2, :cond_fe

    #@e2
    .line 93
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@e4
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@e7
    move-result-object v1

    #@e8
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@eb
    move-result-object v1

    #@ec
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    #@ef
    move-result v1

    #@f0
    if-eqz v1, :cond_fa

    #@f2
    .line 94
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@f4
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@f6
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f9
    goto :goto_101

    #@fa
    .line 96
    :cond_fa
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@fd
    goto :goto_101

    #@fe
    .line 99
    :cond_fe
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@101
    .line 102
    :cond_101
    :goto_101
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@103
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestNotificationPermission()Z

    #@106
    move-result v1

    #@107
    if-eqz v1, :cond_124

    #@109
    .line 103
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@10b
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@10e
    move-result-object v1

    #@10f
    check-cast v1, Landroid/content/Context;

    #@111
    invoke-static {v1}, Lcom/permissionx/guolindev/PermissionX;->areNotificationsEnabled(Landroid/content/Context;)Z

    #@114
    move-result v1

    #@115
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    #@117
    if-eqz v1, :cond_121

    #@119
    .line 104
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@11b
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@11d
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@120
    goto :goto_124

    #@121
    .line 106
    :cond_121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@124
    .line 109
    :cond_124
    :goto_124
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@126
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestBodySensorsBackgroundPermission()Z

    #@129
    move-result v1

    #@12a
    if-eqz v1, :cond_147

    #@12c
    .line 110
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@12e
    invoke-virtual {v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@131
    move-result-object v1

    #@132
    check-cast v1, Landroid/content/Context;

    #@134
    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    #@136
    invoke-static {v1, v2}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    #@139
    move-result v1

    #@13a
    if-eqz v1, :cond_144

    #@13c
    .line 111
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@13e
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@140
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@143
    goto :goto_147

    #@144
    .line 113
    :cond_144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@147
    .line 116
    :cond_147
    :goto_147
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@149
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestCallback:Lcom/permissionx/guolindev/callback/RequestCallback;

    #@14b
    if-eqz v1, :cond_168

    #@14d
    .line 117
    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@14f
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestCallback:Lcom/permissionx/guolindev/callback/RequestCallback;

    #@151
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@157
    move-result v2

    #@158
    new-instance v3, Ljava/util/ArrayList;

    #@15a
    iget-object v4, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@15c
    iget-object v4, v4, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    #@15e
    check-cast v4, Ljava/util/Collection;

    #@160
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@163
    check-cast v3, Ljava/util/List;

    #@165
    invoke-interface {v1, v2, v3, v0}, Lcom/permissionx/guolindev/callback/RequestCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    #@168
    .line 120
    :cond_168
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@16a
    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->endRequest$permissionx_release()V

    #@16d
    :cond_16d
    return-void
.end method

.method public getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;
    .registers 2

    #@0
    .line 48
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->explainReasonScope:Lcom/permissionx/guolindev/request/ExplainScope;

    #@2
    return-object v0
.end method

.method public getForwardScope()Lcom/permissionx/guolindev/request/ForwardScope;
    .registers 2

    #@0
    .line 50
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->forwardToSettingsScope:Lcom/permissionx/guolindev/request/ForwardScope;

    #@2
    return-object v0
.end method
