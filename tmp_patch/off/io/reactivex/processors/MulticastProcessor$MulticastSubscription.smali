.class final Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "MulticastProcessor.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/MulticastProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MulticastSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x50aa39e0005767dL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitted:J

.field final parent:Lio/reactivex/processors/MulticastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/MulticastProcessor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 590
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@3
    .line 591
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    .line 592
    iput-object p2, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->parent:Lio/reactivex/processors/MulticastProcessor;

    #@7
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    #@0
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    .line 617
    invoke-virtual {p0, v0, v1}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->getAndSet(J)J

    #@5
    move-result-wide v2

    #@6
    cmp-long v0, v2, v0

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 618
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->parent:Lio/reactivex/processors/MulticastProcessor;

    #@c
    invoke-virtual {v0, p0}, Lio/reactivex/processors/MulticastProcessor;->remove(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V

    #@f
    :cond_f
    return-void
.end method

.method onComplete()V
    .registers 5

    #@0
    .line 636
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    cmp-long v0, v0, v2

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 637
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@f
    :cond_f
    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    .line 630
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    cmp-long v0, v0, v2

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 631
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@f
    :cond_f
    return-void
.end method

.method onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 623
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    cmp-long v0, v0, v2

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 624
    iget-wide v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    #@c
    const-wide/16 v2, 0x1

    #@e
    add-long/2addr v0, v2

    #@f
    iput-wide v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    #@11
    .line 625
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@13
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@16
    :cond_16
    return-void
.end method

.method public request(J)V
    .registers 11

    #@0
    .line 597
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2f

    #@6
    .line 599
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    #@9
    move-result-wide v0

    #@a
    const-wide/high16 v2, -0x8000000000000000L

    #@c
    cmp-long v2, v0, v2

    #@e
    if-eqz v2, :cond_2f

    #@10
    const-wide v2, 0x7fffffffffffffffL

    #@15
    cmp-long v4, v0, v2

    #@17
    if-nez v4, :cond_1a

    #@19
    goto :goto_2f

    #@1a
    :cond_1a
    add-long v4, v0, p1

    #@1c
    const-wide/16 v6, 0x0

    #@1e
    cmp-long v6, v4, v6

    #@20
    if-gez v6, :cond_23

    #@22
    goto :goto_24

    #@23
    :cond_23
    move-wide v2, v4

    #@24
    .line 607
    :goto_24
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->compareAndSet(JJ)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_6

    #@2a
    .line 608
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->parent:Lio/reactivex/processors/MulticastProcessor;

    #@2c
    invoke-virtual {p1}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    #@2f
    :cond_2f
    :goto_2f
    return-void
.end method
