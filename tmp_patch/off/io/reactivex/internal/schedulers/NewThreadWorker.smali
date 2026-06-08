.class public Lio/reactivex/internal/schedulers/NewThreadWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "NewThreadWorker.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field volatile disposed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2

    #@0
    .line 35
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    #@3
    .line 36
    invoke-static {p1}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    #@6
    move-result-object p1

    #@7
    iput-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@9
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 162
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x1

    #@5
    .line 163
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    #@7
    .line 164
    iget-object v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@9
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    #@c
    :cond_c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 180
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    #@2
    return v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 42
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/internal/schedulers/NewThreadWorker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 11

    #@0
    .line 48
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 49
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@6
    return-object p1

    #@7
    :cond_7
    const/4 v5, 0x0

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-wide v2, p2

    #@b
    move-object v4, p4

    #@c
    .line 51
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    #@f
    move-result-object p1

    #@10
    return-object p1
.end method

.method public scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;
    .registers 9

    #@0
    .line 132
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@3
    move-result-object p1

    #@4
    .line 134
    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;

    #@6
    invoke-direct {v0, p1, p5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V

    #@9
    if-eqz p5, :cond_12

    #@b
    .line 137
    invoke-interface {p5, v0}, Lio/reactivex/internal/disposables/DisposableContainer;->add(Lio/reactivex/disposables/Disposable;)Z

    #@e
    move-result p1

    #@f
    if-nez p1, :cond_12

    #@11
    return-object v0

    #@12
    :cond_12
    const-wide/16 v1, 0x0

    #@14
    cmp-long p1, p2, v1

    #@16
    if-gtz p1, :cond_1f

    #@18
    .line 145
    :try_start_18
    iget-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@1a
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@1d
    move-result-object p1

    #@1e
    goto :goto_25

    #@1f
    .line 147
    :cond_1f
    iget-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@21
    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@24
    move-result-object p1

    #@25
    .line 149
    :goto_25
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_28
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_18 .. :try_end_28} :catch_29

    #@28
    goto :goto_32

    #@29
    :catch_29
    move-exception p1

    #@2a
    if-eqz p5, :cond_2f

    #@2c
    .line 152
    invoke-interface {p5, v0}, Lio/reactivex/internal/disposables/DisposableContainer;->remove(Lio/reactivex/disposables/Disposable;)Z

    #@2f
    .line 154
    :cond_2f
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@32
    :goto_32
    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 8

    #@0
    .line 63
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
    if-gtz p1, :cond_16

    #@f
    .line 67
    :try_start_f
    iget-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@11
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@14
    move-result-object p1

    #@15
    goto :goto_1c

    #@16
    .line 69
    :cond_16
    iget-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@18
    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@1b
    move-result-object p1

    #@1c
    .line 71
    :goto_1c
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_1f} :catch_20

    #@1f
    return-object v0

    #@20
    :catch_20
    move-exception p1

    #@21
    .line 74
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@24
    .line 75
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@26
    return-object p1
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 15

    #@0
    .line 89
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@3
    move-result-object p1

    #@4
    const-wide/16 v0, 0x0

    #@6
    cmp-long v2, p4, v0

    #@8
    if-gtz v2, :cond_2d

    #@a
    .line 92
    new-instance p4, Lio/reactivex/internal/schedulers/InstantPeriodicTask;

    #@c
    iget-object p5, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@e
    invoke-direct {p4, p1, p5}, Lio/reactivex/internal/schedulers/InstantPeriodicTask;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    #@11
    cmp-long p1, p2, v0

    #@13
    if-gtz p1, :cond_1c

    #@15
    .line 96
    :try_start_15
    iget-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@17
    invoke-interface {p1, p4}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@1a
    move-result-object p1

    #@1b
    goto :goto_22

    #@1c
    .line 98
    :cond_1c
    iget-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@1e
    invoke-interface {p1, p4, p2, p3, p6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@21
    move-result-object p1

    #@22
    .line 100
    :goto_22
    invoke-virtual {p4, p1}, Lio/reactivex/internal/schedulers/InstantPeriodicTask;->setFirst(Ljava/util/concurrent/Future;)V
    :try_end_25
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_15 .. :try_end_25} :catch_26

    #@25
    return-object p4

    #@26
    :catch_26
    move-exception p1

    #@27
    .line 102
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@2a
    .line 103
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@2c
    return-object p1

    #@2d
    .line 108
    :cond_2d
    new-instance v7, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;

    #@2f
    invoke-direct {v7, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;-><init>(Ljava/lang/Runnable;)V

    #@32
    .line 110
    :try_start_32
    iget-object v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@34
    move-object v1, v7

    #@35
    move-wide v2, p2

    #@36
    move-wide v4, p4

    #@37
    move-object v6, p6

    #@38
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@3b
    move-result-object p1

    #@3c
    .line 111
    invoke-virtual {v7, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_3f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_32 .. :try_end_3f} :catch_40

    #@3f
    return-object v7

    #@40
    :catch_40
    move-exception p1

    #@41
    .line 114
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@44
    .line 115
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@46
    return-object p1
.end method

.method public shutdown()V
    .registers 2

    #@0
    .line 172
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x1

    #@5
    .line 173
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    #@7
    .line 174
    iget-object v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@9
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    #@c
    :cond_c
    return-void
.end method
