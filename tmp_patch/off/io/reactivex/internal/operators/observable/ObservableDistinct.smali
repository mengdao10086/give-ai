.class public final Lio/reactivex/internal/operators/observable/ObservableDistinct;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableDistinct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final collectionSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)V"
        }
    .end annotation

    #@0
    .line 35
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct;->keySelector:Lio/reactivex/functions/Function;

    #@5
    .line 37
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct;->collectionSupplier:Ljava/util/concurrent/Callable;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 45
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct;->collectionSupplier:Ljava/util/concurrent/Callable;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    #@8
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Collection;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_1b

    #@e
    .line 52
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct;->source:Lio/reactivex/ObservableSource;

    #@10
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;

    #@12
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct;->keySelector:Lio/reactivex/functions/Function;

    #@14
    invoke-direct {v2, p1, v3, v0}, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Ljava/util/Collection;)V

    #@17
    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    .line 47
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1f
    .line 48
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@22
    return-void
.end method
