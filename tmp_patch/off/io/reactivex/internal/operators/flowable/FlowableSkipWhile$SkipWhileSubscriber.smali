.class final Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;
.super Ljava/lang/Object;
.source "FlowableSkipWhile.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipWhileSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field notSkipping:Z

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    return-void
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@5
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
    .line 55
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->notSkipping:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@6
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@9
    goto :goto_22

    #@a
    .line 60
    :cond_a
    :try_start_a
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    #@c
    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@f
    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_23

    #@10
    if-eqz v0, :cond_1a

    #@12
    .line 68
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@14
    const-wide/16 v0, 0x1

    #@16
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@19
    goto :goto_22

    #@1a
    :cond_1a
    const/4 v0, 0x1

    #@1b
    .line 70
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->notSkipping:Z

    #@1d
    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@1f
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@22
    :goto_22
    return-void

    #@23
    :catchall_23
    move-exception p1

    #@24
    .line 62
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@27
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@29
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@2c
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2e
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@31
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    #@0
    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@f
    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@5
    return-void
.end method
