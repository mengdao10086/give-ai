.class public final Lio/reactivex/subjects/UnicastSubject;
.super Lio/reactivex/subjects/Subject;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final delayError:Z

.field volatile disposed:Z

.field volatile done:Z

.field final downstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/Observer<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field enableOperatorFusion:Z

.field error:Ljava/lang/Throwable;

.field final onTerminate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Runnable;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 279
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/subjects/UnicastSubject;-><init>(ILjava/lang/Runnable;Z)V

    #@4
    return-void
.end method

.method constructor <init>(ILjava/lang/Runnable;Z)V
    .registers 6

    #@0
    .line 291
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    #@3
    .line 292
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@5
    const-string v1, "capacityHint"

    #@7
    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@a
    move-result p1

    #@b
    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@e
    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@10
    .line 293
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@12
    const-string v0, "onTerminate"

    #@14
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object p2

    #@18
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@1b
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    #@1d
    .line 294
    iput-boolean p3, p0, Lio/reactivex/subjects/UnicastSubject;->delayError:Z

    #@1f
    .line 295
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@21
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@24
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@26
    .line 296
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@28
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@2b
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2d
    .line 297
    new-instance p1, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    #@2f
    invoke-direct {p1, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/UnicastSubject;)V

    #@32
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    #@34
    return-void
.end method

.method constructor <init>(IZ)V
    .registers 5

    #@0
    .line 261
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    #@3
    .line 262
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@5
    const-string v1, "capacityHint"

    #@7
    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@a
    move-result p1

    #@b
    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@e
    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@10
    .line 263
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@12
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@15
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    .line 264
    iput-boolean p2, p0, Lio/reactivex/subjects/UnicastSubject;->delayError:Z

    #@19
    .line 265
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@1b
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@1e
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@20
    .line 266
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@22
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@25
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@27
    .line 267
    new-instance p1, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    #@29
    invoke-direct {p1, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/UnicastSubject;)V

    #@2c
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    #@2e
    return-void
.end method

.method public static create()Lio/reactivex/subjects/UnicastSubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 184
    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    #@2
    invoke-static {}, Lio/reactivex/subjects/UnicastSubject;->bufferSize()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-direct {v0, v1, v2}, Lio/reactivex/subjects/UnicastSubject;-><init>(IZ)V

    #@a
    return-object v0
.end method

.method public static create(I)Lio/reactivex/subjects/UnicastSubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 196
    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, v1}, Lio/reactivex/subjects/UnicastSubject;-><init>(IZ)V

    #@6
    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;)Lio/reactivex/subjects/UnicastSubject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 214
    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/subjects/UnicastSubject;-><init>(ILjava/lang/Runnable;Z)V

    #@6
    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;Z)Lio/reactivex/subjects/UnicastSubject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 234
    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/subjects/UnicastSubject;-><init>(ILjava/lang/Runnable;Z)V

    #@5
    return-object v0
.end method

.method public static create(Z)Lio/reactivex/subjects/UnicastSubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 251
    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    #@2
    invoke-static {}, Lio/reactivex/subjects/UnicastSubject;->bufferSize()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1, p0}, Lio/reactivex/subjects/UnicastSubject;-><init>(IZ)V

    #@9
    return-object v0
.end method


# virtual methods
.method doTerminate()V
    .registers 4

    #@0
    .line 316
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Runnable;

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 317
    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v1, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_16

    #@13
    .line 318
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@16
    :cond_16
    return-void
.end method

.method drain()V
    .registers 3

    #@0
    .line 470
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    #@2
    invoke-virtual {v0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 474
    :cond_9
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lio/reactivex/Observer;

    #@11
    const/4 v1, 0x1

    #@12
    :goto_12
    if-eqz v0, :cond_20

    #@14
    .line 480
    iget-boolean v1, p0, Lio/reactivex/subjects/UnicastSubject;->enableOperatorFusion:Z

    #@16
    if-eqz v1, :cond_1c

    #@18
    .line 481
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/UnicastSubject;->drainFused(Lio/reactivex/Observer;)V

    #@1b
    goto :goto_1f

    #@1c
    .line 483
    :cond_1c
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/UnicastSubject;->drainNormal(Lio/reactivex/Observer;)V

    #@1f
    :goto_1f
    return-void

    #@20
    .line 488
    :cond_20
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    #@22
    neg-int v1, v1

    #@23
    invoke-virtual {v0, v1}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_2a

    #@29
    return-void

    #@2a
    .line 493
    :cond_2a
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lio/reactivex/Observer;

    #@32
    goto :goto_12
.end method

.method drainFused(Lio/reactivex/Observer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 416
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    .line 417
    iget-boolean v1, p0, Lio/reactivex/subjects/UnicastSubject;->delayError:Z

    #@4
    const/4 v2, 0x1

    #@5
    xor-int/2addr v1, v2

    #@6
    .line 421
    :cond_6
    iget-boolean v3, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@8
    const/4 v4, 0x0

    #@9
    if-eqz v3, :cond_11

    #@b
    .line 422
    iget-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@10
    return-void

    #@11
    .line 425
    :cond_11
    iget-boolean v3, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@13
    if-eqz v1, :cond_1e

    #@15
    if-eqz v3, :cond_1e

    #@17
    .line 428
    invoke-virtual {p0, v0, p1}, Lio/reactivex/subjects/UnicastSubject;->failedFast(Lio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/Observer;)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_1e

    #@1d
    return-void

    #@1e
    .line 433
    :cond_1e
    invoke-interface {p1, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@21
    if-eqz v3, :cond_27

    #@23
    .line 436
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/UnicastSubject;->errorOrComplete(Lio/reactivex/Observer;)V

    #@26
    return-void

    #@27
    .line 440
    :cond_27
    iget-object v3, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    #@29
    neg-int v2, v2

    #@2a
    invoke-virtual {v3, v2}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_6

    #@30
    return-void
.end method

.method drainNormal(Lio/reactivex/Observer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 368
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2
    .line 369
    iget-boolean v1, p0, Lio/reactivex/subjects/UnicastSubject;->delayError:Z

    #@4
    const/4 v2, 0x1

    #@5
    xor-int/2addr v1, v2

    #@6
    move v3, v2

    #@7
    move v4, v3

    #@8
    .line 374
    :cond_8
    :goto_8
    iget-boolean v5, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@a
    if-eqz v5, :cond_16

    #@c
    .line 375
    iget-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@12
    .line 376
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@15
    return-void

    #@16
    .line 380
    :cond_16
    iget-boolean v5, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@18
    .line 381
    iget-object v6, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@1a
    invoke-virtual {v6}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    const/4 v7, 0x0

    #@1f
    if-nez v6, :cond_23

    #@21
    move v8, v2

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v8, v7

    #@24
    :goto_24
    if-eqz v5, :cond_38

    #@26
    if-eqz v1, :cond_32

    #@28
    if-eqz v3, :cond_32

    #@2a
    .line 386
    invoke-virtual {p0, v0, p1}, Lio/reactivex/subjects/UnicastSubject;->failedFast(Lio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/Observer;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_31

    #@30
    return-void

    #@31
    :cond_31
    move v3, v7

    #@32
    :cond_32
    if-eqz v8, :cond_38

    #@34
    .line 394
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/UnicastSubject;->errorOrComplete(Lio/reactivex/Observer;)V

    #@37
    return-void

    #@38
    :cond_38
    if-eqz v8, :cond_44

    #@3a
    .line 406
    iget-object v5, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    #@3c
    neg-int v4, v4

    #@3d
    invoke-virtual {v5, v4}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    #@40
    move-result v4

    #@41
    if-nez v4, :cond_8

    #@43
    return-void

    #@44
    .line 403
    :cond_44
    invoke-interface {p1, v6}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@47
    goto :goto_8
.end method

.method errorOrComplete(Lio/reactivex/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 448
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@6
    .line 449
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    #@8
    if-eqz v0, :cond_e

    #@a
    .line 451
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@d
    goto :goto_11

    #@e
    .line 453
    :cond_e
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    #@11
    :goto_11
    return-void
.end method

.method failedFast(Lio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/Observer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;",
            "Lio/reactivex/Observer<",
            "-TT;>;)Z"
        }
    .end annotation

    #@0
    .line 458
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    #@2
    if-eqz v0, :cond_12

    #@4
    .line 460
    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@a
    .line 461
    invoke-interface {p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@d
    .line 462
    invoke-interface {p2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@10
    const/4 p1, 0x1

    #@11
    return p1

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    return p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 505
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 506
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    #@6
    return-object v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    return-object v0
.end method

.method public hasComplete()Z
    .registers 2

    #@0
    .line 518
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    #@6
    if-nez v0, :cond_a

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

.method public hasObservers()Z
    .registers 2

    #@0
    .line 499
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public hasThrowable()Z
    .registers 2

    #@0
    .line 513
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

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

.method public onComplete()V
    .registers 2

    #@0
    .line 356
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@2
    if-nez v0, :cond_12

    #@4
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_12

    #@9
    :cond_9
    const/4 v0, 0x1

    #@a
    .line 359
    iput-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@c
    .line 361
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->doTerminate()V

    #@f
    .line 363
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    #@12
    :cond_12
    :goto_12
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 341
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 342
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@7
    if-nez v0, :cond_1a

    #@9
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@b
    if-eqz v0, :cond_e

    #@d
    goto :goto_1a

    #@e
    .line 346
    :cond_e
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    #@10
    const/4 p1, 0x1

    #@11
    .line 347
    iput-boolean p1, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@13
    .line 349
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->doTerminate()V

    #@16
    .line 351
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    #@19
    return-void

    #@1a
    .line 343
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1d
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
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 331
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 332
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@7
    if-nez v0, :cond_16

    #@9
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@b
    if-eqz v0, :cond_e

    #@d
    goto :goto_16

    #@e
    .line 335
    :cond_e
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@10
    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    #@13
    .line 336
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    #@16
    :cond_16
    :goto_16
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 324
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    #@2
    if-nez v0, :cond_8

    #@4
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 325
    :cond_8
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@b
    :cond_b
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 302
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2b

    #@8
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    const/4 v1, 0x0

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_2b

    #@12
    .line 303
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    #@14
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@17
    .line 304
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@1c
    .line 305
    iget-boolean p1, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    #@1e
    if-eqz p1, :cond_27

    #@20
    .line 306
    iget-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@22
    const/4 v0, 0x0

    #@23
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@26
    return-void

    #@27
    .line 309
    :cond_27
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    #@2a
    goto :goto_35

    #@2b
    .line 311
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2d
    const-string v1, "Only a single observer allowed."

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    #@35
    :goto_35
    return-void
.end method
