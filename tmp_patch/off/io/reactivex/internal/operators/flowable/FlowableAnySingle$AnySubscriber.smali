.class final Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;
.super Ljava/lang/Object;
.source "FlowableAnySingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableAnySingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnySubscriber"
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

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 57
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    .line 116
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

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
    .line 106
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    #@2
    if-nez v0, :cond_15

    #@4
    const/4 v0, 0x1

    #@5
    .line 107
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    #@7
    .line 108
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@9
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@b
    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@15
    :cond_15
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 94
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 95
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 99
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    #@b
    .line 100
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@d
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@f
    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@11
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@14
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
    .line 71
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 76
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@a
    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_23

    #@b
    if-eqz p1, :cond_22

    #@d
    const/4 p1, 0x1

    #@e
    .line 85
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    #@10
    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@12
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@15
    .line 87
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@17
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@19
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@1b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object p1

    #@1f
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@22
    :cond_22
    return-void

    #@23
    :catchall_23
    move-exception p1

    #@24
    .line 78
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@27
    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@29
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@2c
    .line 80
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@2e
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@30
    .line 81
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->onError(Ljava/lang/Throwable;)V

    #@33
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    .line 65
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@17
    :cond_17
    return-void
.end method
