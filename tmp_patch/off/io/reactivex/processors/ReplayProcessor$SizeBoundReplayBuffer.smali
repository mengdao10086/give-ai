.class final Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;
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
    name = "SizeBoundReplayBuffer"
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
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    #@0
    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "maxSize"

    #@5
    .line 837
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@8
    move-result p1

    #@9
    iput p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    #@b
    .line 838
    new-instance p1, Lio/reactivex/processors/ReplayProcessor$Node;

    #@d
    const/4 v0, 0x0

    #@e
    invoke-direct {p1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    #@11
    .line 839
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    #@13
    .line 840
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@15
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    #@0
    .line 872
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->trimHead()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 873
    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    #@6
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 865
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    #@2
    .line 866
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->trimHead()V

    #@5
    const/4 p1, 0x1

    #@6
    .line 867
    iput-boolean p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    #@8
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 892
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

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
    .line 897
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@2
    .line 899
    :goto_2
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    #@8
    if-nez v1, :cond_d

    #@a
    .line 901
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    #@c
    return-object v0

    #@d
    :cond_d
    move-object v0, v1

    #@e
    goto :goto_2
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 911
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@2
    const/4 v1, 0x0

    #@3
    move-object v2, v0

    #@4
    move v3, v1

    #@5
    .line 914
    :goto_5
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lio/reactivex/processors/ReplayProcessor$Node;

    #@b
    if-nez v2, :cond_36

    #@d
    .line 921
    array-length v2, p1

    #@e
    if-ge v2, v3, :cond_20

    #@10
    .line 922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@17
    move-result-object p1

    #@18
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1b
    move-result-object p1

    #@1c
    check-cast p1, [Ljava/lang/Object;

    #@1e
    check-cast p1, [Ljava/lang/Object;

    #@20
    :cond_20
    :goto_20
    if-ge v1, v3, :cond_2f

    #@22
    .line 926
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lio/reactivex/processors/ReplayProcessor$Node;

    #@28
    .line 927
    iget-object v2, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    #@2a
    aput-object v2, p1, v1

    #@2c
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_20

    #@2f
    .line 930
    :cond_2f
    array-length v0, p1

    #@30
    if-le v0, v3, :cond_35

    #@32
    const/4 v0, 0x0

    #@33
    .line 931
    aput-object v0, p1, v3

    #@35
    :cond_35
    return-object p1

    #@36
    :cond_36
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_5
.end method

.method public isDone()Z
    .registers 2

    #@0
    .line 887
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    #@2
    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 853
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    #@5
    .line 854
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    #@7
    .line 856
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    #@9
    .line 857
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    #@b
    add-int/lit8 v1, v1, 0x1

    #@d
    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    #@f
    .line 858
    invoke-virtual {p1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;->set(Ljava/lang/Object;)V

    #@12
    .line 860
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->trim()V

    #@15
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
    .line 939
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 944
    :cond_7
    iget-object v0, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->downstream:Lorg/reactivestreams/Subscriber;

    #@9
    .line 946
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@b
    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    #@d
    if-nez v1, :cond_11

    #@f
    .line 948
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@11
    .line 951
    :cond_11
    iget-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    #@13
    const/4 v4, 0x1

    #@14
    move v5, v4

    #@15
    .line 955
    :cond_15
    iget-object v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    #@17
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@1a
    move-result-wide v6

    #@1b
    :goto_1b
    cmp-long v8, v2, v6

    #@1d
    const/4 v9, 0x0

    #@1e
    if-eqz v8, :cond_55

    #@20
    .line 958
    iget-boolean v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@22
    if-eqz v10, :cond_27

    #@24
    .line 959
    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@26
    return-void

    #@27
    .line 963
    :cond_27
    iget-boolean v10, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    #@29
    .line 964
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    #@2c
    move-result-object v11

    #@2d
    check-cast v11, Lio/reactivex/processors/ReplayProcessor$Node;

    #@2f
    if-nez v11, :cond_33

    #@31
    move v12, v4

    #@32
    goto :goto_34

    #@33
    :cond_33
    const/4 v12, 0x0

    #@34
    :goto_34
    if-eqz v10, :cond_48

    #@36
    if-eqz v12, :cond_48

    #@38
    .line 968
    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@3a
    .line 969
    iput-boolean v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@3c
    .line 970
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    #@3e
    if-nez p1, :cond_44

    #@40
    .line 972
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@43
    goto :goto_47

    #@44
    .line 974
    :cond_44
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@47
    :goto_47
    return-void

    #@48
    :cond_48
    if-eqz v12, :cond_4b

    #@4a
    goto :goto_55

    #@4b
    .line 983
    :cond_4b
    iget-object v1, v11, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    #@4d
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@50
    const-wide/16 v8, 0x1

    #@52
    add-long/2addr v2, v8

    #@53
    move-object v1, v11

    #@54
    goto :goto_1b

    #@55
    :cond_55
    :goto_55
    if-nez v8, :cond_78

    #@57
    .line 989
    iget-boolean v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@59
    if-eqz v6, :cond_5e

    #@5b
    .line 990
    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@5d
    return-void

    #@5e
    .line 994
    :cond_5e
    iget-boolean v6, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    #@60
    if-eqz v6, :cond_78

    #@62
    .line 996
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    #@65
    move-result-object v6

    #@66
    if-nez v6, :cond_78

    #@68
    .line 997
    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@6a
    .line 998
    iput-boolean v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    #@6c
    .line 999
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    #@6e
    if-nez p1, :cond_74

    #@70
    .line 1001
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@73
    goto :goto_77

    #@74
    .line 1003
    :cond_74
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@77
    :goto_77
    return-void

    #@78
    .line 1009
    :cond_78
    iput-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    #@7a
    .line 1010
    iput-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    #@7c
    neg-int v5, v5

    #@7d
    .line 1012
    invoke-virtual {p1, v5}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    #@80
    move-result v5

    #@81
    if-nez v5, :cond_15

    #@83
    return-void
.end method

.method public size()I
    .registers 4

    #@0
    .line 1022
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    const v2, 0x7fffffff

    #@6
    if-eq v1, v2, :cond_14

    #@8
    .line 1024
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lio/reactivex/processors/ReplayProcessor$Node;

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_14

    #@11
    :cond_11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_3

    #@14
    :cond_14
    :goto_14
    return v1
.end method

.method trim()V
    .registers 3

    #@0
    .line 844
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    #@2
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    #@4
    if-le v0, v1, :cond_14

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    .line 845
    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    #@a
    .line 846
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@c
    .line 847
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lio/reactivex/processors/ReplayProcessor$Node;

    #@12
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@14
    :cond_14
    return-void
.end method

.method public trimHead()V
    .registers 3

    #@0
    .line 878
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@2
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 879
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    #@c
    .line 880
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@e
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lio/reactivex/processors/ReplayProcessor$Node;->lazySet(Ljava/lang/Object;)V

    #@15
    .line 881
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    #@17
    :cond_17
    return-void
.end method
