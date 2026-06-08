.class public abstract Lio/reactivex/observers/DisposableSingleObserver;
.super Ljava/lang/Object;
.source "DisposableSingleObserver.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/observers/DisposableSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    #@0
    .line 80
    iget-object v0, p0, Lio/reactivex/observers/DisposableSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@5
    return-void
.end method

.method public final isDisposed()Z
    .registers 3

    #@0
    .line 75
    iget-object v0, p0, Lio/reactivex/observers/DisposableSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    if-ne v0, v1, :cond_c

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

.method protected onStart()V
    .registers 1

    #@0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 4

    #@0
    .line 62
    iget-object v0, p0, Lio/reactivex/observers/DisposableSingleObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 63
    invoke-virtual {p0}, Lio/reactivex/observers/DisposableSingleObserver;->onStart()V

    #@f
    :cond_f
    return-void
.end method
