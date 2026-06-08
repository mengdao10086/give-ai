.class public Landroidx/arch/core/executor/DefaultTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "DefaultTaskExecutor.java"


# instance fields
.field private final mDiskIO:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 37
    invoke-direct {p0}, Landroidx/arch/core/executor/TaskExecutor;-><init>()V

    #@3
    .line 39
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mLock:Ljava/lang/Object;

    #@a
    .line 41
    new-instance v0, Landroidx/arch/core/executor/DefaultTaskExecutor$1;

    #@c
    invoke-direct {v0, p0}, Landroidx/arch/core/executor/DefaultTaskExecutor$1;-><init>(Landroidx/arch/core/executor/DefaultTaskExecutor;)V

    #@f
    const/4 v1, 0x4

    #@10
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    #@16
    return-void
.end method

.method private static createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 8

    #@0
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 82
    invoke-static {p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 86
    :cond_b
    :try_start_b
    const-class v0, Landroid/os/Handler;

    #@d
    const/4 v1, 0x3

    #@e
    new-array v2, v1, [Ljava/lang/Class;

    #@10
    const-class v3, Landroid/os/Looper;

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v3, v2, v4

    #@15
    const-class v3, Landroid/os/Handler$Callback;

    #@17
    const/4 v5, 0x1

    #@18
    aput-object v3, v2, v5

    #@1a
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1c
    const/4 v6, 0x2

    #@1d
    aput-object v3, v2, v6

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@22
    move-result-object v0

    #@23
    new-array v1, v1, [Ljava/lang/Object;

    #@25
    aput-object p0, v1, v4

    #@27
    const/4 v2, 0x0

    #@28
    aput-object v2, v1, v5

    #@2a
    .line 88
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v2

    #@2e
    aput-object v2, v1, v6

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/os/Handler;
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_36} :catch_3d
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_36} :catch_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_36} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_36} :catch_37

    #@36
    return-object v0

    #@37
    .line 93
    :catch_37
    new-instance v0, Landroid/os/Handler;

    #@39
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3c
    return-object v0

    #@3d
    .line 96
    :catch_3d
    new-instance v0, Landroid/os/Handler;

    #@3f
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@42
    return-object v0
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 59
    iget-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@5
    return-void
.end method

.method public isMainThread()Z
    .registers 3

    #@0
    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-ne v0, v1, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .registers 4

    #@0
    .line 64
    iget-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_1a

    #@4
    .line 65
    iget-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v0

    #@7
    .line 66
    :try_start_7
    iget-object v1, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    #@9
    if-nez v1, :cond_15

    #@b
    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroidx/arch/core/executor/DefaultTaskExecutor;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    #@15
    .line 69
    :cond_15
    monitor-exit v0

    #@16
    goto :goto_1a

    #@17
    :catchall_17
    move-exception p1

    #@18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    #@19
    throw p1

    #@1a
    .line 72
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    #@1c
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1f
    return-void
.end method
