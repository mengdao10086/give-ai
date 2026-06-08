.class final Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;
.super Ljava/lang/Object;
.source "FlowableToListSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableToListSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToListSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TU;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;

.field value:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TU;>;TU;)V"
        }
    .end annotation

    #@0
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 76
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->value:Ljava/util/Collection;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    .line 109
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

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
    .line 102
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@4
    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@6
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->value:Ljava/util/Collection;

    #@8
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 95
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->value:Ljava/util/Collection;

    #@3
    .line 96
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@5
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@7
    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@9
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->value:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 82
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    .line 84
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@17
    :cond_17
    return-void
.end method
