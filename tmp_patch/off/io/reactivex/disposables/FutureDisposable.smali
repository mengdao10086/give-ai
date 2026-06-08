.class final Lio/reactivex/disposables/FutureDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FutureDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/util/concurrent/Future<",
        "*>;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5ad55fad22d3c507L


# instance fields
.field private final allowInterrupt:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)V"
        }
    .end annotation

    #@0
    .line 28
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@3
    .line 29
    iput-boolean p2, p0, Lio/reactivex/disposables/FutureDisposable;->allowInterrupt:Z

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 40
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/FutureDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Ljava/util/concurrent/Future;

    #@7
    if-eqz v0, :cond_e

    #@9
    .line 42
    iget-boolean v1, p0, Lio/reactivex/disposables/FutureDisposable;->allowInterrupt:Z

    #@b
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@e
    :cond_e
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 34
    invoke-virtual {p0}, Lio/reactivex/disposables/FutureDisposable;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/concurrent/Future;

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 v0, 0x1

    #@12
    :goto_12
    return v0
.end method
