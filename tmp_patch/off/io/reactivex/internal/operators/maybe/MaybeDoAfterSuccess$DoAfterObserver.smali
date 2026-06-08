.class final Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;
.super Ljava/lang/Object;
.source "MaybeDoAfterSuccess.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoAfterObserver"
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

.field final onAfterSuccess:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    .line 53
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->onAfterSuccess:Lio/reactivex/functions/Consumer;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@2
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 61
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->downstream:Lio/reactivex/MaybeObserver;

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
    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@5
    .line 70
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver;->onAfterSuccess:Lio/reactivex/functions/Consumer;

    #@7
    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    #@a
    goto :goto_12

    #@b
    :catchall_b
    move-exception p1

    #@c
    .line 72
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@f
    .line 74
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@12
    :goto_12
    return-void
.end method
