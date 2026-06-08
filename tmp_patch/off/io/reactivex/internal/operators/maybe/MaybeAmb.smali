.class public final Lio/reactivex/internal/operators/maybe/MaybeAmb;
.super Lio/reactivex/Maybe;
.source "MaybeAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final sources:[Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/MaybeSource;Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)V"
        }
    .end annotation

    #@0
    .line 33
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sources:[Lio/reactivex/MaybeSource;

    #@5
    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sourcesIterable:Ljava/lang/Iterable;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sources:[Lio/reactivex/MaybeSource;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_43

    #@5
    const/16 v0, 0x8

    #@7
    new-array v0, v0, [Lio/reactivex/MaybeSource;

    #@9
    .line 46
    :try_start_9
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sourcesIterable:Ljava/lang/Iterable;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    move v3, v1

    #@10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_44

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lio/reactivex/MaybeSource;

    #@1c
    if-nez v4, :cond_29

    #@1e
    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    #@20
    const-string v1, "One of the sources is null"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@25
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    #@28
    return-void

    #@29
    .line 51
    :cond_29
    array-length v5, v0

    #@2a
    if-ne v3, v5, :cond_35

    #@2c
    shr-int/lit8 v5, v3, 0x2

    #@2e
    add-int/2addr v5, v3

    #@2f
    .line 52
    new-array v5, v5, [Lio/reactivex/MaybeSource;

    #@31
    .line 53
    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    move-object v0, v5

    #@35
    :cond_35
    add-int/lit8 v5, v3, 0x1

    #@37
    .line 56
    aput-object v4, v0, v3
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_3b

    #@39
    move v3, v5

    #@3a
    goto :goto_10

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    .line 59
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3f
    .line 60
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    #@42
    return-void

    #@43
    .line 64
    :cond_43
    array-length v3, v0

    #@44
    .line 67
    :cond_44
    new-instance v2, Lio/reactivex/disposables/CompositeDisposable;

    #@46
    invoke-direct {v2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    #@49
    .line 68
    invoke-interface {p1, v2}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@4c
    .line 70
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@4e
    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@51
    move v5, v1

    #@52
    :goto_52
    if-ge v5, v3, :cond_83

    #@54
    .line 73
    aget-object v6, v0, v5

    #@56
    .line 74
    invoke-virtual {v2}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    #@59
    move-result v7

    #@5a
    if-eqz v7, :cond_5d

    #@5c
    return-void

    #@5d
    :cond_5d
    if-nez v6, :cond_78

    #@5f
    .line 79
    invoke-virtual {v2}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@62
    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    #@64
    const-string v2, "One of the MaybeSources is null"

    #@66
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@69
    const/4 v2, 0x1

    #@6a
    .line 81
    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@6d
    move-result v1

    #@6e
    if-eqz v1, :cond_74

    #@70
    .line 82
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    #@73
    goto :goto_77

    #@74
    .line 84
    :cond_74
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@77
    :goto_77
    return-void

    #@78
    .line 89
    :cond_78
    new-instance v7, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;

    #@7a
    invoke-direct {v7, p1, v2, v4}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@7d
    invoke-interface {v6, v7}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    #@80
    add-int/lit8 v5, v5, 0x1

    #@82
    goto :goto_52

    #@83
    :cond_83
    if-nez v3, :cond_88

    #@85
    .line 93
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    #@88
    :cond_88
    return-void
.end method
