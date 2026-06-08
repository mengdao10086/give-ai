.class final Lio/reactivex/internal/schedulers/ImmediateThinScheduler$ImmediateThinWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "ImmediateThinScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ImmediateThinScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmediateThinWorker"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 74
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    #@0
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    #@0
    .line 89
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@3
    .line 90
    sget-object p1, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->DISPOSED:Lio/reactivex/disposables/Disposable;

    #@5
    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 5

    #@0
    .line 96
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "This scheduler doesn\'t support delayed execution"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .registers 7

    #@0
    .line 102
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "This scheduler doesn\'t support periodic execution"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method
