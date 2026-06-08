.class public Lio/reactivex/subscribers/TestSubscriber;
.super Lio/reactivex/observers/BaseTestConsumer;
.source "TestSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;",
        "Lio/reactivex/subscribers/TestSubscriber<",
        "TT;>;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field private volatile cancelled:Z

.field private final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field private qs:Lio/reactivex/internal/fuseable/QueueSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueSubscription<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    #@0
    .line 90
    sget-object v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->INSTANCE:Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@2
    const-wide v1, 0x7fffffffffffffffL

    #@7
    invoke-direct {p0, v0, v1, v2}, Lio/reactivex/subscribers/TestSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    #@a
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    #@0
    .line 100
    sget-object v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->INSTANCE:Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@2
    invoke-direct {p0, v0, p1, p2}, Lio/reactivex/subscribers/TestSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    #@5
    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    const-wide v0, 0x7fffffffffffffffL

    #@5
    .line 108
    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/subscribers/TestSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    #@8
    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J)V"
        }
    .end annotation

    #@0
    .line 119
    invoke-direct {p0}, Lio/reactivex/observers/BaseTestConsumer;-><init>()V

    #@3
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p2, v0

    #@7
    if-ltz v0, :cond_1a

    #@9
    .line 123
    iput-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@b
    .line 124
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@10
    iput-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@12
    .line 125
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@14
    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@17
    iput-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@19
    return-void

    #@1a
    .line 121
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string p2, "Negative initial request not allowed"

    #@1e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw p1
.end method

.method public static create()Lio/reactivex/subscribers/TestSubscriber;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 63
    new-instance v0, Lio/reactivex/subscribers/TestSubscriber;

    #@2
    invoke-direct {v0}, Lio/reactivex/subscribers/TestSubscriber;-><init>()V

    #@5
    return-object v0
.end method

.method public static create(J)Lio/reactivex/subscribers/TestSubscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 73
    new-instance v0, Lio/reactivex/subscribers/TestSubscriber;

    #@2
    invoke-direct {v0, p0, p1}, Lio/reactivex/subscribers/TestSubscriber;-><init>(J)V

    #@5
    return-object v0
.end method

.method public static create(Lorg/reactivestreams/Subscriber;)Lio/reactivex/subscribers/TestSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 83
    new-instance v0, Lio/reactivex/subscribers/TestSubscriber;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/subscribers/TestSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@5
    return-object v0
.end method

.method static fusionModeToString(I)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_24

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_21

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p0, v0, :cond_1e

    #@8
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    const-string v1, "Unknown("

    #@c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object p0

    #@13
    const-string v0, ")"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p0

    #@19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    const-string p0, "ASYNC"

    #@20
    return-object p0

    #@21
    :cond_21
    const-string p0, "SYNC"

    #@23
    return-object p0

    #@24
    :cond_24
    const-string p0, "NONE"

    #@26
    return-object p0
.end method


# virtual methods
.method final assertFuseable()Lio/reactivex/subscribers/TestSubscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 377
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object p0

    #@5
    .line 378
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    const-string v1, "Upstream is not fuseable."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0
.end method

.method final assertFusionMode(I)Lio/reactivex/subscribers/TestSubscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 349
    iget v0, p0, Lio/reactivex/subscribers/TestSubscriber;->establishedFusionMode:I

    #@2
    if-eq v0, p1, :cond_36

    #@4
    .line 351
    iget-object v1, p0, Lio/reactivex/subscribers/TestSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@6
    if-eqz v1, :cond_2f

    #@8
    .line 352
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    const-string v3, "Fusion mode different. Expected: "

    #@e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    invoke-static {p1}, Lio/reactivex/subscribers/TestSubscriber;->fusionModeToString(I)Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    const-string v2, ", actual: "

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p1

    #@1f
    .line 353
    invoke-static {v0}, Lio/reactivex/subscribers/TestSubscriber;->fusionModeToString(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2e
    throw v1

    #@2f
    :cond_2f
    const-string p1, "Upstream is not fuseable"

    #@31
    .line 355
    invoke-virtual {p0, p1}, Lio/reactivex/subscribers/TestSubscriber;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    #@34
    move-result-object p1

    #@35
    throw p1

    #@36
    :cond_36
    return-object p0
.end method

.method final assertNotFuseable()Lio/reactivex/subscribers/TestSubscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 390
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@2
    if-nez v0, :cond_5

    #@4
    return-object p0

    #@5
    .line 391
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    const-string v1, "Upstream is fuseable."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0
.end method

.method public bridge synthetic assertNotSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .registers 2

    #@0
    .line 40
    invoke-virtual {p0}, Lio/reactivex/subscribers/TestSubscriber;->assertNotSubscribed()Lio/reactivex/subscribers/TestSubscriber;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final assertNotSubscribed()Lio/reactivex/subscribers/TestSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 320
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_18

    #@8
    .line 323
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    return-object p0

    #@11
    :cond_11
    const-string v0, "Not subscribed but errors found"

    #@13
    .line 324
    invoke-virtual {p0, v0}, Lio/reactivex/subscribers/TestSubscriber;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    #@16
    move-result-object v0

    #@17
    throw v0

    #@18
    :cond_18
    const-string v0, "Subscribed!"

    #@1a
    .line 321
    invoke-virtual {p0, v0}, Lio/reactivex/subscribers/TestSubscriber;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    #@1d
    move-result-object v0

    #@1e
    throw v0
.end method

.method public final assertOf(Lio/reactivex/functions/Consumer;)Lio/reactivex/subscribers/TestSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;>;)",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 403
    :try_start_0
    invoke-interface {p1, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    #@3
    return-object p0

    #@4
    :catchall_4
    move-exception p1

    #@5
    .line 405
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@8
    move-result-object p1

    #@9
    throw p1
.end method

.method public bridge synthetic assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .registers 2

    #@0
    .line 40
    invoke-virtual {p0}, Lio/reactivex/subscribers/TestSubscriber;->assertSubscribed()Lio/reactivex/subscribers/TestSubscriber;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final assertSubscribed()Lio/reactivex/subscribers/TestSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 308
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object p0

    #@9
    :cond_9
    const-string v0, "Not subscribed!"

    #@b
    .line 309
    invoke-virtual {p0, v0}, Lio/reactivex/subscribers/TestSubscriber;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    #@e
    move-result-object v0

    #@f
    throw v0
.end method

.method public final cancel()V
    .registers 2

    #@0
    .line 266
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->cancelled:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x1

    #@5
    .line 267
    iput-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->cancelled:Z

    #@7
    .line 268
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@c
    :cond_c
    return-void
.end method

.method public final dispose()V
    .registers 1

    #@0
    .line 282
    invoke-virtual {p0}, Lio/reactivex/subscribers/TestSubscriber;->cancel()V

    #@3
    return-void
.end method

.method public final hasSubscription()Z
    .registers 2

    #@0
    .line 297
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public final isCancelled()Z
    .registers 2

    #@0
    .line 277
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->cancelled:Z

    #@2
    return v0
.end method

.method public final isDisposed()Z
    .registers 2

    #@0
    .line 287
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->cancelled:Z

    #@2
    return v0
.end method

.method public onComplete()V
    .registers 5

    #@0
    .line 243
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    #@2
    if-nez v0, :cond_1b

    #@4
    const/4 v0, 0x1

    #@5
    .line 244
    iput-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    #@7
    .line 245
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_1b

    #@f
    .line 246
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@11
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string v2, "onSubscribe not called in proper order"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 250
    :cond_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    #@21
    .line 251
    iget-wide v0, p0, Lio/reactivex/subscribers/TestSubscriber;->completions:J

    #@23
    const-wide/16 v2, 0x1

    #@25
    add-long/2addr v0, v2

    #@26
    iput-wide v0, p0, Lio/reactivex/subscribers/TestSubscriber;->completions:J

    #@28
    .line 253
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2a
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_33

    #@2d
    .line 255
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->done:Ljava/util/concurrent/CountDownLatch;

    #@2f
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@32
    return-void

    #@33
    :catchall_33
    move-exception v0

    #@34
    iget-object v1, p0, Lio/reactivex/subscribers/TestSubscriber;->done:Ljava/util/concurrent/CountDownLatch;

    #@36
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@39
    .line 256
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 221
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    #@2
    if-nez v0, :cond_1b

    #@4
    const/4 v0, 0x1

    #@5
    .line 222
    iput-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    #@7
    .line 223
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_1b

    #@f
    .line 224
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@11
    new-instance v1, Ljava/lang/NullPointerException;

    #@13
    const-string v2, "onSubscribe not called in proper order"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 228
    :cond_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    #@21
    .line 229
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    if-nez p1, :cond_34

    #@28
    .line 232
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@2a
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2c
    const-string v2, "onError received a null Throwable"

    #@2e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    .line 235
    :cond_34
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@36
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_3f

    #@39
    .line 237
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->done:Ljava/util/concurrent/CountDownLatch;

    #@3b
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@3e
    return-void

    #@3f
    :catchall_3f
    move-exception p1

    #@40
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->done:Ljava/util/concurrent/CountDownLatch;

    #@42
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@45
    .line 238
    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 189
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    #@2
    if-nez v0, :cond_1b

    #@4
    const/4 v0, 0x1

    #@5
    .line 190
    iput-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    #@7
    .line 191
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_1b

    #@f
    .line 192
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@11
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string v2, "onSubscribe not called in proper order"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 195
    :cond_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    #@21
    .line 197
    iget v0, p0, Lio/reactivex/subscribers/TestSubscriber;->establishedFusionMode:I

    #@23
    const/4 v1, 0x2

    #@24
    if-ne v0, v1, :cond_40

    #@26
    .line 199
    :goto_26
    :try_start_26
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@28
    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    #@2b
    move-result-object p1

    #@2c
    if-eqz p1, :cond_3f

    #@2e
    .line 200
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->values:Ljava/util/List;

    #@30
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_34

    #@33
    goto :goto_26

    #@34
    :catchall_34
    move-exception p1

    #@35
    .line 204
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@37
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    .line 205
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@3c
    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueSubscription;->cancel()V

    #@3f
    :cond_3f
    return-void

    #@40
    .line 210
    :cond_40
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->values:Ljava/util/List;

    #@42
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    if-nez p1, :cond_53

    #@47
    .line 213
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@49
    new-instance v1, Ljava/lang/NullPointerException;

    #@4b
    const-string v2, "onNext received a null value"

    #@4d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 216
    :cond_53
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@55
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@58
    return-void
.end method

.method protected onStart()V
    .registers 1

    #@0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 7

    #@0
    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    #@6
    if-nez p1, :cond_15

    #@8
    .line 134
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@a
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    const-string v1, "onSubscribe received a null Subscription"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    return-void

    #@15
    .line 137
    :cond_15
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_45

    #@1e
    .line 138
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@21
    .line 139
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@29
    if-eq v0, v1, :cond_44

    #@2b
    .line 140
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@2d
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    const-string v3, "onSubscribe received multiple subscriptions: "

    #@33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object p1

    #@3a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object p1

    #@3e
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    :cond_44
    return-void

    #@45
    .line 145
    :cond_45
    iget v0, p0, Lio/reactivex/subscribers/TestSubscriber;->initialFusionMode:I

    #@47
    if-eqz v0, :cond_82

    #@49
    .line 146
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@4b
    if-eqz v0, :cond_82

    #@4d
    .line 147
    move-object v0, p1

    #@4e
    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@50
    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@52
    .line 149
    iget v1, p0, Lio/reactivex/subscribers/TestSubscriber;->initialFusionMode:I

    #@54
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    #@57
    move-result v0

    #@58
    .line 150
    iput v0, p0, Lio/reactivex/subscribers/TestSubscriber;->establishedFusionMode:I

    #@5a
    const/4 v1, 0x1

    #@5b
    if-ne v0, v1, :cond_82

    #@5d
    .line 153
    iput-boolean v1, p0, Lio/reactivex/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    #@5f
    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@62
    move-result-object p1

    #@63
    iput-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    #@65
    .line 157
    :goto_65
    :try_start_65
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@67
    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    #@6a
    move-result-object p1

    #@6b
    if-eqz p1, :cond_73

    #@6d
    .line 158
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->values:Ljava/util/List;

    #@6f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_65

    #@73
    .line 160
    :cond_73
    iget-wide v0, p0, Lio/reactivex/subscribers/TestSubscriber;->completions:J

    #@75
    const-wide/16 v2, 0x1

    #@77
    add-long/2addr v0, v2

    #@78
    iput-wide v0, p0, Lio/reactivex/subscribers/TestSubscriber;->completions:J
    :try_end_7a
    .catchall {:try_start_65 .. :try_end_7a} :catchall_7b

    #@7a
    goto :goto_81

    #@7b
    :catchall_7b
    move-exception p1

    #@7c
    .line 163
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->errors:Ljava/util/List;

    #@7e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@81
    :goto_81
    return-void

    #@82
    .line 170
    :cond_82
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@84
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@87
    .line 172
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@89
    const-wide/16 v1, 0x0

    #@8b
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    #@8e
    move-result-wide v3

    #@8f
    cmp-long v0, v3, v1

    #@91
    if-eqz v0, :cond_96

    #@93
    .line 174
    invoke-interface {p1, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    #@96
    .line 177
    :cond_96
    invoke-virtual {p0}, Lio/reactivex/subscribers/TestSubscriber;->onStart()V

    #@99
    return-void
.end method

.method public final request(J)V
    .registers 5

    #@0
    .line 261
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    iget-object v1, p0, Lio/reactivex/subscribers/TestSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@4
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    #@7
    return-void
.end method

.method public final requestMore(J)Lio/reactivex/subscribers/TestSubscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 418
    invoke-virtual {p0, p1, p2}, Lio/reactivex/subscribers/TestSubscriber;->request(J)V

    #@3
    return-object p0
.end method

.method final setInitialFusionMode(I)Lio/reactivex/subscribers/TestSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 337
    iput p1, p0, Lio/reactivex/subscribers/TestSubscriber;->initialFusionMode:I

    #@2
    return-object p0
.end method
