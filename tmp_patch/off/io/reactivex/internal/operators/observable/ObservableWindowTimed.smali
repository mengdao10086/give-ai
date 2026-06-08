.class public final Lio/reactivex/internal/operators/observable/ObservableWindowTimed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableWindowTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactUnboundedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;",
        "Lio/reactivex/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final maxSize:J

.field final restartTimerOnMaxSize:Z

.field final scheduler:Lio/reactivex/Scheduler;

.field final timeskip:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;JIZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "JIZ)V"
        }
    .end annotation

    #@0
    .line 44
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 45
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    #@5
    .line 46
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timeskip:J

    #@7
    .line 47
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    #@9
    .line 48
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    #@b
    .line 49
    iput-wide p8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->maxSize:J

    #@d
    .line 50
    iput p10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->bufferSize:I

    #@f
    .line 51
    iput-boolean p11, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->restartTimerOnMaxSize:Z

    #@11
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    #@0
    .line 56
    new-instance v1, Lio/reactivex/observers/SerializedObserver;

    #@2
    invoke-direct {v1, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    #@5
    .line 58
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    #@7
    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timeskip:J

    #@9
    cmp-long p1, v2, v4

    #@b
    if-nez p1, :cond_44

    #@d
    .line 59
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->maxSize:J

    #@f
    const-wide v4, 0x7fffffffffffffffL

    #@14
    cmp-long p1, v2, v4

    #@16
    if-nez p1, :cond_2c

    #@18
    .line 60
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    #@1a
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactUnboundedObserver;

    #@1c
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    #@1e
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    #@20
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    #@22
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->bufferSize:I

    #@24
    move-object v0, v7

    #@25
    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactUnboundedObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)V

    #@28
    invoke-interface {p1, v7}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@2b
    return-void

    #@2c
    .line 65
    :cond_2c
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    #@2e
    new-instance v10, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;

    #@30
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    #@32
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    #@34
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    #@36
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->bufferSize:I

    #@38
    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->maxSize:J

    #@3a
    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->restartTimerOnMaxSize:Z

    #@3c
    move-object v0, v10

    #@3d
    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IJZ)V

    #@40
    invoke-interface {p1, v10}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@43
    return-void

    #@44
    .line 71
    :cond_44
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    #@46
    new-instance v9, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;

    #@48
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    #@4a
    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timeskip:J

    #@4c
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    #@4e
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    #@50
    .line 72
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    #@53
    move-result-object v7

    #@54
    iget v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->bufferSize:I

    #@56
    move-object v0, v9

    #@57
    invoke-direct/range {v0 .. v8}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;-><init>(Lio/reactivex/Observer;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V

    #@5a
    .line 71
    invoke-interface {p1, v9}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@5d
    return-void
.end method
