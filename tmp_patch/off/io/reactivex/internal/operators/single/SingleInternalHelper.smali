.class public final Lio/reactivex/internal/operators/single/SingleInternalHelper;
.super Ljava/lang/Object;
.source "SingleInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;,
        Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterable;,
        Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterator;,
        Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;,
        Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;
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

.method public static emptyThrower()Ljava/util/concurrent/Callable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/NoSuchElementException;",
            ">;"
        }
    .end annotation

    #@0
    .line 45
    sget-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    #@2
    return-object v0
.end method

.method public static iterableToFlowable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/Flowable<",
            "TT;>;>;"
        }
    .end annotation

    #@0
    .line 101
    new-instance v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterable;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterable;-><init>(Ljava/lang/Iterable;)V

    #@5
    return-object v0
.end method

.method public static toFlowable()Lio/reactivex/functions/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;>;"
        }
    .end annotation

    #@0
    .line 60
    sget-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    #@2
    return-object v0
.end method

.method public static toObservable()Lio/reactivex/functions/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/Observable<",
            "+TT;>;>;"
        }
    .end annotation

    #@0
    .line 116
    sget-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

    #@2
    return-object v0
.end method
