.class public Landroidx/core/provider/SelfDestructiveThread;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_DESTRUCTION:I = 0x0

.field private static final MSG_INVOKE_RUNNABLE:I = 0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private final mDestructAfterMillisec:I

.field private mGeneration:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPriority:I

.field private mThread:Landroid/os/HandlerThread;

.field private final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    #@0
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    #@a
    .line 62
    new-instance v0, Landroidx/core/provider/SelfDestructiveThread$1;

    #@c
    invoke-direct {v0, p0}, Landroidx/core/provider/SelfDestructiveThread$1;-><init>(Landroidx/core/provider/SelfDestructiveThread;)V

    #@f
    iput-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    #@11
    .line 84
    iput-object p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    #@13
    .line 85
    iput p2, p0, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    #@15
    .line 86
    iput p3, p0, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    #@17
    const/4 p1, 0x0

    #@18
    .line 87
    iput p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    #@1a
    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .registers 7

    #@0
    .line 111
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 112
    :try_start_3
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    #@5
    const/4 v2, 0x1

    #@6
    if-nez v1, :cond_2a

    #@8
    .line 113
    new-instance v1, Landroid/os/HandlerThread;

    #@a
    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    #@c
    iget v4, p0, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    #@e
    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@11
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    #@13
    .line 114
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@16
    .line 115
    new-instance v1, Landroid/os/Handler;

    #@18
    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    #@1a
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1d
    move-result-object v3

    #@1e
    iget-object v4, p0, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    #@20
    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@23
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    #@25
    .line 116
    iget v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    #@27
    add-int/2addr v1, v2

    #@28
    iput v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    #@2a
    .line 118
    :cond_2a
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@30
    .line 119
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    #@32
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@39
    .line 120
    monitor-exit v0

    #@3a
    return-void

    #@3b
    :catchall_3b
    move-exception p1

    #@3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    #@3d
    throw p1
.end method


# virtual methods
.method public getGeneration()I
    .registers 3

    #@0
    .line 105
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 106
    :try_start_3
    iget v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    :catchall_7
    move-exception v1

    #@8
    .line 107
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v1
.end method

.method public isRunning()Z
    .registers 3

    #@0
    .line 95
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 96
    :try_start_3
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    #@5
    if-eqz v1, :cond_9

    #@7
    const/4 v1, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v1, 0x0

    #@a
    :goto_a
    monitor-exit v0

    #@b
    return v1

    #@c
    :catchall_c
    move-exception v1

    #@d
    .line 97
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    #@e
    throw v1
.end method

.method onDestruction()V
    .registers 4

    #@0
    .line 228
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 229
    :try_start_3
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_e

    #@c
    .line 232
    monitor-exit v0

    #@d
    return-void

    #@e
    .line 234
    :cond_e
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    #@10
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    #@13
    const/4 v1, 0x0

    #@14
    .line 235
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    #@16
    .line 236
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    #@18
    .line 237
    monitor-exit v0

    #@19
    return-void

    #@1a
    :catchall_1a
    move-exception v1

    #@1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    #@1c
    throw v1
.end method

.method onInvokeRunnable(Ljava/lang/Runnable;)V
    .registers 6

    #@0
    .line 219
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@3
    .line 220
    iget-object p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter p1

    #@6
    .line 221
    :try_start_6
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 222
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    #@14
    int-to-long v2, v2

    #@15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@18
    .line 224
    monitor-exit p1

    #@19
    return-void

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    #@1c
    throw v0
.end method

.method public postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 141
    invoke-static {}, Landroidx/core/provider/CalleeHandler;->create()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    .line 142
    new-instance v1, Landroidx/core/provider/SelfDestructiveThread$2;

    #@6
    invoke-direct {v1, p0, p1, v0, p2}, Landroidx/core/provider/SelfDestructiveThread$2;-><init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V

    #@9
    invoke-direct {p0, v1}, Landroidx/core/provider/SelfDestructiveThread;->post(Ljava/lang/Runnable;)V

    #@c
    return-void
.end method

.method public postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .line 171
    new-instance v7, Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@5
    .line 172
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@8
    move-result-object v8

    #@9
    .line 174
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@e
    .line 175
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@10
    const/4 v0, 0x1

    #@11
    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@14
    .line 176
    new-instance v11, Landroidx/core/provider/SelfDestructiveThread$3;

    #@16
    move-object v0, v11

    #@17
    move-object v1, p0

    #@18
    move-object v2, v9

    #@19
    move-object v3, p1

    #@1a
    move-object v4, v7

    #@1b
    move-object v5, v10

    #@1c
    move-object v6, v8

    #@1d
    invoke-direct/range {v0 .. v6}, Landroidx/core/provider/SelfDestructiveThread$3;-><init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    #@20
    invoke-direct {p0, v11}, Landroidx/core/provider/SelfDestructiveThread;->post(Ljava/lang/Runnable;)V

    #@23
    .line 194
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@26
    .line 196
    :try_start_26
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@29
    move-result p1

    #@2a
    if-nez p1, :cond_34

    #@2c
    .line 197
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object p1
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_5c

    #@30
    .line 214
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@33
    return-object p1

    #@34
    .line 199
    :cond_34
    :try_start_34
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@36
    int-to-long v0, p2

    #@37
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3a
    move-result-wide p1
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_5c

    #@3b
    .line 202
    :goto_3b
    :try_start_3b
    invoke-interface {v8, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@3e
    move-result-wide p1
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3f} :catch_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_5c

    #@3f
    .line 206
    :catch_3f
    :try_start_3f
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_4d

    #@45
    .line 207
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@48
    move-result-object p1
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_5c

    #@49
    .line 214
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@4c
    return-object p1

    #@4d
    :cond_4d
    const-wide/16 v0, 0x0

    #@4f
    cmp-long v0, p1, v0

    #@51
    if-lez v0, :cond_54

    #@53
    goto :goto_3b

    #@54
    .line 210
    :cond_54
    :try_start_54
    new-instance p1, Ljava/lang/InterruptedException;

    #@56
    const-string p2, "timeout"

    #@58
    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    #@5b
    throw p1
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5c

    #@5c
    :catchall_5c
    move-exception p1

    #@5d
    .line 214
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@60
    .line 215
    throw p1
.end method
