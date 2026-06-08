.class final Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xa2f4068c73be4b3L


# instance fields
.field final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile done:Z

.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    #@0
    .line 638
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 639
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
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@10
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 644
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 645
    iget p1, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@7
    add-int/lit8 p1, p1, 0x1

    #@9
    iput p1, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@b
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 650
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 651
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->trimHead()V

    #@8
    .line 652
    iget p1, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@a
    const/4 v0, 0x1

    #@b
    add-int/2addr p1, v0

    #@c
    iput p1, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@e
    .line 653
    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->done:Z

    #@10
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 665
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_26

    #@5
    .line 667
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@7
    add-int/lit8 v3, v0, -0x1

    #@9
    .line 668
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    .line 669
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1b

    #@13
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1a

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    return-object v3

    #@1b
    :cond_1b
    :goto_1b
    const/4 v3, 0x1

    #@1c
    if-ne v0, v3, :cond_1f

    #@1e
    return-object v1

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, -0x2

    #@21
    .line 673
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    :cond_26
    return-object v1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 683
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    if-nez v0, :cond_c

    #@6
    .line 685
    array-length v0, p1

    #@7
    if-eqz v0, :cond_b

    #@9
    .line 686
    aput-object v1, p1, v2

    #@b
    :cond_b
    return-object p1

    #@c
    .line 690
    :cond_c
    iget-object v3, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@e
    add-int/lit8 v4, v0, -0x1

    #@10
    .line 691
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    .line 693
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_20

    #@1a
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_2a

    #@20
    :cond_20
    add-int/lit8 v0, v0, -0x1

    #@22
    if-nez v0, :cond_2a

    #@24
    .line 696
    array-length v0, p1

    #@25
    if-eqz v0, :cond_29

    #@27
    .line 697
    aput-object v1, p1, v2

    #@29
    :cond_29
    return-object p1

    #@2a
    .line 703
    :cond_2a
    array-length v4, p1

    #@2b
    if-ge v4, v0, :cond_3d

    #@2d
    .line 704
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@30
    move-result-object p1

    #@31
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@34
    move-result-object p1

    #@35
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@38
    move-result-object p1

    #@39
    check-cast p1, [Ljava/lang/Object;

    #@3b
    check-cast p1, [Ljava/lang/Object;

    #@3d
    :cond_3d
    :goto_3d
    if-ge v2, v0, :cond_48

    #@3f
    .line 707
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v4

    #@43
    aput-object v4, p1, v2

    #@45
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_3d

    #@48
    .line 709
    :cond_48
    array-length v2, p1

    #@49
    if-le v2, v0, :cond_4d

    #@4b
    .line 710
    aput-object v1, p1, v0

    #@4d
    :cond_4d
    return-object p1
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 719
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 724
    :cond_7
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@9
    .line 725
    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    #@b
    .line 727
    iget-object v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@d
    check-cast v2, Ljava/lang/Integer;

    #@f
    const/4 v3, 0x1

    #@10
    if-eqz v2, :cond_17

    #@12
    .line 730
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v2

    #@16
    goto :goto_1e

    #@17
    :cond_17
    const/4 v2, 0x0

    #@18
    .line 733
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v4

    #@1c
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@1e
    :goto_1e
    move v4, v3

    #@1f
    .line 738
    :cond_1f
    :goto_1f
    iget-boolean v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@21
    const/4 v6, 0x0

    #@22
    if-eqz v5, :cond_27

    #@24
    .line 739
    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@26
    return-void

    #@27
    .line 743
    :cond_27
    iget v5, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@29
    :goto_29
    if-eq v5, v2, :cond_5e

    #@2b
    .line 747
    iget-boolean v7, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@2d
    if-eqz v7, :cond_32

    #@2f
    .line 748
    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@31
    return-void

    #@32
    .line 752
    :cond_32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    .line 754
    iget-boolean v8, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->done:Z

    #@38
    if-eqz v8, :cond_58

    #@3a
    add-int/lit8 v8, v2, 0x1

    #@3c
    if-ne v8, v5, :cond_58

    #@3e
    .line 756
    iget v5, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@40
    if-ne v8, v5, :cond_58

    #@42
    .line 758
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_4c

    #@48
    .line 759
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    #@4b
    goto :goto_53

    #@4c
    .line 761
    :cond_4c
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    #@4f
    move-result-object v0

    #@50
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@53
    .line 763
    :goto_53
    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@55
    .line 764
    iput-boolean v3, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@57
    return-void

    #@58
    .line 770
    :cond_58
    invoke-interface {v1, v7}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@5b
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_29

    #@5e
    .line 774
    :cond_5e
    iget v5, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@60
    if-eq v2, v5, :cond_63

    #@62
    goto :goto_1f

    #@63
    .line 778
    :cond_63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v5

    #@67
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@69
    neg-int v4, v4

    #@6a
    .line 780
    invoke-virtual {p1, v4}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    #@6d
    move-result v4

    #@6e
    if-nez v4, :cond_1f

    #@70
    return-void
.end method

.method public size()I
    .registers 5

    #@0
    .line 789
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->size:I

    #@2
    if-eqz v0, :cond_1b

    #@4
    .line 791
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    #@6
    add-int/lit8 v2, v0, -0x1

    #@8
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    .line 792
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1a

    #@12
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    return v0

    #@1a
    :cond_1a
    :goto_1a
    return v2

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    return v0
.end method

.method public trimHead()V
    .registers 1

    #@0
    return-void
.end method
