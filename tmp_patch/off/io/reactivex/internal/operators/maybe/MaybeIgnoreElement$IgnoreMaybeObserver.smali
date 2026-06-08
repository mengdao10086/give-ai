.class final Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeIgnoreElement.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IgnoreMaybeObserver"
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

.field upstream:Lio/reactivex/disposables/Disposable;


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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 81
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 69
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@6
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 63
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@6
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@9
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 49
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 51
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 57
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 58
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElement$IgnoreMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@6
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@9
    return-void
.end method
