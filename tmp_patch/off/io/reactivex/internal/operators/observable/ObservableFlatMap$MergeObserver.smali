.class final Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableFlatMap.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;"
        }
    .end annotation
.end field

.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1d634c9cafb5cc5aL


# instance fields
.field final bufferSize:I

.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field lastId:J

.field lastIndex:I

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field

.field sources:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field uniqueId:J

.field upstream:Lio/reactivex/disposables/Disposable;

.field wip:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@3
    .line 78
    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@5
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@7
    .line 80
    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@9
    return-void
.end method

.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    #@0
    .line 93
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 72
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    #@5
    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@a
    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    #@c
    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->mapper:Lio/reactivex/functions/Function;

    #@e
    .line 96
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->delayErrors:Z

    #@10
    .line 97
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@12
    .line 98
    iput p5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    #@14
    const p1, 0x7fffffff

    #@17
    if-eq p4, p1, :cond_20

    #@19
    .line 100
    new-instance p1, Ljava/util/ArrayDeque;

    #@1b
    invoke-direct {p1, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    #@1e
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    #@20
    .line 102
    :cond_20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@22
    sget-object p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@24
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@27
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@29
    return-void
.end method


# virtual methods
.method addInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)Z"
        }
    .end annotation

    #@0
    .line 174
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@8
    .line 175
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_11

    #@d
    .line 176
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    #@10
    return v2

    #@11
    .line 179
    :cond_11
    array-length v1, v0

    #@12
    add-int/lit8 v3, v1, 0x1

    #@14
    .line 180
    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@16
    .line 181
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 182
    aput-object p1, v3, v1

    #@1b
    .line 183
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1d
    invoke-static {v1, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    const/4 p1, 0x1

    #@24
    return p1
.end method

.method checkTerminate()Z
    .registers 4

    #@0
    .line 503
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 506
    :cond_6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@8
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Throwable;

    #@e
    .line 507
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->delayErrors:Z

    #@10
    if-nez v2, :cond_27

    #@12
    if-eqz v0, :cond_27

    #@14
    .line 508
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->disposeAll()Z

    #@17
    .line 509
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@19
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@1c
    move-result-object v0

    #@1d
    .line 510
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@1f
    if-eq v0, v2, :cond_26

    #@21
    .line 511
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    #@23
    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@26
    :cond_26
    return v1

    #@27
    :cond_27
    const/4 v0, 0x0

    #@28
    return v0
.end method

.method public dispose()V
    .registers 3

    #@0
    .line 308
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    #@2
    if-nez v0, :cond_1c

    #@4
    const/4 v0, 0x1

    #@5
    .line 309
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    #@7
    .line 310
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->disposeAll()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1c

    #@d
    .line 311
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@f
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_1c

    #@15
    .line 312
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@17
    if-eq v0, v1, :cond_1c

    #@19
    .line 313
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1c
    :cond_1c
    return-void
.end method

.method disposeAll()Z
    .registers 5

    #@0
    .line 519
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    .line 520
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@d
    .line 521
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@f
    const/4 v2, 0x0

    #@10
    if-eq v0, v1, :cond_29

    #@12
    .line 522
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@1a
    if-eq v0, v1, :cond_29

    #@1c
    .line 524
    array-length v1, v0

    #@1d
    :goto_1d
    if-ge v2, v1, :cond_27

    #@1f
    aget-object v3, v0, v2

    #@21
    .line 525
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_1d

    #@27
    :cond_27
    const/4 v0, 0x1

    #@28
    return v0

    #@29
    :cond_29
    return v2
.end method

.method drain()V
    .registers 2

    #@0
    .line 325
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 326
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    #@9
    :cond_9
    return-void
.end method

.method drainLoop()V
    .registers 14

    #@0
    .line 331
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    #@2
    const/4 v1, 0x1

    #@3
    .line 334
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_a

    #@9
    return-void

    #@a
    .line 338
    :cond_a
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@c
    const/4 v3, 0x0

    #@d
    move v4, v3

    #@e
    if-eqz v2, :cond_24

    #@10
    .line 342
    :goto_10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_17

    #@16
    return-void

    #@17
    .line 346
    :cond_17
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    if-nez v5, :cond_1e

    #@1d
    goto :goto_24

    #@1e
    .line 352
    :cond_1e
    invoke-interface {v0, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@21
    add-int/lit8 v4, v4, 0x1

    #@23
    goto :goto_10

    #@24
    :cond_24
    :goto_24
    const v2, 0x7fffffff

    #@27
    if-eqz v4, :cond_31

    #@29
    .line 358
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@2b
    if-eq v3, v2, :cond_3

    #@2d
    .line 359
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeMore(I)V

    #@30
    goto :goto_3

    #@31
    .line 365
    :cond_31
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    #@33
    .line 366
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@35
    .line 367
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@37
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3a
    move-result-object v7

    #@3b
    check-cast v7, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@3d
    .line 368
    array-length v8, v7

    #@3e
    .line 371
    iget v9, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@40
    if-eq v9, v2, :cond_4e

    #@42
    .line 372
    monitor-enter p0

    #@43
    .line 373
    :try_start_43
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    #@45
    invoke-interface {v9}, Ljava/util/Queue;->size()I

    #@48
    move-result v9

    #@49
    .line 374
    monitor-exit p0

    #@4a
    goto :goto_4f

    #@4b
    :catchall_4b
    move-exception v0

    #@4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4b

    #@4d
    throw v0

    #@4e
    :cond_4e
    move v9, v3

    #@4f
    :goto_4f
    if-eqz v5, :cond_71

    #@51
    if-eqz v6, :cond_59

    #@53
    .line 377
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    #@56
    move-result v5

    #@57
    if-eqz v5, :cond_71

    #@59
    :cond_59
    if-nez v8, :cond_71

    #@5b
    if-nez v9, :cond_71

    #@5d
    .line 378
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@5f
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@62
    move-result-object v1

    #@63
    .line 379
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@65
    if-eq v1, v2, :cond_70

    #@67
    if-nez v1, :cond_6d

    #@69
    .line 381
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@6c
    goto :goto_70

    #@6d
    .line 383
    :cond_6d
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@70
    :cond_70
    :goto_70
    return-void

    #@71
    :cond_71
    if-eqz v8, :cond_108

    #@73
    .line 390
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    #@75
    .line 391
    iget v9, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    #@77
    if-le v8, v9, :cond_81

    #@79
    .line 393
    aget-object v10, v7, v9

    #@7b
    iget-wide v10, v10, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    #@7d
    cmp-long v10, v10, v5

    #@7f
    if-eqz v10, :cond_a0

    #@81
    :cond_81
    if-gt v8, v9, :cond_84

    #@83
    move v9, v3

    #@84
    :cond_84
    move v10, v3

    #@85
    :goto_85
    if-ge v10, v8, :cond_98

    #@87
    .line 399
    aget-object v11, v7, v9

    #@89
    iget-wide v11, v11, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    #@8b
    cmp-long v11, v11, v5

    #@8d
    if-nez v11, :cond_90

    #@8f
    goto :goto_98

    #@90
    :cond_90
    add-int/lit8 v9, v9, 0x1

    #@92
    if-ne v9, v8, :cond_95

    #@94
    move v9, v3

    #@95
    :cond_95
    add-int/lit8 v10, v10, 0x1

    #@97
    goto :goto_85

    #@98
    .line 408
    :cond_98
    :goto_98
    iput v9, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    #@9a
    .line 409
    aget-object v5, v7, v9

    #@9c
    iget-wide v5, v5, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    #@9e
    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    #@a0
    :cond_a0
    move v5, v3

    #@a1
    :goto_a1
    if-ge v5, v8, :cond_100

    #@a3
    .line 415
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    #@a6
    move-result v6

    #@a7
    if-eqz v6, :cond_aa

    #@a9
    return-void

    #@aa
    .line 420
    :cond_aa
    aget-object v6, v7, v9

    #@ac
    .line 421
    iget-object v10, v6, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@ae
    if-eqz v10, :cond_de

    #@b0
    .line 426
    :cond_b0
    :try_start_b0
    invoke-interface {v10}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@b3
    move-result-object v11
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_c1

    #@b4
    if-nez v11, :cond_b7

    #@b6
    goto :goto_de

    #@b7
    .line 446
    :cond_b7
    invoke-interface {v0, v11}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@ba
    .line 448
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    #@bd
    move-result v11

    #@be
    if-eqz v11, :cond_b0

    #@c0
    return-void

    #@c1
    :catchall_c1
    move-exception v10

    #@c2
    .line 428
    invoke-static {v10}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@c5
    .line 429
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    #@c8
    .line 430
    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@ca
    invoke-virtual {v11, v10}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@cd
    .line 431
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    #@d0
    move-result v10

    #@d1
    if-eqz v10, :cond_d4

    #@d3
    return-void

    #@d4
    .line 434
    :cond_d4
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    #@d7
    add-int/lit8 v4, v4, 0x1

    #@d9
    add-int/lit8 v9, v9, 0x1

    #@db
    if-ne v9, v8, :cond_fd

    #@dd
    goto :goto_fc

    #@de
    .line 454
    :cond_de
    :goto_de
    iget-boolean v10, v6, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    #@e0
    .line 455
    iget-object v11, v6, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@e2
    if-eqz v10, :cond_f8

    #@e4
    if-eqz v11, :cond_ec

    #@e6
    .line 456
    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@e9
    move-result v10

    #@ea
    if-eqz v10, :cond_f8

    #@ec
    .line 457
    :cond_ec
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    #@ef
    .line 458
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    #@f2
    move-result v6

    #@f3
    if-eqz v6, :cond_f6

    #@f5
    return-void

    #@f6
    :cond_f6
    add-int/lit8 v4, v4, 0x1

    #@f8
    :cond_f8
    add-int/lit8 v9, v9, 0x1

    #@fa
    if-ne v9, v8, :cond_fd

    #@fc
    :goto_fc
    move v9, v3

    #@fd
    :cond_fd
    add-int/lit8 v5, v5, 0x1

    #@ff
    goto :goto_a1

    #@100
    .line 469
    :cond_100
    iput v9, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    #@102
    .line 470
    aget-object v3, v7, v9

    #@104
    iget-wide v5, v3, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    #@106
    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    #@108
    :cond_108
    if-eqz v4, :cond_113

    #@10a
    .line 474
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@10c
    if-eq v3, v2, :cond_3

    #@10e
    .line 475
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeMore(I)V

    #@111
    goto/16 :goto_3

    #@113
    :cond_113
    neg-int v1, v1

    #@114
    .line 481
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->addAndGet(I)I

    #@117
    move-result v1

    #@118
    if-nez v1, :cond_3

    #@11a
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 321
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    #@2
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 299
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 302
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    #@8
    .line 303
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    #@b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 285
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 286
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    .line 289
    :cond_8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@a
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_17

    #@10
    const/4 p1, 0x1

    #@11
    .line 290
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    #@13
    .line 291
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    #@16
    goto :goto_1a

    #@17
    .line 293
    :cond_17
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1a
    :goto_1a
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
    .line 116
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 121
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->mapper:Lio/reactivex/functions/Function;

    #@7
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    const-string v0, "The mapper returned a null ObservableSource"

    #@d
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    check-cast p1, Lio/reactivex/ObservableSource;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_35

    #@13
    .line 129
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@15
    const v1, 0x7fffffff

    #@18
    if-eq v0, v1, :cond_31

    #@1a
    .line 130
    monitor-enter p0

    #@1b
    .line 131
    :try_start_1b
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    #@1d
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@1f
    if-ne v0, v1, :cond_28

    #@21
    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    #@23
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    #@26
    .line 133
    monitor-exit p0

    #@27
    return-void

    #@28
    :cond_28
    add-int/lit8 v0, v0, 0x1

    #@2a
    .line 135
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    #@2c
    .line 136
    monitor-exit p0

    #@2d
    goto :goto_31

    #@2e
    :catchall_2e
    move-exception p1

    #@2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_2e

    #@30
    throw p1

    #@31
    .line 139
    :cond_31
    :goto_31
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeInner(Lio/reactivex/ObservableSource;)V

    #@34
    return-void

    #@35
    :catchall_35
    move-exception p1

    #@36
    .line 123
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@39
    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@3b
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@3e
    .line 125
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    #@41
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 108
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 109
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method

.method removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    #@0
    .line 191
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@8
    .line 192
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
    .line 198
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
    .line 208
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@21
    goto :goto_31

    #@22
    :cond_22
    add-int/lit8 v5, v1, -0x1

    #@24
    .line 210
    new-array v5, v5, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@26
    .line 211
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    add-int/lit8 v2, v3, 0x1

    #@2b
    sub-int/2addr v1, v3

    #@2c
    sub-int/2addr v1, v4

    #@2d
    .line 212
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    move-object v1, v5

    #@31
    .line 214
    :goto_31
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@33
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    return-void
.end method

.method subscribeInner(Lio/reactivex/ObservableSource;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;)V"
        }
    .end annotation

    #@0
    .line 145
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    #@2
    if-eqz v0, :cond_30

    #@4
    .line 146
    check-cast p1, Ljava/util/concurrent/Callable;

    #@6
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->tryEmitScalar(Ljava/util/concurrent/Callable;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_45

    #@c
    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@e
    const v0, 0x7fffffff

    #@11
    if-eq p1, v0, :cond_45

    #@13
    .line 148
    monitor-enter p0

    #@14
    .line 149
    :try_start_14
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    #@16
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    check-cast p1, Lio/reactivex/ObservableSource;

    #@1c
    if-nez p1, :cond_25

    #@1e
    .line 151
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    #@20
    const/4 v1, 0x1

    #@21
    sub-int/2addr v0, v1

    #@22
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    #@24
    goto :goto_26

    #@25
    :cond_25
    const/4 v1, 0x0

    #@26
    .line 154
    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2d

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    #@2c
    goto :goto_45

    #@2d
    :catchall_2d
    move-exception p1

    #@2e
    .line 154
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    #@2f
    throw p1

    #@30
    .line 163
    :cond_30
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    #@32
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->uniqueId:J

    #@34
    const-wide/16 v3, 0x1

    #@36
    add-long/2addr v3, v1

    #@37
    iput-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->uniqueId:J

    #@39
    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;J)V

    #@3c
    .line 164
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->addInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_45

    #@42
    .line 165
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@45
    :cond_45
    :goto_45
    return-void
.end method

.method subscribeMore(I)V
    .registers 3

    #@0
    :goto_0
    add-int/lit8 v0, p1, -0x1

    #@2
    if-eqz p1, :cond_20

    #@4
    .line 491
    monitor-enter p0

    #@5
    .line 492
    :try_start_5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    #@7
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    check-cast p1, Lio/reactivex/ObservableSource;

    #@d
    if-nez p1, :cond_17

    #@f
    .line 494
    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    #@11
    add-int/lit8 p1, p1, -0x1

    #@13
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    #@15
    .line 495
    monitor-exit p0

    #@16
    goto :goto_1b

    #@17
    .line 497
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1d

    #@18
    .line 498
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeInner(Lio/reactivex/ObservableSource;)V

    #@1b
    :goto_1b
    move p1, v0

    #@1c
    goto :goto_0

    #@1d
    :catchall_1d
    move-exception p1

    #@1e
    .line 497
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    #@1f
    throw p1

    #@20
    :cond_20
    return-void
.end method

.method tryEmit(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    #@0
    .line 264
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->get()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1a

    #@6
    const/4 v0, 0x0

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->compareAndSet(II)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1a

    #@e
    .line 265
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    #@10
    invoke-interface {p2, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@13
    .line 266
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->decrementAndGet()I

    #@16
    move-result p1

    #@17
    if-nez p1, :cond_31

    #@19
    return-void

    #@1a
    .line 270
    :cond_1a
    iget-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@1c
    if-nez v0, :cond_27

    #@1e
    .line 272
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@20
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    #@22
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@25
    .line 273
    iput-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@27
    .line 275
    :cond_27
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@2a
    .line 276
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    #@2d
    move-result p1

    #@2e
    if-eqz p1, :cond_31

    #@30
    return-void

    #@31
    .line 280
    :cond_31
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    #@34
    return-void
.end method

.method tryEmitScalar(Ljava/util/concurrent/Callable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 223
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@4
    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_59

    #@5
    if-nez p1, :cond_8

    #@7
    return v0

    #@8
    .line 235
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->get()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x0

    #@d
    if-nez v1, :cond_21

    #@f
    invoke-virtual {p0, v2, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->compareAndSet(II)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_21

    #@15
    .line 236
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    #@17
    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@1a
    .line 237
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->decrementAndGet()I

    #@1d
    move-result p1

    #@1e
    if-nez p1, :cond_55

    #@20
    return v0

    #@21
    .line 241
    :cond_21
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@23
    if-nez v1, :cond_3d

    #@25
    .line 243
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@27
    const v3, 0x7fffffff

    #@2a
    if-ne v1, v3, :cond_34

    #@2c
    .line 244
    new-instance v1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2e
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    #@30
    invoke-direct {v1, v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@33
    goto :goto_3b

    #@34
    .line 246
    :cond_34
    new-instance v1, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@36
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    #@38
    invoke-direct {v1, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@3b
    .line 248
    :goto_3b
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@3d
    .line 251
    :cond_3d
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@40
    move-result p1

    #@41
    if-nez p1, :cond_4e

    #@43
    .line 252
    new-instance p1, Ljava/lang/IllegalStateException;

    #@45
    const-string v1, "Scalar queue full?!"

    #@47
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4a
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    #@4d
    return v0

    #@4e
    .line 255
    :cond_4e
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    #@51
    move-result p1

    #@52
    if-eqz p1, :cond_55

    #@54
    return v2

    #@55
    .line 259
    :cond_55
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    #@58
    return v0

    #@59
    :catchall_59
    move-exception p1

    #@5a
    .line 225
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@5d
    .line 226
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@5f
    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@62
    .line 227
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    #@65
    return v0
.end method
