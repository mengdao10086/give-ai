.class public final Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SubscriberResourceWrapper.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77840c661fe71fc2L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 33
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    .line 34
    iput-object p1, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    #@0
    .line 82
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->dispose()V

    #@3
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@5
    .line 72
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@8
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 77
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@8
    if-ne v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 57
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@8
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 51
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    .line 52
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@8
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
    .line 46
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->downstream:Lorg/reactivestreams/Subscriber;

    #@2
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    #@0
    .line 39
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_d

    #@8
    .line 40
    iget-object p1, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->downstream:Lorg/reactivestreams/Subscriber;

    #@a
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@d
    :cond_d
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 63
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@e
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@11
    :cond_11
    return-void
.end method

.method public setResource(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    #@0
    .line 86
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@3
    return-void
.end method
