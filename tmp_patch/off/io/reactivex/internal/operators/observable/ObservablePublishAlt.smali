.class public final Lio/reactivex/internal/operators/observable/ObservablePublishAlt;
.super Lio/reactivex/observables/ConnectableObservable;
.source "ObservablePublishAlt.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamObservableSource;
.implements Lio/reactivex/internal/disposables/ResettableConnectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;,
        Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observables/ConnectableObservable<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/HasUpstreamObservableSource<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/ResettableConnectable;"
    }
.end annotation


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 46
    invoke-direct {p0}, Lio/reactivex/observables/ConnectableObservable;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->source:Lio/reactivex/ObservableSource;

    #@5
    .line 48
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@a
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    return-void
.end method


# virtual methods
.method public connect(Lio/reactivex/functions/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 57
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    #@8
    if-eqz v0, :cond_10

    #@a
    .line 59
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->isDisposed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_21

    #@10
    .line 60
    :cond_10
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    #@12
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    #@17
    .line 61
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@19
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_20

    #@1f
    goto :goto_0

    #@20
    :cond_20
    move-object v0, v1

    #@21
    .line 67
    :cond_21
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@23
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@26
    move-result v1

    #@27
    const/4 v2, 0x0

    #@28
    if-nez v1, :cond_34

    #@2a
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c
    const/4 v3, 0x1

    #@2d
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_34

    #@33
    move v2, v3

    #@34
    .line 72
    :cond_34
    :try_start_34
    invoke-interface {p1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    #@37
    if-eqz v2, :cond_3e

    #@39
    .line 79
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->source:Lio/reactivex/ObservableSource;

    #@3b
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@3e
    :cond_3e
    return-void

    #@3f
    :catchall_3f
    move-exception p1

    #@40
    .line 74
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@43
    .line 75
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@46
    move-result-object p1

    #@47
    throw p1
.end method

.method public resetIf(Lio/reactivex/disposables/Disposable;)V
    .registers 4

    #@0
    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    check-cast p1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, p1, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8
    return-void
.end method

.method public source()Lio/reactivex/ObservableSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->source:Lio/reactivex/ObservableSource;

    #@2
    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 88
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    #@8
    if-nez v0, :cond_1b

    #@a
    .line 91
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    #@c
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    #@11
    .line 92
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@13
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1a

    #@19
    goto :goto_0

    #@1a
    :cond_1a
    move-object v0, v1

    #@1b
    .line 100
    :cond_1b
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@1d
    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;)V

    #@20
    .line 101
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@23
    .line 102
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->add(Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_33

    #@29
    .line 103
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;->isDisposed()Z

    #@2c
    move-result p1

    #@2d
    if-eqz p1, :cond_32

    #@2f
    .line 104
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->remove(Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;)V

    #@32
    :cond_32
    return-void

    #@33
    .line 109
    :cond_33
    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    #@35
    if-eqz v0, :cond_3b

    #@37
    .line 111
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@3a
    goto :goto_3e

    #@3b
    .line 113
    :cond_3b
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    #@3e
    :goto_3e
    return-void
.end method
