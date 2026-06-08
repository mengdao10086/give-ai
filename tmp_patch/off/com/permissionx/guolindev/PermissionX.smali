.class public Lcom/permissionx/guolindev/PermissionX;
.super Ljava/lang/Object;
.source "PermissionX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/permissionx/guolindev/PermissionX$permission;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static areNotificationsEnabled(Landroid/content/Context;)Z
    .registers 1

    #@0
    .line 83
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static init(Landroidx/fragment/app/Fragment;)Lcom/permissionx/guolindev/PermissionMediator;
    .registers 2

    #@0
    .line 62
    new-instance v0, Lcom/permissionx/guolindev/PermissionMediator;

    #@2
    invoke-direct {v0, p0}, Lcom/permissionx/guolindev/PermissionMediator;-><init>(Landroidx/fragment/app/Fragment;)V

    #@5
    return-object v0
.end method

.method public static init(Landroidx/fragment/app/FragmentActivity;)Lcom/permissionx/guolindev/PermissionMediator;
    .registers 2

    #@0
    .line 52
    new-instance v0, Lcom/permissionx/guolindev/PermissionMediator;

    #@2
    invoke-direct {v0, p0}, Lcom/permissionx/guolindev/PermissionMediator;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    #@5
    return-object v0
.end method

.method public static isGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 73
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    #@3
    move-result p0

    #@4
    if-nez p0, :cond_8

    #@6
    const/4 p0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    :goto_9
    return p0
.end method
