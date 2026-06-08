.class public final Lio/reactivex/subjects/ReplaySubject;
.super Lio/reactivex/subjects/Subject;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$TimedNode;,
        Lio/reactivex/subjects/ReplaySubject$Node;,
        Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;,
        Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;
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


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;


# instance fields
.field final buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@3
    .line 140
    sput-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@5
    new-array v1, v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@7
    .line 143
    sput-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@9
    new-array v0, v0, [Ljava/lang/Object;

    #@b
    .line 442
    sput-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    #@d
    return-void
.end method

.method constructor <init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 313
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    #@3
    .line 314
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@5
    .line 315
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@c
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    return-void
.end method

.method public static create()Lio/reactivex/subjects/ReplaySubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 163
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    #@2
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;

    #@4
    const/16 v2, 0x10

    #@6
    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;-><init>(I)V

    #@9
    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    #@c
    return-object v0
.end method

.method public static create(I)Lio/reactivex/subjects/ReplaySubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 184
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    #@2
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;

    #@4
    invoke-direct {v1, p0}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;-><init>(I)V

    #@7
    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    #@a
    return-object v0
.end method

.method static createUnbounded()Lio/reactivex/subjects/ReplaySubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 227
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    #@2
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;

    #@4
    const v2, 0x7fffffff

    #@7
    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;-><init>(I)V

    #@a
    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    #@d
    return-object v0
.end method

.method public static createWithSize(I)Lio/reactivex/subjects/ReplaySubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 210
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    #@2
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;

    #@4
    invoke-direct {v1, p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;-><init>(I)V

    #@7
    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    #@a
    return-object v0
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/subjects/ReplaySubject;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 265
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    #@2
    new-instance v7, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;

    #@4
    const v2, 0x7fffffff

    #@7
    move-object v1, v7

    #@8
    move-wide v3, p0

    #@9
    move-object v5, p2

    #@a
    move-object v6, p3

    #@b
    invoke-direct/range {v1 .. v6}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    #@e
    invoke-direct {v0, v7}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    #@11
    return-object v0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)Lio/reactivex/subjects/ReplaySubject;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "I)",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 305
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    #@2
    new-instance v7, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;

    #@4
    move-object v1, v7

    #@5
    move v2, p4

    #@6
    move-wide v3, p0

    #@7
    move-object v5, p2

    #@8
    move-object v6, p3

    #@9
    invoke-direct/range {v1 .. v6}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    #@c
    invoke-direct {v0, v7}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    #@f
    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 499
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@8
    .line 500
    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_e

    #@d
    return v2

    #@e
    .line 503
    :cond_e
    array-length v1, v0

    #@f
    add-int/lit8 v3, v1, 0x1

    #@11
    .line 505
    new-array v3, v3, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@13
    .line 506
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 507
    aput-object p1, v3, v1

    #@18
    .line 508
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    invoke-static {v1, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    const/4 p1, 0x1

    #@21
    return p1
.end method

.method public cleanupBuffer()V
    .registers 2

    #@0
    .line 438
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->trimHead()V

    #@5
    return-void
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 3

    #@0
    .line 406
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 407
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_11

    #@c
    .line 408
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 420
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 3

    #@0
    .line 451
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    #@2
    move-object v1, v0

    #@3
    check-cast v1, [Ljava/lang/Object;

    #@5
    .line 452
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/ReplaySubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    if-ne v1, v0, :cond_f

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Ljava/lang/Object;

    #@e
    return-object v0

    #@f
    :cond_f
    return-object v1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 469
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    invoke-interface {v0, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public hasComplete()Z
    .registers 2

    #@0
    .line 474
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 475
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hasObservers()Z
    .registers 2

    #@0
    .line 396
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@8
    array-length v0, v0

    #@9
    if-eqz v0, :cond_d

    #@b
    const/4 v0, 0x1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0
.end method

.method public hasThrowable()Z
    .registers 2

    #@0
    .line 480
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 481
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hasValue()Z
    .registers 2

    #@0
    .line 490
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->size()I

    #@5
    move-result v0

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

.method observerCount()I
    .registers 2

    #@0
    .line 400
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@8
    array-length v0, v0

    #@9
    return v0
.end method

.method public onComplete()V
    .registers 6

    #@0
    .line 378
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 381
    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    #@8
    .line 383
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 385
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@e
    .line 387
    invoke-interface {v1, v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->addFinal(Ljava/lang/Object;)V

    #@11
    .line 389
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@14
    move-result-object v0

    #@15
    array-length v2, v0

    #@16
    const/4 v3, 0x0

    #@17
    :goto_17
    if-ge v3, v2, :cond_21

    #@19
    aget-object v4, v0, v3

    #@1b
    .line 390
    invoke-interface {v1, v4}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_17

    #@21
    :cond_21
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 358
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 359
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    #@7
    if-eqz v0, :cond_d

    #@9
    .line 360
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    .line 363
    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    #@10
    .line 365
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@13
    move-result-object p1

    #@14
    .line 367
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@16
    .line 369
    invoke-interface {v0, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->addFinal(Ljava/lang/Object;)V

    #@19
    .line 371
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/ReplaySubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@1c
    move-result-object p1

    #@1d
    array-length v1, p1

    #@1e
    const/4 v2, 0x0

    #@1f
    :goto_1f
    if-ge v2, v1, :cond_29

    #@21
    aget-object v3, p1, v2

    #@23
    .line 372
    invoke-interface {v0, v3}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_1f

    #@29
    :cond_29
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 343
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 344
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    #@7
    if-eqz v0, :cond_a

    #@9
    return-void

    #@a
    .line 348
    :cond_a
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@c
    .line 349
    invoke-interface {v0, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->add(Ljava/lang/Object;)V

    #@f
    .line 351
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@17
    array-length v1, p1

    #@18
    const/4 v2, 0x0

    #@19
    :goto_19
    if-ge v2, v1, :cond_23

    #@1b
    aget-object v3, p1, v2

    #@1d
    .line 352
    invoke-interface {v0, v3}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_19

    #@23
    :cond_23
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 336
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 337
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@7
    :cond_7
    return-void
.end method

.method remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 517
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@8
    .line 518
    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@a
    if-eq v0, v1, :cond_3f

    #@c
    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@e
    if-ne v0, v1, :cond_11

    #@10
    goto :goto_3f

    #@11
    .line 521
    :cond_11
    array-length v1, v0

    #@12
    const/4 v2, 0x0

    #@13
    move v3, v2

    #@14
    :goto_14
    if-ge v3, v1, :cond_1e

    #@16
    .line 524
    aget-object v4, v0, v3

    #@18
    if-ne v4, p1, :cond_1b

    #@1a
    goto :goto_1f

    #@1b
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_14

    #@1e
    :cond_1e
    const/4 v3, -0x1

    #@1f
    :goto_1f
    if-gez v3, :cond_22

    #@21
    return-void

    #@22
    :cond_22
    const/4 v4, 0x1

    #@23
    if-ne v1, v4, :cond_28

    #@25
    .line 535
    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@27
    goto :goto_37

    #@28
    :cond_28
    add-int/lit8 v5, v1, -0x1

    #@2a
    .line 537
    new-array v5, v5, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@2c
    .line 538
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2f
    add-int/lit8 v2, v3, 0x1

    #@31
    sub-int/2addr v1, v3

    #@32
    sub-int/2addr v1, v4

    #@33
    .line 539
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    move-object v1, v5

    #@37
    .line 541
    :goto_37
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@39
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_0

    #@3f
    :cond_3f
    :goto_3f
    return-void
.end method

.method size()I
    .registers 2

    #@0
    .line 494
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 320
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@2
    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/ReplaySubject;)V

    #@5
    .line 321
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@8
    .line 323
    iget-boolean p1, v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@a
    if-nez p1, :cond_1f

    #@c
    .line 324
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->add(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_1a

    #@12
    .line 325
    iget-boolean p1, v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@14
    if-eqz p1, :cond_1a

    #@16
    .line 326
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    #@19
    return-void

    #@1a
    .line 330
    :cond_1a
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@1c
    invoke-interface {p1, v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    #@1f
    :cond_1f
    return-void
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 549
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6
    move-result p1

    #@7
    if-eqz p1, :cond_14

    #@9
    .line 550
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@d
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    check-cast p1, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@13
    return-object p1

    #@14
    .line 552
    :cond_14
    sget-object p1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    #@16
    return-object p1
.end method
