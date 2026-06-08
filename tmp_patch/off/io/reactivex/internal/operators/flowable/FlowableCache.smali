.class public final Lio/reactivex/internal/operators/flowable/FlowableCache;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableCache.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCache$Node;,
        Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;


# instance fields
.field final capacityHint:I

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final head:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile size:J

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field tailOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@3
    .line 54
    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@5
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@7
    .line 60
    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@9
    return-void
.end method

.method public constructor <init>(Lio/reactivex/Flowable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 99
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    #@3
    .line 100
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->capacityHint:I

    #@5
    .line 101
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@a
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    .line 102
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@e
    invoke-direct {p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;-><init>(I)V

    #@11
    .line 103
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->head:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@13
    .line 104
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@15
    .line 105
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowableCache;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@19
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@1c
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 152
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@8
    .line 153
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    return-void

    #@d
    .line 156
    :cond_d
    array-length v1, v0

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    .line 159
    new-array v2, v2, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@12
    const/4 v3, 0x0

    #@13
    .line 160
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 161
    aput-object p1, v2, v1

    #@18
    .line 163
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    invoke-static {v1, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    return-void
.end method

.method cachedEventCount()J
    .registers 3

    #@0
    .line 142
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->size:J

    #@2
    return-wide v0
.end method

.method hasSubscribers()Z
    .registers 2

    #@0
    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

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

.method isConnected()Z
    .registers 2

    #@0
    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 338
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->done:Z

    #@3
    .line 339
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@d
    array-length v1, v0

    #@e
    const/4 v2, 0x0

    #@f
    :goto_f
    if-ge v2, v1, :cond_19

    #@11
    aget-object v3, v0, v2

    #@13
    .line 340
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableCache;->replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_f

    #@19
    :cond_19
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 324
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 325
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    .line 328
    :cond_8
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->error:Ljava/lang/Throwable;

    #@a
    const/4 p1, 0x1

    #@b
    .line 329
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->done:Z

    #@d
    .line 330
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@11
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@17
    array-length v0, p1

    #@18
    const/4 v1, 0x0

    #@19
    :goto_19
    if-ge v1, v0, :cond_23

    #@1b
    aget-object v2, p1, v1

    #@1d
    .line 331
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableCache;->replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_19

    #@23
    :cond_23
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 303
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tailOffset:I

    #@2
    .line 305
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->capacityHint:I

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x1

    #@6
    if-ne v0, v1, :cond_1a

    #@8
    .line 306
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@a
    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;-><init>(I)V

    #@d
    .line 307
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->values:[Ljava/lang/Object;

    #@f
    aput-object p1, v0, v2

    #@11
    .line 308
    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tailOffset:I

    #@13
    .line 309
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@15
    iput-object v1, p1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->next:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@17
    .line 310
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@19
    goto :goto_23

    #@1a
    .line 312
    :cond_1a
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@1c
    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->values:[Ljava/lang/Object;

    #@1e
    aput-object p1, v1, v0

    #@20
    add-int/2addr v0, v3

    #@21
    .line 313
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tailOffset:I

    #@23
    .line 315
    :goto_23
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->size:J

    #@25
    const-wide/16 v3, 0x1

    #@27
    add-long/2addr v0, v3

    #@28
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->size:J

    #@2a
    .line 316
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object p1

    #@30
    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@32
    array-length v0, p1

    #@33
    :goto_33
    if-ge v2, v0, :cond_3d

    #@35
    aget-object v1, p1, v2

    #@37
    .line 317
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableCache;->replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    #@3a
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_33

    #@3d
    :cond_3d
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    const-wide v0, 0x7fffffffffffffffL

    #@5
    .line 298
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@8
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 176
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@8
    .line 177
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
    .line 184
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
    .line 196
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@21
    goto :goto_31

    #@22
    :cond_22
    add-int/lit8 v5, v1, -0x1

    #@24
    .line 198
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@26
    .line 199
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    add-int/lit8 v2, v3, 0x1

    #@2b
    sub-int/2addr v1, v3

    #@2c
    sub-int/2addr v1, v4

    #@2d
    .line 200
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    move-object v1, v5

    #@31
    .line 203
    :goto_31
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@33
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    return-void
.end method

.method replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    .line 216
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->getAndIncrement()I

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_b

    #@a
    return-void

    #@b
    .line 223
    :cond_b
    iget-wide v2, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->index:J

    #@d
    .line 224
    iget v4, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->offset:I

    #@f
    .line 225
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@11
    .line 226
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@13
    .line 227
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@15
    .line 228
    iget v8, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->capacityHint:I

    #@17
    const/4 v9, 0x1

    #@18
    move v10, v9

    #@19
    .line 232
    :cond_19
    :goto_19
    iget-boolean v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->done:Z

    #@1b
    .line 234
    iget-wide v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->size:J

    #@1d
    cmp-long v12, v12, v2

    #@1f
    const/4 v13, 0x0

    #@20
    if-nez v12, :cond_24

    #@22
    move v12, v9

    #@23
    goto :goto_25

    #@24
    :cond_24
    move v12, v13

    #@25
    :goto_25
    const/4 v14, 0x0

    #@26
    if-eqz v11, :cond_38

    #@28
    if-eqz v12, :cond_38

    #@2a
    .line 239
    iput-object v14, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@2c
    .line 241
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->error:Ljava/lang/Throwable;

    #@2e
    if-eqz v1, :cond_34

    #@30
    .line 243
    invoke-interface {v7, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@33
    goto :goto_37

    #@34
    .line 245
    :cond_34
    invoke-interface {v7}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@37
    :goto_37
    return-void

    #@38
    :cond_38
    if-nez v12, :cond_5d

    #@3a
    .line 253
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3d
    move-result-wide v11

    #@3e
    const-wide/high16 v15, -0x8000000000000000L

    #@40
    cmp-long v15, v11, v15

    #@42
    if-nez v15, :cond_47

    #@44
    .line 257
    iput-object v14, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@46
    return-void

    #@47
    :cond_47
    cmp-long v11, v11, v2

    #@49
    if-eqz v11, :cond_5d

    #@4b
    if-ne v4, v8, :cond_51

    #@4d
    .line 266
    iget-object v4, v5, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->next:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@4f
    move-object v5, v4

    #@50
    move v4, v13

    #@51
    .line 272
    :cond_51
    iget-object v11, v5, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->values:[Ljava/lang/Object;

    #@53
    aget-object v11, v11, v4

    #@55
    invoke-interface {v7, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@58
    add-int/2addr v4, v9

    #@59
    const-wide/16 v11, 0x1

    #@5b
    add-long/2addr v2, v11

    #@5c
    goto :goto_19

    #@5d
    .line 285
    :cond_5d
    iput-wide v2, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->index:J

    #@5f
    .line 286
    iput v4, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->offset:I

    #@61
    .line 287
    iput-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    #@63
    neg-int v10, v10

    #@64
    .line 289
    invoke-virtual {v1, v10}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->addAndGet(I)I

    #@67
    move-result v10

    #@68
    if-nez v10, :cond_19

    #@6a
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 110
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    #@2
    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache;)V

    #@5
    .line 111
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@8
    .line 112
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache;->add(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    #@b
    .line 114
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@10
    move-result p1

    #@11
    if-nez p1, :cond_23

    #@13
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@15
    const/4 v1, 0x0

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@1a
    move-result p1

    #@1b
    if-eqz p1, :cond_23

    #@1d
    .line 115
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->source:Lio/reactivex/Flowable;

    #@1f
    invoke-virtual {p1, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    #@22
    goto :goto_26

    #@23
    .line 117
    :cond_23
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache;->replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    #@26
    :goto_26
    return-void
.end method
