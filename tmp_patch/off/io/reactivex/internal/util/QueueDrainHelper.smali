.class public final Lio/reactivex/internal/util/QueueDrainHelper;
.super Ljava/lang/Object;
.source "QueueDrainHelper.java"


# static fields
.field static final COMPLETED_MASK:J = -0x8000000000000000L

.field static final REQUESTED_MASK:J = 0x7fffffffffffffffL


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lio/reactivex/Observer<",
            "*>;Z",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "*>;",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/ObservableQueueDrain<",
            "TT;TU;>;)Z"
        }
    .end annotation

    #@0
    .line 162
    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->cancelled()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_e

    #@7
    .line 163
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@a
    .line 164
    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@d
    return v1

    #@e
    :cond_e
    if-eqz p0, :cond_44

    #@10
    if-eqz p3, :cond_27

    #@12
    if-eqz p1, :cond_44

    #@14
    if-eqz p5, :cond_19

    #@16
    .line 172
    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@19
    .line 174
    :cond_19
    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->error()Ljava/lang/Throwable;

    #@1c
    move-result-object p0

    #@1d
    if-eqz p0, :cond_23

    #@1f
    .line 176
    invoke-interface {p2, p0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@22
    goto :goto_26

    #@23
    .line 178
    :cond_23
    invoke-interface {p2}, Lio/reactivex/Observer;->onComplete()V

    #@26
    :goto_26
    return v1

    #@27
    .line 183
    :cond_27
    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->error()Ljava/lang/Throwable;

    #@2a
    move-result-object p0

    #@2b
    if-eqz p0, :cond_39

    #@2d
    .line 185
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@30
    if-eqz p5, :cond_35

    #@32
    .line 187
    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@35
    .line 189
    :cond_35
    invoke-interface {p2, p0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@38
    return v1

    #@39
    :cond_39
    if-eqz p1, :cond_44

    #@3b
    if-eqz p5, :cond_40

    #@3d
    .line 194
    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@40
    .line 196
    :cond_40
    invoke-interface {p2}, Lio/reactivex/Observer;->onComplete()V

    #@43
    return v1

    #@44
    :cond_44
    const/4 p0, 0x0

    #@45
    return p0
.end method

.method public static checkTerminated(ZZLorg/reactivestreams/Subscriber;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/internal/util/QueueDrain;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "*>;Z",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "*>;",
            "Lio/reactivex/internal/util/QueueDrain<",
            "TT;TU;>;)Z"
        }
    .end annotation

    #@0
    .line 95
    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->cancelled()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_b

    #@7
    .line 96
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@a
    return v1

    #@b
    :cond_b
    if-eqz p0, :cond_32

    #@d
    if-eqz p3, :cond_1f

    #@f
    if-eqz p1, :cond_32

    #@11
    .line 103
    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->error()Ljava/lang/Throwable;

    #@14
    move-result-object p0

    #@15
    if-eqz p0, :cond_1b

    #@17
    .line 105
    invoke-interface {p2, p0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@1a
    goto :goto_1e

    #@1b
    .line 107
    :cond_1b
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@1e
    :goto_1e
    return v1

    #@1f
    .line 112
    :cond_1f
    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->error()Ljava/lang/Throwable;

    #@22
    move-result-object p0

    #@23
    if-eqz p0, :cond_2c

    #@25
    .line 114
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@28
    .line 115
    invoke-interface {p2, p0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@2b
    return v1

    #@2c
    :cond_2c
    if-eqz p1, :cond_32

    #@2e
    .line 119
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@31
    return v1

    #@32
    :cond_32
    const/4 p0, 0x0

    #@33
    return p0
.end method

.method public static createQueue(I)Lio/reactivex/internal/fuseable/SimpleQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation

    #@0
    if-gez p0, :cond_9

    #@2
    .line 215
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@4
    neg-int p0, p0

    #@5
    invoke-direct {v0, p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@8
    return-object v0

    #@9
    .line 217
    :cond_9
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@b
    invoke-direct {v0, p0}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@e
    return-object v0
.end method

.method public static drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;",
            "Lio/reactivex/Observer<",
            "-TU;>;Z",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/ObservableQueueDrain<",
            "TT;TU;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    move v1, v0

    #@2
    .line 133
    :cond_2
    invoke-interface {p4}, Lio/reactivex/internal/util/ObservableQueueDrain;->done()Z

    #@5
    move-result v2

    #@6
    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    #@9
    move-result v3

    #@a
    move-object v4, p1

    #@b
    move v5, p2

    #@c
    move-object v6, p0

    #@d
    move-object v7, p3

    #@e
    move-object v8, p4

    #@f
    invoke-static/range {v2 .. v8}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_16

    #@15
    return-void

    #@16
    .line 138
    :cond_16
    :goto_16
    invoke-interface {p4}, Lio/reactivex/internal/util/ObservableQueueDrain;->done()Z

    #@19
    move-result v3

    #@1a
    .line 139
    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    if-nez v2, :cond_22

    #@20
    move v10, v0

    #@21
    goto :goto_24

    #@22
    :cond_22
    const/4 v4, 0x0

    #@23
    move v10, v4

    #@24
    :goto_24
    move v4, v10

    #@25
    move-object v5, p1

    #@26
    move v6, p2

    #@27
    move-object v7, p0

    #@28
    move-object v8, p3

    #@29
    move-object v9, p4

    #@2a
    .line 142
    invoke-static/range {v3 .. v9}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_31

    #@30
    return-void

    #@31
    :cond_31
    if-eqz v10, :cond_3b

    #@33
    neg-int v1, v1

    #@34
    .line 153
    invoke-interface {p4, v1}, Lio/reactivex/internal/util/ObservableQueueDrain;->leave(I)I

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_2

    #@3a
    return-void

    #@3b
    .line 150
    :cond_3b
    invoke-interface {p4, p1, v2}, Lio/reactivex/internal/util/ObservableQueueDrain;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    #@3e
    goto :goto_16
.end method

.method public static drainMaxLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/QueueDrain;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;Z",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/QueueDrain<",
            "TT;TU;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    move v1, v0

    #@2
    .line 52
    :cond_2
    :goto_2
    invoke-interface {p4}, Lio/reactivex/internal/util/QueueDrain;->done()Z

    #@5
    move-result v2

    #@6
    .line 54
    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    #@9
    move-result-object v8

    #@a
    if-nez v8, :cond_e

    #@c
    move v9, v0

    #@d
    goto :goto_10

    #@e
    :cond_e
    const/4 v3, 0x0

    #@f
    move v9, v3

    #@10
    :goto_10
    move v3, v9

    #@11
    move-object v4, p1

    #@12
    move v5, p2

    #@13
    move-object v6, p0

    #@14
    move-object v7, p4

    #@15
    .line 58
    invoke-static/range {v2 .. v7}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLorg/reactivestreams/Subscriber;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/internal/util/QueueDrain;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_21

    #@1b
    if-eqz p3, :cond_20

    #@1d
    .line 60
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@20
    :cond_20
    return-void

    #@21
    :cond_21
    if-eqz v9, :cond_2b

    #@23
    neg-int v1, v1

    #@24
    .line 86
    invoke-interface {p4, v1}, Lio/reactivex/internal/util/QueueDrain;->leave(I)I

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_2

    #@2a
    return-void

    #@2b
    .line 69
    :cond_2b
    invoke-interface {p4}, Lio/reactivex/internal/util/QueueDrain;->requested()J

    #@2e
    move-result-wide v2

    #@2f
    const-wide/16 v4, 0x0

    #@31
    cmp-long v4, v2, v4

    #@33
    if-eqz v4, :cond_4a

    #@35
    .line 71
    invoke-interface {p4, p1, v8}, Lio/reactivex/internal/util/QueueDrain;->accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_2

    #@3b
    const-wide v4, 0x7fffffffffffffffL

    #@40
    cmp-long v2, v2, v4

    #@42
    if-eqz v2, :cond_2

    #@44
    const-wide/16 v2, 0x1

    #@46
    .line 73
    invoke-interface {p4, v2, v3}, Lio/reactivex/internal/util/QueueDrain;->produced(J)J

    #@49
    goto :goto_2

    #@4a
    .line 77
    :cond_4a
    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    #@4d
    if-eqz p3, :cond_52

    #@4f
    .line 79
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@52
    .line 81
    :cond_52
    new-instance p0, Lio/reactivex/exceptions/MissingBackpressureException;

    #@54
    const-string p2, "Could not emit value due to lack of requests."

    #@56
    invoke-direct {p0, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@59
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@5c
    return-void
.end method

.method static isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z
    .registers 1

    #@0
    .line 283
    :try_start_0
    invoke-interface {p0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    #@3
    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    #@4
    return p0

    #@5
    :catchall_5
    move-exception p0

    #@6
    .line 285
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@9
    const/4 p0, 0x1

    #@a
    return p0
.end method

.method public static postComplete(Lorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")V"
        }
    .end annotation

    #@0
    .line 400
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 401
    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@9
    return-void

    #@a
    .line 405
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@d
    move-result-wide v1

    #@e
    move-object v3, p0

    #@f
    move-object v4, p1

    #@10
    move-object/from16 v5, p2

    #@12
    move-object/from16 v6, p3

    #@14
    invoke-static/range {v1 .. v6}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1b

    #@1a
    return-void

    #@1b
    .line 410
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@1e
    move-result-wide v0

    #@1f
    const-wide/high16 v2, -0x8000000000000000L

    #@21
    and-long v4, v0, v2

    #@23
    const-wide/16 v6, 0x0

    #@25
    cmp-long v4, v4, v6

    #@27
    if-eqz v4, :cond_2a

    #@29
    return-void

    #@2a
    :cond_2a
    or-long v8, v0, v2

    #@2c
    move-object/from16 v2, p2

    #@2e
    .line 418
    invoke-virtual {v2, v0, v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_1b

    #@34
    cmp-long v0, v0, v6

    #@36
    if-eqz v0, :cond_41

    #@38
    move-object v10, p0

    #@39
    move-object v11, p1

    #@3a
    move-object/from16 v12, p2

    #@3c
    move-object/from16 v13, p3

    #@3e
    .line 421
    invoke-static/range {v8 .. v13}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    #@41
    :cond_41
    return-void
.end method

.method static postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")Z"
        }
    .end annotation

    #@0
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    and-long v2, p0, v0

    #@4
    :cond_4
    :goto_4
    cmp-long v4, v2, p0

    #@6
    const/4 v5, 0x1

    #@7
    if-eqz v4, :cond_21

    #@9
    .line 331
    invoke-static {p5}, Lio/reactivex/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_10

    #@f
    return v5

    #@10
    .line 335
    :cond_10
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    if-nez v4, :cond_1a

    #@16
    .line 338
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@19
    return v5

    #@1a
    .line 342
    :cond_1a
    invoke-interface {p2, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    add-long/2addr v2, v4

    #@20
    goto :goto_4

    #@21
    .line 346
    :cond_21
    invoke-static {p5}, Lio/reactivex/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z

    #@24
    move-result p0

    #@25
    if-eqz p0, :cond_28

    #@27
    return v5

    #@28
    .line 350
    :cond_28
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    #@2b
    move-result p0

    #@2c
    if-eqz p0, :cond_32

    #@2e
    .line 351
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@31
    return v5

    #@32
    .line 355
    :cond_32
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@35
    move-result-wide p0

    #@36
    cmp-long v4, p0, v2

    #@38
    if-nez v4, :cond_4

    #@3a
    const-wide p0, 0x7fffffffffffffffL

    #@3f
    and-long/2addr v2, p0

    #@40
    neg-long v2, v2

    #@41
    .line 359
    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@44
    move-result-wide v2

    #@45
    and-long/2addr p0, v2

    #@46
    const-wide/16 v4, 0x0

    #@48
    cmp-long p0, p0, v4

    #@4a
    if-nez p0, :cond_4e

    #@4c
    const/4 p0, 0x0

    #@4d
    return p0

    #@4e
    :cond_4e
    and-long p0, v2, v0

    #@50
    move-wide v6, p0

    #@51
    move-wide p0, v2

    #@52
    move-wide v2, v6

    #@53
    goto :goto_4
.end method

.method public static postCompleteRequest(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")Z"
        }
    .end annotation

    #@0
    move-wide v0, p0

    #@1
    .line 258
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@4
    move-result-wide v2

    #@5
    const-wide v4, 0x7fffffffffffffffL

    #@a
    and-long/2addr v4, v2

    #@b
    const-wide/high16 v6, -0x8000000000000000L

    #@d
    and-long v8, v2, v6

    #@f
    .line 264
    invoke-static {v4, v5, p0, p1}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    #@12
    move-result-wide v4

    #@13
    or-long/2addr v4, v8

    #@14
    move-object/from16 v12, p4

    #@16
    .line 266
    invoke-virtual {v12, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    cmp-long v2, v2, v6

    #@1e
    if-nez v2, :cond_2f

    #@20
    or-long v8, v0, v6

    #@22
    move-object/from16 v10, p2

    #@24
    move-object/from16 v11, p3

    #@26
    move-object/from16 v12, p4

    #@28
    move-object/from16 v13, p5

    #@2a
    .line 270
    invoke-static/range {v8 .. v13}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    #@2d
    const/4 v0, 0x1

    #@2e
    return v0

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    return v0
.end method

.method public static request(Lorg/reactivestreams/Subscription;I)V
    .registers 4

    #@0
    if-gez p1, :cond_8

    #@2
    const-wide v0, 0x7fffffffffffffffL

    #@7
    goto :goto_9

    #@8
    :cond_8
    int-to-long v0, p1

    #@9
    .line 227
    :goto_9
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@c
    return-void
.end method
