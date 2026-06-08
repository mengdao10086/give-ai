.class final Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCombineLatest.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x76e7117251786db1L


# instance fields
.field active:I

.field volatile cancelled:Z

.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field complete:I

.field final delayError:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field latest:[Ljava/lang/Object;

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    #@0
    .line 96
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 88
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    #@5
    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@a
    .line 97
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->downstream:Lio/reactivex/Observer;

    #@c
    .line 98
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    #@e
    .line 99
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->delayError:Z

    #@10
    .line 100
    new-array p1, p3, [Ljava/lang/Object;

    #@12
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    #@14
    .line 101
    new-array p1, p3, [Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    #@16
    const/4 p2, 0x0

    #@17
    :goto_17
    if-ge p2, p3, :cond_23

    #@19
    .line 103
    new-instance p5, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    #@1b
    invoke-direct {p5, p0, p2}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;I)V

    #@1e
    aput-object p5, p1, p2

    #@20
    add-int/lit8 p2, p2, 0x1

    #@22
    goto :goto_17

    #@23
    .line 105
    :cond_23
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    #@25
    .line 106
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@27
    invoke-direct {p1, p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@2a
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@2c
    return-void
.end method


# virtual methods
.method cancelSources()V
    .registers 5

    #@0
    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v1, :cond_e

    #@6
    aget-object v3, v0, v2

    #@8
    .line 139
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->dispose()V

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_4

    #@e
    :cond_e
    return-void
.end method

.method clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 144
    monitor-enter p0

    #@1
    const/4 v0, 0x0

    #@2
    .line 145
    :try_start_2
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    #@4
    .line 146
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    #@5
    .line 147
    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@8
    return-void

    #@9
    :catchall_9
    move-exception p1

    #@a
    .line 146
    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    #@b
    throw p1
.end method

.method public dispose()V
    .registers 2

    #@0
    .line 123
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    #@2
    if-nez v0, :cond_15

    #@4
    const/4 v0, 0x1

    #@5
    .line 124
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    #@7
    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    #@a
    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->getAndIncrement()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_15

    #@10
    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@12
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    #@15
    :cond_15
    return-void
.end method

.method drain()V
    .registers 9

    #@0
    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 155
    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@9
    .line 156
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->downstream:Lio/reactivex/Observer;

    #@b
    .line 157
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->delayError:Z

    #@d
    const/4 v3, 0x1

    #@e
    move v4, v3

    #@f
    .line 163
    :cond_f
    :goto_f
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    #@11
    if-eqz v5, :cond_17

    #@13
    .line 164
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    #@16
    return-void

    #@17
    :cond_17
    if-nez v2, :cond_31

    #@19
    .line 168
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@1b
    invoke-virtual {v5}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    if-eqz v5, :cond_31

    #@21
    .line 169
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    #@24
    .line 170
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    #@27
    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@29
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@2c
    move-result-object v0

    #@2d
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@30
    return-void

    #@31
    .line 175
    :cond_31
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    #@33
    .line 176
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@36
    move-result-object v6

    #@37
    check-cast v6, [Ljava/lang/Object;

    #@39
    if-nez v6, :cond_3d

    #@3b
    move v7, v3

    #@3c
    goto :goto_3e

    #@3d
    :cond_3d
    const/4 v7, 0x0

    #@3e
    :goto_3e
    if-eqz v5, :cond_55

    #@40
    if-eqz v7, :cond_55

    #@42
    .line 180
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    #@45
    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@47
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@4a
    move-result-object v0

    #@4b
    if-nez v0, :cond_51

    #@4d
    .line 183
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    #@50
    goto :goto_54

    #@51
    .line 185
    :cond_51
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@54
    :goto_54
    return-void

    #@55
    :cond_55
    if-eqz v7, :cond_5f

    #@57
    neg-int v4, v4

    #@58
    .line 211
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->addAndGet(I)I

    #@5b
    move-result v4

    #@5c
    if-nez v4, :cond_f

    #@5e
    return-void

    #@5f
    .line 197
    :cond_5f
    :try_start_5f
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    #@61
    invoke-interface {v5, v6}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v5

    #@65
    const-string v6, "The combiner returned a null value"

    #@67
    invoke-static {v5, v6}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6a
    move-result-object v5
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_6f

    #@6b
    .line 208
    invoke-interface {v1, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@6e
    goto :goto_f

    #@6f
    :catchall_6f
    move-exception v2

    #@70
    .line 199
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@73
    .line 200
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@75
    invoke-virtual {v3, v2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@78
    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    #@7b
    .line 202
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    #@7e
    .line 203
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@80
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@83
    move-result-object v0

    #@84
    .line 204
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@87
    return-void
.end method

.method innerComplete(I)V
    .registers 5

    #@0
    .line 268
    monitor-enter p0

    #@1
    .line 269
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    #@3
    if-nez v0, :cond_7

    #@5
    .line 271
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 274
    :cond_7
    aget-object p1, v0, p1

    #@9
    const/4 v1, 0x1

    #@a
    if-nez p1, :cond_e

    #@c
    move p1, v1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    if-nez p1, :cond_19

    #@11
    .line 275
    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    #@13
    add-int/2addr v2, v1

    #@14
    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    #@16
    array-length v0, v0

    #@17
    if-ne v2, v0, :cond_1b

    #@19
    .line 276
    :cond_19
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    #@1b
    .line 278
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    #@1c
    if-eqz p1, :cond_21

    #@1e
    .line 280
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    #@21
    .line 282
    :cond_21
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->drain()V

    #@24
    return-void

    #@25
    :catchall_25
    move-exception p1

    #@26
    .line 278
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    #@27
    throw p1
.end method

.method innerError(ILjava/lang/Throwable;)V
    .registers 5

    #@0
    .line 242
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@2
    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_36

    #@8
    .line 244
    iget-boolean p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->delayError:Z

    #@a
    const/4 v0, 0x1

    #@b
    if-eqz p2, :cond_2d

    #@d
    .line 245
    monitor-enter p0

    #@e
    .line 246
    :try_start_e
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    #@10
    if-nez p2, :cond_14

    #@12
    .line 248
    monitor-exit p0

    #@13
    return-void

    #@14
    .line 251
    :cond_14
    aget-object p1, p2, p1

    #@16
    if-nez p1, :cond_1a

    #@18
    move p1, v0

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    :goto_1b
    if-nez p1, :cond_25

    #@1d
    .line 252
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    #@1f
    add-int/2addr v1, v0

    #@20
    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    #@22
    array-length p2, p2

    #@23
    if-ne v1, p2, :cond_27

    #@25
    .line 253
    :cond_25
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    #@27
    .line 255
    :cond_27
    monitor-exit p0

    #@28
    move v0, p1

    #@29
    goto :goto_2d

    #@2a
    :catchall_2a
    move-exception p1

    #@2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    #@2c
    throw p1

    #@2d
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_32

    #@2f
    .line 258
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    #@32
    .line 260
    :cond_32
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->drain()V

    #@35
    goto :goto_39

    #@36
    .line 262
    :cond_36
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@39
    :goto_39
    return-void
.end method

.method innerNext(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    #@0
    .line 220
    monitor-enter p0

    #@1
    .line 221
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    #@3
    if-nez v0, :cond_7

    #@5
    .line 223
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 225
    :cond_7
    aget-object v1, v0, p1

    #@9
    .line 226
    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->active:I

    #@b
    if-nez v1, :cond_11

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    .line 228
    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->active:I

    #@11
    .line 230
    :cond_11
    aput-object p2, v0, p1

    #@13
    .line 231
    array-length p1, v0

    #@14
    if-ne v2, p1, :cond_21

    #@16
    .line 232
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@18
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1b
    move-result-object p2

    #@1c
    invoke-virtual {p1, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    #@1f
    const/4 p1, 0x1

    #@20
    goto :goto_22

    #@21
    :cond_21
    const/4 p1, 0x0

    #@22
    .line 235
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_29

    #@23
    if-eqz p1, :cond_28

    #@25
    .line 237
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->drain()V

    #@28
    :cond_28
    return-void

    #@29
    :catchall_29
    move-exception p1

    #@2a
    .line 235
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    #@2b
    throw p1
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 134
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    #@2
    return v0
.end method

.method public subscribe([Lio/reactivex/ObservableSource;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    #@0
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    #@2
    .line 111
    array-length v1, v0

    #@3
    .line 112
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->downstream:Lio/reactivex/Observer;

    #@5
    invoke-interface {v2, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v1, :cond_1e

    #@b
    .line 114
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    #@d
    if-nez v3, :cond_1e

    #@f
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    #@11
    if-eqz v3, :cond_14

    #@13
    goto :goto_1e

    #@14
    .line 117
    :cond_14
    aget-object v3, p1, v2

    #@16
    aget-object v4, v0, v2

    #@18
    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@1b
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_9

    #@1e
    :cond_1e
    :goto_1e
    return-void
.end method
