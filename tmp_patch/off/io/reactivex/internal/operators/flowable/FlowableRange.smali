.class public final Lio/reactivex/internal/operators/flowable/FlowableRange;
.super Lio/reactivex/Flowable;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final end:I

.field final start:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    #@0
    .line 30
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    #@3
    .line 31
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->start:I

    #@5
    add-int/2addr p1, p2

    #@6
    .line 32
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->end:I

    #@8
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 37
    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@2
    if-eqz v0, :cond_14

    #@4
    .line 38
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;

    #@6
    move-object v1, p1

    #@7
    check-cast v1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@9
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->start:I

    #@b
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->end:I

    #@d
    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;II)V

    #@10
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@13
    goto :goto_20

    #@14
    .line 41
    :cond_14
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;

    #@16
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->start:I

    #@18
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->end:I

    #@1a
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;-><init>(Lorg/reactivestreams/Subscriber;II)V

    #@1d
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@20
    :goto_20
    return-void
.end method
