.class public Landroidx/core/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/ContextCompat$Api33Impl;,
        Landroidx/core/content/ContextCompat$Api30Impl;,
        Landroidx/core/content/ContextCompat$Api28Impl;,
        Landroidx/core/content/ContextCompat$Api26Impl;,
        Landroidx/core/content/ContextCompat$Api24Impl;,
        Landroidx/core/content/ContextCompat$Api23Impl;,
        Landroidx/core/content/ContextCompat$Api21Impl;,
        Landroidx/core/content/ContextCompat$Api19Impl;,
        Landroidx/core/content/ContextCompat$Api16Impl;,
        Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;,
        Landroidx/core/content/ContextCompat$RegisterReceiverFlags;
    }
.end annotation


# static fields
.field private static final DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION_SUFFIX:Ljava/lang/String; = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

.field public static final RECEIVER_EXPORTED:I = 0x2

.field public static final RECEIVER_NOT_EXPORTED:I = 0x4

.field public static final RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContextCompat"

.field private static final sLock:Ljava/lang/Object;

.field private static final sSync:Ljava/lang/Object;

.field private static sTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 172
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    #@7
    .line 175
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Landroidx/core/content/ContextCompat;->sSync:Ljava/lang/Object;

    #@e
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    #@0
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    #@0
    const-string v0, "permission must be non-null"

    #@2
    .line 594
    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 595
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_21

    #@b
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    #@d
    .line 596
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_21

    #@13
    .line 597
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    #@1a
    move-result p0

    #@1b
    if-eqz p0, :cond_1f

    #@1d
    const/4 p0, 0x0

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 p0, -0x1

    #@20
    :goto_20
    return p0

    #@21
    .line 601
    :cond_21
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@24
    move-result v0

    #@25
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@28
    move-result v1

    #@29
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@2c
    move-result p0

    #@2d
    return p0
.end method

.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    #@0
    .line 705
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api24Impl;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static createFilesDir(Ljava/io/File;)Ljava/io/File;
    .registers 5

    #@0
    const-string v0, "Unable to create files subdir "

    #@2
    .line 657
    sget-object v1, Landroidx/core/content/ContextCompat;->sSync:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 658
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_29

    #@b
    .line 659
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_13

    #@11
    .line 660
    monitor-exit v1

    #@12
    return-object p0

    #@13
    :cond_13
    const-string v2, "ContextCompat"

    #@15
    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 667
    :cond_29
    monitor-exit v1

    #@2a
    return-object p0

    #@2b
    :catchall_2b
    move-exception p0

    #@2c
    .line 668
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    #@2d
    throw p0
.end method

.method public static getAttributionTag(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    #@0
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 197
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api30Impl;->getAttributionTag(Landroid/content/Context;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    return-object p0
.end method

.method public static getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    #@0
    .line 645
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api21Impl;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .registers 2

    #@0
    .line 578
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object p0

    #@8
    invoke-static {v0, p1, p0}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    #@0
    .line 342
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api24Impl;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 522
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 1

    #@0
    .line 501
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api19Impl;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    #@0
    .line 448
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api19Impl;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .registers 3

    #@0
    .line 732
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 733
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api28Impl;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 735
    :cond_b
    new-instance v0, Landroid/os/Handler;

    #@d
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@10
    move-result-object p0

    #@11
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@14
    invoke-static {v0}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    #@17
    move-result-object p0

    #@18
    return-object p0
.end method

.method public static getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    #@0
    .line 620
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api21Impl;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 1

    #@0
    .line 395
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api19Impl;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    .line 768
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api23Impl;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 870
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api23Impl;->getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .registers 1

    #@0
    .line 719
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api24Impl;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static obtainAndCheckReceiverPermission(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    #@0
    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 885
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 886
    invoke-static {p0, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    #@1a
    move-result p0

    #@1b
    if-nez p0, :cond_1e

    #@1d
    return-object v0

    #@1e
    .line 888
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    const-string v2, "Permission "

    #@24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string v1, " is required by your application to receive broadcasts, please add it to your manifest"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw p0
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v5, p3

    #@6
    .line 793
    invoke-static/range {v0 .. v5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 12

    #@0
    and-int/lit8 v0, p5, 0x1

    #@2
    if-eqz v0, :cond_11

    #@4
    and-int/lit8 v1, p5, 0x4

    #@6
    if-nez v1, :cond_9

    #@8
    goto :goto_11

    #@9
    .line 824
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string p1, "Cannot specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED"

    #@d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw p0

    #@11
    :cond_11
    :goto_11
    if-eqz v0, :cond_15

    #@13
    or-int/lit8 p5, p5, 0x2

    #@15
    :cond_15
    move v5, p5

    #@16
    and-int/lit8 p5, v5, 0x2

    #@18
    if-nez p5, :cond_27

    #@1a
    and-int/lit8 v0, v5, 0x4

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    goto :goto_27

    #@1f
    .line 833
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string p1, "One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required"

    #@23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw p0

    #@27
    :cond_27
    :goto_27
    if-eqz p5, :cond_36

    #@29
    and-int/lit8 p5, v5, 0x4

    #@2b
    if-nez p5, :cond_2e

    #@2d
    goto :goto_36

    #@2e
    .line 838
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@30
    const-string p1, "Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED"

    #@32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw p0

    #@36
    .line 842
    :cond_36
    :goto_36
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@39
    move-result p5

    #@3a
    if-eqz p5, :cond_46

    #@3c
    move-object v0, p0

    #@3d
    move-object v1, p1

    #@3e
    move-object v2, p2

    #@3f
    move-object v3, p3

    #@40
    move-object v4, p4

    #@41
    .line 843
    invoke-static/range {v0 .. v5}, Landroidx/core/content/ContextCompat$Api33Impl;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    #@44
    move-result-object p0

    #@45
    return-object p0

    #@46
    :cond_46
    move-object v0, p0

    #@47
    move-object v1, p1

    #@48
    move-object v2, p2

    #@49
    move-object v3, p3

    #@4a
    move-object v4, p4

    #@4b
    .line 847
    invoke-static/range {v0 .. v5}, Landroidx/core/content/ContextCompat$Api26Impl;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    #@4e
    move-result-object p0

    #@4f
    return-object p0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 258
    invoke-static {p0, p1, v0}, Landroidx/core/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 3

    #@0
    .line 291
    invoke-static {p0, p1, p2}, Landroidx/core/content/ContextCompat$Api16Impl;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    #@3
    const/4 p0, 0x1

    #@4
    return p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 318
    invoke-static {p0, p1, p2}, Landroidx/core/content/ContextCompat$Api16Impl;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    #@0
    .line 749
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api26Impl;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    #@3
    return-void
.end method
