.class public abstract Lio/reactivex/internal/observers/QueueDrainObserver;
.super Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;
.source "QueueDrainObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/internal/util/ObservableQueueDrain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/internal/util/ObservableQueueDrain<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TV;>;",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;)V"
        }
    .end annotation

    #@0
    .line 40
    invoke-direct {p0}, Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 42
    iput-object p2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@7
    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/Observer;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TV;>;TU;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public final cancelled()Z
    .registers 2

    #@0
    .line 47
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    #@2
    return v0
.end method

.method public final done()Z
    .registers 2

    #@0
    .line 52
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    #@2
    return v0
.end method

.method public final enter()Z
    .registers 2

    #@0
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public final error()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 112
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->error:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public final fastEnter()Z
    .registers 4

    #@0
    .line 61
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_13

    #@9
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_13

    #@12
    move v1, v2

    #@13
    :cond_13
    return v1
.end method

.method protected final fastPathEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    #@0
    .line 65
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    #@2
    .line 66
    iget-object v1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@4
    .line 68
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_21

    #@c
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_21

    #@16
    .line 69
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    #@19
    const/4 p1, -0x1

    #@1a
    .line 70
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    #@1d
    move-result p1

    #@1e
    if-nez p1, :cond_2b

    #@20
    return-void

    #@21
    .line 74
    :cond_21
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@24
    .line 75
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    #@27
    move-result p1

    #@28
    if-nez p1, :cond_2b

    #@2a
    return-void

    #@2b
    .line 79
    :cond_2b
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    #@2e
    return-void
.end method

.method protected final fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    #@0
    .line 89
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    #@2
    .line 90
    iget-object v1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    #@4
    .line 92
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_2b

    #@c
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2b

    #@16
    .line 93
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_27

    #@1c
    .line 94
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    #@1f
    const/4 p1, -0x1

    #@20
    .line 95
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    #@23
    move-result p1

    #@24
    if-nez p1, :cond_35

    #@26
    return-void

    #@27
    .line 99
    :cond_27
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@2a
    goto :goto_35

    #@2b
    .line 102
    :cond_2b
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    #@2e
    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    #@31
    move-result p1

    #@32
    if-nez p1, :cond_35

    #@34
    return-void

    #@35
    .line 107
    :cond_35
    :goto_35
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    #@38
    return-void
.end method

.method public final leave(I)I
    .registers 3

    #@0
    .line 117
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method
