.class final Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableTimer.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x26fd42ce5a1686a7L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field volatile requested:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    #@0
    .line 69
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    return-void
.end method

.method public request(J)V
    .registers 3

    #@0
    .line 62
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_9

    #@6
    const/4 p1, 0x1

    #@7
    .line 63
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->requested:Z

    #@9
    :cond_9
    return-void
.end method

.method public run()V
    .registers 4

    #@0
    .line 74
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@6
    if-eq v0, v1, :cond_33

    #@8
    .line 75
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->requested:Z

    #@a
    if-eqz v0, :cond_22

    #@c
    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@e
    const-wide/16 v1, 0x0

    #@10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@17
    .line 77
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@19
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->lazySet(Ljava/lang/Object;)V

    #@1c
    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@1e
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@21
    goto :goto_33

    #@22
    .line 80
    :cond_22
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@24
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->lazySet(Ljava/lang/Object;)V

    #@27
    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@29
    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@2b
    const-string v2, "Can\'t deliver value due to lack of requests"

    #@2d
    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@30
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@33
    :cond_33
    :goto_33
    return-void
.end method

.method public setResource(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    #@0
    .line 87
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->trySet(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@3
    return-void
.end method
