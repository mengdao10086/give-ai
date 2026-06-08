.class Lio/reactivex/internal/observers/QueueDrainSubscriberWip;
.super Lio/reactivex/internal/observers/QueueDrainSubscriberPad0;
.source "QueueDrainObserver.java"


# instance fields
.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 137
    invoke-direct {p0}, Lio/reactivex/internal/observers/QueueDrainSubscriberPad0;-><init>()V

    #@3
    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/observers/QueueDrainSubscriberWip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    return-void
.end method
