.class final Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableCreate.java"

# interfaces
.implements Lio/reactivex/CompletableEmitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Emitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/CompletableEmitter;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223dd198233781a4L


# instance fields
.field final downstream:Lio/reactivex/CompletableObserver;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;)V
    .registers 2

    #@0
    .line 54
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->downstream:Lio/reactivex/CompletableObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    #@0
    .line 114
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->get()Ljava/lang/Object;

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
    .line 60
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@6
    if-eq v0, v1, :cond_26

    #@8
    .line 61
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@10
    .line 62
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@12
    if-eq v0, v1, :cond_26

    #@14
    .line 64
    :try_start_14
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->downstream:Lio/reactivex/CompletableObserver;

    #@16
    invoke-interface {v1}, Lio/reactivex/CompletableObserver;->onComplete()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1f

    #@19
    if-eqz v0, :cond_26

    #@1b
    .line 67
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
    .line 69
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
    .line 76
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->tryOnError(Ljava/lang/Throwable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 77
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@9
    :cond_9
    return-void
.end method

.method public setCancellable(Lio/reactivex/functions/Cancellable;)V
    .registers 3

    #@0
    .line 109
    new-instance v0, Lio/reactivex/internal/disposables/CancellableDisposable;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/internal/disposables/CancellableDisposable;-><init>(Lio/reactivex/functions/Cancellable;)V

    #@5
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    #@8
    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    #@0
    .line 104
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
    .line 124
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
    .line 84
    new-instance p1, Ljava/lang/NullPointerException;

    #@4
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@6
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    .line 86
    :cond_9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@f
    if-eq v0, v1, :cond_30

    #@11
    .line 87
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@13
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@19
    .line 88
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@1b
    if-eq v0, v1, :cond_30

    #@1d
    .line 90
    :try_start_1d
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->downstream:Lio/reactivex/CompletableObserver;

    #@1f
    invoke-interface {v1, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_29

    #@22
    if-eqz v0, :cond_27

    #@24
    .line 93
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
    .line 95
    :cond_2f
    throw p1

    #@30
    :cond_30
    const/4 p1, 0x0

    #@31
    return p1
.end method
