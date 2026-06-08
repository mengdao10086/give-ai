.class final Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ParallelSortedJoin.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelSortedJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SortedJoinSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30527af9756114d9L


# instance fields
.field volatile cancelled:Z

.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final indexes:[I

.field final lists:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILjava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 80
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@f
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@16
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    #@18
    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@1a
    .line 82
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->comparator:Ljava/util/Comparator;

    #@1c
    .line 84
    new-array p1, p2, [Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    #@1e
    const/4 p3, 0x0

    #@1f
    :goto_1f
    if-ge p3, p2, :cond_2b

    #@21
    .line 87
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    #@23
    invoke-direct {v0, p0, p3}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;-><init>(Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;I)V

    #@26
    aput-object v0, p1, p3

    #@28
    add-int/lit8 p3, p3, 0x1

    #@2a
    goto :goto_1f

    #@2b
    .line 89
    :cond_2b
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    #@2d
    .line 90
    new-array p1, p2, [Ljava/util/List;

    #@2f
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    #@31
    .line 91
    new-array p1, p2, [I

    #@33
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->indexes:[I

    #@35
    .line 92
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #@37
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    #@3a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    #@0
    .line 107
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    #@2
    if-nez v0, :cond_16

    #@4
    const/4 v0, 0x1

    #@5
    .line 108
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    #@7
    .line 109
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    #@a
    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->getAndIncrement()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_16

    #@10
    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@16
    :cond_16
    return-void
.end method

.method cancelAll()V
    .registers 5

    #@0
    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

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
    .line 118
    invoke-virtual {v3}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;->cancel()V

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_4

    #@e
    :cond_e
    return-void
.end method

.method drain()V
    .registers 17

    #@0
    move-object/from16 v1, p0

    #@2
    .line 140
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 145
    :cond_9
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@b
    .line 146
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    #@d
    .line 147
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->indexes:[I

    #@f
    .line 148
    array-length v4, v0

    #@10
    const/4 v6, 0x1

    #@11
    .line 152
    :goto_11
    iget-object v7, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@13
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@16
    move-result-wide v7

    #@17
    const-wide/16 v11, 0x0

    #@19
    :goto_19
    cmp-long v13, v11, v7

    #@1b
    const/4 v15, 0x0

    #@1c
    if-eqz v13, :cond_a2

    #@1e
    .line 156
    iget-boolean v13, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    #@20
    if-eqz v13, :cond_26

    #@22
    .line 157
    invoke-static {v3, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@25
    return-void

    #@26
    .line 161
    :cond_26
    iget-object v13, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    #@28
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2b
    move-result-object v13

    #@2c
    check-cast v13, Ljava/lang/Throwable;

    #@2e
    if-eqz v13, :cond_3a

    #@30
    .line 163
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    #@33
    .line 164
    invoke-static {v3, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@36
    .line 165
    invoke-interface {v2, v13}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@39
    return-void

    #@3a
    :cond_3a
    const/4 v13, -0x1

    #@3b
    move-object v9, v15

    #@3c
    const/4 v14, 0x0

    #@3d
    :goto_3d
    if-ge v14, v4, :cond_8a

    #@3f
    .line 173
    aget-object v10, v3, v14

    #@41
    .line 174
    aget v5, v0, v14

    #@43
    .line 176
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@46
    move-result v15

    #@47
    if-eq v15, v5, :cond_86

    #@49
    if-nez v9, :cond_51

    #@4b
    .line 178
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v9

    #@4f
    :goto_4f
    move v13, v14

    #@50
    goto :goto_86

    #@51
    .line 181
    :cond_51
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v5

    #@55
    .line 186
    :try_start_55
    iget-object v10, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->comparator:Ljava/util/Comparator;

    #@57
    invoke-interface {v10, v9, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@5a
    move-result v10
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_64

    #@5b
    if-lez v10, :cond_5f

    #@5d
    const/4 v10, 0x1

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    const/4 v10, 0x0

    #@60
    :goto_60
    if-eqz v10, :cond_86

    #@62
    move-object v9, v5

    #@63
    goto :goto_4f

    #@64
    :catchall_64
    move-exception v0

    #@65
    .line 188
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@68
    .line 189
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    #@6b
    const/4 v4, 0x0

    #@6c
    .line 190
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@6f
    .line 191
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    #@71
    invoke-static {v3, v4, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@74
    move-result v3

    #@75
    if-nez v3, :cond_7a

    #@77
    .line 192
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7a
    .line 194
    :cond_7a
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    #@7c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Ljava/lang/Throwable;

    #@82
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@85
    return-void

    #@86
    :cond_86
    :goto_86
    add-int/lit8 v14, v14, 0x1

    #@88
    const/4 v15, 0x0

    #@89
    goto :goto_3d

    #@8a
    :cond_8a
    if-nez v9, :cond_94

    #@8c
    const/4 v5, 0x0

    #@8d
    .line 206
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@90
    .line 207
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@93
    return-void

    #@94
    .line 211
    :cond_94
    invoke-interface {v2, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@97
    .line 213
    aget v5, v0, v13

    #@99
    const/4 v9, 0x1

    #@9a
    add-int/2addr v5, v9

    #@9b
    aput v5, v0, v13

    #@9d
    const-wide/16 v13, 0x1

    #@9f
    add-long/2addr v11, v13

    #@a0
    goto/16 :goto_19

    #@a2
    :cond_a2
    const/4 v9, 0x1

    #@a3
    if-nez v13, :cond_e0

    #@a5
    .line 219
    iget-boolean v5, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    #@a7
    if-eqz v5, :cond_ae

    #@a9
    const/4 v5, 0x0

    #@aa
    .line 220
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@ad
    return-void

    #@ae
    :cond_ae
    const/4 v5, 0x0

    #@af
    .line 224
    iget-object v10, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    #@b1
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@b4
    move-result-object v10

    #@b5
    check-cast v10, Ljava/lang/Throwable;

    #@b7
    if-eqz v10, :cond_c3

    #@b9
    .line 226
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    #@bc
    .line 227
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@bf
    .line 228
    invoke-interface {v2, v10}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@c2
    return-void

    #@c3
    :cond_c3
    const/4 v5, 0x0

    #@c4
    :goto_c4
    if-ge v5, v4, :cond_d5

    #@c6
    .line 235
    aget v10, v0, v5

    #@c8
    aget-object v13, v3, v5

    #@ca
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@cd
    move-result v13

    #@ce
    if-eq v10, v13, :cond_d2

    #@d0
    const/4 v14, 0x0

    #@d1
    goto :goto_d6

    #@d2
    :cond_d2
    add-int/lit8 v5, v5, 0x1

    #@d4
    goto :goto_c4

    #@d5
    :cond_d5
    move v14, v9

    #@d6
    :goto_d6
    if-eqz v14, :cond_e0

    #@d8
    const/4 v5, 0x0

    #@d9
    .line 242
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@dc
    .line 243
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@df
    return-void

    #@e0
    :cond_e0
    const-wide/16 v13, 0x0

    #@e2
    cmp-long v5, v11, v13

    #@e4
    if-eqz v5, :cond_f5

    #@e6
    const-wide v13, 0x7fffffffffffffffL

    #@eb
    cmp-long v5, v7, v13

    #@ed
    if-eqz v5, :cond_f5

    #@ef
    .line 249
    iget-object v5, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@f1
    neg-long v7, v11

    #@f2
    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@f5
    .line 252
    :cond_f5
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->get()I

    #@f8
    move-result v5

    #@f9
    if-ne v5, v6, :cond_103

    #@fb
    neg-int v5, v6

    #@fc
    .line 254
    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->addAndGet(I)I

    #@ff
    move-result v5

    #@100
    if-nez v5, :cond_103

    #@102
    return-void

    #@103
    :cond_103
    move v6, v5

    #@104
    goto/16 :goto_11
.end method

.method innerError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_d

    #@9
    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    #@c
    goto :goto_18

    #@d
    .line 133
    :cond_d
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    if-eq p1, v0, :cond_18

    #@15
    .line 134
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@18
    :cond_18
    :goto_18
    return-void
.end method

.method innerNext(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    #@2
    aput-object p1, v0, p2

    #@4
    .line 124
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_f

    #@c
    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    #@f
    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 97
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_16

    #@6
    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@8
    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@b
    .line 99
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@10
    move-result p1

    #@11
    if-nez p1, :cond_16

    #@13
    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    #@16
    :cond_16
    return-void
.end method
