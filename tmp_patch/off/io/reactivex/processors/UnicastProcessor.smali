.class public final Lio/reactivex/processors/UnicastProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "UnicastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field final delayError:Z

.field volatile done:Z

.field final downstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field enableOperatorFusion:Z

.field error:Ljava/lang/Throwable;

.field final onTerminate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 258
    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    #@5
    return-void
.end method

.method constructor <init>(ILjava/lang/Runnable;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 269
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    #@4
    return-void
.end method

.method constructor <init>(ILjava/lang/Runnable;Z)V
    .registers 6

    #@0
    .line 281
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    #@3
    .line 282
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@5
    const-string v1, "capacityHint"

    #@7
    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@a
    move-result p1

    #@b
    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@e
    iput-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@10
    .line 283
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@12
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@15
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    .line 284
    iput-boolean p3, p0, Lio/reactivex/processors/UnicastProcessor;->delayError:Z

    #@19
    .line 285
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@1b
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@1e
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@20
    .line 286
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@22
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@25
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@27
    .line 287
    new-instance p1, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;

    #@29
    invoke-direct {p1, p0}, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;-><init>(Lio/reactivex/processors/UnicastProcessor;)V

    #@2c
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    #@2e
    .line 288
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@30
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@33
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@35
    return-void
.end method

.method public static create()Lio/reactivex/processors/UnicastProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 183
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    #@2
    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->bufferSize()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Lio/reactivex/processors/UnicastProcessor;-><init>(I)V

    #@9
    return-object v0
.end method

.method public static create(I)Lio/reactivex/processors/UnicastProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 195
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/processors/UnicastProcessor;-><init>(I)V

    #@5
    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    const-string v0, "onTerminate"

    #@2
    .line 227
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 228
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    #@7
    invoke-direct {v0, p0, p1}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;)V

    #@a
    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;Z)Lio/reactivex/processors/UnicastProcessor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    const-string v0, "onTerminate"

    #@2
    .line 248
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 249
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    #@a
    return-object v0
.end method

.method public static create(Z)Lio/reactivex/processors/UnicastProcessor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 209
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    #@2
    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->bufferSize()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    #@a
    return-object v0
.end method


# virtual methods
.method checkTerminated(ZZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 411
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 412
    invoke-virtual {p5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@9
    .line 413
    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@e
    return v1

    #@f
    :cond_f
    if-eqz p2, :cond_38

    #@11
    if-eqz p1, :cond_25

    #@13
    .line 418
    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@15
    if-eqz p1, :cond_25

    #@17
    .line 419
    invoke-virtual {p5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@1a
    .line 420
    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@1c
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@1f
    .line 421
    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@21
    invoke-interface {p4, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@24
    return v1

    #@25
    :cond_25
    if-eqz p3, :cond_38

    #@27
    .line 425
    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@29
    .line 426
    iget-object p2, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2b
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@2e
    if-eqz p1, :cond_34

    #@30
    .line 428
    invoke-interface {p4, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@33
    goto :goto_37

    #@34
    .line 430
    :cond_34
    invoke-interface {p4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@37
    :goto_37
    return v1

    #@38
    :cond_38
    const/4 p1, 0x0

    #@39
    return p1
.end method

.method doTerminate()V
    .registers 3

    #@0
    .line 292
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Runnable;

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 294
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@e
    :cond_e
    return-void
.end method

.method drain()V
    .registers 3

    #@0
    .line 384
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    #@2
    invoke-virtual {v0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 390
    :cond_9
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/reactivestreams/Subscriber;

    #@11
    const/4 v1, 0x1

    #@12
    :goto_12
    if-eqz v0, :cond_20

    #@14
    .line 394
    iget-boolean v1, p0, Lio/reactivex/processors/UnicastProcessor;->enableOperatorFusion:Z

    #@16
    if-eqz v1, :cond_1c

    #@18
    .line 395
    invoke-virtual {p0, v0}, Lio/reactivex/processors/UnicastProcessor;->drainFused(Lorg/reactivestreams/Subscriber;)V

    #@1b
    goto :goto_1f

    #@1c
    .line 397
    :cond_1c
    invoke-virtual {p0, v0}, Lio/reactivex/processors/UnicastProcessor;->drainRegular(Lorg/reactivestreams/Subscriber;)V

    #@1f
    :goto_1f
    return-void

    #@20
    .line 402
    :cond_20
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    #@22
    neg-int v1, v1

    #@23
    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->addAndGet(I)I

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_2a

    #@29
    return-void

    #@2a
    .line 406
    :cond_2a
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lorg/reactivestreams/Subscriber;

    #@32
    goto :goto_12
.end method

.method drainFused(Lorg/reactivestreams/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 345
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    .line 346
    iget-boolean v1, p0, Lio/reactivex/processors/UnicastProcessor;->delayError:Z

    #@4
    const/4 v2, 0x1

    #@5
    xor-int/2addr v1, v2

    #@6
    .line 349
    :cond_6
    iget-boolean v3, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    #@8
    const/4 v4, 0x0

    #@9
    if-eqz v3, :cond_11

    #@b
    .line 350
    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@10
    return-void

    #@11
    .line 354
    :cond_11
    iget-boolean v3, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@13
    if-eqz v1, :cond_29

    #@15
    if-eqz v3, :cond_29

    #@17
    .line 356
    iget-object v5, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@19
    if-eqz v5, :cond_29

    #@1b
    .line 357
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@1e
    .line 358
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@20
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@23
    .line 359
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@25
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@28
    return-void

    #@29
    .line 362
    :cond_29
    invoke-interface {p1, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@2c
    if-eqz v3, :cond_3f

    #@2e
    .line 365
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@30
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@33
    .line 367
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@35
    if-eqz v0, :cond_3b

    #@37
    .line 369
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@3a
    goto :goto_3e

    #@3b
    .line 371
    :cond_3b
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@3e
    :goto_3e
    return-void

    #@3f
    .line 376
    :cond_3f
    iget-object v3, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    #@41
    neg-int v2, v2

    #@42
    invoke-virtual {v3, v2}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->addAndGet(I)I

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_6

    #@48
    return-void
.end method

.method drainRegular(Lorg/reactivestreams/Subscriber;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    move-object/from16 v6, p0

    #@2
    .line 301
    iget-object v7, v6, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@4
    .line 302
    iget-boolean v0, v6, Lio/reactivex/processors/UnicastProcessor;->delayError:Z

    #@6
    const/4 v8, 0x1

    #@7
    xor-int/lit8 v9, v0, 0x1

    #@9
    move v10, v8

    #@a
    .line 305
    :goto_a
    iget-object v0, v6, Lio/reactivex/processors/UnicastProcessor;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@f
    move-result-wide v11

    #@10
    const-wide/16 v4, 0x0

    #@12
    :goto_12
    cmp-long v15, v11, v4

    #@14
    if-eqz v15, :cond_43

    #@16
    .line 309
    iget-boolean v2, v6, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@18
    .line 311
    invoke-virtual {v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    if-nez v3, :cond_21

    #@1e
    move/from16 v16, v8

    #@20
    goto :goto_24

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    move/from16 v16, v0

    #@24
    :goto_24
    move-object/from16 v0, p0

    #@26
    move v1, v9

    #@27
    move-object v8, v3

    #@28
    move/from16 v3, v16

    #@2a
    move-wide v13, v4

    #@2b
    move-object/from16 v4, p1

    #@2d
    move-object v5, v7

    #@2e
    .line 314
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/processors/UnicastProcessor;->checkTerminated(ZZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_35

    #@34
    return-void

    #@35
    :cond_35
    if-eqz v16, :cond_38

    #@37
    goto :goto_44

    #@38
    :cond_38
    move-object/from16 v5, p1

    #@3a
    .line 322
    invoke-interface {v5, v8}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@3d
    const-wide/16 v0, 0x1

    #@3f
    add-long/2addr v0, v13

    #@40
    move-wide v4, v0

    #@41
    const/4 v8, 0x1

    #@42
    goto :goto_12

    #@43
    :cond_43
    move-wide v13, v4

    #@44
    :goto_44
    move-object/from16 v5, p1

    #@46
    if-nez v15, :cond_5b

    #@48
    .line 327
    iget-boolean v2, v6, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@4a
    invoke-virtual {v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    #@4d
    move-result v3

    #@4e
    move-object/from16 v0, p0

    #@50
    move v1, v9

    #@51
    move-object/from16 v4, p1

    #@53
    move-object v5, v7

    #@54
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/processors/UnicastProcessor;->checkTerminated(ZZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_5b

    #@5a
    return-void

    #@5b
    :cond_5b
    const-wide/16 v0, 0x0

    #@5d
    cmp-long v0, v13, v0

    #@5f
    if-eqz v0, :cond_70

    #@61
    const-wide v0, 0x7fffffffffffffffL

    #@66
    cmp-long v0, v11, v0

    #@68
    if-eqz v0, :cond_70

    #@6a
    .line 332
    iget-object v0, v6, Lio/reactivex/processors/UnicastProcessor;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@6c
    neg-long v1, v13

    #@6d
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@70
    .line 335
    :cond_70
    iget-object v0, v6, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    #@72
    neg-int v1, v10

    #@73
    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->addAndGet(I)I

    #@76
    move-result v10

    #@77
    if-nez v10, :cond_7a

    #@79
    return-void

    #@7a
    :cond_7a
    const/4 v8, 0x1

    #@7b
    goto :goto_a
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 570
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 571
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@6
    return-object v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    return-object v0
.end method

.method public hasComplete()Z
    .registers 2

    #@0
    .line 578
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public hasSubscribers()Z
    .registers 2

    #@0
    .line 564
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public hasThrowable()Z
    .registers 2

    #@0
    .line 583
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 479
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@2
    if-nez v0, :cond_12

    #@4
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_12

    #@9
    :cond_9
    const/4 v0, 0x1

    #@a
    .line 483
    iput-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@c
    .line 485
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->doTerminate()V

    #@f
    .line 487
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    #@12
    :cond_12
    :goto_12
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 462
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 464
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@7
    if-nez v0, :cond_1a

    #@9
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    #@b
    if-eqz v0, :cond_e

    #@d
    goto :goto_1a

    #@e
    .line 469
    :cond_e
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    #@10
    const/4 p1, 0x1

    #@11
    .line 470
    iput-boolean p1, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@13
    .line 472
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->doTerminate()V

    #@16
    .line 474
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    #@19
    return-void

    #@1a
    .line 465
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1d
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
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 450
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 452
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@7
    if-nez v0, :cond_16

    #@9
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    #@b
    if-eqz v0, :cond_e

    #@d
    goto :goto_16

    #@e
    .line 456
    :cond_e
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@10
    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    #@13
    .line 457
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    #@16
    :cond_16
    :goto_16
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 441
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    #@2
    if-nez v0, :cond_12

    #@4
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_12

    #@9
    :cond_9
    const-wide v0, 0x7fffffffffffffffL

    #@e
    .line 444
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@11
    goto :goto_15

    #@12
    .line 442
    :cond_12
    :goto_12
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@15
    :goto_15
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 492
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2b

    #@8
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    const/4 v1, 0x0

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_2b

    #@12
    .line 494
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    #@14
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@17
    .line 495
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@1c
    .line 496
    iget-boolean p1, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    #@1e
    if-eqz p1, :cond_27

    #@20
    .line 497
    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@22
    const/4 v0, 0x0

    #@23
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@26
    goto :goto_35

    #@27
    .line 499
    :cond_27
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    #@2a
    goto :goto_35

    #@2b
    .line 502
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2d
    const-string v1, "This processor allows only a single Subscriber"

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    #@35
    :goto_35
    return-void
.end method
