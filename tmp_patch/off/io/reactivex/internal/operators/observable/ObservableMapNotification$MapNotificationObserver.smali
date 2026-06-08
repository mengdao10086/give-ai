.class final Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;
.super Ljava/lang/Object;
.source "ObservableMapNotification.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMapNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapNotificationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final onCompleteSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final onErrorMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final onNextMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->onNextMapper:Lio/reactivex/functions/Function;

    #@7
    .line 62
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->onErrorMapper:Lio/reactivex/functions/Function;

    #@9
    .line 63
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    #@b
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 120
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    const-string v1, "The onComplete ObservableSource returned is null"

    #@8
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lio/reactivex/ObservableSource;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_19

    #@e
    .line 127
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@10
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@13
    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@15
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    .line 122
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1d
    .line 123
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@1f
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@22
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7

    #@0
    .line 104
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->onErrorMapper:Lio/reactivex/functions/Function;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    const-string v1, "The onError ObservableSource returned is null"

    #@8
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lio/reactivex/ObservableSource;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_19

    #@e
    .line 111
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@10
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@13
    .line 112
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@15
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    #@18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    .line 106
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1d
    .line 107
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@1f
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    #@21
    const/4 v3, 0x2

    #@22
    new-array v3, v3, [Ljava/lang/Throwable;

    #@24
    const/4 v4, 0x0

    #@25
    aput-object p1, v3, v4

    #@27
    const/4 p1, 0x1

    #@28
    aput-object v0, v3, p1

    #@2a
    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@2d
    invoke-interface {v1, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@30
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 89
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->onNextMapper:Lio/reactivex/functions/Function;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    const-string v0, "The onNext ObservableSource returned is null"

    #@8
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Lio/reactivex/ObservableSource;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_14

    #@e
    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@10
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@13
    return-void

    #@14
    :catchall_14
    move-exception p1

    #@15
    .line 91
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@18
    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@1a
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@1d
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 70
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
