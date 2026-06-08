.class final Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDistinct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableSubscriber<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "-TK;>;"
        }
    .end annotation
.end field

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;",
            "Ljava/util/Collection<",
            "-TK;>;)V"
        }
    .end annotation

    #@0
    .line 65
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@3
    .line 66
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    #@5
    .line 67
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    #@7
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@5
    .line 141
    invoke-super {p0}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->clear()V

    #@8
    return-void
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 110
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    #@2
    if-nez v0, :cond_11

    #@4
    const/4 v0, 0x1

    #@5
    .line 111
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    #@7
    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    #@9
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@c
    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@e
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@11
    :cond_11
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 99
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 100
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    goto :goto_15

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 102
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    #@b
    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    #@d
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@10
    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@12
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@15
    :goto_15
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
    .line 72
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 75
    :cond_5
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->sourceMode:I

    #@7
    if-nez v0, :cond_30

    #@9
    .line 80
    :try_start_9
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    #@b
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    const-string v1, "The keySelector returned a null key"

    #@11
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .line 81
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    #@17
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1a
    move-result v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2b

    #@1b
    if-eqz v0, :cond_23

    #@1d
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@1f
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@22
    goto :goto_36

    #@23
    .line 90
    :cond_23
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@25
    const-wide/16 v0, 0x1

    #@27
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@2a
    goto :goto_36

    #@2b
    :catchall_2b
    move-exception p1

    #@2c
    .line 83
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->fail(Ljava/lang/Throwable;)V

    #@2f
    return-void

    #@30
    .line 93
    :cond_30
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@32
    const/4 v0, 0x0

    #@33
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@36
    :goto_36
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    #@2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_2a

    #@8
    .line 128
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    #@a
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    #@c
    invoke-interface {v2, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    const-string v3, "The keySelector returned a null key"

    #@12
    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1d

    #@1c
    goto :goto_2a

    #@1d
    .line 131
    :cond_1d
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->sourceMode:I

    #@1f
    const/4 v1, 0x2

    #@20
    if-ne v0, v1, :cond_0

    #@22
    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@24
    const-wide/16 v1, 0x1

    #@26
    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@29
    goto :goto_0

    #@2a
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    #@0
    .line 119
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->transitiveBoundaryFusion(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method
