.class public final Lio/reactivex/internal/operators/single/SingleZipIterable;
.super Lio/reactivex/Single;
.source "SingleZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleZipIterable$SingletonArrayFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    #@0
    .line 31
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->sources:Ljava/lang/Iterable;

    #@5
    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->zipper:Lio/reactivex/functions/Function;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Lio/reactivex/SingleSource;

    #@4
    .line 43
    :try_start_4
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->sources:Ljava/lang/Iterable;

    #@6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    move v3, v2

    #@c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_37

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Lio/reactivex/SingleSource;

    #@18
    if-nez v4, :cond_25

    #@1a
    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string v1, "One of the sources is null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    #@24
    return-void

    #@25
    .line 48
    :cond_25
    array-length v5, v0

    #@26
    if-ne v3, v5, :cond_31

    #@28
    shr-int/lit8 v5, v3, 0x2

    #@2a
    add-int/2addr v5, v3

    #@2b
    .line 49
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, [Lio/reactivex/SingleSource;

    #@31
    :cond_31
    add-int/lit8 v5, v3, 0x1

    #@33
    .line 51
    aput-object v4, v0, v3
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_75

    #@35
    move v3, v5

    #@36
    goto :goto_c

    #@37
    :cond_37
    if-nez v3, :cond_42

    #@39
    .line 60
    new-instance v0, Ljava/util/NoSuchElementException;

    #@3b
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@3e
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    #@41
    return-void

    #@42
    :cond_42
    const/4 v1, 0x1

    #@43
    if-ne v3, v1, :cond_55

    #@45
    .line 65
    aget-object v0, v0, v2

    #@47
    new-instance v1, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;

    #@49
    new-instance v2, Lio/reactivex/internal/operators/single/SingleZipIterable$SingletonArrayFunc;

    #@4b
    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/single/SingleZipIterable$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/single/SingleZipIterable;)V

    #@4e
    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V

    #@51
    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    #@54
    return-void

    #@55
    .line 69
    :cond_55
    new-instance v1, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    #@57
    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->zipper:Lio/reactivex/functions/Function;

    #@59
    invoke-direct {v1, p1, v3, v4}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;-><init>(Lio/reactivex/SingleObserver;ILio/reactivex/functions/Function;)V

    #@5c
    .line 71
    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@5f
    :goto_5f
    if-ge v2, v3, :cond_74

    #@61
    .line 74
    invoke-virtual {v1}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->isDisposed()Z

    #@64
    move-result p1

    #@65
    if-eqz p1, :cond_68

    #@67
    return-void

    #@68
    .line 78
    :cond_68
    aget-object p1, v0, v2

    #@6a
    iget-object v4, v1, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    #@6c
    aget-object v4, v4, v2

    #@6e
    invoke-interface {p1, v4}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    #@71
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_5f

    #@74
    :cond_74
    return-void

    #@75
    :catchall_75
    move-exception v0

    #@76
    .line 54
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@79
    .line 55
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    #@7c
    return-void
.end method
