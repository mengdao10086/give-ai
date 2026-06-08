.class final Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;
.super Ljava/lang/Object;
.source "SingleDetach.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachSingleObserver"
.end annotation

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
.field downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 51
    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    #@3
    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@8
    .line 53
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 82
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    #@6
    if-eqz v0, :cond_e

    #@8
    const/4 v1, 0x0

    #@9
    .line 85
    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    #@b
    .line 86
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@e
    :cond_e
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 66
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
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
    .line 72
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    #@6
    if-eqz v0, :cond_e

    #@8
    const/4 v1, 0x0

    #@9
    .line 75
    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    #@b
    .line 76
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@e
    :cond_e
    return-void
.end method
