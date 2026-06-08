.class final Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;
.super Ljava/lang/Object;
.source "FlowableLastMaybe.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableLastMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastSubscriber"
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
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    .line 57
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

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
    .line 90
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@4
    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->item:Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_11

    #@8
    const/4 v1, 0x0

    #@9
    .line 93
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->item:Ljava/lang/Object;

    #@b
    .line 94
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@d
    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@10
    goto :goto_16

    #@11
    .line 96
    :cond_11
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@13
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@16
    :goto_16
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 83
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@4
    const/4 v0, 0x0

    #@5
    .line 84
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->item:Ljava/lang/Object;

    #@7
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@9
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->item:Ljava/lang/Object;

    #@2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    .line 72
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@17
    :cond_17
    return-void
.end method
