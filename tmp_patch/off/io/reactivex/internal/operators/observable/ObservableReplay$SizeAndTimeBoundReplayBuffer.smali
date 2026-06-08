.class final Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;
.super Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final limit:I

.field final maxAge:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .registers 6

    #@0
    .line 820
    invoke-direct {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;-><init>()V

    #@3
    .line 821
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@5
    .line 822
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    #@7
    .line 823
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@9
    .line 824
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@b
    return-void
.end method


# virtual methods
.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    #@0
    .line 829
    new-instance v0, Lio/reactivex/schedulers/Timed;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@6
    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@9
    move-result-wide v1

    #@a
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@c
    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/schedulers/Timed;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    #@f
    return-object v0
.end method

.method getHead()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    .registers 8

    #@0
    .line 902
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@a
    sub-long/2addr v0, v2

    #@b
    .line 903
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@11
    .line 904
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@17
    :goto_17
    move-object v6, v3

    #@18
    move-object v3, v2

    #@19
    move-object v2, v6

    #@1a
    if-nez v2, :cond_1d

    #@1c
    goto :goto_45

    #@1d
    .line 909
    :cond_1d
    iget-object v4, v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    #@1f
    check-cast v4, Lio/reactivex/schedulers/Timed;

    #@21
    .line 910
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_45

    #@2b
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_36

    #@35
    goto :goto_45

    #@36
    .line 913
    :cond_36
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->time()J

    #@39
    move-result-wide v4

    #@3a
    cmp-long v4, v4, v0

    #@3c
    if-gtz v4, :cond_45

    #@3e
    .line 915
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@44
    goto :goto_17

    #@45
    :cond_45
    :goto_45
    return-object v3
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 834
    check-cast p1, Lio/reactivex/schedulers/Timed;

    #@2
    invoke-virtual {p1}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method truncate()V
    .registers 10

    #@0
    .line 839
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@a
    sub-long/2addr v0, v2

    #@b
    .line 841
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@11
    .line 842
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@17
    const/4 v4, 0x0

    #@18
    :goto_18
    move-object v8, v3

    #@19
    move-object v3, v2

    #@1a
    move-object v2, v8

    #@1b
    if-eqz v2, :cond_50

    #@1d
    .line 847
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@1f
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    #@21
    const/4 v7, 0x1

    #@22
    if-le v5, v6, :cond_36

    #@24
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@26
    if-le v5, v7, :cond_36

    #@28
    add-int/lit8 v4, v4, 0x1

    #@2a
    .line 849
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@2c
    sub-int/2addr v3, v7

    #@2d
    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@2f
    .line 851
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@35
    goto :goto_18

    #@36
    .line 853
    :cond_36
    iget-object v5, v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    #@38
    check-cast v5, Lio/reactivex/schedulers/Timed;

    #@3a
    .line 854
    invoke-virtual {v5}, Lio/reactivex/schedulers/Timed;->time()J

    #@3d
    move-result-wide v5

    #@3e
    cmp-long v5, v5, v0

    #@40
    if-gtz v5, :cond_50

    #@42
    add-int/lit8 v4, v4, 0x1

    #@44
    .line 856
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@46
    sub-int/2addr v3, v7

    #@47
    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@49
    .line 858
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    #@4c
    move-result-object v3

    #@4d
    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@4f
    goto :goto_18

    #@50
    :cond_50
    if-eqz v4, :cond_55

    #@52
    .line 868
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    #@55
    :cond_55
    return-void
.end method

.method truncateFinal()V
    .registers 11

    #@0
    .line 874
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    #@a
    sub-long/2addr v0, v2

    #@b
    .line 876
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@11
    .line 877
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@17
    const/4 v4, 0x0

    #@18
    :goto_18
    move-object v9, v3

    #@19
    move-object v3, v2

    #@1a
    move-object v2, v9

    #@1b
    if-eqz v2, :cond_3c

    #@1d
    .line 881
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@1f
    const/4 v6, 0x1

    #@20
    if-le v5, v6, :cond_3c

    #@22
    .line 882
    iget-object v5, v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    #@24
    check-cast v5, Lio/reactivex/schedulers/Timed;

    #@26
    .line 883
    invoke-virtual {v5}, Lio/reactivex/schedulers/Timed;->time()J

    #@29
    move-result-wide v7

    #@2a
    cmp-long v5, v7, v0

    #@2c
    if-gtz v5, :cond_3c

    #@2e
    add-int/lit8 v4, v4, 0x1

    #@30
    .line 885
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@32
    sub-int/2addr v3, v6

    #@33
    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    #@35
    .line 887
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    #@3b
    goto :goto_18

    #@3c
    :cond_3c
    if-eqz v4, :cond_41

    #@3e
    .line 896
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    #@41
    :cond_41
    return-void
.end method
