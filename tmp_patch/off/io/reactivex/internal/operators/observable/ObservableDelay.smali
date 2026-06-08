.class public final Lio/reactivex/internal/operators/observable/ObservableDelay;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final delay:J

.field final delayError:Z

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "Z)V"
        }
    .end annotation

    #@0
    .line 31
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 32
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->delay:J

    #@5
    .line 33
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->unit:Ljava/util/concurrent/TimeUnit;

    #@7
    .line 34
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->scheduler:Lio/reactivex/Scheduler;

    #@9
    .line 35
    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->delayError:Z

    #@b
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 42
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->delayError:Z

    #@2
    if-eqz v0, :cond_6

    #@4
    move-object v2, p1

    #@5
    goto :goto_c

    #@6
    .line 45
    :cond_6
    new-instance v0, Lio/reactivex/observers/SerializedObserver;

    #@8
    invoke-direct {v0, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    #@b
    move-object v2, v0

    #@c
    .line 48
    :goto_c
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->scheduler:Lio/reactivex/Scheduler;

    #@e
    invoke-virtual {p1}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    #@11
    move-result-object v6

    #@12
    .line 50
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->source:Lio/reactivex/ObservableSource;

    #@14
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;

    #@16
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->delay:J

    #@18
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->unit:Ljava/util/concurrent/TimeUnit;

    #@1a
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->delayError:Z

    #@1c
    move-object v1, v0

    #@1d
    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Z)V

    #@20
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@23
    return-void
.end method
