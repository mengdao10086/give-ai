.class public final Lio/reactivex/internal/operators/observable/ObservableFromCallable;
.super Lio/reactivex/Observable;
.source "ObservableFromCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)V"
        }
    .end annotation

    #@0
    .line 30
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromCallable;->callable:Ljava/util/concurrent/Callable;

    #@5
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromCallable;->callable:Ljava/util/concurrent/Callable;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    const-string v1, "The callable returned a null value"

    #@8
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 36
    new-instance v0, Lio/reactivex/internal/observers/DeferredScalarDisposable;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/Observer;)V

    #@5
    .line 37
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@8
    .line 38
    invoke-virtual {v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_f

    #@e
    return-void

    #@f
    .line 43
    :cond_f
    :try_start_f
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromCallable;->callable:Ljava/util/concurrent/Callable;

    #@11
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    const-string v2, "Callable returned null"

    #@17
    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object p1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    #@1b
    .line 53
    invoke-virtual {v0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->complete(Ljava/lang/Object;)V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v1

    #@20
    .line 45
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@23
    .line 46
    invoke-virtual {v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_2d

    #@29
    .line 47
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@2c
    goto :goto_30

    #@2d
    .line 49
    :cond_2d
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@30
    :goto_30
    return-void
.end method
