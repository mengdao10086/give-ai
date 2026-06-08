.class public Landroidx/recyclerview/widget/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SortedList$BatchedCallback;,
        Landroidx/recyclerview/widget/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

.field private mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mNewDataStart:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    const/16 v0, 0xa

    #@2
    .line 91
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    #@5
    .line 103
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    check-cast p1, [Ljava/lang/Object;

    #@b
    check-cast p1, [Ljava/lang/Object;

    #@d
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@f
    .line 104
    iput-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@11
    const/4 p1, 0x0

    #@12
    .line 105
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@14
    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    #@0
    .line 542
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@2
    const/4 v3, 0x0

    #@3
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@5
    const/4 v5, 0x1

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    #@b
    move-result v0

    #@c
    const/4 v1, -0x1

    #@d
    const/4 v2, 0x1

    #@e
    if-ne v0, v1, :cond_12

    #@10
    const/4 v0, 0x0

    #@11
    goto :goto_3d

    #@12
    .line 545
    :cond_12
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@14
    if-ge v0, v1, :cond_3d

    #@16
    .line 546
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@18
    aget-object v1, v1, v0

    #@1a
    .line 547
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@1c
    invoke-virtual {v3, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_3d

    #@22
    .line 548
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@24
    invoke-virtual {p2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@27
    move-result p2

    #@28
    if-eqz p2, :cond_2f

    #@2a
    .line 550
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@2c
    aput-object p1, p2, v0

    #@2e
    return v0

    #@2f
    .line 553
    :cond_2f
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@31
    aput-object p1, p2, v0

    #@33
    .line 554
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@35
    invoke-virtual {p2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {p2, v0, v2, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    #@3c
    return v0

    #@3d
    .line 559
    :cond_3d
    :goto_3d
    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/SortedList;->addToData(ILjava/lang/Object;)V

    #@40
    if-eqz p2, :cond_47

    #@42
    .line 561
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@44
    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    #@47
    :cond_47
    return v0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    #@0
    .line 252
    array-length v0, p1

    #@1
    const/4 v1, 0x1

    #@2
    if-ge v0, v1, :cond_5

    #@4
    return-void

    #@5
    .line 256
    :cond_5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    .line 258
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@b
    if-nez v1, :cond_18

    #@d
    .line 259
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@f
    .line 260
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@11
    .line 261
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    #@17
    goto :goto_1b

    #@18
    .line 263
    :cond_18
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->merge([Ljava/lang/Object;I)V

    #@1b
    :goto_1b
    return-void
.end method

.method private addToData(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    #@0
    .line 793
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@2
    if-gt p1, v0, :cond_3c

    #@4
    .line 797
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@6
    array-length v2, v1

    #@7
    if-ne v0, v2, :cond_2b

    #@9
    .line 799
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    #@b
    array-length v1, v1

    #@c
    add-int/lit8 v1, v1, 0xa

    #@e
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/Object;

    #@14
    check-cast v0, [Ljava/lang/Object;

    #@16
    .line 800
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@18
    const/4 v2, 0x0

    #@19
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 801
    aput-object p2, v0, p1

    #@1e
    .line 802
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@20
    add-int/lit8 v1, p1, 0x1

    #@22
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@24
    sub-int/2addr v2, p1

    #@25
    invoke-static {p2, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 803
    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@2a
    goto :goto_35

    #@2b
    :cond_2b
    add-int/lit8 v2, p1, 0x1

    #@2d
    sub-int/2addr v0, p1

    #@2e
    .line 806
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@31
    .line 807
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@33
    aput-object p2, v0, p1

    #@35
    .line 809
    :goto_35
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@37
    add-int/lit8 p1, p1, 0x1

    #@39
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@3b
    return-void

    #@3c
    .line 794
    :cond_3c
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    #@3e
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    const-string v1, "cannot add item to "

    #@42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object p1

    #@49
    const-string v0, " because size is "

    #@4b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object p1

    #@4f
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object p1

    #@55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object p1

    #@59
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@5c
    throw p2
.end method

.method private copyArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 813
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    #@2
    array-length v1, p1

    #@3
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Ljava/lang/Object;

    #@9
    check-cast v0, [Ljava/lang/Object;

    #@b
    const/4 v1, 0x0

    #@c
    .line 814
    array-length v2, p1

    #@d
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    return-object v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    #@0
    :goto_0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    if-ge p3, p4, :cond_2f

    #@4
    add-int v2, p3, p4

    #@6
    .line 744
    div-int/lit8 v2, v2, 0x2

    #@8
    .line 745
    aget-object v3, p2, v2

    #@a
    .line 746
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@c
    invoke-virtual {v4, v3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@f
    move-result v4

    #@10
    if-gez v4, :cond_16

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    move p3, v2

    #@15
    goto :goto_0

    #@16
    :cond_16
    if-nez v4, :cond_2d

    #@18
    .line 750
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@1a
    invoke-virtual {p2, v3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result p2

    #@1e
    if-eqz p2, :cond_21

    #@20
    return v2

    #@21
    .line 753
    :cond_21
    invoke-direct {p0, p1, v2, p3, p4}, Landroidx/recyclerview/widget/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    #@24
    move-result p1

    #@25
    if-ne p5, v1, :cond_2c

    #@27
    if-ne p1, v0, :cond_2a

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    move v2, p1

    #@2b
    :goto_2b
    return v2

    #@2c
    :cond_2c
    return p1

    #@2d
    :cond_2d
    move p4, v2

    #@2e
    goto :goto_0

    #@2f
    :cond_2f
    if-ne p5, v1, :cond_32

    #@31
    goto :goto_33

    #@32
    :cond_32
    move p3, v0

    #@33
    :goto_33
    return p3
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    #@0
    :goto_0
    if-ge p3, p4, :cond_10

    #@2
    .line 397
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@4
    aget-object v1, p2, p3

    #@6
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    return p3

    #@d
    :cond_d
    add-int/lit8 p3, p3, 0x1

    #@f
    goto :goto_0

    #@10
    :cond_10
    const/4 p1, -0x1

    #@11
    return p1
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    #@0
    add-int/lit8 v0, p2, -0x1

    #@2
    :goto_2
    if-lt v0, p3, :cond_1d

    #@4
    .line 770
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@6
    aget-object v1, v1, v0

    #@8
    .line 771
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@a
    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_11

    #@10
    goto :goto_1d

    #@11
    .line 775
    :cond_11
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@13
    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1a

    #@19
    return v0

    #@1a
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_2

    #@1d
    :cond_1d
    :goto_1d
    add-int/lit8 p2, p2, 0x1

    #@1f
    if-ge p2, p4, :cond_37

    #@21
    .line 780
    iget-object p3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@23
    aget-object p3, p3, p2

    #@25
    .line 781
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@27
    invoke-virtual {v0, p3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2e

    #@2d
    goto :goto_37

    #@2e
    .line 785
    :cond_2e
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@30
    invoke-virtual {v0, p3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result p3

    #@34
    if-eqz p3, :cond_1d

    #@36
    return p2

    #@37
    :cond_37
    :goto_37
    const/4 p1, -0x1

    #@38
    return p1
.end method

.method private merge([Ljava/lang/Object;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    #@0
    .line 408
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@2
    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@4
    const/4 v1, 0x1

    #@5
    xor-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 410
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    #@b
    .line 413
    :cond_b
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@d
    iput-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@f
    const/4 v2, 0x0

    #@10
    .line 414
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@12
    .line 415
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@14
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    #@16
    add-int/2addr v3, p2

    #@17
    add-int/lit8 v3, v3, 0xa

    #@19
    .line 418
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    #@1b
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, [Ljava/lang/Object;

    #@21
    check-cast v3, [Ljava/lang/Object;

    #@23
    iput-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@25
    .line 419
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@27
    .line 422
    :cond_27
    :goto_27
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@29
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    #@2b
    if-lt v3, v4, :cond_2f

    #@2d
    if-ge v2, p2, :cond_5b

    #@2f
    :cond_2f
    if-ne v3, v4, :cond_4a

    #@31
    sub-int/2addr p2, v2

    #@32
    .line 426
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@34
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@36
    invoke-static {p1, v2, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@39
    .line 427
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@3b
    add-int/2addr p1, p2

    #@3c
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@3e
    .line 428
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@40
    add-int/2addr v1, p2

    #@41
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@43
    .line 429
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@45
    sub-int/2addr p1, p2

    #@46
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    #@49
    goto :goto_5b

    #@4a
    :cond_4a
    if-ne v2, p2, :cond_64

    #@4c
    sub-int/2addr v4, v3

    #@4d
    .line 436
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@4f
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@51
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@53
    invoke-static {p1, v3, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@56
    .line 437
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@58
    add-int/2addr p1, v4

    #@59
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@5b
    :cond_5b
    :goto_5b
    const/4 p1, 0x0

    #@5c
    .line 467
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@5e
    if-eqz v0, :cond_63

    #@60
    .line 470
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    #@63
    :cond_63
    return-void

    #@64
    .line 441
    :cond_64
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@66
    aget-object v3, v4, v3

    #@68
    .line 442
    aget-object v4, p1, v2

    #@6a
    .line 443
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@6c
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@6f
    move-result v5

    #@70
    if-lez v5, :cond_8a

    #@72
    .line 446
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@74
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@76
    add-int/lit8 v6, v5, 0x1

    #@78
    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@7a
    aput-object v4, v3, v5

    #@7c
    .line 447
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@7e
    add-int/2addr v3, v1

    #@7f
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@81
    add-int/lit8 v2, v2, 0x1

    #@83
    .line 449
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@85
    sub-int/2addr v6, v1

    #@86
    invoke-virtual {v3, v6, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    #@89
    goto :goto_27

    #@8a
    :cond_8a
    if-nez v5, :cond_bb

    #@8c
    .line 450
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@8e
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_bb

    #@94
    .line 452
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@96
    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@98
    add-int/lit8 v7, v6, 0x1

    #@9a
    iput v7, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@9c
    aput-object v4, v5, v6

    #@9e
    add-int/lit8 v2, v2, 0x1

    #@a0
    .line 454
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@a2
    add-int/2addr v5, v1

    #@a3
    iput v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@a5
    .line 455
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@a7
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@aa
    move-result v5

    #@ab
    if-nez v5, :cond_27

    #@ad
    .line 456
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@af
    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@b1
    sub-int/2addr v6, v1

    #@b2
    .line 457
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    move-result-object v3

    #@b6
    .line 456
    invoke-virtual {v5, v6, v1, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    #@b9
    goto/16 :goto_27

    #@bb
    .line 462
    :cond_bb
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@bd
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@bf
    add-int/lit8 v6, v5, 0x1

    #@c1
    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@c3
    aput-object v3, v4, v5

    #@c5
    .line 463
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@c7
    add-int/2addr v3, v1

    #@c8
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@ca
    goto/16 :goto_27
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    #@0
    .line 593
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@2
    const/4 v3, 0x0

    #@3
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@5
    const/4 v5, 0x2

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    #@b
    move-result p1

    #@c
    const/4 v0, -0x1

    #@d
    if-ne p1, v0, :cond_11

    #@f
    const/4 p1, 0x0

    #@10
    return p1

    #@11
    .line 597
    :cond_11
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    #@14
    const/4 p1, 0x1

    #@15
    return p1
.end method

.method private removeItemAtIndex(IZ)V
    .registers 7

    #@0
    .line 602
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@6
    sub-int/2addr v2, p1

    #@7
    const/4 v3, 0x1

    #@8
    sub-int/2addr v2, v3

    #@9
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 603
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@e
    sub-int/2addr v0, v3

    #@f
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@11
    .line 604
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@13
    const/4 v2, 0x0

    #@14
    aput-object v2, v1, v0

    #@16
    if-eqz p2, :cond_1d

    #@18
    .line 606
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@1a
    invoke-virtual {p2, p1, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    #@1d
    :cond_1d
    return-void
.end method

.method private replaceAllInsert(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 334
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@2
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@4
    aput-object p1, v0, v1

    #@6
    const/4 p1, 0x1

    #@7
    add-int/2addr v1, p1

    #@8
    .line 335
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@a
    .line 336
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@c
    add-int/2addr v0, p1

    #@d
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@f
    .line 337
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@11
    sub-int/2addr v1, p1

    #@12
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    #@15
    return-void
.end method

.method private replaceAllInternal([Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    #@0
    .line 268
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@2
    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@4
    const/4 v1, 0x1

    #@5
    xor-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 270
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    #@b
    :cond_b
    const/4 v2, 0x0

    #@c
    .line 273
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@e
    .line 274
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@10
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    #@12
    .line 275
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@14
    iput-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@16
    .line 277
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@18
    .line 278
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    #@1b
    move-result v2

    #@1c
    .line 279
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    #@1e
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, [Ljava/lang/Object;

    #@24
    check-cast v3, [Ljava/lang/Object;

    #@26
    iput-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@28
    .line 281
    :cond_28
    :goto_28
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@2a
    if-lt v3, v2, :cond_32

    #@2c
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@2e
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    #@30
    if-ge v4, v5, :cond_5b

    #@32
    .line 282
    :cond_32
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@34
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    #@36
    if-lt v4, v5, :cond_4e

    #@38
    sub-int/2addr v2, v3

    #@39
    .line 285
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@3b
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e
    .line 286
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@40
    add-int/2addr p1, v2

    #@41
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@43
    .line 287
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@45
    add-int/2addr p1, v2

    #@46
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@48
    .line 288
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@4a
    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    #@4d
    goto :goto_5b

    #@4e
    :cond_4e
    if-lt v3, v2, :cond_64

    #@50
    sub-int/2addr v5, v4

    #@51
    .line 293
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@53
    sub-int/2addr p1, v5

    #@54
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@56
    .line 294
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@58
    invoke-virtual {p1, v3, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    #@5b
    :cond_5b
    :goto_5b
    const/4 p1, 0x0

    #@5c
    .line 326
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@5e
    if-eqz v0, :cond_63

    #@60
    .line 329
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    #@63
    :cond_63
    return-void

    #@64
    .line 298
    :cond_64
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@66
    aget-object v4, v5, v4

    #@68
    .line 299
    aget-object v3, p1, v3

    #@6a
    .line 301
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@6c
    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@6f
    move-result v5

    #@70
    if-gez v5, :cond_76

    #@72
    .line 303
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    #@75
    goto :goto_28

    #@76
    :cond_76
    if-lez v5, :cond_7c

    #@78
    .line 305
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    #@7b
    goto :goto_28

    #@7c
    .line 307
    :cond_7c
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@7e
    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@81
    move-result v5

    #@82
    if-nez v5, :cond_8b

    #@84
    .line 310
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    #@87
    .line 311
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    #@8a
    goto :goto_28

    #@8b
    .line 313
    :cond_8b
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@8d
    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@8f
    aput-object v3, v5, v6

    #@91
    .line 314
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@93
    add-int/2addr v5, v1

    #@94
    iput v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@96
    add-int/2addr v6, v1

    #@97
    .line 315
    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@99
    .line 316
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@9b
    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9e
    move-result v5

    #@9f
    if-nez v5, :cond_28

    #@a1
    .line 319
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@a3
    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@a5
    sub-int/2addr v6, v1

    #@a6
    .line 320
    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    move-result-object v3

    #@aa
    .line 319
    invoke-virtual {v5, v6, v1, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    #@ad
    goto/16 :goto_28
.end method

.method private replaceAllRemove()V
    .registers 4

    #@0
    .line 341
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@2
    const/4 v1, 0x1

    #@3
    sub-int/2addr v0, v1

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@6
    .line 342
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@8
    add-int/2addr v0, v1

    #@9
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@b
    .line 343
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@d
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@f
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    #@12
    return-void
.end method

.method private sortAndDedup([Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    #@0
    .line 353
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    if-nez v0, :cond_5

    #@4
    return v1

    #@5
    .line 358
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@7
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@a
    const/4 v0, 0x1

    #@b
    move v2, v1

    #@c
    move v1, v0

    #@d
    .line 365
    :goto_d
    array-length v3, p1

    #@e
    if-ge v0, v3, :cond_39

    #@10
    .line 366
    aget-object v3, p1, v0

    #@12
    .line 368
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@14
    aget-object v5, p1, v2

    #@16
    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_2d

    #@1c
    .line 372
    invoke-direct {p0, v3, p1, v2, v1}, Landroidx/recyclerview/widget/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@1f
    move-result v4

    #@20
    const/4 v5, -0x1

    #@21
    if-eq v4, v5, :cond_26

    #@23
    .line 375
    aput-object v3, p1, v4

    #@25
    goto :goto_36

    #@26
    :cond_26
    if-eq v1, v0, :cond_2a

    #@28
    .line 379
    aput-object v3, p1, v1

    #@2a
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_36

    #@2d
    :cond_2d
    if-eq v1, v0, :cond_31

    #@2f
    .line 386
    aput-object v3, p1, v1

    #@31
    :cond_31
    add-int/lit8 v2, v1, 0x1

    #@33
    move v6, v2

    #@34
    move v2, v1

    #@35
    move v1, v6

    #@36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_d

    #@39
    :cond_39
    return v1
.end method

.method private throwIfInMutationOperation()V
    .registers 3

    #@0
    .line 479
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 480
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string v1, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .line 143
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 144
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 193
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/Object;

    #@c
    check-cast v0, [Ljava/lang/Object;

    #@e
    .line 194
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object p1

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    #@16
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 182
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    #@4
    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    #@0
    .line 162
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    .line 163
    array-length v0, p1

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    if-eqz p2, :cond_d

    #@9
    .line 168
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    #@c
    goto :goto_14

    #@d
    .line 170
    :cond_d
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    #@14
    :goto_14
    return-void
.end method

.method public beginBatchedUpdates()V
    .registers 3

    #@0
    .line 518
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    .line 519
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@5
    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@7
    if-eqz v0, :cond_a

    #@9
    return-void

    #@a
    .line 522
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@c
    if-nez v0, :cond_17

    #@e
    .line 523
    new-instance v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@10
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@12
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;-><init>(Landroidx/recyclerview/widget/SortedList$Callback;)V

    #@15
    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@17
    .line 525
    :cond_17
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@19
    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@1b
    return-void
.end method

.method public clear()V
    .registers 5

    #@0
    .line 822
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    .line 823
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@5
    if-nez v0, :cond_8

    #@7
    return-void

    #@8
    .line 827
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@f
    .line 828
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@11
    .line 829
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@13
    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    #@16
    return-void
.end method

.method public endBatchedUpdates()V
    .registers 3

    #@0
    .line 532
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    .line 533
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@5
    instance-of v1, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@7
    if-eqz v1, :cond_e

    #@9
    .line 534
    check-cast v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->dispatchLastEvent()V

    #@e
    .line 536
    :cond_e
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@10
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    #@12
    if-ne v0, v1, :cond_18

    #@14
    .line 537
    iget-object v0, v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@16
    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@18
    :cond_18
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .line 705
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@2
    if-ge p1, v0, :cond_1a

    #@4
    if-ltz p1, :cond_1a

    #@6
    .line 709
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 712
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@c
    if-lt p1, v1, :cond_15

    #@e
    sub-int/2addr p1, v1

    #@f
    .line 713
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@11
    add-int/2addr p1, v1

    #@12
    aget-object p1, v0, p1

    #@14
    return-object p1

    #@15
    .line 716
    :cond_15
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@17
    aget-object p1, v0, p1

    #@19
    return-object p1

    #@1a
    .line 706
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    const-string v2, "Asked to get item at "

    #@20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    const-string v1, " but size is "

    #@29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p1

    #@2d
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@2f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object p1

    #@33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object p1

    #@37
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .line 728
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_2b

    #@4
    .line 729
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@6
    const/4 v4, 0x0

    #@7
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@9
    const/4 v6, 0x4

    #@a
    move-object v1, p0

    #@b
    move-object v2, p1

    #@c
    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    #@f
    move-result v0

    #@10
    const/4 v1, -0x1

    #@11
    if-eq v0, v1, :cond_14

    #@13
    return v0

    #@14
    .line 733
    :cond_14
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    #@16
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@18
    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    #@1a
    const/4 v7, 0x4

    #@1b
    move-object v2, p0

    #@1c
    move-object v3, p1

    #@1d
    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    #@20
    move-result p1

    #@21
    if-eq p1, v1, :cond_2a

    #@23
    .line 735
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    #@25
    sub-int/2addr p1, v0

    #@26
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    #@28
    add-int/2addr p1, v0

    #@29
    return p1

    #@2a
    :cond_2a
    return v1

    #@2b
    .line 739
    :cond_2b
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@2d
    const/4 v3, 0x0

    #@2e
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@30
    const/4 v5, 0x4

    #@31
    move-object v0, p0

    #@32
    move-object v1, p1

    #@33
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    #@36
    move-result p1

    #@37
    return p1
.end method

.method public recalculatePositionOfItemAt(I)V
    .registers 4

    #@0
    .line 685
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    .line 687
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    .line 688
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    #@b
    .line 689
    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    #@e
    move-result v0

    #@f
    if-eq p1, v0, :cond_16

    #@11
    .line 691
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@13
    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onMoved(II)V

    #@16
    :cond_16
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 574
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 575
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->remove(Ljava/lang/Object;Z)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    .line 586
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    .line 587
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x1

    #@8
    .line 588
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    #@b
    return-object v0
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 247
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/Object;

    #@c
    check-cast v0, [Ljava/lang/Object;

    #@e
    .line 248
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object p1

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    #@16
    return-void
.end method

.method public varargs replaceAll([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 235
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    #@4
    return-void
.end method

.method public replaceAll([Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    #@0
    .line 217
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    if-eqz p2, :cond_9

    #@5
    .line 220
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    #@8
    goto :goto_10

    #@9
    .line 222
    :cond_9
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    #@10
    :goto_10
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 114
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    #@2
    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    #@0
    .line 631
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    #@3
    .line 632
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    if-eq v0, p2, :cond_16

    #@b
    .line 634
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@d
    invoke-virtual {v3, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_14

    #@13
    goto :goto_16

    #@14
    :cond_14
    move v3, v1

    #@15
    goto :goto_17

    #@16
    :cond_16
    :goto_16
    move v3, v2

    #@17
    :goto_17
    if-eq v0, p2, :cond_31

    #@19
    .line 637
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@1b
    invoke-virtual {v4, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_31

    #@21
    .line 639
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    #@23
    aput-object p2, v1, p1

    #@25
    if-eqz v3, :cond_30

    #@27
    .line 641
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@29
    invoke-virtual {v1, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object p2

    #@2d
    invoke-virtual {v1, p1, v2, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    #@30
    :cond_30
    return-void

    #@31
    :cond_31
    if-eqz v3, :cond_3c

    #@33
    .line 647
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@35
    invoke-virtual {v3, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v3, p1, v2, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    #@3c
    .line 650
    :cond_3c
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    #@3f
    .line 651
    invoke-direct {p0, p2, v1}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    #@42
    move-result p2

    #@43
    if-eq p1, p2, :cond_4a

    #@45
    .line 653
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    #@47
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->onMoved(II)V

    #@4a
    :cond_4a
    return-void
.end method
