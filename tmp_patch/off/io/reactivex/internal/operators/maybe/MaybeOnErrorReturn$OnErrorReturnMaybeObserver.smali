.class final Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeOnErrorReturn.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnErrorReturnMaybeObserver"
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

.field final valueSupplier:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    #@0
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    .line 53
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->valueSupplier:Lio/reactivex/functions/Function;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@2
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7

    #@0
    .line 85
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->valueSupplier:Lio/reactivex/functions/Function;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    const-string v1, "The valueSupplier returned a null value"

    #@8
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object p1
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_12

    #@c
    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@e
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@11
    return-void

    #@12
    :catchall_12
    move-exception v0

    #@13
    .line 87
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@16
    .line 88
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@18
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    #@1a
    const/4 v3, 0x2

    #@1b
    new-array v3, v3, [Ljava/lang/Throwable;

    #@1d
    const/4 v4, 0x0

    #@1e
    aput-object p1, v3, v4

    #@20
    const/4 p1, 0x1

    #@21
    aput-object v0, v3, p1

    #@23
    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@26
    invoke-interface {v1, v2}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@29
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 71
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

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
    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@5
    return-void
.end method
