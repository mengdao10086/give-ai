.class final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableTimeout.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutFallbackObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6833286fc4dbe315L


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field fallback:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicLong;

.field final itemTimeoutIndicator:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
        }
    .end annotation
.end field

.field final task:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/ObservableSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    #@0
    .line 203
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 204
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 205
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    #@7
    .line 206
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    #@9
    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    #@c
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@e
    .line 207
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    #@10
    .line 208
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@12
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@15
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    #@17
    .line 209
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@19
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@1c
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 309
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@5
    .line 310
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@8
    .line 311
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@a
    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    #@d
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 316
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->get()Ljava/lang/Object;

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
    .registers 6

    #@0
    .line 275
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    const-wide v1, 0x7fffffffffffffffL

    #@7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    #@a
    move-result-wide v3

    #@b
    cmp-long v0, v3, v1

    #@d
    if-eqz v0, :cond_1e

    #@f
    .line 276
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@11
    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    #@14
    .line 278
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    #@16
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@19
    .line 280
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@1b
    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    #@1e
    :cond_1e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7

    #@0
    .line 262
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    const-wide v1, 0x7fffffffffffffffL

    #@7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    #@a
    move-result-wide v3

    #@b
    cmp-long v0, v3, v1

    #@d
    if-eqz v0, :cond_1f

    #@f
    .line 263
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@11
    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    #@14
    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    #@16
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@19
    .line 267
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@1b
    invoke-virtual {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    #@1e
    goto :goto_22

    #@1f
    .line 269
    :cond_1f
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@22
    :goto_22
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 219
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v0

    #@6
    const-wide v2, 0x7fffffffffffffffL

    #@b
    cmp-long v4, v0, v2

    #@d
    if-eqz v4, :cond_65

    #@f
    .line 220
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    #@11
    const-wide/16 v5, 0x1

    #@13
    add-long/2addr v5, v0

    #@14
    invoke-virtual {v4, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_1b

    #@1a
    goto :goto_65

    #@1b
    .line 224
    :cond_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@1d
    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->get()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@23
    if-eqz v0, :cond_28

    #@25
    .line 226
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@28
    .line 229
    :cond_28
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    #@2a
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@2d
    .line 234
    :try_start_2d
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    #@2f
    .line 235
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object p1

    #@33
    const-string v0, "The itemTimeoutIndicator returned a null ObservableSource."

    #@35
    .line 234
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object p1

    #@39
    check-cast p1, Lio/reactivex/ObservableSource;
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_4c

    #@3b
    .line 245
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;

    #@3d
    invoke-direct {v0, v5, v6, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V

    #@40
    .line 246
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@42
    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4b

    #@48
    .line 247
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@4b
    :cond_4b
    return-void

    #@4c
    :catchall_4c
    move-exception p1

    #@4d
    .line 238
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@50
    .line 239
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@58
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5b
    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    #@5d
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    #@60
    .line 241
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    #@62
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@65
    :cond_65
    :goto_65
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 214
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@5
    return-void
.end method

.method public onTimeout(J)V
    .registers 6

    #@0
    .line 286
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    const-wide v1, 0x7fffffffffffffffL

    #@7
    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_21

    #@d
    .line 287
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@12
    .line 289
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    #@14
    const/4 p2, 0x0

    #@15
    .line 290
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    #@17
    .line 292
    new-instance p2, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;

    #@19
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    #@1b
    invoke-direct {p2, v0, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicReference;)V

    #@1e
    invoke-interface {p1, p2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@21
    :cond_21
    return-void
.end method

.method public onTimeoutError(JLjava/lang/Throwable;)V
    .registers 7

    #@0
    .line 298
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    const-wide v1, 0x7fffffffffffffffL

    #@7
    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_16

    #@d
    .line 299
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@10
    .line 301
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    #@12
    invoke-interface {p1, p3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@15
    goto :goto_19

    #@16
    .line 303
    :cond_16
    invoke-static {p3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@19
    :goto_19
    return-void
.end method

.method startFirstTimeout(Lio/reactivex/ObservableSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "*>;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_14

    #@2
    .line 253
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;

    #@4
    const-wide/16 v1, 0x0

    #@6
    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V

    #@9
    .line 254
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    #@b
    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_14

    #@11
    .line 255
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@14
    :cond_14
    return-void
.end method
