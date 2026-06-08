.class final Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InterruptibleRunnable"
.end annotation


# static fields
.field static final FINISHED:I = 0x2

.field static final INTERRUPTED:I = 0x4

.field static final INTERRUPTING:I = 0x3

.field static final READY:I = 0x0

.field static final RUNNING:I = 0x1

.field private static final serialVersionUID:J = -0x3201fa934be19cacL


# instance fields
.field final run:Ljava/lang/Runnable;

.field final tasks:Lio/reactivex/internal/disposables/DisposableContainer;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V
    .registers 3

    #@0
    .line 344
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 345
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->run:Ljava/lang/Runnable;

    #@5
    .line 346
    iput-object p2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->tasks:Lio/reactivex/internal/disposables/DisposableContainer;

    #@7
    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 2

    #@0
    .line 400
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->tasks:Lio/reactivex/internal/disposables/DisposableContainer;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 401
    invoke-interface {v0, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@7
    :cond_7
    return-void
.end method

.method public dispose()V
    .registers 4

    #@0
    .line 376
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->get()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_8

    #@7
    goto :goto_2e

    #@8
    :cond_8
    const/4 v1, 0x4

    #@9
    if-nez v0, :cond_16

    #@b
    const/4 v0, 0x0

    #@c
    .line 380
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->compareAndSet(II)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 381
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->cleanup()V

    #@15
    goto :goto_2e

    #@16
    :cond_16
    const/4 v0, 0x1

    #@17
    const/4 v2, 0x3

    #@18
    .line 385
    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->compareAndSet(II)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 386
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    #@20
    if-eqz v0, :cond_28

    #@22
    .line 388
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@25
    const/4 v0, 0x0

    #@26
    .line 389
    iput-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    #@28
    .line 391
    :cond_28
    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->set(I)V

    #@2b
    .line 392
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->cleanup()V

    #@2e
    :goto_2e
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 407
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->get()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public run()V
    .registers 6

    #@0
    .line 351
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->get()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_53

    #@6
    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    #@c
    const/4 v0, 0x0

    #@d
    const/4 v1, 0x1

    #@e
    .line 353
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->compareAndSet(II)Z

    #@11
    move-result v0

    #@12
    const/4 v2, 0x0

    #@13
    if-eqz v0, :cond_51

    #@15
    const/4 v0, 0x3

    #@16
    const/4 v3, 0x2

    #@17
    .line 355
    :try_start_17
    iget-object v4, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->run:Ljava/lang/Runnable;

    #@19
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_36

    #@1c
    .line 357
    iput-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    #@1e
    .line 358
    invoke-virtual {p0, v1, v3}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->compareAndSet(II)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_28

    #@24
    .line 359
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->cleanup()V

    #@27
    goto :goto_53

    #@28
    .line 361
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->get()I

    #@2b
    move-result v1

    #@2c
    if-ne v1, v0, :cond_32

    #@2e
    .line 362
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@31
    goto :goto_28

    #@32
    .line 364
    :cond_32
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@35
    goto :goto_53

    #@36
    :catchall_36
    move-exception v4

    #@37
    .line 357
    iput-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    #@39
    .line 358
    invoke-virtual {p0, v1, v3}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->compareAndSet(II)Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_4d

    #@3f
    .line 361
    :goto_3f
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->get()I

    #@42
    move-result v1

    #@43
    if-ne v1, v0, :cond_49

    #@45
    .line 362
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@48
    goto :goto_3f

    #@49
    .line 364
    :cond_49
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@4c
    goto :goto_50

    #@4d
    .line 359
    :cond_4d
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->cleanup()V

    #@50
    .line 366
    :goto_50
    throw v4

    #@51
    .line 368
    :cond_51
    iput-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable;->thread:Ljava/lang/Thread;

    #@53
    :cond_53
    :goto_53
    return-void
.end method
