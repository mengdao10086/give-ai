.class final Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;
.super Ljava/lang/Object;
.source "MaybeToSingle.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeToSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToSingleMaybeSubscriber"
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
.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;TT;)V"
        }
    .end annotation

    #@0
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 57
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->defaultValue:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 63
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 4

    #@0
    .line 94
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->defaultValue:Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 96
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@a
    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@d
    goto :goto_1a

    #@e
    .line 98
    :cond_e
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@10
    new-instance v1, Ljava/util/NoSuchElementException;

    #@12
    const-string v2, "The MaybeSource is empty"

    #@14
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@17
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@1a
    :goto_1a
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 88
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@6
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@9
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 74
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 82
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;->downstream:Lio/reactivex/SingleObserver;

    #@6
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@9
    return-void
.end method
