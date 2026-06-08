.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$CommandProcessor;,
        Landroidx/core/app/JobIntentService$CompatWorkItem;,
        Landroidx/core/app/JobIntentService$GenericWorkItem;,
        Landroidx/core/app/JobIntentService$JobWorkEnqueuer;,
        Landroidx/core/app/JobIntentService$JobServiceEngineImpl;,
        Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;,
        Landroidx/core/app/JobIntentService$CompatJobEngine;,
        Landroidx/core/app/JobIntentService$WorkEnqueuer;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 109
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    #@7
    .line 110
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    #@e
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 420
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 103
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    #@6
    .line 104
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    #@8
    .line 105
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    #@a
    const/4 v0, 0x0

    #@b
    .line 422
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@d
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .registers 6

    #@0
    if-eqz p3, :cond_15

    #@2
    .line 524
    sget-object v0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    #@4
    monitor-enter v0

    #@5
    const/4 v1, 0x1

    #@6
    .line 525
    :try_start_6
    invoke-static {p0, p1, v1, p2}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    #@9
    move-result-object p0

    #@a
    .line 526
    invoke-virtual {p0, p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    #@d
    .line 527
    invoke-virtual {p0, p3}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    #@10
    .line 528
    monitor-exit v0

    #@11
    return-void

    #@12
    :catchall_12
    move-exception p0

    #@13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    #@14
    throw p0

    #@15
    .line 522
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string p1, "work must not be null"

    #@19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw p0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    #@0
    .line 505
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@5
    invoke-static {p0, v0, p2, p3}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    #@8
    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;
    .registers 6

    #@0
    .line 533
    sget-object v0, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroidx/core/app/JobIntentService$WorkEnqueuer;

    #@8
    if-nez v1, :cond_1d

    #@a
    if-eqz p2, :cond_15

    #@c
    .line 539
    new-instance v1, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;

    #@e
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    #@11
    .line 543
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    goto :goto_1d

    #@15
    .line 537
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string p1, "Can\'t be here without a job id"

    #@19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw p0

    #@1d
    :cond_1d
    :goto_1d
    return-object v1
.end method


# virtual methods
.method dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;
    .registers 4

    #@0
    .line 644
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 645
    invoke-interface {v0}, Landroidx/core/app/JobIntentService$CompatJobEngine;->dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 647
    :cond_9
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@b
    monitor-enter v0

    #@c
    .line 648
    :try_start_c
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v1

    #@12
    if-lez v1, :cond_1f

    #@14
    .line 649
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroidx/core/app/JobIntentService$GenericWorkItem;

    #@1d
    monitor-exit v0

    #@1e
    return-object v1

    #@1f
    .line 651
    :cond_1f
    monitor-exit v0

    #@20
    const/4 v0, 0x0

    #@21
    return-object v0

    #@22
    :catchall_22
    move-exception v1

    #@23
    .line 653
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    #@24
    throw v1
.end method

.method doStopCurrentWork()Z
    .registers 3

    #@0
    .line 603
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 604
    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    #@6
    invoke-virtual {v0, v1}, Landroidx/core/app/JobIntentService$CommandProcessor;->cancel(Z)Z

    #@9
    :cond_9
    const/4 v0, 0x1

    #@a
    .line 606
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    #@c
    .line 607
    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->onStopCurrentWork()Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .registers 4

    #@0
    .line 612
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    #@2
    if-nez v0, :cond_1e

    #@4
    .line 613
    new-instance v0, Landroidx/core/app/JobIntentService$CommandProcessor;

    #@6
    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$CommandProcessor;-><init>(Landroidx/core/app/JobIntentService;)V

    #@9
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    #@b
    .line 614
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    #@d
    if-eqz v0, :cond_14

    #@f
    if-eqz p1, :cond_14

    #@11
    .line 615
    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    #@14
    .line 618
    :cond_14
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    #@16
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@18
    const/4 v1, 0x0

    #@19
    new-array v1, v1, [Ljava/lang/Void;

    #@1b
    invoke-virtual {p1, v0, v1}, Landroidx/core/app/JobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@1e
    :cond_1e
    return-void
.end method

.method public isStopped()Z
    .registers 2

    #@0
    .line 584
    iget-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    #@2
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    #@0
    .line 469
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    #@2
    if-eqz p1, :cond_9

    #@4
    .line 470
    invoke-interface {p1}, Landroidx/core/app/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return-object p1
.end method

.method public onCreate()V
    .registers 2

    #@0
    .line 430
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 433
    new-instance v0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    #@5
    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;-><init>(Landroidx/core/app/JobIntentService;)V

    #@8
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    #@a
    const/4 v0, 0x0

    #@b
    .line 434
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    #@d
    return-void
.end method

.method public onDestroy()V
    .registers 3

    #@0
    .line 480
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@3
    .line 481
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_15

    #@7
    .line 482
    monitor-enter v0

    #@8
    const/4 v1, 0x1

    #@9
    .line 483
    :try_start_9
    iput-boolean v1, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    #@b
    .line 484
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    #@d
    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    #@10
    .line 485
    monitor-exit v0

    #@11
    goto :goto_15

    #@12
    :catchall_12
    move-exception v1

    #@13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    #@14
    throw v1

    #@15
    :cond_15
    :goto_15
    return-void
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    #@0
    .line 448
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@2
    if-eqz p2, :cond_28

    #@4
    .line 449
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    #@6
    invoke-virtual {p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    #@9
    .line 451
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@b
    monitor-enter p2

    #@c
    .line 452
    :try_start_c
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@e
    new-instance v1, Landroidx/core/app/JobIntentService$CompatWorkItem;

    #@10
    if-eqz p1, :cond_13

    #@12
    goto :goto_18

    #@13
    :cond_13
    new-instance p1, Landroid/content/Intent;

    #@15
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    #@18
    :goto_18
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/JobIntentService$CompatWorkItem;-><init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    const/4 p1, 0x1

    #@1f
    .line 454
    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    #@22
    .line 455
    monitor-exit p2

    #@23
    const/4 p1, 0x3

    #@24
    return p1

    #@25
    :catchall_25
    move-exception p1

    #@26
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    #@27
    throw p1

    #@28
    :cond_28
    const/4 p1, 0x2

    #@29
    return p1
.end method

.method public onStopCurrentWork()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method processorFinished()V
    .registers 3

    #@0
    .line 623
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_25

    #@4
    .line 624
    monitor-enter v0

    #@5
    const/4 v1, 0x0

    #@6
    .line 625
    :try_start_6
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    #@8
    .line 634
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    #@a
    if-eqz v1, :cond_17

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    if-lez v1, :cond_17

    #@12
    const/4 v1, 0x0

    #@13
    .line 635
    invoke-virtual {p0, v1}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    #@16
    goto :goto_20

    #@17
    .line 636
    :cond_17
    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    #@19
    if-nez v1, :cond_20

    #@1b
    .line 637
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    #@1d
    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    #@20
    .line 639
    :cond_20
    :goto_20
    monitor-exit v0

    #@21
    goto :goto_25

    #@22
    :catchall_22
    move-exception v1

    #@23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    #@24
    throw v1

    #@25
    :cond_25
    :goto_25
    return-void
.end method

.method public setInterruptIfStopped(Z)V
    .registers 2

    #@0
    .line 576
    iput-boolean p1, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    #@2
    return-void
.end method
