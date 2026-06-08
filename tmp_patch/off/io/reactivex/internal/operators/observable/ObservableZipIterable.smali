.class public final Lio/reactivex/internal/operators/observable/ObservableZipIterable;
.super Lio/reactivex/Observable;
.source "ObservableZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final other:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Ljava/lang/Iterable;Lio/reactivex/functions/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    #@0
    .line 33
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->source:Lio/reactivex/Observable;

    #@5
    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->other:Ljava/lang/Iterable;

    #@7
    .line 36
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->zipper:Lio/reactivex/functions/BiFunction;

    #@9
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TV;>;)V"
        }
    .end annotation

    #@0
    .line 44
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->other:Ljava/lang/Iterable;

    #@2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    const-string v1, "The iterator returned by other is null"

    #@8
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Iterator;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_2d

    #@e
    .line 54
    :try_start_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_25

    #@12
    if-nez v1, :cond_18

    #@14
    .line 62
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    #@17
    return-void

    #@18
    .line 66
    :cond_18
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->source:Lio/reactivex/Observable;

    #@1a
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;

    #@1c
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->zipper:Lio/reactivex/functions/BiFunction;

    #@1e
    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;-><init>(Lio/reactivex/Observer;Ljava/util/Iterator;Lio/reactivex/functions/BiFunction;)V

    #@21
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    #@24
    return-void

    #@25
    :catchall_25
    move-exception v0

    #@26
    .line 56
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@29
    .line 57
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@2c
    return-void

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    .line 46
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@31
    .line 47
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@34
    return-void
.end method
