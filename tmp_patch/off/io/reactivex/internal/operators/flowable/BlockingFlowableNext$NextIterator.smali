.class final Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;
.super Ljava/lang/Object;
.source "BlockingFlowableNext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/BlockingFlowableNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private hasNext:Z

.field private isNextConsumed:Z

.field private final items:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private started:Z

.field private final subscriber:Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Publisher;Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 54
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->hasNext:Z

    #@6
    .line 55
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->isNextConsumed:Z

    #@8
    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->items:Lorg/reactivestreams/Publisher;

    #@a
    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->subscriber:Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;

    #@c
    return-void
.end method

.method private moveToNext()Z
    .registers 5

    #@0
    .line 82
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->started:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_1b

    #@5
    .line 83
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->started:Z

    #@7
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->subscriber:Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;

    #@9
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->setWaiting()V

    #@c
    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->items:Lorg/reactivestreams/Publisher;

    #@e
    invoke-static {v0}, Lio/reactivex/Flowable;->fromPublisher(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    #@11
    move-result-object v0

    #@12
    .line 87
    invoke-virtual {v0}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    #@15
    move-result-object v0

    #@16
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->subscriber:Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;

    #@18
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    #@1b
    .line 90
    :cond_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->subscriber:Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;

    #@1d
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->takeNext()Lio/reactivex/Notification;

    #@20
    move-result-object v0

    #@21
    .line 91
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnNext()Z

    #@24
    move-result v2

    #@25
    const/4 v3, 0x0

    #@26
    if-eqz v2, :cond_31

    #@28
    .line 92
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->isNextConsumed:Z

    #@2a
    .line 93
    invoke-virtual {v0}, Lio/reactivex/Notification;->getValue()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->next:Ljava/lang/Object;

    #@30
    return v1

    #@31
    .line 98
    :cond_31
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->hasNext:Z

    #@33
    .line 99
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnComplete()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3a

    #@39
    return v3

    #@3a
    .line 102
    :cond_3a
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnError()Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_4b

    #@40
    .line 103
    invoke-virtual {v0}, Lio/reactivex/Notification;->getError()Ljava/lang/Throwable;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->error:Ljava/lang/Throwable;

    #@46
    .line 104
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@49
    move-result-object v0

    #@4a
    throw v0

    #@4b
    .line 106
    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4d
    const-string v1, "Should not reach here"

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_53} :catch_53

    #@53
    :catch_53
    move-exception v0

    #@54
    .line 108
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->subscriber:Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;

    #@56
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->dispose()V

    #@59
    .line 109
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->error:Ljava/lang/Throwable;

    #@5b
    .line 110
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@5e
    move-result-object v0

    #@5f
    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    #@0
    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->error:Ljava/lang/Throwable;

    #@2
    if-nez v0, :cond_16

    #@4
    .line 72
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->hasNext:Z

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 77
    :cond_a
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->isNextConsumed:Z

    #@c
    if-eqz v0, :cond_14

    #@e
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->moveToNext()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    :cond_14
    const/4 v1, 0x1

    #@15
    :cond_15
    return v1

    #@16
    .line 68
    :cond_16
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@19
    move-result-object v0

    #@1a
    throw v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->error:Ljava/lang/Throwable;

    #@2
    if-nez v0, :cond_18

    #@4
    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_10

    #@a
    const/4 v0, 0x1

    #@b
    .line 121
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->isNextConsumed:Z

    #@d
    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;->next:Ljava/lang/Object;

    #@f
    return-object v0

    #@10
    .line 125
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    #@12
    const-string v1, "No more elements"

    #@14
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 118
    :cond_18
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@1b
    move-result-object v0

    #@1c
    throw v0
.end method

.method public remove()V
    .registers 3

    #@0
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Read only iterator"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method
