.class final Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;
.super Ljava/lang/Object;
.source "CompletableAmb.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Amb"
.end annotation


# instance fields
.field final downstream:Lio/reactivex/CompletableObserver;

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/CompletableObserver;)V
    .registers 4

    #@0
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    .line 103
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@7
    .line 104
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->downstream:Lio/reactivex/CompletableObserver;

    #@9
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 4

    #@0
    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1b

    #@a
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@c
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->upstream:Lio/reactivex/disposables/Disposable;

    #@e
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@11
    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@13
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@16
    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->downstream:Lio/reactivex/CompletableObserver;

    #@18
    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    #@1b
    :cond_1b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1c

    #@a
    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@c
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->upstream:Lio/reactivex/disposables/Disposable;

    #@e
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@11
    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@13
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    #@16
    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->downstream:Lio/reactivex/CompletableObserver;

    #@18
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    #@1b
    goto :goto_1f

    #@1c
    .line 123
    :cond_1c
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1f
    :goto_1f
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 129
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;->set:Lio/reactivex/disposables/CompositeDisposable;

    #@4
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    #@7
    return-void
.end method
