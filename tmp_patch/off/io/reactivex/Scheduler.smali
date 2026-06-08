.class public abstract Lio/reactivex/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/Scheduler$DisposeTask;,
        Lio/reactivex/Scheduler$PeriodicDirectTask;,
        Lio/reactivex/Scheduler$Worker;
    }
.end annotation


# static fields
.field static final CLOCK_DRIFT_TOLERANCE_NANOSECONDS:J

.field static IS_DRIFT_USE_NANOTIME:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-string v0, "rx2.scheduler.use-nanotime"

    #@2
    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    sput-boolean v0, Lio/reactivex/Scheduler;->IS_DRIFT_USE_NANOTIME:Z

    #@8
    .line 128
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@a
    const-string v1, "rx2.scheduler.drift-tolerance"

    #@c
    const-wide/16 v2, 0xf

    #@e
    .line 129
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide v1

    #@16
    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@19
    move-result-wide v0

    #@1a
    sput-wide v0, Lio/reactivex/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOSECONDS:J

    #@1c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static clockDriftTolerance()J
    .registers 2

    #@0
    .line 139
    sget-wide v0, Lio/reactivex/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOSECONDS:J

    #@2
    return-wide v0
.end method

.method static computeNow(Ljava/util/concurrent/TimeUnit;)J
    .registers 4

    #@0
    .line 115
    sget-boolean v0, Lio/reactivex/Scheduler;->IS_DRIFT_USE_NANOTIME:Z

    #@2
    if-nez v0, :cond_f

    #@4
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@a
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    #@d
    move-result-wide v0

    #@e
    return-wide v0

    #@f
    .line 118
    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@12
    move-result-wide v0

    #@13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@15
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    #@18
    move-result-wide v0

    #@19
    return-wide v0
.end method


# virtual methods
.method public abstract createWorker()Lio/reactivex/Scheduler$Worker;
.end method

.method public now(Ljava/util/concurrent/TimeUnit;)J
    .registers 4

    #@0
    .line 163
    invoke-static {p1}, Lio/reactivex/Scheduler;->computeNow(Ljava/util/concurrent/TimeUnit;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    .line 208
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 7

    #@0
    .line 226
    invoke-virtual {p0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    #@3
    move-result-object v0

    #@4
    .line 228
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@7
    move-result-object p1

    #@8
    .line 230
    new-instance v1, Lio/reactivex/Scheduler$DisposeTask;

    #@a
    invoke-direct {v1, p1, v0}, Lio/reactivex/Scheduler$DisposeTask;-><init>(Ljava/lang/Runnable;Lio/reactivex/Scheduler$Worker;)V

    #@d
    .line 232
    invoke-virtual {v0, v1, p2, p3, p4}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@10
    return-object v1
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 15

    #@0
    .line 258
    invoke-virtual {p0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    #@3
    move-result-object v0

    #@4
    .line 260
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@7
    move-result-object p1

    #@8
    .line 262
    new-instance v7, Lio/reactivex/Scheduler$PeriodicDirectTask;

    #@a
    invoke-direct {v7, p1, v0}, Lio/reactivex/Scheduler$PeriodicDirectTask;-><init>(Ljava/lang/Runnable;Lio/reactivex/Scheduler$Worker;)V

    #@d
    move-object v1, v7

    #@e
    move-wide v2, p2

    #@f
    move-wide v4, p4

    #@10
    move-object v6, p6

    #@11
    .line 264
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@14
    move-result-object p1

    #@15
    .line 265
    sget-object p2, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@17
    if-ne p1, p2, :cond_1a

    #@19
    return-object p1

    #@1a
    :cond_1a
    return-object v7
.end method

.method public shutdown()V
    .registers 1

    #@0
    return-void
.end method

.method public start()V
    .registers 1

    #@0
    return-void
.end method

.method public when(Lio/reactivex/functions/Function;)Lio/reactivex/Scheduler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lio/reactivex/Scheduler;",
            ":",
            "Lio/reactivex/disposables/Disposable;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Flowable<",
            "Lio/reactivex/Flowable<",
            "Lio/reactivex/Completable;",
            ">;>;",
            "Lio/reactivex/Completable;",
            ">;)TS;"
        }
    .end annotation

    #@0
    .line 350
    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerWhen;

    #@2
    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/schedulers/SchedulerWhen;-><init>(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)V

    #@5
    return-object v0
.end method
