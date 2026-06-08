.class final Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;
.super Ljava/lang/Object;
.source "CompletableDetach.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachCompletableObserver"
.end annotation


# instance fields
.field downstream:Lio/reactivex/CompletableObserver;

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;)V
    .registers 2

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 50
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@3
    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@8
    .line 52
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 81
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@6
    if-eqz v0, :cond_e

    #@8
    const/4 v1, 0x0

    #@9
    .line 84
    iput-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@b
    .line 85
    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@e
    :cond_e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 71
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@6
    if-eqz v0, :cond_e

    #@8
    const/4 v1, 0x0

    #@9
    .line 74
    iput-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@b
    .line 75
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@e
    :cond_e
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 65
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
