.class final Landroidx/core/app/ActivityRecreator;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityRecreator"

.field protected static final activityThreadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mainHandler:Landroid/os/Handler;

.field protected static final mainThreadField:Ljava/lang/reflect/Field;

.field protected static final performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

.field protected static final tokenField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 91
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    sput-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    #@b
    .line 94
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getActivityThreadClass()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    #@11
    .line 95
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getMainThreadField()Ljava/lang/reflect/Field;

    #@14
    move-result-object v1

    #@15
    sput-object v1, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    #@17
    .line 96
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getTokenField()Ljava/lang/reflect/Field;

    #@1a
    move-result-object v1

    #@1b
    sput-object v1, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    #@1d
    .line 97
    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@20
    move-result-object v1

    #@21
    sput-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    #@23
    .line 98
    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@26
    move-result-object v1

    #@27
    sput-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    #@29
    .line 99
    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2c
    move-result-object v0

    #@2d
    sput-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    #@2f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getActivityThreadClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    #@0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    #@2
    .line 378
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    #@6
    return-object v0

    #@7
    :catchall_7
    const/4 v0, 0x0

    #@8
    return-object v0
.end method

.method private static getMainThreadField()Ljava/lang/reflect/Field;
    .registers 2

    #@0
    .line 358
    :try_start_0
    const-class v0, Landroid/app/Activity;

    #@2
    const-string v1, "mMainThread"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    #@c
    return-object v0

    #@d
    :catchall_d
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method private static getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    #@6
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/Class;

    #@9
    .line 320
    const-class v3, Landroid/os/IBinder;

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v2, v4

    #@e
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@10
    const/4 v4, 0x1

    #@11
    aput-object v3, v2, v4

    #@13
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    move-result-object p0

    #@17
    .line 322
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    #@1a
    return-object p0

    #@1b
    :catchall_1b
    return-object v0
.end method

.method private static getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    #@6
    const/4 v2, 0x3

    #@7
    new-array v2, v2, [Ljava/lang/Class;

    #@9
    .line 306
    const-class v3, Landroid/os/IBinder;

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v2, v4

    #@e
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@10
    const/4 v4, 0x1

    #@11
    aput-object v3, v2, v4

    #@13
    const-class v3, Ljava/lang/String;

    #@15
    const/4 v5, 0x2

    #@16
    aput-object v3, v2, v5

    #@18
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1b
    move-result-object p0

    #@1c
    .line 308
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    #@1f
    return-object p0

    #@20
    :catchall_20
    return-object v0
.end method

.method private static getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .line 334
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_46

    #@7
    if-nez p0, :cond_a

    #@9
    goto :goto_46

    #@a
    :cond_a
    :try_start_a
    const-string v0, "requestRelaunchActivity"

    #@c
    const/16 v2, 0x9

    #@e
    new-array v2, v2, [Ljava/lang/Class;

    #@10
    .line 338
    const-class v3, Landroid/os/IBinder;

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v3, v2, v4

    #@15
    const-class v3, Ljava/util/List;

    #@17
    const/4 v4, 0x1

    #@18
    aput-object v3, v2, v4

    #@1a
    const-class v3, Ljava/util/List;

    #@1c
    const/4 v5, 0x2

    #@1d
    aput-object v3, v2, v5

    #@1f
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@21
    const/4 v5, 0x3

    #@22
    aput-object v3, v2, v5

    #@24
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@26
    const/4 v5, 0x4

    #@27
    aput-object v3, v2, v5

    #@29
    const-class v3, Landroid/content/res/Configuration;

    #@2b
    const/4 v5, 0x5

    #@2c
    aput-object v3, v2, v5

    #@2e
    const-class v3, Landroid/content/res/Configuration;

    #@30
    const/4 v5, 0x6

    #@31
    aput-object v3, v2, v5

    #@33
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@35
    const/4 v5, 0x7

    #@36
    aput-object v3, v2, v5

    #@38
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@3a
    const/16 v5, 0x8

    #@3c
    aput-object v3, v2, v5

    #@3e
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@41
    move-result-object p0

    #@42
    .line 349
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_46

    #@45
    return-object p0

    #@46
    :catchall_46
    :cond_46
    :goto_46
    return-object v1
.end method

.method private static getTokenField()Ljava/lang/reflect/Field;
    .registers 2

    #@0
    .line 368
    :try_start_0
    const-class v0, Landroid/app/Activity;

    #@2
    const-string v1, "mToken"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    #@c
    return-object v0

    #@d
    :catchall_d
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method private static needsRelaunchCall()Z
    .registers 2

    #@0
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1a

    #@4
    if-eq v0, v1, :cond_f

    #@6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v1, 0x1b

    #@a
    if-ne v0, v1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 v0, 0x1

    #@10
    :goto_10
    return v0
.end method

.method protected static queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 257
    :try_start_1
    sget-object v1, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    #@3
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-ne v1, p0, :cond_22

    #@9
    .line 259
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    #@c
    move-result p0

    #@d
    if-eq p0, p1, :cond_10

    #@f
    goto :goto_22

    #@10
    .line 265
    :cond_10
    sget-object p0, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    #@12
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p0

    #@16
    .line 269
    sget-object p1, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    #@18
    new-instance p2, Landroidx/core/app/ActivityRecreator$3;

    #@1a
    invoke-direct {p2, p0, v1}, Landroidx/core/app/ActivityRecreator$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1d
    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    #@20
    const/4 p0, 0x1

    #@21
    return p0

    #@22
    :cond_22
    :goto_22
    return v0

    #@23
    :catchall_23
    move-exception p0

    #@24
    const-string p1, "ActivityRecreator"

    #@26
    const-string p2, "Exception while fetching field values"

    #@28
    .line 296
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    return v0
.end method

.method static recreate(Landroid/app/Activity;)Z
    .registers 11

    #@0
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    const/4 v2, 0x1

    #@5
    if-lt v0, v1, :cond_b

    #@7
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    #@a
    return v2

    #@b
    .line 115
    :cond_b
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    if-eqz v0, :cond_17

    #@12
    sget-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    #@14
    if-nez v0, :cond_17

    #@16
    return v1

    #@17
    .line 120
    :cond_17
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    #@19
    if-nez v0, :cond_20

    #@1b
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    #@1d
    if-nez v0, :cond_20

    #@1f
    return v1

    #@20
    .line 124
    :cond_20
    :try_start_20
    sget-object v0, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    #@22
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    if-nez v0, :cond_29

    #@28
    return v1

    #@29
    .line 128
    :cond_29
    sget-object v3, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    #@2b
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    if-nez v3, :cond_32

    #@31
    return v1

    #@32
    .line 133
    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@35
    move-result-object v4

    #@36
    .line 134
    new-instance v5, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    #@38
    invoke-direct {v5, p0}, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;-><init>(Landroid/app/Activity;)V

    #@3b
    .line 135
    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    #@3e
    .line 143
    sget-object v6, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    #@40
    new-instance v7, Landroidx/core/app/ActivityRecreator$1;

    #@42
    invoke-direct {v7, v5, v0}, Landroidx/core/app/ActivityRecreator$1;-><init>(Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;Ljava/lang/Object;)V

    #@45
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_9b

    #@48
    .line 151
    :try_start_48
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_83

    #@4e
    .line 152
    sget-object p0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    #@50
    const/16 v7, 0x9

    #@52
    new-array v7, v7, [Ljava/lang/Object;

    #@54
    aput-object v0, v7, v1

    #@56
    const/4 v0, 0x0

    #@57
    aput-object v0, v7, v2

    #@59
    const/4 v8, 0x2

    #@5a
    aput-object v0, v7, v8

    #@5c
    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v8

    #@60
    const/4 v9, 0x3

    #@61
    aput-object v8, v7, v9

    #@63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@66
    move-result-object v8

    #@67
    const/4 v9, 0x4

    #@68
    aput-object v8, v7, v9

    #@6a
    const/4 v8, 0x5

    #@6b
    aput-object v0, v7, v8

    #@6d
    const/4 v8, 0x6

    #@6e
    aput-object v0, v7, v8

    #@70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@73
    move-result-object v0

    #@74
    const/4 v8, 0x7

    #@75
    aput-object v0, v7, v8

    #@77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7a
    move-result-object v0

    #@7b
    const/16 v8, 0x8

    #@7d
    aput-object v0, v7, v8

    #@7f
    .line 152
    invoke-virtual {p0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    goto :goto_86

    #@83
    .line 155
    :cond_83
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_86
    .catchall {:try_start_48 .. :try_end_86} :catchall_8f

    #@86
    .line 159
    :goto_86
    :try_start_86
    new-instance p0, Landroidx/core/app/ActivityRecreator$2;

    #@88
    invoke-direct {p0, v4, v5}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    #@8b
    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@8e
    return v2

    #@8f
    :catchall_8f
    move-exception p0

    #@90
    sget-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    #@92
    new-instance v2, Landroidx/core/app/ActivityRecreator$2;

    #@94
    invoke-direct {v2, v4, v5}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    #@97
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@9a
    .line 169
    throw p0
    :try_end_9b
    .catchall {:try_start_86 .. :try_end_9b} :catchall_9b

    #@9b
    :catchall_9b
    return v1
.end method
