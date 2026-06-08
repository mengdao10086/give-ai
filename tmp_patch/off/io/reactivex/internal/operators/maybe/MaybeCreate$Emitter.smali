.class final Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeCreate.java"

# interfaces
.implements Lio/reactivex/MaybeEmitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Emitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeEmitter<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223dd198233781a4L


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 58
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    #@0
    .line 140
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 145
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 114
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@6
    if-eq v0, v1, :cond_26

    #@8
    .line 115
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@10
    .line 116
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@12
    if-eq v0, v1, :cond_26

    #@14
    .line 118
    :try_start_14
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->downstream:Lio/reactivex/MaybeObserver;

    #@16
    invoke-interface {v1}, Lio/reactivex/MaybeObserver;->onComplete()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1f

    #@19
    if-eqz v0, :cond_26

    #@1b
    .line 121
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1e
    goto :goto_26

    #@1f
    :catchall_1f
    move-exception v1

    #@20
    if-eqz v0, :cond_25

    #@22
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@25
    .line 123
    :cond_25
    throw v1

    #@26
    :cond_26
    :goto_26
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 86
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->tryOnError(Ljava/lang/Throwable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 87
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@9
    :cond_9
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 66
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@6
    if-eq v0, v1, :cond_35

    #@8
    .line 67
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@10
    .line 68
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@12
    if-eq v0, v1, :cond_35

    #@14
    if-nez p1, :cond_23

    #@16
    .line 71
    :try_start_16
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->downstream:Lio/reactivex/MaybeObserver;

    #@18
    new-instance v1, Ljava/lang/NullPointerException;

    #@1a
    const-string v2, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@22
    goto :goto_28

    #@23
    .line 73
    :cond_23
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->downstream:Lio/reactivex/MaybeObserver;

    #@25
    invoke-interface {v1, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2e

    #@28
    :goto_28
    if-eqz v0, :cond_35

    #@2a
    .line 77
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@2d
    goto :goto_35

    #@2e
    :catchall_2e
    move-exception p1

    #@2f
    if-eqz v0, :cond_34

    #@31
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@34
    .line 79
    :cond_34
    throw p1

    #@35
    :cond_35
    :goto_35
    return-void
.end method

.method public setCancellable(Lio/reactivex/functions/Cancellable;)V
    .registers 3

    #@0
    .line 135
    new-instance v0, Lio/reactivex/internal/disposables/CancellableDisposable;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/internal/disposables/CancellableDisposable;-><init>(Lio/reactivex/functions/Cancellable;)V

    #@5
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    #@8
    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    #@0
    .line 130
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    const/4 v1, 0x1

    #@f
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const-string v1, "%s{%s}"

    #@17
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    .line 94
    new-instance p1, Ljava/lang/NullPointerException;

    #@4
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@6
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    .line 96
    :cond_9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@f
    if-eq v0, v1, :cond_30

    #@11
    .line 97
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@13
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@19
    .line 98
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@1b
    if-eq v0, v1, :cond_30

    #@1d
    .line 100
    :try_start_1d
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->downstream:Lio/reactivex/MaybeObserver;

    #@1f
    invoke-interface {v1, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_29

    #@22
    if-eqz v0, :cond_27

    #@24
    .line 103
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@27
    :cond_27
    const/4 p1, 0x1

    #@28
    return p1

    #@29
    :catchall_29
    move-exception p1

    #@2a
    if-eqz v0, :cond_2f

    #@2c
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@2f
    .line 105
    :cond_2f
    throw p1

    #@30
    :cond_30
    const/4 p1, 0x0

    #@31
    return p1
.end method
