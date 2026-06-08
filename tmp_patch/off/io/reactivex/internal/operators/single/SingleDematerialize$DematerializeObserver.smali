.class final Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;
.super Ljava/lang/Object;
.source "SingleDematerialize.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDematerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DematerializeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "-TR;>;"
        }
    .end annotation
.end field

.field final selector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;",
            "Lio/reactivex/Notification<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;",
            "Lio/reactivex/Notification<",
            "TR;>;>;)V"
        }
    .end annotation

    #@0
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@5
    .line 59
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->selector:Lio/reactivex/functions/Function;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->downstream:Lio/reactivex/MaybeObserver;

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
    .line 85
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->selector:Lio/reactivex/functions/Function;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    const-string v0, "The selector returned a null Notification"

    #@8
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Lio/reactivex/Notification;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_34

    #@e
    .line 91
    invoke-virtual {p1}, Lio/reactivex/Notification;->isOnNext()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1e

    #@14
    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@16
    invoke-virtual {p1}, Lio/reactivex/Notification;->getValue()Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    #@1d
    goto :goto_33

    #@1e
    .line 93
    :cond_1e
    invoke-virtual {p1}, Lio/reactivex/Notification;->isOnComplete()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2a

    #@24
    .line 94
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@26
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@29
    goto :goto_33

    #@2a
    .line 96
    :cond_2a
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@2c
    invoke-virtual {p1}, Lio/reactivex/Notification;->getError()Ljava/lang/Throwable;

    #@2f
    move-result-object p1

    #@30
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@33
    :goto_33
    return-void

    #@34
    :catchall_34
    move-exception p1

    #@35
    .line 87
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@38
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver;->downstream:Lio/reactivex/MaybeObserver;

    #@3a
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@3d
    return-void
.end method
