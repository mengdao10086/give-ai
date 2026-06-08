.class final Lio/reactivex/internal/operators/mixed/ScalarXMapZHelper;
.super Ljava/lang/Object;
.source "ScalarXMapZHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method static tryAsCompletable(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/CompletableObserver;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;",
            "Lio/reactivex/CompletableObserver;",
            ")Z"
        }
    .end annotation

    #@0
    .line 53
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    #@2
    if-eqz v0, :cond_2d

    #@4
    .line 55
    check-cast p0, Ljava/util/concurrent/Callable;

    #@6
    const/4 v0, 0x1

    #@7
    .line 58
    :try_start_7
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    if-eqz p0, :cond_1a

    #@d
    .line 60
    invoke-interface {p1, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p0

    #@11
    const-string p1, "The mapper returned a null CompletableSource"

    #@13
    invoke-static {p0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object p0

    #@17
    check-cast p0, Lio/reactivex/CompletableSource;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_25

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    :goto_1b
    if-nez p0, :cond_21

    #@1d
    .line 69
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/CompletableObserver;)V

    #@20
    goto :goto_24

    #@21
    .line 71
    :cond_21
    invoke-interface {p0, p2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    #@24
    :goto_24
    return v0

    #@25
    :catchall_25
    move-exception p0

    #@26
    .line 63
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@29
    .line 64
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    #@2c
    return v0

    #@2d
    :cond_2d
    const/4 p0, 0x0

    #@2e
    return p0
.end method

.method static tryAsMaybe(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/Observer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Lio/reactivex/Observer<",
            "-TR;>;)Z"
        }
    .end annotation

    #@0
    .line 92
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    #@2
    if-eqz v0, :cond_31

    #@4
    .line 94
    check-cast p0, Ljava/util/concurrent/Callable;

    #@6
    const/4 v0, 0x1

    #@7
    .line 97
    :try_start_7
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    if-eqz p0, :cond_1a

    #@d
    .line 99
    invoke-interface {p1, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p0

    #@11
    const-string p1, "The mapper returned a null MaybeSource"

    #@13
    invoke-static {p0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object p0

    #@17
    check-cast p0, Lio/reactivex/MaybeSource;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_29

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    :goto_1b
    if-nez p0, :cond_21

    #@1d
    .line 108
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    #@20
    goto :goto_28

    #@21
    .line 110
    :cond_21
    invoke-static {p2}, Lio/reactivex/internal/operators/maybe/MaybeToObservable;->create(Lio/reactivex/Observer;)Lio/reactivex/MaybeObserver;

    #@24
    move-result-object p1

    #@25
    invoke-interface {p0, p1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    #@28
    :goto_28
    return v0

    #@29
    :catchall_29
    move-exception p0

    #@2a
    .line 102
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2d
    .line 103
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@30
    return v0

    #@31
    :cond_31
    const/4 p0, 0x0

    #@32
    return p0
.end method

.method static tryAsSingle(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/Observer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;",
            "Lio/reactivex/Observer<",
            "-TR;>;)Z"
        }
    .end annotation

    #@0
    .line 131
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    #@2
    if-eqz v0, :cond_31

    #@4
    .line 133
    check-cast p0, Ljava/util/concurrent/Callable;

    #@6
    const/4 v0, 0x1

    #@7
    .line 136
    :try_start_7
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    if-eqz p0, :cond_1a

    #@d
    .line 138
    invoke-interface {p1, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p0

    #@11
    const-string p1, "The mapper returned a null SingleSource"

    #@13
    invoke-static {p0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object p0

    #@17
    check-cast p0, Lio/reactivex/SingleSource;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_29

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    :goto_1b
    if-nez p0, :cond_21

    #@1d
    .line 147
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    #@20
    goto :goto_28

    #@21
    .line 149
    :cond_21
    invoke-static {p2}, Lio/reactivex/internal/operators/single/SingleToObservable;->create(Lio/reactivex/Observer;)Lio/reactivex/SingleObserver;

    #@24
    move-result-object p1

    #@25
    invoke-interface {p0, p1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    #@28
    :goto_28
    return v0

    #@29
    :catchall_29
    move-exception p0

    #@2a
    .line 141
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2d
    .line 142
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@30
    return v0

    #@31
    :cond_31
    const/4 p0, 0x0

    #@32
    return p0
.end method
