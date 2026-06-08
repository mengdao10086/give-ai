.class public final Lio/reactivex/internal/operators/parallel/ParallelJoin;
.super Lio/reactivex/Flowable;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;,
        Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;,
        Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final delayErrors:Z

.field final prefetch:I

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;IZ)V"
        }
    .end annotation

    #@0
    .line 43
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@5
    .line 45
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->prefetch:I

    #@7
    .line 46
    iput-boolean p3, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->delayErrors:Z

    #@9
    return-void
.end method


# virtual methods
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
    .line 52
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->delayErrors:Z

    #@2
    if-eqz v0, :cond_12

    #@4
    .line 53
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;

    #@6
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@8
    invoke-virtual {v1}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    #@b
    move-result v1

    #@c
    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->prefetch:I

    #@e
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;-><init>(Lorg/reactivestreams/Subscriber;II)V

    #@11
    goto :goto_1f

    #@12
    .line 55
    :cond_12
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;

    #@14
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@16
    invoke-virtual {v1}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    #@19
    move-result v1

    #@1a
    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->prefetch:I

    #@1c
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;-><init>(Lorg/reactivestreams/Subscriber;II)V

    #@1f
    .line 57
    :goto_1f
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@22
    .line 58
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/parallel/ParallelFlowable;

    #@24
    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    #@26
    invoke-virtual {p1, v0}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    #@29
    return-void
.end method
