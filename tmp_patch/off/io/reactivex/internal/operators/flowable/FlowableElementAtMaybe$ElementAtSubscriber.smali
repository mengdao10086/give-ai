.class final Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;
.super Ljava/lang/Object;
.source "FlowableElementAtMaybe.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ElementAtSubscriber"
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
.field count:J

.field done:Z

.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final index:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;J)V"
        }
    .end annotation

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    .line 58
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->index:J

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    .line 109
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

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
    .registers 2

    #@0
    .line 99
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@4
    .line 100
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->done:Z

    #@6
    if-nez v0, :cond_10

    #@8
    const/4 v0, 0x1

    #@9
    .line 101
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->done:Z

    #@b
    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@d
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@10
    :cond_10
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 88
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 89
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 92
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->done:Z

    #@b
    .line 93
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@d
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@f
    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@11
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@14
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 72
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 75
    :cond_5
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->count:J

    #@7
    .line 76
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->index:J

    #@9
    cmp-long v2, v0, v2

    #@b
    if-nez v2, :cond_1f

    #@d
    const/4 v0, 0x1

    #@e
    .line 77
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->done:Z

    #@10
    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@12
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@15
    .line 79
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@17
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@19
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@1b
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@1e
    return-void

    #@1f
    :cond_1f
    const-wide/16 v2, 0x1

    #@21
    add-long/2addr v0, v2

    #@22
    .line 83
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->count:J

    #@24
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    .line 66
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@17
    :cond_17
    return-void
.end method
