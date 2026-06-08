.class public final Lio/reactivex/internal/observers/DisposableLambdaObserver;
.super Ljava/lang/Object;
.source "DisposableLambdaObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onDispose:Lio/reactivex/functions/Action;

.field final onSubscribe:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 34
    iput-object p2, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->onSubscribe:Lio/reactivex/functions/Consumer;

    #@7
    .line 35
    iput-object p3, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->onDispose:Lio/reactivex/functions/Action;

    #@9
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    #@0
    .line 81
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    .line 82
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-eq v0, v1, :cond_1a

    #@6
    .line 83
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    iput-object v1, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 85
    :try_start_a
    iget-object v1, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->onDispose:Lio/reactivex/functions/Action;

    #@c
    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    #@f
    goto :goto_17

    #@10
    :catchall_10
    move-exception v1

    #@11
    .line 87
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@14
    .line 88
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@17
    .line 90
    :goto_17
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1a
    :cond_1a
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 96
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 73
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-eq v0, v1, :cond_f

    #@6
    .line 74
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    iput-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 75
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@f
    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-eq v0, v1, :cond_10

    #@6
    .line 64
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    iput-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 65
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@f
    goto :goto_13

    #@10
    .line 67
    :cond_10
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@13
    :goto_13
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->downstream:Lio/reactivex/Observer;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 42
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->onSubscribe:Lio/reactivex/functions/Consumer;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_15

    #@5
    .line 50
    iget-object v0, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@7
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_14

    #@d
    .line 51
    iput-object p1, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@f
    .line 52
    iget-object p1, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->downstream:Lio/reactivex/Observer;

    #@11
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@14
    :cond_14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    .line 44
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@19
    .line 45
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1c
    .line 46
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@1e
    iput-object p1, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@20
    .line 47
    iget-object p1, p0, Lio/reactivex/internal/observers/DisposableLambdaObserver;->downstream:Lio/reactivex/Observer;

    #@22
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@25
    return-void
.end method
