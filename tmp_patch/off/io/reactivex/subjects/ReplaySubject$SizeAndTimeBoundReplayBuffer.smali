.class final Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6fcd9699e42b76b5L


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .registers 7

    #@0
    .line 1053
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    const-string v0, "maxSize"

    #@5
    .line 1054
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@8
    move-result p1

    #@9
    iput p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    #@b
    const-string p1, "maxAge"

    #@d
    .line 1055
    invoke-static {p2, p3, p1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    #@10
    move-result-wide p1

    #@11
    iput-wide p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@13
    const-string p1, "unit is null"

    #@15
    .line 1056
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object p1

    #@19
    check-cast p1, Ljava/util/concurrent/TimeUnit;

    #@1b
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@1d
    const-string p1, "scheduler is null"

    #@1f
    .line 1057
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object p1

    #@23
    check-cast p1, Lio/reactivex/Scheduler;

    #@25
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@27
    .line 1058
    new-instance p1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@29
    const/4 p2, 0x0

    #@2a
    const-wide/16 p3, 0x0

    #@2c
    invoke-direct {p1, p2, p3, p4}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@2f
    .line 1059
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@31
    .line 1060
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@33
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 1130
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@4
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@6
    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@9
    move-result-wide v1

    #@a
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@d
    .line 1131
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@f
    .line 1133
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@11
    .line 1134
    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@17
    .line 1135
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->set(Ljava/lang/Object;)V

    #@1a
    .line 1137
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trim()V

    #@1d
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .registers 5

    #@0
    .line 1142
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2
    const-wide v1, 0x7fffffffffffffffL

    #@7
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@a
    .line 1143
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@c
    .line 1145
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@e
    .line 1146
    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@10
    const/4 v2, 0x1

    #@11
    add-int/2addr v1, v2

    #@12
    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@14
    .line 1147
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    #@17
    .line 1148
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    #@1a
    .line 1150
    iput-boolean v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    #@1c
    return-void
.end method

.method getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .line 1200
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2
    .line 1202
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@4
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@6
    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@9
    move-result-wide v1

    #@a
    iget-wide v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@c
    sub-long/2addr v1, v3

    #@d
    .line 1203
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

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
    .line 1205
    iget-wide v4, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    #@1a
    cmp-long v4, v4, v1

    #@1c
    if-lez v4, :cond_1f

    #@1e
    goto :goto_26

    #@1f
    .line 1210
    :cond_1f
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@25
    goto :goto_13

    #@26
    :cond_26
    :goto_26
    return-object v3
.end method

.method public getValue()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 1172
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2
    const/4 v1, 0x0

    #@3
    move-object v2, v1

    #@4
    .line 1175
    :goto_4
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@a
    if-nez v3, :cond_34

    #@c
    .line 1183
    iget-object v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@e
    iget-object v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@10
    invoke-virtual {v3, v4}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@13
    move-result-wide v3

    #@14
    iget-wide v5, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@16
    sub-long/2addr v3, v5

    #@17
    .line 1184
    iget-wide v5, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    #@19
    cmp-long v3, v5, v3

    #@1b
    if-gez v3, :cond_1e

    #@1d
    return-object v1

    #@1e
    .line 1188
    :cond_1e
    iget-object v0, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    #@20
    if-nez v0, :cond_23

    #@22
    return-object v1

    #@23
    .line 1192
    :cond_23
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_31

    #@29
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_30

    #@2f
    goto :goto_31

    #@30
    :cond_30
    return-object v0

    #@31
    .line 1193
    :cond_31
    :goto_31
    iget-object v0, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    #@33
    return-object v0

    #@34
    :cond_34
    move-object v2, v0

    #@35
    move-object v0, v3

    #@36
    goto :goto_4
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 1218
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@3
    move-result-object v0

    #@4
    .line 1219
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    if-nez v1, :cond_12

    #@c
    .line 1222
    array-length v0, p1

    #@d
    if-eqz v0, :cond_39

    #@f
    .line 1223
    aput-object v2, p1, v3

    #@11
    goto :goto_39

    #@12
    .line 1226
    :cond_12
    array-length v4, p1

    #@13
    if-ge v4, v1, :cond_25

    #@15
    .line 1227
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
    .line 1232
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2d
    .line 1233
    iget-object v4, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    #@2f
    aput-object v4, p1, v3

    #@31
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_25

    #@34
    .line 1237
    :cond_34
    array-length v0, p1

    #@35
    if-le v0, v1, :cond_39

    #@37
    .line 1238
    aput-object v2, p1, v1

    #@39
    :cond_39
    :goto_39
    return-object p1
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 1248
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 1253
    :cond_7
    iget-object v0, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    #@9
    .line 1255
    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@b
    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@d
    const/4 v2, 0x1

    #@e
    if-nez v1, :cond_14

    #@10
    .line 1257
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@13
    move-result-object v1

    #@14
    :cond_14
    move v3, v2

    #@15
    .line 1262
    :cond_15
    :goto_15
    iget-boolean v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@17
    const/4 v5, 0x0

    #@18
    if-eqz v4, :cond_1d

    #@1a
    .line 1263
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@1c
    return-void

    #@1d
    .line 1268
    :cond_1d
    :goto_1d
    iget-boolean v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@1f
    if-eqz v4, :cond_24

    #@21
    .line 1269
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@23
    return-void

    #@24
    .line 1273
    :cond_24
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2a
    if-nez v4, :cond_3d

    #@2c
    .line 1300
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    if-eqz v4, :cond_33

    #@32
    goto :goto_15

    #@33
    .line 1304
    :cond_33
    iput-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@35
    neg-int v3, v3

    #@36
    .line 1306
    invoke-virtual {p1, v3}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_15

    #@3c
    return-void

    #@3d
    .line 1279
    :cond_3d
    iget-object v1, v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    #@3f
    .line 1281
    iget-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    #@41
    if-eqz v6, :cond_5f

    #@43
    .line 1282
    invoke-virtual {v4}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@46
    move-result-object v6

    #@47
    if-nez v6, :cond_5f

    #@49
    .line 1284
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_53

    #@4f
    .line 1285
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@52
    goto :goto_5a

    #@53
    .line 1287
    :cond_53
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    #@56
    move-result-object v1

    #@57
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@5a
    .line 1289
    :goto_5a
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@5c
    .line 1290
    iput-boolean v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@5e
    return-void

    #@5f
    .line 1295
    :cond_5f
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@62
    move-object v1, v4

    #@63
    goto :goto_1d
.end method

.method public size()I
    .registers 2

    #@0
    .line 1315
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    const v1, 0x7fffffff

    #@4
    if-eq v0, v1, :cond_23

    #@6
    .line 1321
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@c
    if-nez v1, :cond_1f

    #@e
    .line 1323
    iget-object p1, p1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    #@10
    .line 1324
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1c

    #@16
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_23

    #@1c
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_23

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    #@21
    move-object p1, v1

    #@22
    goto :goto_1

    #@23
    :cond_23
    :goto_23
    return v0
.end method

.method trim()V
    .registers 8

    #@0
    .line 1064
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@2
    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    #@4
    const/4 v2, 0x1

    #@5
    if-le v0, v1, :cond_14

    #@7
    sub-int/2addr v0, v2

    #@8
    .line 1065
    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@a
    .line 1066
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@c
    .line 1067
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@12
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@14
    .line 1069
    :cond_14
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@16
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@18
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@1b
    move-result-wide v0

    #@1c
    iget-wide v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@1e
    sub-long/2addr v0, v3

    #@1f
    .line 1071
    iget-object v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@21
    .line 1074
    :goto_21
    iget v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@23
    if-gt v4, v2, :cond_28

    #@25
    .line 1075
    iput-object v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@27
    goto :goto_3b

    #@28
    .line 1078
    :cond_28
    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2e
    if-nez v4, :cond_33

    #@30
    .line 1080
    iput-object v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@32
    goto :goto_3b

    #@33
    .line 1084
    :cond_33
    iget-wide v5, v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    #@35
    cmp-long v5, v5, v0

    #@37
    if-lez v5, :cond_3c

    #@39
    .line 1085
    iput-object v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@3b
    :goto_3b
    return-void

    #@3c
    .line 1090
    :cond_3c
    iget v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@3e
    sub-int/2addr v3, v2

    #@3f
    iput v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    #@41
    move-object v3, v4

    #@42
    goto :goto_21
.end method

.method trimFinal()V
    .registers 11

    #@0
    .line 1096
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@2
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    iget-wide v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@a
    sub-long/2addr v0, v2

    #@b
    .line 1098
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@d
    .line 1101
    :goto_d
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@13
    .line 1102
    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    const-wide/16 v5, 0x0

    #@19
    const/4 v7, 0x0

    #@1a
    if-nez v4, :cond_32

    #@1c
    .line 1103
    iget-object v0, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    #@1e
    if-eqz v0, :cond_2f

    #@20
    .line 1104
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@22
    invoke-direct {v0, v7, v5, v6}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@25
    .line 1105
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    #@2c
    .line 1106
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2e
    goto :goto_4d

    #@2f
    .line 1108
    :cond_2f
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@31
    goto :goto_4d

    #@32
    .line 1113
    :cond_32
    iget-wide v8, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    #@34
    cmp-long v4, v8, v0

    #@36
    if-lez v4, :cond_4e

    #@38
    .line 1114
    iget-object v0, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    #@3a
    if-eqz v0, :cond_4b

    #@3c
    .line 1115
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@3e
    invoke-direct {v0, v7, v5, v6}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@41
    .line 1116
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    #@48
    .line 1117
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@4a
    goto :goto_4d

    #@4b
    .line 1119
    :cond_4b
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@4d
    :goto_4d
    return-void

    #@4e
    :cond_4e
    move-object v2, v3

    #@4f
    goto :goto_d
.end method

.method public trimHead()V
    .registers 6

    #@0
    .line 1159
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@2
    .line 1160
    iget-object v1, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    #@4
    if-eqz v1, :cond_17

    #@6
    .line 1161
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@8
    const/4 v2, 0x0

    #@9
    const-wide/16 v3, 0x0

    #@b
    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    #@e
    .line 1162
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    #@15
    .line 1163
    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    #@17
    :cond_17
    return-void
.end method
