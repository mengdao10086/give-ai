.class final Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ParallelFromPublisher.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3e0ae1f3a0d08e59L


# instance fields
.field volatile cancelled:Z

.field volatile done:Z

.field final emissions:[J

.field error:Ljava/lang/Throwable;

.field index:I

.field final limit:I

.field final prefetch:I

.field produced:I

.field queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requests:Ljava/util/concurrent/atomic/AtomicLongArray;

.field sourceMode:I

.field final subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final subscribers:[Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>([Lorg/reactivestreams/Subscriber;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I)V"
        }
    .end annotation

    #@0
    .line 99
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 100
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    #@c
    .line 101
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    #@e
    shr-int/lit8 v0, p2, 0x2

    #@10
    sub-int/2addr p2, v0

    #@11
    .line 102
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->limit:I

    #@13
    .line 103
    array-length p1, p1

    #@14
    .line 104
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    #@16
    add-int v0, p1, p1

    #@18
    add-int/lit8 v1, v0, 0x1

    #@1a
    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    #@1d
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    #@1f
    int-to-long v1, p1

    #@20
    .line 105
    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    #@23
    .line 106
    new-array p1, p1, [J

    #@25
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    #@27
    return-void
.end method


# virtual methods
.method cancel(I)V
    .registers 6

    #@0
    .line 228
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->decrementAndGet(I)J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long p1, v0, v2

    #@a
    if-nez p1, :cond_1f

    #@c
    const/4 p1, 0x1

    #@d
    .line 229
    iput-boolean p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    #@f
    .line 230
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    #@11
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@14
    .line 232
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->getAndIncrement()I

    #@17
    move-result p1

    #@18
    if-nez p1, :cond_1f

    #@1a
    .line 233
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@1c
    invoke-interface {p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@1f
    :cond_1f
    return-void
.end method

.method drain()V
    .registers 3

    #@0
    .line 429
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 433
    :cond_7
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    #@9
    const/4 v1, 0x1

    #@a
    if-ne v0, v1, :cond_10

    #@c
    .line 434
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drainSync()V

    #@f
    goto :goto_13

    #@10
    .line 436
    :cond_10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drainAsync()V

    #@13
    :goto_13
    return-void
.end method

.method drainAsync()V
    .registers 19

    #@0
    move-object/from16 v1, p0

    #@2
    .line 241
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@4
    .line 242
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    #@6
    .line 243
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    #@8
    .line 244
    iget-object v4, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    #@a
    .line 245
    array-length v5, v4

    #@b
    .line 246
    iget v6, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    #@d
    .line 247
    iget v7, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->produced:I

    #@f
    const/4 v8, 0x1

    #@10
    move v9, v8

    #@11
    :cond_11
    :goto_11
    const/4 v10, 0x0

    #@12
    move v11, v10

    #@13
    .line 254
    :cond_13
    iget-boolean v12, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    #@15
    if-eqz v12, :cond_1b

    #@17
    .line 255
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@1a
    return-void

    #@1b
    .line 259
    :cond_1b
    iget-boolean v12, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    #@1d
    if-eqz v12, :cond_32

    #@1f
    .line 261
    iget-object v13, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->error:Ljava/lang/Throwable;

    #@21
    if-eqz v13, :cond_32

    #@23
    .line 263
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@26
    .line 264
    array-length v0, v2

    #@27
    :goto_27
    if-ge v10, v0, :cond_31

    #@29
    aget-object v3, v2, v10

    #@2b
    .line 265
    invoke-interface {v3, v13}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@2e
    add-int/lit8 v10, v10, 0x1

    #@30
    goto :goto_27

    #@31
    :cond_31
    return-void

    #@32
    .line 271
    :cond_32
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@35
    move-result v13

    #@36
    if-eqz v12, :cond_46

    #@38
    if-eqz v13, :cond_46

    #@3a
    .line 274
    array-length v0, v2

    #@3b
    :goto_3b
    if-ge v10, v0, :cond_45

    #@3d
    aget-object v3, v2, v10

    #@3f
    .line 275
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@42
    add-int/lit8 v10, v10, 0x1

    #@44
    goto :goto_3b

    #@45
    :cond_45
    return-void

    #@46
    :cond_46
    if-eqz v13, :cond_49

    #@48
    goto :goto_9d

    #@49
    .line 284
    :cond_49
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    #@4c
    move-result-wide v12

    #@4d
    .line 285
    aget-wide v14, v4, v6

    #@4f
    cmp-long v12, v12, v14

    #@51
    if-eqz v12, :cond_95

    #@53
    add-int v12, v5, v6

    #@55
    .line 286
    invoke-virtual {v3, v12}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    #@58
    move-result-wide v12

    #@59
    const-wide/16 v16, 0x0

    #@5b
    cmp-long v12, v12, v16

    #@5d
    if-nez v12, :cond_95

    #@5f
    .line 291
    :try_start_5f
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@62
    move-result-object v11
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_7f

    #@63
    if-nez v11, :cond_66

    #@65
    goto :goto_9d

    #@66
    .line 305
    :cond_66
    aget-object v12, v2, v6

    #@68
    invoke-interface {v12, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@6b
    const-wide/16 v11, 0x1

    #@6d
    add-long/2addr v14, v11

    #@6e
    .line 307
    aput-wide v14, v4, v6

    #@70
    add-int/lit8 v7, v7, 0x1

    #@72
    .line 310
    iget v11, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->limit:I

    #@74
    if-ne v7, v11, :cond_7d

    #@76
    .line 312
    iget-object v11, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    #@78
    int-to-long v12, v7

    #@79
    invoke-interface {v11, v12, v13}, Lorg/reactivestreams/Subscription;->request(J)V

    #@7c
    move v7, v10

    #@7d
    :cond_7d
    move v11, v10

    #@7e
    goto :goto_96

    #@7f
    :catchall_7f
    move-exception v0

    #@80
    move-object v3, v0

    #@81
    .line 293
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@84
    .line 294
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    #@86
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@89
    .line 295
    array-length v0, v2

    #@8a
    :goto_8a
    if-ge v10, v0, :cond_94

    #@8c
    aget-object v4, v2, v10

    #@8e
    .line 296
    invoke-interface {v4, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@91
    add-int/lit8 v10, v10, 0x1

    #@93
    goto :goto_8a

    #@94
    :cond_94
    return-void

    #@95
    :cond_95
    add-int/2addr v11, v8

    #@96
    :goto_96
    add-int/lit8 v6, v6, 0x1

    #@98
    if-ne v6, v5, :cond_9b

    #@9a
    move v6, v10

    #@9b
    :cond_9b
    if-ne v11, v5, :cond_13

    #@9d
    .line 329
    :goto_9d
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->get()I

    #@a0
    move-result v10

    #@a1
    if-ne v10, v9, :cond_af

    #@a3
    .line 331
    iput v6, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    #@a5
    .line 332
    iput v7, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->produced:I

    #@a7
    neg-int v9, v9

    #@a8
    .line 333
    invoke-virtual {v1, v9}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->addAndGet(I)I

    #@ab
    move-result v9

    #@ac
    if-nez v9, :cond_11

    #@ae
    return-void

    #@af
    :cond_af
    move v9, v10

    #@b0
    goto/16 :goto_11
.end method

.method drainSync()V
    .registers 18

    #@0
    move-object/from16 v1, p0

    #@2
    .line 346
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@4
    .line 347
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    #@6
    .line 348
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    #@8
    .line 349
    iget-object v4, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    #@a
    .line 350
    array-length v5, v4

    #@b
    .line 351
    iget v6, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    #@d
    const/4 v7, 0x1

    #@e
    move v8, v7

    #@f
    :cond_f
    :goto_f
    const/4 v9, 0x0

    #@10
    move v10, v9

    #@11
    .line 358
    :cond_11
    iget-boolean v11, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    #@13
    if-eqz v11, :cond_19

    #@15
    .line 359
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@18
    return-void

    #@19
    .line 363
    :cond_19
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@1c
    move-result v11

    #@1d
    if-eqz v11, :cond_2b

    #@1f
    .line 366
    array-length v0, v2

    #@20
    :goto_20
    if-ge v9, v0, :cond_2a

    #@22
    aget-object v3, v2, v9

    #@24
    .line 367
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@27
    add-int/lit8 v9, v9, 0x1

    #@29
    goto :goto_20

    #@2a
    :cond_2a
    return-void

    #@2b
    .line 372
    :cond_2b
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    #@2e
    move-result-wide v11

    #@2f
    .line 373
    aget-wide v13, v4, v6

    #@31
    cmp-long v11, v11, v13

    #@33
    if-eqz v11, :cond_75

    #@35
    add-int v11, v5, v6

    #@37
    .line 374
    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    #@3a
    move-result-wide v11

    #@3b
    const-wide/16 v15, 0x0

    #@3d
    cmp-long v11, v11, v15

    #@3f
    if-nez v11, :cond_75

    #@41
    .line 379
    :try_start_41
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@44
    move-result-object v10
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_5f

    #@45
    if-nez v10, :cond_53

    #@47
    .line 390
    array-length v0, v2

    #@48
    :goto_48
    if-ge v9, v0, :cond_52

    #@4a
    aget-object v3, v2, v9

    #@4c
    .line 391
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@4f
    add-int/lit8 v9, v9, 0x1

    #@51
    goto :goto_48

    #@52
    :cond_52
    return-void

    #@53
    .line 396
    :cond_53
    aget-object v11, v2, v6

    #@55
    invoke-interface {v11, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@58
    const-wide/16 v10, 0x1

    #@5a
    add-long/2addr v13, v10

    #@5b
    .line 398
    aput-wide v13, v4, v6

    #@5d
    move v10, v9

    #@5e
    goto :goto_76

    #@5f
    :catchall_5f
    move-exception v0

    #@60
    move-object v3, v0

    #@61
    .line 381
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@64
    .line 382
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    #@66
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@69
    .line 383
    array-length v0, v2

    #@6a
    :goto_6a
    if-ge v9, v0, :cond_74

    #@6c
    aget-object v4, v2, v9

    #@6e
    .line 384
    invoke-interface {v4, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@71
    add-int/lit8 v9, v9, 0x1

    #@73
    goto :goto_6a

    #@74
    :cond_74
    return-void

    #@75
    :cond_75
    add-int/2addr v10, v7

    #@76
    :goto_76
    add-int/lit8 v6, v6, 0x1

    #@78
    if-ne v6, v5, :cond_7b

    #@7a
    move v6, v9

    #@7b
    :cond_7b
    if-ne v10, v5, :cond_11

    #@7d
    .line 415
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->get()I

    #@80
    move-result v9

    #@81
    if-ne v9, v8, :cond_8d

    #@83
    .line 417
    iput v6, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    #@85
    neg-int v8, v8

    #@86
    .line 418
    invoke-virtual {v1, v8}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->addAndGet(I)I

    #@89
    move-result v8

    #@8a
    if-nez v8, :cond_f

    #@8c
    return-void

    #@8d
    :cond_8d
    move v8, v9

    #@8e
    goto :goto_f
.end method

.method public onComplete()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 223
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    #@3
    .line 224
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    #@6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 216
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->error:Ljava/lang/Throwable;

    #@2
    const/4 p1, 0x1

    #@3
    .line 217
    iput-boolean p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    #@5
    .line 218
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

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
    .line 204
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    #@2
    if-nez v0, :cond_1c

    #@4
    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@6
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_1c

    #@c
    .line 206
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    #@e
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@11
    .line 207
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@13
    const-string v0, "Queue is full?"

    #@15
    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->onError(Ljava/lang/Throwable;)V

    #@1b
    return-void

    #@1c
    .line 211
    :cond_1c
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    #@1f
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    #@0
    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_49

    #@8
    .line 112
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 114
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@c
    if-eqz v0, :cond_37

    #@e
    .line 116
    move-object v0, p1

    #@f
    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@11
    const/4 v1, 0x7

    #@12
    .line 118
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    #@15
    move-result v1

    #@16
    const/4 v2, 0x1

    #@17
    if-ne v1, v2, :cond_26

    #@19
    .line 121
    iput v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    #@1b
    .line 122
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@1d
    .line 123
    iput-boolean v2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    #@1f
    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    #@22
    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    #@25
    return-void

    #@26
    :cond_26
    const/4 v2, 0x2

    #@27
    if-ne v1, v2, :cond_37

    #@29
    .line 129
    iput v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    #@2b
    .line 130
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@2d
    .line 132
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    #@30
    .line 134
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    #@32
    int-to-long v0, v0

    #@33
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@36
    return-void

    #@37
    .line 140
    :cond_37
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@39
    iget v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    #@3b
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@3e
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@40
    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    #@43
    .line 144
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    #@45
    int-to-long v0, v0

    #@46
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@49
    :cond_49
    return-void
.end method

.method setupSubscribers()V
    .registers 7

    #@0
    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    #@2
    .line 150
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v1, :cond_1e

    #@6
    .line 153
    iget-boolean v3, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    #@8
    if-eqz v3, :cond_b

    #@a
    return-void

    #@b
    .line 157
    :cond_b
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    add-int/lit8 v4, v2, 0x1

    #@f
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    #@12
    .line 159
    aget-object v3, v0, v2

    #@14
    new-instance v5, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription;

    #@16
    invoke-direct {v5, p0, v2, v1}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription;-><init>(Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;II)V

    #@19
    invoke-interface {v3, v5}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@1c
    move v2, v4

    #@1d
    goto :goto_4

    #@1e
    :cond_1e
    return-void
.end method
