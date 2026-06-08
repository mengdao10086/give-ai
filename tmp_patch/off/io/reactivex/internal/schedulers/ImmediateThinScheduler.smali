.class public final Lio/reactivex/internal/schedulers/ImmediateThinScheduler;
.super Lio/reactivex/Scheduler;
.source "ImmediateThinScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/ImmediateThinScheduler$ImmediateThinWorker;
    }
.end annotation


# static fields
.field static final DISPOSED:Lio/reactivex/disposables/Disposable;

.field public static final INSTANCE:Lio/reactivex/Scheduler;

.field static final WORKER:Lio/reactivex/Scheduler$Worker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 34
    new-instance v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;

    #@2
    invoke-direct {v0}, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;-><init>()V

    #@5
    sput-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->INSTANCE:Lio/reactivex/Scheduler;

    #@7
    .line 36
    new-instance v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler$ImmediateThinWorker;

    #@9
    invoke-direct {v0}, Lio/reactivex/internal/schedulers/ImmediateThinScheduler$ImmediateThinWorker;-><init>()V

    #@c
    sput-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->WORKER:Lio/reactivex/Scheduler$Worker;

    #@e
    .line 41
    invoke-static {}, Lio/reactivex/disposables/Disposables;->empty()Lio/reactivex/disposables/Disposable;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->DISPOSED:Lio/reactivex/disposables/Disposable;

    #@14
    .line 42
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@17
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 45
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .registers 2

    #@0
    .line 71
    sget-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->WORKER:Lio/reactivex/Scheduler$Worker;

    #@2
    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    #@0
    .line 52
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@3
    .line 53
    sget-object p1, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->DISPOSED:Lio/reactivex/disposables/Disposable;

    #@5
    return-object p1
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 5

    #@0
    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "This scheduler doesn\'t support delayed execution"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 7

    #@0
    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "This scheduler doesn\'t support periodic execution"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method
