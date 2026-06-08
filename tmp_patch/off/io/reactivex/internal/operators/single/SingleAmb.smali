.class public final Lio/reactivex/internal/operators/single/SingleAmb;
.super Lio/reactivex/Single;
.source "SingleAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final sources:[Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/SingleSource;Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)V"
        }
    .end annotation

    #@0
    .line 28
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sources:[Lio/reactivex/SingleSource;

    #@5
    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sourcesIterable:Ljava/lang/Iterable;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sources:[Lio/reactivex/SingleSource;

    #@2
    const-string v1, "One of the sources is null"

    #@4
    const/4 v2, 0x0

    #@5
    if-nez v0, :cond_43

    #@7
    const/16 v0, 0x8

    #@9
    new-array v0, v0, [Lio/reactivex/SingleSource;

    #@b
    .line 41
    :try_start_b
    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sourcesIterable:Ljava/lang/Iterable;

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
    check-cast v5, Lio/reactivex/SingleSource;

    #@1e
    if-nez v5, :cond_29

    #@20
    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    #@22
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@25
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    #@28
    return-void

    #@29
    .line 46
    :cond_29
    array-length v6, v0

    #@2a
    if-ne v4, v6, :cond_35

    #@2c
    shr-int/lit8 v6, v4, 0x2

    #@2e
    add-int/2addr v6, v4

    #@2f
    .line 47
    new-array v6, v6, [Lio/reactivex/SingleSource;

    #@31
    .line 48
    invoke-static {v0, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    move-object v0, v6

    #@35
    :cond_35
    add-int/lit8 v6, v4, 0x1

    #@37
    .line 51
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
    .line 54
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3f
    .line 55
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    #@42
    return-void

    #@43
    .line 59
    :cond_43
    array-length v4, v0

    #@44
    .line 62
    :cond_44
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@46
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@49
    .line 63
    new-instance v5, Lio/reactivex/disposables/CompositeDisposable;

    #@4b
    invoke-direct {v5}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    #@4e
    .line 65
    invoke-interface {p1, v5}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@51
    move v6, v2

    #@52
    :goto_52
    if-ge v6, v4, :cond_81

    #@54
    .line 68
    aget-object v7, v0, v6

    #@56
    .line 69
    invoke-virtual {v5}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

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
    .line 74
    invoke-virtual {v5}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@62
    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    #@64
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@67
    const/4 v1, 0x1

    #@68
    .line 76
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_72

    #@6e
    .line 77
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@71
    goto :goto_75

    #@72
    .line 79
    :cond_72
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@75
    :goto_75
    return-void

    #@76
    .line 84
    :cond_76
    new-instance v8, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;

    #@78
    invoke-direct {v8, p1, v5, v3}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@7b
    invoke-interface {v7, v8}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    #@7e
    add-int/lit8 v6, v6, 0x1

    #@80
    goto :goto_52

    #@81
    :cond_81
    return-void
.end method
