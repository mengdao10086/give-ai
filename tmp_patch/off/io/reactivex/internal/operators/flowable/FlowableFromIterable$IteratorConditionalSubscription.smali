.class final Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.source "FlowableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IteratorConditionalSubscription"
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
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    #@0
    .line 283
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;-><init>(Ljava/util/Iterator;)V

    #@3
    .line 284
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@5
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 5

    #@0
    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    #@2
    .line 290
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    #@4
    .line 292
    :cond_4
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    #@6
    if-eqz v2, :cond_9

    #@8
    return-void

    #@9
    .line 299
    :cond_9
    :try_start_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c
    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_3d

    #@d
    .line 306
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    #@f
    if-eqz v3, :cond_12

    #@11
    return-void

    #@12
    :cond_12
    if-nez v2, :cond_1f

    #@14
    .line 311
    new-instance v0, Ljava/lang/NullPointerException;

    #@16
    const-string v2, "Iterator.next() returned a null value"

    #@18
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@1e
    return-void

    #@1f
    .line 314
    :cond_1f
    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@22
    .line 317
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    #@24
    if-eqz v2, :cond_27

    #@26
    return-void

    #@27
    .line 324
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
    .line 332
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    #@2f
    if-nez v0, :cond_34

    #@31
    .line 333
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@34
    :cond_34
    return-void

    #@35
    :catchall_35
    move-exception v0

    #@36
    .line 326
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@39
    .line 327
    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@3c
    return-void

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    .line 301
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@41
    .line 302
    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@44
    return-void
.end method

.method slowPath(J)V
    .registers 11

    #@0
    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    #@2
    .line 344
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

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
    if-eqz v6, :cond_53

    #@b
    .line 350
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    #@d
    if-eqz v6, :cond_10

    #@f
    return-void

    #@10
    .line 357
    :cond_10
    :try_start_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v6
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_4b

    #@14
    .line 364
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    #@16
    if-eqz v7, :cond_19

    #@18
    return-void

    #@19
    :cond_19
    if-nez v6, :cond_26

    #@1b
    .line 370
    new-instance p1, Ljava/lang/NullPointerException;

    #@1d
    const-string p2, "Iterator.next() returned a null value"

    #@1f
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@25
    return-void

    #@26
    .line 373
    :cond_26
    invoke-interface {v1, v6}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    .line 376
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    #@2c
    if-eqz v7, :cond_2f

    #@2e
    return-void

    #@2f
    .line 383
    :cond_2f
    :try_start_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v7
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_43

    #@33
    if-nez v7, :cond_3d

    #@35
    .line 391
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    #@37
    if-nez p1, :cond_3c

    #@39
    .line 392
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    #@3c
    :cond_3c
    return-void

    #@3d
    :cond_3d
    if-eqz v6, :cond_7

    #@3f
    const-wide/16 v6, 0x1

    #@41
    add-long/2addr v4, v6

    #@42
    goto :goto_7

    #@43
    :catchall_43
    move-exception p1

    #@44
    .line 385
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@47
    .line 386
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@4a
    return-void

    #@4b
    :catchall_4b
    move-exception p1

    #@4c
    .line 359
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@4f
    .line 360
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    #@52
    return-void

    #@53
    .line 402
    :cond_53
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->get()J

    #@56
    move-result-wide p1

    #@57
    cmp-long v6, v4, p1

    #@59
    if-nez v6, :cond_7

    #@5b
    neg-long p1, v4

    #@5c
    .line 404
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->addAndGet(J)J

    #@5f
    move-result-wide p1

    #@60
    cmp-long v4, p1, v2

    #@62
    if-nez v4, :cond_6

    #@64
    return-void
.end method
