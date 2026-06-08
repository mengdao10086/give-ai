.class public final Landroidx/collection/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0x8

    #@2
    .line 50
    invoke-direct {p0, v0}, Landroidx/collection/CircularIntArray;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    if-lt p1, v0, :cond_28

    #@6
    const/high16 v1, 0x40000000    # 2.0f

    #@8
    if-gt p1, v1, :cond_20

    #@a
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    #@d
    move-result v1

    #@e
    if-eq v1, v0, :cond_17

    #@10
    add-int/lit8 p1, p1, -0x1

    #@12
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    #@15
    move-result p1

    #@16
    shl-int/2addr p1, v0

    #@17
    :cond_17
    add-int/lit8 v0, p1, -0x1

    #@19
    .line 76
    iput v0, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@1b
    .line 77
    new-array p1, p1, [I

    #@1d
    iput-object p1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@1f
    return-void

    #@20
    .line 64
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@22
    const-string v0, "capacity must be <= 2^30"

    #@24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw p1

    #@28
    .line 61
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string v0, "capacity must be >= 1"

    #@2c
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw p1
.end method

.method private doubleCapacity()V
    .registers 8

    #@0
    .line 31
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@2
    array-length v1, v0

    #@3
    .line 32
    iget v2, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@5
    sub-int v3, v1, v2

    #@7
    shl-int/lit8 v4, v1, 0x1

    #@9
    if-ltz v4, :cond_23

    #@b
    .line 37
    new-array v5, v4, [I

    #@d
    const/4 v6, 0x0

    #@e
    .line 38
    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11
    .line 39
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@13
    iget v2, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@15
    invoke-static {v0, v6, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    .line 40
    iput-object v5, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@1a
    .line 41
    iput v6, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@1c
    .line 42
    iput v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@1e
    add-int/lit8 v4, v4, -0x1

    #@20
    .line 43
    iput v4, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@22
    return-void

    #@23
    .line 35
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    #@25
    const-string v1, "Max array capacity exceeded"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method


# virtual methods
.method public addFirst(I)V
    .registers 4

    #@0
    .line 85
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iget v1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@6
    and-int/2addr v0, v1

    #@7
    iput v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@9
    .line 86
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@b
    aput p1, v1, v0

    #@d
    .line 87
    iget p1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@f
    if-ne v0, p1, :cond_14

    #@11
    .line 88
    invoke-direct {p0}, Landroidx/collection/CircularIntArray;->doubleCapacity()V

    #@14
    :cond_14
    return-void
.end method

.method public addLast(I)V
    .registers 4

    #@0
    .line 97
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@2
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@4
    aput p1, v0, v1

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    .line 98
    iget p1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@a
    and-int/2addr p1, v1

    #@b
    iput p1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@d
    .line 99
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@f
    if-ne p1, v0, :cond_14

    #@11
    .line 100
    invoke-direct {p0}, Landroidx/collection/CircularIntArray;->doubleCapacity()V

    #@14
    :cond_14
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    .line 133
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@2
    iput v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@4
    return-void
.end method

.method public get(I)I
    .registers 4

    #@0
    if-ltz p1, :cond_13

    #@2
    .line 197
    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_13

    #@8
    .line 198
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@a
    iget v1, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@c
    add-int/2addr v1, p1

    #@d
    iget p1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@f
    and-int/2addr p1, v1

    #@10
    aget p1, v0, p1

    #@12
    return p1

    #@13
    .line 197
    :cond_13
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@15
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@18
    throw p1
.end method

.method public getFirst()I
    .registers 3

    #@0
    .line 176
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@4
    if-eq v0, v1, :cond_b

    #@6
    .line 177
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@8
    aget v0, v1, v0

    #@a
    return v0

    #@b
    .line 176
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@d
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@10
    throw v0
.end method

.method public getLast()I
    .registers 4

    #@0
    .line 186
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@4
    if-eq v0, v1, :cond_10

    #@6
    .line 187
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iget v2, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@c
    and-int/2addr v1, v2

    #@d
    aget v0, v0, v1

    #@f
    return v0

    #@10
    .line 186
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@12
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@15
    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    #@0
    .line 214
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public popFirst()I
    .registers 4

    #@0
    .line 110
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@4
    if-eq v0, v1, :cond_12

    #@6
    .line 111
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@8
    aget v1, v1, v0

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    .line 112
    iget v2, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@e
    and-int/2addr v0, v2

    #@f
    iput v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@11
    return v1

    #@12
    .line 110
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@14
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@17
    throw v0
.end method

.method public popLast()I
    .registers 3

    #@0
    .line 122
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@4
    if-eq v0, v1, :cond_12

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    .line 123
    iget v0, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@a
    and-int/2addr v0, v1

    #@b
    .line 124
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    #@d
    aget v1, v1, v0

    #@f
    .line 125
    iput v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@11
    return v1

    #@12
    .line 122
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@14
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@17
    throw v0
.end method

.method public removeFromEnd(I)V
    .registers 3

    #@0
    if-gtz p1, :cond_3

    #@2
    return-void

    #@3
    .line 164
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->size()I

    #@6
    move-result v0

    #@7
    if-gt p1, v0, :cond_12

    #@9
    .line 167
    iget v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@b
    sub-int/2addr v0, p1

    #@c
    iget p1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@e
    and-int/2addr p1, v0

    #@f
    iput p1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@11
    return-void

    #@12
    .line 165
    :cond_12
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@14
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@17
    throw p1
.end method

.method public removeFromStart(I)V
    .registers 3

    #@0
    if-gtz p1, :cond_3

    #@2
    return-void

    #@3
    .line 147
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->size()I

    #@6
    move-result v0

    #@7
    if-gt p1, v0, :cond_12

    #@9
    .line 150
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@b
    add-int/2addr v0, p1

    #@c
    iget p1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@e
    and-int/2addr p1, v0

    #@f
    iput p1, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@11
    return-void

    #@12
    .line 148
    :cond_12
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@14
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@17
    throw p1
.end method

.method public size()I
    .registers 3

    #@0
    .line 206
    iget v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    #@2
    iget v1, p0, Landroidx/collection/CircularIntArray;->mHead:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget v1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method
