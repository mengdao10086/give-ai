.class public abstract Lio/reactivex/Scheduler$Worker;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/Scheduler$Worker$PeriodicTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public now(Ljava/util/concurrent/TimeUnit;)J
    .registers 4

    #@0
    .line 481
    invoke-static {p1}, Lio/reactivex/Scheduler;->computeNow(Ljava/util/concurrent/TimeUnit;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    .line 401
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
.end method

.method public schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 24

    #@0
    move-object/from16 v10, p0

    #@2
    move-wide/from16 v11, p2

    #@4
    move-object/from16 v13, p6

    #@6
    .line 453
    new-instance v14, Lio/reactivex/internal/disposables/SequentialDisposable;

    #@8
    invoke-direct {v14}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    #@b
    .line 455
    new-instance v15, Lio/reactivex/internal/disposables/SequentialDisposable;

    #@d
    invoke-direct {v15, v14}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>(Lio/reactivex/disposables/Disposable;)V

    #@10
    .line 457
    invoke-static/range {p1 .. p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@13
    move-result-object v4

    #@14
    move-wide/from16 v0, p4

    #@16
    .line 459
    invoke-virtual {v13, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@19
    move-result-wide v8

    #@1a
    .line 460
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@1c
    invoke-virtual {v10, v0}, Lio/reactivex/Scheduler$Worker;->now(Ljava/util/concurrent/TimeUnit;)J

    #@1f
    move-result-wide v5

    #@20
    .line 461
    invoke-virtual {v13, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@23
    move-result-wide v0

    #@24
    add-long v2, v5, v0

    #@26
    .line 463
    new-instance v7, Lio/reactivex/Scheduler$Worker$PeriodicTask;

    #@28
    move-object v0, v7

    #@29
    move-object/from16 v1, p0

    #@2b
    move-object/from16 v16, v14

    #@2d
    move-object v14, v7

    #@2e
    move-object v7, v15

    #@2f
    invoke-direct/range {v0 .. v9}, Lio/reactivex/Scheduler$Worker$PeriodicTask;-><init>(Lio/reactivex/Scheduler$Worker;JLjava/lang/Runnable;JLio/reactivex/internal/disposables/SequentialDisposable;J)V

    #@32
    invoke-virtual {v10, v14, v11, v12, v13}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@35
    move-result-object v0

    #@36
    .line 466
    sget-object v1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@38
    if-ne v0, v1, :cond_3b

    #@3a
    return-object v0

    #@3b
    :cond_3b
    move-object/from16 v1, v16

    #@3d
    .line 469
    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    #@40
    return-object v15
.end method
