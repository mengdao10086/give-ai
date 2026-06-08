.class final Lio/reactivex/schedulers/TestScheduler$TestWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TestWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;
    }
.end annotation


# instance fields
.field volatile disposed:Z

.field final synthetic this$0:Lio/reactivex/schedulers/TestScheduler;


# direct methods
.method constructor <init>(Lio/reactivex/schedulers/TestScheduler;)V
    .registers 2

    #@0
    .line 147
    iput-object p1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    #@2
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 153
    iput-boolean v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    #@3
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 158
    iget-boolean v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    #@2
    return v0
.end method

.method public now(Ljava/util/concurrent/TimeUnit;)J
    .registers 4

    #@0
    .line 186
    iget-object v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/schedulers/TestScheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .registers 12

    #@0
    .line 176
    iget-boolean v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 177
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@6
    return-object p1

    #@7
    .line 179
    :cond_7
    new-instance v7, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;

    #@9
    const-wide/16 v2, 0x0

    #@b
    iget-object v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    #@d
    iget-wide v5, v0, Lio/reactivex/schedulers/TestScheduler;->counter:J

    #@f
    const-wide/16 v8, 0x1

    #@11
    add-long/2addr v8, v5

    #@12
    iput-wide v8, v0, Lio/reactivex/schedulers/TestScheduler;->counter:J

    #@14
    move-object v0, v7

    #@15
    move-object v1, p0

    #@16
    move-object v4, p1

    #@17
    invoke-direct/range {v0 .. v6}, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;-><init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;JLjava/lang/Runnable;J)V

    #@1a
    .line 180
    iget-object p1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    #@1c
    iget-object p1, p1, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    #@1e
    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@21
    .line 181
    new-instance p1, Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;

    #@23
    invoke-direct {p1, p0, v7}, Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;-><init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;Lio/reactivex/schedulers/TestScheduler$TimedRunnable;)V

    #@26
    invoke-static {p1}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    #@29
    move-result-object p1

    #@2a
    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 13

    #@0
    .line 164
    iget-boolean v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 165
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@6
    return-object p1

    #@7
    .line 167
    :cond_7
    new-instance v7, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;

    #@9
    iget-object v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    #@b
    iget-wide v0, v0, Lio/reactivex/schedulers/TestScheduler;->time:J

    #@d
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@10
    move-result-wide p2

    #@11
    add-long v2, v0, p2

    #@13
    iget-object p2, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    #@15
    iget-wide v5, p2, Lio/reactivex/schedulers/TestScheduler;->counter:J

    #@17
    const-wide/16 p3, 0x1

    #@19
    add-long/2addr p3, v5

    #@1a
    iput-wide p3, p2, Lio/reactivex/schedulers/TestScheduler;->counter:J

    #@1c
    move-object v0, v7

    #@1d
    move-object v1, p0

    #@1e
    move-object v4, p1

    #@1f
    invoke-direct/range {v0 .. v6}, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;-><init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;JLjava/lang/Runnable;J)V

    #@22
    .line 168
    iget-object p1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    #@24
    iget-object p1, p1, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    #@26
    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@29
    .line 170
    new-instance p1, Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;

    #@2b
    invoke-direct {p1, p0, v7}, Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;-><init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;Lio/reactivex/schedulers/TestScheduler$TimedRunnable;)V

    #@2e
    invoke-static {p1}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    #@31
    move-result-object p1

    #@32
    return-object p1
.end method
