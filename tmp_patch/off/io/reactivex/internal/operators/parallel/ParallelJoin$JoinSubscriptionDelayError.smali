.class final Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;
.super Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinSubscriptionDelayError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4fa158f1d44428dbL


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;II)V"
        }
    .end annotation

    #@0
    .line 323
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;-><init>(Lorg/reactivestreams/Subscriber;II)V

    #@3
    return-void
.end method


# virtual methods
.method drain()V
    .registers 2

    #@0
    .line 382
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 386
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    #@a
    return-void
.end method

.method drainLoop()V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    .line 392
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    #@4
    .line 393
    array-length v2, v1

    #@5
    .line 394
    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->downstream:Lorg/reactivestreams/Subscriber;

    #@7
    const/4 v5, 0x1

    #@8
    .line 398
    :goto_8
    iget-object v6, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@d
    move-result-wide v6

    #@e
    const-wide/16 v8, 0x0

    #@10
    move-wide v10, v8

    #@11
    :cond_11
    cmp-long v12, v10, v6

    #@13
    if-eqz v12, :cond_69

    #@15
    .line 403
    iget-boolean v12, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cancelled:Z

    #@17
    if-eqz v12, :cond_1d

    #@19
    .line 404
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cleanup()V

    #@1c
    return-void

    #@1d
    .line 408
    :cond_1d
    iget-object v12, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1f
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@22
    move-result v12

    #@23
    if-nez v12, :cond_27

    #@25
    const/4 v12, 0x1

    #@26
    goto :goto_28

    #@27
    :cond_27
    const/4 v12, 0x0

    #@28
    :goto_28
    const/4 v14, 0x0

    #@29
    const/4 v15, 0x1

    #@2a
    :goto_2a
    if-ge v14, v2, :cond_4b

    #@2c
    .line 413
    aget-object v4, v1, v14

    #@2e
    .line 415
    iget-object v13, v4, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@30
    if-eqz v13, :cond_48

    #@32
    .line 417
    invoke-interface {v13}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    #@35
    move-result-object v13

    #@36
    if-eqz v13, :cond_48

    #@38
    .line 421
    invoke-interface {v3, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@3b
    .line 422
    invoke-virtual {v4}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->requestOne()V

    #@3e
    const-wide/16 v16, 0x1

    #@40
    add-long v10, v10, v16

    #@42
    cmp-long v4, v10, v6

    #@44
    if-nez v4, :cond_47

    #@46
    goto :goto_69

    #@47
    :cond_47
    const/4 v15, 0x0

    #@48
    :cond_48
    add-int/lit8 v14, v14, 0x1

    #@4a
    goto :goto_2a

    #@4b
    :cond_4b
    if-eqz v12, :cond_67

    #@4d
    if-eqz v15, :cond_67

    #@4f
    .line 431
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@51
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Ljava/lang/Throwable;

    #@57
    if-eqz v1, :cond_63

    #@59
    .line 433
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@5b
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@5e
    move-result-object v1

    #@5f
    invoke-interface {v3, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@62
    goto :goto_66

    #@63
    .line 435
    :cond_63
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@66
    :goto_66
    return-void

    #@67
    :cond_67
    if-eqz v15, :cond_11

    #@69
    :cond_69
    :goto_69
    cmp-long v4, v10, v6

    #@6b
    if-nez v4, :cond_b1

    #@6d
    .line 446
    iget-boolean v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cancelled:Z

    #@6f
    if-eqz v4, :cond_75

    #@71
    .line 447
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cleanup()V

    #@74
    return-void

    #@75
    .line 451
    :cond_75
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@77
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@7a
    move-result v4

    #@7b
    if-nez v4, :cond_7f

    #@7d
    const/4 v4, 0x1

    #@7e
    goto :goto_80

    #@7f
    :cond_7f
    const/4 v4, 0x0

    #@80
    :goto_80
    const/4 v12, 0x0

    #@81
    :goto_81
    if-ge v12, v2, :cond_94

    #@83
    .line 456
    aget-object v13, v1, v12

    #@85
    .line 458
    iget-object v13, v13, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@87
    if-eqz v13, :cond_91

    #@89
    .line 459
    invoke-interface {v13}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@8c
    move-result v13

    #@8d
    if-nez v13, :cond_91

    #@8f
    const/4 v13, 0x0

    #@90
    goto :goto_95

    #@91
    :cond_91
    add-int/lit8 v12, v12, 0x1

    #@93
    goto :goto_81

    #@94
    :cond_94
    const/4 v13, 0x1

    #@95
    :goto_95
    if-eqz v4, :cond_b1

    #@97
    if-eqz v13, :cond_b1

    #@99
    .line 466
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@9b
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@9e
    move-result-object v1

    #@9f
    check-cast v1, Ljava/lang/Throwable;

    #@a1
    if-eqz v1, :cond_ad

    #@a3
    .line 468
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@a5
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@a8
    move-result-object v1

    #@a9
    invoke-interface {v3, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@ac
    goto :goto_b0

    #@ad
    .line 470
    :cond_ad
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@b0
    :goto_b0
    return-void

    #@b1
    :cond_b1
    cmp-long v4, v10, v8

    #@b3
    if-eqz v4, :cond_c4

    #@b5
    const-wide v8, 0x7fffffffffffffffL

    #@ba
    cmp-long v4, v6, v8

    #@bc
    if-eqz v4, :cond_c4

    #@be
    .line 477
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@c0
    neg-long v6, v10

    #@c1
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@c4
    .line 480
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->get()I

    #@c7
    move-result v4

    #@c8
    if-ne v4, v5, :cond_d2

    #@ca
    neg-int v4, v5

    #@cb
    .line 482
    invoke-virtual {v0, v4}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->addAndGet(I)I

    #@ce
    move-result v4

    #@cf
    if-nez v4, :cond_d2

    #@d1
    return-void

    #@d2
    :cond_d2
    move v5, v4

    #@d3
    goto/16 :goto_8
.end method

.method onComplete()V
    .registers 2

    #@0
    .line 376
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    .line 377
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drain()V

    #@8
    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 369
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@5
    .line 370
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@a
    .line 371
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drain()V

    #@d
    return-void
.end method

.method onNext(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    #@0
    .line 328
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->get()I

    #@3
    move-result v0

    #@4
    const-string v1, "Queue full?!"

    #@6
    if-nez v0, :cond_62

    #@8
    const/4 v0, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->compareAndSet(II)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_62

    #@10
    .line 329
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@15
    move-result-wide v2

    #@16
    const-wide/16 v4, 0x0

    #@18
    cmp-long v0, v2, v4

    #@1a
    if-eqz v0, :cond_3b

    #@1c
    .line 330
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->downstream:Lorg/reactivestreams/Subscriber;

    #@1e
    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@21
    .line 331
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@23
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@26
    move-result-wide v0

    #@27
    const-wide v2, 0x7fffffffffffffffL

    #@2c
    cmp-long p2, v0, v2

    #@2e
    if-eqz p2, :cond_35

    #@30
    .line 332
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@32
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    #@35
    :cond_35
    const-wide/16 v0, 0x1

    #@37
    .line 334
    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->request(J)V

    #@3a
    goto :goto_5b

    #@3b
    .line 336
    :cond_3b
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@3e
    move-result-object v0

    #@3f
    .line 338
    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@42
    move-result p2

    #@43
    if-nez p2, :cond_5b

    #@45
    .line 339
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->cancel()Z

    #@48
    .line 340
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@4a
    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    #@4c
    invoke-direct {p2, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@52
    .line 341
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@54
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@57
    .line 342
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    #@5a
    return-void

    #@5b
    .line 346
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->decrementAndGet()I

    #@5e
    move-result p1

    #@5f
    if-nez p1, :cond_88

    #@61
    return-void

    #@62
    .line 350
    :cond_62
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@65
    move-result-object v0

    #@66
    .line 352
    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@69
    move-result p2

    #@6a
    if-nez p2, :cond_81

    #@6c
    .line 353
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->cancel()Z

    #@6f
    move-result p1

    #@70
    if-eqz p1, :cond_81

    #@72
    .line 354
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@74
    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    #@76
    invoke-direct {p2, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@79
    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@7c
    .line 355
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7e
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@81
    .line 359
    :cond_81
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->getAndIncrement()I

    #@84
    move-result p1

    #@85
    if-eqz p1, :cond_88

    #@87
    return-void

    #@88
    .line 364
    :cond_88
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    #@8b
    return-void
.end method
