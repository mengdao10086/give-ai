.class final Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowablePublishAlt.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerSubscription"
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
.field private static final serialVersionUID:J = 0x277b78b9467deaa9L


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

.field final parent:Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 461
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@3
    .line 462
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    .line 463
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@7
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    #@0
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    .line 474
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->getAndSet(J)J

    #@5
    move-result-wide v2

    #@6
    cmp-long v0, v2, v0

    #@8
    if-eqz v0, :cond_14

    #@a
    .line 475
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@c
    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->remove(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)V

    #@f
    .line 476
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@11
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    #@14
    :cond_14
    return-void
.end method

.method public isCancelled()Z
    .registers 5

    #@0
    .line 481
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->get()J

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public request(J)V
    .registers 3

    #@0
    .line 468
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@3
    .line 469
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@5
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    #@8
    return-void
.end method
