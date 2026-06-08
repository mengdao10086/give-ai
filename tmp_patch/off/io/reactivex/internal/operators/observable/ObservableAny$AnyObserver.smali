.class final Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;
.super Ljava/lang/Object;
.source "ObservableAny.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAny;
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

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
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
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 91
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    #@2
    if-nez v0, :cond_16

    #@4
    const/4 v0, 0x1

    #@5
    .line 92
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    #@7
    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@11
    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    #@13
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@16
    :cond_16
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 80
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 81
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 85
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    #@b
    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    #@d
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

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
    .line 58
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 63
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@a
    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_24

    #@b
    if-eqz p1, :cond_23

    #@d
    const/4 p1, 0x1

    #@e
    .line 71
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    #@10
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@12
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@15
    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    #@17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object p1

    #@1b
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@1e
    .line 74
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    #@20
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    #@23
    :cond_23
    return-void

    #@24
    :catchall_24
    move-exception p1

    #@25
    .line 65
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@28
    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2a
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@2d
    .line 67
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->onError(Ljava/lang/Throwable;)V

    #@30
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 52
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
