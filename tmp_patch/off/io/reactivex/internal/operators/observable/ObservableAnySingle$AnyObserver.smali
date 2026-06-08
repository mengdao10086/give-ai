.class final Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;
.super Ljava/lang/Object;
.source "ObservableAnySingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAnySingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnyObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->downstream:Lio/reactivex/SingleObserver;

    #@5
    .line 54
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 99
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->done:Z

    #@2
    if-nez v0, :cond_11

    #@4
    const/4 v0, 0x1

    #@5
    .line 100
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->done:Z

    #@7
    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->downstream:Lio/reactivex/SingleObserver;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@11
    :cond_11
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 88
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 89
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 93
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->done:Z

    #@b
    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->downstream:Lio/reactivex/SingleObserver;

    #@d
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@10
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
    .line 67
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 72
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@a
    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1f

    #@b
    if-eqz p1, :cond_1e

    #@d
    const/4 p1, 0x1

    #@e
    .line 80
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->done:Z

    #@10
    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@12
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@15
    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->downstream:Lio/reactivex/SingleObserver;

    #@17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object p1

    #@1b
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@1e
    :cond_1e
    return-void

    #@1f
    :catchall_1f
    move-exception p1

    #@20
    .line 74
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@23
    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@25
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@28
    .line 76
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->onError(Ljava/lang/Throwable;)V

    #@2b
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 61
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver;->downstream:Lio/reactivex/SingleObserver;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
