.class final Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;
.super Ljava/lang/Object;
.source "FlowableSingleMaybe.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleElementSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    .line 111
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 94
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 97
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->done:Z

    #@8
    .line 98
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@a
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@c
    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->value:Ljava/lang/Object;

    #@e
    const/4 v1, 0x0

    #@f
    .line 100
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->value:Ljava/lang/Object;

    #@11
    if-nez v0, :cond_19

    #@13
    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@15
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@18
    goto :goto_1e

    #@19
    .line 104
    :cond_19
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@1b
    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@1e
    :goto_1e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 83
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 84
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 87
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->done:Z

    #@b
    .line 88
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@d
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@f
    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@11
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@14
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
    .line 68
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 71
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->value:Ljava/lang/Object;

    #@7
    if-eqz v0, :cond_22

    #@9
    const/4 p1, 0x1

    #@a
    .line 72
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->done:Z

    #@c
    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@e
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@11
    .line 74
    sget-object p1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@13
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@15
    .line 75
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string v1, "Sequence contains more than one element!"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@21
    return-void

    #@22
    .line 78
    :cond_22
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->value:Ljava/lang/Object;

    #@24
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    .line 62
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@17
    :cond_17
    return-void
.end method
