.class final Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableZip.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipCoordinator"
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
.field private static final serialVersionUID:J = 0x296842a962149c03L


# instance fields
.field volatile cancelled:Z

.field final delayError:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final row:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    #@0
    .line 89
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->downstream:Lio/reactivex/Observer;

    #@5
    .line 91
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    #@7
    .line 92
    new-array p1, p3, [Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    #@9
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    #@b
    .line 93
    new-array p1, p3, [Ljava/lang/Object;

    #@d
    check-cast p1, [Ljava/lang/Object;

    #@f
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->row:[Ljava/lang/Object;

    #@11
    .line 94
    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->delayError:Z

    #@13
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 1

    #@0
    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->clear()V

    #@3
    .line 132
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelSources()V

    #@6
    return-void
.end method

.method cancelSources()V
    .registers 5

    #@0
    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

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
    .line 137
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->dispose()V

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_4

    #@e
    :cond_e
    return-void
.end method

.method checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/Observer<",
            "-TR;>;Z",
            "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<",
            "**>;)Z"
        }
    .end annotation

    #@0
    .line 219
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_9

    #@5
    .line 220
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    #@8
    return v1

    #@9
    :cond_9
    if-eqz p1, :cond_38

    #@b
    if-eqz p4, :cond_20

    #@d
    if-eqz p2, :cond_38

    #@f
    .line 227
    iget-object p1, p5, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    #@11
    .line 228
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@13
    .line 229
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    #@16
    if-eqz p1, :cond_1c

    #@18
    .line 231
    invoke-interface {p3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@1b
    goto :goto_1f

    #@1c
    .line 233
    :cond_1c
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    #@1f
    :goto_1f
    return v1

    #@20
    .line 238
    :cond_20
    iget-object p1, p5, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    #@22
    if-eqz p1, :cond_2d

    #@24
    .line 240
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@26
    .line 241
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    #@29
    .line 242
    invoke-interface {p3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@2c
    return v1

    #@2d
    :cond_2d
    if-eqz p2, :cond_38

    #@2f
    .line 246
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@31
    .line 247
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    #@34
    .line 248
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    #@37
    return v1

    #@38
    :cond_38
    const/4 p1, 0x0

    #@39
    return p1
.end method

.method clear()V
    .registers 5

    #@0
    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v1, :cond_10

    #@6
    aget-object v3, v0, v2

    #@8
    .line 143
    iget-object v3, v3, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@a
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_4

    #@10
    :cond_10
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    .line 116
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@2
    if-nez v0, :cond_13

    #@4
    const/4 v0, 0x1

    #@5
    .line 117
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@7
    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelSources()V

    #@a
    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->getAndIncrement()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_13

    #@10
    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->clear()V

    #@13
    :cond_13
    return-void
.end method

.method public drain()V
    .registers 21

    #@0
    move-object/from16 v7, p0

    #@2
    .line 148
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 154
    :cond_9
    iget-object v0, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    #@b
    .line 155
    iget-object v8, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->downstream:Lio/reactivex/Observer;

    #@d
    .line 156
    iget-object v9, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->row:[Ljava/lang/Object;

    #@f
    .line 157
    iget-boolean v10, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->delayError:Z

    #@11
    const/4 v11, 0x1

    #@12
    move v12, v11

    #@13
    .line 164
    :cond_13
    :goto_13
    array-length v13, v0

    #@14
    const/4 v14, 0x0

    #@15
    move v15, v14

    #@16
    move/from16 v16, v15

    #@18
    move/from16 v17, v16

    #@1a
    :goto_1a
    if-ge v15, v13, :cond_5e

    #@1c
    aget-object v6, v0, v15

    #@1e
    .line 165
    aget-object v1, v9, v17

    #@20
    if-nez v1, :cond_46

    #@22
    .line 166
    iget-boolean v2, v6, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->done:Z

    #@24
    .line 167
    iget-object v1, v6, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@26
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    #@29
    move-result-object v18

    #@2a
    if-nez v18, :cond_2f

    #@2c
    move/from16 v19, v11

    #@2e
    goto :goto_31

    #@2f
    :cond_2f
    move/from16 v19, v14

    #@31
    :goto_31
    move-object/from16 v1, p0

    #@33
    move/from16 v3, v19

    #@35
    move-object v4, v8

    #@36
    move v5, v10

    #@37
    .line 170
    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_3e

    #@3d
    return-void

    #@3e
    :cond_3e
    if-nez v19, :cond_43

    #@40
    .line 174
    aput-object v18, v9, v17

    #@42
    goto :goto_59

    #@43
    :cond_43
    add-int/lit8 v16, v16, 0x1

    #@45
    goto :goto_59

    #@46
    .line 179
    :cond_46
    iget-boolean v1, v6, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->done:Z

    #@48
    if-eqz v1, :cond_59

    #@4a
    if-nez v10, :cond_59

    #@4c
    .line 180
    iget-object v1, v6, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    #@4e
    if-eqz v1, :cond_59

    #@50
    .line 182
    iput-boolean v11, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@52
    .line 183
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    #@55
    .line 184
    invoke-interface {v8, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@58
    return-void

    #@59
    :cond_59
    :goto_59
    add-int/lit8 v17, v17, 0x1

    #@5b
    add-int/lit8 v15, v15, 0x1

    #@5d
    goto :goto_1a

    #@5e
    :cond_5e
    if-eqz v16, :cond_68

    #@60
    neg-int v1, v12

    #@61
    .line 211
    invoke-virtual {v7, v1}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->addAndGet(I)I

    #@64
    move-result v12

    #@65
    if-nez v12, :cond_13

    #@67
    return-void

    #@68
    .line 198
    :cond_68
    :try_start_68
    iget-object v1, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    #@6a
    invoke-virtual {v9}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6d
    move-result-object v2

    #@6e
    invoke-interface {v1, v2}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v1

    #@72
    const-string v2, "The zipper returned a null value"

    #@74
    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@77
    move-result-object v1
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_80

    #@78
    .line 206
    invoke-interface {v8, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@7b
    const/4 v1, 0x0

    #@7c
    .line 208
    invoke-static {v9, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@7f
    goto :goto_13

    #@80
    :catchall_80
    move-exception v0

    #@81
    .line 200
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@84
    .line 201
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    #@87
    .line 202
    invoke-interface {v8, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@8a
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 127
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@2
    return v0
.end method

.method public subscribe([Lio/reactivex/ObservableSource;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;I)V"
        }
    .end annotation

    #@0
    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    #@2
    .line 99
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    move v3, v2

    #@5
    :goto_5
    if-ge v3, v1, :cond_11

    #@7
    .line 101
    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    #@9
    invoke-direct {v4, p0, p2}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;I)V

    #@c
    aput-object v4, v0, v3

    #@e
    add-int/lit8 v3, v3, 0x1

    #@10
    goto :goto_5

    #@11
    .line 104
    :cond_11
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->lazySet(I)V

    #@14
    .line 105
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->downstream:Lio/reactivex/Observer;

    #@16
    invoke-interface {p2, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@19
    :goto_19
    if-ge v2, v1, :cond_2a

    #@1b
    .line 107
    iget-boolean p2, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    #@1d
    if-eqz p2, :cond_20

    #@1f
    return-void

    #@20
    .line 110
    :cond_20
    aget-object p2, p1, v2

    #@22
    aget-object v3, v0, v2

    #@24
    invoke-interface {p2, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@27
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_19

    #@2a
    :cond_2a
    return-void
.end method
