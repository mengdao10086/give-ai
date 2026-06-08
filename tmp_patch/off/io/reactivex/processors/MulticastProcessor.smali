.class public final Lio/reactivex/processors/MulticastProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "MulticastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lio/reactivex/annotations/BackpressureSupport;
    value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
.end annotation

.annotation runtime Lio/reactivex/annotations/SchedulerSupport;
    value = "none"
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;


# instance fields
.field final bufferSize:I

.field consumed:I

.field volatile done:Z

.field volatile error:Ljava/lang/Throwable;

.field fusionMode:I

.field final limit:I

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final refcount:Z

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@3
    .line 158
    sput-object v1, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@5
    new-array v0, v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@7
    .line 161
    sput-object v0, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@9
    return-void
.end method

.method constructor <init>(IZ)V
    .registers 4

    #@0
    .line 224
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    #@3
    const-string v0, "bufferSize"

    #@5
    .line 225
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@8
    .line 226
    iput p1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    #@a
    shr-int/lit8 v0, p1, 0x2

    #@c
    sub-int/2addr p1, v0

    #@d
    .line 227
    iput p1, p0, Lio/reactivex/processors/MulticastProcessor;->limit:I

    #@f
    .line 228
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@14
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16
    .line 229
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@18
    sget-object v0, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@1a
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@1d
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1f
    .line 230
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@21
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@24
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@26
    .line 231
    iput-boolean p2, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    #@28
    .line 232
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@2d
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2f
    return-void
.end method

.method public static create()Lio/reactivex/processors/MulticastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 172
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    #@2
    invoke-static {}, Lio/reactivex/processors/MulticastProcessor;->bufferSize()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    #@a
    return-object v0
.end method

.method public static create(I)Lio/reactivex/processors/MulticastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 198
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    #@6
    return-object v0
.end method

.method public static create(IZ)Lio/reactivex/processors/MulticastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IZ)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 213
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    #@2
    invoke-direct {v0, p0, p1}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    #@5
    return-object v0
.end method

.method public static create(Z)Lio/reactivex/processors/MulticastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 186
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    #@2
    invoke-static {}, Lio/reactivex/processors/MulticastProcessor;->bufferSize()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1, p0}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    #@9
    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 389
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@8
    .line 390
    sget-object v1, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_e

    #@d
    return v2

    #@e
    .line 393
    :cond_e
    array-length v1, v0

    #@f
    add-int/lit8 v3, v1, 0x1

    #@11
    .line 395
    new-array v3, v3, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@13
    .line 396
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 397
    aput-object p1, v3, v1

    #@18
    .line 398
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

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

.method drain()V
    .registers 21

    #@0
    move-object/from16 v1, p0

    #@2
    .line 450
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-void

    #@b
    .line 455
    :cond_b
    iget-object v2, v1, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    .line 456
    iget v0, v1, Lio/reactivex/processors/MulticastProcessor;->consumed:I

    #@f
    .line 457
    iget v3, v1, Lio/reactivex/processors/MulticastProcessor;->limit:I

    #@11
    .line 458
    iget v4, v1, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    #@13
    const/4 v5, 0x1

    #@14
    move v6, v5

    #@15
    .line 463
    :cond_15
    :goto_15
    iget-object v7, v1, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@17
    if-eqz v7, :cond_11f

    #@19
    .line 466
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1c
    move-result-object v8

    #@1d
    check-cast v8, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@1f
    .line 467
    array-length v9, v8

    #@20
    if-eqz v9, :cond_11f

    #@22
    .line 472
    array-length v9, v8

    #@23
    const-wide/16 v10, -0x1

    #@25
    move-wide v14, v10

    #@26
    const/4 v13, 0x0

    #@27
    :goto_27
    const-wide/16 v16, 0x0

    #@29
    if-ge v13, v9, :cond_4b

    #@2b
    aget-object v12, v8, v13

    #@2d
    .line 473
    invoke-virtual {v12}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    #@30
    move-result-wide v18

    #@31
    cmp-long v16, v18, v16

    #@33
    if-ltz v16, :cond_46

    #@35
    cmp-long v16, v14, v10

    #@37
    if-nez v16, :cond_3e

    #@39
    .line 476
    iget-wide v14, v12, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    #@3b
    sub-long v14, v18, v14

    #@3d
    goto :goto_46

    #@3e
    .line 478
    :cond_3e
    iget-wide v10, v12, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    #@40
    sub-long v10, v18, v10

    #@42
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@45
    move-result-wide v14

    #@46
    :cond_46
    :goto_46
    add-int/lit8 v13, v13, 0x1

    #@48
    const-wide/16 v10, -0x1

    #@4a
    goto :goto_27

    #@4b
    :cond_4b
    move v9, v0

    #@4c
    :cond_4c
    :goto_4c
    cmp-long v10, v14, v16

    #@4e
    if-lez v10, :cond_d6

    #@50
    .line 484
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@56
    .line 486
    sget-object v11, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@58
    if-ne v0, v11, :cond_5e

    #@5a
    .line 487
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@5d
    return-void

    #@5e
    :cond_5e
    if-eq v8, v0, :cond_62

    #@60
    goto/16 :goto_e8

    #@62
    .line 495
    :cond_62
    iget-boolean v0, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    #@64
    .line 500
    :try_start_64
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@67
    move-result-object v11
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_69

    #@68
    goto :goto_79

    #@69
    :catchall_69
    move-exception v0

    #@6a
    move-object v11, v0

    #@6b
    .line 502
    invoke-static {v11}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@6e
    .line 503
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@70
    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@73
    .line 506
    iput-object v11, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    #@75
    .line 507
    iput-boolean v5, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    #@77
    const/4 v11, 0x0

    #@78
    move v0, v5

    #@79
    :goto_79
    if-nez v11, :cond_7d

    #@7b
    move v12, v5

    #@7c
    goto :goto_7e

    #@7d
    :cond_7d
    const/4 v12, 0x0

    #@7e
    :goto_7e
    if-eqz v0, :cond_af

    #@80
    if-eqz v12, :cond_af

    #@82
    .line 512
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    #@84
    if-eqz v0, :cond_9a

    #@86
    .line 514
    sget-object v3, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@88
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    move-result-object v2

    #@8c
    check-cast v2, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@8e
    array-length v3, v2

    #@8f
    const/4 v12, 0x0

    #@90
    :goto_90
    if-ge v12, v3, :cond_ae

    #@92
    aget-object v4, v2, v12

    #@94
    .line 515
    invoke-virtual {v4, v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onError(Ljava/lang/Throwable;)V

    #@97
    add-int/lit8 v12, v12, 0x1

    #@99
    goto :goto_90

    #@9a
    .line 518
    :cond_9a
    sget-object v0, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@9c
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v0

    #@a0
    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@a2
    array-length v2, v0

    #@a3
    const/4 v12, 0x0

    #@a4
    :goto_a4
    if-ge v12, v2, :cond_ae

    #@a6
    aget-object v3, v0, v12

    #@a8
    .line 519
    invoke-virtual {v3}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onComplete()V

    #@ab
    add-int/lit8 v12, v12, 0x1

    #@ad
    goto :goto_a4

    #@ae
    :cond_ae
    return-void

    #@af
    :cond_af
    if-eqz v12, :cond_b2

    #@b1
    goto :goto_d6

    #@b2
    .line 529
    :cond_b2
    array-length v0, v8

    #@b3
    const/4 v10, 0x0

    #@b4
    :goto_b4
    if-ge v10, v0, :cond_be

    #@b6
    aget-object v12, v8, v10

    #@b8
    .line 530
    invoke-virtual {v12, v11}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onNext(Ljava/lang/Object;)V

    #@bb
    add-int/lit8 v10, v10, 0x1

    #@bd
    goto :goto_b4

    #@be
    :cond_be
    const-wide/16 v10, 0x1

    #@c0
    sub-long/2addr v14, v10

    #@c1
    if-eq v4, v5, :cond_4c

    #@c3
    add-int/lit8 v9, v9, 0x1

    #@c5
    if-ne v9, v3, :cond_4c

    #@c7
    .line 538
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@c9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@cc
    move-result-object v0

    #@cd
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@cf
    int-to-long v9, v3

    #@d0
    invoke-interface {v0, v9, v10}, Lorg/reactivestreams/Subscription;->request(J)V

    #@d3
    const/4 v9, 0x0

    #@d4
    goto/16 :goto_4c

    #@d6
    :cond_d6
    :goto_d6
    if-nez v10, :cond_11e

    #@d8
    .line 544
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@db
    move-result-object v0

    #@dc
    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@de
    .line 546
    sget-object v10, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@e0
    if-ne v0, v10, :cond_e6

    #@e2
    .line 547
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@e5
    return-void

    #@e6
    :cond_e6
    if-eq v8, v0, :cond_eb

    #@e8
    :goto_e8
    move v0, v9

    #@e9
    goto/16 :goto_15

    #@eb
    .line 555
    :cond_eb
    iget-boolean v0, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    #@ed
    if-eqz v0, :cond_11e

    #@ef
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@f2
    move-result v0

    #@f3
    if-eqz v0, :cond_11e

    #@f5
    .line 556
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    #@f7
    if-eqz v0, :cond_10b

    #@f9
    .line 558
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@fc
    move-result-object v2

    #@fd
    check-cast v2, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@ff
    array-length v3, v2

    #@100
    const/4 v12, 0x0

    #@101
    :goto_101
    if-ge v12, v3, :cond_11d

    #@103
    aget-object v4, v2, v12

    #@105
    .line 559
    invoke-virtual {v4, v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onError(Ljava/lang/Throwable;)V

    #@108
    add-int/lit8 v12, v12, 0x1

    #@10a
    goto :goto_101

    #@10b
    .line 562
    :cond_10b
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@10e
    move-result-object v0

    #@10f
    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@111
    array-length v2, v0

    #@112
    const/4 v12, 0x0

    #@113
    :goto_113
    if-ge v12, v2, :cond_11d

    #@115
    aget-object v3, v0, v12

    #@117
    .line 563
    invoke-virtual {v3}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onComplete()V

    #@11a
    add-int/lit8 v12, v12, 0x1

    #@11c
    goto :goto_113

    #@11d
    :cond_11d
    return-void

    #@11e
    :cond_11e
    move v0, v9

    #@11f
    .line 572
    :cond_11f
    iput v0, v1, Lio/reactivex/processors/MulticastProcessor;->consumed:I

    #@121
    .line 573
    iget-object v7, v1, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@123
    neg-int v6, v6

    #@124
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@127
    move-result v6

    #@128
    if-nez v6, :cond_15

    #@12a
    return-void
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 362
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return-object v0
.end method

.method public hasComplete()Z
    .registers 2

    #@0
    .line 357
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public hasSubscribers()Z
    .registers 2

    #@0
    .line 347
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

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
    .line 352
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 312
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_a

    #@9
    return v1

    #@a
    :cond_a
    const-string v0, "offer called with null. Null values are generally not allowed in 2.x operators and sources."

    #@c
    .line 315
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@f
    .line 316
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    #@11
    if-nez v0, :cond_20

    #@13
    .line 317
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@15
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_20

    #@1b
    .line 318
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    #@1e
    const/4 p1, 0x1

    #@1f
    return p1

    #@20
    :cond_20
    return v1
.end method

.method public onComplete()V
    .registers 4

    #@0
    .line 339
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 340
    iput-boolean v2, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    #@c
    .line 341
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    #@f
    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 327
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 328
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_17

    #@f
    .line 329
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    #@11
    .line 330
    iput-boolean v2, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    #@13
    .line 331
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    #@16
    goto :goto_1a

    #@17
    .line 333
    :cond_17
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1a
    :goto_1a
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
    .line 291
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 294
    :cond_9
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    #@b
    if-nez v0, :cond_28

    #@d
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@f
    .line 295
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@12
    .line 296
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@14
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@17
    move-result p1

    #@18
    if-nez p1, :cond_28

    #@1a
    .line 297
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@1c
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@1f
    .line 298
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@21
    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    #@24
    invoke-virtual {p0, p1}, Lio/reactivex/processors/MulticastProcessor;->onError(Ljava/lang/Throwable;)V

    #@27
    return-void

    #@28
    .line 302
    :cond_28
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    #@2b
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    #@0
    .line 261
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_3e

    #@8
    .line 262
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@a
    if-eqz v0, :cond_2f

    #@c
    .line 264
    move-object v0, p1

    #@d
    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@f
    const/4 v1, 0x3

    #@10
    .line 266
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    if-ne v1, v2, :cond_21

    #@17
    .line 268
    iput v1, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    #@19
    .line 269
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@1b
    .line 270
    iput-boolean v2, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    #@1d
    .line 271
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    #@20
    return-void

    #@21
    :cond_21
    const/4 v2, 0x2

    #@22
    if-ne v1, v2, :cond_2f

    #@24
    .line 275
    iput v1, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    #@26
    .line 276
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@28
    .line 278
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    #@2a
    int-to-long v0, v0

    #@2b
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@2e
    return-void

    #@2f
    .line 283
    :cond_2f
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@31
    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    #@33
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@36
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@38
    .line 285
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    #@3a
    int-to-long v0, v0

    #@3b
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@3e
    :cond_3e
    return-void
.end method

.method remove(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 407
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@8
    .line 408
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
    .line 415
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
    goto :goto_59

    #@1c
    :cond_1c
    const/4 v4, 0x1

    #@1d
    if-ne v1, v4, :cond_43

    #@1f
    .line 426
    iget-boolean v1, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    #@21
    if-eqz v1, :cond_38

    #@23
    .line 427
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@25
    sget-object v2, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@27
    invoke-static {v1, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 428
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2f
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@32
    .line 429
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@34
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@37
    goto :goto_59

    #@38
    .line 433
    :cond_38
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@3a
    sget-object v2, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@3c
    invoke-static {v1, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_0

    #@42
    goto :goto_59

    #@43
    :cond_43
    add-int/lit8 v5, v1, -0x1

    #@45
    .line 438
    new-array v5, v5, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@47
    .line 439
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4a
    add-int/lit8 v2, v3, 0x1

    #@4c
    sub-int/2addr v1, v3

    #@4d
    sub-int/2addr v1, v4

    #@4e
    .line 440
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@51
    .line 441
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@53
    invoke-static {v1, v0, v5}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_0

    #@59
    :goto_59
    return-void
.end method

.method public start()V
    .registers 3

    #@0
    .line 242
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    sget-object v1, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    #@4
    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_13

    #@a
    .line 243
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@c
    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    #@e
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@11
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@13
    :cond_13
    return-void
.end method

.method public startUnbounded()V
    .registers 3

    #@0
    .line 254
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    sget-object v1, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    #@4
    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_13

    #@a
    .line 255
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    #@c
    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    #@e
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    #@11
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@13
    :cond_13
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 367
    new-instance v0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    #@2
    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/MulticastProcessor;)V

    #@5
    .line 368
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@8
    .line 369
    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->add(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_20

    #@e
    .line 370
    invoke-virtual {v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    #@11
    move-result-wide v1

    #@12
    const-wide/high16 v3, -0x8000000000000000L

    #@14
    cmp-long p1, v1, v3

    #@16
    if-nez p1, :cond_1c

    #@18
    .line 371
    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->remove(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V

    #@1b
    goto :goto_37

    #@1c
    .line 373
    :cond_1c
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    #@1f
    goto :goto_37

    #@20
    .line 376
    :cond_20
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_2c

    #@28
    iget-boolean v0, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    #@2a
    if-nez v0, :cond_34

    #@2c
    .line 377
    :cond_2c
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    #@2e
    if-eqz v0, :cond_34

    #@30
    .line 379
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@33
    return-void

    #@34
    .line 383
    :cond_34
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@37
    :goto_37
    return-void
.end method
