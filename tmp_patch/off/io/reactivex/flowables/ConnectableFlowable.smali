.class public abstract Lio/reactivex/flowables/ConnectableFlowable;
.super Lio/reactivex/Flowable;
.source "ConnectableFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 43
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    #@3
    return-void
.end method

.method private onRefCount()Lio/reactivex/flowables/ConnectableFlowable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 79
    instance-of v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;

    #@2
    if-eqz v0, :cond_19

    #@4
    .line 81
    move-object v0, p0

    #@5
    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;

    #@7
    .line 82
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;

    #@9
    .line 83
    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;->publishSource()Lorg/reactivestreams/Publisher;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;->publishBufferSize()I

    #@10
    move-result v0

    #@11
    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;-><init>(Lorg/reactivestreams/Publisher;I)V

    #@14
    .line 82
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/flowables/ConnectableFlowable;)Lio/reactivex/flowables/ConnectableFlowable;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    :cond_19
    return-object p0
.end method


# virtual methods
.method public autoConnect()Lio/reactivex/Flowable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 263
    invoke-virtual {p0, v0}, Lio/reactivex/flowables/ConnectableFlowable;->autoConnect(I)Lio/reactivex/Flowable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public autoConnect(I)Lio/reactivex/Flowable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 289
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lio/reactivex/flowables/ConnectableFlowable;->autoConnect(ILio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public autoConnect(ILio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    #@0
    if-gtz p1, :cond_a

    #@2
    .line 317
    invoke-virtual {p0, p2}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V

    #@5
    .line 318
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/flowables/ConnectableFlowable;)Lio/reactivex/flowables/ConnectableFlowable;

    #@8
    move-result-object p1

    #@9
    return-object p1

    #@a
    .line 320
    :cond_a
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;

    #@c
    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableAutoConnect;-><init>(Lio/reactivex/flowables/ConnectableFlowable;ILio/reactivex/functions/Consumer;)V

    #@f
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    #@12
    move-result-object p1

    #@13
    return-object p1
.end method

.method public final connect()Lio/reactivex/disposables/Disposable;
    .registers 2

    #@0
    .line 66
    new-instance v0, Lio/reactivex/internal/util/ConnectConsumer;

    #@2
    invoke-direct {v0}, Lio/reactivex/internal/util/ConnectConsumer;-><init>()V

    #@5
    .line 67
    invoke-virtual {p0, v0}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V

    #@8
    .line 68
    iget-object v0, v0, Lio/reactivex/internal/util/ConnectConsumer;->disposable:Lio/reactivex/disposables/Disposable;

    #@a
    return-object v0
.end method

.method public abstract connect(Lio/reactivex/functions/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation
.end method

.method public refCount()Lio/reactivex/Flowable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    #@0
    .line 110
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    #@2
    invoke-direct {p0}, Lio/reactivex/flowables/ConnectableFlowable;->onRefCount()Lio/reactivex/flowables/ConnectableFlowable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;-><init>(Lio/reactivex/flowables/ConnectableFlowable;)V

    #@9
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final refCount(I)Lio/reactivex/Flowable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    #@0
    const-wide/16 v2, 0x0

    #@2
    .line 132
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    #@7
    move-result-object v5

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/flowables/ConnectableFlowable;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method public final refCount(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    #@0
    .line 208
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    #@3
    move-result-object v5

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move-wide v2, p2

    #@7
    move-object v4, p4

    #@8
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/flowables/ConnectableFlowable;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    #@0
    const-string v0, "subscriberCount"

    #@2
    .line 234
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@5
    const-string v0, "unit is null"

    #@7
    .line 235
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@a
    const-string v0, "scheduler is null"

    #@c
    .line 236
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@f
    .line 237
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    #@11
    invoke-direct {p0}, Lio/reactivex/flowables/ConnectableFlowable;->onRefCount()Lio/reactivex/flowables/ConnectableFlowable;

    #@14
    move-result-object v2

    #@15
    move-object v1, v0

    #@16
    move v3, p1

    #@17
    move-wide v4, p2

    #@18
    move-object v6, p4

    #@19
    move-object v7, p5

    #@1a
    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;-><init>(Lio/reactivex/flowables/ConnectableFlowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    #@1d
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    #@20
    move-result-object p1

    #@21
    return-object p1
.end method

.method public final refCount(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    .line 157
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    #@4
    move-result-object v5

    #@5
    move-object v0, p0

    #@6
    move-wide v2, p1

    #@7
    move-object v4, p3

    #@8
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/flowables/ConnectableFlowable;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final refCount(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    move-object v0, p0

    #@2
    move-wide v2, p1

    #@3
    move-object v4, p3

    #@4
    move-object v5, p4

    #@5
    .line 182
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/flowables/ConnectableFlowable;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method
