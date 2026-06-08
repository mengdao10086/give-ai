.class final Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScheduledReplaySupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final maxAge:J

.field private final scheduler:Lio/reactivex/Scheduler;

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .registers 6

    #@0
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 964
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->bufferSize:I

    #@5
    .line 965
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->maxAge:J

    #@7
    .line 966
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->unit:Ljava/util/concurrent/TimeUnit;

    #@9
    .line 967
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->scheduler:Lio/reactivex/Scheduler;

    #@b
    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 972
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;

    #@2
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->bufferSize:I

    #@4
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->maxAge:J

    #@6
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->unit:Ljava/util/concurrent/TimeUnit;

    #@8
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->scheduler:Lio/reactivex/Scheduler;

    #@a
    move-object v0, v6

    #@b
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    #@e
    return-object v6
.end method
