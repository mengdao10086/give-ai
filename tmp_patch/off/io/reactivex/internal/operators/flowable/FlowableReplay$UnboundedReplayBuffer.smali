.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    #@0
    .line 624
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    #@0
    .line 641
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    #@7
    .line 642
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    #@d
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 635
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    #@7
    .line 636
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    #@9
    add-int/lit8 p1, p1, 0x1

    #@b
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    #@d
    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 629
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    #@7
    .line 630
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    #@9
    add-int/lit8 p1, p1, 0x1

    #@b
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    #@d
    return-void
.end method

.method public replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 647
    monitor-enter p1

    #@1
    .line 648
    :try_start_1
    iget-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    #@3
    const/4 v1, 0x1

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 649
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    #@8
    .line 650
    monitor-exit p1

    #@9
    return-void

    #@a
    .line 652
    :cond_a
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    #@c
    .line 653
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_8b

    #@d
    .line 654
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->child:Lorg/reactivestreams/Subscriber;

    #@f
    .line 657
    :goto_f
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_16

    #@15
    return-void

    #@16
    .line 660
    :cond_16
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    #@18
    .line 662
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/Integer;

    #@1e
    const/4 v3, 0x0

    #@1f
    if-eqz v2, :cond_26

    #@21
    .line 663
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v2

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v2, v3

    #@27
    .line 665
    :goto_27
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->get()J

    #@2a
    move-result-wide v4

    #@2b
    const-wide/16 v6, 0x0

    #@2d
    move-wide v8, v4

    #@2e
    move-wide v10, v6

    #@2f
    :goto_2f
    cmp-long v12, v8, v6

    #@31
    if-eqz v12, :cond_65

    #@33
    if-ge v2, v1, :cond_65

    #@35
    .line 670
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v12

    #@39
    .line 672
    :try_start_39
    invoke-static {v12, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    #@3c
    move-result v12
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_4e

    #@3d
    if-eqz v12, :cond_40

    #@3f
    return-void

    #@40
    .line 683
    :cond_40
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    #@43
    move-result v12

    #@44
    if-eqz v12, :cond_47

    #@46
    return-void

    #@47
    :cond_47
    add-int/lit8 v2, v2, 0x1

    #@49
    const-wide/16 v12, 0x1

    #@4b
    sub-long/2addr v8, v12

    #@4c
    add-long/2addr v10, v12

    #@4d
    goto :goto_2f

    #@4e
    :catchall_4e
    move-exception v1

    #@4f
    .line 676
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@52
    .line 677
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->dispose()V

    #@55
    .line 678
    invoke-static {v12}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@58
    move-result p1

    #@59
    if-nez p1, :cond_64

    #@5b
    invoke-static {v12}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@5e
    move-result p1

    #@5f
    if-nez p1, :cond_64

    #@61
    .line 679
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@64
    :cond_64
    return-void

    #@65
    :cond_65
    cmp-long v1, v10, v6

    #@67
    if-eqz v1, :cond_7b

    #@69
    .line 691
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v1

    #@6d
    iput-object v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index:Ljava/lang/Object;

    #@6f
    const-wide v1, 0x7fffffffffffffffL

    #@74
    cmp-long v1, v4, v1

    #@76
    if-eqz v1, :cond_7b

    #@78
    .line 693
    invoke-virtual {p1, v10, v11}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->produced(J)J

    #@7b
    .line 697
    :cond_7b
    monitor-enter p1

    #@7c
    .line 698
    :try_start_7c
    iget-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    #@7e
    if-nez v1, :cond_84

    #@80
    .line 699
    iput-boolean v3, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    #@82
    .line 700
    monitor-exit p1

    #@83
    return-void

    #@84
    .line 702
    :cond_84
    iput-boolean v3, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    #@86
    .line 703
    monitor-exit p1

    #@87
    goto :goto_f

    #@88
    :catchall_88
    move-exception v0

    #@89
    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_88

    #@8a
    throw v0

    #@8b
    :catchall_8b
    move-exception v0

    #@8c
    .line 653
    :try_start_8c
    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    #@8d
    throw v0
.end method
