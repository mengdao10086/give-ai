.class public final Lio/reactivex/internal/operators/completable/CompletableAmb;
.super Lio/reactivex/Completable;
.source "CompletableAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;
    }
.end annotation


# instance fields
.field private final sources:[Lio/reactivex/CompletableSource;

.field private final sourcesIterable:Ljava/lang/Iterable;
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
.method public constructor <init>([Lio/reactivex/CompletableSource;Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/CompletableSource;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 28
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sources:[Lio/reactivex/CompletableSource;

    #@5
    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sourcesIterable:Ljava/lang/Iterable;

    #@7
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 11

    #@0
    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sources:[Lio/reactivex/CompletableSource;

    #@2
    const-string v1, "One of the sources is null"

    #@4
    const/4 v2, 0x0

    #@5
    if-nez v0, :cond_43

    #@7
    const/16 v0, 0x8

    #@9
    new-array v0, v0, [Lio/reactivex/CompletableSource;

    #@b
    .line 40
    :try_start_b
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sourcesIterable:Ljava/lang/Iterable;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    move v4, v2

    #@12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_44

    #@18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    check-cast v5, Lio/reactivex/CompletableSource;

    #@1e
    if-nez v5, :cond_29

    #@20
    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    #@22
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@25
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    #@28
    return-void

    #@29
    .line 45
    :cond_29
    array-length v6, v0

    #@2a
    if-ne v4, v6, :cond_35

    #@2c
    shr-int/lit8 v6, v4, 0x2

    #@2e
    add-int/2addr v6, v4

    #@2f
    .line 46
    new-array v6, v6, [Lio/reactivex/CompletableSource;

    #@31
    .line 47
    invoke-static {v0, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    move-object v0, v6

    #@35
    :cond_35
    add-int/lit8 v6, v4, 0x1

    #@37
    .line 50
    aput-object v5, v0, v4
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_3b

    #@39
    move v4, v6

    #@3a
    goto :goto_12

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    .line 53
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3f
    .line 54
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    #@42
    return-void

    #@43
    .line 58
    :cond_43
    array-length v4, v0

    #@44
    .line 61
    :cond_44
    new-instance v3, Lio/reactivex/disposables/CompositeDisposable;

    #@46
    invoke-direct {v3}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    #@49
    .line 62
    invoke-interface {p1, v3}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@4c
    .line 64
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@4e
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@51
    move v6, v2

    #@52
    :goto_52
    if-ge v6, v4, :cond_81

    #@54
    .line 67
    aget-object v7, v0, v6

    #@56
    .line 68
    invoke-virtual {v3}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    #@59
    move-result v8

    #@5a
    if-eqz v8, :cond_5d

    #@5c
    return-void

    #@5d
    :cond_5d
    if-nez v7, :cond_76

    #@5f
    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    #@61
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@64
    const/4 v1, 0x1

    #@65
    .line 73
    invoke-virtual {v5, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_72

    #@6b
    .line 74
    invoke-virtual {v3}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@6e
    .line 75
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@71
    goto :goto_75

    #@72
    .line 77
    :cond_72
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@75
    :goto_75
    return-void

    #@76
    .line 83
    :cond_76
    new-instance v8, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;

    #@78
    invoke-direct {v8, v5, v3, p1}, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/CompletableObserver;)V

    #@7b
    invoke-interface {v7, v8}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@7e
    add-int/lit8 v6, v6, 0x1

    #@80
    goto :goto_52

    #@81
    :cond_81
    if-nez v4, :cond_86

    #@83
    .line 87
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@86
    :cond_86
    return-void
.end method
