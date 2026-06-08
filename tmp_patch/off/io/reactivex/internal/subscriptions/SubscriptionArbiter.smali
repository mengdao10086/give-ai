.class public Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SubscriptionArbiter.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = -0x1e62bfbf4b5b12feL


# instance fields
.field actual:Lorg/reactivestreams/Subscription;

.field final cancelOnReplace:Z

.field volatile cancelled:Z

.field final missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

.field final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field final missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field requested:J

.field protected unbounded:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    #@0
    .line 64
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 65
    iput-boolean p1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelOnReplace:Z

    #@5
    .line 66
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@a
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    .line 67
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@e
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@11
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@13
    .line 68
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@15
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@18
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    #@1a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    .line 179
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    #@2
    if-nez v0, :cond_a

    #@4
    const/4 v0, 0x1

    #@5
    .line 180
    iput-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    #@7
    .line 182
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    #@a
    :cond_a
    return-void
.end method

.method final drain()V
    .registers 2

    #@0
    .line 187
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 190
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    #@a
    return-void
.end method

.method final drainLoop()V
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    const/4 v1, 0x1

    #@3
    const-wide/16 v2, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    move-wide v5, v2

    #@7
    move-object v7, v4

    #@8
    .line 201
    :cond_8
    iget-object v8, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v8

    #@e
    check-cast v8, Lorg/reactivestreams/Subscription;

    #@10
    if-eqz v8, :cond_1a

    #@12
    .line 204
    iget-object v8, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-virtual {v8, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v8

    #@18
    check-cast v8, Lorg/reactivestreams/Subscription;

    #@1a
    .line 207
    :cond_1a
    iget-object v9, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@1c
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@1f
    move-result-wide v9

    #@20
    cmp-long v11, v9, v2

    #@22
    if-eqz v11, :cond_2a

    #@24
    .line 209
    iget-object v9, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@26
    invoke-virtual {v9, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    #@29
    move-result-wide v9

    #@2a
    .line 212
    :cond_2a
    iget-object v11, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    #@2c
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@2f
    move-result-wide v11

    #@30
    cmp-long v13, v11, v2

    #@32
    if-eqz v13, :cond_3a

    #@34
    .line 214
    iget-object v11, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    #@36
    invoke-virtual {v11, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    #@39
    move-result-wide v11

    #@3a
    .line 217
    :cond_3a
    iget-object v13, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    #@3c
    .line 219
    iget-boolean v14, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    #@3e
    if-eqz v14, :cond_4d

    #@40
    if-eqz v13, :cond_47

    #@42
    .line 221
    invoke-interface {v13}, Lorg/reactivestreams/Subscription;->cancel()V

    #@45
    .line 222
    iput-object v4, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    #@47
    :cond_47
    if-eqz v8, :cond_8d

    #@49
    .line 225
    invoke-interface {v8}, Lorg/reactivestreams/Subscription;->cancel()V

    #@4c
    goto :goto_8d

    #@4d
    .line 228
    :cond_4d
    iget-wide v14, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    #@4f
    const-wide v16, 0x7fffffffffffffffL

    #@54
    cmp-long v18, v14, v16

    #@56
    if-eqz v18, :cond_6b

    #@58
    .line 230
    invoke-static {v14, v15, v9, v10}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    #@5b
    move-result-wide v14

    #@5c
    cmp-long v16, v14, v16

    #@5e
    if-eqz v16, :cond_69

    #@60
    sub-long/2addr v14, v11

    #@61
    cmp-long v11, v14, v2

    #@63
    if-gez v11, :cond_69

    #@65
    .line 235
    invoke-static {v14, v15}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportMoreProduced(J)V

    #@68
    move-wide v14, v2

    #@69
    .line 242
    :cond_69
    iput-wide v14, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    #@6b
    :cond_6b
    if-eqz v8, :cond_82

    #@6d
    if-eqz v13, :cond_76

    #@6f
    .line 246
    iget-boolean v9, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelOnReplace:Z

    #@71
    if-eqz v9, :cond_76

    #@73
    .line 247
    invoke-interface {v13}, Lorg/reactivestreams/Subscription;->cancel()V

    #@76
    .line 249
    :cond_76
    iput-object v8, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    #@78
    cmp-long v9, v14, v2

    #@7a
    if-eqz v9, :cond_8d

    #@7c
    .line 251
    invoke-static {v5, v6, v14, v15}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    #@7f
    move-result-wide v5

    #@80
    move-object v7, v8

    #@81
    goto :goto_8d

    #@82
    :cond_82
    if-eqz v13, :cond_8d

    #@84
    cmp-long v8, v9, v2

    #@86
    if-eqz v8, :cond_8d

    #@88
    .line 255
    invoke-static {v5, v6, v9, v10}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    #@8b
    move-result-wide v5

    #@8c
    move-object v7, v13

    #@8d
    :cond_8d
    :goto_8d
    neg-int v1, v1

    #@8e
    .line 260
    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->addAndGet(I)I

    #@91
    move-result v1

    #@92
    if-nez v1, :cond_8

    #@94
    cmp-long v1, v5, v2

    #@96
    if-eqz v1, :cond_9b

    #@98
    .line 263
    invoke-interface {v7, v5, v6}, Lorg/reactivestreams/Subscription;->request(J)V

    #@9b
    :cond_9b
    return-void
.end method

.method public final isCancelled()Z
    .registers 2

    #@0
    .line 283
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    #@2
    return v0
.end method

.method public final isUnbounded()Z
    .registers 2

    #@0
    .line 275
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    #@2
    return v0
.end method

.method public final produced(J)V
    .registers 7

    #@0
    .line 148
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 151
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_36

    #@b
    const/4 v0, 0x0

    #@c
    const/4 v1, 0x1

    #@d
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_36

    #@13
    .line 152
    iget-wide v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    #@15
    const-wide v2, 0x7fffffffffffffffL

    #@1a
    cmp-long v2, v0, v2

    #@1c
    if-eqz v2, :cond_2b

    #@1e
    sub-long/2addr v0, p1

    #@1f
    const-wide/16 p1, 0x0

    #@21
    cmp-long v2, v0, p1

    #@23
    if-gez v2, :cond_29

    #@25
    .line 157
    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportMoreProduced(J)V

    #@28
    move-wide v0, p1

    #@29
    .line 160
    :cond_29
    iput-wide v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    #@2b
    .line 163
    :cond_2b
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    #@2e
    move-result p1

    #@2f
    if-nez p1, :cond_32

    #@31
    return-void

    #@32
    .line 167
    :cond_32
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    #@35
    return-void

    #@36
    .line 172
    :cond_36
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    #@38
    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@3b
    .line 174
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    #@3e
    return-void
.end method

.method public final request(J)V
    .registers 9

    #@0
    .line 114
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_49

    #@6
    .line 115
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    #@8
    if-eqz v0, :cond_b

    #@a
    return-void

    #@b
    .line 118
    :cond_b
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_41

    #@11
    const/4 v0, 0x0

    #@12
    const/4 v1, 0x1

    #@13
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_41

    #@19
    .line 119
    iget-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    #@1b
    const-wide v4, 0x7fffffffffffffffL

    #@20
    cmp-long v0, v2, v4

    #@22
    if-eqz v0, :cond_30

    #@24
    .line 122
    invoke-static {v2, v3, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    #@27
    move-result-wide v2

    #@28
    .line 123
    iput-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    #@2a
    cmp-long v0, v2, v4

    #@2c
    if-nez v0, :cond_30

    #@2e
    .line 125
    iput-boolean v1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    #@30
    .line 128
    :cond_30
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    #@32
    .line 130
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_3b

    #@38
    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    #@3b
    :cond_3b
    if-eqz v0, :cond_40

    #@3d
    .line 135
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@40
    :cond_40
    return-void

    #@41
    .line 141
    :cond_41
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    #@43
    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@46
    .line 143
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    #@49
    :cond_49
    return-void
.end method

.method public final setSubscription(Lorg/reactivestreams/Subscription;)V
    .registers 6

    #@0
    .line 76
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 77
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@7
    return-void

    #@8
    :cond_8
    const-string v0, "s is null"

    #@a
    .line 81
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@d
    .line 83
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_3d

    #@13
    const/4 v0, 0x0

    #@14
    const/4 v1, 0x1

    #@15
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_3d

    #@1b
    .line 84
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    #@1d
    if-eqz v0, :cond_26

    #@1f
    .line 86
    iget-boolean v1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelOnReplace:Z

    #@21
    if-eqz v1, :cond_26

    #@23
    .line 87
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@26
    .line 90
    :cond_26
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    #@28
    .line 92
    iget-wide v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    #@2a
    .line 94
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_33

    #@30
    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    #@33
    :cond_33
    const-wide/16 v2, 0x0

    #@35
    cmp-long v2, v0, v2

    #@37
    if-eqz v2, :cond_3c

    #@39
    .line 99
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@3c
    :cond_3c
    return-void

    #@3d
    .line 105
    :cond_3d
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    #@3f
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object p1

    #@43
    check-cast p1, Lorg/reactivestreams/Subscription;

    #@45
    if-eqz p1, :cond_4e

    #@47
    .line 106
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelOnReplace:Z

    #@49
    if-eqz v0, :cond_4e

    #@4b
    .line 107
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@4e
    .line 109
    :cond_4e
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    #@51
    return-void
.end method
