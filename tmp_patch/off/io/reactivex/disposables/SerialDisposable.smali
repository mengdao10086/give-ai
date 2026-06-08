.class public final Lio/reactivex/disposables/SerialDisposable;
.super Ljava/lang/Object;
.source "SerialDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field final resource:Ljava/util/concurrent/atomic/AtomicReference;
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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    return-void
.end method

.method public constructor <init>(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lio/reactivex/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 81
    iget-object v0, p0, Lio/reactivex/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@5
    return-void
.end method

.method public get()Lio/reactivex/disposables/Disposable;
    .registers 3

    #@0
    .line 72
    iget-object v0, p0, Lio/reactivex/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@8
    .line 73
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    if-ne v0, v1, :cond_10

    #@c
    .line 74
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    #@f
    move-result-object v0

    #@10
    :cond_10
    return-object v0
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 86
    iget-object v0, p0, Lio/reactivex/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public replace(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public set(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    #@0
    .line 52
    iget-object v0, p0, Lio/reactivex/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method
