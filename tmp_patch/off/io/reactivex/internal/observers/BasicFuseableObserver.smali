.class public abstract Lio/reactivex/internal/observers/BasicFuseableObserver;
.super Ljava/lang/Object;
.source "BasicFuseableObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/internal/fuseable/QueueDisposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/QueueDisposable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected done:Z

.field protected final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected qd:Lio/reactivex/internal/fuseable/QueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected sourceMode:I

.field protected upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/Observer;

    #@5
    return-void
.end method


# virtual methods
.method protected afterDownstream()V
    .registers 1

    #@0
    return-void
.end method

.method protected beforeDownstream()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public clear()V
    .registers 2

    #@0
    .line 167
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->clear()V

    #@5
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    .line 152
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method protected final fail(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 108
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3
    .line 109
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@8
    .line 110
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;->onError(Ljava/lang/Throwable;)V

    #@b
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 157
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 162
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    #@0
    .line 176
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Should not be called!"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public final offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)Z"
        }
    .end annotation

    #@0
    .line 181
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "Should not be called!"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 115
    iget-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 118
    iput-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    #@8
    .line 119
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/Observer;

    #@a
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@d
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 95
    iget-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 96
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 99
    iput-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    #@b
    .line 100
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/Observer;

    #@d
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@10
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_20

    #@8
    .line 59
    iput-object p1, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 60
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    #@c
    if-eqz v0, :cond_12

    #@e
    .line 61
    check-cast p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    #@10
    iput-object p1, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@12
    .line 64
    :cond_12
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BasicFuseableObserver;->beforeDownstream()Z

    #@15
    move-result p1

    #@16
    if-eqz p1, :cond_20

    #@18
    .line 66
    iget-object p1, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/Observer;

    #@1a
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@1d
    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BasicFuseableObserver;->afterDownstream()V

    #@20
    :cond_20
    return-void
.end method

.method protected final transitiveBoundaryFusion(I)I
    .registers 4

    #@0
    .line 133
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@2
    if-eqz v0, :cond_11

    #@4
    and-int/lit8 v1, p1, 0x4

    #@6
    if-nez v1, :cond_11

    #@8
    .line 136
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_10

    #@e
    .line 138
    iput p1, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->sourceMode:I

    #@10
    :cond_10
    return p1

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    return p1
.end method
