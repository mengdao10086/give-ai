.class final Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;
.source "ComputationScheduler.java"

# interfaces
.implements Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

.field n:J


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 6

    #@0
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    iput p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    #@5
    .line 80
    new-array v0, p1, [Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, p1, :cond_18

    #@c
    .line 82
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@e
    new-instance v2, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@10
    invoke-direct {v2, p2}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    #@13
    aput-object v2, v1, v0

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_a

    #@18
    :cond_18
    return-void
.end method


# virtual methods
.method public createWorkers(ILio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V
    .registers 9

    #@0
    .line 103
    iget v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_f

    #@5
    :goto_5
    if-ge v1, p1, :cond_2d

    #@7
    .line 106
    sget-object v0, Lio/reactivex/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@9
    invoke-interface {p2, v1, v0}, Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;->onWorker(ILio/reactivex/Scheduler$Worker;)V

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_5

    #@f
    .line 109
    :cond_f
    iget-wide v2, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    #@11
    long-to-int v2, v2

    #@12
    rem-int/2addr v2, v0

    #@13
    move v3, v1

    #@14
    :goto_14
    if-ge v3, p1, :cond_2a

    #@16
    .line 111
    new-instance v4, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;

    #@18
    iget-object v5, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@1a
    aget-object v5, v5, v2

    #@1c
    invoke-direct {v4, v5}, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;-><init>(Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;)V

    #@1f
    invoke-interface {p2, v3, v4}, Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;->onWorker(ILio/reactivex/Scheduler$Worker;)V

    #@22
    add-int/lit8 v2, v2, 0x1

    #@24
    if-ne v2, v0, :cond_27

    #@26
    move v2, v1

    #@27
    :cond_27
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_14

    #@2a
    :cond_2a
    int-to-long p1, v2

    #@2b
    .line 116
    iput-wide p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    #@2d
    :cond_2d
    return-void
.end method

.method public getEventLoop()Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;
    .registers 7

    #@0
    .line 87
    iget v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    #@2
    if-nez v0, :cond_7

    #@4
    .line 89
    sget-object v0, Lio/reactivex/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@6
    return-object v0

    #@7
    .line 92
    :cond_7
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@9
    iget-wide v2, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    #@b
    const-wide/16 v4, 0x1

    #@d
    add-long/2addr v4, v2

    #@e
    iput-wide v4, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    #@10
    int-to-long v4, v0

    #@11
    rem-long/2addr v2, v4

    #@12
    long-to-int v0, v2

    #@13
    aget-object v0, v1, v0

    #@15
    return-object v0
.end method

.method public shutdown()V
    .registers 5

    #@0
    .line 96
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v1, :cond_e

    #@6
    aget-object v3, v0, v2

    #@8
    .line 97
    invoke-virtual {v3}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;->dispose()V

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_4

    #@e
    :cond_e
    return-void
.end method
