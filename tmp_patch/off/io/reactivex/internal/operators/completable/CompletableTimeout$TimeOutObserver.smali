.class final Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;
.super Ljava/lang/Object;
.source "CompletableTimeout.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeOutObserver"
.end annotation


# instance fields
.field private final downstream:Lio/reactivex/CompletableObserver;

.field private final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final set:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/CompletableObserver;)V
    .registers 4

    #@0
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@5
    .line 64
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    .line 65
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@9
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 4

    #@0
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_14

    #@a
    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@c
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@f
    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@11
    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@14
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@c
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@f
    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->downstream:Lio/reactivex/CompletableObserver;

    #@11
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@14
    goto :goto_18

    #@15
    .line 79
    :cond_15
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@18
    :goto_18
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    #@5
    return-void
.end method
