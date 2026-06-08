.class final Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;
.super Ljava/lang/Object;
.source "ReplayProcessor.java"

# interfaces
.implements Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .registers 7

    #@0
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "maxSize"

    #@5
    .line 1053
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@8
    move-result p1

    #@9
    iput p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    #@b
    const-string p1, "maxAge"

    #@d
    .line 1054
    invoke-static {p2, p3, p1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    #@10
    move-result-wide p1

    #@11
    iput-wide p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@13
    const-string p1, "unit is null"

    #@15
    .line 1055
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object p1

    #@19
    check-cast p1, Ljava/util/concurrent/TimeUnit;

    #@1b
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@1d
    const-string p1, "scheduler is null"

    #@1f
    .line 1056
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object p1

    #@23
    check-cast p1, Lio/reactivex/Scheduler;

    #@25
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@27
    .line 1057
    new-instance p1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@29
    const/4 p2, 0x0

    #@2a
    const-wide/16 p3, 0x0

    #@2c
    invoke-direct {p1, p2, p3, p4}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@2f
    .line 1058
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@31
    .line 1059
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@33
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    #@0
    .line 1155
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 1156
    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    #@6
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 1148
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    #@3
    .line 1149
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    #@5
    const/4 p1, 0x1

    #@6
    .line 1150
    iput-boolean p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    #@8
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 1330
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 1211
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@2
    .line 1213
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@4
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@6
    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@9
    move-result-wide v1

    #@a
    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@c
    sub-long/2addr v1, v3

    #@d
    .line 1214
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@13
    :goto_13
    move-object v6, v3

    #@14
    move-object v3, v0

    #@15
    move-object v0, v6

    #@16
    if-eqz v0, :cond_26

    #@18
    .line 1216
    iget-wide v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    #@1a
    cmp-long v4, v4, v1

    #@1c
    if-lez v4, :cond_1f

    #@1e
    goto :goto_26

    #@1f
    .line 1221
    :cond_1f
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@25
    goto :goto_13

    #@26
    :cond_26
    :goto_26
    return-object v3
.end method

.method public getValue()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 1162
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@2
    .line 1165
    :goto_2
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@8
    if-nez v1, :cond_20

    #@a
    .line 1172
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@c
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@e
    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@11
    move-result-wide v1

    #@12
    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@14
    sub-long/2addr v1, v3

    #@15
    .line 1173
    iget-wide v3, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    #@17
    cmp-long v1, v3, v1

    #@19
    if-gez v1, :cond_1d

    #@1b
    const/4 v0, 0x0

    #@1c
    return-object v0

    #@1d
    .line 1177
    :cond_1d
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    #@1f
    return-object v0

    #@20
    :cond_20
    move-object v0, v1

    #@21
    goto :goto_2
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 1183
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@3
    move-result-object v0

    #@4
    .line 1184
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    if-nez v1, :cond_12

    #@c
    .line 1187
    array-length v0, p1

    #@d
    if-eqz v0, :cond_39

    #@f
    .line 1188
    aput-object v2, p1, v3

    #@11
    goto :goto_39

    #@12
    .line 1191
    :cond_12
    array-length v4, p1

    #@13
    if-ge v4, v1, :cond_25

    #@15
    .line 1192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@1c
    move-result-object p1

    #@1d
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@20
    move-result-object p1

    #@21
    check-cast p1, [Ljava/lang/Object;

    #@23
    check-cast p1, [Ljava/lang/Object;

    #@25
    :cond_25
    :goto_25
    if-eq v3, v1, :cond_34

    #@27
    .line 1197
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@2d
    .line 1198
    iget-object v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    #@2f
    aput-object v4, p1, v3

    #@31
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_25

    #@34
    .line 1202
    :cond_34
    array-length v0, p1

    #@35
    if-le v0, v1, :cond_39

    #@37
    .line 1203
    aput-object v2, p1, v1

    #@39
    :cond_39
    :goto_39
    return-object p1
.end method

.method public isDone()Z
    .registers 2

    #@0
    .line 1335
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    #@2
    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 1136
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@2
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@4
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@6
    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@9
    move-result-wide v1

    #@a
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@d
    .line 1137
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@f
    .line 1139
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@11
    .line 1140
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    #@17
    .line 1141
    invoke-virtual {p1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    #@1a
    .line 1143
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trim()V

    #@1d
    return-void
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 1229
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 1234
    :cond_7
    iget-object v0, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@9
    .line 1236
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@b
    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@d
    if-nez v1, :cond_13

    #@f
    .line 1238
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@12
    move-result-object v1

    #@13
    .line 1241
    :cond_13
    iget-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    #@15
    const/4 v4, 0x1

    #@16
    move v5, v4

    #@17
    .line 1245
    :cond_17
    iget-object v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@19
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@1c
    move-result-wide v6

    #@1d
    :goto_1d
    cmp-long v8, v2, v6

    #@1f
    const/4 v9, 0x0

    #@20
    if-eqz v8, :cond_57

    #@22
    .line 1248
    iget-boolean v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@24
    if-eqz v10, :cond_29

    #@26
    .line 1249
    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@28
    return-void

    #@29
    .line 1253
    :cond_29
    iget-boolean v10, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    #@2b
    .line 1254
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@2e
    move-result-object v11

    #@2f
    check-cast v11, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@31
    if-nez v11, :cond_35

    #@33
    move v12, v4

    #@34
    goto :goto_36

    #@35
    :cond_35
    const/4 v12, 0x0

    #@36
    :goto_36
    if-eqz v10, :cond_4a

    #@38
    if-eqz v12, :cond_4a

    #@3a
    .line 1258
    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@3c
    .line 1259
    iput-boolean v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@3e
    .line 1260
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    #@40
    if-nez p1, :cond_46

    #@42
    .line 1262
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@45
    goto :goto_49

    #@46
    .line 1264
    :cond_46
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@49
    :goto_49
    return-void

    #@4a
    :cond_4a
    if-eqz v12, :cond_4d

    #@4c
    goto :goto_57

    #@4d
    .line 1273
    :cond_4d
    iget-object v1, v11, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    #@4f
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@52
    const-wide/16 v8, 0x1

    #@54
    add-long/2addr v2, v8

    #@55
    move-object v1, v11

    #@56
    goto :goto_1d

    #@57
    :cond_57
    :goto_57
    if-nez v8, :cond_7a

    #@59
    .line 1279
    iget-boolean v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@5b
    if-eqz v6, :cond_60

    #@5d
    .line 1280
    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@5f
    return-void

    #@60
    .line 1284
    :cond_60
    iget-boolean v6, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    #@62
    if-eqz v6, :cond_7a

    #@64
    .line 1286
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@67
    move-result-object v6

    #@68
    if-nez v6, :cond_7a

    #@6a
    .line 1287
    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@6c
    .line 1288
    iput-boolean v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@6e
    .line 1289
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    #@70
    if-nez p1, :cond_76

    #@72
    .line 1291
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@75
    goto :goto_79

    #@76
    .line 1293
    :cond_76
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@79
    :goto_79
    return-void

    #@7a
    .line 1299
    :cond_7a
    iput-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@7c
    .line 1300
    iput-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    #@7e
    neg-int v5, v5

    #@7f
    .line 1302
    invoke-virtual {p1, v5}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    #@82
    move-result v5

    #@83
    if-nez v5, :cond_17

    #@85
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 1311
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;)I"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    const v1, 0x7fffffff

    #@4
    if-eq v0, v1, :cond_12

    #@6
    .line 1317
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@c
    if-nez p1, :cond_f

    #@e
    goto :goto_12

    #@f
    :cond_f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_1

    #@12
    :cond_12
    :goto_12
    return v0
.end method

.method trim()V
    .registers 8

    #@0
    .line 1063
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    #@2
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    #@4
    const/4 v2, 0x1

    #@5
    if-le v0, v1, :cond_14

    #@7
    sub-int/2addr v0, v2

    #@8
    .line 1064
    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    #@a
    .line 1065
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@c
    .line 1066
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@12
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@14
    .line 1068
    :cond_14
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@16
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@18
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@1b
    move-result-wide v0

    #@1c
    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@1e
    sub-long/2addr v0, v3

    #@1f
    .line 1070
    iget-object v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@21
    .line 1073
    :goto_21
    iget v4, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    #@23
    if-gt v4, v2, :cond_28

    #@25
    .line 1074
    iput-object v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@27
    goto :goto_3b

    #@28
    .line 1077
    :cond_28
    invoke-virtual {v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@2e
    if-nez v4, :cond_33

    #@30
    .line 1079
    iput-object v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@32
    goto :goto_3b

    #@33
    .line 1083
    :cond_33
    iget-wide v5, v4, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    #@35
    cmp-long v5, v5, v0

    #@37
    if-lez v5, :cond_3c

    #@39
    .line 1084
    iput-object v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@3b
    :goto_3b
    return-void

    #@3c
    .line 1089
    :cond_3c
    iget v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    #@3e
    sub-int/2addr v3, v2

    #@3f
    iput v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    #@41
    move-object v3, v4

    #@42
    goto :goto_21
.end method

.method trimFinal()V
    .registers 10

    #@0
    .line 1095
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@2
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@a
    sub-long/2addr v0, v2

    #@b
    .line 1097
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@d
    .line 1100
    :goto_d
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@13
    const-wide/16 v4, 0x0

    #@15
    const/4 v6, 0x0

    #@16
    if-nez v3, :cond_27

    #@18
    .line 1102
    iget-object v0, v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    #@1a
    if-eqz v0, :cond_24

    #@1c
    .line 1103
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@1e
    invoke-direct {v0, v6, v4, v5}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@21
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@23
    goto :goto_42

    #@24
    .line 1105
    :cond_24
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@26
    goto :goto_42

    #@27
    .line 1110
    :cond_27
    iget-wide v7, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    #@29
    cmp-long v7, v7, v0

    #@2b
    if-lez v7, :cond_43

    #@2d
    .line 1111
    iget-object v0, v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    #@2f
    if-eqz v0, :cond_40

    #@31
    .line 1112
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@33
    invoke-direct {v0, v6, v4, v5}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@36
    .line 1113
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->lazySet(Ljava/lang/Object;)V

    #@3d
    .line 1114
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@3f
    goto :goto_42

    #@40
    .line 1116
    :cond_40
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@42
    :goto_42
    return-void

    #@43
    :cond_43
    move-object v2, v3

    #@44
    goto :goto_d
.end method

.method public trimHead()V
    .registers 5

    #@0
    .line 1127
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@2
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    #@4
    if-eqz v0, :cond_19

    #@6
    .line 1128
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@8
    const/4 v1, 0x0

    #@9
    const-wide/16 v2, 0x0

    #@b
    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@e
    .line 1129
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@10
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->lazySet(Ljava/lang/Object;)V

    #@17
    .line 1130
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    #@19
    :cond_19
    return-void
.end method
