.class public final Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorIterable;
.super Lio/reactivex/Completable;
.source "CompletableMergeDelayErrorIterable.java"


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 30
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorIterable;->sources:Ljava/lang/Iterable;

    #@5
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 8

    #@0
    .line 36
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    #@2
    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    #@5
    .line 38
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@8
    .line 43
    :try_start_8
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorIterable;->sources:Ljava/lang/Iterable;

    #@a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    const-string v2, "The source iterator returned is null"

    #@10
    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/Iterator;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_78

    #@16
    .line 50
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@18
    const/4 v3, 0x1

    #@19
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@1c
    .line 52
    new-instance v3, Lio/reactivex/internal/util/AtomicThrowable;

    #@1e
    invoke-direct {v3}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    #@21
    .line 55
    :goto_21
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_28

    #@27
    return-void

    #@28
    .line 61
    :cond_28
    :try_start_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v4
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_5d

    #@2c
    if-nez v4, :cond_2f

    #@2e
    goto :goto_64

    #@2f
    .line 72
    :cond_2f
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_36

    #@35
    return-void

    #@36
    .line 79
    :cond_36
    :try_start_36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v4

    #@3a
    const-string v5, "The iterator returned a null CompletableSource"

    #@3c
    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Lio/reactivex/CompletableSource;
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_55

    #@42
    .line 86
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_49

    #@48
    return-void

    #@49
    .line 90
    :cond_49
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@4c
    .line 92
    new-instance v5, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray$MergeInnerCompletableObserver;

    #@4e
    invoke-direct {v5, p1, v0, v3, v2}, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray$MergeInnerCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/internal/util/AtomicThrowable;Ljava/util/concurrent/atomic/AtomicInteger;)V

    #@51
    invoke-interface {v4, v5}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@54
    goto :goto_21

    #@55
    :catchall_55
    move-exception v0

    #@56
    .line 81
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@59
    .line 82
    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@5c
    goto :goto_64

    #@5d
    :catchall_5d
    move-exception v0

    #@5e
    .line 63
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@61
    .line 64
    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@64
    .line 95
    :goto_64
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@67
    move-result v0

    #@68
    if-nez v0, :cond_77

    #@6a
    .line 96
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@6d
    move-result-object v0

    #@6e
    if-nez v0, :cond_74

    #@70
    .line 98
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@73
    goto :goto_77

    #@74
    .line 100
    :cond_74
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@77
    :cond_77
    :goto_77
    return-void

    #@78
    :catchall_78
    move-exception v0

    #@79
    .line 45
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@7c
    .line 46
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@7f
    return-void
.end method
