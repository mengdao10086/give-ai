.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "ParallelRunOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunOnConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;I",
            "Lio/reactivex/internal/queue/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    #@0
    .line 334
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    #@3
    .line 335
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@5
    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 340
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_15

    #@8
    .line 341
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@c
    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@f
    .line 345
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->prefetch:I

    #@11
    int-to-long v0, v0

    #@12
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@15
    :cond_15
    return-void
.end method

.method public run()V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    .line 352
    iget v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->consumed:I

    #@4
    .line 353
    iget-object v2, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    #@6
    .line 354
    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@8
    .line 355
    iget v4, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->limit:I

    #@a
    const/4 v5, 0x1

    #@b
    move v6, v5

    #@c
    .line 359
    :cond_c
    :goto_c
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@e
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@11
    move-result-wide v7

    #@12
    const-wide/16 v9, 0x0

    #@14
    move-wide v11, v9

    #@15
    :cond_15
    :goto_15
    cmp-long v13, v11, v7

    #@17
    if-eqz v13, :cond_68

    #@19
    .line 363
    iget-boolean v14, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->cancelled:Z

    #@1b
    if-eqz v14, :cond_21

    #@1d
    .line 364
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    #@20
    return-void

    #@21
    .line 368
    :cond_21
    iget-boolean v14, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->done:Z

    #@23
    if-eqz v14, :cond_35

    #@25
    .line 371
    iget-object v15, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->error:Ljava/lang/Throwable;

    #@27
    if-eqz v15, :cond_35

    #@29
    .line 373
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    #@2c
    .line 375
    invoke-interface {v3, v15}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@2f
    .line 377
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@31
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@34
    return-void

    #@35
    .line 382
    :cond_35
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    #@38
    move-result-object v15

    #@39
    const/16 v16, 0x0

    #@3b
    if-nez v15, :cond_40

    #@3d
    move/from16 v17, v5

    #@3f
    goto :goto_42

    #@40
    :cond_40
    move/from16 v17, v16

    #@42
    :goto_42
    if-eqz v14, :cond_4f

    #@44
    if-eqz v17, :cond_4f

    #@46
    .line 387
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@49
    .line 389
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@4b
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@4e
    return-void

    #@4f
    :cond_4f
    if-eqz v17, :cond_52

    #@51
    goto :goto_68

    #@52
    .line 397
    :cond_52
    invoke-interface {v3, v15}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@55
    move-result v13

    #@56
    if-eqz v13, :cond_5b

    #@58
    const-wide/16 v13, 0x1

    #@5a
    add-long/2addr v11, v13

    #@5b
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    #@5d
    if-ne v1, v4, :cond_15

    #@5f
    .line 404
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@61
    int-to-long v14, v1

    #@62
    invoke-interface {v13, v14, v15}, Lorg/reactivestreams/Subscription;->request(J)V

    #@65
    move/from16 v1, v16

    #@67
    goto :goto_15

    #@68
    :cond_68
    :goto_68
    if-nez v13, :cond_95

    #@6a
    .line 409
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->cancelled:Z

    #@6c
    if-eqz v13, :cond_72

    #@6e
    .line 410
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    #@71
    return-void

    #@72
    .line 414
    :cond_72
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->done:Z

    #@74
    if-eqz v13, :cond_95

    #@76
    .line 415
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->error:Ljava/lang/Throwable;

    #@78
    if-eqz v13, :cond_86

    #@7a
    .line 417
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    #@7d
    .line 419
    invoke-interface {v3, v13}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@80
    .line 421
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@82
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@85
    return-void

    #@86
    .line 424
    :cond_86
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    #@89
    move-result v13

    #@8a
    if-eqz v13, :cond_95

    #@8c
    .line 425
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@8f
    .line 427
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@91
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@94
    return-void

    #@95
    :cond_95
    cmp-long v9, v11, v9

    #@97
    if-eqz v9, :cond_a8

    #@99
    const-wide v9, 0x7fffffffffffffffL

    #@9e
    cmp-long v7, v7, v9

    #@a0
    if-eqz v7, :cond_a8

    #@a2
    .line 434
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a4
    neg-long v8, v11

    #@a5
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@a8
    .line 437
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->get()I

    #@ab
    move-result v7

    #@ac
    if-ne v7, v6, :cond_b8

    #@ae
    .line 439
    iput v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->consumed:I

    #@b0
    neg-int v6, v6

    #@b1
    .line 440
    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->addAndGet(I)I

    #@b4
    move-result v6

    #@b5
    if-nez v6, :cond_c

    #@b7
    return-void

    #@b8
    :cond_b8
    move v6, v7

    #@b9
    goto/16 :goto_c
.end method
