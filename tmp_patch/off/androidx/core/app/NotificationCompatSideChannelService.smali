.class public abstract Landroidx/core/app/NotificationCompatSideChannelService;
.super Landroid/app/Service;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract cancelAll(Ljava/lang/String;)V
.end method

.method checkPermission(ILjava/lang/String;)V
    .registers 7

    #@0
    .line 114
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatSideChannelService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    array-length v1, v0

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v1, :cond_18

    #@c
    aget-object v3, v0, v2

    #@e
    .line 115
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_15

    #@14
    return-void

    #@15
    :cond_15
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_a

    #@18
    .line 119
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    const-string v2, "NotificationSideChannelService: Uid "

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object p1

    #@25
    const-string v1, " is not authorized for package "

    #@27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p1

    #@2b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object p1

    #@2f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object p1

    #@33
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method

.method public abstract notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    #@0
    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    const-string v0, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    const/4 p1, 0x0

    #@a
    return-object p1
.end method
