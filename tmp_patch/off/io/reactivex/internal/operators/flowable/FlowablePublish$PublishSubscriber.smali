.class final Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowablePublish.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscriber"
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
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field private static final serialVersionUID:J = -0x2cec618a478db7eL


# instance fields
.field final bufferSize:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sourceMode:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile terminalEvent:Ljava/lang/Object;

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
    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@3
    .line 156
    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@5
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@7
    .line 158
    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@9
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;I)V"
        }
    .end annotation

    #@0
    .line 184
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@11
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@13
    .line 186
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@15
    .line 187
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@1a
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1c
    .line 188
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    #@1e
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 285
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@8
    .line 288
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_e

    #@d
    return v2

    #@e
    .line 292
    :cond_e
    array-length v1, v0

    #@f
    add-int/lit8 v3, v1, 0x1

    #@11
    .line 294
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@13
    .line 295
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 296
    aput-object p1, v3, v1

    #@18
    .line 298
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

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

.method checkTerminated(Ljava/lang/Object;Z)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_51

    #@3
    .line 369
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    const/4 v2, 0x0

    #@8
    const/4 v3, 0x1

    #@9
    if-eqz v1, :cond_2a

    #@b
    if-eqz p2, :cond_51

    #@d
    .line 374
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    invoke-static {p1, p0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    .line 387
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@16
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@1c
    array-length p2, p1

    #@1d
    :goto_1d
    if-ge v0, p2, :cond_29

    #@1f
    aget-object v1, p1, v0

    #@21
    .line 388
    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    #@23
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1d

    #@29
    :cond_29
    return v3

    #@2a
    .line 394
    :cond_2a
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    #@2d
    move-result-object p1

    #@2e
    .line 397
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@30
    invoke-static {p2, p0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@33
    .line 401
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@35
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@37
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object p2

    #@3b
    check-cast p2, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@3d
    .line 402
    array-length v1, p2

    #@3e
    if-eqz v1, :cond_4d

    #@40
    .line 403
    array-length v1, p2

    #@41
    :goto_41
    if-ge v0, v1, :cond_50

    #@43
    aget-object v2, p2, v0

    #@45
    .line 404
    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    #@47
    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@4a
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_41

    #@4d
    .line 407
    :cond_4d
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@50
    :cond_50
    return v3

    #@51
    :cond_51
    return v0
.end method

.method dispatch()V
    .registers 26

    #@0
    move-object/from16 v1, p0

    #@2
    .line 425
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 433
    :cond_9
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    .line 437
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@11
    const/4 v3, 0x1

    #@12
    move-object v4, v0

    #@13
    move v5, v3

    #@14
    .line 449
    :cond_14
    :goto_14
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@16
    .line 456
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@18
    if-eqz v6, :cond_23

    #@1a
    .line 458
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_21

    #@20
    goto :goto_23

    #@21
    :cond_21
    const/4 v8, 0x0

    #@22
    goto :goto_24

    #@23
    :cond_23
    :goto_23
    move v8, v3

    #@24
    .line 462
    :goto_24
    invoke-virtual {v1, v0, v8}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2b

    #@2a
    return-void

    #@2b
    :cond_2b
    if-nez v8, :cond_159

    #@2d
    .line 471
    array-length v0, v4

    #@2e
    .line 480
    array-length v9, v4

    #@2f
    const/4 v12, 0x0

    #@30
    const/4 v13, 0x0

    #@31
    const-wide v14, 0x7fffffffffffffffL

    #@36
    :goto_36
    const-wide/high16 v16, -0x8000000000000000L

    #@38
    if-ge v12, v9, :cond_52

    #@3a
    aget-object v7, v4, v12

    #@3c
    .line 481
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    #@3f
    move-result-wide v18

    #@40
    cmp-long v16, v18, v16

    #@42
    if-eqz v16, :cond_4d

    #@44
    .line 485
    iget-wide v10, v7, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    #@46
    sub-long v10, v18, v10

    #@48
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@4b
    move-result-wide v14

    #@4c
    goto :goto_4f

    #@4d
    :cond_4d
    add-int/lit8 v13, v13, 0x1

    #@4f
    :goto_4f
    add-int/lit8 v12, v12, 0x1

    #@51
    goto :goto_36

    #@52
    :cond_52
    const-wide/16 v9, 0x1

    #@54
    if-ne v0, v13, :cond_90

    #@56
    .line 494
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@58
    .line 499
    :try_start_58
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@5b
    move-result-object v7
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5d

    #@5c
    goto :goto_74

    #@5d
    :catchall_5d
    move-exception v0

    #@5e
    move-object v6, v0

    #@5f
    .line 501
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@62
    .line 502
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@6a
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@6d
    .line 503
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    .line 504
    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@73
    const/4 v7, 0x0

    #@74
    :goto_74
    if-nez v7, :cond_78

    #@76
    move v7, v3

    #@77
    goto :goto_79

    #@78
    :cond_78
    const/4 v7, 0x0

    #@79
    .line 508
    :goto_79
    invoke-virtual {v1, v0, v7}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_80

    #@7f
    return-void

    #@80
    .line 512
    :cond_80
    iget v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    #@82
    if-eq v0, v3, :cond_14

    #@84
    .line 513
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@86
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@89
    move-result-object v0

    #@8a
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@8c
    invoke-interface {v0, v9, v10}, Lorg/reactivestreams/Subscription;->request(J)V

    #@8f
    goto :goto_14

    #@90
    :cond_90
    const/4 v11, 0x0

    #@91
    :goto_91
    int-to-long v12, v11

    #@92
    cmp-long v0, v12, v14

    #@94
    if-gez v0, :cond_13b

    #@96
    .line 523
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@98
    .line 527
    :try_start_98
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@9b
    move-result-object v8
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9d

    #@9c
    goto :goto_b4

    #@9d
    :catchall_9d
    move-exception v0

    #@9e
    move-object v8, v0

    #@9f
    .line 529
    invoke-static {v8}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@a2
    .line 530
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@a4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a7
    move-result-object v0

    #@a8
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@aa
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@ad
    .line 531
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@b0
    move-result-object v0

    #@b1
    .line 532
    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@b3
    const/4 v8, 0x0

    #@b4
    :goto_b4
    if-nez v8, :cond_b8

    #@b6
    move v7, v3

    #@b7
    goto :goto_b9

    #@b8
    :cond_b8
    const/4 v7, 0x0

    #@b9
    .line 538
    :goto_b9
    invoke-virtual {v1, v0, v7}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    #@bc
    move-result v0

    #@bd
    if-eqz v0, :cond_c0

    #@bf
    return-void

    #@c0
    :cond_c0
    if-eqz v7, :cond_c5

    #@c2
    move v8, v7

    #@c3
    goto/16 :goto_13b

    #@c5
    .line 546
    :cond_c5
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    move-result-object v0

    #@c9
    .line 551
    array-length v8, v4

    #@ca
    const/4 v12, 0x0

    #@cb
    const/4 v13, 0x0

    #@cc
    :goto_cc
    if-ge v12, v8, :cond_107

    #@ce
    aget-object v3, v4, v12

    #@d0
    .line 556
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    #@d3
    move-result-wide v22

    #@d4
    cmp-long v24, v22, v16

    #@d6
    if-eqz v24, :cond_f5

    #@d8
    const-wide v20, 0x7fffffffffffffffL

    #@dd
    cmp-long v22, v22, v20

    #@df
    if-eqz v22, :cond_eb

    #@e1
    move-object/from16 v22, v6

    #@e3
    move/from16 v23, v7

    #@e5
    .line 560
    iget-wide v6, v3, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    #@e7
    add-long/2addr v6, v9

    #@e8
    iput-wide v6, v3, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    #@ea
    goto :goto_ef

    #@eb
    :cond_eb
    move-object/from16 v22, v6

    #@ed
    move/from16 v23, v7

    #@ef
    .line 562
    :goto_ef
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    #@f1
    invoke-interface {v3, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@f4
    goto :goto_ff

    #@f5
    :cond_f5
    move-object/from16 v22, v6

    #@f7
    move/from16 v23, v7

    #@f9
    const-wide v20, 0x7fffffffffffffffL

    #@fe
    const/4 v13, 0x1

    #@ff
    :goto_ff
    add-int/lit8 v12, v12, 0x1

    #@101
    move-object/from16 v6, v22

    #@103
    move/from16 v7, v23

    #@105
    const/4 v3, 0x1

    #@106
    goto :goto_cc

    #@107
    :cond_107
    move-object/from16 v22, v6

    #@109
    move/from16 v23, v7

    #@10b
    const-wide v20, 0x7fffffffffffffffL

    #@110
    add-int/lit8 v11, v11, 0x1

    #@112
    .line 572
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@115
    move-result-object v0

    #@116
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@118
    if-nez v13, :cond_124

    #@11a
    if-eq v0, v4, :cond_11d

    #@11c
    goto :goto_124

    #@11d
    :cond_11d
    move-object/from16 v6, v22

    #@11f
    move/from16 v8, v23

    #@121
    const/4 v3, 0x1

    #@122
    goto/16 :goto_91

    #@124
    :cond_124
    :goto_124
    if-eqz v11, :cond_137

    #@126
    .line 578
    iget v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    #@128
    const/4 v4, 0x1

    #@129
    if-eq v3, v4, :cond_137

    #@12b
    .line 579
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@12d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@130
    move-result-object v3

    #@131
    check-cast v3, Lorg/reactivestreams/Subscription;

    #@133
    int-to-long v6, v11

    #@134
    invoke-interface {v3, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    #@137
    :cond_137
    move-object v4, v0

    #@138
    const/4 v3, 0x1

    #@139
    goto/16 :goto_14

    #@13b
    :cond_13b
    :goto_13b
    if-eqz v11, :cond_14e

    #@13d
    .line 589
    iget v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    #@13f
    const/4 v3, 0x1

    #@140
    if-eq v0, v3, :cond_14f

    #@142
    .line 590
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@144
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@147
    move-result-object v0

    #@148
    check-cast v0, Lorg/reactivestreams/Subscription;

    #@14a
    invoke-interface {v0, v12, v13}, Lorg/reactivestreams/Subscription;->request(J)V

    #@14d
    goto :goto_14f

    #@14e
    :cond_14e
    const/4 v3, 0x1

    #@14f
    :cond_14f
    :goto_14f
    const-wide/16 v6, 0x0

    #@151
    cmp-long v0, v14, v6

    #@153
    if-eqz v0, :cond_159

    #@155
    if-nez v8, :cond_159

    #@157
    goto/16 :goto_14

    #@159
    :cond_159
    neg-int v0, v5

    #@15a
    .line 601
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->addAndGet(I)I

    #@15d
    move-result v5

    #@15e
    if-nez v5, :cond_161

    #@160
    return-void

    #@161
    .line 607
    :cond_161
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@164
    move-result-object v0

    #@165
    move-object v4, v0

    #@166
    check-cast v4, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@168
    goto/16 :goto_14
.end method

.method public dispose()V
    .registers 3

    #@0
    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@8
    if-eq v0, v1, :cond_1f

    #@a
    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@12
    if-eq v0, v1, :cond_1f

    #@14
    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-static {v0, p0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@1c
    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@1f
    :cond_1f
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

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
    .line 267
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 268
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@a
    .line 271
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    #@d
    :cond_d
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 253
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 254
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@a
    .line 257
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    #@d
    goto :goto_11

    #@e
    .line 259
    :cond_e
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@11
    :goto_11
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
    .line 240
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    #@2
    if-nez v0, :cond_17

    #@4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@6
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_17

    #@c
    .line 241
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@e
    const-string v0, "Prefetch queue is full?!"

    #@10
    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->onError(Ljava/lang/Throwable;)V

    #@16
    return-void

    #@17
    .line 246
    :cond_17
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    #@1a
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    #@0
    .line 210
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_42

    #@8
    .line 211
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@a
    if-eqz v0, :cond_33

    #@c
    .line 213
    move-object v0, p1

    #@d
    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    #@f
    const/4 v1, 0x7

    #@10
    .line 215
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    if-ne v1, v2, :cond_25

    #@17
    .line 217
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    #@19
    .line 218
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@1b
    .line 219
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    #@21
    .line 220
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    #@24
    return-void

    #@25
    :cond_25
    const/4 v2, 0x2

    #@26
    if-ne v1, v2, :cond_33

    #@28
    .line 224
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    #@2a
    .line 225
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@2c
    .line 226
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    #@2e
    int-to-long v0, v0

    #@2f
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@32
    return-void

    #@33
    .line 231
    :cond_33
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    #@35
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    #@37
    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    #@3a
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@3c
    .line 233
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    #@3e
    int-to-long v0, v0

    #@3f
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@42
    :cond_42
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 315
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@8
    .line 316
    array-length v1, v0

    #@9
    if-nez v1, :cond_c

    #@b
    goto :goto_3d

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    move v3, v2

    #@e
    :goto_e
    if-ge v3, v1, :cond_1c

    #@10
    .line 325
    aget-object v4, v0, v3

    #@12
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_19

    #@18
    goto :goto_1d

    #@19
    :cond_19
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    const/4 v3, -0x1

    #@1d
    :goto_1d
    if-gez v3, :cond_20

    #@1f
    return-void

    #@20
    :cond_20
    const/4 v4, 0x1

    #@21
    if-ne v1, v4, :cond_26

    #@23
    .line 339
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@25
    goto :goto_35

    #@26
    :cond_26
    add-int/lit8 v5, v1, -0x1

    #@28
    .line 342
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@2a
    .line 344
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2d
    add-int/lit8 v2, v3, 0x1

    #@2f
    sub-int/2addr v1, v3

    #@30
    sub-int/2addr v1, v4

    #@31
    .line 346
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    move-object v1, v5

    #@35
    .line 349
    :goto_35
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@37
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_0

    #@3d
    :goto_3d
    return-void
.end method
