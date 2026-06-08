.class final Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;
.source "ParallelFilterTry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelFilterTry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelFilterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 110
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;-><init>(Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    #@3
    .line 111
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    #@0
    .line 185
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x1

    #@5
    .line 186
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    #@7
    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@9
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@c
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 175
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 176
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 179
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    #@b
    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@d
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@10
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    #@0
    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 117
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 119
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@f
    :cond_f
    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 125
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_63

    #@5
    const-wide/16 v2, 0x0

    #@7
    :cond_7
    const/4 v0, 0x1

    #@8
    .line 132
    :try_start_8
    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    #@a
    invoke-interface {v4, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@d
    move-result v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_17

    #@e
    if-eqz v2, :cond_16

    #@10
    .line 164
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@12
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@15
    return v0

    #@16
    :cond_16
    return v1

    #@17
    :catchall_17
    move-exception v4

    #@18
    .line 134
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1b
    const/4 v5, 0x2

    #@1c
    .line 139
    :try_start_1c
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    #@1e
    const-wide/16 v7, 0x1

    #@20
    add-long/2addr v2, v7

    #@21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24
    move-result-object v7

    #@25
    invoke-interface {v6, v7, v4}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    const-string v7, "The errorHandler returned a null item"

    #@2b
    invoke-static {v6, v7}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_4e

    #@31
    .line 147
    sget-object v7, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$1;->$SwitchMap$io$reactivex$parallel$ParallelFailureHandling:[I

    #@33
    invoke-virtual {v6}, Lio/reactivex/parallel/ParallelFailureHandling;->ordinal()I

    #@36
    move-result v6

    #@37
    aget v6, v7, v6

    #@39
    if-eq v6, v0, :cond_7

    #@3b
    if-eq v6, v5, :cond_4d

    #@3d
    const/4 p1, 0x3

    #@3e
    if-eq v6, p1, :cond_47

    #@40
    .line 157
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    #@43
    .line 158
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onError(Ljava/lang/Throwable;)V

    #@46
    return v1

    #@47
    .line 153
    :cond_47
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    #@4a
    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onComplete()V

    #@4d
    :cond_4d
    return v1

    #@4e
    :catchall_4e
    move-exception p1

    #@4f
    .line 141
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@52
    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    #@55
    .line 143
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    #@57
    new-array v3, v5, [Ljava/lang/Throwable;

    #@59
    aput-object v4, v3, v1

    #@5b
    aput-object p1, v3, v0

    #@5d
    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@60
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onError(Ljava/lang/Throwable;)V

    #@63
    :cond_63
    return v1
.end method
