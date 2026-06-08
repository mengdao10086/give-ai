.class final Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableZip.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableZip;
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
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x21ca630c444d714fL


# instance fields
.field volatile cancelled:Z

.field final current:[Ljava/lang/Object;

.field final delayErrors:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<",
            "TT;TR;>;"
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
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    #@0
    .line 105
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3
    .line 106
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    .line 107
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    #@7
    .line 108
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    #@9
    .line 110
    new-array p1, p3, [Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    #@b
    const/4 p2, 0x0

    #@c
    :goto_c
    if-ge p2, p3, :cond_18

    #@e
    .line 112
    new-instance p5, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    #@10
    invoke-direct {p5, p0, p4}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;I)V

    #@13
    aput-object p5, p1, p2

    #@15
    add-int/lit8 p2, p2, 0x1

    #@17
    goto :goto_c

    #@18
    .line 114
    :cond_18
    new-array p2, p3, [Ljava/lang/Object;

    #@1a
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->current:[Ljava/lang/Object;

    #@1c
    .line 115
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    #@1e
    .line 116
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@20
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@23
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@25
    .line 117
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    #@27
    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    #@2a
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@2c
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    .line 140
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    #@2
    if-nez v0, :cond_a

    #@4
    const/4 v0, 0x1

    #@5
    .line 141
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    #@7
    .line 143
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    #@a
    :cond_a
    return-void
.end method

.method cancelAll()V
    .registers 5

    #@0
    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

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
    .line 158
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->cancel()V

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_4

    #@e
    :cond_e
    return-void
.end method

.method drain()V
    .registers 19

    #@0
    move-object/from16 v1, p0

    #@2
    .line 164
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 168
    :cond_9
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->downstream:Lorg/reactivestreams/Subscriber;

    #@b
    .line 169
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    #@d
    .line 170
    array-length v4, v3

    #@e
    .line 171
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->current:[Ljava/lang/Object;

    #@10
    const/4 v7, 0x1

    #@11
    .line 177
    :cond_11
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@16
    move-result-wide v8

    #@17
    const-wide/16 v12, 0x0

    #@19
    :goto_19
    cmp-long v14, v8, v12

    #@1b
    const/4 v15, 0x0

    #@1c
    const/16 v16, 0x0

    #@1e
    if-eqz v14, :cond_d2

    #@20
    .line 182
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    #@22
    if-eqz v0, :cond_25

    #@24
    return-void

    #@25
    .line 186
    :cond_25
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    #@27
    if-nez v0, :cond_3e

    #@29
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@2b
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_3e

    #@31
    .line 187
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    #@34
    .line 188
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@36
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@39
    move-result-object v0

    #@3a
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@3d
    return-void

    #@3e
    :cond_3e
    move/from16 v0, v16

    #@40
    move v6, v0

    #@41
    :goto_41
    if-ge v6, v4, :cond_9e

    #@43
    .line 195
    aget-object v10, v3, v6

    #@45
    .line 196
    aget-object v11, v5, v6

    #@47
    if-nez v11, :cond_9b

    #@49
    .line 198
    :try_start_49
    iget-boolean v11, v10, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    #@4b
    .line 199
    iget-object v10, v10, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@4d
    if-eqz v10, :cond_54

    #@4f
    .line 201
    invoke-interface {v10}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@52
    move-result-object v10

    #@53
    goto :goto_55

    #@54
    :cond_54
    move-object v10, v15

    #@55
    :goto_55
    if-nez v10, :cond_5a

    #@57
    const/16 v17, 0x1

    #@59
    goto :goto_5c

    #@5a
    :cond_5a
    move/from16 v17, v16

    #@5c
    :goto_5c
    if-eqz v11, :cond_7b

    #@5e
    if-eqz v17, :cond_7b

    #@60
    .line 205
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    #@63
    .line 206
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@65
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@68
    move-result-object v0

    #@69
    check-cast v0, Ljava/lang/Throwable;

    #@6b
    if-eqz v0, :cond_77

    #@6d
    .line 208
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@6f
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@72
    move-result-object v0

    #@73
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@76
    goto :goto_7a

    #@77
    .line 210
    :cond_77
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@7a
    :goto_7a
    return-void

    #@7b
    :cond_7b
    if-nez v17, :cond_9a

    #@7d
    .line 215
    aput-object v10, v5, v6
    :try_end_7f
    .catchall {:try_start_49 .. :try_end_7f} :catchall_80

    #@7f
    goto :goto_9b

    #@80
    :catchall_80
    move-exception v0

    #@81
    .line 220
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@84
    .line 222
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@86
    invoke-virtual {v10, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@89
    .line 223
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    #@8b
    if-nez v0, :cond_9a

    #@8d
    .line 224
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    #@90
    .line 225
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@92
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@95
    move-result-object v0

    #@96
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@99
    return-void

    #@9a
    :cond_9a
    const/4 v0, 0x1

    #@9b
    :cond_9b
    :goto_9b
    add-int/lit8 v6, v6, 0x1

    #@9d
    goto :goto_41

    #@9e
    :cond_9e
    if-eqz v0, :cond_a1

    #@a0
    goto :goto_d2

    #@a1
    .line 240
    :cond_a1
    :try_start_a1
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    #@a3
    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a6
    move-result-object v6

    #@a7
    invoke-interface {v0, v6}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    move-result-object v0

    #@ab
    const-string v6, "The zipper returned a null value"

    #@ad
    invoke-static {v0, v6}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@b0
    move-result-object v0
    :try_end_b1
    .catchall {:try_start_a1 .. :try_end_b1} :catchall_bc

    #@b1
    .line 249
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@b4
    const-wide/16 v10, 0x1

    #@b6
    add-long/2addr v12, v10

    #@b7
    .line 253
    invoke-static {v5, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@ba
    goto/16 :goto_19

    #@bc
    :catchall_bc
    move-exception v0

    #@bd
    .line 242
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@c0
    .line 243
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    #@c3
    .line 244
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@c5
    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@c8
    .line 245
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@ca
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@cd
    move-result-object v0

    #@ce
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@d1
    return-void

    #@d2
    :cond_d2
    :goto_d2
    if-nez v14, :cond_14f

    #@d4
    .line 257
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    #@d6
    if-eqz v0, :cond_d9

    #@d8
    return-void

    #@d9
    .line 261
    :cond_d9
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    #@db
    if-nez v0, :cond_f2

    #@dd
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@df
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@e2
    move-result-object v0

    #@e3
    if-eqz v0, :cond_f2

    #@e5
    .line 262
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    #@e8
    .line 263
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@ea
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@ed
    move-result-object v0

    #@ee
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@f1
    return-void

    #@f2
    :cond_f2
    move/from16 v6, v16

    #@f4
    :goto_f4
    if-ge v6, v4, :cond_14f

    #@f6
    .line 268
    aget-object v0, v3, v6

    #@f8
    .line 269
    aget-object v10, v5, v6

    #@fa
    if-nez v10, :cond_14c

    #@fc
    .line 271
    :try_start_fc
    iget-boolean v10, v0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    #@fe
    .line 272
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    #@100
    if-eqz v0, :cond_107

    #@102
    .line 273
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    #@105
    move-result-object v0

    #@106
    goto :goto_108

    #@107
    :cond_107
    move-object v0, v15

    #@108
    :goto_108
    if-nez v0, :cond_10c

    #@10a
    const/4 v11, 0x1

    #@10b
    goto :goto_10e

    #@10c
    :cond_10c
    move/from16 v11, v16

    #@10e
    :goto_10e
    if-eqz v10, :cond_12d

    #@110
    if-eqz v11, :cond_12d

    #@112
    .line 277
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    #@115
    .line 278
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@117
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@11a
    move-result-object v0

    #@11b
    check-cast v0, Ljava/lang/Throwable;

    #@11d
    if-eqz v0, :cond_129

    #@11f
    .line 280
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@121
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@124
    move-result-object v0

    #@125
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@128
    goto :goto_12c

    #@129
    .line 282
    :cond_129
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@12c
    :goto_12c
    return-void

    #@12d
    :cond_12d
    if-nez v11, :cond_14c

    #@12f
    .line 287
    aput-object v0, v5, v6
    :try_end_131
    .catchall {:try_start_fc .. :try_end_131} :catchall_132

    #@131
    goto :goto_14c

    #@132
    :catchall_132
    move-exception v0

    #@133
    .line 290
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@136
    .line 291
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@138
    invoke-virtual {v10, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@13b
    .line 292
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    #@13d
    if-nez v0, :cond_14c

    #@13f
    .line 293
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    #@142
    .line 294
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@144
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    #@147
    move-result-object v0

    #@148
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@14b
    return-void

    #@14c
    :cond_14c
    :goto_14c
    add-int/lit8 v6, v6, 0x1

    #@14e
    goto :goto_f4

    #@14f
    :cond_14f
    const-wide/16 v10, 0x0

    #@151
    cmp-long v0, v12, v10

    #@153
    if-eqz v0, :cond_171

    #@155
    .line 305
    array-length v0, v3

    #@156
    move/from16 v6, v16

    #@158
    :goto_158
    if-ge v6, v0, :cond_162

    #@15a
    aget-object v10, v3, v6

    #@15c
    .line 306
    invoke-virtual {v10, v12, v13}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->request(J)V

    #@15f
    add-int/lit8 v6, v6, 0x1

    #@161
    goto :goto_158

    #@162
    :cond_162
    const-wide v10, 0x7fffffffffffffffL

    #@167
    cmp-long v0, v8, v10

    #@169
    if-eqz v0, :cond_171

    #@16b
    .line 310
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@16d
    neg-long v8, v12

    #@16e
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@171
    :cond_171
    neg-int v0, v7

    #@172
    .line 314
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->addAndGet(I)I

    #@175
    move-result v7

    #@176
    if-nez v7, :cond_11

    #@178
    return-void
.end method

.method error(Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #@0
    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@2
    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const/4 p2, 0x1

    #@9
    .line 149
    iput-boolean p2, p1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    #@b
    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->drain()V

    #@e
    goto :goto_12

    #@f
    .line 152
    :cond_f
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@12
    :goto_12
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 132
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@8
    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    #@b
    .line 134
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->drain()V

    #@e
    :cond_e
    return-void
.end method

.method subscribe([Lorg/reactivestreams/Publisher;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;I)V"
        }
    .end annotation

    #@0
    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    if-ge v1, p2, :cond_20

    #@5
    .line 123
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    #@7
    if-nez v2, :cond_20

    #@9
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    #@b
    if-nez v2, :cond_16

    #@d
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    #@f
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    if-eqz v2, :cond_16

    #@15
    goto :goto_20

    #@16
    .line 126
    :cond_16
    aget-object v2, p1, v1

    #@18
    aget-object v3, v0, v1

    #@1a
    invoke-interface {v2, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_3

    #@20
    :cond_20
    :goto_20
    return-void
.end method
