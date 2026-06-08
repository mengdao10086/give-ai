.class final Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowablePublishAlt.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

.field private static final serialVersionUID:J = -0x17344e2bc8b53579L


# instance fields
.field final bufferSize:I

.field final connect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field consumed:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field sourceMode:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<",
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@3
    .line 175
    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@5
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@7
    .line 177
    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@9
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<",
            "TT;>;>;I)V"
        }
    .end annotation

    #@0
    .line 180
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 181
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    .line 182
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@a
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    .line 183
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@e
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@11
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@13
    .line 184
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    #@15
    .line 185
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@19
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@1c
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 381
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@8
    .line 384
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_e

    #@d
    return v2

    #@e
    .line 388
    :cond_e
    array-length v1, v0

    #@f
    add-int/lit8 v3, v1, 0x1

    #@11
    .line 390
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@13
    .line 391
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 392
    aput-object p1, v3, v1

    #@18
    .line 394
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

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

.method checkTerminated(ZZ)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_2c

    #@3
    if-eqz p2, :cond_2c

    #@5
    .line 352
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    #@7
    if-eqz p1, :cond_d

    #@9
    .line 355
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->signalError(Ljava/lang/Throwable;)V

    #@c
    goto :goto_2a

    #@d
    .line 357
    :cond_d
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@11
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@17
    array-length p2, p1

    #@18
    :goto_18
    if-ge v0, p2, :cond_2a

    #@1a
    aget-object v1, p1, v0

    #@1c
    .line 358
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->isCancelled()Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_27

    #@22
    .line 359
    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@24
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@27
    :cond_27
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_18

    #@2a
    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    #@2b
    return p1

    #@2c
    :cond_2c
    return v0
.end method

.method public dispose()V
    .registers 3

    #@0
    .line 191
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v0, p0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@12
    return-void
.end method

.method drain()V
    .registers 22

    #@0
    move-object/from16 v1, p0

    #@2
    .line 260
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 265
    :cond_9
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@b
    .line 266
    iget v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->consumed:I

    #@d
    .line 267
    iget v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    #@f
    shr-int/lit8 v4, v3, 0x2

    #@11
    sub-int/2addr v3, v4

    #@12
    .line 268
    iget v4, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->sourceMode:I

    #@14
    const/4 v6, 0x1

    #@15
    if-eq v4, v6, :cond_19

    #@17
    move v4, v6

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 v4, 0x0

    #@1a
    :goto_1a
    move v7, v6

    #@1b
    move/from16 v20, v2

    #@1d
    move-object v2, v0

    #@1e
    move/from16 v0, v20

    #@20
    :cond_20
    :goto_20
    if-eqz v2, :cond_d0

    #@22
    .line 276
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@24
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@27
    move-result-object v8

    #@28
    check-cast v8, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@2a
    .line 278
    array-length v9, v8

    #@2b
    const-wide v10, 0x7fffffffffffffffL

    #@30
    const/4 v12, 0x0

    #@31
    const/4 v13, 0x0

    #@32
    :goto_32
    if-ge v12, v9, :cond_4c

    #@34
    aget-object v14, v8, v12

    #@36
    .line 279
    invoke-virtual {v14}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->get()J

    #@39
    move-result-wide v15

    #@3a
    const-wide/high16 v17, -0x8000000000000000L

    #@3c
    cmp-long v17, v15, v17

    #@3e
    if-eqz v17, :cond_49

    #@40
    .line 282
    iget-wide v13, v14, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->emitted:J

    #@42
    sub-long v13, v15, v13

    #@44
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@47
    move-result-wide v10

    #@48
    move v13, v6

    #@49
    :cond_49
    add-int/lit8 v12, v12, 0x1

    #@4b
    goto :goto_32

    #@4c
    :cond_4c
    const-wide/16 v14, 0x0

    #@4e
    if-nez v13, :cond_51

    #@50
    move-wide v10, v14

    #@51
    :cond_51
    :goto_51
    cmp-long v9, v10, v14

    #@53
    if-eqz v9, :cond_c3

    #@55
    .line 291
    iget-boolean v9, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    #@57
    .line 295
    :try_start_57
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@5a
    move-result-object v12
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_aa

    #@5b
    if-nez v12, :cond_5f

    #@5d
    move v13, v6

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    const/4 v13, 0x0

    #@60
    .line 307
    :goto_60
    invoke-virtual {v1, v9, v13}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->checkTerminated(ZZ)Z

    #@63
    move-result v9

    #@64
    if-eqz v9, :cond_67

    #@66
    return-void

    #@67
    :cond_67
    if-eqz v13, :cond_6a

    #@69
    goto :goto_c3

    #@6a
    .line 315
    :cond_6a
    array-length v9, v8

    #@6b
    const/4 v13, 0x0

    #@6c
    :goto_6c
    const-wide/16 v16, 0x1

    #@6e
    if-ge v13, v9, :cond_88

    #@70
    aget-object v5, v8, v13

    #@72
    .line 316
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->isCancelled()Z

    #@75
    move-result v19

    #@76
    if-nez v19, :cond_83

    #@78
    .line 317
    iget-object v14, v5, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@7a
    invoke-interface {v14, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@7d
    .line 318
    iget-wide v14, v5, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->emitted:J

    #@7f
    add-long v14, v14, v16

    #@81
    iput-wide v14, v5, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->emitted:J

    #@83
    :cond_83
    add-int/lit8 v13, v13, 0x1

    #@85
    const-wide/16 v14, 0x0

    #@87
    goto :goto_6c

    #@88
    :cond_88
    if-eqz v4, :cond_9b

    #@8a
    add-int/lit8 v0, v0, 0x1

    #@8c
    if-ne v0, v3, :cond_9b

    #@8e
    .line 324
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@90
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@93
    move-result-object v0

    #@94
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@96
    int-to-long v12, v3

    #@97
    invoke-interface {v0, v12, v13}, Lorg/reactivestreams/Subscription;->request(J)V

    #@9a
    const/4 v0, 0x0

    #@9b
    :cond_9b
    sub-long v10, v10, v16

    #@9d
    .line 328
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@9f
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a2
    move-result-object v5

    #@a3
    if-eq v8, v5, :cond_a7

    #@a5
    goto/16 :goto_20

    #@a7
    :cond_a7
    const-wide/16 v14, 0x0

    #@a9
    goto :goto_51

    #@aa
    :catchall_aa
    move-exception v0

    #@ab
    move-object v3, v0

    #@ac
    .line 297
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@af
    .line 298
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@b1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@b4
    move-result-object v0

    #@b5
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@b7
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@ba
    .line 299
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    #@bd
    .line 300
    iput-boolean v6, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    #@bf
    .line 301
    invoke-virtual {v1, v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->signalError(Ljava/lang/Throwable;)V

    #@c2
    return-void

    #@c3
    .line 333
    :cond_c3
    :goto_c3
    iget-boolean v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    #@c5
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@c8
    move-result v8

    #@c9
    invoke-virtual {v1, v5, v8}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->checkTerminated(ZZ)Z

    #@cc
    move-result v5

    #@cd
    if-eqz v5, :cond_d0

    #@cf
    return-void

    #@d0
    .line 338
    :cond_d0
    iput v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->consumed:I

    #@d2
    neg-int v5, v7

    #@d3
    .line 339
    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->addAndGet(I)I

    #@d6
    move-result v7

    #@d7
    if-nez v7, :cond_da

    #@d9
    return-void

    #@da
    :cond_da
    if-nez v2, :cond_20

    #@dc
    .line 344
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@de
    goto/16 :goto_20
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@8
    if-ne v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public onComplete()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 255
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    #@3
    .line 256
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    #@6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 244
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 245
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    goto :goto_10

    #@8
    .line 247
    :cond_8
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    #@a
    const/4 p1, 0x1

    #@b
    .line 248
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    #@d
    .line 249
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    #@10
    :goto_10
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
    .line 233
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->sourceMode:I

    #@2
    if-nez v0, :cond_17

    #@4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@6
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_17

    #@c
    .line 234
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@e
    const-string v0, "Prefetch queue is full?!"

    #@10
    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->onError(Ljava/lang/Throwable;)V

    #@16
    return-void

    #@17
    .line 239
    :cond_17
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    #@1a
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    #@0
    .line 203
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_3e

    #@8
    .line 204
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@a
    if-eqz v0, :cond_2f

    #@c
    .line 206
    move-object v0, p1

    #@d
    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@f
    const/4 v1, 0x7

    #@10
    .line 208
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    if-ne v1, v2, :cond_21

    #@17
    .line 210
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->sourceMode:I

    #@19
    .line 211
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@1b
    .line 212
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    #@1d
    .line 213
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    #@20
    return-void

    #@21
    :cond_21
    const/4 v2, 0x2

    #@22
    if-ne v1, v2, :cond_2f

    #@24
    .line 217
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->sourceMode:I

    #@26
    .line 218
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@28
    .line 219
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    #@2a
    int-to-long v0, v0

    #@2b
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@2e
    return-void

    #@2f
    .line 224
    :cond_2f
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@31
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    #@33
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@36
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@38
    .line 226
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    #@3a
    int-to-long v0, v0

    #@3b
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@3e
    :cond_3e
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 407
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@8
    .line 408
    array-length v1, v0

    #@9
    if-nez v1, :cond_c

    #@b
    goto :goto_39

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    move v3, v2

    #@e
    :goto_e
    if-ge v3, v1, :cond_18

    #@10
    .line 417
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
    .line 431
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@21
    goto :goto_31

    #@22
    :cond_22
    add-int/lit8 v5, v1, -0x1

    #@24
    .line 434
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@26
    .line 436
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    add-int/lit8 v2, v3, 0x1

    #@2b
    sub-int/2addr v1, v3

    #@2c
    sub-int/2addr v1, v4

    #@2d
    .line 438
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    move-object v1, v5

    #@31
    .line 441
    :goto_31
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@33
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    :goto_39
    return-void
.end method

.method signalError(Ljava/lang/Throwable;)V
    .registers 7

    #@0
    .line 370
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@a
    array-length v1, v0

    #@b
    const/4 v2, 0x0

    #@c
    :goto_c
    if-ge v2, v1, :cond_1e

    #@e
    aget-object v3, v0, v2

    #@10
    .line 371
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->isCancelled()Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_1b

    #@16
    .line 372
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@18
    invoke-interface {v3, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@1b
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_c

    #@1e
    :cond_1e
    return-void
.end method
