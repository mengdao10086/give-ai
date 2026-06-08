.class public final Lio/reactivex/schedulers/TestScheduler;
.super Lio/reactivex/Scheduler;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/TestScheduler$TestWorker;,
        Lio/reactivex/schedulers/TestScheduler$TimedRunnable;
    }
.end annotation


# instance fields
.field counter:J

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/schedulers/TestScheduler$TimedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field volatile time:J


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 41
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    #@3
    .line 32
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    #@5
    const/16 v1, 0xb

    #@7
    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    #@a
    iput-object v0, p0, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    #@c
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    #@0
    .line 53
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    #@3
    .line 32
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    #@5
    const/16 v1, 0xb

    #@7
    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    #@a
    iput-object v0, p0, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    #@c
    .line 54
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@f
    move-result-wide p1

    #@10
    iput-wide p1, p0, Lio/reactivex/schedulers/TestScheduler;->time:J

    #@12
    return-void
.end method

.method private triggerActions(J)V
    .registers 8

    #@0
    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    #@2
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;

    #@8
    if-eqz v0, :cond_31

    #@a
    .line 126
    iget-wide v1, v0, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;->time:J

    #@c
    cmp-long v1, v1, p1

    #@e
    if-lez v1, :cond_11

    #@10
    goto :goto_31

    #@11
    .line 130
    :cond_11
    iget-wide v1, v0, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;->time:J

    #@13
    const-wide/16 v3, 0x0

    #@15
    cmp-long v1, v1, v3

    #@17
    if-nez v1, :cond_1c

    #@19
    iget-wide v1, p0, Lio/reactivex/schedulers/TestScheduler;->time:J

    #@1b
    goto :goto_1e

    #@1c
    :cond_1c
    iget-wide v1, v0, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;->time:J

    #@1e
    :goto_1e
    iput-wide v1, p0, Lio/reactivex/schedulers/TestScheduler;->time:J

    #@20
    .line 131
    iget-object v1, p0, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    #@22
    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    #@25
    .line 134
    iget-object v1, v0, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;->scheduler:Lio/reactivex/schedulers/TestScheduler$TestWorker;

    #@27
    iget-boolean v1, v1, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    #@29
    if-nez v1, :cond_0

    #@2b
    .line 135
    iget-object v0, v0, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;->run:Ljava/lang/Runnable;

    #@2d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@30
    goto :goto_0

    #@31
    .line 138
    :cond_31
    :goto_31
    iput-wide p1, p0, Lio/reactivex/schedulers/TestScheduler;->time:J

    #@33
    return-void
.end method


# virtual methods
.method public advanceTimeBy(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    #@0
    .line 99
    iget-wide v0, p0, Lio/reactivex/schedulers/TestScheduler;->time:J

    #@2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@5
    move-result-wide p1

    #@6
    add-long/2addr v0, p1

    #@7
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@9
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/schedulers/TestScheduler;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V
    .registers 4

    #@0
    .line 111
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide p1

    #@4
    .line 112
    invoke-direct {p0, p1, p2}, Lio/reactivex/schedulers/TestScheduler;->triggerActions(J)V

    #@7
    return-void
.end method

.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .registers 2

    #@0
    .line 144
    new-instance v0, Lio/reactivex/schedulers/TestScheduler$TestWorker;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/schedulers/TestScheduler$TestWorker;-><init>(Lio/reactivex/schedulers/TestScheduler;)V

    #@5
    return-object v0
.end method

.method public now(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    #@0
    .line 87
    iget-wide v0, p0, Lio/reactivex/schedulers/TestScheduler;->time:J

    #@2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public triggerActions()V
    .registers 3

    #@0
    .line 120
    iget-wide v0, p0, Lio/reactivex/schedulers/TestScheduler;->time:J

    #@2
    invoke-direct {p0, v0, v1}, Lio/reactivex/schedulers/TestScheduler;->triggerActions(J)V

    #@5
    return-void
.end method
