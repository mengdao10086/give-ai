.class public abstract Lcom/blankj/utilcode/util/ThreadUtils$Task;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x3

.field private static final EXCEPTIONAL:I = 0x2

.field private static final INTERRUPTED:I = 0x5

.field private static final NEW:I = 0x0

.field private static final RUNNING:I = 0x1

.field private static final TIMEOUT:I = 0x6


# instance fields
.field private deliver:Ljava/util/concurrent/Executor;

.field private volatile isSchedule:Z

.field private mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

.field private mTimeoutMillis:J

.field private mTimer:Ljava/util/Timer;

.field private volatile runner:Ljava/lang/Thread;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/ThreadUtils$Task;Z)V
    .registers 2

    #@0
    .line 1168
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->setSchedule(Z)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/blankj/utilcode/util/ThreadUtils$Task;)Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;
    .registers 1

    #@0
    .line 1168
    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    #@2
    return-object p0
.end method

.method static synthetic access$500(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 1

    #@0
    .line 1168
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->timeout()V

    #@3
    return-void
.end method

.method private getDeliver()Ljava/util/concurrent/Executor;
    .registers 2

    #@0
    .line 1322
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->deliver:Ljava/util/concurrent/Executor;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 1323
    # invokes: Lcom/blankj/utilcode/util/ThreadUtils;->getGlobalDeliver()Ljava/util/concurrent/Executor;
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$600()Ljava/util/concurrent/Executor;

    #@7
    move-result-object v0

    #@8
    :cond_8
    return-object v0
.end method

.method private setSchedule(Z)V
    .registers 2

    #@0
    .line 1318
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    #@2
    return-void
.end method

.method private timeout()V
    .registers 4

    #@0
    .line 1285
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    monitor-enter v0

    #@3
    .line 1286
    :try_start_3
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x1

    #@a
    if-le v1, v2, :cond_e

    #@c
    monitor-exit v0

    #@d
    return-void

    #@e
    .line 1287
    :cond_e
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    const/4 v2, 0x6

    #@11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@14
    .line 1288
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    #@15
    .line 1289
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    #@17
    if-eqz v0, :cond_1e

    #@19
    .line 1290
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    #@1b
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@1e
    :cond_1e
    return-void

    #@1f
    :catchall_1f
    move-exception v1

    #@20
    .line 1288
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    #@21
    throw v1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 1261
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->cancel(Z)V

    #@4
    return-void
.end method

.method public cancel(Z)V
    .registers 5

    #@0
    .line 1265
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    monitor-enter v0

    #@3
    .line 1266
    :try_start_3
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x1

    #@a
    if-le v1, v2, :cond_e

    #@c
    monitor-exit v0

    #@d
    return-void

    #@e
    .line 1267
    :cond_e
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    const/4 v2, 0x4

    #@11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@14
    .line 1268
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2d

    #@15
    if-eqz p1, :cond_20

    #@17
    .line 1270
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    #@19
    if-eqz p1, :cond_20

    #@1b
    .line 1271
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    #@1d
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    #@20
    .line 1275
    :cond_20
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    #@23
    move-result-object p1

    #@24
    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;

    #@26
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@29
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@2c
    return-void

    #@2d
    :catchall_2d
    move-exception p1

    #@2e
    .line 1268
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    #@2f
    throw p1
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public isCanceled()Z
    .registers 3

    #@0
    .line 1296
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x4

    #@7
    if-lt v0, v1, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0
.end method

.method public isDone()Z
    .registers 3

    #@0
    .line 1300
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-le v0, v1, :cond_a

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    :goto_b
    return v1
.end method

.method public abstract onCancel()V
.end method

.method protected onDone()V
    .registers 2

    #@0
    .line 1330
    # getter for: Lcom/blankj/utilcode/util/ThreadUtils;->TASK_POOL_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$700()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1331
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimer:Ljava/util/Timer;

    #@9
    if-eqz v0, :cond_13

    #@b
    .line 1332
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    #@e
    const/4 v0, 0x0

    #@f
    .line 1333
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimer:Ljava/util/Timer;

    #@11
    .line 1334
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    #@13
    :cond_13
    return-void
.end method

.method public abstract onFail(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .registers 6

    #@0
    .line 1199
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v0, :cond_2e

    #@6
    .line 1200
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    #@8
    if-nez v0, :cond_25

    #@a
    .line 1201
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_13

    #@12
    return-void

    #@13
    .line 1202
    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    #@19
    .line 1203
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    #@1b
    if-eqz v0, :cond_52

    #@1d
    const-string v0, "ThreadUtils"

    #@1f
    const-string v1, "Scheduled task doesn\'t support timeout."

    #@21
    .line 1204
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_52

    #@25
    .line 1207
    :cond_25
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@2a
    move-result v0

    #@2b
    if-eq v0, v2, :cond_52

    #@2d
    return-void

    #@2e
    .line 1210
    :cond_2e
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@30
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_37

    #@36
    return-void

    #@37
    .line 1211
    :cond_37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    #@3d
    .line 1212
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    #@3f
    if-eqz v0, :cond_52

    #@41
    .line 1213
    new-instance v0, Ljava/util/Timer;

    #@43
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@46
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimer:Ljava/util/Timer;

    #@48
    .line 1214
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$Task$1;

    #@4a
    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$1;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    #@4d
    iget-wide v3, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutMillis:J

    #@4f
    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@52
    .line 1227
    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->doInBackground()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    .line 1228
    iget-boolean v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    #@58
    if-eqz v1, :cond_70

    #@5a
    .line 1229
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5f
    move-result v1

    #@60
    if-eq v1, v2, :cond_63

    #@62
    return-void

    #@63
    .line 1230
    :cond_63
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    #@66
    move-result-object v1

    #@67
    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;

    #@69
    invoke-direct {v3, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V

    #@6c
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@6f
    goto :goto_a6

    #@70
    .line 1237
    :cond_70
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@72
    const/4 v3, 0x3

    #@73
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@76
    move-result v1

    #@77
    if-nez v1, :cond_7a

    #@79
    return-void

    #@7a
    .line 1238
    :cond_7a
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    #@7d
    move-result-object v1

    #@7e
    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$Task$3;

    #@80
    invoke-direct {v3, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$3;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V

    #@83
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_86} :catch_9f
    .catchall {:try_start_52 .. :try_end_86} :catchall_87

    #@86
    goto :goto_a6

    #@87
    :catchall_87
    move-exception v0

    #@88
    .line 1249
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8a
    const/4 v3, 0x2

    #@8b
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@8e
    move-result v1

    #@8f
    if-nez v1, :cond_92

    #@91
    return-void

    #@92
    .line 1250
    :cond_92
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    #@95
    move-result-object v1

    #@96
    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;

    #@98
    invoke-direct {v2, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Throwable;)V

    #@9b
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@9e
    goto :goto_a6

    #@9f
    .line 1247
    :catch_9f
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a1
    const/4 v1, 0x4

    #@a2
    const/4 v2, 0x5

    #@a3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@a6
    :goto_a6
    return-void
.end method

.method public setDeliver(Ljava/util/concurrent/Executor;)Lcom/blankj/utilcode/util/ThreadUtils$Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 1304
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->deliver:Ljava/util/concurrent/Executor;

    #@2
    return-object p0
.end method

.method public setTimeout(JLcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;)Lcom/blankj/utilcode/util/ThreadUtils$Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;",
            ")",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 1312
    iput-wide p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutMillis:J

    #@2
    .line 1313
    iput-object p3, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    #@4
    return-object p0
.end method
