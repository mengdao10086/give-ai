.class final Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;
.super Ljava/lang/Object;
.source "ObservableAll.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AllObserver"
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 44
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

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
    .line 89
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 92
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->done:Z

    #@8
    .line 93
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->downstream:Lio/reactivex/Observer;

    #@a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@11
    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->downstream:Lio/reactivex/Observer;

    #@13
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@16
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 79
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 80
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 83
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->done:Z

    #@b
    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->downstream:Lio/reactivex/Observer;

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
    .line 57
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 62
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->predicate:Lio/reactivex/functions/Predicate;

    #@7
    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    #@a
    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_25

    #@b
    if-nez p1, :cond_24

    #@d
    const/4 p1, 0x1

    #@e
    .line 70
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->done:Z

    #@10
    .line 71
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@12
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@15
    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->downstream:Lio/reactivex/Observer;

    #@17
    const/4 v0, 0x0

    #@18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@1f
    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->downstream:Lio/reactivex/Observer;

    #@21
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    #@24
    :cond_24
    return-void

    #@25
    :catchall_25
    move-exception p1

    #@26
    .line 64
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@29
    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2b
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@2e
    .line 66
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->onError(Ljava/lang/Throwable;)V

    #@31
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 51
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAll$AllObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
