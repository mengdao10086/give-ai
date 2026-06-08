.class final Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;
.super Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.source "FlowableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8f22a8b85feb275L


# instance fields
.field consumed:J

.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/Scheduler$Worker;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            "ZI)V"
        }
    .end annotation

    #@0
    .line 501
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;-><init>(Lio/reactivex/Scheduler$Worker;ZI)V

    #@3
    .line 502
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@5
    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    #@0
    .line 507
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_4c

    #@8
    .line 508
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 510
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@c
    if-eqz v0, :cond_38

    #@e
    .line 512
    move-object v0, p1

    #@f
    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@11
    const/4 v1, 0x7

    #@12
    .line 514
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    #@15
    move-result v1

    #@16
    const/4 v2, 0x1

    #@17
    if-ne v1, v2, :cond_25

    #@19
    .line 517
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->sourceMode:I

    #@1b
    .line 518
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@1d
    .line 519
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->done:Z

    #@1f
    .line 521
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@21
    invoke-interface {p1, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@24
    return-void

    #@25
    :cond_25
    const/4 v2, 0x2

    #@26
    if-ne v1, v2, :cond_38

    #@28
    .line 525
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->sourceMode:I

    #@2a
    .line 526
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@2c
    .line 528
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@2e
    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@31
    .line 530
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->prefetch:I

    #@33
    int-to-long v0, v0

    #@34
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@37
    return-void

    #@38
    .line 536
    :cond_38
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@3a
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->prefetch:I

    #@3c
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@3f
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@41
    .line 538
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@43
    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@46
    .line 540
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->prefetch:I

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
    .line 716
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_25

    #@8
    .line 717
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->sourceMode:I

    #@a
    const/4 v2, 0x1

    #@b
    if-eq v1, v2, :cond_25

    #@d
    .line 718
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    #@f
    const-wide/16 v3, 0x1

    #@11
    add-long/2addr v1, v3

    #@12
    .line 719
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->limit:I

    #@14
    int-to-long v3, v3

    #@15
    cmp-long v3, v1, v3

    #@17
    if-nez v3, :cond_23

    #@19
    const-wide/16 v3, 0x0

    #@1b
    .line 720
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    #@1d
    .line 721
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@1f
    invoke-interface {v3, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@22
    goto :goto_25

    #@23
    .line 723
    :cond_23
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    #@25
    :cond_25
    :goto_25
    return-object v0
.end method

.method runAsync()V
    .registers 15

    #@0
    .line 613
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@2
    .line 614
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@4
    .line 616
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->produced:J

    #@6
    .line 617
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    #@8
    const/4 v6, 0x1

    #@9
    move v7, v6

    #@a
    .line 621
    :cond_a
    :goto_a
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@f
    move-result-wide v8

    #@10
    :cond_10
    :goto_10
    cmp-long v10, v2, v8

    #@12
    if-eqz v10, :cond_59

    #@14
    .line 624
    iget-boolean v11, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->done:Z

    #@16
    .line 627
    :try_start_16
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@19
    move-result-object v12
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_42

    #@1a
    if-nez v12, :cond_1e

    #@1c
    move v13, v6

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 v13, 0x0

    #@1f
    .line 641
    :goto_1f
    invoke-virtual {p0, v11, v13, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    #@22
    move-result v11

    #@23
    if-eqz v11, :cond_26

    #@25
    return-void

    #@26
    :cond_26
    if-eqz v13, :cond_29

    #@28
    goto :goto_59

    #@29
    .line 649
    :cond_29
    invoke-interface {v0, v12}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@2c
    move-result v10

    #@2d
    const-wide/16 v11, 0x1

    #@2f
    if-eqz v10, :cond_32

    #@31
    add-long/2addr v2, v11

    #@32
    :cond_32
    add-long/2addr v4, v11

    #@33
    .line 655
    iget v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->limit:I

    #@35
    int-to-long v10, v10

    #@36
    cmp-long v10, v4, v10

    #@38
    if-nez v10, :cond_10

    #@3a
    .line 656
    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@3c
    invoke-interface {v10, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    #@3f
    const-wide/16 v4, 0x0

    #@41
    goto :goto_10

    #@42
    :catchall_42
    move-exception v2

    #@43
    .line 629
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@46
    .line 631
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    #@48
    .line 632
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@4a
    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    #@4d
    .line 633
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@50
    .line 635
    invoke-interface {v0, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@53
    .line 636
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@55
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@58
    return-void

    #@59
    :cond_59
    :goto_59
    if-nez v10, :cond_68

    #@5b
    .line 661
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->done:Z

    #@5d
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@60
    move-result v9

    #@61
    invoke-virtual {p0, v8, v9, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    #@64
    move-result v8

    #@65
    if-eqz v8, :cond_68

    #@67
    return-void

    #@68
    .line 665
    :cond_68
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->get()I

    #@6b
    move-result v8

    #@6c
    if-ne v7, v8, :cond_7a

    #@6e
    .line 667
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->produced:J

    #@70
    .line 668
    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    #@72
    neg-int v7, v7

    #@73
    .line 669
    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->addAndGet(I)I

    #@76
    move-result v7

    #@77
    if-nez v7, :cond_a

    #@79
    return-void

    #@7a
    :cond_7a
    move v7, v8

    #@7b
    goto :goto_a
.end method

.method runBackfused()V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    move v1, v0

    #@2
    .line 686
    :cond_2
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    #@4
    if-eqz v2, :cond_7

    #@6
    return-void

    #@7
    .line 690
    :cond_7
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->done:Z

    #@9
    .line 692
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@b
    const/4 v4, 0x0

    #@c
    invoke-interface {v3, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onNext(Ljava/lang/Object;)V

    #@f
    if-eqz v2, :cond_28

    #@11
    .line 695
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    #@13
    .line 696
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->error:Ljava/lang/Throwable;

    #@15
    if-eqz v0, :cond_1d

    #@17
    .line 698
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@19
    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@1c
    goto :goto_22

    #@1d
    .line 700
    :cond_1d
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@1f
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@22
    .line 702
    :goto_22
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@24
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@27
    return-void

    #@28
    :cond_28
    neg-int v1, v1

    #@29
    .line 706
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->addAndGet(I)I

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
    .line 548
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@2
    .line 549
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@4
    .line 551
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->produced:J

    #@6
    const/4 v4, 0x1

    #@7
    move v5, v4

    #@8
    .line 555
    :cond_8
    :goto_8
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@d
    move-result-wide v6

    #@e
    :cond_e
    :goto_e
    cmp-long v8, v2, v6

    #@10
    if-eqz v8, :cond_46

    #@12
    .line 560
    :try_start_12
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@15
    move-result-object v8
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_32

    #@16
    .line 570
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    #@18
    if-eqz v9, :cond_1b

    #@1a
    return-void

    #@1b
    :cond_1b
    if-nez v8, :cond_28

    #@1d
    .line 574
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    #@1f
    .line 575
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@22
    .line 576
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@24
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@27
    return-void

    #@28
    .line 580
    :cond_28
    invoke-interface {v0, v8}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@2b
    move-result v8

    #@2c
    if-eqz v8, :cond_e

    #@2e
    const-wide/16 v8, 0x1

    #@30
    add-long/2addr v2, v8

    #@31
    goto :goto_e

    #@32
    :catchall_32
    move-exception v1

    #@33
    .line 562
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@36
    .line 563
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    #@38
    .line 564
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@3a
    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    #@3d
    .line 565
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@40
    .line 566
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@42
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@45
    return-void

    #@46
    .line 585
    :cond_46
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    #@48
    if-eqz v6, :cond_4b

    #@4a
    return-void

    #@4b
    .line 589
    :cond_4b
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@4e
    move-result v6

    #@4f
    if-eqz v6, :cond_5c

    #@51
    .line 590
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    #@53
    .line 591
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@56
    .line 592
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@58
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@5b
    return-void

    #@5c
    .line 596
    :cond_5c
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->get()I

    #@5f
    move-result v6

    #@60
    if-ne v5, v6, :cond_6c

    #@62
    .line 598
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->produced:J

    #@64
    neg-int v5, v5

    #@65
    .line 599
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->addAndGet(I)I

    #@68
    move-result v5

    #@69
    if-nez v5, :cond_8

    #@6b
    return-void

    #@6c
    :cond_6c
    move v5, v6

    #@6d
    goto :goto_8
.end method
