.class final Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMapSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x775a28d5b42d01b7L


# instance fields
.field final active:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile cancelled:Z

.field final delayErrors:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    #@0
    .line 86
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    .line 88
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->mapper:Lio/reactivex/functions/Function;

    #@7
    .line 89
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    #@9
    .line 90
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    #@b
    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@d
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@10
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@12
    .line 92
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    #@14
    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    #@17
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@19
    .line 93
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    #@1b
    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    #@1e
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@20
    .line 94
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    const/4 p2, 0x1

    #@23
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@26
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    #@28
    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@2a
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@2d
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@2f
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 157
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->cancelled:Z

    #@3
    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@5
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@8
    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@a
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@d
    return-void
.end method

.method clear()V
    .registers 2

    #@0
    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 254
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@d
    :cond_d
    return-void
.end method

.method drain()V
    .registers 2

    #@0
    .line 246
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 247
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drainLoop()V

    #@9
    :cond_9
    return-void
.end method

.method drainLoop()V
    .registers 18

    #@0
    move-object/from16 v0, p0

    #@2
    .line 260
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@4
    .line 261
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    .line 262
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    const/4 v4, 0x1

    #@9
    move v5, v4

    #@a
    .line 265
    :cond_a
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@f
    move-result-wide v6

    #@10
    const-wide/16 v8, 0x0

    #@12
    move-wide v10, v8

    #@13
    :goto_13
    cmp-long v12, v10, v6

    #@15
    const/4 v13, 0x0

    #@16
    if-eqz v12, :cond_77

    #@18
    .line 269
    iget-boolean v14, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->cancelled:Z

    #@1a
    if-eqz v14, :cond_20

    #@1c
    .line 270
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    #@1f
    return-void

    #@20
    .line 274
    :cond_20
    iget-boolean v14, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    #@22
    if-nez v14, :cond_3b

    #@24
    .line 275
    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@26
    invoke-virtual {v14}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@29
    move-result-object v14

    #@2a
    check-cast v14, Ljava/lang/Throwable;

    #@2c
    if-eqz v14, :cond_3b

    #@2e
    .line 277
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@30
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@33
    move-result-object v2

    #@34
    .line 278
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    #@37
    .line 279
    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@3a
    return-void

    #@3b
    .line 284
    :cond_3b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3e
    move-result v14

    #@3f
    if-nez v14, :cond_43

    #@41
    move v14, v4

    #@42
    goto :goto_44

    #@43
    :cond_43
    move v14, v13

    #@44
    .line 285
    :goto_44
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@47
    move-result-object v15

    #@48
    check-cast v15, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@4a
    if-eqz v15, :cond_51

    #@4c
    .line 286
    invoke-virtual {v15}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@4f
    move-result-object v15

    #@50
    goto :goto_52

    #@51
    :cond_51
    const/4 v15, 0x0

    #@52
    :goto_52
    if-nez v15, :cond_57

    #@54
    move/from16 v16, v4

    #@56
    goto :goto_59

    #@57
    :cond_57
    move/from16 v16, v13

    #@59
    :goto_59
    if-eqz v14, :cond_6d

    #@5b
    if-eqz v16, :cond_6d

    #@5d
    .line 290
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@5f
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@62
    move-result-object v2

    #@63
    if-eqz v2, :cond_69

    #@65
    .line 292
    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@68
    goto :goto_6c

    #@69
    .line 294
    :cond_69
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@6c
    :goto_6c
    return-void

    #@6d
    :cond_6d
    if-eqz v16, :cond_70

    #@6f
    goto :goto_77

    #@70
    .line 303
    :cond_70
    invoke-interface {v1, v15}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@73
    const-wide/16 v12, 0x1

    #@75
    add-long/2addr v10, v12

    #@76
    goto :goto_13

    #@77
    :cond_77
    :goto_77
    if-nez v12, :cond_c8

    #@79
    .line 309
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->cancelled:Z

    #@7b
    if-eqz v6, :cond_81

    #@7d
    .line 310
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    #@80
    return-void

    #@81
    .line 314
    :cond_81
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    #@83
    if-nez v6, :cond_9c

    #@85
    .line 315
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@87
    invoke-virtual {v6}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@8a
    move-result-object v6

    #@8b
    check-cast v6, Ljava/lang/Throwable;

    #@8d
    if-eqz v6, :cond_9c

    #@8f
    .line 317
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@91
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@94
    move-result-object v2

    #@95
    .line 318
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    #@98
    .line 319
    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@9b
    return-void

    #@9c
    .line 324
    :cond_9c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@9f
    move-result v6

    #@a0
    if-nez v6, :cond_a4

    #@a2
    move v6, v4

    #@a3
    goto :goto_a5

    #@a4
    :cond_a4
    move v6, v13

    #@a5
    .line 325
    :goto_a5
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a8
    move-result-object v7

    #@a9
    check-cast v7, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@ab
    if-eqz v7, :cond_b3

    #@ad
    .line 326
    invoke-virtual {v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    #@b0
    move-result v7

    #@b1
    if-eqz v7, :cond_b4

    #@b3
    :cond_b3
    move v13, v4

    #@b4
    :cond_b4
    if-eqz v6, :cond_c8

    #@b6
    if-eqz v13, :cond_c8

    #@b8
    .line 329
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@ba
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@bd
    move-result-object v2

    #@be
    if-eqz v2, :cond_c4

    #@c0
    .line 331
    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@c3
    goto :goto_c7

    #@c4
    .line 333
    :cond_c4
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@c7
    :goto_c7
    return-void

    #@c8
    :cond_c8
    cmp-long v6, v10, v8

    #@ca
    if-eqz v6, :cond_dd

    #@cc
    .line 340
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@ce
    invoke-static {v6, v10, v11}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@d1
    .line 341
    iget v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    #@d3
    const v7, 0x7fffffff

    #@d6
    if-eq v6, v7, :cond_dd

    #@d8
    .line 342
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@da
    invoke-interface {v6, v10, v11}, Lorg/reactivestreams/Subscription;->request(J)V

    #@dd
    :cond_dd
    neg-int v5, v5

    #@de
    .line 346
    invoke-virtual {v0, v5}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->addAndGet(I)I

    #@e1
    move-result v5

    #@e2
    if-nez v5, :cond_a

    #@e4
    return-void
.end method

.method getOrCreateQueue()Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TR;>;"
        }
    .end annotation

    #@0
    .line 216
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 220
    :cond_b
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@d
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    #@10
    move-result v1

    #@11
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@14
    .line 221
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    return-object v0
.end method

.method innerError(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<",
            "TT;TR;>.InnerObserver;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #@0
    .line 228
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@5
    .line 229
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@7
    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_33

    #@d
    .line 230
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    #@f
    if-nez p1, :cond_1c

    #@11
    .line 231
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@13
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@16
    .line 232
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@18
    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@1b
    goto :goto_2a

    #@1c
    .line 234
    :cond_1c
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    #@1e
    const p2, 0x7fffffff

    #@21
    if-eq p1, p2, :cond_2a

    #@23
    .line 235
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@25
    const-wide/16 v0, 0x1

    #@27
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@2a
    .line 238
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@2f
    .line 239
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drain()V

    #@32
    goto :goto_36

    #@33
    .line 241
    :cond_33
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@36
    :goto_36
    return-void
.end method

.method innerSuccess(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<",
            "TT;TR;>.InnerObserver;TR;)V"
        }
    .end annotation

    #@0
    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@5
    .line 172
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->get()I

    #@8
    move-result p1

    #@9
    if-nez p1, :cond_7a

    #@b
    const/4 p1, 0x0

    #@c
    const/4 v0, 0x1

    #@d
    invoke-virtual {p0, p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->compareAndSet(II)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_7a

    #@13
    .line 173
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    #@15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1c

    #@1b
    move p1, v0

    #@1c
    .line 174
    :cond_1c
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@1e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@21
    move-result-wide v0

    #@22
    const-wide/16 v2, 0x0

    #@24
    cmp-long v0, v0, v2

    #@26
    if-eqz v0, :cond_67

    #@28
    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2a
    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@2d
    .line 177
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    #@2f
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@32
    move-result-object p2

    #@33
    check-cast p2, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@35
    if-eqz p1, :cond_53

    #@37
    if-eqz p2, :cond_3f

    #@39
    .line 179
    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    #@3c
    move-result p1

    #@3d
    if-eqz p1, :cond_53

    #@3f
    .line 180
    :cond_3f
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@41
    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@44
    move-result-object p1

    #@45
    if-eqz p1, :cond_4d

    #@47
    .line 182
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@49
    invoke-interface {p2, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@4c
    goto :goto_52

    #@4d
    .line 184
    :cond_4d
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@4f
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@52
    :goto_52
    return-void

    #@53
    .line 188
    :cond_53
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@55
    const-wide/16 v0, 0x1

    #@57
    invoke-static {p1, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@5a
    .line 189
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    #@5c
    const p2, 0x7fffffff

    #@5f
    if-eq p1, p2, :cond_70

    #@61
    .line 190
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@63
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@66
    goto :goto_70

    #@67
    .line 193
    :cond_67
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->getOrCreateQueue()Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@6a
    move-result-object p1

    #@6b
    .line 194
    monitor-enter p1

    #@6c
    .line 195
    :try_start_6c
    invoke-virtual {p1, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    #@6f
    .line 196
    monitor-exit p1
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_77

    #@70
    .line 198
    :cond_70
    :goto_70
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->decrementAndGet()I

    #@73
    move-result p1

    #@74
    if-nez p1, :cond_8f

    #@76
    return-void

    #@77
    :catchall_77
    move-exception p2

    #@78
    .line 196
    :try_start_78
    monitor-exit p1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    #@79
    throw p2

    #@7a
    .line 202
    :cond_7a
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->getOrCreateQueue()Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@7d
    move-result-object p1

    #@7e
    .line 203
    monitor-enter p1

    #@7f
    .line 204
    :try_start_7f
    invoke-virtual {p1, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    #@82
    .line 205
    monitor-exit p1
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_93

    #@83
    .line 206
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    #@85
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@88
    .line 207
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->getAndIncrement()I

    #@8b
    move-result p1

    #@8c
    if-eqz p1, :cond_8f

    #@8e
    return-void

    #@8f
    .line 211
    :cond_8f
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drainLoop()V

    #@92
    return-void

    #@93
    :catchall_93
    move-exception p2

    #@94
    .line 205
    :try_start_94
    monitor-exit p1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    #@95
    throw p2
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    .line 152
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drain()V

    #@8
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@7
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1a

    #@d
    .line 140
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    #@f
    if-nez p1, :cond_16

    #@11
    .line 141
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@13
    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@16
    .line 143
    :cond_16
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drain()V

    #@19
    goto :goto_1d

    #@1a
    .line 145
    :cond_1a
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1d
    :goto_1d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 119
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->mapper:Lio/reactivex/functions/Function;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    const-string v0, "The mapper returned a null SingleSource"

    #@8
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Lio/reactivex/SingleSource;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_28

    #@e
    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@13
    .line 129
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;

    #@15
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;-><init>(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;)V

    #@18
    .line 131
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->cancelled:Z

    #@1a
    if-nez v1, :cond_27

    #@1c
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@1e
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_27

    #@24
    .line 132
    invoke-interface {p1, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    #@27
    :cond_27
    return-void

    #@28
    :catchall_28
    move-exception p1

    #@29
    .line 121
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2c
    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2e
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@31
    .line 123
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->onError(Ljava/lang/Throwable;)V

    #@34
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_23

    #@8
    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@f
    .line 105
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    #@11
    const v1, 0x7fffffff

    #@14
    if-ne v0, v1, :cond_1f

    #@16
    const-wide v0, 0x7fffffffffffffffL

    #@1b
    .line 107
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@1e
    goto :goto_23

    #@1f
    :cond_1f
    int-to-long v0, v0

    #@20
    .line 109
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@23
    :cond_23
    :goto_23
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 164
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@8
    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@b
    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drain()V

    #@e
    :cond_e
    return-void
.end method
