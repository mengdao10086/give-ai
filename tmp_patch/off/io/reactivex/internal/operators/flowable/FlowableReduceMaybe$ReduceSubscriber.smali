.class final Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;
.super Ljava/lang/Object;
.source "FlowableReduceMaybe.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSubscriber"
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

.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;"
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
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/BiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    .line 73
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->reducer:Lio/reactivex/functions/BiFunction;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    const/4 v0, 0x1

    #@6
    .line 79
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->done:Z

    #@8
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 84
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->done:Z

    #@2
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 129
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 132
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->done:Z

    #@8
    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->value:Ljava/lang/Object;

    #@a
    if-eqz v0, :cond_12

    #@c
    .line 136
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@e
    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@11
    goto :goto_17

    #@12
    .line 138
    :cond_12
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@14
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@17
    :goto_17
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 119
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 120
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 123
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->done:Z

    #@b
    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@d
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@10
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
    .line 100
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 103
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->value:Ljava/lang/Object;

    #@7
    if-nez v0, :cond_c

    #@9
    .line 105
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->value:Ljava/lang/Object;

    #@b
    goto :goto_27

    #@c
    .line 108
    :cond_c
    :try_start_c
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->reducer:Lio/reactivex/functions/BiFunction;

    #@e
    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object p1

    #@12
    const-string v0, "The reducer returned a null value"

    #@14
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object p1

    #@18
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->value:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1b

    #@1a
    goto :goto_27

    #@1b
    :catchall_1b
    move-exception p1

    #@1c
    .line 110
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1f
    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@21
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@24
    .line 112
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->onError(Ljava/lang/Throwable;)V

    #@27
    :goto_27
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    .line 94
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@17
    :cond_17
    return-void
.end method
