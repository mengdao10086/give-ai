.class final Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;
.super Ljava/lang/Object;
.source "FlowableCollectSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCollectSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CollectSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final collector:Lio/reactivex/functions/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;Lio/reactivex/functions/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TU;>;TU;",
            "Lio/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    #@0
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 74
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->collector:Lio/reactivex/functions/BiConsumer;

    #@7
    .line 75
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->u:Ljava/lang/Object;

    #@9
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    .line 125
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

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
    .line 114
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 117
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->done:Z

    #@8
    .line 118
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@a
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@c
    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@e
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->u:Ljava/lang/Object;

    #@10
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@13
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 103
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 104
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 107
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->done:Z

    #@b
    .line 108
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@d
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@f
    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@11
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

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
    .line 89
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 93
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->collector:Lio/reactivex/functions/BiConsumer;

    #@7
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->u:Ljava/lang/Object;

    #@9
    invoke-interface {v0, v1, p1}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    #@c
    goto :goto_19

    #@d
    :catchall_d
    move-exception p1

    #@e
    .line 95
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@11
    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@13
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@16
    .line 97
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->onError(Ljava/lang/Throwable;)V

    #@19
    :goto_19
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    .line 83
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@17
    :cond_17
    return-void
.end method
