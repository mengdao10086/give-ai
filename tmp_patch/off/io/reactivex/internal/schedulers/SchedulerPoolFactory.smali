.class public final Lio/reactivex/internal/schedulers/SchedulerPoolFactory;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;,
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;
    }
.end annotation


# static fields
.field static final POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PURGE_ENABLED:Z

.field static final PURGE_ENABLED_KEY:Ljava/lang/String; = "rx2.purge-enabled"

.field public static final PURGE_PERIOD_SECONDS:I

.field static final PURGE_PERIOD_SECONDS_KEY:Ljava/lang/String; = "rx2.purge-period-seconds"

.field static final PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@5
    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@c
    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    #@e
    .line 95
    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;

    #@10
    invoke-direct {v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;-><init>()V

    #@13
    const-string v1, "rx2.purge-enabled"

    #@15
    const/4 v2, 0x1

    #@16
    .line 96
    invoke-static {v2, v1, v2, v2, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex/functions/Function;)Z

    #@19
    move-result v1

    #@1a
    sput-boolean v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    #@1c
    const-string v3, "rx2.purge-period-seconds"

    #@1e
    .line 97
    invoke-static {v1, v3, v2, v2, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->getIntProperty(ZLjava/lang/String;IILio/reactivex/functions/Function;)I

    #@21
    move-result v0

    #@22
    sput v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    #@24
    .line 99
    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->start()V

    #@27
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 145
    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    #@4
    move-result-object p0

    #@5
    .line 146
    sget-boolean v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    #@7
    invoke-static {v0, p0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V

    #@a
    return-object p0
.end method

.method static getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex/functions/Function;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_13

    #@2
    .line 120
    :try_start_2
    invoke-interface {p4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Ljava/lang/String;

    #@8
    if-nez p0, :cond_b

    #@a
    return p2

    #@b
    :cond_b
    const-string p1, "true"

    #@d
    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    #@11
    return p0

    #@12
    :catchall_12
    return p2

    #@13
    :cond_13
    return p3
.end method

.method static getIntProperty(ZLjava/lang/String;IILio/reactivex/functions/Function;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "II",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_11

    #@2
    .line 105
    :try_start_2
    invoke-interface {p4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Ljava/lang/String;

    #@8
    if-nez p0, :cond_b

    #@a
    return p2

    #@b
    .line 109
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e
    move-result p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    #@f
    return p0

    #@10
    :catchall_10
    return p2

    #@11
    :cond_11
    return p3
.end method

.method public static shutdown()V
    .registers 2

    #@0
    .line 87
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 89
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    #@e
    .line 91
    :cond_e
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    #@10
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@13
    return-void
.end method

.method public static start()V
    .registers 1

    #@0
    .line 60
    sget-boolean v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    #@2
    invoke-static {v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->tryStart(Z)V

    #@5
    return-void
.end method

.method static tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V
    .registers 3

    #@0
    if-eqz p0, :cond_e

    #@2
    .line 151
    instance-of p0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@4
    if-eqz p0, :cond_e

    #@6
    .line 152
    move-object p0, p1

    #@7
    check-cast p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@9
    .line 153
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    #@b
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    :cond_e
    return-void
.end method

.method static tryStart(Z)V
    .registers 11

    #@0
    if-eqz p0, :cond_32

    #@2
    .line 66
    :goto_2
    sget-object p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    #@a
    if-eqz v0, :cond_d

    #@c
    return-void

    #@d
    .line 70
    :cond_d
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@f
    const-string v2, "RxSchedulerPurge"

    #@11
    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    #@14
    const/4 v2, 0x1

    #@15
    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    #@18
    move-result-object v3

    #@19
    .line 71
    invoke-static {p0, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result p0

    #@1d
    if-eqz p0, :cond_2e

    #@1f
    .line 73
    new-instance v4, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;

    #@21
    invoke-direct {v4}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;-><init>()V

    #@24
    sget p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    #@26
    int-to-long v5, p0

    #@27
    int-to-long v7, p0

    #@28
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@2a
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@2d
    return-void

    #@2e
    .line 77
    :cond_2e
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    #@31
    goto :goto_2

    #@32
    :cond_32
    return-void
.end method
