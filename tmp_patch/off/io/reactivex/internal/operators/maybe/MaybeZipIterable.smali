.class public final Lio/reactivex/internal/operators/maybe/MaybeZipIterable;
.super Lio/reactivex/Maybe;
.source "MaybeZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
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
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    #@0
    .line 31
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->sources:Ljava/lang/Iterable;

    #@5
    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Lio/reactivex/MaybeSource;

    #@4
    .line 43
    :try_start_4
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->sources:Ljava/lang/Iterable;

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
    check-cast v4, Lio/reactivex/MaybeSource;

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
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

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
    check-cast v0, [Lio/reactivex/MaybeSource;

    #@31
    :cond_31
    add-int/lit8 v5, v3, 0x1

    #@33
    .line 51
    aput-object v4, v0, v3
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_70

    #@35
    move v3, v5

    #@36
    goto :goto_c

    #@37
    :cond_37
    if-nez v3, :cond_3d

    #@39
    .line 60
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/MaybeObserver;)V

    #@3c
    return-void

    #@3d
    :cond_3d
    const/4 v1, 0x1

    #@3e
    if-ne v3, v1, :cond_50

    #@40
    .line 65
    aget-object v0, v0, v2

    #@42
    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;

    #@44
    new-instance v2, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;

    #@46
    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/maybe/MaybeZipIterable;)V

    #@49
    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V

    #@4c
    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    #@4f
    return-void

    #@50
    .line 69
    :cond_50
    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    #@52
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    #@54
    invoke-direct {v1, p1, v3, v4}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;-><init>(Lio/reactivex/MaybeObserver;ILio/reactivex/functions/Function;)V

    #@57
    .line 71
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@5a
    :goto_5a
    if-ge v2, v3, :cond_6f

    #@5c
    .line 74
    invoke-virtual {v1}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->isDisposed()Z

    #@5f
    move-result p1

    #@60
    if-eqz p1, :cond_63

    #@62
    return-void

    #@63
    .line 78
    :cond_63
    aget-object p1, v0, v2

    #@65
    iget-object v4, v1, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    #@67
    aget-object v4, v4, v2

    #@69
    invoke-interface {p1, v4}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    #@6c
    add-int/lit8 v2, v2, 0x1

    #@6e
    goto :goto_5a

    #@6f
    :cond_6f
    return-void

    #@70
    :catchall_70
    move-exception v0

    #@71
    .line 54
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@74
    .line 55
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    #@77
    return-void
.end method
