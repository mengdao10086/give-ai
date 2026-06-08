.class public final Lio/reactivex/processors/PublishProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "PublishProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@3
    .line 113
    sput-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@5
    new-array v0, v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@7
    .line 116
    sput-object v0, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@9
    return-void
.end method

.method constructor <init>()V
    .registers 3

    #@0
    .line 140
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    #@3
    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@a
    iput-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    return-void
.end method

.method public static create()Lio/reactivex/processors/PublishProcessor;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/PublishProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    #@0
    .line 132
    new-instance v0, Lio/reactivex/processors/PublishProcessor;

    #@2
    invoke-direct {v0}, Lio/reactivex/processors/PublishProcessor;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 172
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@8
    .line 173
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_e

    #@d
    return v2

    #@e
    .line 177
    :cond_e
    array-length v1, v0

    #@f
    add-int/lit8 v3, v1, 0x1

    #@11
    .line 179
    new-array v3, v3, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@13
    .line 180
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 181
    aput-object p1, v3, v1

    #@18
    .line 183
    iget-object v1, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public getThrowable()Ljava/lang/Throwable;
    .registers 3

    #@0
    .line 314
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@8
    if-ne v0, v1, :cond_d

    #@a
    .line 315
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    #@c
    return-object v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public hasComplete()Z
    .registers 3

    #@0
    .line 327
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@8
    if-ne v0, v1, :cond_10

    #@a
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public hasSubscribers()Z
    .registers 2

    #@0
    .line 308
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

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

.method public hasThrowable()Z
    .registers 3

    #@0
    .line 322
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@8
    if-ne v0, v1, :cond_10

    #@a
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p1, :cond_e

    #@3
    .line 289
    new-instance p1, Ljava/lang/NullPointerException;

    #@5
    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@7
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {p0, p1}, Lio/reactivex/processors/PublishProcessor;->onError(Ljava/lang/Throwable;)V

    #@d
    return v0

    #@e
    .line 292
    :cond_e
    iget-object v1, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@16
    .line 294
    array-length v2, v1

    #@17
    const/4 v3, 0x0

    #@18
    move v4, v3

    #@19
    :goto_19
    if-ge v4, v2, :cond_27

    #@1b
    aget-object v5, v1, v4

    #@1d
    .line 295
    invoke-virtual {v5}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->isFull()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_24

    #@23
    return v3

    #@24
    :cond_24
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_19

    #@27
    .line 300
    :cond_27
    array-length v2, v1

    #@28
    :goto_28
    if-ge v3, v2, :cond_32

    #@2a
    aget-object v4, v1, v3

    #@2c
    .line 301
    invoke-virtual {v4, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onNext(Ljava/lang/Object;)V

    #@2f
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_28

    #@32
    :cond_32
    return v0
.end method

.method public onComplete()V
    .registers 5

    #@0
    .line 265
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@8
    if-ne v0, v1, :cond_b

    #@a
    return-void

    #@b
    .line 268
    :cond_b
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@13
    array-length v1, v0

    #@14
    const/4 v2, 0x0

    #@15
    :goto_15
    if-ge v2, v1, :cond_1f

    #@17
    aget-object v3, v0, v2

    #@19
    .line 269
    invoke-virtual {v3}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onComplete()V

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_15

    #@1f
    :cond_1f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 250
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 251
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@d
    if-ne v0, v1, :cond_13

    #@f
    .line 252
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@12
    return-void

    #@13
    .line 255
    :cond_13
    iput-object p1, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    #@15
    .line 257
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@1d
    array-length v1, v0

    #@1e
    const/4 v2, 0x0

    #@1f
    :goto_1f
    if-ge v2, v1, :cond_29

    #@21
    aget-object v3, v0, v2

    #@23
    .line 258
    invoke-virtual {v3, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onError(Ljava/lang/Throwable;)V

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_1f

    #@29
    :cond_29
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@2
    .line 241
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 242
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

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
    .line 243
    invoke-virtual {v3, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onNext(Ljava/lang/Object;)V

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_f

    #@19
    :cond_19
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 231
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@8
    if-ne v0, v1, :cond_e

    #@a
    .line 232
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@d
    return-void

    #@e
    :cond_e
    const-wide v0, 0x7fffffffffffffffL

    #@13
    .line 236
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    #@16
    return-void
.end method

.method remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 196
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@8
    .line 197
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@a
    if-eq v0, v1, :cond_3f

    #@c
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@e
    if-ne v0, v1, :cond_11

    #@10
    goto :goto_3f

    #@11
    .line 201
    :cond_11
    array-length v1, v0

    #@12
    const/4 v2, 0x0

    #@13
    move v3, v2

    #@14
    :goto_14
    if-ge v3, v1, :cond_1e

    #@16
    .line 204
    aget-object v4, v0, v3

    #@18
    if-ne v4, p1, :cond_1b

    #@1a
    goto :goto_1f

    #@1b
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_14

    #@1e
    :cond_1e
    const/4 v3, -0x1

    #@1f
    :goto_1f
    if-gez v3, :cond_22

    #@21
    return-void

    #@22
    :cond_22
    const/4 v4, 0x1

    #@23
    if-ne v1, v4, :cond_28

    #@25
    .line 217
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@27
    goto :goto_37

    #@28
    :cond_28
    add-int/lit8 v5, v1, -0x1

    #@2a
    .line 219
    new-array v5, v5, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@2c
    .line 220
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2f
    add-int/lit8 v2, v3, 0x1

    #@31
    sub-int/2addr v1, v3

    #@32
    sub-int/2addr v1, v4

    #@33
    .line 221
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    move-object v1, v5

    #@37
    .line 223
    :goto_37
    iget-object v2, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    #@39
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_0

    #@3f
    :cond_3f
    :goto_3f
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 146
    new-instance v0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    #@2
    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/PublishProcessor;)V

    #@5
    .line 147
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@8
    .line 148
    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->add(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_18

    #@e
    .line 151
    invoke-virtual {v0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->isCancelled()Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_23

    #@14
    .line 152
    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V

    #@17
    goto :goto_23

    #@18
    .line 155
    :cond_18
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    #@1a
    if-eqz v0, :cond_20

    #@1c
    .line 157
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@1f
    goto :goto_23

    #@20
    .line 159
    :cond_20
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@23
    :cond_23
    :goto_23
    return-void
.end method
