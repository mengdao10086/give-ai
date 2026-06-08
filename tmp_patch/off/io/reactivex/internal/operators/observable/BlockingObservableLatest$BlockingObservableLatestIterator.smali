.class final Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;
.super Lio/reactivex/observers/DisposableObserver;
.source "BlockingObservableLatest.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/BlockingObservableLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockingObservableLatestIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "Lio/reactivex/Notification<",
        "TT;>;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field iteratorNotification:Lio/reactivex/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Notification<",
            "TT;>;"
        }
    .end annotation
.end field

.field final notify:Ljava/util/concurrent/Semaphore;

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/Notification<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    #@0
    .line 49
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    #@3
    .line 53
    new-instance v0, Ljava/util/concurrent/Semaphore;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #@9
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->notify:Ljava/util/concurrent/Semaphore;

    #@b
    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@10
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@12
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    #@0
    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->iteratorNotification:Lio/reactivex/Notification;

    #@2
    if-eqz v0, :cond_16

    #@4
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnError()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_16

    #@b
    .line 78
    :cond_b
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->iteratorNotification:Lio/reactivex/Notification;

    #@d
    invoke-virtual {v0}, Lio/reactivex/Notification;->getError()Ljava/lang/Throwable;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@14
    move-result-object v0

    #@15
    throw v0

    #@16
    .line 80
    :cond_16
    :goto_16
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->iteratorNotification:Lio/reactivex/Notification;

    #@18
    if-nez v0, :cond_4c

    #@1a
    .line 82
    :try_start_1a
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    #@1d
    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->notify:Ljava/util/concurrent/Semaphore;

    #@1f
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_22} :catch_3d

    #@22
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@24
    const/4 v1, 0x0

    #@25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lio/reactivex/Notification;

    #@2b
    .line 91
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->iteratorNotification:Lio/reactivex/Notification;

    #@2d
    .line 92
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnError()Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_34

    #@33
    goto :goto_4c

    #@34
    .line 93
    :cond_34
    invoke-virtual {v0}, Lio/reactivex/Notification;->getError()Ljava/lang/Throwable;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@3b
    move-result-object v0

    #@3c
    throw v0

    #@3d
    :catch_3d
    move-exception v0

    #@3e
    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->dispose()V

    #@41
    .line 86
    invoke-static {v0}, Lio/reactivex/Notification;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/Notification;

    #@44
    move-result-object v1

    #@45
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->iteratorNotification:Lio/reactivex/Notification;

    #@47
    .line 87
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@4a
    move-result-object v0

    #@4b
    throw v0

    #@4c
    .line 96
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->iteratorNotification:Lio/reactivex/Notification;

    #@4e
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnNext()Z

    #@51
    move-result v0

    #@52
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 101
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->iteratorNotification:Lio/reactivex/Notification;

    #@8
    invoke-virtual {v0}, Lio/reactivex/Notification;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x0

    #@d
    .line 103
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->iteratorNotification:Lio/reactivex/Notification;

    #@f
    return-object v0

    #@10
    .line 106
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v0
.end method

.method public onComplete()V
    .registers 1

    #@0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 67
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method public onNext(Lio/reactivex/Notification;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Notification<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    if-nez p1, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    if-eqz p1, :cond_12

    #@d
    .line 61
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->notify:Ljava/util/concurrent/Semaphore;

    #@f
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    #@12
    :cond_12
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 49
    check-cast p1, Lio/reactivex/Notification;

    #@2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;->onNext(Lio/reactivex/Notification;)V

    #@5
    return-void
.end method

.method public remove()V
    .registers 3

    #@0
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Read-only iterator."

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method
