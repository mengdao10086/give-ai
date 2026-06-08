.class public final Lio/reactivex/internal/operators/maybe/MaybeFromFuture;
.super Lio/reactivex/Maybe;
.source "MaybeFromFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 36
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;->future:Ljava/util/concurrent/Future;

    #@5
    .line 38
    iput-wide p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;->timeout:J

    #@7
    .line 39
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    #@9
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 44
    invoke-static {}, Lio/reactivex/disposables/Disposables;->empty()Lio/reactivex/disposables/Disposable;

    #@3
    move-result-object v0

    #@4
    .line 45
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@7
    .line 46
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_49

    #@d
    .line 49
    :try_start_d
    iget-wide v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;->timeout:J

    #@f
    const-wide/16 v3, 0x0

    #@11
    cmp-long v3, v1, v3

    #@13
    if-gtz v3, :cond_1c

    #@15
    .line 50
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;->future:Ljava/util/concurrent/Future;

    #@17
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_24

    #@1c
    .line 52
    :cond_1c
    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;->future:Ljava/util/concurrent/Future;

    #@1e
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    #@20
    invoke-interface {v3, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@23
    move-result-object v1
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_34

    #@24
    .line 64
    :goto_24
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_49

    #@2a
    if-nez v1, :cond_30

    #@2c
    .line 66
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@2f
    goto :goto_49

    #@30
    .line 68
    :cond_30
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@33
    goto :goto_49

    #@34
    :catchall_34
    move-exception v1

    #@35
    .line 55
    instance-of v2, v1, Ljava/util/concurrent/ExecutionException;

    #@37
    if-eqz v2, :cond_3d

    #@39
    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@3c
    move-result-object v1

    #@3d
    .line 58
    :cond_3d
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@40
    .line 59
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_49

    #@46
    .line 60
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@49
    :cond_49
    :goto_49
    return-void
.end method
