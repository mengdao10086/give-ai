.class public final Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableFlattenIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/functions/Function;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    #@0
    .line 41
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    #@3
    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->mapper:Lio/reactivex/functions/Function;

    #@5
    .line 43
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->prefetch:I

    #@7
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->source:Lio/reactivex/Flowable;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/Callable;

    #@4
    if-eqz v0, :cond_34

    #@6
    .line 53
    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->source:Lio/reactivex/Flowable;

    #@8
    check-cast v0, Ljava/util/concurrent/Callable;

    #@a
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@d
    move-result-object v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_2c

    #@e
    if-nez v0, :cond_14

    #@10
    .line 61
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    #@13
    return-void

    #@14
    .line 68
    :cond_14
    :try_start_14
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->mapper:Lio/reactivex/functions/Function;

    #@16
    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/Iterable;

    #@1c
    .line 70
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_24

    #@20
    .line 77
    invoke-static {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable;->subscribe(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;)V

    #@23
    return-void

    #@24
    :catchall_24
    move-exception v0

    #@25
    .line 72
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@28
    .line 73
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    #@2b
    return-void

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    .line 55
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@30
    .line 56
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    #@33
    return-void

    #@34
    .line 81
    :cond_34
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->source:Lio/reactivex/Flowable;

    #@36
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;

    #@38
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->mapper:Lio/reactivex/functions/Function;

    #@3a
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->prefetch:I

    #@3c
    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;I)V

    #@3f
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    #@42
    return-void
.end method
