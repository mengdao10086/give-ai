.class final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableTimeout.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78db4ef70799ee01L


# instance fields
.field final idx:J

.field final parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V
    .registers 4

    #@0
    .line 329
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 330
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->idx:J

    #@5
    .line 331
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    #@0
    .line 369
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 374
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onComplete()V
    .registers 4

    #@0
    .line 361
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@6
    if-eq v0, v1, :cond_14

    #@8
    .line 362
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->lazySet(Ljava/lang/Object;)V

    #@d
    .line 363
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;

    #@f
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->idx:J

    #@11
    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;->onTimeout(J)V

    #@14
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 351
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@6
    if-eq v0, v1, :cond_15

    #@8
    .line 352
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->lazySet(Ljava/lang/Object;)V

    #@d
    .line 353
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;

    #@f
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->idx:J

    #@11
    invoke-interface {v0, v1, v2, p1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;->onTimeoutError(JLjava/lang/Throwable;)V

    #@14
    goto :goto_18

    #@15
    .line 355
    :cond_15
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@18
    :goto_18
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 341
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->get()Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lio/reactivex/disposables/Disposable;

    #@6
    .line 342
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    if-eq p1, v0, :cond_19

    #@a
    .line 343
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@d
    .line 344
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@f
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->lazySet(Ljava/lang/Object;)V

    #@12
    .line 345
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;

    #@14
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;->idx:J

    #@16
    invoke-interface {p1, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;->onTimeout(J)V

    #@19
    :cond_19
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    #@0
    .line 336
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@3
    return-void
.end method
