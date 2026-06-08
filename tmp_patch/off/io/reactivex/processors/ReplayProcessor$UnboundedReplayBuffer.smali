.class final Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;
.super Ljava/lang/Object;
.source "ReplayProcessor.java"

# interfaces
.implements Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    #@0
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 637
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const-string v1, "capacityHint"

    #@7
    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@a
    move-result p1

    #@b
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@10
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 654
    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    #@3
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 648
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    #@2
    const/4 p1, 0x1

    #@3
    .line 649
    iput-boolean p1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    #@5
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 795
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 665
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 669
    :cond_6
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 675
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    if-nez v0, :cond_c

    #@6
    .line 677
    array-length v0, p1

    #@7
    if-eqz v0, :cond_b

    #@9
    .line 678
    aput-object v1, p1, v2

    #@b
    :cond_b
    return-object p1

    #@c
    .line 682
    :cond_c
    iget-object v3, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@e
    .line 684
    array-length v4, p1

    #@f
    if-ge v4, v0, :cond_21

    #@11
    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@18
    move-result-object p1

    #@19
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1c
    move-result-object p1

    #@1d
    check-cast p1, [Ljava/lang/Object;

    #@1f
    check-cast p1, [Ljava/lang/Object;

    #@21
    :cond_21
    :goto_21
    if-ge v2, v0, :cond_2c

    #@23
    .line 688
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    aput-object v4, p1, v2

    #@29
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_21

    #@2c
    .line 690
    :cond_2c
    array-length v2, p1

    #@2d
    if-le v2, v0, :cond_31

    #@2f
    .line 691
    aput-object v1, p1, v0

    #@31
    :cond_31
    return-object p1
.end method

.method public isDone()Z
    .registers 2

    #@0
    .line 790
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    #@2
    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 642
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 643
    iget p1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    #@7
    add-int/lit8 p1, p1, 0x1

    #@9
    iput p1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    #@b
    return-void
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 699
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 704
    :cond_7
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@9
    .line 705
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@b
    .line 707
    iget-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@d
    check-cast v2, Ljava/lang/Integer;

    #@f
    if-eqz v2, :cond_16

    #@11
    .line 710
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v2

    #@15
    goto :goto_1d

    #@16
    :cond_16
    const/4 v2, 0x0

    #@17
    .line 713
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    iput-object v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@1d
    .line 715
    :goto_1d
    iget-wide v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    #@1f
    const/4 v5, 0x1

    #@20
    move v6, v5

    #@21
    .line 719
    :cond_21
    iget-object v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@23
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@26
    move-result-wide v7

    #@27
    :goto_27
    cmp-long v9, v3, v7

    #@29
    const/4 v10, 0x0

    #@2a
    if-eqz v9, :cond_5b

    #@2c
    .line 722
    iget-boolean v11, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@2e
    if-eqz v11, :cond_33

    #@30
    .line 723
    iput-object v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@32
    return-void

    #@33
    .line 727
    :cond_33
    iget-boolean v11, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    #@35
    .line 728
    iget v12, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    #@37
    if-eqz v11, :cond_4b

    #@39
    if-ne v2, v12, :cond_4b

    #@3b
    .line 731
    iput-object v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@3d
    .line 732
    iput-boolean v5, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@3f
    .line 733
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    #@41
    if-nez p1, :cond_47

    #@43
    .line 735
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@46
    goto :goto_4a

    #@47
    .line 737
    :cond_47
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@4a
    :goto_4a
    return-void

    #@4b
    :cond_4b
    if-ne v2, v12, :cond_4e

    #@4d
    goto :goto_5b

    #@4e
    .line 746
    :cond_4e
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v9

    #@52
    invoke-interface {v1, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@55
    add-int/lit8 v2, v2, 0x1

    #@57
    const-wide/16 v9, 0x1

    #@59
    add-long/2addr v3, v9

    #@5a
    goto :goto_27

    #@5b
    :cond_5b
    :goto_5b
    if-nez v9, :cond_7c

    #@5d
    .line 753
    iget-boolean v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@5f
    if-eqz v7, :cond_64

    #@61
    .line 754
    iput-object v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@63
    return-void

    #@64
    .line 758
    :cond_64
    iget-boolean v7, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    #@66
    .line 759
    iget v8, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    #@68
    if-eqz v7, :cond_7c

    #@6a
    if-ne v2, v8, :cond_7c

    #@6c
    .line 762
    iput-object v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@6e
    .line 763
    iput-boolean v5, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@70
    .line 764
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    #@72
    if-nez p1, :cond_78

    #@74
    .line 766
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@77
    goto :goto_7b

    #@78
    .line 768
    :cond_78
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@7b
    :goto_7b
    return-void

    #@7c
    .line 774
    :cond_7c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7f
    move-result-object v7

    #@80
    iput-object v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@82
    .line 775
    iput-wide v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    #@84
    neg-int v6, v6

    #@85
    .line 776
    invoke-virtual {p1, v6}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    #@88
    move-result v6

    #@89
    if-nez v6, :cond_21

    #@8b
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 785
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    #@2
    return v0
.end method

.method public trimHead()V
    .registers 1

    #@0
    return-void
.end method
