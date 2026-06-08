.class final Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;
.super Ljava/lang/Object;
.source "MaybePeek.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybePeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaybePeekObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lio/reactivex/internal/operators/maybe/MaybePeek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybePeek<",
            "TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/internal/operators/maybe/MaybePeek;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/maybe/MaybePeek<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    .line 68
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 74
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybePeek;->onDisposeCall:Lio/reactivex/functions/Action;

    #@4
    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    #@7
    goto :goto_f

    #@8
    :catchall_8
    move-exception v0

    #@9
    .line 76
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@c
    .line 77
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@f
    .line 80
    :goto_f
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@11
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@14
    .line 81
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@16
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@18
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method onAfterTerminate()V
    .registers 2

    #@0
    .line 174
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybePeek;->onAfterTerminate:Lio/reactivex/functions/Action;

    #@4
    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    #@7
    goto :goto_f

    #@8
    :catchall_8
    move-exception v0

    #@9
    .line 176
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@c
    .line 177
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@f
    :goto_f
    return-void
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-ne v0, v1, :cond_7

    #@6
    return-void

    #@7
    .line 159
    :cond_7
    :try_start_7
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    #@9
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybePeek;->onCompleteCall:Lio/reactivex/functions/Action;

    #@b
    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1b

    #@e
    .line 165
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@10
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@12
    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@14
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@17
    .line 169
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onAfterTerminate()V

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    .line 161
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1f
    .line 162
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onErrorInner(Ljava/lang/Throwable;)V

    #@22
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-ne v0, v1, :cond_a

    #@6
    .line 130
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@9
    return-void

    #@a
    .line 134
    :cond_a
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onErrorInner(Ljava/lang/Throwable;)V

    #@d
    return-void
.end method

.method onErrorInner(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    .line 139
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybePeek;->onErrorCall:Lio/reactivex/functions/Consumer;

    #@4
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    #@7
    goto :goto_1b

    #@8
    :catchall_8
    move-exception v0

    #@9
    .line 141
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@c
    .line 142
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    #@e
    const/4 v2, 0x2

    #@f
    new-array v2, v2, [Ljava/lang/Throwable;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object p1, v2, v3

    #@14
    const/4 p1, 0x1

    #@15
    aput-object v0, v2, p1

    #@17
    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@1a
    move-object p1, v1

    #@1b
    .line 145
    :goto_1b
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@1d
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@1f
    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@21
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@24
    .line 149
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onAfterTerminate()V

    #@27
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_27

    #@8
    .line 93
    :try_start_8
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    #@a
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybePeek;->onSubscribeCall:Lio/reactivex/functions/Consumer;

    #@c
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_17

    #@f
    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@11
    .line 104
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@13
    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@16
    goto :goto_27

    #@17
    :catchall_17
    move-exception v0

    #@18
    .line 95
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1b
    .line 96
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1e
    .line 97
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@20
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@22
    .line 98
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@24
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    #@27
    :cond_27
    :goto_27
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-ne v0, v1, :cond_7

    #@6
    return-void

    #@7
    .line 114
    :cond_7
    :try_start_7
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    #@9
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybePeek;->onSuccessCall:Lio/reactivex/functions/Consumer;

    #@b
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1b

    #@e
    .line 120
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@10
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@12
    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@14
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@17
    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onAfterTerminate()V

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception p1

    #@1c
    .line 116
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1f
    .line 117
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onErrorInner(Ljava/lang/Throwable;)V

    #@22
    return-void
.end method
