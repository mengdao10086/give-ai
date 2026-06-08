.class public final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayFunction;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$TimedReplay;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedTimedReplay;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static flatMapIntoIterable(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;>;"
        }
    .end annotation

    #@0
    .line 193
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable;-><init>(Lio/reactivex/functions/Function;)V

    #@5
    return-object v0
.end method

.method public static flatMapWithCombiner(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lorg/reactivestreams/Publisher<",
            "TR;>;>;"
        }
    .end annotation

    #@0
    .line 176
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;

    #@2
    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;-><init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V

    #@5
    return-object v0
.end method

.method public static itemDelay(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;>;)",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;>;"
        }
    .end annotation

    #@0
    .line 86
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;-><init>(Lio/reactivex/functions/Function;)V

    #@5
    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;>;"
        }
    .end annotation

    #@0
    .line 197
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;-><init>(Lio/reactivex/Flowable;)V

    #@5
    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;I)Ljava/util/concurrent/Callable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;>;"
        }
    .end annotation

    #@0
    .line 201
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;

    #@2
    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;-><init>(Lio/reactivex/Flowable;I)V

    #@5
    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Ljava/util/concurrent/Callable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;>;"
        }
    .end annotation

    #@0
    .line 205
    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedTimedReplay;

    #@2
    move-object v0, v7

    #@3
    move-object v1, p0

    #@4
    move v2, p1

    #@5
    move-wide v3, p2

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedTimedReplay;-><init>(Lio/reactivex/Flowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    #@b
    return-object v7
.end method

.method public static replayCallable(Lio/reactivex/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Ljava/util/concurrent/Callable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;>;"
        }
    .end annotation

    #@0
    .line 209
    new-instance v6, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$TimedReplay;

    #@2
    move-object v0, v6

    #@3
    move-object v1, p0

    #@4
    move-wide v2, p1

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$TimedReplay;-><init>(Lio/reactivex/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    #@a
    return-object v6
.end method

.method public static replayFunction(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)Lio/reactivex/functions/Function;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;+",
            "Lorg/reactivestreams/Publisher<",
            "TR;>;>;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "TR;>;>;"
        }
    .end annotation

    #@0
    .line 213
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayFunction;

    #@2
    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayFunction;-><init>(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)V

    #@5
    return-object v0
.end method

.method public static simpleBiGenerator(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/functions/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiConsumer<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;>;)",
            "Lio/reactivex/functions/BiFunction<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation

    #@0
    .line 68
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;-><init>(Lio/reactivex/functions/BiConsumer;)V

    #@5
    return-object v0
.end method

.method public static simpleGenerator(Lio/reactivex/functions/Consumer;)Lio/reactivex/functions/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Consumer<",
            "Lio/reactivex/Emitter<",
            "TT;>;>;)",
            "Lio/reactivex/functions/BiFunction<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation

    #@0
    .line 50
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;-><init>(Lio/reactivex/functions/Consumer;)V

    #@5
    return-object v0
.end method

.method public static subscriberOnComplete(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Action;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)",
            "Lio/reactivex/functions/Action;"
        }
    .end annotation

    #@0
    .line 137
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@5
    return-object v0
.end method

.method public static subscriberOnError(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    #@0
    .line 133
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@5
    return-object v0
.end method

.method public static subscriberOnNext(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)",
            "Lio/reactivex/functions/Consumer<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 129
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@5
    return-object v0
.end method

.method public static zipIterable(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/List<",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation

    #@0
    .line 239
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;-><init>(Lio/reactivex/functions/Function;)V

    #@5
    return-object v0
.end method
