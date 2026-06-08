.class public final Lio/reactivex/internal/operators/observable/ObservableScanSeed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableScanSeed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final accumulator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final seedSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    #@0
    .line 30
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 31
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->accumulator:Lio/reactivex/functions/BiFunction;

    #@5
    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->seedSupplier:Ljava/util/concurrent/Callable;

    #@7
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    .line 40
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->seedSupplier:Ljava/util/concurrent/Callable;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    const-string v1, "The seed supplied is null"

    #@8
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_19

    #@c
    .line 47
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->source:Lio/reactivex/ObservableSource;

    #@e
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;

    #@10
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->accumulator:Lio/reactivex/functions/BiFunction;

    #@12
    invoke-direct {v2, p1, v3, v0}, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V

    #@15
    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    .line 42
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1d
    .line 43
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@20
    return-void
.end method
