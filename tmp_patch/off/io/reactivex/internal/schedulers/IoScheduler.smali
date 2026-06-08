.class public final Lio/reactivex/internal/schedulers/IoScheduler;
.super Lio/reactivex/Scheduler;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;,
        Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;,
        Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field static final EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field private static final EVICTOR_THREAD_NAME_PREFIX:Ljava/lang/String; = "RxCachedWorkerPoolEvictor"

.field private static final KEEP_ALIVE_TIME:J

.field public static final KEEP_ALIVE_TIME_DEFAULT:J = 0x3cL

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final KEY_IO_PRIORITY:Ljava/lang/String; = "rx2.io-priority"

.field private static final KEY_KEEP_ALIVE_TIME:Ljava/lang/String; = "rx2.io-keep-alive-time"

.field private static final KEY_SCHEDULED_RELEASE:Ljava/lang/String; = "rx2.io-scheduled-release"

.field static final NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

.field static final SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

.field static USE_SCHEDULED_RELEASE:Z = false

.field static final WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field private static final WORKER_THREAD_NAME_PREFIX:Ljava/lang/String; = "RxCachedThreadScheduler"


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    sput-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    #@4
    const-string v0, "rx2.io-keep-alive-time"

    #@6
    const-wide/16 v1, 0x3c

    #@8
    .line 58
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@f
    move-result-wide v0

    #@10
    sput-wide v0, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_TIME:J

    #@12
    .line 60
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    #@14
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@16
    const-string v2, "RxCachedThreadSchedulerShutdown"

    #@18
    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    #@1e
    sput-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    #@20
    .line 61
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;->dispose()V

    #@23
    const-string v0, "rx2.io-priority"

    #@25
    const/4 v1, 0x5

    #@26
    .line 64
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2d
    move-result v0

    #@2e
    const/16 v1, 0xa

    #@30
    .line 63
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@33
    move-result v0

    #@34
    const/4 v1, 0x1

    #@35
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v0

    #@39
    .line 66
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@3b
    const-string v2, "RxCachedThreadScheduler"

    #@3d
    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@42
    .line 68
    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@44
    const-string v3, "RxCachedWorkerPoolEvictor"

    #@46
    invoke-direct {v2, v3, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    #@49
    sput-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@4b
    const-string v0, "rx2.io-scheduled-release"

    #@4d
    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@50
    move-result v0

    #@51
    sput-boolean v0, Lio/reactivex/internal/schedulers/IoScheduler;->USE_SCHEDULED_RELEASE:Z

    #@53
    .line 72
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@55
    const-wide/16 v2, 0x0

    #@57
    const/4 v4, 0x0

    #@58
    invoke-direct {v0, v2, v3, v4, v1}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    #@5b
    sput-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@5d
    .line 73
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    #@60
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 163
    sget-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@2
    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3

    #@0
    .line 171
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    #@3
    .line 172
    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@5
    .line 173
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    sget-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@c
    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    .line 174
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/IoScheduler;->start()V

    #@11
    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .registers 3

    #@0
    .line 202
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@a
    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;-><init>(Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;)V

    #@d
    return-object v0
.end method

.method public shutdown()V
    .registers 4

    #@0
    .line 188
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@8
    .line 189
    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    return-void

    #@d
    .line 192
    :cond_d
    iget-object v2, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 193
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    #@18
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 206
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@8
    iget-object v0, v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    #@a
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->size()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public start()V
    .registers 6

    #@0
    .line 179
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@2
    sget-wide v1, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_TIME:J

    #@4
    sget-object v3, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    #@6
    iget-object v4, p0, Lio/reactivex/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@8
    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    #@b
    .line 180
    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    sget-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    #@f
    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_18

    #@15
    .line 181
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    #@18
    :cond_18
    return-void
.end method
