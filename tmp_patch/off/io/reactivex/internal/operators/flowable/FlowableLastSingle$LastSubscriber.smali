.class final Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;
.super Ljava/lang/Object;
.source "FlowableLastSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableLastSingle;
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
.field final defaultItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
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
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;TT;)V"
        }
    .end annotation

    #@0
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 60
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->defaultItem:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    .line 66
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

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
    .line 99
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@4
    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->item:Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_11

    #@8
    const/4 v1, 0x0

    #@9
    .line 102
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->item:Ljava/lang/Object;

    #@b
    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@d
    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@10
    goto :goto_25

    #@11
    .line 105
    :cond_11
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->defaultItem:Ljava/lang/Object;

    #@13
    if-eqz v0, :cond_1b

    #@15
    .line 108
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@17
    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@1a
    goto :goto_25

    #@1b
    .line 110
    :cond_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@1d
    new-instance v1, Ljava/util/NoSuchElementException;

    #@1f
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@22
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@25
    :goto_25
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 92
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@4
    const/4 v0, 0x0

    #@5
    .line 93
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->item:Ljava/lang/Object;

    #@7
    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@9
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

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
    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->item:Ljava/lang/Object;

    #@2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    .line 81
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@17
    :cond_17
    return-void
.end method
