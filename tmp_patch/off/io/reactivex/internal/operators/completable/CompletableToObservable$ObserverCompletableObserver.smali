.class final Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;
.super Lio/reactivex/internal/observers/BasicQueueDisposable;
.source "CompletableToObservable.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableToObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserverCompletableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/observers/BasicQueueDisposable<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/reactivex/CompletableObserver;"
    }
.end annotation


# instance fields
.field final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "*>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 46
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicQueueDisposable;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->observer:Lio/reactivex/Observer;

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    #@0
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->observer:Lio/reactivex/Observer;

    #@2
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->observer:Lio/reactivex/Observer;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 64
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->observer:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 39
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;->poll()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public poll()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    #@0
    and-int/lit8 p1, p1, 0x2

    #@2
    return p1
.end method
