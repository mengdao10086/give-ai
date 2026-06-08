.class public final Lio/reactivex/internal/schedulers/NewThreadScheduler;
.super Lio/reactivex/Scheduler;
.source "NewThreadScheduler.java"


# static fields
.field private static final KEY_NEWTHREAD_PRIORITY:Ljava/lang/String; = "rx2.newthread-priority"

.field private static final THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxNewThreadScheduler"


# instance fields
.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const-string v0, "rx2.newthread-priority"

    #@2
    const/4 v1, 0x5

    #@3
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@a
    move-result v0

    #@b
    const/16 v1, 0xa

    #@d
    .line 38
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x1

    #@12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v0

    #@16
    .line 41
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@18
    const-string v2, "RxNewThreadScheduler"

    #@1a
    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    #@1d
    sput-object v1, Lio/reactivex/internal/schedulers/NewThreadScheduler;->THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@1f
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 45
    sget-object v0, Lio/reactivex/internal/schedulers/NewThreadScheduler;->THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    #@2
    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/NewThreadScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2

    #@0
    .line 48
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@5
    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .registers 3

    #@0
    .line 55
    new-instance v0, Lio/reactivex/internal/schedulers/NewThreadWorker;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/schedulers/NewThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@4
    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    #@7
    return-object v0
.end method
