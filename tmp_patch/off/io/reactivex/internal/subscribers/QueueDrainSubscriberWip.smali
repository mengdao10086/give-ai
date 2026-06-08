.class Lio/reactivex/internal/subscribers/QueueDrainSubscriberWip;
.super Lio/reactivex/internal/subscribers/QueueDrainSubscriberPad0;
.source "QueueDrainSubscriber.java"


# instance fields
.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 177
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriberPad0;-><init>()V

    #@3
    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriberWip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    return-void
.end method
