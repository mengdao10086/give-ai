.class final Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.source "FlowableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IteratorSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53954cbe186540ffL


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
.method constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    #@0
    .line 147
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;-><init>(Ljava/util/Iterator;)V

    #@3
    .line 148
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 5

    #@0
    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->it:Ljava/util/Iterator;

    #@2
    .line 154
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@4
    .line 156
    :cond_4
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    #@6
    if-eqz v2, :cond_9

    #@8
    return-void

    #@9
    .line 163
    :cond_9
    :try_start_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c
    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_3d

    #@d
    .line 170
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    #@f
    if-eqz v3, :cond_12

    #@11
    return-void

    #@12
    :cond_12
    if-nez v2, :cond_1f

    #@14
    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    #@16
    const-string v2, "Iterator.next() returned a null value"

    #@18
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@1e
    return-void

    #@1f
    .line 178
    :cond_1f
    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@22
    .line 181
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    #@24
    if-eqz v2, :cond_27

    #@26
    return-void

    #@27
    .line 188
    :cond_27
    :try_start_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_35

    #@2b
    if-nez v2, :cond_4

    #@2d
    .line 196
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    #@2f
    if-nez v0, :cond_34

    #@31
    .line 197
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@34
    :cond_34
    return-void

    #@35
    :catchall_35
    move-exception v0

    #@36
    .line 190
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@39
    .line 191
    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@3c
    return-void

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    .line 165
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@41
    .line 166
    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@44
    return-void
.end method

.method slowPath(J)V
    .registers 11

    #@0
    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->it:Ljava/util/Iterator;

    #@2
    .line 208
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@4
    const-wide/16 v2, 0x0

    #@6
    :cond_6
    move-wide v4, v2

    #@7
    :cond_7
    :goto_7
    cmp-long v6, v4, p1

    #@9
    if-eqz v6, :cond_50

    #@b
    .line 214
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    #@d
    if-eqz v6, :cond_10

    #@f
    return-void

    #@10
    .line 221
    :cond_10
    :try_start_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v6
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_48

    #@14
    .line 228
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    #@16
    if-eqz v7, :cond_19

    #@18
    return-void

    #@19
    :cond_19
    if-nez v6, :cond_26

    #@1b
    .line 233
    new-instance p1, Ljava/lang/NullPointerException;

    #@1d
    const-string p2, "Iterator.next() returned a null value"

    #@1f
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@25
    return-void

    #@26
    .line 236
    :cond_26
    invoke-interface {v1, v6}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@29
    .line 239
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    #@2b
    if-eqz v6, :cond_2e

    #@2d
    return-void

    #@2e
    .line 246
    :cond_2e
    :try_start_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v6
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_40

    #@32
    if-nez v6, :cond_3c

    #@34
    .line 254
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    #@36
    if-nez p1, :cond_3b

    #@38
    .line 255
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@3b
    :cond_3b
    return-void

    #@3c
    :cond_3c
    const-wide/16 v6, 0x1

    #@3e
    add-long/2addr v4, v6

    #@3f
    goto :goto_7

    #@40
    :catchall_40
    move-exception p1

    #@41
    .line 248
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@44
    .line 249
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@47
    return-void

    #@48
    :catchall_48
    move-exception p1

    #@49
    .line 223
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@4c
    .line 224
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@4f
    return-void

    #@50
    .line 263
    :cond_50
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->get()J

    #@53
    move-result-wide p1

    #@54
    cmp-long v6, v4, p1

    #@56
    if-nez v6, :cond_7

    #@58
    neg-long p1, v4

    #@59
    .line 265
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->addAndGet(J)J

    #@5c
    move-result-wide p1

    #@5d
    cmp-long v4, p1, v2

    #@5f
    if-nez v4, :cond_6

    #@61
    return-void
.end method
