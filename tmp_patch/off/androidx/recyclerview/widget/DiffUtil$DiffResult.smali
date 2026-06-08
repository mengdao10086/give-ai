.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    #@0
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 568
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@5
    .line 569
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    #@7
    .line 570
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    #@9
    const/4 p2, 0x0

    #@a
    .line 571
    invoke-static {p3, p2}, Ljava/util/Arrays;->fill([II)V

    #@d
    .line 572
    invoke-static {p4, p2}, Ljava/util/Arrays;->fill([II)V

    #@10
    .line 573
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@12
    .line 574
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    #@15
    move-result p2

    #@16
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    #@18
    .line 575
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    #@1b
    move-result p1

    #@1c
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    #@1e
    .line 576
    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    #@20
    .line 577
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->addRootSnake()V

    #@23
    .line 578
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItems()V

    #@26
    return-void
.end method

.method private addRootSnake()V
    .registers 4

    #@0
    .line 586
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_b

    #@9
    const/4 v0, 0x0

    #@a
    goto :goto_13

    #@b
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@13
    :goto_13
    if-eqz v0, :cond_1d

    #@15
    .line 587
    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@17
    if-nez v2, :cond_1d

    #@19
    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@1b
    if-eqz v0, :cond_31

    #@1d
    .line 588
    :cond_1d
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@1f
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    #@22
    .line 589
    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@24
    .line 590
    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@26
    .line 591
    iput-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    #@28
    .line 592
    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@2a
    .line 593
    iput-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    #@2c
    .line 594
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@2e
    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@31
    :cond_31
    return-void
.end method

.method private dispatchAdditions(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    #@0
    .line 873
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    #@2
    if-nez v0, :cond_8

    #@4
    .line 874
    invoke-interface {p2, p3, p4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    sub-int/2addr p4, v0

    #@a
    :goto_a
    if-ltz p4, :cond_82

    #@c
    .line 878
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    #@e
    add-int v2, p5, p4

    #@10
    aget v1, v1, v2

    #@12
    and-int/lit8 v3, v1, 0x1f

    #@14
    if-eqz v3, :cond_66

    #@16
    const/4 v4, 0x4

    #@17
    if-eq v3, v4, :cond_4f

    #@19
    const/16 v5, 0x8

    #@1b
    if-eq v3, v5, :cond_4f

    #@1d
    const/16 v1, 0x10

    #@1f
    if-ne v3, v1, :cond_2b

    #@21
    .line 901
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    #@23
    const/4 v3, 0x0

    #@24
    invoke-direct {v1, v2, p3, v3}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    #@27
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_7f

    #@2b
    .line 904
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2d
    new-instance p2, Ljava/lang/StringBuilder;

    #@2f
    const-string p3, "unknown flag for pos "

    #@31
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object p2

    #@38
    const-string p3, " "

    #@3a
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p2

    #@3e
    int-to-long p3, v3

    #@3f
    .line 906
    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    #@42
    move-result-object p3

    #@43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object p2

    #@47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object p2

    #@4b
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4e
    throw p1

    #@4f
    :cond_4f
    shr-int/lit8 v1, v1, 0x5

    #@51
    .line 889
    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    #@54
    move-result-object v5

    #@55
    .line 893
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@57
    invoke-interface {p2, v5, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    #@5a
    if-ne v3, v4, :cond_7f

    #@5c
    .line 896
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@5e
    .line 897
    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    #@61
    move-result-object v1

    #@62
    .line 896
    invoke-interface {p2, p3, v0, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    #@65
    goto :goto_7f

    #@66
    .line 881
    :cond_66
    invoke-interface {p2, p3, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    #@69
    .line 882
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6c
    move-result-object v1

    #@6d
    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_7f

    #@73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@76
    move-result-object v2

    #@77
    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    #@79
    .line 883
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@7b
    add-int/2addr v3, v0

    #@7c
    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@7e
    goto :goto_6d

    #@7f
    :cond_7f
    :goto_7f
    add-int/lit8 p4, p4, -0x1

    #@81
    goto :goto_a

    #@82
    :cond_82
    return-void
.end method

.method private dispatchRemovals(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    #@0
    .line 913
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    #@2
    if-nez v0, :cond_8

    #@4
    .line 914
    invoke-interface {p2, p3, p4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    sub-int/2addr p4, v0

    #@a
    :goto_a
    if-ltz p4, :cond_8d

    #@c
    .line 918
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    #@e
    add-int v2, p5, p4

    #@10
    aget v1, v1, v2

    #@12
    and-int/lit8 v3, v1, 0x1f

    #@14
    if-eqz v3, :cond_6e

    #@16
    const/4 v4, 0x4

    #@17
    if-eq v3, v4, :cond_50

    #@19
    const/16 v5, 0x8

    #@1b
    if-eq v3, v5, :cond_50

    #@1d
    const/16 v1, 0x10

    #@1f
    if-ne v3, v1, :cond_2c

    #@21
    .line 942
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    #@23
    add-int v3, p3, p4

    #@25
    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    #@28
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_89

    #@2c
    .line 945
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2e
    new-instance p2, Ljava/lang/StringBuilder;

    #@30
    const-string p3, "unknown flag for pos "

    #@32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@35
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object p2

    #@39
    const-string p3, " "

    #@3b
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object p2

    #@3f
    int-to-long p3, v3

    #@40
    .line 947
    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    #@43
    move-result-object p3

    #@44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object p2

    #@48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object p2

    #@4c
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw p1

    #@50
    :cond_50
    shr-int/lit8 v1, v1, 0x5

    #@52
    const/4 v5, 0x0

    #@53
    .line 929
    invoke-static {p1, v1, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    #@56
    move-result-object v5

    #@57
    add-int v6, p3, p4

    #@59
    .line 934
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@5b
    sub-int/2addr v7, v0

    #@5c
    invoke-interface {p2, v6, v7}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    #@5f
    if-ne v3, v4, :cond_89

    #@61
    .line 937
    iget v3, v5, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@63
    sub-int/2addr v3, v0

    #@64
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@66
    .line 938
    invoke-virtual {v4, v2, v1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    .line 937
    invoke-interface {p2, v3, v0, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    #@6d
    goto :goto_89

    #@6e
    :cond_6e
    add-int v1, p3, p4

    #@70
    .line 921
    invoke-interface {p2, v1, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    #@73
    .line 922
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@76
    move-result-object v1

    #@77
    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_89

    #@7d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v2

    #@81
    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    #@83
    .line 923
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@85
    sub-int/2addr v3, v0

    #@86
    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@88
    goto :goto_77

    #@89
    :cond_89
    :goto_89
    add-int/lit8 p4, p4, -0x1

    #@8b
    goto/16 :goto_a

    #@8d
    :cond_8d
    return-void
.end method

.method private findAddition(III)V
    .registers 6

    #@0
    .line 646
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    #@2
    add-int/lit8 v1, p1, -0x1

    #@4
    aget v0, v0, v1

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 649
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    #@d
    return-void
.end method

.method private findMatchingItem(IIIZ)Z
    .registers 13

    #@0
    if-eqz p4, :cond_7

    #@2
    add-int/lit8 p2, p2, -0x1

    #@4
    move v1, p1

    #@5
    move v0, p2

    #@6
    goto :goto_a

    #@7
    :cond_7
    add-int/lit8 v0, p1, -0x1

    #@9
    move v1, v0

    #@a
    :goto_a
    if-ltz p3, :cond_7c

    #@c
    .line 733
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@e
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@14
    .line 734
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@16
    iget v4, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@18
    add-int/2addr v3, v4

    #@19
    .line 735
    iget v4, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@1b
    iget v5, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@1d
    add-int/2addr v4, v5

    #@1e
    const/16 v5, 0x8

    #@20
    const/4 v6, 0x4

    #@21
    const/4 v7, 0x1

    #@22
    if-eqz p4, :cond_4c

    #@24
    sub-int/2addr v1, v7

    #@25
    :goto_25
    if-lt v1, v3, :cond_75

    #@27
    .line 739
    iget-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@29
    invoke-virtual {p2, v1, v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    #@2c
    move-result p2

    #@2d
    if-eqz p2, :cond_49

    #@2f
    .line 741
    iget-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@31
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    #@34
    move-result p1

    #@35
    if-eqz p1, :cond_38

    #@37
    goto :goto_39

    #@38
    :cond_38
    move v5, v6

    #@39
    .line 744
    :goto_39
    iget-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    #@3b
    shl-int/lit8 p2, v1, 0x5

    #@3d
    or-int/lit8 p2, p2, 0x10

    #@3f
    aput p2, p1, v0

    #@41
    .line 745
    iget-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    #@43
    shl-int/lit8 p2, v0, 0x5

    #@45
    or-int/2addr p2, v5

    #@46
    aput p2, p1, v1

    #@48
    return v7

    #@49
    :cond_49
    add-int/lit8 v1, v1, -0x1

    #@4b
    goto :goto_25

    #@4c
    :cond_4c
    sub-int/2addr p2, v7

    #@4d
    :goto_4d
    if-lt p2, v4, :cond_75

    #@4f
    .line 752
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@51
    invoke-virtual {v1, v0, p2}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_72

    #@57
    .line 754
    iget-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@59
    invoke-virtual {p3, v0, p2}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    #@5c
    move-result p3

    #@5d
    if-eqz p3, :cond_60

    #@5f
    goto :goto_61

    #@60
    :cond_60
    move v5, v6

    #@61
    .line 757
    :goto_61
    iget-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    #@63
    sub-int/2addr p1, v7

    #@64
    shl-int/lit8 p4, p2, 0x5

    #@66
    or-int/lit8 p4, p4, 0x10

    #@68
    aput p4, p3, p1

    #@6a
    .line 758
    iget-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    #@6c
    shl-int/lit8 p1, p1, 0x5

    #@6e
    or-int/2addr p1, v5

    #@6f
    aput p1, p3, p2

    #@71
    return v7

    #@72
    :cond_72
    add-int/lit8 p2, p2, -0x1

    #@74
    goto :goto_4d

    #@75
    .line 763
    :cond_75
    iget v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@77
    .line 764
    iget p2, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@79
    add-int/lit8 p3, p3, -0x1

    #@7b
    goto :goto_a

    #@7c
    :cond_7c
    const/4 p1, 0x0

    #@7d
    return p1
.end method

.method private findMatchingItems()V
    .registers 10

    #@0
    .line 610
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    #@2
    .line 611
    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    #@4
    .line 613
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@6
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x1

    #@b
    sub-int/2addr v2, v3

    #@c
    :goto_c
    if-ltz v2, :cond_62

    #@e
    .line 614
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@10
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@16
    .line 615
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@18
    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@1a
    add-int/2addr v5, v6

    #@1b
    .line 616
    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@1d
    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@1f
    add-int/2addr v6, v7

    #@20
    .line 617
    iget-boolean v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    #@22
    if-eqz v7, :cond_34

    #@24
    :goto_24
    if-le v0, v5, :cond_2c

    #@26
    .line 620
    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findAddition(III)V

    #@29
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_24

    #@2c
    :cond_2c
    :goto_2c
    if-le v1, v6, :cond_34

    #@2e
    .line 626
    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findRemoval(III)V

    #@31
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_2c

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    .line 630
    :goto_35
    iget v1, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@37
    if-ge v0, v1, :cond_5b

    #@39
    .line 632
    iget v1, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@3b
    add-int/2addr v1, v0

    #@3c
    .line 633
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@3e
    add-int/2addr v5, v0

    #@3f
    .line 634
    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@41
    .line 635
    invoke-virtual {v6, v1, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_49

    #@47
    move v6, v3

    #@48
    goto :goto_4a

    #@49
    :cond_49
    const/4 v6, 0x2

    #@4a
    .line 637
    :goto_4a
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    #@4c
    shl-int/lit8 v8, v5, 0x5

    #@4e
    or-int/2addr v8, v6

    #@4f
    aput v8, v7, v1

    #@51
    .line 638
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    #@53
    shl-int/lit8 v1, v1, 0x5

    #@55
    or-int/2addr v1, v6

    #@56
    aput v1, v7, v5

    #@58
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_35

    #@5b
    .line 640
    :cond_5b
    iget v0, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@5d
    .line 641
    iget v1, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@5f
    add-int/lit8 v2, v2, -0x1

    #@61
    goto :goto_c

    #@62
    :cond_62
    return-void
.end method

.method private findRemoval(III)V
    .registers 6

    #@0
    .line 653
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    #@2
    add-int/lit8 v1, p2, -0x1

    #@4
    aget v0, v0, v1

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x1

    #@a
    .line 656
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    #@d
    return-void
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    #@0
    .line 857
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    sub-int/2addr v0, v1

    #@6
    :goto_6
    if-ltz v0, :cond_36

    #@8
    .line 858
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    #@e
    .line 859
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    #@10
    if-ne v3, p1, :cond_33

    #@12
    iget-boolean v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    #@14
    if-ne v3, p2, :cond_33

    #@16
    .line 860
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@19
    .line 861
    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@1c
    move-result p1

    #@1d
    if-ge v0, p1, :cond_32

    #@1f
    .line 863
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object p1

    #@23
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    #@25
    iget v3, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@27
    if-eqz p2, :cond_2b

    #@29
    move v4, v1

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    const/4 v4, -0x1

    #@2c
    :goto_2c
    add-int/2addr v3, v4

    #@2d
    iput v3, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_19

    #@32
    :cond_32
    return-object v2

    #@33
    :cond_33
    add-int/lit8 v0, v0, -0x1

    #@35
    goto :goto_6

    #@36
    :cond_36
    const/4 p0, 0x0

    #@37
    return-object p0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .registers 5

    #@0
    if-ltz p1, :cond_13

    #@2
    .line 695
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    #@4
    if-ge p1, v0, :cond_13

    #@6
    .line 699
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    #@8
    aget p1, v0, p1

    #@a
    and-int/lit8 v0, p1, 0x1f

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 p1, -0x1

    #@f
    return p1

    #@10
    :cond_10
    shr-int/lit8 p1, p1, 0x5

    #@12
    return p1

    #@13
    .line 696
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    const-string v2, "Index out of bounds - passed position = "

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    const-string v1, ", new list size = "

    #@22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    #@28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method

.method public convertOldPositionToNew(I)I
    .registers 5

    #@0
    if-ltz p1, :cond_13

    #@2
    .line 671
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    #@4
    if-ge p1, v0, :cond_13

    #@6
    .line 675
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    #@8
    aget p1, v0, p1

    #@a
    and-int/lit8 v0, p1, 0x1f

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 p1, -0x1

    #@f
    return p1

    #@10
    :cond_10
    shr-int/lit8 p1, p1, 0x5

    #@12
    return p1

    #@13
    .line 672
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    const-string v2, "Index out of bounds - passed position = "

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    const-string v1, ", old list size = "

    #@22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    #@28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .registers 16

    #@0
    .line 816
    instance-of v0, p1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 817
    check-cast p1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    #@6
    goto :goto_d

    #@7
    .line 819
    :cond_7
    new-instance v0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    #@9
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    #@c
    move-object p1, v0

    #@d
    .line 827
    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 828
    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    #@14
    .line 829
    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    #@16
    .line 830
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@18
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1b
    move-result v3

    #@1c
    const/4 v7, 0x1

    #@1d
    sub-int/2addr v3, v7

    #@1e
    move v8, v2

    #@1f
    move v9, v3

    #@20
    :goto_20
    if-ltz v9, :cond_79

    #@22
    .line 831
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@24
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    move-object v10, v2

    #@29
    check-cast v10, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@2b
    .line 832
    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@2d
    .line 833
    iget v2, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@2f
    add-int v12, v2, v11

    #@31
    .line 834
    iget v2, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@33
    add-int v13, v2, v11

    #@35
    if-ge v12, v1, :cond_41

    #@37
    sub-int v5, v1, v12

    #@39
    move-object v1, p0

    #@3a
    move-object v2, v0

    #@3b
    move-object v3, p1

    #@3c
    move v4, v12

    #@3d
    move v6, v12

    #@3e
    .line 836
    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V

    #@41
    :cond_41
    if-ge v13, v8, :cond_4d

    #@43
    sub-int v5, v8, v13

    #@45
    move-object v1, p0

    #@46
    move-object v2, v0

    #@47
    move-object v3, p1

    #@48
    move v4, v12

    #@49
    move v6, v13

    #@4a
    .line 840
    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V

    #@4d
    :cond_4d
    add-int/lit8 v11, v11, -0x1

    #@4f
    :goto_4f
    if-ltz v11, :cond_72

    #@51
    .line 844
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    #@53
    iget v2, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@55
    add-int/2addr v2, v11

    #@56
    aget v1, v1, v2

    #@58
    and-int/lit8 v1, v1, 0x1f

    #@5a
    const/4 v2, 0x2

    #@5b
    if-ne v1, v2, :cond_6f

    #@5d
    .line 845
    iget v1, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@5f
    add-int/2addr v1, v11

    #@60
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    #@62
    iget v3, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@64
    add-int/2addr v3, v11

    #@65
    iget v4, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@67
    add-int/2addr v4, v11

    #@68
    .line 846
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    .line 845
    invoke-virtual {p1, v1, v7, v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    #@6f
    :cond_6f
    add-int/lit8 v11, v11, -0x1

    #@71
    goto :goto_4f

    #@72
    .line 849
    :cond_72
    iget v1, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@74
    .line 850
    iget v8, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@76
    add-int/lit8 v9, v9, -0x1

    #@78
    goto :goto_20

    #@79
    .line 852
    :cond_79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    #@7c
    return-void
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    #@0
    .line 802
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    #@2
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    #@8
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    #@0
    .line 954
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    #@2
    return-object v0
.end method
