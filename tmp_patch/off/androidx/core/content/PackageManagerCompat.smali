.class public final Landroidx/core/content/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/PackageManagerCompat$Api30Impl;,
        Landroidx/core/content/PackageManagerCompat$UnusedAppRestrictionsStatus;
    }
.end annotation


# static fields
.field public static final ACTION_PERMISSION_REVOCATION_SETTINGS:Ljava/lang/String; = "android.intent.action.AUTO_REVOKE_PERMISSIONS"

.field public static final LOG_TAG:Ljava/lang/String; = "PackageManagerCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static areUnusedAppRestrictionsAvailable(Landroid/content/pm/PackageManager;)Z
    .registers 6

    #@0
    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/16 v3, 0x1e

    #@6
    if-lt v0, v3, :cond_a

    #@8
    move v0, v1

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v0, v2

    #@b
    .line 203
    :goto_b
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d
    if-ge v4, v3, :cond_11

    #@f
    move v3, v1

    #@10
    goto :goto_12

    #@11
    :cond_11
    move v3, v2

    #@12
    .line 206
    :goto_12
    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    if-eqz p0, :cond_1a

    #@18
    move p0, v1

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move p0, v2

    #@1b
    :goto_1b
    if-nez v0, :cond_23

    #@1d
    if-eqz v3, :cond_22

    #@1f
    if-eqz p0, :cond_22

    #@21
    goto :goto_23

    #@22
    :cond_22
    move v1, v2

    #@23
    :cond_23
    :goto_23
    return v1
.end method

.method public static getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 5

    #@0
    .line 223
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.AUTO_REVOKE_PERMISSIONS"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "package"

    #@9
    const-string v2, "com.example"

    #@b
    const/4 v3, 0x0

    #@c
    .line 225
    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@13
    move-result-object v0

    #@14
    const/4 v1, 0x0

    #@15
    .line 228
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@18
    move-result-object v0

    #@19
    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_3b

    #@23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@29
    .line 234
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2b
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2d
    const-string v2, "android.permission.PACKAGE_VERIFICATION_AGENT"

    #@2f
    .line 235
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_36

    #@35
    goto :goto_1d

    #@36
    :cond_36
    if-eqz v3, :cond_39

    #@38
    return-object v3

    #@39
    :cond_39
    move-object v3, v1

    #@3a
    goto :goto_1d

    #@3b
    :cond_3b
    return-object v3
.end method

.method public static getUnusedAppRestrictionsStatus(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 137
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    #@3
    move-result-object v0

    #@4
    .line 140
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    #@7
    move-result v1

    #@8
    const-string v2, "PackageManagerCompat"

    #@a
    const/4 v3, 0x0

    #@b
    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    if-nez v1, :cond_1a

    #@11
    invoke-virtual {v0, v3}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    #@14
    const-string p0, "User is in locked direct boot mode"

    #@16
    .line 142
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    return-object v0

    #@1a
    .line 146
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Landroidx/core/content/PackageManagerCompat;->areUnusedAppRestrictionsAvailable(Landroid/content/pm/PackageManager;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2d

    #@24
    const/4 p0, 0x1

    #@25
    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object p0

    #@29
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    #@2c
    return-object v0

    #@2d
    .line 151
    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@30
    move-result-object v1

    #@31
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@33
    const/16 v4, 0x1e

    #@35
    if-ge v1, v4, :cond_40

    #@37
    .line 154
    invoke-virtual {v0, v3}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    #@3a
    const-string p0, "Target SDK version below API 30"

    #@3c
    .line 155
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    return-object v0

    #@40
    .line 160
    :cond_40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@42
    const/4 v3, 0x4

    #@43
    const/4 v5, 0x2

    #@44
    const/16 v6, 0x1f

    #@46
    if-lt v2, v6, :cond_61

    #@48
    .line 161
    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat$Api30Impl;->areUnusedAppRestrictionsEnabled(Landroid/content/Context;)Z

    #@4b
    move-result p0

    #@4c
    if-eqz p0, :cond_59

    #@4e
    if-lt v1, v6, :cond_51

    #@50
    const/4 v3, 0x5

    #@51
    .line 164
    :cond_51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object p0

    #@55
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    #@58
    goto :goto_60

    #@59
    .line 166
    :cond_59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object p0

    #@5d
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    #@60
    :goto_60
    return-object v0

    #@61
    .line 171
    :cond_61
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@63
    if-ne v1, v4, :cond_75

    #@65
    .line 173
    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat$Api30Impl;->areUnusedAppRestrictionsEnabled(Landroid/content/Context;)Z

    #@68
    move-result p0

    #@69
    if-eqz p0, :cond_6c

    #@6b
    goto :goto_6d

    #@6c
    :cond_6c
    move v3, v5

    #@6d
    :goto_6d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object p0

    #@71
    .line 172
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    #@74
    return-object v0

    #@75
    .line 179
    :cond_75
    new-instance v1, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    #@77
    invoke-direct {v1, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;-><init>(Landroid/content/Context;)V

    #@7a
    .line 185
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    new-instance p0, Landroidx/core/content/PackageManagerCompat$$ExternalSyntheticLambda0;

    #@7f
    invoke-direct {p0, v1}, Landroidx/core/content/PackageManagerCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V

    #@82
    .line 186
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@85
    move-result-object v2

    #@86
    .line 184
    invoke-virtual {v0, p0, v2}, Landroidx/concurrent/futures/ResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    #@89
    .line 189
    invoke-virtual {v1, v0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->connectAndFetchResult(Landroidx/concurrent/futures/ResolvableFuture;)V

    #@8c
    return-object v0
.end method
