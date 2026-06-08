.class public final Lio/reactivex/internal/observers/FutureSingleObserver;
.super Ljava/util/concurrent/CountDownLatch;
.source "FutureSingleObserver.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Ljava/util/concurrent/Future;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field error:Ljava/lang/Throwable;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 42
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@4
    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@9
    iput-object v0, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4

    #@0
    .line 49
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Lio/reactivex/disposables/Disposable;

    #@8
    if-eq p1, p0, :cond_23

    #@a
    .line 50
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@c
    if-ne p1, v0, :cond_f

    #@e
    goto :goto_23

    #@f
    .line 54
    :cond_f
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@13
    invoke-static {v0, p1, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    if-eqz p1, :cond_1e

    #@1b
    .line 56
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1e
    .line 58
    :cond_1e
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->countDown()V

    #@21
    const/4 p1, 0x1

    #@22
    return p1

    #@23
    :cond_23
    :goto_23
    const/4 p1, 0x0

    #@24
    return p1
.end method

.method public dispose()V
    .registers 1

    #@0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .line 76
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->getCount()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-eqz v0, :cond_10

    #@a
    .line 77
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    #@d
    .line 78
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->await()V

    #@10
    .line 81
    :cond_10
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->isCancelled()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_23

    #@16
    .line 84
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->error:Ljava/lang/Throwable;

    #@18
    if-nez v0, :cond_1d

    #@1a
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->value:Ljava/lang/Object;

    #@1c
    return-object v0

    #@1d
    .line 86
    :cond_1d
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    #@1f
    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v1

    #@23
    .line 82
    :cond_23
    new-instance v0, Ljava/util/concurrent/CancellationException;

    #@25
    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@28
    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->getCount()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-eqz v0, :cond_1e

    #@a
    .line 94
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    #@d
    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/internal/observers/FutureSingleObserver;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_14

    #@13
    goto :goto_1e

    #@14
    .line 96
    :cond_14
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    #@16
    invoke-static {p1, p2, p3}, Lio/reactivex/internal/util/ExceptionHelper;->timeoutMessage(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 100
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->isCancelled()Z

    #@21
    move-result p1

    #@22
    if-nez p1, :cond_31

    #@24
    .line 104
    iget-object p1, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->error:Ljava/lang/Throwable;

    #@26
    if-nez p1, :cond_2b

    #@28
    .line 108
    iget-object p1, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->value:Ljava/lang/Object;

    #@2a
    return-object p1

    #@2b
    .line 106
    :cond_2b
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    #@2d
    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw p2

    #@31
    .line 101
    :cond_31
    new-instance p1, Ljava/util/concurrent/CancellationException;

    #@33
    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@36
    throw p1
.end method

.method public isCancelled()Z
    .registers 2

    #@0
    .line 66
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@8
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->isDone()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isDone()Z
    .registers 5

    #@0
    .line 71
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->getCount()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 130
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@8
    .line 131
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    if-ne v0, v1, :cond_10

    #@c
    .line 132
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@f
    return-void

    #@10
    .line 135
    :cond_10
    iput-object p1, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->error:Ljava/lang/Throwable;

    #@12
    .line 136
    iget-object v1, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-static {v1, v0, p0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 137
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->countDown()V

    #@1d
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 113
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@5
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
    .line 118
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@8
    .line 119
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    return-void

    #@d
    .line 122
    :cond_d
    iput-object p1, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->value:Ljava/lang/Object;

    #@f
    .line 123
    iget-object p1, p0, Lio/reactivex/internal/observers/FutureSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    invoke-static {p1, v0, p0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureSingleObserver;->countDown()V

    #@17
    return-void
.end method
