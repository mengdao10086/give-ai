.class final Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeContains.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeContains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainsMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 59
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->value:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 65
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 95
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 89
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    #@6
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@9
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 77
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 83
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@4
    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    #@6
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver;->value:Ljava/lang/Object;

    #@8
    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result p1

    #@c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object p1

    #@10
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@13
    return-void
.end method
