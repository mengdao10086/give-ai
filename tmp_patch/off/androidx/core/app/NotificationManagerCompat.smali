.class public final Landroidx/core/app/NotificationManagerCompat;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationManagerCompat$CancelTask;,
        Landroidx/core/app/NotificationManagerCompat$NotifyTask;,
        Landroidx/core/app/NotificationManagerCompat$Task;,
        Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;,
        Landroidx/core/app/NotificationManagerCompat$SideChannelManager;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_SIDE_CHANNEL:Ljava/lang/String; = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field public static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field static final MAX_SIDE_CHANNEL_SDK_VERSION:I = 0x13

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field private static final SETTING_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS:I = 0x3e8

.field private static final SIDE_CHANNEL_RETRY_MAX_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NotifManCompat"

.field private static sEnabledNotificationListenerPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledNotificationListeners:Ljava/lang/String;

.field private static final sEnabledNotificationListenersLock:Ljava/lang/Object;

.field private static final sLock:Ljava/lang/Object;

.field private static sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 105
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    #@7
    .line 109
    new-instance v0, Ljava/util/HashSet;

    #@9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@c
    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    #@e
    .line 114
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    #@15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 165
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@5
    const-string v0, "notification"

    #@7
    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    check-cast p1, Landroid/app/NotificationManager;

    #@d
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@f
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;
    .registers 2

    #@0
    .line 161
    new-instance v0, Landroidx/core/app/NotificationManagerCompat;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public static getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object p0

    #@4
    const-string v0, "enabled_notification_listeners"

    #@6
    .line 654
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    .line 657
    sget-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    #@c
    monitor-enter v0

    #@d
    if-eqz p0, :cond_3e

    #@f
    .line 659
    :try_start_f
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    #@11
    .line 660
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_3e

    #@17
    const-string v1, ":"

    #@19
    const/4 v2, -0x1

    #@1a
    .line 661
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 662
    new-instance v2, Ljava/util/HashSet;

    #@20
    array-length v3, v1

    #@21
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    #@24
    .line 663
    array-length v3, v1

    #@25
    const/4 v4, 0x0

    #@26
    :goto_26
    if-ge v4, v3, :cond_3a

    #@28
    aget-object v5, v1, v4

    #@2a
    .line 664
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@2d
    move-result-object v5

    #@2e
    if-eqz v5, :cond_37

    #@30
    .line 666
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    :cond_37
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_26

    #@3a
    .line 669
    :cond_3a
    sput-object v2, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    #@3c
    .line 670
    sput-object p0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    #@3e
    .line 672
    :cond_3e
    sget-object p0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    #@40
    monitor-exit v0

    #@41
    return-object p0

    #@42
    :catchall_42
    move-exception p0

    #@43
    .line 673
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_42

    #@44
    throw p0
.end method

.method private pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V
    .registers 5

    #@0
    .line 688
    sget-object v0, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 689
    :try_start_3
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    #@5
    if-nez v1, :cond_14

    #@7
    .line 690
    new-instance v1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    #@9
    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    #@12
    sput-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    #@14
    .line 692
    :cond_14
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    #@16
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->queueTask(Landroidx/core/app/NotificationManagerCompat$Task;)V

    #@19
    .line 693
    monitor-exit v0

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception p1

    #@1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    #@1d
    throw p1
.end method

.method private static useSideChannelForNotification(Landroid/app/Notification;)Z
    .registers 2

    #@0
    .line 680
    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_10

    #@6
    const-string v0, "android.support.useSideChannel"

    #@8
    .line 681
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@b
    move-result p0

    #@c
    if-eqz p0, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p0, 0x0

    #@11
    :goto_11
    return p0
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .registers 2

    #@0
    .line 236
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public cancel(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 176
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    #@4
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .registers 4

    #@0
    .line 186
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public cancelAll()V
    .registers 2

    #@0
    .line 194
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    #@5
    return-void
.end method

.method public createNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 3

    #@0
    .line 295
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    #@5
    return-void
.end method

.method public createNotificationChannel(Landroidx/core/app/NotificationChannelCompat;)V
    .registers 2

    #@0
    .line 320
    invoke-virtual {p1}, Landroidx/core/app/NotificationChannelCompat;->getNotificationChannel()Landroid/app/NotificationChannel;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    #@7
    return-void
.end method

.method public createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V
    .registers 3

    #@0
    .line 334
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    #@5
    return-void
.end method

.method public createNotificationChannelGroup(Landroidx/core/app/NotificationChannelGroupCompat;)V
    .registers 2

    #@0
    .line 348
    invoke-virtual {p1}, Landroidx/core/app/NotificationChannelGroupCompat;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    #@7
    return-void
.end method

.method public createNotificationChannelGroups(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 394
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    #@5
    return-void
.end method

.method public createNotificationChannelGroupsCompat(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelGroupCompat;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 408
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_2c

    #@6
    .line 409
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object p1

    #@13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_27

    #@19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroidx/core/app/NotificationChannelGroupCompat;

    #@1f
    .line 411
    invoke-virtual {v1}, Landroidx/core/app/NotificationChannelGroupCompat;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_13

    #@27
    .line 413
    :cond_27
    iget-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@29
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    #@2c
    :cond_2c
    return-void
.end method

.method public createNotificationChannels(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 361
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    #@5
    return-void
.end method

.method public createNotificationChannelsCompat(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 375
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_2c

    #@6
    .line 376
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 377
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object p1

    #@13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_27

    #@19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroidx/core/app/NotificationChannelCompat;

    #@1f
    .line 378
    invoke-virtual {v1}, Landroidx/core/app/NotificationChannelCompat;->getNotificationChannel()Landroid/app/NotificationChannel;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_13

    #@27
    .line 380
    :cond_27
    iget-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@29
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    #@2c
    :cond_2c
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 428
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 440
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public deleteUnlistedNotificationChannels(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 455
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_3c

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/app/NotificationChannel;

    #@16
    .line 456
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_21

    #@20
    goto :goto_a

    #@21
    .line 459
    :cond_21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@23
    const/16 v3, 0x1e

    #@25
    if-lt v2, v3, :cond_32

    #@27
    .line 460
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_32

    #@31
    goto :goto_a

    #@32
    .line 463
    :cond_32
    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@34
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    #@3b
    goto :goto_a

    #@3c
    :cond_3c
    return-void
.end method

.method public getImportance()I
    .registers 2

    #@0
    .line 267
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getImportance()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 3

    #@0
    .line 476
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 5

    #@0
    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 509
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    .line 511
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    #@10
    move-result-object p1

    #@11
    return-object p1
.end method

.method public getNotificationChannelCompat(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;
    .registers 3

    #@0
    .line 489
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_c

    #@6
    .line 491
    new-instance v0, Landroidx/core/app/NotificationChannelCompat;

    #@8
    invoke-direct {v0, p1}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    #@b
    return-object v0

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    return-object p1
.end method

.method public getNotificationChannelCompat(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;
    .registers 3

    #@0
    .line 526
    invoke-virtual {p0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_c

    #@6
    .line 528
    new-instance p2, Landroidx/core/app/NotificationChannelCompat;

    #@8
    invoke-direct {p2, p1}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    #@b
    return-object p2

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    return-object p1
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 5

    #@0
    .line 541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 542
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    .line 545
    :cond_d
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroups()Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v0

    #@15
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2c

    #@1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/app/NotificationChannelGroup;

    #@21
    .line 546
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_15

    #@2b
    return-object v1

    #@2c
    :cond_2c
    const/4 p1, 0x0

    #@2d
    return-object p1
.end method

.method public getNotificationChannelGroupCompat(Ljava/lang/String;)Landroidx/core/app/NotificationChannelGroupCompat;
    .registers 4

    #@0
    .line 563
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_12

    #@6
    .line 564
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_22

    #@c
    .line 566
    new-instance v0, Landroidx/core/app/NotificationChannelGroupCompat;

    #@e
    invoke-direct {v0, p1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;)V

    #@11
    return-object v0

    #@12
    .line 569
    :cond_12
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    #@15
    move-result-object p1

    #@16
    if-eqz p1, :cond_22

    #@18
    .line 571
    new-instance v0, Landroidx/core/app/NotificationChannelGroupCompat;

    #@1a
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    #@21
    return-object v0

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    return-object p1
.end method

.method public getNotificationChannelGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    #@0
    .line 616
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNotificationChannelGroupsCompat()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelGroupCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 629
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroups()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 630
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_49

    #@a
    .line 632
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v2, 0x1c

    #@e
    if-lt v1, v2, :cond_15

    #@10
    .line 633
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@13
    move-result-object v1

    #@14
    goto :goto_19

    #@15
    .line 634
    :cond_15
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    .line 635
    :goto_19
    new-instance v3, Ljava/util/ArrayList;

    #@1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1e
    move-result v4

    #@1f
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@22
    .line 636
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v0

    #@26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_48

    #@2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Landroid/app/NotificationChannelGroup;

    #@32
    .line 637
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@34
    if-lt v5, v2, :cond_3f

    #@36
    .line 638
    new-instance v5, Landroidx/core/app/NotificationChannelGroupCompat;

    #@38
    invoke-direct {v5, v4}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;)V

    #@3b
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_26

    #@3f
    .line 640
    :cond_3f
    new-instance v5, Landroidx/core/app/NotificationChannelGroupCompat;

    #@41
    invoke-direct {v5, v4, v1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    #@44
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_26

    #@48
    :cond_48
    return-object v3

    #@49
    .line 646
    :cond_49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@4c
    move-result-object v0

    #@4d
    return-object v0
.end method

.method public getNotificationChannels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    #@0
    .line 584
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNotificationChannelsCompat()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 597
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 598
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_2d

    #@a
    .line 599
    new-instance v1, Ljava/util/ArrayList;

    #@c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    .line 600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v0

    #@17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2c

    #@1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/app/NotificationChannel;

    #@23
    .line 601
    new-instance v3, Landroidx/core/app/NotificationChannelCompat;

    #@25
    invoke-direct {v3, v2}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    #@28
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_17

    #@2c
    :cond_2c
    return-object v1

    #@2d
    .line 606
    :cond_2d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

.method public notify(ILandroid/app/Notification;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 208
    invoke-virtual {p0, v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@4
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 6

    #@0
    .line 221
    invoke-static {p3}, Landroidx/core/app/NotificationManagerCompat;->useSideChannelForNotification(Landroid/app/Notification;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1a

    #@6
    .line 222
    new-instance v0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;

    #@8
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1, p2, p1, p3}, Landroidx/core/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    #@11
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V

    #@14
    .line 225
    iget-object p3, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@16
    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@19
    goto :goto_1f

    #@1a
    .line 227
    :cond_1a
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@1c
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@1f
    :goto_1f
    return-void
.end method
