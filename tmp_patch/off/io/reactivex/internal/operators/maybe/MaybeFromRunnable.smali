.class public final Lio/reactivex/internal/operators/maybe/MaybeFromRunnable;
.super Lio/reactivex/Maybe;
.source "MaybeFromRunnable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    .line 32
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromRunnable;->runnable:Ljava/lang/Runnable;

    #@5
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
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
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromRunnable;->runnable:Ljava/lang/Runnable;

    #@2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@5
    const/4 v0, 0x0

    #@6
    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 38
    invoke-static {}, Lio/reactivex/disposables/Disposables;->empty()Lio/reactivex/disposables/Disposable;

    #@3
    move-result-object v0

    #@4
    .line 39
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@7
    .line 41
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_2d

    #@d
    .line 44
    :try_start_d
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromRunnable;->runnable:Ljava/lang/Runnable;

    #@f
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1c

    #@12
    .line 55
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_2d

    #@18
    .line 56
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@1b
    goto :goto_2d

    #@1c
    :catchall_1c
    move-exception v1

    #@1d
    .line 46
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@20
    .line 47
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_2a

    #@26
    .line 48
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@29
    goto :goto_2d

    #@2a
    .line 50
    :cond_2a
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@2d
    :cond_2d
    :goto_2d
    return-void
.end method
