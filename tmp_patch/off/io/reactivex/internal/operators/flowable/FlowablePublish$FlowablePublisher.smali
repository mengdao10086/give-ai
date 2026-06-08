.class final Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;
.super Ljava/lang/Object;
.source "FlowablePublish.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlowablePublisher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Publisher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final curr:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;I)V"
        }
    .end annotation

    #@0
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 677
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    .line 678
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;->bufferSize:I

    #@7
    return-void
.end method


# virtual methods
.method public subscribe(Lorg/reactivestreams/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 684
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    #@5
    .line 685
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@8
    .line 690
    :cond_8
    :goto_8
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;

    #@10
    if-eqz p1, :cond_18

    #@12
    .line 692
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->isDisposed()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2b

    #@18
    .line 694
    :cond_18
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;

    #@1a
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    #@1c
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;->bufferSize:I

    #@1e
    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    #@21
    .line 696
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    #@23
    invoke-static {v2, p1, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result p1

    #@27
    if-nez p1, :cond_2a

    #@29
    goto :goto_8

    #@2a
    :cond_2a
    move-object p1, v1

    #@2b
    .line 709
    :cond_2b
    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->add(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_8

    #@31
    .line 710
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    #@34
    move-result-wide v1

    #@35
    const-wide/high16 v3, -0x8000000000000000L

    #@37
    cmp-long v1, v1, v3

    #@39
    if-nez v1, :cond_3f

    #@3b
    .line 711
    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->remove(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)V

    #@3e
    goto :goto_41

    #@3f
    .line 713
    :cond_3f
    iput-object p1, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;

    #@41
    .line 715
    :goto_41
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    #@44
    return-void
.end method
