.class final Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMap.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "**>;"
        }
    .end annotation
.end field

.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1d634c9cafb5cc5aL


# instance fields
.field final bufferSize:I

.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final errs:Lio/reactivex/internal/util/AtomicThrowable;

.field lastId:J

.field lastIndex:I

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field scalarEmitted:I

.field final scalarLimit:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "**>;>;"
        }
    .end annotation
.end field

.field uniqueId:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@3
    .line 82
    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@5
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@7
    .line 84
    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@9
    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ZII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    #@0
    .line 98
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 76
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    #@5
    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@a
    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@f
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    .line 86
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    #@13
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@16
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@18
    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@1a
    .line 100
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->mapper:Lio/reactivex/functions/Function;

    #@1c
    .line 101
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    #@1e
    .line 102
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    #@20
    .line 103
    iput p5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->bufferSize:I

    #@22
    const/4 p1, 0x1

    #@23
    shr-int/lit8 p2, p4, 0x1

    #@25
    .line 104
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@28
    move-result p1

    #@29
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarLimit:I

    #@2b
    .line 105
    sget-object p1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@2d
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@30
    return-void
.end method


# virtual methods
.method addInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;)Z"
        }
    .end annotation

    #@0
    .line 170
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@8
    .line 171
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_11

    #@d
    .line 172
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    #@10
    return v2

    #@11
    .line 175
    :cond_11
    array-length v1, v0

    #@12
    add-int/lit8 v3, v1, 0x1

    #@14
    .line 176
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@16
    .line 177
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 178
    aput-object p1, v3, v1

    #@1b
    .line 179
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1d
    invoke-static {v1, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    const/4 p1, 0x1

    #@24
    return p1
.end method

.method public cancel()V
    .registers 2

    #@0
    .line 356
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    #@2
    if-nez v0, :cond_1c

    #@4
    const/4 v0, 0x1

    #@5
    .line 357
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    #@7
    .line 358
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@c
    .line 359
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->disposeAll()V

    #@f
    .line 360
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getAndIncrement()I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1c

    #@15
    .line 361
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@17
    if-eqz v0, :cond_1c

    #@19
    .line 363
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@1c
    :cond_1c
    return-void
.end method

.method checkTerminate()Z
    .registers 4

    #@0
    .line 564
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_9

    #@5
    .line 565
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->clearScalarQueue()V

    #@8
    return v1

    #@9
    .line 568
    :cond_9
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    #@b
    if-nez v0, :cond_28

    #@d
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@f
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_28

    #@15
    .line 569
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->clearScalarQueue()V

    #@18
    .line 570
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@1a
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@1d
    move-result-object v0

    #@1e
    .line 571
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@20
    if-eq v0, v2, :cond_27

    #@22
    .line 572
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@24
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@27
    :cond_27
    return v1

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    return v0
.end method

.method clearScalarQueue()V
    .registers 2

    #@0
    .line 580
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 582
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@7
    :cond_7
    return-void
.end method

.method disposeAll()V
    .registers 5

    #@0
    .line 587
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@8
    .line 588
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@a
    if-eq v0, v1, :cond_31

    #@c
    .line 589
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@14
    if-eq v0, v1, :cond_31

    #@16
    .line 591
    array-length v1, v0

    #@17
    const/4 v2, 0x0

    #@18
    :goto_18
    if-ge v2, v1, :cond_22

    #@1a
    aget-object v3, v0, v2

    #@1c
    .line 592
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_18

    #@22
    .line 594
    :cond_22
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@24
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_31

    #@2a
    .line 595
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@2c
    if-eq v0, v1, :cond_31

    #@2e
    .line 596
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@31
    :cond_31
    return-void
.end method

.method drain()V
    .registers 2

    #@0
    .line 370
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 371
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drainLoop()V

    #@9
    :cond_9
    return-void
.end method

.method drainLoop()V
    .registers 25

    #@0
    move-object/from16 v1, p0

    #@2
    .line 376
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@4
    const/4 v4, 0x1

    #@5
    .line 379
    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_c

    #@b
    return-void

    #@c
    .line 382
    :cond_c
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@e
    .line 384
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@10
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@13
    move-result-wide v5

    #@14
    const-wide v7, 0x7fffffffffffffffL

    #@19
    cmp-long v9, v5, v7

    #@1b
    if-nez v9, :cond_1f

    #@1d
    const/4 v9, 0x1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 v9, 0x0

    #@20
    :goto_20
    const-wide/16 v12, 0x1

    #@22
    const-wide/16 v14, 0x0

    #@24
    move-wide/from16 v16, v14

    #@26
    if-eqz v0, :cond_69

    #@28
    :goto_28
    move-wide v7, v14

    #@29
    const/16 v18, 0x0

    #@2b
    :goto_2b
    cmp-long v19, v5, v14

    #@2d
    if-eqz v19, :cond_49

    #@2f
    .line 394
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    #@32
    move-result-object v10

    #@33
    .line 396
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    #@36
    move-result v18

    #@37
    if-eqz v18, :cond_3a

    #@39
    return-void

    #@3a
    :cond_3a
    if-nez v10, :cond_3f

    #@3c
    move-object/from16 v18, v10

    #@3e
    goto :goto_49

    #@3f
    .line 403
    :cond_3f
    invoke-interface {v2, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@42
    add-long v16, v16, v12

    #@44
    add-long/2addr v7, v12

    #@45
    sub-long/2addr v5, v12

    #@46
    move-object/from16 v18, v10

    #@48
    goto :goto_2b

    #@49
    :cond_49
    :goto_49
    cmp-long v10, v7, v14

    #@4b
    if-eqz v10, :cond_5c

    #@4d
    if-eqz v9, :cond_55

    #@4f
    const-wide v5, 0x7fffffffffffffffL

    #@54
    goto :goto_5c

    #@55
    .line 413
    :cond_55
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@57
    neg-long v6, v7

    #@58
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@5b
    move-result-wide v5

    #@5c
    :cond_5c
    :goto_5c
    cmp-long v7, v5, v14

    #@5e
    if-eqz v7, :cond_69

    #@60
    if-nez v18, :cond_63

    #@62
    goto :goto_69

    #@63
    :cond_63
    const-wide v7, 0x7fffffffffffffffL

    #@68
    goto :goto_28

    #@69
    .line 422
    :cond_69
    :goto_69
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    #@6b
    .line 423
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@6d
    .line 424
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@6f
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@72
    move-result-object v8

    #@73
    check-cast v8, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@75
    .line 425
    array-length v10, v8

    #@76
    if-eqz v0, :cond_96

    #@78
    if-eqz v7, :cond_80

    #@7a
    .line 427
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_96

    #@80
    :cond_80
    if-nez v10, :cond_96

    #@82
    .line 428
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@84
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@87
    move-result-object v0

    #@88
    .line 429
    sget-object v3, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@8a
    if-eq v0, v3, :cond_95

    #@8c
    if-nez v0, :cond_92

    #@8e
    .line 431
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@91
    goto :goto_95

    #@92
    .line 433
    :cond_92
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@95
    :cond_95
    :goto_95
    return-void

    #@96
    :cond_96
    move/from16 v18, v4

    #@98
    if-eqz v10, :cond_19f

    #@9a
    .line 441
    iget-wide v3, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastId:J

    #@9c
    .line 442
    iget v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastIndex:I

    #@9e
    if-le v10, v0, :cond_a8

    #@a0
    .line 444
    aget-object v7, v8, v0

    #@a2
    iget-wide v11, v7, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    #@a4
    cmp-long v7, v11, v3

    #@a6
    if-eqz v7, :cond_c7

    #@a8
    :cond_a8
    if-gt v10, v0, :cond_ab

    #@aa
    const/4 v0, 0x0

    #@ab
    :cond_ab
    const/4 v7, 0x0

    #@ac
    :goto_ac
    if-ge v7, v10, :cond_bf

    #@ae
    .line 450
    aget-object v11, v8, v0

    #@b0
    iget-wide v11, v11, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    #@b2
    cmp-long v11, v11, v3

    #@b4
    if-nez v11, :cond_b7

    #@b6
    goto :goto_bf

    #@b7
    :cond_b7
    add-int/lit8 v0, v0, 0x1

    #@b9
    if-ne v0, v10, :cond_bc

    #@bb
    const/4 v0, 0x0

    #@bc
    :cond_bc
    add-int/lit8 v7, v7, 0x1

    #@be
    goto :goto_ac

    #@bf
    .line 459
    :cond_bf
    :goto_bf
    iput v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastIndex:I

    #@c1
    .line 460
    aget-object v3, v8, v0

    #@c3
    iget-wide v3, v3, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    #@c5
    iput-wide v3, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastId:J

    #@c7
    :cond_c7
    move v3, v0

    #@c8
    const/4 v0, 0x0

    #@c9
    const/4 v4, 0x0

    #@ca
    :goto_ca
    if-ge v4, v10, :cond_190

    #@cc
    .line 466
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    #@cf
    move-result v7

    #@d0
    if-eqz v7, :cond_d3

    #@d2
    return-void

    #@d3
    .line 471
    :cond_d3
    aget-object v7, v8, v3

    #@d5
    const/4 v11, 0x0

    #@d6
    .line 475
    :goto_d6
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    #@d9
    move-result v12

    #@da
    if-eqz v12, :cond_dd

    #@dc
    return-void

    #@dd
    .line 478
    :cond_dd
    iget-object v12, v7, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@df
    if-nez v12, :cond_e4

    #@e1
    move v13, v10

    #@e2
    goto/16 :goto_15b

    #@e4
    :cond_e4
    move v13, v10

    #@e5
    move-object/from16 v22, v11

    #@e7
    move-wide v10, v14

    #@e8
    :goto_e8
    cmp-long v23, v5, v14

    #@ea
    if-eqz v23, :cond_133

    #@ec
    .line 486
    :try_start_ec
    invoke-interface {v12}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@ef
    move-result-object v14
    :try_end_f0
    .catchall {:try_start_ec .. :try_end_f0} :catchall_10c

    #@f0
    if-nez v14, :cond_f7

    #@f2
    move-object/from16 v22, v14

    #@f4
    const-wide/16 v14, 0x0

    #@f6
    goto :goto_133

    #@f7
    .line 506
    :cond_f7
    invoke-interface {v2, v14}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@fa
    .line 508
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    #@fd
    move-result v15

    #@fe
    if-eqz v15, :cond_101

    #@100
    return-void

    #@101
    :cond_101
    const-wide/16 v20, 0x1

    #@103
    sub-long v5, v5, v20

    #@105
    add-long v10, v10, v20

    #@107
    move-object/from16 v22, v14

    #@109
    const-wide/16 v14, 0x0

    #@10b
    goto :goto_e8

    #@10c
    :catchall_10c
    move-exception v0

    #@10d
    move-object v10, v0

    #@10e
    .line 488
    invoke-static {v10}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@111
    .line 489
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    #@114
    .line 490
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@116
    invoke-virtual {v0, v10}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@119
    .line 491
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    #@11b
    if-nez v0, :cond_122

    #@11d
    .line 492
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@11f
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@122
    .line 494
    :cond_122
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    #@125
    move-result v0

    #@126
    if-eqz v0, :cond_129

    #@128
    return-void

    #@129
    .line 497
    :cond_129
    invoke-virtual {v1, v7}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->removeInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V

    #@12c
    add-int/lit8 v4, v4, 0x1

    #@12e
    const/4 v0, 0x1

    #@12f
    const/4 v7, 0x1

    #@130
    const-wide/16 v10, 0x1

    #@132
    goto :goto_18a

    #@133
    :cond_133
    :goto_133
    cmp-long v12, v10, v14

    #@135
    if-eqz v12, :cond_14c

    #@137
    if-nez v9, :cond_141

    #@139
    .line 517
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@13b
    neg-long v14, v10

    #@13c
    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@13f
    move-result-wide v5

    #@140
    goto :goto_146

    #@141
    :cond_141
    const-wide v5, 0x7fffffffffffffffL

    #@146
    .line 521
    :goto_146
    invoke-virtual {v7, v10, v11}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->requestMore(J)V

    #@149
    const-wide/16 v10, 0x0

    #@14b
    goto :goto_14d

    #@14c
    :cond_14c
    move-wide v10, v14

    #@14d
    :goto_14d
    cmp-long v12, v5, v10

    #@14f
    if-eqz v12, :cond_15b

    #@151
    if-nez v22, :cond_154

    #@153
    goto :goto_15b

    #@154
    :cond_154
    move v10, v13

    #@155
    move-object/from16 v11, v22

    #@157
    const-wide/16 v14, 0x0

    #@159
    goto/16 :goto_d6

    #@15b
    .line 527
    :cond_15b
    :goto_15b
    iget-boolean v10, v7, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->done:Z

    #@15d
    .line 528
    iget-object v11, v7, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@15f
    if-eqz v10, :cond_179

    #@161
    if-eqz v11, :cond_169

    #@163
    .line 529
    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@166
    move-result v10

    #@167
    if-eqz v10, :cond_179

    #@169
    .line 530
    :cond_169
    invoke-virtual {v1, v7}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->removeInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V

    #@16c
    .line 531
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    #@16f
    move-result v0

    #@170
    if-eqz v0, :cond_173

    #@172
    return-void

    #@173
    :cond_173
    const-wide/16 v10, 0x1

    #@175
    add-long v16, v16, v10

    #@177
    const/4 v0, 0x1

    #@178
    goto :goto_17b

    #@179
    :cond_179
    const-wide/16 v10, 0x1

    #@17b
    :goto_17b
    const-wide/16 v14, 0x0

    #@17d
    cmp-long v7, v5, v14

    #@17f
    if-nez v7, :cond_184

    #@181
    move v10, v0

    #@182
    const/4 v7, 0x1

    #@183
    goto :goto_192

    #@184
    :cond_184
    add-int/lit8 v3, v3, 0x1

    #@186
    if-ne v3, v13, :cond_189

    #@188
    const/4 v3, 0x0

    #@189
    :cond_189
    const/4 v7, 0x1

    #@18a
    :goto_18a
    add-int/2addr v4, v7

    #@18b
    move v10, v13

    #@18c
    const-wide/16 v14, 0x0

    #@18e
    goto/16 :goto_ca

    #@190
    :cond_190
    const/4 v7, 0x1

    #@191
    move v10, v0

    #@192
    .line 546
    :goto_192
    iput v3, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastIndex:I

    #@194
    .line 547
    aget-object v0, v8, v3

    #@196
    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    #@198
    iput-wide v3, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastId:J

    #@19a
    move-wide/from16 v3, v16

    #@19c
    const-wide/16 v5, 0x0

    #@19e
    goto :goto_1a4

    #@19f
    :cond_19f
    const/4 v7, 0x1

    #@1a0
    move-wide v5, v14

    #@1a1
    move-wide/from16 v3, v16

    #@1a3
    const/4 v10, 0x0

    #@1a4
    :goto_1a4
    cmp-long v0, v3, v5

    #@1a6
    if-eqz v0, :cond_1b1

    #@1a8
    .line 550
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    #@1aa
    if-nez v0, :cond_1b1

    #@1ac
    .line 551
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@1ae
    invoke-interface {v0, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    #@1b1
    :cond_1b1
    if-eqz v10, :cond_1b7

    #@1b3
    move/from16 v4, v18

    #@1b5
    goto/16 :goto_5

    #@1b7
    :cond_1b7
    move/from16 v3, v18

    #@1b9
    neg-int v0, v3

    #@1ba
    .line 556
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->addAndGet(I)I

    #@1bd
    move-result v4

    #@1be
    if-nez v4, :cond_5

    #@1c0
    return-void
.end method

.method getInnerQueue(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)Lio/reactivex/internal/fuseable/SimpleQueue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;)",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TU;>;"
        }
    .end annotation

    #@0
    .line 269
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 271
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@6
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->bufferSize:I

    #@8
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@b
    .line 272
    iput-object v0, p1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@d
    :cond_d
    return-object v0
.end method

.method getMainQueue()Lio/reactivex/internal/fuseable/SimpleQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TU;>;"
        }
    .end annotation

    #@0
    .line 217
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@2
    if-nez v0, :cond_1c

    #@4
    .line 219
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    #@6
    const v1, 0x7fffffff

    #@9
    if-ne v0, v1, :cond_13

    #@b
    .line 220
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@d
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->bufferSize:I

    #@f
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@12
    goto :goto_1a

    #@13
    .line 222
    :cond_13
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@15
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    #@17
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@1a
    .line 224
    :goto_1a
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@1c
    :cond_1c
    return-object v0
.end method

.method innerError(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #@0
    .line 603
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@2
    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2e

    #@8
    const/4 p2, 0x1

    #@9
    .line 604
    iput-boolean p2, p1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->done:Z

    #@b
    .line 605
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    #@d
    if-nez p1, :cond_2a

    #@f
    .line 606
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@11
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@14
    .line 607
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@16
    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@18
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object p1

    #@1c
    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@1e
    array-length p2, p1

    #@1f
    const/4 v0, 0x0

    #@20
    :goto_20
    if-ge v0, p2, :cond_2a

    #@22
    aget-object v1, p1, v0

    #@24
    .line 608
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_20

    #@2a
    .line 611
    :cond_2a
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    #@2d
    goto :goto_31

    #@2e
    .line 613
    :cond_2e
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@31
    :goto_31
    return-void
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 339
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 342
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    #@8
    .line 343
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    #@b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 319
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 320
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    .line 323
    :cond_8
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@a
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_31

    #@10
    const/4 p1, 0x1

    #@11
    .line 324
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    #@13
    .line 325
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    #@15
    if-nez p1, :cond_2d

    #@17
    .line 326
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@19
    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@1b
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@21
    array-length v0, p1

    #@22
    const/4 v1, 0x0

    #@23
    :goto_23
    if-ge v1, v0, :cond_2d

    #@25
    aget-object v2, p1, v1

    #@27
    .line 327
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_23

    #@2d
    .line 330
    :cond_2d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    #@30
    goto :goto_34

    #@31
    .line 332
    :cond_31
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@34
    :goto_34
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 127
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 132
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->mapper:Lio/reactivex/functions/Function;

    #@7
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    const-string v0, "The mapper returned a null Publisher"

    #@d
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    check-cast p1, Lorg/reactivestreams/Publisher;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_65

    #@13
    .line 139
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    #@15
    if-eqz v0, :cond_4f

    #@17
    .line 143
    :try_start_17
    check-cast p1, Ljava/util/concurrent/Callable;

    #@19
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@1c
    move-result-object p1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_42

    #@1d
    if-eqz p1, :cond_23

    #@1f
    .line 152
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->tryEmitScalar(Ljava/lang/Object;)V

    #@22
    goto :goto_64

    #@23
    .line 154
    :cond_23
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    #@25
    const v0, 0x7fffffff

    #@28
    if-eq p1, v0, :cond_64

    #@2a
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    #@2c
    if-nez p1, :cond_64

    #@2e
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    #@30
    add-int/lit8 p1, p1, 0x1

    #@32
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    #@34
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarLimit:I

    #@36
    if-ne p1, v0, :cond_64

    #@38
    const/4 p1, 0x0

    #@39
    .line 156
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    #@3b
    .line 157
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@3d
    int-to-long v0, v0

    #@3e
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@41
    goto :goto_64

    #@42
    :catchall_42
    move-exception p1

    #@43
    .line 145
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@46
    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    #@48
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@4b
    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    #@4e
    return-void

    #@4f
    .line 161
    :cond_4f
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@51
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->uniqueId:J

    #@53
    const-wide/16 v3, 0x1

    #@55
    add-long/2addr v3, v1

    #@56
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->uniqueId:J

    #@58
    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;J)V

    #@5b
    .line 162
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->addInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_64

    #@61
    .line 163
    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    #@64
    :cond_64
    :goto_64
    return-void

    #@65
    :catchall_65
    move-exception p1

    #@66
    .line 134
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@69
    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@6b
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@6e
    .line 136
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@71
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_27

    #@8
    .line 111
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@f
    .line 113
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    #@11
    if-nez v0, :cond_27

    #@13
    .line 114
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    #@15
    const v1, 0x7fffffff

    #@18
    if-ne v0, v1, :cond_23

    #@1a
    const-wide v0, 0x7fffffffffffffffL

    #@1f
    .line 115
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@22
    goto :goto_27

    #@23
    :cond_23
    int-to-long v0, v0

    #@24
    .line 117
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@27
    :cond_27
    :goto_27
    return-void
.end method

.method removeInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;)V"
        }
    .end annotation

    #@0
    .line 187
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@8
    .line 188
    array-length v1, v0

    #@9
    if-nez v1, :cond_c

    #@b
    return-void

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    move v3, v2

    #@e
    :goto_e
    if-ge v3, v1, :cond_18

    #@10
    .line 194
    aget-object v4, v0, v3

    #@12
    if-ne v4, p1, :cond_15

    #@14
    goto :goto_19

    #@15
    :cond_15
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_e

    #@18
    :cond_18
    const/4 v3, -0x1

    #@19
    :goto_19
    if-gez v3, :cond_1c

    #@1b
    return-void

    #@1c
    :cond_1c
    const/4 v4, 0x1

    #@1d
    if-ne v1, v4, :cond_22

    #@1f
    .line 204
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@21
    goto :goto_31

    #@22
    :cond_22
    add-int/lit8 v5, v1, -0x1

    #@24
    .line 206
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    #@26
    .line 207
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    add-int/lit8 v2, v3, 0x1

    #@2b
    sub-int/2addr v1, v3

    #@2c
    sub-int/2addr v1, v4

    #@2d
    .line 208
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    move-object v1, v5

    #@31
    .line 210
    :goto_31
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@33
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 348
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 349
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@8
    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@b
    .line 350
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    #@e
    :cond_e
    return-void
.end method

.method tryEmit(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;)V"
        }
    .end annotation

    #@0
    .line 278
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->get()I

    #@3
    move-result v0

    #@4
    const-string v1, "Inner queue full?!"

    #@6
    if-nez v0, :cond_5b

    #@8
    const/4 v0, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->compareAndSet(II)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_5b

    #@10
    .line 279
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@15
    move-result-wide v2

    #@16
    .line 280
    iget-object v0, p2, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@18
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v4, v2, v4

    #@1c
    if-eqz v4, :cond_3f

    #@1e
    if-eqz v0, :cond_26

    #@20
    .line 281
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_3f

    #@26
    .line 282
    :cond_26
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@28
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@2b
    const-wide v0, 0x7fffffffffffffffL

    #@30
    cmp-long p1, v2, v0

    #@32
    if-eqz p1, :cond_39

    #@34
    .line 284
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@36
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    #@39
    :cond_39
    const-wide/16 v0, 0x1

    #@3b
    .line 286
    invoke-virtual {p2, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->requestMore(J)V

    #@3e
    goto :goto_54

    #@3f
    :cond_3f
    if-nez v0, :cond_45

    #@41
    .line 289
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getInnerQueue(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)Lio/reactivex/internal/fuseable/SimpleQueue;

    #@44
    move-result-object v0

    #@45
    .line 291
    :cond_45
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@48
    move-result p1

    #@49
    if-nez p1, :cond_54

    #@4b
    .line 292
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@4d
    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@50
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@53
    return-void

    #@54
    .line 296
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->decrementAndGet()I

    #@57
    move-result p1

    #@58
    if-nez p1, :cond_7e

    #@5a
    return-void

    #@5b
    .line 300
    :cond_5b
    iget-object v0, p2, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@5d
    if-nez v0, :cond_68

    #@5f
    .line 302
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@61
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->bufferSize:I

    #@63
    invoke-direct {v0, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@66
    .line 303
    iput-object v0, p2, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@68
    .line 305
    :cond_68
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@6b
    move-result p1

    #@6c
    if-nez p1, :cond_77

    #@6e
    .line 306
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@70
    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@73
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@76
    return-void

    #@77
    .line 309
    :cond_77
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getAndIncrement()I

    #@7a
    move-result p1

    #@7b
    if-eqz p1, :cond_7e

    #@7d
    return-void

    #@7e
    .line 313
    :cond_7e
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drainLoop()V

    #@81
    return-void
.end method

.method tryEmitScalar(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    #@0
    .line 230
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->get()I

    #@3
    move-result v0

    #@4
    const-string v1, "Scalar queue full?!"

    #@6
    if-nez v0, :cond_72

    #@8
    const/4 v0, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->compareAndSet(II)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_72

    #@10
    .line 231
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@15
    move-result-wide v3

    #@16
    .line 232
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@18
    const-wide/16 v6, 0x0

    #@1a
    cmp-long v6, v3, v6

    #@1c
    if-eqz v6, :cond_56

    #@1e
    if-eqz v5, :cond_26

    #@20
    .line 233
    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_56

    #@26
    .line 234
    :cond_26
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@28
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@2b
    const-wide v5, 0x7fffffffffffffffL

    #@30
    cmp-long p1, v3, v5

    #@32
    if-eqz p1, :cond_39

    #@34
    .line 236
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@36
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    #@39
    .line 238
    :cond_39
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    #@3b
    const v1, 0x7fffffff

    #@3e
    if-eq p1, v1, :cond_6b

    #@40
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    #@42
    if-nez p1, :cond_6b

    #@44
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    #@46
    add-int/2addr p1, v2

    #@47
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    #@49
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarLimit:I

    #@4b
    if-ne p1, v1, :cond_6b

    #@4d
    .line 240
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    #@4f
    .line 241
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@51
    int-to-long v0, v1

    #@52
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@55
    goto :goto_6b

    #@56
    :cond_56
    if-nez v5, :cond_5c

    #@58
    .line 245
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getMainQueue()Lio/reactivex/internal/fuseable/SimpleQueue;

    #@5b
    move-result-object v5

    #@5c
    .line 247
    :cond_5c
    invoke-interface {v5, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@5f
    move-result p1

    #@60
    if-nez p1, :cond_6b

    #@62
    .line 248
    new-instance p1, Ljava/lang/IllegalStateException;

    #@64
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@67
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@6a
    return-void

    #@6b
    .line 252
    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->decrementAndGet()I

    #@6e
    move-result p1

    #@6f
    if-nez p1, :cond_8c

    #@71
    return-void

    #@72
    .line 256
    :cond_72
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getMainQueue()Lio/reactivex/internal/fuseable/SimpleQueue;

    #@75
    move-result-object v0

    #@76
    .line 257
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@79
    move-result p1

    #@7a
    if-nez p1, :cond_85

    #@7c
    .line 258
    new-instance p1, Ljava/lang/IllegalStateException;

    #@7e
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@81
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    #@84
    return-void

    #@85
    .line 261
    :cond_85
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getAndIncrement()I

    #@88
    move-result p1

    #@89
    if-eqz p1, :cond_8c

    #@8b
    return-void

    #@8c
    .line 265
    :cond_8c
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drainLoop()V

    #@8f
    return-void
.end method
