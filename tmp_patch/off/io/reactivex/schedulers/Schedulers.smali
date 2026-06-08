.class public final Lio/reactivex/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/Schedulers$ComputationTask;,
        Lio/reactivex/schedulers/Schedulers$SingleTask;,
        Lio/reactivex/schedulers/Schedulers$NewThreadTask;,
        Lio/reactivex/schedulers/Schedulers$IOTask;,
        Lio/reactivex/schedulers/Schedulers$NewThreadHolder;,
        Lio/reactivex/schedulers/Schedulers$IoHolder;,
        Lio/reactivex/schedulers/Schedulers$ComputationHolder;,
        Lio/reactivex/schedulers/Schedulers$SingleHolder;
    }
.end annotation


# static fields
.field static final COMPUTATION:Lio/reactivex/Scheduler;

.field static final IO:Lio/reactivex/Scheduler;

.field static final NEW_THREAD:Lio/reactivex/Scheduler;

.field static final SINGLE:Lio/reactivex/Scheduler;

.field static final TRAMPOLINE:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 79
    new-instance v0, Lio/reactivex/schedulers/Schedulers$SingleTask;

    #@2
    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$SingleTask;-><init>()V

    #@5
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Lio/reactivex/schedulers/Schedulers;->SINGLE:Lio/reactivex/Scheduler;

    #@b
    .line 81
    new-instance v0, Lio/reactivex/schedulers/Schedulers$ComputationTask;

    #@d
    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$ComputationTask;-><init>()V

    #@10
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lio/reactivex/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/Scheduler;

    #@16
    .line 83
    new-instance v0, Lio/reactivex/schedulers/Schedulers$IOTask;

    #@18
    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$IOTask;-><init>()V

    #@1b
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    #@1e
    move-result-object v0

    #@1f
    sput-object v0, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    #@21
    .line 85
    invoke-static {}, Lio/reactivex/internal/schedulers/TrampolineScheduler;->instance()Lio/reactivex/internal/schedulers/TrampolineScheduler;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Lio/reactivex/schedulers/Schedulers;->TRAMPOLINE:Lio/reactivex/Scheduler;

    #@27
    .line 87
    new-instance v0, Lio/reactivex/schedulers/Schedulers$NewThreadTask;

    #@29
    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$NewThreadTask;-><init>()V

    #@2c
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    #@2f
    move-result-object v0

    #@30
    sput-object v0, Lio/reactivex/schedulers/Schedulers;->NEW_THREAD:Lio/reactivex/Scheduler;

    #@32
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static computation()Lio/reactivex/Scheduler;
    .registers 1

    #@0
    .line 157
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/Scheduler;

    #@2
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onComputationScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;
    .registers 3

    #@0
    .line 367
    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;Z)V

    #@6
    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;Z)Lio/reactivex/Scheduler;
    .registers 3

    #@0
    .line 427
    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler;

    #@2
    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;Z)V

    #@5
    return-object v0
.end method

.method public static io()Lio/reactivex/Scheduler;
    .registers 1

    #@0
    .line 202
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    #@2
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onIoScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newThread()Lio/reactivex/Scheduler;
    .registers 1

    #@0
    .line 260
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->NEW_THREAD:Lio/reactivex/Scheduler;

    #@2
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onNewThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static shutdown()V
    .registers 1

    #@0
    .line 435
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    #@7
    .line 436
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    #@e
    .line 437
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    #@15
    .line 438
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    #@1c
    .line 439
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    #@23
    .line 440
    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->shutdown()V

    #@26
    return-void
.end method

.method public static single()Lio/reactivex/Scheduler;
    .registers 1

    #@0
    .line 310
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->SINGLE:Lio/reactivex/Scheduler;

    #@2
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onSingleScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static start()V
    .registers 1

    #@0
    .line 448
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    #@7
    .line 449
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    #@e
    .line 450
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    #@15
    .line 451
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    #@1c
    .line 452
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    #@23
    .line 453
    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->start()V

    #@26
    return-void
.end method

.method public static trampoline()Lio/reactivex/Scheduler;
    .registers 1

    #@0
    .line 221
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->TRAMPOLINE:Lio/reactivex/Scheduler;

    #@2
    return-object v0
.end method
