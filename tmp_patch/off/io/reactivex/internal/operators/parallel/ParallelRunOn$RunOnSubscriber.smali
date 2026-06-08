.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "ParallelRunOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunOnSubscriber"
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
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I",
            "Lio/reactivex/internal/queue/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    #@0
    .line 210
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    #@3
    .line 211
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 216
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_15

    #@8
    .line 217
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 219
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@f
    .line 221
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->prefetch:I

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
    .line 228
    iget v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->consumed:I

    #@4
    .line 229
    iget-object v2, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    #@6
    .line 230
    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@8
    .line 231
    iget v4, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->limit:I

    #@a
    const/4 v5, 0x1

    #@b
    move v6, v5

    #@c
    .line 235
    :cond_c
    :goto_c
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

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
    if-eqz v13, :cond_65

    #@19
    .line 239
    iget-boolean v14, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->cancelled:Z

    #@1b
    if-eqz v14, :cond_21

    #@1d
    .line 240
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    #@20
    return-void

    #@21
    .line 244
    :cond_21
    iget-boolean v14, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->done:Z

    #@23
    if-eqz v14, :cond_35

    #@25
    .line 247
    iget-object v15, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->error:Ljava/lang/Throwable;

    #@27
    if-eqz v15, :cond_35

    #@29
    .line 249
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    #@2c
    .line 251
    invoke-interface {v3, v15}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@2f
    .line 253
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@31
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@34
    return-void

    #@35
    .line 258
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
    .line 263
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@49
    .line 265
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@4b
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@4e
    return-void

    #@4f
    :cond_4f
    if-eqz v17, :cond_52

    #@51
    goto :goto_65

    #@52
    .line 273
    :cond_52
    invoke-interface {v3, v15}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@55
    const-wide/16 v13, 0x1

    #@57
    add-long/2addr v11, v13

    #@58
    add-int/lit8 v1, v1, 0x1

    #@5a
    if-ne v1, v4, :cond_15

    #@5c
    .line 280
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@5e
    int-to-long v14, v1

    #@5f
    invoke-interface {v13, v14, v15}, Lorg/reactivestreams/Subscription;->request(J)V

    #@62
    move/from16 v1, v16

    #@64
    goto :goto_15

    #@65
    :cond_65
    :goto_65
    if-nez v13, :cond_92

    #@67
    .line 285
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->cancelled:Z

    #@69
    if-eqz v13, :cond_6f

    #@6b
    .line 286
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    #@6e
    return-void

    #@6f
    .line 290
    :cond_6f
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->done:Z

    #@71
    if-eqz v13, :cond_92

    #@73
    .line 291
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->error:Ljava/lang/Throwable;

    #@75
    if-eqz v13, :cond_83

    #@77
    .line 293
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    #@7a
    .line 295
    invoke-interface {v3, v13}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@7d
    .line 297
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@7f
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@82
    return-void

    #@83
    .line 300
    :cond_83
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    #@86
    move-result v13

    #@87
    if-eqz v13, :cond_92

    #@89
    .line 301
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@8c
    .line 303
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    #@8e
    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    #@91
    return-void

    #@92
    :cond_92
    cmp-long v9, v11, v9

    #@94
    if-eqz v9, :cond_a5

    #@96
    const-wide v9, 0x7fffffffffffffffL

    #@9b
    cmp-long v7, v7, v9

    #@9d
    if-eqz v7, :cond_a5

    #@9f
    .line 310
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a1
    neg-long v8, v11

    #@a2
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@a5
    .line 313
    :cond_a5
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->get()I

    #@a8
    move-result v7

    #@a9
    if-ne v7, v6, :cond_b5

    #@ab
    .line 315
    iput v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->consumed:I

    #@ad
    neg-int v6, v6

    #@ae
    .line 316
    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->addAndGet(I)I

    #@b1
    move-result v6

    #@b2
    if-nez v6, :cond_c

    #@b4
    return-void

    #@b5
    :cond_b5
    move v6, v7

    #@b6
    goto/16 :goto_c
.end method
