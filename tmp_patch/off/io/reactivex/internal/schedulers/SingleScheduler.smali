.class public final Lio/reactivex/internal/schedulers/SingleScheduler;
.super Lio/reactivex/Scheduler;
.source "SingleScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;
    }
.end annotation


# static fields
.field private static final KEY_SINGLE_PRIORITY:Ljava/lang/String; = "rx2.single-priority"

.field static final SHUTDOWN:Ljava/util/concurrent/ScheduledExecutorService;

.field static final SINGLE_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxSingleScheduler"


# instance fields
.field final executor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 42
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Lio/reactivex/internal/schedulers/SingleScheduler;->SHUTDOWN:Ljava/util/concurrent/ScheduledExecutorService;

    #@7
    .line 43
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    #@a
    const-string v0, "rx2.single-priority"

    #@c
    const/4 v1, 0x5

    #@d
    .line 46
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v0

    #@15
    const/16 v1, 0xa

    #@17
    .line 45
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v0

    #@1b
    const/4 v1, 0x1

    #@1c
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v0

    #@20
    .line 48
    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@22
    const-string v3, "RxSingleScheduler"

    #@24
    invoke-direct {v2, v3, v0, v1}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    #@27
    sput-object v2, Lio/reactivex/internal/schedulers/SingleScheduler;->SINGLE_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 52
    sget-object v0, Lio/reactivex/internal/schedulers/SingleScheduler;->SINGLE_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@2
    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/SingleScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3

    #@0
    .line 61
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    .line 62
    iput-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@c
    .line 63
    invoke-static {p1}, Lio/reactivex/internal/schedulers/SingleScheduler;->createExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@13
    return-void
.end method

.method static createExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    #@0
    .line 67
    invoke-static {p0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .registers 3

    #@0
    .line 105
    new-instance v0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    #@a
    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    #@d
    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 8

    #@0
    .line 111
    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    #@2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    #@9
    const-wide/16 v1, 0x0

    #@b
    cmp-long p1, p2, v1

    #@d
    if-gtz p1, :cond_1c

    #@f
    .line 115
    :try_start_f
    iget-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    #@17
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@1a
    move-result-object p1

    #@1b
    goto :goto_28

    #@1c
    .line 117
    :cond_1c
    iget-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@21
    move-result-object p1

    #@22
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    #@24
    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@27
    move-result-object p1

    #@28
    .line 119
    :goto_28
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_2b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_2b} :catch_2c

    #@2b
    return-object v0

    #@2c
    :catch_2c
    move-exception p1

    #@2d
    .line 122
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@30
    .line 123
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@32
    return-object p1
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 15

    #@0
    .line 130
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@3
    move-result-object p1

    #@4
    const-wide/16 v0, 0x0

    #@6
    cmp-long v2, p4, v0

    #@8
    if-gtz v2, :cond_2f

    #@a
    .line 133
    iget-object p4, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@f
    move-result-object p4

    #@10
    check-cast p4, Ljava/util/concurrent/ScheduledExecutorService;

    #@12
    .line 135
    new-instance p5, Lio/reactivex/internal/schedulers/InstantPeriodicTask;

    #@14
    invoke-direct {p5, p1, p4}, Lio/reactivex/internal/schedulers/InstantPeriodicTask;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    #@17
    cmp-long p1, p2, v0

    #@19
    if-gtz p1, :cond_20

    #@1b
    .line 139
    :try_start_1b
    invoke-interface {p4, p5}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@1e
    move-result-object p1

    #@1f
    goto :goto_24

    #@20
    .line 141
    :cond_20
    invoke-interface {p4, p5, p2, p3, p6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@23
    move-result-object p1

    #@24
    .line 143
    :goto_24
    invoke-virtual {p5, p1}, Lio/reactivex/internal/schedulers/InstantPeriodicTask;->setFirst(Ljava/util/concurrent/Future;)V
    :try_end_27
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1b .. :try_end_27} :catch_28

    #@27
    return-object p5

    #@28
    :catch_28
    move-exception p1

    #@29
    .line 145
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@2c
    .line 146
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@2e
    return-object p1

    #@2f
    .line 151
    :cond_2f
    new-instance v7, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;

    #@31
    invoke-direct {v7, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;-><init>(Ljava/lang/Runnable;)V

    #@34
    .line 153
    :try_start_34
    iget-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@36
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@39
    move-result-object p1

    #@3a
    move-object v0, p1

    #@3b
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    #@3d
    move-object v1, v7

    #@3e
    move-wide v2, p2

    #@3f
    move-wide v4, p4

    #@40
    move-object v6, p6

    #@41
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@44
    move-result-object p1

    #@45
    .line 154
    invoke-virtual {v7, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_48
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_34 .. :try_end_48} :catch_49

    #@48
    return-object v7

    #@49
    :catch_49
    move-exception p1

    #@4a
    .line 157
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@4d
    .line 158
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@4f
    return-object p1
.end method

.method public shutdown()V
    .registers 3

    #@0
    .line 93
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    #@8
    .line 94
    sget-object v1, Lio/reactivex/internal/schedulers/SingleScheduler;->SHUTDOWN:Ljava/util/concurrent/ScheduledExecutorService;

    #@a
    if-eq v0, v1, :cond_19

    #@c
    .line 95
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    #@14
    if-eq v0, v1, :cond_19

    #@16
    .line 97
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    #@19
    :cond_19
    return-void
.end method

.method public start()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 74
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    #@9
    .line 75
    sget-object v2, Lio/reactivex/internal/schedulers/SingleScheduler;->SHUTDOWN:Ljava/util/concurrent/ScheduledExecutorService;

    #@b
    if-eq v1, v2, :cond_13

    #@d
    if-eqz v0, :cond_12

    #@f
    .line 77
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    #@12
    :cond_12
    return-void

    #@13
    :cond_13
    if-nez v0, :cond_1b

    #@15
    .line 82
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@17
    invoke-static {v0}, Lio/reactivex/internal/schedulers/SingleScheduler;->createExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    #@1a
    move-result-object v0

    #@1b
    .line 84
    :cond_1b
    iget-object v2, p0, Lio/reactivex/internal/schedulers/SingleScheduler;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    #@1d
    invoke-static {v2, v1, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    return-void
.end method
