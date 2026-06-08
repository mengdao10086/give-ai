.class public final Lcom/blankj/utilcode/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;,
        Lcom/blankj/utilcode/util/ThreadUtils$Task;,
        Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;,
        Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;,
        Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;,
        Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;
    }
.end annotation


# static fields
.field private static final CPU_COUNT:I

.field private static final HANDLER:Landroid/os/Handler;

.field private static final TASK_POOL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMER:Ljava/util/Timer;

.field private static final TYPE_CACHED:B = -0x2t

.field private static final TYPE_CPU:B = -0x8t

.field private static final TYPE_IO:B = -0x4t

.field private static final TYPE_PRIORITY_POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TYPE_SINGLE:B = -0x1t

.field private static sDeliver:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 39
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    #@b
    .line 41
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    #@12
    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@17
    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->TASK_POOL_MAP:Ljava/util/Map;

    #@19
    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    #@20
    move-result v0

    #@21
    sput v0, Lcom/blankj/utilcode/util/ThreadUtils;->CPU_COUNT:I

    #@23
    .line 46
    new-instance v0, Ljava/util/Timer;

    #@25
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@28
    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->TIMER:Ljava/util/Timer;

    #@2a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$200()I
    .registers 1

    #@0
    .line 37
    sget v0, Lcom/blankj/utilcode/util/ThreadUtils;->CPU_COUNT:I

    #@2
    return v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/Executor;
    .registers 1

    #@0
    .line 37
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getGlobalDeliver()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    #@0
    .line 37
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->TASK_POOL_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public static cancel(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 1

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 867
    :cond_3
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->cancel()V

    #@6
    return-void
.end method

.method public static cancel(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_20

    #@2
    .line 889
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_20

    #@9
    .line 890
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p0

    #@d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_20

    #@13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/blankj/utilcode/util/ThreadUtils$Task;

    #@19
    if-nez v0, :cond_1c

    #@1b
    goto :goto_d

    #@1c
    .line 892
    :cond_1c
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->cancel()V

    #@1f
    goto :goto_d

    #@20
    :cond_20
    :goto_20
    return-void
.end method

.method public static cancel(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    #@0
    .line 902
    instance-of v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@2
    if-eqz v0, :cond_2a

    #@4
    .line 903
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->TASK_POOL_MAP:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_31

    #@14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/Map$Entry;

    #@1a
    .line 904
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    if-ne v2, p0, :cond_e

    #@20
    .line 905
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Lcom/blankj/utilcode/util/ThreadUtils$Task;

    #@26
    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->cancel(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@29
    goto :goto_e

    #@2a
    :cond_2a
    const-string p0, "ThreadUtils"

    #@2c
    const-string v0, "The executorService is not ThreadUtils\'s pool."

    #@2e
    .line 909
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    :cond_31
    return-void
.end method

.method public static varargs cancel([Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 4

    #@0
    if-eqz p0, :cond_15

    #@2
    .line 876
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_15

    #@6
    .line 877
    :cond_6
    array-length v0, p0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_8
    if-ge v1, v0, :cond_15

    #@a
    aget-object v2, p0, v1

    #@c
    if-nez v2, :cond_f

    #@e
    goto :goto_12

    #@f
    .line 879
    :cond_f
    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->cancel()V

    #@12
    :goto_12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_8

    #@15
    :cond_15
    :goto_15
    return-void
.end method

.method private static execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    const-wide/16 v2, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    .line 923
    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@a
    return-void
.end method

.method private static execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 943
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->TASK_POOL_MAP:Ljava/util/Map;

    #@2
    monitor-enter v0

    #@3
    .line 944
    :try_start_3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_12

    #@9
    const-string p0, "ThreadUtils"

    #@b
    const-string p1, "Task can only be executed once."

    #@d
    .line 945
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 946
    monitor-exit v0

    #@11
    return-void

    #@12
    .line 948
    :cond_12
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 949
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_4b

    #@16
    const-wide/16 v0, 0x0

    #@18
    cmp-long v2, p4, v0

    #@1a
    if-nez v2, :cond_33

    #@1c
    cmp-long p4, p2, v0

    #@1e
    if-nez p4, :cond_24

    #@20
    .line 952
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@23
    goto :goto_4a

    #@24
    .line 954
    :cond_24
    new-instance p4, Lcom/blankj/utilcode/util/ThreadUtils$1;

    #@26
    invoke-direct {p4, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$1;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@29
    .line 960
    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->TIMER:Ljava/util/Timer;

    #@2b
    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@2e
    move-result-wide p1

    #@2f
    invoke-virtual {p0, p4, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@32
    goto :goto_4a

    #@33
    :cond_33
    const/4 v0, 0x1

    #@34
    .line 963
    # invokes: Lcom/blankj/utilcode/util/ThreadUtils$Task;->setSchedule(Z)V
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->access$000(Lcom/blankj/utilcode/util/ThreadUtils$Task;Z)V

    #@37
    .line 964
    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$2;

    #@39
    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$2;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@3c
    .line 970
    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->TIMER:Ljava/util/Timer;

    #@3e
    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@41
    move-result-wide p2

    #@42
    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@45
    move-result-wide p4

    #@46
    move-object p1, v0

    #@47
    invoke-virtual/range {p0 .. p5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    #@4a
    :goto_4a
    return-void

    #@4b
    :catchall_4b
    move-exception p0

    #@4c
    .line 949
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    #@4d
    throw p0
.end method

.method private static executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 938
    invoke-static/range {p0 .. p6}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@3
    return-void
.end method

.method public static executeByCached(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    .line 452
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@8
    return-void
.end method

.method public static executeByCached(Lcom/blankj/utilcode/util/ThreadUtils$Task;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    .line 464
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p1

    #@5
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@8
    return-void
.end method

.method public static executeByCachedAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    .line 540
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    move-object v2, p0

    #@6
    move-wide v3, p1

    #@7
    move-wide v5, p3

    #@8
    move-object v7, p5

    #@9
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeByCachedAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    .line 559
    invoke-static {v0, p6}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    move-object v2, p0

    #@6
    move-wide v3, p1

    #@7
    move-wide v5, p3

    #@8
    move-object v7, p5

    #@9
    .line 558
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeByCachedAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    .line 508
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    const-wide/16 v3, 0x0

    #@7
    move-object v2, p0

    #@8
    move-wide v5, p1

    #@9
    move-object v7, p3

    #@a
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@d
    return-void
.end method

.method public static executeByCachedAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    .line 524
    invoke-static {v0, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    const-wide/16 v3, 0x0

    #@7
    move-object v2, p0

    #@8
    move-wide v5, p1

    #@9
    move-object v7, p3

    #@a
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@d
    return-void
.end method

.method public static executeByCachedWithDelay(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    .line 478
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@8
    return-void
.end method

.method public static executeByCachedWithDelay(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    .line 494
    invoke-static {v0, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p4

    #@5
    invoke-static {p4, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@8
    return-void
.end method

.method public static executeByCpu(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x8

    #@1
    .line 688
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@8
    return-void
.end method

.method public static executeByCpu(Lcom/blankj/utilcode/util/ThreadUtils$Task;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x8

    #@1
    .line 700
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p1

    #@5
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@8
    return-void
.end method

.method public static executeByCpuAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x8

    #@1
    .line 776
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    move-object v2, p0

    #@6
    move-wide v3, p1

    #@7
    move-wide v5, p3

    #@8
    move-object v7, p5

    #@9
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeByCpuAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x8

    #@1
    .line 795
    invoke-static {v0, p6}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    move-object v2, p0

    #@6
    move-wide v3, p1

    #@7
    move-wide v5, p3

    #@8
    move-object v7, p5

    #@9
    .line 794
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeByCpuAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x8

    #@1
    .line 744
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    const-wide/16 v3, 0x0

    #@7
    move-object v2, p0

    #@8
    move-wide v5, p1

    #@9
    move-object v7, p3

    #@a
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@d
    return-void
.end method

.method public static executeByCpuAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x8

    #@1
    .line 760
    invoke-static {v0, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    const-wide/16 v3, 0x0

    #@7
    move-object v2, p0

    #@8
    move-wide v5, p1

    #@9
    move-object v7, p3

    #@a
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@d
    return-void
.end method

.method public static executeByCpuWithDelay(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x8

    #@1
    .line 714
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@8
    return-void
.end method

.method public static executeByCpuWithDelay(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x8

    #@1
    .line 730
    invoke-static {v0, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p4

    #@5
    invoke-static {p4, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@8
    return-void
.end method

.method public static executeByCustom(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 807
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@3
    return-void
.end method

.method public static executeByCustomAtFixRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 857
    invoke-static/range {p0 .. p6}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@3
    return-void
.end method

.method public static executeByCustomAtFixRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const-wide/16 v2, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-wide v4, p2

    #@5
    move-object v6, p4

    #@6
    .line 839
    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@9
    return-void
.end method

.method public static executeByCustomWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 823
    invoke-static {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@3
    return-void
.end method

.method public static executeByFixed(ILcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 204
    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@7
    return-void
.end method

.method public static executeByFixed(ILcom/blankj/utilcode/util/ThreadUtils$Task;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 218
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@7
    return-void
.end method

.method public static executeByFixedAtFixRate(ILcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 304
    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object v0

    #@4
    move-object v1, p1

    #@5
    move-wide v2, p2

    #@6
    move-wide v4, p4

    #@7
    move-object v6, p6

    #@8
    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@b
    return-void
.end method

.method public static executeByFixedAtFixRate(ILcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    .line 324
    invoke-static {p0, p7}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object v0

    #@4
    move-object v1, p1

    #@5
    move-wide v2, p2

    #@6
    move-wide v4, p4

    #@7
    move-object v6, p6

    #@8
    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@b
    return-void
.end method

.method public static executeByFixedAtFixRate(ILcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 268
    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    move-object v1, p1

    #@7
    move-wide v4, p2

    #@8
    move-object v6, p4

    #@9
    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeByFixedAtFixRate(ILcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    .line 286
    invoke-static {p0, p5}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    move-object v1, p1

    #@7
    move-wide v4, p2

    #@8
    move-object v6, p4

    #@9
    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeByFixedWithDelay(ILcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 234
    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@7
    return-void
.end method

.method public static executeByFixedWithDelay(ILcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    .line 252
    invoke-static {p0, p5}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@7
    return-void
.end method

.method public static executeByIo(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x4

    #@1
    .line 570
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@8
    return-void
.end method

.method public static executeByIo(Lcom/blankj/utilcode/util/ThreadUtils$Task;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x4

    #@1
    .line 582
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p1

    #@5
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@8
    return-void
.end method

.method public static executeByIoAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x4

    #@1
    .line 658
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    move-object v2, p0

    #@6
    move-wide v3, p1

    #@7
    move-wide v5, p3

    #@8
    move-object v7, p5

    #@9
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeByIoAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x4

    #@1
    .line 677
    invoke-static {v0, p6}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    move-object v2, p0

    #@6
    move-wide v3, p1

    #@7
    move-wide v5, p3

    #@8
    move-object v7, p5

    #@9
    .line 676
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeByIoAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x4

    #@1
    .line 626
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    const-wide/16 v3, 0x0

    #@7
    move-object v2, p0

    #@8
    move-wide v5, p1

    #@9
    move-object v7, p3

    #@a
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@d
    return-void
.end method

.method public static executeByIoAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x4

    #@1
    .line 642
    invoke-static {v0, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    const-wide/16 v3, 0x0

    #@7
    move-object v2, p0

    #@8
    move-wide v5, p1

    #@9
    move-object v7, p3

    #@a
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@d
    return-void
.end method

.method public static executeByIoWithDelay(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x4

    #@1
    .line 596
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@8
    return-void
.end method

.method public static executeByIoWithDelay(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x4

    #@1
    .line 612
    invoke-static {v0, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p4

    #@5
    invoke-static {p4, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@8
    return-void
.end method

.method public static executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 334
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@8
    return-void
.end method

.method public static executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 346
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p1

    #@5
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@8
    return-void
.end method

.method public static executeBySingleAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 422
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    move-object v2, p0

    #@6
    move-wide v3, p1

    #@7
    move-wide v5, p3

    #@8
    move-object v7, p5

    #@9
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeBySingleAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 441
    invoke-static {v0, p6}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    move-object v2, p0

    #@6
    move-wide v3, p1

    #@7
    move-wide v5, p3

    #@8
    move-object v7, p5

    #@9
    .line 440
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@c
    return-void
.end method

.method public static executeBySingleAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 390
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    const-wide/16 v3, 0x0

    #@7
    move-object v2, p0

    #@8
    move-wide v5, p1

    #@9
    move-object v7, p3

    #@a
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@d
    return-void
.end method

.method public static executeBySingleAtFixRate(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 406
    invoke-static {v0, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v1

    #@5
    const-wide/16 v3, 0x0

    #@7
    move-object v2, p0

    #@8
    move-wide v5, p1

    #@9
    move-object v7, p3

    #@a
    invoke-static/range {v1 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@d
    return-void
.end method

.method public static executeBySingleWithDelay(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 360
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@8
    return-void
.end method

.method public static executeBySingleWithDelay(Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 376
    invoke-static {v0, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p4

    #@5
    invoke-static {p4, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    #@8
    return-void
.end method

.method private static executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    const-wide/16 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-wide v2, p2

    #@5
    move-object v6, p4

    #@6
    .line 930
    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    #@9
    return-void
.end method

.method public static getCachedPool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    #@0
    const/4 v0, -0x2

    #@1
    .line 137
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getCachedPool(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    #@0
    const/4 v0, -0x2

    #@1
    .line 149
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getCpuPool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    #@0
    const/4 v0, -0x8

    #@1
    .line 181
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getCpuPool(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    #@0
    const/4 v0, -0x8

    #@1
    .line 193
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getFixedPool(I)Ljava/util/concurrent/ExecutorService;
    .registers 1

    #@0
    .line 89
    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getFixedPool(II)Ljava/util/concurrent/ExecutorService;
    .registers 2

    #@0
    .line 103
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static getGlobalDeliver()Ljava/util/concurrent/Executor;
    .registers 1

    #@0
    .line 1381
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->sDeliver:Ljava/util/concurrent/Executor;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1382
    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$3;

    #@6
    invoke-direct {v0}, Lcom/blankj/utilcode/util/ThreadUtils$3;-><init>()V

    #@9
    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->sDeliver:Ljava/util/concurrent/Executor;

    #@b
    .line 1389
    :cond_b
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->sDeliver:Ljava/util/concurrent/Executor;

    #@d
    return-object v0
.end method

.method public static getIoPool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    #@0
    const/4 v0, -0x4

    #@1
    .line 159
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getIoPool(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    #@0
    const/4 v0, -0x4

    #@1
    .line 170
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .registers 1

    #@0
    .line 65
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method private static getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    #@0
    const/4 v0, 0x5

    #@1
    .line 975
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method private static getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;
    .registers 5

    #@0
    .line 979
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    #@2
    monitor-enter v0

    #@3
    .line 981
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/util/Map;

    #@d
    if-nez v1, :cond_27

    #@f
    .line 983
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@14
    .line 984
    # invokes: Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->createPool(II)Ljava/util/concurrent/ExecutorService;
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->access$100(II)Ljava/util/concurrent/ExecutorService;

    #@17
    move-result-object v2

    #@18
    .line 985
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object p1

    #@1c
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 986
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object p0

    #@23
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    goto :goto_3e

    #@27
    .line 988
    :cond_27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/util/concurrent/ExecutorService;

    #@31
    if-nez v2, :cond_3e

    #@33
    .line 990
    # invokes: Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->createPool(II)Ljava/util/concurrent/ExecutorService;
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->access$100(II)Ljava/util/concurrent/ExecutorService;

    #@36
    move-result-object v2

    #@37
    .line 991
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object p0

    #@3b
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 994
    :cond_3e
    :goto_3e
    monitor-exit v0

    #@3f
    return-object v2

    #@40
    :catchall_40
    move-exception p0

    #@41
    .line 995
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    #@42
    throw p0
.end method

.method public static getSinglePool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    #@0
    const/4 v0, -0x1

    #@1
    .line 114
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getSinglePool(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    .line 126
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static isMainThread()Z
    .registers 2

    #@0
    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_e

    #@a
    .line 70
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    #@d
    goto :goto_13

    #@e
    .line 72
    :cond_e
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    #@10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@13
    :goto_13
    return-void
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 4

    #@0
    .line 77
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@5
    return-void
.end method

.method public static setDeliver(Ljava/util/concurrent/Executor;)V
    .registers 1

    #@0
    .line 919
    sput-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->sDeliver:Ljava/util/concurrent/Executor;

    #@2
    return-void
.end method
