.class final Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;
.super Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;
.source "FlowableCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 597
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@3
    .line 598
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    .line 599
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@f
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    return-void
.end method


# virtual methods
.method drain()V
    .registers 18

    #@0
    move-object/from16 v0, p0

    #@2
    .line 649
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_b

    #@a
    return-void

    #@b
    .line 654
    :cond_b
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->downstream:Lorg/reactivestreams/Subscriber;

    #@d
    .line 655
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    const/4 v3, 0x1

    #@10
    move v4, v3

    #@11
    .line 658
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->get()J

    #@14
    move-result-wide v5

    #@15
    const-wide/16 v7, 0x0

    #@17
    move-wide v9, v7

    #@18
    :goto_18
    cmp-long v11, v9, v5

    #@1a
    const/4 v12, 0x0

    #@1b
    const/4 v13, 0x0

    #@1c
    if-eqz v11, :cond_4f

    #@1e
    .line 662
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->isCancelled()Z

    #@21
    move-result v14

    #@22
    if-eqz v14, :cond_28

    #@24
    .line 663
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@27
    return-void

    #@28
    .line 667
    :cond_28
    iget-boolean v14, v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    #@2a
    .line 669
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v15

    #@2e
    if-nez v15, :cond_33

    #@30
    move/from16 v16, v3

    #@32
    goto :goto_35

    #@33
    :cond_33
    move/from16 v16, v12

    #@35
    :goto_35
    if-eqz v14, :cond_45

    #@37
    if-eqz v16, :cond_45

    #@39
    .line 674
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    #@3b
    if-eqz v1, :cond_41

    #@3d
    .line 676
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error(Ljava/lang/Throwable;)Z

    #@40
    goto :goto_44

    #@41
    .line 678
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->complete()V

    #@44
    :goto_44
    return-void

    #@45
    :cond_45
    if-eqz v16, :cond_48

    #@47
    goto :goto_4f

    #@48
    .line 687
    :cond_48
    invoke-interface {v1, v15}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@4b
    const-wide/16 v11, 0x1

    #@4d
    add-long/2addr v9, v11

    #@4e
    goto :goto_18

    #@4f
    :cond_4f
    :goto_4f
    if-nez v11, :cond_74

    #@51
    .line 693
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->isCancelled()Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_5b

    #@57
    .line 694
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@5a
    return-void

    #@5b
    .line 698
    :cond_5b
    iget-boolean v5, v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    #@5d
    .line 700
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@60
    move-result-object v6

    #@61
    if-nez v6, :cond_64

    #@63
    move v12, v3

    #@64
    :cond_64
    if-eqz v5, :cond_74

    #@66
    if-eqz v12, :cond_74

    #@68
    .line 703
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    #@6a
    if-eqz v1, :cond_70

    #@6c
    .line 705
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error(Ljava/lang/Throwable;)Z

    #@6f
    goto :goto_73

    #@70
    .line 707
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->complete()V

    #@73
    :goto_73
    return-void

    #@74
    :cond_74
    cmp-long v5, v9, v7

    #@76
    if-eqz v5, :cond_7b

    #@78
    .line 714
    invoke-static {v0, v9, v10}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@7b
    .line 717
    :cond_7b
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7d
    neg-int v4, v4

    #@7e
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@81
    move-result v4

    #@82
    if-nez v4, :cond_11

    #@84
    return-void
.end method

.method public onComplete()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 632
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    #@3
    .line 633
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    #@6
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
    .line 604
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    #@2
    if-nez v0, :cond_20

    #@4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->isCancelled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_20

    #@b
    :cond_b
    if-nez p1, :cond_18

    #@d
    .line 609
    new-instance p1, Ljava/lang/NullPointerException;

    #@f
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@11
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    #@17
    return-void

    #@18
    .line 612
    :cond_18
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@1d
    .line 613
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    #@20
    :cond_20
    :goto_20
    return-void
.end method

.method onRequested()V
    .registers 1

    #@0
    .line 638
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    #@3
    return-void
.end method

.method onUnsubscribed()V
    .registers 3

    #@0
    .line 643
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_e

    #@8
    .line 644
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@e
    :cond_e
    return-void
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .registers 4

    #@0
    .line 618
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    #@2
    if-nez v0, :cond_20

    #@4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->isCancelled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_20

    #@b
    :cond_b
    if-nez p1, :cond_17

    #@d
    .line 622
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    #@17
    .line 624
    :cond_17
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    #@19
    const/4 p1, 0x1

    #@1a
    .line 625
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    #@1c
    .line 626
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    #@1f
    return p1

    #@20
    :cond_20
    :goto_20
    const/4 p1, 0x0

    #@21
    return p1
.end method
