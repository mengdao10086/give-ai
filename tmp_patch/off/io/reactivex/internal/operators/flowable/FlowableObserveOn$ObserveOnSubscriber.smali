.class final Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;
.super Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.source "FlowableObserveOn.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3f1a97e8f84a341aL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/Scheduler$Worker;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            "ZI)V"
        }
    .end annotation

    #@0
    .line 257
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;-><init>(Lio/reactivex/Scheduler$Worker;ZI)V

    #@3
    .line 258
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    #@0
    .line 263
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_4c

    #@8
    .line 264
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 266
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@c
    if-eqz v0, :cond_38

    #@e
    .line 268
    move-object v0, p1

    #@f
    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@11
    const/4 v1, 0x7

    #@12
    .line 270
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    #@15
    move-result v1

    #@16
    const/4 v2, 0x1

    #@17
    if-ne v1, v2, :cond_25

    #@19
    .line 273
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    #@1b
    .line 274
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@1d
    .line 275
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    #@1f
    .line 277
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@21
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@24
    return-void

    #@25
    :cond_25
    const/4 v2, 0x2

    #@26
    if-ne v1, v2, :cond_38

    #@28
    .line 281
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    #@2a
    .line 282
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@2c
    .line 284
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2e
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@31
    .line 286
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    #@33
    int-to-long v0, v0

    #@34
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@37
    return-void

    #@38
    .line 292
    :cond_38
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@3a
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    #@3c
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@3f
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@41
    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@43
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@46
    .line 296
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    #@48
    int-to-long v0, v0

    #@49
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@4c
    :cond_4c
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 472
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_25

    #@8
    .line 473
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    #@a
    const/4 v2, 0x1

    #@b
    if-eq v1, v2, :cond_25

    #@d
    .line 474
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    #@f
    const-wide/16 v3, 0x1

    #@11
    add-long/2addr v1, v3

    #@12
    .line 475
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->limit:I

    #@14
    int-to-long v3, v3

    #@15
    cmp-long v3, v1, v3

    #@17
    if-nez v3, :cond_23

    #@19
    const-wide/16 v3, 0x0

    #@1b
    .line 476
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    #@1d
    .line 477
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@1f
    invoke-interface {v3, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@22
    goto :goto_25

    #@23
    .line 479
    :cond_23
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    #@25
    :cond_25
    :goto_25
    return-object v0
.end method

.method runAsync()V
    .registers 13

    #@0
    .line 370
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2
    .line 371
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@4
    .line 373
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    #@6
    const/4 v4, 0x1

    #@7
    move v5, v4

    #@8
    .line 377
    :cond_8
    :goto_8
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@d
    move-result-wide v6

    #@e
    :cond_e
    :goto_e
    cmp-long v8, v2, v6

    #@10
    if-eqz v8, :cond_63

    #@12
    .line 380
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    #@14
    .line 384
    :try_start_14
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@17
    move-result-object v10
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_4c

    #@18
    if-nez v10, :cond_1c

    #@1a
    move v11, v4

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v11, 0x0

    #@1d
    .line 399
    :goto_1d
    invoke-virtual {p0, v9, v11, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_24

    #@23
    return-void

    #@24
    :cond_24
    if-eqz v11, :cond_27

    #@26
    goto :goto_63

    #@27
    .line 407
    :cond_27
    invoke-interface {v0, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@2a
    const-wide/16 v8, 0x1

    #@2c
    add-long/2addr v2, v8

    #@2d
    .line 410
    iget v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->limit:I

    #@2f
    int-to-long v8, v8

    #@30
    cmp-long v8, v2, v8

    #@32
    if-nez v8, :cond_e

    #@34
    const-wide v8, 0x7fffffffffffffffL

    #@39
    cmp-long v8, v6, v8

    #@3b
    if-eqz v8, :cond_44

    #@3d
    .line 412
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@3f
    neg-long v7, v2

    #@40
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@43
    move-result-wide v6

    #@44
    .line 414
    :cond_44
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@46
    invoke-interface {v8, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    #@49
    const-wide/16 v2, 0x0

    #@4b
    goto :goto_e

    #@4c
    :catchall_4c
    move-exception v2

    #@4d
    .line 386
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@50
    .line 388
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    #@52
    .line 389
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@54
    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    #@57
    .line 390
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@5a
    .line 392
    invoke-interface {v0, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@5d
    .line 393
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@5f
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@62
    return-void

    #@63
    :cond_63
    :goto_63
    if-nez v8, :cond_72

    #@65
    .line 419
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    #@67
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@6a
    move-result v7

    #@6b
    invoke-virtual {p0, v6, v7, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_72

    #@71
    return-void

    #@72
    .line 423
    :cond_72
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->get()I

    #@75
    move-result v6

    #@76
    if-ne v5, v6, :cond_82

    #@78
    .line 425
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    #@7a
    neg-int v5, v5

    #@7b
    .line 426
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    #@7e
    move-result v5

    #@7f
    if-nez v5, :cond_8

    #@81
    return-void

    #@82
    :cond_82
    move v5, v6

    #@83
    goto :goto_8
.end method

.method runBackfused()V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    move v1, v0

    #@2
    .line 442
    :cond_2
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    #@4
    if-eqz v2, :cond_7

    #@6
    return-void

    #@7
    .line 446
    :cond_7
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    #@9
    .line 448
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@b
    const/4 v4, 0x0

    #@c
    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@f
    if-eqz v2, :cond_28

    #@11
    .line 451
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    #@13
    .line 452
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    #@15
    if-eqz v0, :cond_1d

    #@17
    .line 454
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@19
    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@1c
    goto :goto_22

    #@1d
    .line 456
    :cond_1d
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@1f
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@22
    .line 458
    :goto_22
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@24
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@27
    return-void

    #@28
    :cond_28
    neg-int v1, v1

    #@29
    .line 462
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_2

    #@2f
    return-void
.end method

.method runSync()V
    .registers 11

    #@0
    .line 304
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2
    .line 305
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@4
    .line 307
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    #@6
    const/4 v4, 0x1

    #@7
    move v5, v4

    #@8
    .line 311
    :cond_8
    :goto_8
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@d
    move-result-wide v6

    #@e
    :goto_e
    cmp-long v8, v2, v6

    #@10
    if-eqz v8, :cond_43

    #@12
    .line 317
    :try_start_12
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@15
    move-result-object v8
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_2f

    #@16
    .line 327
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    #@18
    if-eqz v9, :cond_1b

    #@1a
    return-void

    #@1b
    :cond_1b
    if-nez v8, :cond_28

    #@1d
    .line 331
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    #@1f
    .line 332
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@22
    .line 333
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@24
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@27
    return-void

    #@28
    .line 337
    :cond_28
    invoke-interface {v0, v8}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@2b
    const-wide/16 v8, 0x1

    #@2d
    add-long/2addr v2, v8

    #@2e
    goto :goto_e

    #@2f
    :catchall_2f
    move-exception v1

    #@30
    .line 319
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@33
    .line 320
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    #@35
    .line 321
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@37
    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    #@3a
    .line 322
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@3d
    .line 323
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@3f
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@42
    return-void

    #@43
    .line 342
    :cond_43
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    #@45
    if-eqz v6, :cond_48

    #@47
    return-void

    #@48
    .line 346
    :cond_48
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@4b
    move-result v6

    #@4c
    if-eqz v6, :cond_59

    #@4e
    .line 347
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    #@50
    .line 348
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@53
    .line 349
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@55
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@58
    return-void

    #@59
    .line 353
    :cond_59
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->get()I

    #@5c
    move-result v6

    #@5d
    if-ne v5, v6, :cond_69

    #@5f
    .line 355
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    #@61
    neg-int v5, v5

    #@62
    .line 356
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    #@65
    move-result v5

    #@66
    if-nez v5, :cond_8

    #@68
    return-void

    #@69
    :cond_69
    move v5, v6

    #@6a
    goto :goto_8
.end method
