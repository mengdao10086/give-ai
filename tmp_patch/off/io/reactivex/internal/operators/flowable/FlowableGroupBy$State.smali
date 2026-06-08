.class final Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableGroupBy.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lorg/reactivestreams/Publisher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field outputFused:Z

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field produced:I

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    #@0
    .line 502
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    #@3
    .line 487
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    .line 492
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@f
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@11
    .line 494
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@16
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    #@18
    .line 496
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1a
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@1d
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1f
    .line 503
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@21
    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@24
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@26
    .line 504
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    #@28
    .line 505
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->key:Ljava/lang/Object;

    #@2a
    .line 506
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    #@2c
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    #@0
    .line 519
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_14

    #@a
    .line 520
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    #@c
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->key:Ljava/lang/Object;

    #@e
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->cancel(Ljava/lang/Object;)V

    #@11
    .line 521
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    #@14
    :cond_14
    return-void
.end method

.method checkTerminated(ZZLorg/reactivestreams/Subscriber;ZJ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;ZJ)Z"
        }
    .end annotation

    #@0
    .line 662
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-eqz v0, :cond_23

    #@9
    .line 664
    :goto_9
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@b
    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    if-eqz p1, :cond_15

    #@11
    const-wide/16 p1, 0x1

    #@13
    add-long/2addr p5, p1

    #@14
    goto :goto_9

    #@15
    :cond_15
    const-wide/16 p1, 0x0

    #@17
    cmp-long p1, p5, p1

    #@19
    if-eqz p1, :cond_22

    #@1b
    .line 668
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    #@1d
    iget-object p1, p1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@1f
    invoke-interface {p1, p5, p6}, Lorg/reactivestreams/Subscription;->request(J)V

    #@22
    :cond_22
    return v1

    #@23
    :cond_23
    if-eqz p1, :cond_48

    #@25
    if-eqz p4, :cond_35

    #@27
    if-eqz p2, :cond_48

    #@29
    .line 676
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    #@2b
    if-eqz p1, :cond_31

    #@2d
    .line 678
    invoke-interface {p3, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@30
    goto :goto_34

    #@31
    .line 680
    :cond_31
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@34
    :goto_34
    return v1

    #@35
    .line 685
    :cond_35
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    #@37
    if-eqz p1, :cond_42

    #@39
    .line 687
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@3b
    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@3e
    .line 688
    invoke-interface {p3, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@41
    return v1

    #@42
    :cond_42
    if-eqz p2, :cond_48

    #@44
    .line 692
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@47
    return v1

    #@48
    :cond_48
    const/4 p1, 0x0

    #@49
    return p1
.end method

.method public clear()V
    .registers 3

    #@0
    .line 742
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    .line 743
    :goto_2
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_f

    #@8
    .line 744
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    #@e
    goto :goto_2

    #@f
    .line 746
    :cond_f
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->tryReplenish()V

    #@12
    return-void
.end method

.method drain()V
    .registers 2

    #@0
    .line 553
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 556
    :cond_7
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->outputFused:Z

    #@9
    if-eqz v0, :cond_f

    #@b
    .line 557
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drainFused()V

    #@e
    goto :goto_12

    #@f
    .line 559
    :cond_f
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drainNormal()V

    #@12
    :goto_12
    return-void
.end method

.method drainFused()V
    .registers 6

    #@0
    .line 566
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    .line 567
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lorg/reactivestreams/Subscriber;

    #@a
    const/4 v2, 0x1

    #@b
    :cond_b
    :goto_b
    if-eqz v1, :cond_3b

    #@d
    .line 571
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_16

    #@15
    return-void

    #@16
    .line 575
    :cond_16
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    #@18
    if-eqz v3, :cond_29

    #@1a
    .line 577
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    #@1c
    if-nez v4, :cond_29

    #@1e
    .line 578
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    #@20
    if-eqz v4, :cond_29

    #@22
    .line 580
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@25
    .line 581
    invoke-interface {v1, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@28
    return-void

    #@29
    :cond_29
    const/4 v4, 0x0

    #@2a
    .line 586
    invoke-interface {v1, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@2d
    if-eqz v3, :cond_3b

    #@2f
    .line 589
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    #@31
    if-eqz v0, :cond_37

    #@33
    .line 591
    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@36
    goto :goto_3a

    #@37
    .line 593
    :cond_37
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@3a
    :goto_3a
    return-void

    #@3b
    :cond_3b
    neg-int v2, v2

    #@3c
    .line 599
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->addAndGet(I)I

    #@3f
    move-result v2

    #@40
    if-nez v2, :cond_43

    #@42
    return-void

    #@43
    :cond_43
    if-nez v1, :cond_b

    #@45
    .line 605
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    #@47
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Lorg/reactivestreams/Subscriber;

    #@4d
    goto :goto_b
.end method

.method drainNormal()V
    .registers 22

    #@0
    move-object/from16 v7, p0

    #@2
    .line 613
    iget-object v8, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@4
    .line 614
    iget-boolean v9, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    #@6
    .line 615
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lorg/reactivestreams/Subscriber;

    #@e
    move-object v11, v0

    #@f
    const/4 v12, 0x1

    #@10
    :cond_10
    :goto_10
    if-eqz v11, :cond_7c

    #@12
    .line 618
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@17
    move-result-wide v13

    #@18
    const-wide/16 v15, 0x0

    #@1a
    move-wide v5, v15

    #@1b
    :goto_1b
    cmp-long v17, v5, v13

    #@1d
    if-eqz v17, :cond_4b

    #@1f
    .line 622
    iget-boolean v1, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    #@21
    .line 623
    invoke-virtual {v8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    if-nez v4, :cond_2a

    #@27
    const/16 v18, 0x1

    #@29
    goto :goto_2d

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    move/from16 v18, v0

    #@2d
    :goto_2d
    move-object/from16 v0, p0

    #@2f
    move/from16 v2, v18

    #@31
    move-object v3, v11

    #@32
    move-object v10, v4

    #@33
    move v4, v9

    #@34
    move-wide/from16 v19, v5

    #@36
    .line 626
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->checkTerminated(ZZLorg/reactivestreams/Subscriber;ZJ)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_3d

    #@3c
    return-void

    #@3d
    :cond_3d
    if-eqz v18, :cond_42

    #@3f
    move-wide/from16 v5, v19

    #@41
    goto :goto_4b

    #@42
    .line 634
    :cond_42
    invoke-interface {v11, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@45
    const-wide/16 v0, 0x1

    #@47
    move-wide/from16 v5, v19

    #@49
    add-long/2addr v5, v0

    #@4a
    goto :goto_1b

    #@4b
    :cond_4b
    :goto_4b
    if-nez v17, :cond_62

    #@4d
    .line 639
    iget-boolean v1, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    #@4f
    invoke-virtual {v8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    #@52
    move-result v2

    #@53
    move-object/from16 v0, p0

    #@55
    move-object v3, v11

    #@56
    move v4, v9

    #@57
    move-wide/from16 v19, v5

    #@59
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->checkTerminated(ZZLorg/reactivestreams/Subscriber;ZJ)Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_60

    #@5f
    return-void

    #@60
    :cond_60
    move-wide/from16 v5, v19

    #@62
    :cond_62
    cmp-long v0, v5, v15

    #@64
    if-eqz v0, :cond_7c

    #@66
    const-wide v0, 0x7fffffffffffffffL

    #@6b
    cmp-long v0, v13, v0

    #@6d
    if-eqz v0, :cond_75

    #@6f
    .line 645
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@71
    neg-long v1, v5

    #@72
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@75
    .line 647
    :cond_75
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    #@77
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@79
    invoke-interface {v0, v5, v6}, Lorg/reactivestreams/Subscription;->request(J)V

    #@7c
    :cond_7c
    neg-int v0, v12

    #@7d
    .line 651
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->addAndGet(I)I

    #@80
    move-result v12

    #@81
    if-nez v12, :cond_84

    #@83
    return-void

    #@84
    :cond_84
    if-nez v11, :cond_10

    #@86
    .line 656
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    #@88
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    move-object v11, v0

    #@8d
    check-cast v11, Lorg/reactivestreams/Subscriber;

    #@8f
    goto :goto_10
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 724
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 725
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->tryReplenish()V

    #@b
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 548
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    #@3
    .line 549
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    #@6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 542
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    #@2
    const/4 p1, 0x1

    #@3
    .line 543
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    #@5
    .line 544
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    #@8
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 537
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    #@5
    .line 538
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    #@8
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 713
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 715
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    #@e
    return-object v0

    #@f
    .line 718
    :cond_f
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->tryReplenish()V

    #@12
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 511
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 512
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@8
    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@b
    .line 513
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    #@e
    :cond_e
    return-void
.end method

.method public requestFusion(I)I
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    and-int/2addr p1, v0

    #@2
    if-eqz p1, :cond_8

    #@4
    const/4 p1, 0x1

    #@5
    .line 704
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->outputFused:Z

    #@7
    return v0

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    return p1
.end method

.method public subscribe(Lorg/reactivestreams/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 527
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 528
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@d
    .line 529
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@12
    .line 530
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    #@15
    goto :goto_20

    #@16
    .line 532
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    const-string v1, "Only one Subscriber allowed!"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    #@20
    :goto_20
    return-void
.end method

.method tryReplenish()V
    .registers 5

    #@0
    .line 732
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    #@2
    if-eqz v0, :cond_f

    #@4
    const/4 v1, 0x0

    #@5
    .line 734
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    #@7
    .line 735
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    #@9
    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@b
    int-to-long v2, v0

    #@c
    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    #@f
    :cond_f
    return-void
.end method
