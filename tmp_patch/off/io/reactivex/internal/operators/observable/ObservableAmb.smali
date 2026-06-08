.class public final Lio/reactivex/internal/operators/observable/ObservableAmb;
.super Lio/reactivex/Observable;
.source "ObservableAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final sources:[Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/ObservableSource;Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;)V"
        }
    .end annotation

    #@0
    .line 28
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb;->sources:[Lio/reactivex/ObservableSource;

    #@5
    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb;->sourcesIterable:Ljava/lang/Iterable;

    #@7
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb;->sources:[Lio/reactivex/ObservableSource;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_43

    #@5
    const/16 v0, 0x8

    #@7
    new-array v0, v0, [Lio/reactivex/ObservableSource;

    #@9
    .line 41
    :try_start_9
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb;->sourcesIterable:Ljava/lang/Iterable;

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
    check-cast v4, Lio/reactivex/ObservableSource;

    #@1c
    if-nez v4, :cond_29

    #@1e
    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    #@20
    const-string v1, "One of the sources is null"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@25
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@28
    return-void

    #@29
    .line 46
    :cond_29
    array-length v5, v0

    #@2a
    if-ne v3, v5, :cond_35

    #@2c
    shr-int/lit8 v5, v3, 0x2

    #@2e
    add-int/2addr v5, v3

    #@2f
    .line 47
    new-array v5, v5, [Lio/reactivex/ObservableSource;

    #@31
    .line 48
    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    move-object v0, v5

    #@35
    :cond_35
    add-int/lit8 v5, v3, 0x1

    #@37
    .line 51
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
    .line 54
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3f
    .line 55
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@42
    return-void

    #@43
    .line 59
    :cond_43
    array-length v3, v0

    #@44
    :cond_44
    if-nez v3, :cond_4a

    #@46
    .line 63
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    #@49
    return-void

    #@4a
    :cond_4a
    const/4 v2, 0x1

    #@4b
    if-ne v3, v2, :cond_53

    #@4d
    .line 67
    aget-object v0, v0, v1

    #@4f
    invoke-interface {v0, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@52
    return-void

    #@53
    .line 71
    :cond_53
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    #@55
    invoke-direct {v1, p1, v3}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;-><init>(Lio/reactivex/Observer;I)V

    #@58
    .line 72
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->subscribe([Lio/reactivex/ObservableSource;)V

    #@5b
    return-void
.end method
