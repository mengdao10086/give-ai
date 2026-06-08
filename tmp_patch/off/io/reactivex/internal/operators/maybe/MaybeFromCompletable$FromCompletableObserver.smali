.class final Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;
.super Ljava/lang/Object;
.source "MaybeFromCompletable.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFromCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromCompletableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/CompletableObserver;",
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 56
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 75
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@6
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 81
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@6
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@9
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 69
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
