.class public abstract Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SinglePostCompleteSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final COMPLETE_MASK:J = -0x8000000000000000L

.field static final REQUEST_MASK:J = 0x7fffffffffffffffL

.field private static final serialVersionUID:J = 0x6de1ba4ffe60ebe0L


# instance fields
.field protected final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected produced:J

.field protected upstream:Lorg/reactivestreams/Subscription;

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    .line 51
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    .line 124
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    return-void
.end method

.method protected final complete(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    #@0
    .line 68
    iget-wide v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->produced:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v4, v0, v2

    #@6
    if-eqz v4, :cond_b

    #@8
    .line 70
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@b
    .line 74
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->get()J

    #@e
    move-result-wide v0

    #@f
    const-wide/high16 v4, -0x8000000000000000L

    #@11
    and-long v6, v0, v4

    #@13
    cmp-long v6, v6, v2

    #@15
    if-eqz v6, :cond_1b

    #@17
    .line 76
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->onDrop(Ljava/lang/Object;)V

    #@1a
    return-void

    #@1b
    :cond_1b
    const-wide v6, 0x7fffffffffffffffL

    #@20
    and-long/2addr v0, v6

    #@21
    cmp-long v0, v0, v2

    #@23
    if-eqz v0, :cond_38

    #@25
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    #@2a
    .line 80
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->lazySet(J)V

    #@2d
    .line 81
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2f
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@32
    .line 82
    iget-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@34
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@37
    return-void

    #@38
    .line 85
    :cond_38
    iput-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    #@3a
    .line 86
    invoke-virtual {p0, v2, v3, v4, v5}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->compareAndSet(JJ)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_41

    #@40
    return-void

    #@41
    :cond_41
    const/4 v0, 0x0

    #@42
    .line 89
    iput-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    #@44
    goto :goto_b
.end method

.method protected onDrop(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    #@0
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 58
    iput-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 59
    iget-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@f
    :cond_f
    return-void
.end method

.method public final request(J)V
    .registers 11

    #@0
    .line 103
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_3b

    #@6
    .line 105
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->get()J

    #@9
    move-result-wide v0

    #@a
    const-wide/high16 v2, -0x8000000000000000L

    #@c
    and-long v4, v0, v2

    #@e
    const-wide/16 v6, 0x0

    #@10
    cmp-long v4, v4, v6

    #@12
    if-eqz v4, :cond_2c

    #@14
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    #@19
    .line 107
    invoke-virtual {p0, v2, v3, p1, p2}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->compareAndSet(JJ)Z

    #@1c
    move-result p1

    #@1d
    if-eqz p1, :cond_3b

    #@1f
    .line 108
    iget-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@21
    iget-object p2, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    #@23
    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@26
    .line 109
    iget-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@28
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@2b
    goto :goto_3b

    #@2c
    .line 113
    :cond_2c
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    #@2f
    move-result-wide v2

    #@30
    .line 114
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->compareAndSet(JJ)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_6

    #@36
    .line 115
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@38
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@3b
    :cond_3b
    :goto_3b
    return-void
.end method
