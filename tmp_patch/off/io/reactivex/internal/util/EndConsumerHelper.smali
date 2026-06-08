.class public final Lio/reactivex/internal/util/EndConsumerHelper;
.super Ljava/lang/Object;
.source "EndConsumerHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static composeMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "It is not allowed to subscribe with a(n) "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, " multiple times. Please create a fresh instance of "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p0

    #@15
    const-string v0, " and subscribe that to the target source instead."

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    return-object p0
.end method

.method public static reportDoubleSubscription(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 148
    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    #@2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    invoke-static {p0}, Lio/reactivex/internal/util/EndConsumerHelper;->composeMessage(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    invoke-direct {v0, p0}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    #@d
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@10
    return-void
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/disposables/Disposable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "next is null"

    #@2
    .line 75
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    const/4 v0, 0x0

    #@6
    .line 76
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1c

    #@c
    .line 77
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@f
    .line 78
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@12
    move-result-object p0

    #@13
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@15
    if-eq p0, p1, :cond_1a

    #@17
    .line 79
    invoke-static {p2}, Lio/reactivex/internal/util/EndConsumerHelper;->reportDoubleSubscription(Ljava/lang/Class;)V

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    return p0

    #@1c
    :cond_1c
    const/4 p0, 0x1

    #@1d
    return p0
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;",
            "Lorg/reactivestreams/Subscription;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "next is null"

    #@2
    .line 120
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    const/4 v0, 0x0

    #@6
    .line 121
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1c

    #@c
    .line 122
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@f
    .line 123
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@12
    move-result-object p0

    #@13
    sget-object p1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@15
    if-eq p0, p1, :cond_1a

    #@17
    .line 124
    invoke-static {p2}, Lio/reactivex/internal/util/EndConsumerHelper;->reportDoubleSubscription(Ljava/lang/Class;)V

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    return p0

    #@1c
    :cond_1c
    const/4 p0, 0x1

    #@1d
    return p0
.end method

.method public static validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/disposables/Disposable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "next is null"

    #@2
    .line 53
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    if-eqz p0, :cond_13

    #@7
    .line 55
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@a
    .line 56
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@c
    if-eq p0, p1, :cond_11

    #@e
    .line 57
    invoke-static {p2}, Lio/reactivex/internal/util/EndConsumerHelper;->reportDoubleSubscription(Ljava/lang/Class;)V

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    return p0

    #@13
    :cond_13
    const/4 p0, 0x1

    #@14
    return p0
.end method

.method public static validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscription;",
            "Lorg/reactivestreams/Subscription;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "next is null"

    #@2
    .line 98
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    if-eqz p0, :cond_13

    #@7
    .line 100
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@a
    .line 101
    sget-object p1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@c
    if-eq p0, p1, :cond_11

    #@e
    .line 102
    invoke-static {p2}, Lio/reactivex/internal/util/EndConsumerHelper;->reportDoubleSubscription(Ljava/lang/Class;)V

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    return p0

    #@13
    :cond_13
    const/4 p0, 0x1

    #@14
    return p0
.end method
