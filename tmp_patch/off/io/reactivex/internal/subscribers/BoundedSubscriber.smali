.class public final Lio/reactivex/internal/subscribers/BoundedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "BoundedSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/observers/LambdaConsumerIntrospection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/observers/LambdaConsumerIntrospection;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64a12a8486b15cccL


# instance fields
.field final bufferSize:I

.field consumed:I

.field final limit:I

.field final onComplete:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onSubscribe:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lorg/reactivestreams/Subscription;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 45
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    #@5
    .line 47
    iput-object p2, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError:Lio/reactivex/functions/Consumer;

    #@7
    .line 48
    iput-object p3, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onComplete:Lio/reactivex/functions/Action;

    #@9
    .line 49
    iput-object p4, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onSubscribe:Lio/reactivex/functions/Consumer;

    #@b
    .line 50
    iput p5, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->bufferSize:I

    #@d
    shr-int/lit8 p1, p5, 0x2

    #@f
    sub-int/2addr p5, p1

    #@10
    .line 51
    iput p5, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->limit:I

    #@12
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    #@0
    .line 133
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    return-void
.end method

.method public dispose()V
    .registers 1

    #@0
    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->cancel()V

    #@3
    return-void
.end method

.method public hasCustomOnError()Z
    .registers 3

    #@0
    .line 138
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError:Lio/reactivex/functions/Consumer;

    #@2
    sget-object v1, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/functions/Consumer;

    #@4
    if-eq v0, v1, :cond_8

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

.method public isDisposed()Z
    .registers 3

    #@0
    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@6
    if-ne v0, v1, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 105
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@6
    if-eq v0, v1, :cond_1a

    #@8
    .line 106
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@a
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->lazySet(Ljava/lang/Object;)V

    #@d
    .line 108
    :try_start_d
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onComplete:Lio/reactivex/functions/Action;

    #@f
    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    #@12
    goto :goto_1a

    #@13
    :catchall_13
    move-exception v0

    #@14
    .line 110
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@17
    .line 111
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@6
    if-eq v0, v1, :cond_29

    #@8
    .line 91
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    #@a
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->lazySet(Ljava/lang/Object;)V

    #@d
    .line 93
    :try_start_d
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError:Lio/reactivex/functions/Consumer;

    #@f
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    #@12
    goto :goto_2c

    #@13
    :catchall_13
    move-exception v0

    #@14
    .line 95
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@17
    .line 96
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    #@19
    const/4 v2, 0x2

    #@1a
    new-array v2, v2, [Ljava/lang/Throwable;

    #@1c
    const/4 v3, 0x0

    #@1d
    aput-object p1, v2, v3

    #@1f
    const/4 p1, 0x1

    #@20
    aput-object v0, v2, p1

    #@22
    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@25
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@28
    goto :goto_2c

    #@29
    .line 99
    :cond_29
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@2c
    :goto_2c
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
    .line 69
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->isDisposed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_36

    #@6
    .line 71
    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    #@8
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    #@b
    .line 73
    iget p1, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->consumed:I

    #@d
    add-int/lit8 p1, p1, 0x1

    #@f
    .line 74
    iget v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->limit:I

    #@11
    if-ne p1, v0, :cond_23

    #@13
    const/4 p1, 0x0

    #@14
    .line 75
    iput p1, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->consumed:I

    #@16
    .line 76
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    check-cast p1, Lorg/reactivestreams/Subscription;

    #@1c
    iget v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->limit:I

    #@1e
    int-to-long v0, v0

    #@1f
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@22
    goto :goto_36

    #@23
    .line 78
    :cond_23
    iput p1, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->consumed:I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    #@25
    goto :goto_36

    #@26
    :catchall_26
    move-exception p1

    #@27
    .line 81
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2a
    .line 82
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@30
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@33
    .line 83
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError(Ljava/lang/Throwable;)V

    #@36
    :cond_36
    :goto_36
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    #@0
    .line 56
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_16

    #@6
    .line 58
    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onSubscribe:Lio/reactivex/functions/Consumer;

    #@8
    invoke-interface {v0, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    #@b
    goto :goto_16

    #@c
    :catchall_c
    move-exception v0

    #@d
    .line 60
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@10
    .line 61
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@13
    .line 62
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError(Ljava/lang/Throwable;)V

    #@16
    :cond_16
    :goto_16
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@6
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@9
    return-void
.end method
