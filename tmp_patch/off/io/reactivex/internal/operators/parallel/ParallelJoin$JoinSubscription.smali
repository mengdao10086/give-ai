.class final Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;
.super Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x579a0f4f7e6bd483L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;II)V"
        }
    .end annotation

    #@0
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;-><init>(Lorg/reactivestreams/Subscriber;II)V

    #@3
    return-void
.end method


# virtual methods
.method drain()V
    .registers 2

    #@0
    .line 204
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 208
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drainLoop()V

    #@a
    return-void
.end method

.method drainLoop()V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    .line 214
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    #@4
    .line 215
    array-length v2, v1

    #@5
    .line 216
    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@7
    const/4 v5, 0x1

    #@8
    .line 220
    :goto_8
    iget-object v6, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@d
    move-result-wide v6

    #@e
    const-wide/16 v8, 0x0

    #@10
    move-wide v10, v8

    #@11
    :cond_11
    cmp-long v12, v10, v6

    #@13
    if-eqz v12, :cond_67

    #@15
    .line 225
    iget-boolean v12, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelled:Z

    #@17
    if-eqz v12, :cond_1d

    #@19
    .line 226
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    #@1c
    return-void

    #@1d
    .line 230
    :cond_1d
    iget-object v12, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@1f
    invoke-virtual {v12}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@22
    move-result-object v12

    #@23
    check-cast v12, Ljava/lang/Throwable;

    #@25
    if-eqz v12, :cond_2e

    #@27
    .line 232
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    #@2a
    .line 233
    invoke-interface {v3, v12}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@2d
    return-void

    #@2e
    .line 237
    :cond_2e
    iget-object v12, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@30
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@33
    move-result v12

    #@34
    if-nez v12, :cond_38

    #@36
    const/4 v12, 0x1

    #@37
    goto :goto_39

    #@38
    :cond_38
    const/4 v12, 0x0

    #@39
    :goto_39
    const/4 v14, 0x0

    #@3a
    const/4 v15, 0x1

    #@3b
    .line 241
    :goto_3b
    array-length v4, v1

    #@3c
    if-ge v14, v4, :cond_5d

    #@3e
    .line 242
    aget-object v4, v1, v14

    #@40
    .line 243
    iget-object v13, v4, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@42
    if-eqz v13, :cond_5a

    #@44
    .line 245
    invoke-interface {v13}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    #@47
    move-result-object v13

    #@48
    if-eqz v13, :cond_5a

    #@4a
    .line 249
    invoke-interface {v3, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@4d
    .line 250
    invoke-virtual {v4}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->requestOne()V

    #@50
    const-wide/16 v16, 0x1

    #@52
    add-long v10, v10, v16

    #@54
    cmp-long v4, v10, v6

    #@56
    if-nez v4, :cond_59

    #@58
    goto :goto_67

    #@59
    :cond_59
    const/4 v15, 0x0

    #@5a
    :cond_5a
    add-int/lit8 v14, v14, 0x1

    #@5c
    goto :goto_3b

    #@5d
    :cond_5d
    if-eqz v12, :cond_65

    #@5f
    if-eqz v15, :cond_65

    #@61
    .line 259
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@64
    return-void

    #@65
    :cond_65
    if-eqz v15, :cond_11

    #@67
    :cond_67
    :goto_67
    cmp-long v4, v10, v6

    #@69
    if-nez v4, :cond_ac

    #@6b
    .line 269
    iget-boolean v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelled:Z

    #@6d
    if-eqz v4, :cond_73

    #@6f
    .line 270
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    #@72
    return-void

    #@73
    .line 274
    :cond_73
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@75
    invoke-virtual {v4}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@78
    move-result-object v4

    #@79
    check-cast v4, Ljava/lang/Throwable;

    #@7b
    if-eqz v4, :cond_84

    #@7d
    .line 276
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    #@80
    .line 277
    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@83
    return-void

    #@84
    .line 281
    :cond_84
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@86
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@89
    move-result v4

    #@8a
    if-nez v4, :cond_8e

    #@8c
    const/4 v4, 0x1

    #@8d
    goto :goto_8f

    #@8e
    :cond_8e
    const/4 v4, 0x0

    #@8f
    :goto_8f
    const/4 v12, 0x0

    #@90
    :goto_90
    if-ge v12, v2, :cond_a3

    #@92
    .line 286
    aget-object v13, v1, v12

    #@94
    .line 288
    iget-object v13, v13, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@96
    if-eqz v13, :cond_a0

    #@98
    .line 289
    invoke-interface {v13}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    #@9b
    move-result v13

    #@9c
    if-nez v13, :cond_a0

    #@9e
    const/4 v13, 0x0

    #@9f
    goto :goto_a4

    #@a0
    :cond_a0
    add-int/lit8 v12, v12, 0x1

    #@a2
    goto :goto_90

    #@a3
    :cond_a3
    const/4 v13, 0x1

    #@a4
    :goto_a4
    if-eqz v4, :cond_ac

    #@a6
    if-eqz v13, :cond_ac

    #@a8
    .line 296
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@ab
    return-void

    #@ac
    :cond_ac
    cmp-long v4, v10, v8

    #@ae
    if-eqz v4, :cond_bf

    #@b0
    const-wide v8, 0x7fffffffffffffffL

    #@b5
    cmp-long v4, v6, v8

    #@b7
    if-eqz v4, :cond_bf

    #@b9
    .line 302
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@bb
    neg-long v6, v10

    #@bc
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@bf
    .line 305
    :cond_bf
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->get()I

    #@c2
    move-result v4

    #@c3
    if-ne v4, v5, :cond_cd

    #@c5
    neg-int v4, v5

    #@c6
    .line 307
    invoke-virtual {v0, v4}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->addAndGet(I)I

    #@c9
    move-result v4

    #@ca
    if-nez v4, :cond_cd

    #@cc
    return-void

    #@cd
    :cond_cd
    move v5, v4

    #@ce
    goto/16 :goto_8
.end method

.method public onComplete()V
    .registers 2

    #@0
    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    .line 199
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drain()V

    #@8
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 186
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/util/AtomicThrowable;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 187
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    #@c
    .line 188
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drain()V

    #@f
    goto :goto_1b

    #@10
    .line 190
    :cond_10
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@12
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    if-eq p1, v0, :cond_1b

    #@18
    .line 191
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onNext(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    #@0
    .line 143
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->get()I

    #@3
    move-result v0

    #@4
    const-string v1, "Queue full?!"

    #@6
    if-nez v0, :cond_67

    #@8
    const/4 v0, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->compareAndSet(II)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_67

    #@10
    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@15
    move-result-wide v2

    #@16
    const-wide/16 v4, 0x0

    #@18
    cmp-long v0, v2, v4

    #@1a
    if-eqz v0, :cond_3b

    #@1c
    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@1e
    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@21
    .line 146
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@23
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@26
    move-result-wide v0

    #@27
    const-wide v2, 0x7fffffffffffffffL

    #@2c
    cmp-long p2, v0, v2

    #@2e
    if-eqz p2, :cond_35

    #@30
    .line 147
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@32
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    #@35
    :cond_35
    const-wide/16 v0, 0x1

    #@37
    .line 149
    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->request(J)V

    #@3a
    goto :goto_60

    #@3b
    .line 151
    :cond_3b
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@3e
    move-result-object p1

    #@3f
    .line 153
    invoke-interface {p1, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@42
    move-result p1

    #@43
    if-nez p1, :cond_60

    #@45
    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    #@48
    .line 155
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@4a
    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@4d
    .line 156
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@4f
    const/4 v0, 0x0

    #@50
    invoke-virtual {p2, v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@53
    move-result p2

    #@54
    if-eqz p2, :cond_5c

    #@56
    .line 157
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@58
    invoke-interface {p2, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@5b
    goto :goto_5f

    #@5c
    .line 159
    :cond_5c
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@5f
    :goto_5f
    return-void

    #@60
    .line 164
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->decrementAndGet()I

    #@63
    move-result p1

    #@64
    if-nez p1, :cond_84

    #@66
    return-void

    #@67
    .line 168
    :cond_67
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@6a
    move-result-object p1

    #@6b
    .line 170
    invoke-interface {p1, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@6e
    move-result p1

    #@6f
    if-nez p1, :cond_7d

    #@71
    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    #@74
    .line 172
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    #@76
    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    #@79
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->onError(Ljava/lang/Throwable;)V

    #@7c
    return-void

    #@7d
    .line 176
    :cond_7d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->getAndIncrement()I

    #@80
    move-result p1

    #@81
    if-eqz p1, :cond_84

    #@83
    return-void

    #@84
    .line 181
    :cond_84
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drainLoop()V

    #@87
    return-void
.end method
