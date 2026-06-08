.class public Lio/reactivex/observers/TestObserver;
.super Lio/reactivex/observers/BaseTestConsumer;
.source "TestObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/observers/TestObserver$EmptyObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;",
        "Lio/reactivex/observers/TestObserver<",
        "TT;>;>;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/CompletableObserver;"
    }
.end annotation


# instance fields
.field private final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private qd:Lio/reactivex/internal/fuseable/QueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 68
    sget-object v0, Lio/reactivex/observers/TestObserver$EmptyObserver;->INSTANCE:Lio/reactivex/observers/TestObserver$EmptyObserver;

    #@2
    invoke-direct {p0, v0}, Lio/reactivex/observers/TestObserver;-><init>(Lio/reactivex/Observer;)V

    #@5
    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 75
    invoke-direct {p0}, Lio/reactivex/observers/BaseTestConsumer;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    .line 76
    iput-object p1, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    #@c
    return-void
.end method

.method public static create()Lio/reactivex/observers/TestObserver;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 51
    new-instance v0, Lio/reactivex/observers/TestObserver;

    #@2
    invoke-direct {v0}, Lio/reactivex/observers/TestObserver;-><init>()V

    #@5
    return-object v0
.end method

.method public static create(Lio/reactivex/Observer;)Lio/reactivex/observers/TestObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "-TT;>;)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 61
    new-instance v0, Lio/reactivex/observers/TestObserver;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/observers/TestObserver;-><init>(Lio/reactivex/Observer;)V

    #@5
    return-object v0
.end method

.method static fusionModeToString(I)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_24

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_21

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p0, v0, :cond_1e

    #@8
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    const-string v1, "Unknown("

    #@c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object p0

    #@13
    const-string v0, ")"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p0

    #@19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    const-string p0, "ASYNC"

    #@20
    return-object p0

    #@21
    :cond_21
    const-string p0, "SYNC"

    #@23
    return-object p0

    #@24
    :cond_24
    const-string p0, "NONE"

    #@26
    return-object p0
.end method


# virtual methods
.method final assertFuseable()Lio/reactivex/observers/TestObserver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 326
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object p0

    #@5
    .line 327
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    const-string v1, "Upstream is not fuseable."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0
.end method

.method final assertFusionMode(I)Lio/reactivex/observers/TestObserver;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 298
    iget v0, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    #@2
    if-eq v0, p1, :cond_36

    #@4
    .line 300
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@6
    if-eqz v1, :cond_2f

    #@8
    .line 301
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    const-string v3, "Fusion mode different. Expected: "

    #@e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    invoke-static {p1}, Lio/reactivex/observers/TestObserver;->fusionModeToString(I)Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    const-string v2, ", actual: "

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p1

    #@1f
    .line 302
    invoke-static {v0}, Lio/reactivex/observers/TestObserver;->fusionModeToString(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2e
    throw v1

    #@2f
    :cond_2f
    const-string p1, "Upstream is not fuseable"

    #@31
    .line 304
    invoke-virtual {p0, p1}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    #@34
    move-result-object p1

    #@35
    throw p1

    #@36
    :cond_36
    return-object p0
.end method

.method final assertNotFuseable()Lio/reactivex/observers/TestObserver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 339
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@2
    if-nez v0, :cond_5

    #@4
    return-object p0

    #@5
    .line 340
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    const-string v1, "Upstream is fuseable."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0
.end method

.method public bridge synthetic assertNotSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .registers 2

    #@0
    .line 34
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->assertNotSubscribed()Lio/reactivex/observers/TestObserver;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final assertNotSubscribed()Lio/reactivex/observers/TestObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 255
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_18

    #@8
    .line 258
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    return-object p0

    #@11
    :cond_11
    const-string v0, "Not subscribed but errors found"

    #@13
    .line 259
    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    #@16
    move-result-object v0

    #@17
    throw v0

    #@18
    :cond_18
    const-string v0, "Subscribed!"

    #@1a
    .line 256
    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    #@1d
    move-result-object v0

    #@1e
    throw v0
.end method

.method public final assertOf(Lio/reactivex/functions/Consumer;)Lio/reactivex/observers/TestObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;>;)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 271
    :try_start_0
    invoke-interface {p1, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    #@3
    return-object p0

    #@4
    :catchall_4
    move-exception p1

    #@5
    .line 273
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@8
    move-result-object p1

    #@9
    throw p1
.end method

.method public bridge synthetic assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .registers 2

    #@0
    .line 34
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->assertSubscribed()Lio/reactivex/observers/TestObserver;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final assertSubscribed()Lio/reactivex/observers/TestObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 243
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object p0

    #@9
    :cond_9
    const-string v0, "Not subscribed!"

    #@b
    .line 244
    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    #@e
    move-result-object v0

    #@f
    throw v0
.end method

.method public final cancel()V
    .registers 1

    #@0
    .line 215
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->dispose()V

    #@3
    return-void
.end method

.method public final dispose()V
    .registers 2

    #@0
    .line 220
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@5
    return-void
.end method

.method public final hasSubscription()Z
    .registers 2

    #@0
    .line 234
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public final isCancelled()Z
    .registers 2

    #@0
    .line 206
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->isDisposed()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final isDisposed()Z
    .registers 2

    #@0
    .line 225
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@8
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public onComplete()V
    .registers 5

    #@0
    .line 184
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    #@2
    if-nez v0, :cond_1b

    #@4
    const/4 v0, 0x1

    #@5
    .line 185
    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    #@7
    .line 186
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_1b

    #@f
    .line 187
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@11
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string v2, "onSubscribe not called in proper order"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 192
    :cond_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    #@21
    .line 193
    iget-wide v0, p0, Lio/reactivex/observers/TestObserver;->completions:J

    #@23
    const-wide/16 v2, 0x1

    #@25
    add-long/2addr v0, v2

    #@26
    iput-wide v0, p0, Lio/reactivex/observers/TestObserver;->completions:J

    #@28
    .line 195
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    #@2a
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_33

    #@2d
    .line 197
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    #@2f
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@32
    return-void

    #@33
    :catchall_33
    move-exception v0

    #@34
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    #@36
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@39
    .line 198
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 161
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    #@2
    if-nez v0, :cond_1b

    #@4
    const/4 v0, 0x1

    #@5
    .line 162
    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    #@7
    .line 163
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_1b

    #@f
    .line 164
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@11
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string v2, "onSubscribe not called in proper order"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 169
    :cond_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    #@21
    if-nez p1, :cond_30

    #@23
    .line 171
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@25
    new-instance v1, Ljava/lang/NullPointerException;

    #@27
    const-string v2, "onError received a null Throwable"

    #@29
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_35

    #@30
    .line 173
    :cond_30
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@32
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@35
    .line 176
    :goto_35
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    #@37
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_40

    #@3a
    .line 178
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    #@3c
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@3f
    return-void

    #@40
    :catchall_40
    move-exception p1

    #@41
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    #@43
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@46
    .line 179
    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 128
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    #@2
    if-nez v0, :cond_1b

    #@4
    const/4 v0, 0x1

    #@5
    .line 129
    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    #@7
    .line 130
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_1b

    #@f
    .line 131
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@11
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string v2, "onSubscribe not called in proper order"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 135
    :cond_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    #@21
    .line 137
    iget v0, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    #@23
    const/4 v1, 0x2

    #@24
    if-ne v0, v1, :cond_40

    #@26
    .line 139
    :goto_26
    :try_start_26
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@28
    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    #@2b
    move-result-object p1

    #@2c
    if-eqz p1, :cond_3f

    #@2e
    .line 140
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    #@30
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_34

    #@33
    goto :goto_26

    #@34
    :catchall_34
    move-exception p1

    #@35
    .line 144
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@37
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    .line 145
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@3c
    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueDisposable;->dispose()V

    #@3f
    :cond_3f
    return-void

    #@40
    .line 150
    :cond_40
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    #@42
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    if-nez p1, :cond_53

    #@47
    .line 153
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@49
    new-instance v1, Ljava/lang/NullPointerException;

    #@4b
    const-string v2, "onNext received a null value"

    #@4d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 156
    :cond_53
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    #@55
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@58
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 6

    #@0
    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    #@6
    if-nez p1, :cond_15

    #@8
    .line 85
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@a
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    const-string v1, "onSubscribe received a null Subscription"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    return-void

    #@15
    .line 88
    :cond_15
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_45

    #@1e
    .line 89
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@21
    .line 90
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@29
    if-eq v0, v1, :cond_44

    #@2b
    .line 91
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@2d
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    const-string v3, "onSubscribe received multiple subscriptions: "

    #@33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object p1

    #@3a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object p1

    #@3e
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    :cond_44
    return-void

    #@45
    .line 96
    :cond_45
    iget v0, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    #@47
    if-eqz v0, :cond_89

    #@49
    .line 97
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    #@4b
    if-eqz v0, :cond_89

    #@4d
    .line 98
    move-object v0, p1

    #@4e
    check-cast v0, Lio/reactivex/internal/fuseable/QueueDisposable;

    #@50
    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@52
    .line 100
    iget v1, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    #@54
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    #@57
    move-result v0

    #@58
    .line 101
    iput v0, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    #@5a
    const/4 v1, 0x1

    #@5b
    if-ne v0, v1, :cond_89

    #@5d
    .line 104
    iput-boolean v1, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    #@5f
    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@62
    move-result-object p1

    #@63
    iput-object p1, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    #@65
    .line 108
    :goto_65
    :try_start_65
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    #@67
    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    #@6a
    move-result-object p1

    #@6b
    if-eqz p1, :cond_73

    #@6d
    .line 109
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    #@6f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_65

    #@73
    .line 111
    :cond_73
    iget-wide v0, p0, Lio/reactivex/observers/TestObserver;->completions:J

    #@75
    const-wide/16 v2, 0x1

    #@77
    add-long/2addr v0, v2

    #@78
    iput-wide v0, p0, Lio/reactivex/observers/TestObserver;->completions:J

    #@7a
    .line 113
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@7c
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7e
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_65 .. :try_end_81} :catchall_82

    #@81
    goto :goto_88

    #@82
    :catchall_82
    move-exception p1

    #@83
    .line 116
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    #@85
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@88
    :goto_88
    return-void

    #@89
    .line 123
    :cond_89
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    #@8b
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@8e
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 347
    invoke-virtual {p0, p1}, Lio/reactivex/observers/TestObserver;->onNext(Ljava/lang/Object;)V

    #@3
    .line 348
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->onComplete()V

    #@6
    return-void
.end method

.method final setInitialFusionMode(I)Lio/reactivex/observers/TestObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 286
    iput p1, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    #@2
    return-object p0
.end method
