.class public abstract Lio/reactivex/internal/subscribers/QueueDrainSubscriber;
.super Lio/reactivex/internal/subscribers/QueueDrainSubscriberPad4;
.source "QueueDrainSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/internal/util/QueueDrain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/QueueDrainSubscriberPad4;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/internal/util/QueueDrain<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;)V"
        }
    .end annotation

    #@0
    .line 46
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriberPad4;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    .line 48
    iput-object p2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@7
    return-void
.end method


# virtual methods
.method public accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;TU;)Z"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public final cancelled()Z
    .registers 2

    #@0
    .line 53
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->cancelled:Z

    #@2
    return v0
.end method

.method public final done()Z
    .registers 2

    #@0
    .line 58
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->done:Z

    #@2
    return v0
.end method

.method public final enter()Z
    .registers 2

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@5
    move-result v0

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

.method public final error()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 140
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->error:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public final fastEnter()Z
    .registers 4

    #@0
    .line 67
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_13

    #@9
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_13

    #@12
    move v1, v2

    #@13
    :cond_13
    return v1
.end method

.method protected final fastPathEmitMax(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    #@0
    .line 71
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2
    .line 72
    iget-object v1, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@4
    .line 74
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->fastEnter()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_40

    #@a
    .line 75
    iget-object v2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@f
    move-result-wide v2

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v4, v2, v4

    #@14
    if-eqz v4, :cond_32

    #@16
    .line 77
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_2a

    #@1c
    const-wide v4, 0x7fffffffffffffffL

    #@21
    cmp-long p1, v2, v4

    #@23
    if-eqz p1, :cond_2a

    #@25
    const-wide/16 v2, 0x1

    #@27
    .line 79
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->produced(J)J

    #@2a
    :cond_2a
    const/4 p1, -0x1

    #@2b
    .line 82
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->leave(I)I

    #@2e
    move-result p1

    #@2f
    if-nez p1, :cond_4a

    #@31
    return-void

    #@32
    .line 86
    :cond_32
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@35
    .line 87
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@37
    const-string p2, "Could not emit buffer due to lack of requests"

    #@39
    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@3c
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@3f
    return-void

    #@40
    .line 91
    :cond_40
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@43
    .line 92
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->enter()Z

    #@46
    move-result p1

    #@47
    if-nez p1, :cond_4a

    #@49
    return-void

    #@4a
    .line 96
    :cond_4a
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainMaxLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/QueueDrain;)V

    #@4d
    return-void
.end method

.method protected final fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    #@0
    .line 100
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2
    .line 101
    iget-object v1, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@4
    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->fastEnter()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_4d

    #@a
    .line 104
    iget-object v2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@f
    move-result-wide v2

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v4, v2, v4

    #@14
    if-eqz v4, :cond_3c

    #@16
    .line 106
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_38

    #@1c
    .line 107
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z

    #@1f
    move-result p1

    #@20
    if-eqz p1, :cond_30

    #@22
    const-wide v4, 0x7fffffffffffffffL

    #@27
    cmp-long p1, v2, v4

    #@29
    if-eqz p1, :cond_30

    #@2b
    const-wide/16 v2, 0x1

    #@2d
    .line 109
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->produced(J)J

    #@30
    :cond_30
    const/4 p1, -0x1

    #@31
    .line 112
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->leave(I)I

    #@34
    move-result p1

    #@35
    if-nez p1, :cond_57

    #@37
    return-void

    #@38
    .line 116
    :cond_38
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@3b
    goto :goto_57

    #@3c
    :cond_3c
    const/4 p1, 0x1

    #@3d
    .line 119
    iput-boolean p1, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->cancelled:Z

    #@3f
    .line 120
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@42
    .line 121
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@44
    const-string p2, "Could not emit buffer due to lack of requests"

    #@46
    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@49
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@4c
    return-void

    #@4d
    .line 125
    :cond_4d
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@50
    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->enter()Z

    #@53
    move-result p1

    #@54
    if-nez p1, :cond_57

    #@56
    return-void

    #@57
    .line 130
    :cond_57
    :goto_57
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainMaxLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/QueueDrain;)V

    #@5a
    return-void
.end method

.method public final leave(I)I
    .registers 3

    #@0
    .line 145
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public final produced(J)J
    .registers 4

    #@0
    .line 155
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    neg-long p1, p1

    #@3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@6
    move-result-wide p1

    #@7
    return-wide p1
.end method

.method public final requested()J
    .registers 3

    #@0
    .line 150
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final requested(J)V
    .registers 4

    #@0
    .line 159
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 160
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@8
    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@b
    :cond_b
    return-void
.end method
