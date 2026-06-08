.class final Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "SingleScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SingleScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScheduledWorker"
.end annotation


# instance fields
.field volatile disposed:Z

.field final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field final tasks:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    #@0
    .line 170
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    #@3
    .line 171
    iput-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@5
    .line 172
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    #@7
    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    #@a
    iput-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    #@c
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 207
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->disposed:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x1

    #@5
    .line 208
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->disposed:Z

    #@7
    .line 209
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    #@9
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@c
    :cond_c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 215
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->disposed:Z

    #@2
    return v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 8

    #@0
    .line 178
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->disposed:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 179
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@6
    return-object p1

    #@7
    .line 182
    :cond_7
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@a
    move-result-object p1

    #@b
    .line 184
    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;

    #@d
    iget-object v1, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    #@f
    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V

    #@12
    .line 185
    iget-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    #@14
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    #@17
    const-wide/16 v1, 0x0

    #@19
    cmp-long p1, p2, v1

    #@1b
    if-gtz p1, :cond_24

    #@1d
    .line 190
    :try_start_1d
    iget-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@1f
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@22
    move-result-object p1

    #@23
    goto :goto_2a

    #@24
    .line 192
    :cond_24
    iget-object p1, p0, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    #@26
    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@29
    move-result-object p1

    #@2a
    .line 195
    :goto_2a
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_2d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1d .. :try_end_2d} :catch_2e

    #@2d
    return-object v0

    #@2e
    :catch_2e
    move-exception p1

    #@2f
    .line 197
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker;->dispose()V

    #@32
    .line 198
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@35
    .line 199
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@37
    return-object p1
.end method
