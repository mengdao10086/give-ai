.class final Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeFilterSingle.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFilterSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterMaybeObserver"
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
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    .line 53
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    #@0
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    .line 59
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@6
    .line 60
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

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
    .line 82
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->predicate:Lio/reactivex/functions/Predicate;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@5
    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_14

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@a
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@d
    goto :goto_13

    #@e
    .line 92
    :cond_e
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@10
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@13
    :goto_13
    return-void

    #@14
    :catchall_14
    move-exception p1

    #@15
    .line 84
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@18
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@1a
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@1d
    return-void
.end method
