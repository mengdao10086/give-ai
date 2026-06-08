.class public final Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;
.super Lio/reactivex/flowables/ConnectableFlowable;
.source "FlowablePublishAlt.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamPublisher;
.implements Lio/reactivex/internal/disposables/ResettableConnectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/ConnectableFlowable<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/HasUpstreamPublisher<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/ResettableConnectable;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 53
    invoke-direct {p0}, Lio/reactivex/flowables/ConnectableFlowable;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->source:Lorg/reactivestreams/Publisher;

    #@5
    .line 55
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->bufferSize:I

    #@7
    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@c
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    return-void
.end method


# virtual methods
.method public connect(Lio/reactivex/functions/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 78
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@8
    if-eqz v0, :cond_10

    #@a
    .line 80
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->isDisposed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_23

    #@10
    .line 81
    :cond_10
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@12
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->bufferSize:I

    #@16
    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    #@19
    .line 82
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@1b
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_22

    #@21
    goto :goto_0

    #@22
    :cond_22
    move-object v0, v1

    #@23
    .line 88
    :cond_23
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@28
    move-result v1

    #@29
    const/4 v2, 0x0

    #@2a
    if-nez v1, :cond_36

    #@2c
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2e
    const/4 v3, 0x1

    #@2f
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_36

    #@35
    move v2, v3

    #@36
    .line 93
    :cond_36
    :try_start_36
    invoke-interface {p1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    #@39
    if-eqz v2, :cond_40

    #@3b
    .line 100
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->source:Lorg/reactivestreams/Publisher;

    #@3d
    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    #@40
    :cond_40
    return-void

    #@41
    :catchall_41
    move-exception p1

    #@42
    .line 95
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@45
    .line 96
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@48
    move-result-object p1

    #@49
    throw p1
.end method

.method public publishBufferSize()I
    .registers 2

    #@0
    .line 69
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->bufferSize:I

    #@2
    return v0
.end method

.method public resetIf(Lio/reactivex/disposables/Disposable;)V
    .registers 4

    #@0
    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    check-cast p1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, p1, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8
    return-void
.end method

.method public source()Lorg/reactivestreams/Publisher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->source:Lorg/reactivestreams/Publisher;

    #@2
    return-object v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 109
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@8
    if-nez v0, :cond_1d

    #@a
    .line 113
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    #@c
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->bufferSize:I

    #@10
    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    #@13
    .line 114
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@15
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1c

    #@1b
    goto :goto_0

    #@1c
    :cond_1c
    move-object v0, v1

    #@1d
    .line 123
    :cond_1d
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    #@1f
    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;)V

    #@22
    .line 124
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@25
    .line 126
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->add(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_39

    #@2b
    .line 127
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->isCancelled()Z

    #@2e
    move-result p1

    #@2f
    if-eqz p1, :cond_35

    #@31
    .line 128
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->remove(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)V

    #@34
    goto :goto_38

    #@35
    .line 130
    :cond_35
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    #@38
    :goto_38
    return-void

    #@39
    .line 135
    :cond_39
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    #@3b
    if-eqz v0, :cond_41

    #@3d
    .line 137
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@40
    goto :goto_44

    #@41
    .line 139
    :cond_41
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@44
    :goto_44
    return-void
.end method
