.class public final Lio/reactivex/subjects/BehaviorSubject;
.super Lio/reactivex/subjects/Subject;
.source "BehaviorSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
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
.field static final EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;


# instance fields
.field index:J

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final readLock:Ljava/util/concurrent/locks/Lock;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Ljava/lang/Object;

    #@3
    .line 157
    sput-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    #@5
    new-array v1, v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@7
    .line 164
    sput-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@9
    new-array v0, v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@b
    .line 167
    sput-object v0, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@d
    return-void
.end method

.method constructor <init>()V
    .registers 3

    #@0
    .line 211
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    #@3
    .line 212
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@a
    .line 213
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->readLock:Ljava/util/concurrent/locks/Lock;

    #@10
    .line 214
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    #@16
    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@18
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@1a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@1d
    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1f
    .line 216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@24
    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@26
    .line 217
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@28
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@2b
    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    #@2d
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 227
    invoke-direct {p0}, Lio/reactivex/subjects/BehaviorSubject;-><init>()V

    #@3
    .line 228
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    const-string v1, "defaultValue is null"

    #@7
    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@e
    return-void
.end method

.method public static create()Lio/reactivex/subjects/BehaviorSubject;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 186
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject;

    #@2
    invoke-direct {v0}, Lio/reactivex/subjects/BehaviorSubject;-><init>()V

    #@5
    return-object v0
.end method

.method public static createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 203
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject;

    #@2
    invoke-direct {v0, p0}, Lio/reactivex/subjects/BehaviorSubject;-><init>(Ljava/lang/Object;)V

    #@5
    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 403
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@8
    .line 404
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_e

    #@d
    return v2

    #@e
    .line 407
    :cond_e
    array-length v1, v0

    #@f
    add-int/lit8 v3, v1, 0x1

    #@11
    .line 409
    new-array v3, v3, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@13
    .line 410
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 411
    aput-object p1, v3, v1

    #@18
    .line 412
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public getThrowable()Ljava/lang/Throwable;
    .registers 3

    #@0
    .line 308
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 309
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_11

    #@c
    .line 310
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 322
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 323
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_18

    #@c
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_13

    #@12
    goto :goto_18

    #@13
    .line 326
    :cond_13
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    :cond_18
    :goto_18
    const/4 v0, 0x0

    #@19
    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 338
    sget-object v0, Lio/reactivex/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    #@2
    move-object v1, v0

    #@3
    check-cast v1, [Ljava/lang/Object;

    #@5
    .line 339
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/BehaviorSubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 359
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x0

    #@8
    if-eqz v0, :cond_3a

    #@a
    .line 360
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_3a

    #@10
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_17

    #@16
    goto :goto_3a

    #@17
    .line 366
    :cond_17
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .line 367
    array-length v3, p1

    #@1c
    const/4 v4, 0x1

    #@1d
    if-eqz v3, :cond_27

    #@1f
    .line 368
    aput-object v0, p1, v2

    #@21
    .line 369
    array-length v0, p1

    #@22
    if-eq v0, v4, :cond_39

    #@24
    .line 370
    aput-object v1, p1, v4

    #@26
    goto :goto_39

    #@27
    .line 373
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2a
    move-result-object p1

    #@2b
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@2e
    move-result-object p1

    #@2f
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@32
    move-result-object p1

    #@33
    check-cast p1, [Ljava/lang/Object;

    #@35
    check-cast p1, [Ljava/lang/Object;

    #@37
    .line 374
    aput-object v0, p1, v2

    #@39
    :cond_39
    :goto_39
    return-object p1

    #@3a
    .line 361
    :cond_3a
    :goto_3a
    array-length v0, p1

    #@3b
    if-eqz v0, :cond_3f

    #@3d
    .line 362
    aput-object v1, p1, v2

    #@3f
    :cond_3f
    return-object p1
.end method

.method public hasComplete()Z
    .registers 2

    #@0
    .line 381
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 382
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hasObservers()Z
    .registers 2

    #@0
    .line 298
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

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
    .line 387
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 388
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hasValue()Z
    .registers 3

    #@0
    .line 397
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_16

    #@8
    .line 398
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_16

    #@e
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    :goto_17
    return v0
.end method

.method public onComplete()V
    .registers 8

    #@0
    .line 287
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    const/4 v1, 0x0

    #@3
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@5
    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_c

    #@b
    return-void

    #@c
    .line 290
    :cond_c
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 291
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@13
    move-result-object v1

    #@14
    array-length v2, v1

    #@15
    const/4 v3, 0x0

    #@16
    :goto_16
    if-ge v3, v2, :cond_22

    #@18
    aget-object v4, v1, v3

    #@1a
    .line 292
    iget-wide v5, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    #@1c
    invoke-virtual {v4, v0, v5, v6}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    #@1f
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_16

    #@22
    :cond_22
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8

    #@0
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 274
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 275
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_12

    #@e
    .line 276
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@11
    return-void

    #@12
    .line 279
    :cond_12
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    .line 280
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@19
    move-result-object v0

    #@1a
    array-length v1, v0

    #@1b
    const/4 v2, 0x0

    #@1c
    :goto_1c
    if-ge v2, v1, :cond_28

    #@1e
    aget-object v3, v0, v2

    #@20
    .line 281
    iget-wide v4, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    #@22
    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_1c

    #@28
    :cond_28
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 260
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 262
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_e

    #@d
    return-void

    #@e
    .line 265
    :cond_e
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object p1

    #@12
    .line 266
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject;->setCurrent(Ljava/lang/Object;)V

    #@15
    .line 267
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@1d
    array-length v1, v0

    #@1e
    const/4 v2, 0x0

    #@1f
    :goto_1f
    if-ge v2, v1, :cond_2b

    #@21
    aget-object v3, v0, v2

    #@23
    .line 268
    iget-wide v4, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    #@25
    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_1f

    #@2b
    :cond_2b
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 253
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 254
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@b
    :cond_b
    return-void
.end method

.method remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 421
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@8
    .line 422
    array-length v1, v0

    #@9
    if-nez v1, :cond_c

    #@b
    return-void

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    move v3, v2

    #@e
    :goto_e
    if-ge v3, v1, :cond_18

    #@10
    .line 428
    aget-object v4, v0, v3

    #@12
    if-ne v4, p1, :cond_15

    #@14
    goto :goto_19

    #@15
    :cond_15
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_e

    #@18
    :cond_18
    const/4 v3, -0x1

    #@19
    :goto_19
    if-gez v3, :cond_1c

    #@1b
    return-void

    #@1c
    :cond_1c
    const/4 v4, 0x1

    #@1d
    if-ne v1, v4, :cond_22

    #@1f
    .line 439
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@21
    goto :goto_31

    #@22
    :cond_22
    add-int/lit8 v5, v1, -0x1

    #@24
    .line 441
    new-array v5, v5, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@26
    .line 442
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    add-int/lit8 v2, v3, 0x1

    #@2b
    sub-int/2addr v1, v3

    #@2c
    sub-int/2addr v1, v4

    #@2d
    .line 443
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    move-object v1, v5

    #@31
    .line 445
    :goto_31
    iget-object v2, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@33
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    return-void
.end method

.method setCurrent(Ljava/lang/Object;)V
    .registers 6

    #@0
    .line 464
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 465
    iget-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    #@7
    const-wide/16 v2, 0x1

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    #@c
    .line 466
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@11
    .line 467
    iget-object p1, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    #@13
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@16
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 233
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@2
    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/BehaviorSubject;)V

    #@5
    .line 234
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@8
    .line 235
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->add(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1a

    #@e
    .line 236
    iget-boolean p1, v0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@10
    if-eqz p1, :cond_16

    #@12
    .line 237
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V

    #@15
    goto :goto_2d

    #@16
    .line 239
    :cond_16
    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitFirst()V

    #@19
    goto :goto_2d

    #@1a
    .line 242
    :cond_1a
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    #@1c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/Throwable;

    #@22
    .line 243
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@24
    if-ne v0, v1, :cond_2a

    #@26
    .line 244
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    #@29
    goto :goto_2d

    #@2a
    .line 246
    :cond_2a
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@2d
    :goto_2d
    return-void
.end method

.method subscriberCount()I
    .registers 2

    #@0
    .line 302
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@8
    array-length v0, v0

    #@9
    return v0
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 454
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    #@a
    if-eq v0, v1, :cond_f

    #@c
    .line 457
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject;->setCurrent(Ljava/lang/Object;)V

    #@f
    :cond_f
    return-object v0
.end method
