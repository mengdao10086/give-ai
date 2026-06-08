.class final Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCreate.java"

# interfaces
.implements Lio/reactivex/ObservableEmitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ObservableEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43c4fdd95fbcd5c6L


# instance fields
.field volatile done:Z

.field final emitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 154
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 155
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@5
    .line 156
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    #@7
    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    #@a
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    #@c
    .line 157
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@e
    const/16 v0, 0x10

    #@10
    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@13
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@15
    return-void
.end method


# virtual methods
.method drain()V
    .registers 2

    #@0
    .line 219
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 220
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drainLoop()V

    #@9
    :cond_9
    return-void
.end method

.method drainLoop()V
    .registers 9

    #@0
    .line 225
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2
    .line 226
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@4
    .line 227
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    #@6
    const/4 v3, 0x1

    #@7
    move v4, v3

    #@8
    .line 232
    :cond_8
    :goto_8
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_12

    #@e
    .line 233
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@11
    return-void

    #@12
    .line 237
    :cond_12
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    if-eqz v5, :cond_23

    #@18
    .line 238
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@1b
    .line 239
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    #@22
    return-void

    #@23
    .line 243
    :cond_23
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    #@25
    .line 244
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    if-nez v6, :cond_2d

    #@2b
    move v7, v3

    #@2c
    goto :goto_2e

    #@2d
    :cond_2d
    const/4 v7, 0x0

    #@2e
    :goto_2e
    if-eqz v5, :cond_36

    #@30
    if-eqz v7, :cond_36

    #@32
    .line 249
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    #@35
    return-void

    #@36
    :cond_36
    if-eqz v7, :cond_40

    #@38
    neg-int v4, v4

    #@39
    .line 260
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->addAndGet(I)I

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_8

    #@3f
    return-void

    #@40
    .line 257
    :cond_40
    invoke-interface {v0, v6}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    #@43
    goto :goto_8
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 279
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 211
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_13

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    .line 214
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    #@10
    .line 215
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drain()V

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 188
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 189
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@9
    :cond_9
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_49

    #@8
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_49

    #@d
    :cond_d
    if-nez p1, :cond_1a

    #@f
    .line 166
    new-instance p1, Ljava/lang/NullPointerException;

    #@11
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@13
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->onError(Ljava/lang/Throwable;)V

    #@19
    return-void

    #@1a
    .line 169
    :cond_1a
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->get()I

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_34

    #@20
    const/4 v0, 0x0

    #@21
    const/4 v1, 0x1

    #@22
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->compareAndSet(II)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_34

    #@28
    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2a
    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    #@2d
    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->decrementAndGet()I

    #@30
    move-result p1

    #@31
    if-nez p1, :cond_42

    #@33
    return-void

    #@34
    .line 175
    :cond_34
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@36
    .line 176
    monitor-enter v0

    #@37
    .line 177
    :try_start_37
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@3a
    .line 178
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_46

    #@3b
    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->getAndIncrement()I

    #@3e
    move-result p1

    #@3f
    if-eqz p1, :cond_42

    #@41
    return-void

    #@42
    .line 183
    :cond_42
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drainLoop()V

    #@45
    return-void

    #@46
    :catchall_46
    move-exception p1

    #@47
    .line 178
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    #@48
    throw p1

    #@49
    :cond_49
    :goto_49
    return-void
.end method

.method public serialize()Lio/reactivex/ObservableEmitter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation

    #@0
    return-object p0
.end method

.method public setCancellable(Lio/reactivex/functions/Cancellable;)V
    .registers 3

    #@0
    .line 274
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    #@5
    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 269
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    #@5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .registers 4

    #@0
    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    #@2
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_26

    #@9
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    #@b
    if-eqz v0, :cond_e

    #@d
    goto :goto_26

    #@e
    :cond_e
    if-nez p1, :cond_17

    #@10
    .line 199
    new-instance p1, Ljava/lang/NullPointerException;

    #@12
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@14
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    .line 201
    :cond_17
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    #@19
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@1c
    move-result p1

    #@1d
    if-eqz p1, :cond_26

    #@1f
    const/4 p1, 0x1

    #@20
    .line 202
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    #@22
    .line 203
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drain()V

    #@25
    return p1

    #@26
    :cond_26
    :goto_26
    return v1
.end method
