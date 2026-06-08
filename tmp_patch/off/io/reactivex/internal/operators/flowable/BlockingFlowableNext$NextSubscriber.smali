.class final Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "BlockingFlowableNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/BlockingFlowableNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber<",
        "Lio/reactivex/Notification<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lio/reactivex/Notification<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final waiting:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 3

    #@0
    .line 135
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    #@3
    .line 136
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    #@9
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->buf:Ljava/util/concurrent/BlockingQueue;

    #@b
    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@10
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    #@0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 146
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method public onNext(Lio/reactivex/Notification;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Notification<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    if-eq v0, v1, :cond_10

    #@a
    invoke-virtual {p1}, Lio/reactivex/Notification;->isOnNext()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2a

    #@10
    .line 154
    :cond_10
    :goto_10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->buf:Ljava/util/concurrent/BlockingQueue;

    #@12
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_2a

    #@18
    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->buf:Ljava/util/concurrent/BlockingQueue;

    #@1a
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lio/reactivex/Notification;

    #@20
    if-eqz v0, :cond_10

    #@22
    .line 158
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnNext()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_10

    #@28
    move-object p1, v0

    #@29
    goto :goto_10

    #@2a
    :cond_2a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 135
    check-cast p1, Lio/reactivex/Notification;

    #@2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->onNext(Lio/reactivex/Notification;)V

    #@5
    return-void
.end method

.method setWaiting()V
    .registers 3

    #@0
    .line 172
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@6
    return-void
.end method

.method public takeNext()Lio/reactivex/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Notification<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .line 167
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->setWaiting()V

    #@3
    .line 168
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    #@6
    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->buf:Ljava/util/concurrent/BlockingQueue;

    #@8
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lio/reactivex/Notification;

    #@e
    return-object v0
.end method
