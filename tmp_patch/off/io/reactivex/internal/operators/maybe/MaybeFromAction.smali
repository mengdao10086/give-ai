.class public final Lio/reactivex/internal/operators/maybe/MaybeFromAction;
.super Lio/reactivex/Maybe;
.source "MaybeFromAction.java"

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
.field final action:Lio/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lio/reactivex/functions/Action;)V
    .registers 2

    #@0
    .line 33
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromAction;->action:Lio/reactivex/functions/Action;

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
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromAction;->action:Lio/reactivex/functions/Action;

    #@2
    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V

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
    .line 39
    invoke-static {}, Lio/reactivex/disposables/Disposables;->empty()Lio/reactivex/disposables/Disposable;

    #@3
    move-result-object v0

    #@4
    .line 40
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@7
    .line 42
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_2d

    #@d
    .line 45
    :try_start_d
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromAction;->action:Lio/reactivex/functions/Action;

    #@f
    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1c

    #@12
    .line 56
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_2d

    #@18
    .line 57
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@1b
    goto :goto_2d

    #@1c
    :catchall_1c
    move-exception v1

    #@1d
    .line 47
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@20
    .line 48
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_2a

    #@26
    .line 49
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@29
    goto :goto_2d

    #@2a
    .line 51
    :cond_2a
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@2d
    :cond_2d
    :goto_2d
    return-void
.end method
