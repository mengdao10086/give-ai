.class final Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "BlockingObservableIterable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Ljava/util/Iterator;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/BlockingObservableIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockingObservableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5cea3901b29dcb72L


# instance fields
.field final condition:Ljava/util/concurrent/locks/Condition;

.field volatile done:Z

.field volatile error:Ljava/lang/Throwable;

.field final lock:Ljava/util/concurrent/locks/Lock;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    #@0
    .line 58
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 59
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@5
    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@a
    .line 60
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@f
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    #@11
    .line 61
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@14
    move-result-object p1

    #@15
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    #@17
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    #@0
    .line 155
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@3
    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    #@6
    return-void
.end method

.method public hasNext()Z
    .registers 4

    #@0
    .line 67
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->isDisposed()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_11

    #@7
    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->error:Ljava/lang/Throwable;

    #@9
    if-nez v0, :cond_c

    #@b
    return v1

    #@c
    .line 70
    :cond_c
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@f
    move-result-object v0

    #@10
    throw v0

    #@11
    .line 74
    :cond_11
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->done:Z

    #@13
    .line 75
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@15
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    #@18
    move-result v2

    #@19
    if-eqz v0, :cond_27

    #@1b
    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->error:Ljava/lang/Throwable;

    #@1d
    if-nez v0, :cond_22

    #@1f
    if-eqz v2, :cond_27

    #@21
    return v1

    #@22
    .line 79
    :cond_22
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@25
    move-result-object v0

    #@26
    throw v0

    #@27
    :cond_27
    if-eqz v2, :cond_62

    #@29
    .line 87
    :try_start_29
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    #@2c
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    #@2e
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_31} :catch_56

    #@31
    .line 90
    :goto_31
    :try_start_31
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->done:Z

    #@33
    if-nez v0, :cond_49

    #@35
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@37
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_49

    #@3d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->isDisposed()Z

    #@40
    move-result v0

    #@41
    if-nez v0, :cond_49

    #@43
    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    #@45
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_4f

    #@48
    goto :goto_31

    #@49
    .line 94
    :cond_49
    :try_start_49
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    #@4b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@4e
    goto :goto_0

    #@4f
    :catchall_4f
    move-exception v0

    #@50
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    #@52
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@55
    .line 95
    throw v0
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_56} :catch_56

    #@56
    :catch_56
    move-exception v0

    #@57
    .line 97
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@5a
    .line 98
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    #@5d
    .line 99
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@60
    move-result-object v0

    #@61
    throw v0

    #@62
    :cond_62
    const/4 v0, 0x1

    #@63
    return v0
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 161
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 109
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@8
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 112
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    #@f
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@12
    throw v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 135
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->done:Z

    #@3
    .line 136
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    #@6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 128
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->error:Ljava/lang/Throwable;

    #@2
    const/4 p1, 0x1

    #@3
    .line 129
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->done:Z

    #@5
    .line 130
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    #@8
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
    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    #@5
    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    #@8
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    #@0
    .line 117
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@3
    return-void
.end method

.method public remove()V
    .registers 3

    #@0
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "remove"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method signalConsumer()V
    .registers 3

    #@0
    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 142
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    #@7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    #@a
    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    #@c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    #@13
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@16
    .line 145
    throw v0
.end method
