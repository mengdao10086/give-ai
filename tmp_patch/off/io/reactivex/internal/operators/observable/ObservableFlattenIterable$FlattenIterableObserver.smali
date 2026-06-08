.class final Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;
.super Ljava/lang/Object;
.source "ObservableFlattenIterable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlattenIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlattenIterableObserver"
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
            "-TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    #@0
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->mapper:Lio/reactivex/functions/Function;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 145
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-ne v0, v1, :cond_7

    #@6
    return-void

    #@7
    .line 133
    :cond_7
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@9
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@b
    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->downstream:Lio/reactivex/Observer;

    #@d
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@10
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-ne v0, v1, :cond_a

    #@6
    .line 121
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@9
    return-void

    #@a
    .line 124
    :cond_a
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@c
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@e
    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->downstream:Lio/reactivex/Observer;

    #@10
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@13
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    if-ne v0, v1, :cond_7

    #@6
    return-void

    #@7
    .line 77
    :cond_7
    :try_start_7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->mapper:Lio/reactivex/functions/Function;

    #@9
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Ljava/lang/Iterable;

    #@f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object p1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_43

    #@13
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->downstream:Lio/reactivex/Observer;

    #@15
    .line 91
    :goto_15
    :try_start_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_36

    #@19
    if-eqz v1, :cond_35

    #@1b
    .line 103
    :try_start_1b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, "The iterator returned a null value"

    #@21
    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_29

    #@25
    .line 111
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@28
    goto :goto_15

    #@29
    :catchall_29
    move-exception p1

    #@2a
    .line 105
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2d
    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2f
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@32
    .line 107
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->onError(Ljava/lang/Throwable;)V

    #@35
    :cond_35
    return-void

    #@36
    :catchall_36
    move-exception p1

    #@37
    .line 93
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@3a
    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@3c
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@3f
    .line 95
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->onError(Ljava/lang/Throwable;)V

    #@42
    return-void

    #@43
    :catchall_43
    move-exception p1

    #@44
    .line 79
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@47
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@49
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@4c
    .line 81
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->onError(Ljava/lang/Throwable;)V

    #@4f
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 64
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
