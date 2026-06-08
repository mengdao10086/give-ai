.class final Lio/reactivex/Scheduler$DisposeTask;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/schedulers/SchedulerRunnableIntrospection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisposeTask"
.end annotation


# instance fields
.field final decoratedRun:Ljava/lang/Runnable;

.field runner:Ljava/lang/Thread;

.field final w:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/Scheduler$Worker;)V
    .registers 3

    #@0
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 600
    iput-object p1, p0, Lio/reactivex/Scheduler$DisposeTask;->decoratedRun:Ljava/lang/Runnable;

    #@5
    .line 601
    iput-object p2, p0, Lio/reactivex/Scheduler$DisposeTask;->w:Lio/reactivex/Scheduler$Worker;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    #@0
    .line 617
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_14

    #@8
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->w:Lio/reactivex/Scheduler$Worker;

    #@a
    instance-of v1, v0, Lio/reactivex/internal/schedulers/NewThreadWorker;

    #@c
    if-eqz v1, :cond_14

    #@e
    .line 618
    check-cast v0, Lio/reactivex/internal/schedulers/NewThreadWorker;

    #@10
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/NewThreadWorker;->shutdown()V

    #@13
    goto :goto_19

    #@14
    .line 620
    :cond_14
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->w:Lio/reactivex/Scheduler$Worker;

    #@16
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@19
    :goto_19
    return-void
.end method

.method public getWrappedRunnable()Ljava/lang/Runnable;
    .registers 2

    #@0
    .line 631
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->decoratedRun:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 626
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->w:Lio/reactivex/Scheduler$Worker;

    #@2
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public run()V
    .registers 3

    #@0
    .line 606
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    #@6
    const/4 v0, 0x0

    #@7
    .line 608
    :try_start_7
    iget-object v1, p0, Lio/reactivex/Scheduler$DisposeTask;->decoratedRun:Ljava/lang/Runnable;

    #@9
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    #@c
    .line 610
    invoke-virtual {p0}, Lio/reactivex/Scheduler$DisposeTask;->dispose()V

    #@f
    .line 611
    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    #@11
    return-void

    #@12
    :catchall_12
    move-exception v1

    #@13
    .line 610
    invoke-virtual {p0}, Lio/reactivex/Scheduler$DisposeTask;->dispose()V

    #@16
    .line 611
    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    #@18
    .line 612
    throw v1
.end method
