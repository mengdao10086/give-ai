.class public abstract Lio/reactivex/observables/ConnectableObservable;
.super Lio/reactivex/Observable;
.source "ConnectableObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 41
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    #@3
    return-void
.end method

.method private onRefCount()Lio/reactivex/observables/ConnectableObservable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 78
    instance-of v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishClassic;

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 79
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;

    #@6
    move-object v1, p0

    #@7
    check-cast v1, Lio/reactivex/internal/operators/observable/ObservablePublishClassic;

    #@9
    .line 80
    invoke-interface {v1}, Lio/reactivex/internal/operators/observable/ObservablePublishClassic;->publishSource()Lio/reactivex/ObservableSource;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;-><init>(Lio/reactivex/ObservableSource;)V

    #@10
    .line 79
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/observables/ConnectableObservable;)Lio/reactivex/observables/ConnectableObservable;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    :cond_15
    return-object p0
.end method


# virtual methods
.method public autoConnect()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 234
    invoke-virtual {p0, v0}, Lio/reactivex/observables/ConnectableObservable;->autoConnect(I)Lio/reactivex/Observable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public autoConnect(I)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 261
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lio/reactivex/observables/ConnectableObservable;->autoConnect(ILio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public autoConnect(ILio/reactivex/functions/Consumer;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    #@0
    if-gtz p1, :cond_a

    #@2
    .line 289
    invoke-virtual {p0, p2}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    #@5
    .line 290
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/observables/ConnectableObservable;)Lio/reactivex/observables/ConnectableObservable;

    #@8
    move-result-object p1

    #@9
    return-object p1

    #@a
    .line 292
    :cond_a
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;

    #@c
    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;-><init>(Lio/reactivex/observables/ConnectableObservable;ILio/reactivex/functions/Consumer;)V

    #@f
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    #@12
    move-result-object p1

    #@13
    return-object p1
.end method

.method public final connect()Lio/reactivex/disposables/Disposable;
    .registers 2

    #@0
    .line 64
    new-instance v0, Lio/reactivex/internal/util/ConnectConsumer;

    #@2
    invoke-direct {v0}, Lio/reactivex/internal/util/ConnectConsumer;-><init>()V

    #@5
    .line 65
    invoke-virtual {p0, v0}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    #@8
    .line 66
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

.method public refCount()Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    #@0
    .line 103
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;

    #@2
    invoke-direct {p0}, Lio/reactivex/observables/ConnectableObservable;->onRefCount()Lio/reactivex/observables/ConnectableObservable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;-><init>(Lio/reactivex/observables/ConnectableObservable;)V

    #@9
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final refCount(I)Lio/reactivex/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    #@0
    const-wide/16 v2, 0x0

    #@2
    .line 121
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
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/observables/ConnectableObservable;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method public final refCount(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    #@0
    .line 185
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
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/observables/ConnectableObservable;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    #@0
    const-string v0, "subscriberCount"

    #@2
    .line 207
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@5
    const-string v0, "unit is null"

    #@7
    .line 208
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@a
    const-string v0, "scheduler is null"

    #@c
    .line 209
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@f
    .line 210
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;

    #@11
    invoke-direct {p0}, Lio/reactivex/observables/ConnectableObservable;->onRefCount()Lio/reactivex/observables/ConnectableObservable;

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
    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableRefCount;-><init>(Lio/reactivex/observables/ConnectableObservable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    #@1d
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    #@20
    move-result-object p1

    #@21
    return-object p1
.end method

.method public final refCount(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    .line 142
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
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/observables/ConnectableObservable;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final refCount(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
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
    .line 163
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/observables/ConnectableObservable;->refCount(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method
