.class final Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;
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
    name = "SizeBoundReplayBuffer"
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
.field private static final serialVersionUID:J = 0xf5f291fe2c1030bL


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/subjects/ReplaySubject$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lio/reactivex/subjects/ReplaySubject$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    #@0
    .line 840
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    const-string v0, "maxSize"

    #@5
    .line 841
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    #@8
    move-result p1

    #@9
    iput p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->maxSize:I

    #@b
    .line 842
    new-instance p1, Lio/reactivex/subjects/ReplaySubject$Node;

    #@d
    const/4 v0, 0x0

    #@e
    invoke-direct {p1, v0}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    #@11
    .line 843
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    #@13
    .line 844
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@15
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 857
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$Node;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    #@5
    .line 858
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    #@7
    .line 860
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    #@9
    .line 861
    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    #@b
    add-int/lit8 v1, v1, 0x1

    #@d
    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    #@f
    .line 862
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject$Node;->set(Ljava/lang/Object;)V

    #@12
    .line 864
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->trim()V

    #@15
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .registers 5

    #@0
    .line 869
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$Node;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    #@5
    .line 870
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    #@7
    .line 872
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    #@9
    .line 873
    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    #@b
    const/4 v2, 0x1

    #@c
    add-int/2addr v1, v2

    #@d
    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    #@f
    .line 874
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject$Node;->lazySet(Ljava/lang/Object;)V

    #@12
    .line 876
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->trimHead()V

    #@15
    .line 877
    iput-boolean v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->done:Z

    #@17
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 899
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@2
    const/4 v1, 0x0

    #@3
    move-object v2, v1

    #@4
    .line 902
    :goto_4
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Lio/reactivex/subjects/ReplaySubject$Node;

    #@a
    if-nez v3, :cond_22

    #@c
    .line 910
    iget-object v0, v0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    #@e
    if-nez v0, :cond_11

    #@10
    return-object v1

    #@11
    .line 914
    :cond_11
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1f

    #@17
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1e

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    return-object v0

    #@1f
    .line 915
    :cond_1f
    :goto_1f
    iget-object v0, v2, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    #@21
    return-object v0

    #@22
    :cond_22
    move-object v2, v0

    #@23
    move-object v0, v3

    #@24
    goto :goto_4
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 924
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@2
    .line 925
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    if-nez v1, :cond_10

    #@a
    .line 928
    array-length v0, p1

    #@b
    if-eqz v0, :cond_37

    #@d
    .line 929
    aput-object v2, p1, v3

    #@f
    goto :goto_37

    #@10
    .line 932
    :cond_10
    array-length v4, p1

    #@11
    if-ge v4, v1, :cond_23

    #@13
    .line 933
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@1a
    move-result-object p1

    #@1b
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    check-cast p1, [Ljava/lang/Object;

    #@21
    check-cast p1, [Ljava/lang/Object;

    #@23
    :cond_23
    :goto_23
    if-eq v3, v1, :cond_32

    #@25
    .line 938
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lio/reactivex/subjects/ReplaySubject$Node;

    #@2b
    .line 939
    iget-object v4, v0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    #@2d
    aput-object v4, p1, v3

    #@2f
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_23

    #@32
    .line 943
    :cond_32
    array-length v0, p1

    #@33
    if-le v0, v1, :cond_37

    #@35
    .line 944
    aput-object v2, p1, v1

    #@37
    :cond_37
    :goto_37
    return-object p1
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 954
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 959
    :cond_7
    iget-object v0, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    #@9
    .line 961
    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@b
    check-cast v1, Lio/reactivex/subjects/ReplaySubject$Node;

    #@d
    const/4 v2, 0x1

    #@e
    if-nez v1, :cond_12

    #@10
    .line 963
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@12
    :cond_12
    move v3, v2

    #@13
    .line 969
    :cond_13
    :goto_13
    iget-boolean v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@15
    const/4 v5, 0x0

    #@16
    if-eqz v4, :cond_1b

    #@18
    .line 970
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@1a
    return-void

    #@1b
    .line 974
    :cond_1b
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Lio/reactivex/subjects/ReplaySubject$Node;

    #@21
    if-nez v4, :cond_34

    #@23
    .line 1001
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    if-eqz v4, :cond_2a

    #@29
    goto :goto_13

    #@2a
    .line 1005
    :cond_2a
    iput-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@2c
    neg-int v3, v3

    #@2d
    .line 1007
    invoke-virtual {p1, v3}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_13

    #@33
    return-void

    #@34
    .line 980
    :cond_34
    iget-object v1, v4, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    #@36
    .line 982
    iget-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->done:Z

    #@38
    if-eqz v6, :cond_56

    #@3a
    .line 983
    invoke-virtual {v4}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    #@3d
    move-result-object v6

    #@3e
    if-nez v6, :cond_56

    #@40
    .line 985
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_4a

    #@46
    .line 986
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@49
    goto :goto_51

    #@4a
    .line 988
    :cond_4a
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    #@4d
    move-result-object v1

    #@4e
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@51
    .line 990
    :goto_51
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    #@53
    .line 991
    iput-boolean v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    #@55
    return-void

    #@56
    .line 996
    :cond_56
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@59
    move-object v1, v4

    #@5a
    goto :goto_13
.end method

.method public size()I
    .registers 4

    #@0
    .line 1017
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    const v2, 0x7fffffff

    #@6
    if-eq v1, v2, :cond_25

    #@8
    .line 1019
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lio/reactivex/subjects/ReplaySubject$Node;

    #@e
    if-nez v2, :cond_21

    #@10
    .line 1021
    iget-object v0, v0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    #@12
    .line 1022
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1e

    #@18
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_25

    #@1e
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_25

    #@21
    :cond_21
    add-int/lit8 v1, v1, 0x1

    #@23
    move-object v0, v2

    #@24
    goto :goto_3

    #@25
    :cond_25
    :goto_25
    return v1
.end method

.method trim()V
    .registers 3

    #@0
    .line 848
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    #@2
    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->maxSize:I

    #@4
    if-le v0, v1, :cond_14

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    .line 849
    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    #@a
    .line 850
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@c
    .line 851
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lio/reactivex/subjects/ReplaySubject$Node;

    #@12
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@14
    :cond_14
    return-void
.end method

.method public trimHead()V
    .registers 4

    #@0
    .line 886
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@2
    .line 887
    iget-object v1, v0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    #@4
    if-eqz v1, :cond_15

    #@6
    .line 888
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$Node;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    #@c
    .line 889
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$Node;->lazySet(Ljava/lang/Object;)V

    #@13
    .line 890
    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    #@15
    :cond_15
    return-void
.end method
