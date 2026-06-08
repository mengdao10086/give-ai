.class public final Lio/reactivex/internal/operators/flowable/FlowableScalarXMap;
.super Ljava/lang/Object;
.source "FlowableScalarXMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static scalarXMap(Ljava/lang/Object;Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;)",
            "Lio/reactivex/Flowable<",
            "TU;>;"
        }
    .end annotation

    #@0
    .line 112
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable;

    #@2
    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable;-><init>(Ljava/lang/Object;Lio/reactivex/functions/Function;)V

    #@5
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static tryScalarXMapSubscribe(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;)Z"
        }
    .end annotation

    #@0
    .line 50
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    #@2
    if-eqz v0, :cond_52

    #@4
    const/4 v0, 0x1

    #@5
    .line 54
    :try_start_5
    check-cast p0, Ljava/util/concurrent/Callable;

    #@7
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@a
    move-result-object p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_4a

    #@b
    if-nez p0, :cond_11

    #@d
    .line 62
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    #@10
    return v0

    #@11
    .line 69
    :cond_11
    :try_start_11
    invoke-interface {p2, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object p0

    #@15
    const-string p2, "The mapper returned a null Publisher"

    #@17
    invoke-static {p0, p2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object p0

    #@1b
    check-cast p0, Lorg/reactivestreams/Publisher;
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_42

    #@1d
    .line 76
    instance-of p2, p0, Ljava/util/concurrent/Callable;

    #@1f
    if-eqz p2, :cond_3e

    #@21
    .line 80
    :try_start_21
    check-cast p0, Ljava/util/concurrent/Callable;

    #@23
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@26
    move-result-object p0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_36

    #@27
    if-nez p0, :cond_2d

    #@29
    .line 88
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    #@2c
    return v0

    #@2d
    .line 91
    :cond_2d
    new-instance p2, Lio/reactivex/internal/subscriptions/ScalarSubscription;

    #@2f
    invoke-direct {p2, p1, p0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)V

    #@32
    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@35
    goto :goto_41

    #@36
    :catchall_36
    move-exception p0

    #@37
    .line 82
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3a
    .line 83
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    #@3d
    return v0

    #@3e
    .line 93
    :cond_3e
    invoke-interface {p0, p1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    #@41
    :goto_41
    return v0

    #@42
    :catchall_42
    move-exception p0

    #@43
    .line 71
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@46
    .line 72
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    #@49
    return v0

    #@4a
    :catchall_4a
    move-exception p0

    #@4b
    .line 56
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@4e
    .line 57
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    #@51
    return v0

    #@52
    :cond_52
    const/4 p0, 0x0

    #@53
    return p0
.end method
