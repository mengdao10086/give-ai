.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0x8

    #@2
    .line 49
    invoke-direct {p0, v0}, Landroidx/collection/CircularArray;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    if-lt p1, v0, :cond_2a

    #@6
    const/high16 v1, 0x40000000    # 2.0f

    #@8
    if-gt p1, v1, :cond_22

    #@a
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    #@d
    move-result v1

    #@e
    if-eq v1, v0, :cond_17

    #@10
    add-int/lit8 p1, p1, -0x1

    #@12
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    #@15
    move-result p1

    #@16
    shl-int/2addr p1, v0

    #@17
    :cond_17
    add-int/lit8 v0, p1, -0x1

    #@19
    .line 75
    iput v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@1b
    .line 76
    new-array p1, p1, [Ljava/lang/Object;

    #@1d
    check-cast p1, [Ljava/lang/Object;

    #@1f
    iput-object p1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@21
    return-void

    #@22
    .line 63
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@24
    const-string v0, "capacity must be <= 2^30"

    #@26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw p1

    #@2a
    .line 60
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string v0, "capacity must be >= 1"

    #@2e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw p1
.end method

.method private doubleCapacity()V
    .registers 8

    #@0
    .line 30
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@2
    array-length v1, v0

    #@3
    .line 31
    iget v2, p0, Landroidx/collection/CircularArray;->mHead:I

    #@5
    sub-int v3, v1, v2

    #@7
    shl-int/lit8 v4, v1, 0x1

    #@9
    if-ltz v4, :cond_25

    #@b
    .line 36
    new-array v5, v4, [Ljava/lang/Object;

    #@d
    const/4 v6, 0x0

    #@e
    .line 37
    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11
    .line 38
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@13
    iget v2, p0, Landroidx/collection/CircularArray;->mHead:I

    #@15
    invoke-static {v0, v6, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    .line 39
    check-cast v5, [Ljava/lang/Object;

    #@1a
    iput-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@1c
    .line 40
    iput v6, p0, Landroidx/collection/CircularArray;->mHead:I

    #@1e
    .line 41
    iput v1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@20
    add-int/lit8 v4, v4, -0x1

    #@22
    .line 42
    iput v4, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@24
    return-void

    #@25
    .line 34
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    #@27
    const-string v1, "Max array capacity exceeded"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .line 84
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@6
    and-int/2addr v0, v1

    #@7
    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@9
    .line 85
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@b
    aput-object p1, v1, v0

    #@d
    .line 86
    iget p1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@f
    if-ne v0, p1, :cond_14

    #@11
    .line 87
    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    #@14
    :cond_14
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .line 96
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@2
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@4
    aput-object p1, v0, v1

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    .line 97
    iget p1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@a
    and-int/2addr p1, v1

    #@b
    iput p1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@d
    .line 98
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@f
    if-ne p1, v0, :cond_14

    #@11
    .line 99
    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    #@14
    :cond_14
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    .line 138
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    #@7
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    if-ltz p1, :cond_13

    #@2
    .line 240
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_13

    #@8
    .line 243
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@a
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    #@c
    add-int/2addr v1, p1

    #@d
    iget p1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@f
    and-int/2addr p1, v1

    #@10
    aget-object p1, v0, p1

    #@12
    return-object p1

    #@13
    .line 241
    :cond_13
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@15
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@18
    throw p1
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 215
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@4
    if-eq v0, v1, :cond_b

    #@6
    .line 218
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@8
    aget-object v0, v1, v0

    #@a
    return-object v0

    #@b
    .line 216
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@d
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@10
    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 227
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@4
    if-eq v0, v1, :cond_10

    #@6
    .line 230
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iget v2, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@c
    and-int/2addr v1, v2

    #@d
    aget-object v0, v0, v1

    #@f
    return-object v0

    #@10
    .line 228
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
    .line 259
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

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

.method public popFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 109
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@4
    if-eq v0, v1, :cond_15

    #@6
    .line 112
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@8
    aget-object v2, v1, v0

    #@a
    const/4 v3, 0x0

    #@b
    .line 113
    aput-object v3, v1, v0

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    .line 114
    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@11
    and-int/2addr v0, v1

    #@12
    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@14
    return-object v2

    #@15
    .line 110
    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@17
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@1a
    throw v0
.end method

.method public popLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 124
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@4
    if-eq v0, v1, :cond_15

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    .line 127
    iget v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@a
    and-int/2addr v0, v1

    #@b
    .line 128
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@d
    aget-object v2, v1, v0

    #@f
    const/4 v3, 0x0

    #@10
    .line 129
    aput-object v3, v1, v0

    #@12
    .line 130
    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    #@14
    return-object v2

    #@15
    .line 125
    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@17
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@1a
    throw v0
.end method

.method public removeFromEnd(I)V
    .registers 6

    #@0
    if-gtz p1, :cond_3

    #@2
    return-void

    #@3
    .line 185
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    #@6
    move-result v0

    #@7
    if-gt p1, v0, :cond_3a

    #@9
    .line 189
    iget v0, p0, Landroidx/collection/CircularArray;->mTail:I

    #@b
    if-ge p1, v0, :cond_f

    #@d
    sub-int/2addr v0, p1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    :goto_10
    move v1, v0

    #@11
    .line 192
    :goto_11
    iget v2, p0, Landroidx/collection/CircularArray;->mTail:I

    #@13
    const/4 v3, 0x0

    #@14
    if-ge v1, v2, :cond_1d

    #@16
    .line 193
    iget-object v2, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@18
    aput-object v3, v2, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_11

    #@1d
    :cond_1d
    sub-int v0, v2, v0

    #@1f
    sub-int/2addr p1, v0

    #@20
    sub-int/2addr v2, v0

    #@21
    .line 197
    iput v2, p0, Landroidx/collection/CircularArray;->mTail:I

    #@23
    if-lez p1, :cond_39

    #@25
    .line 200
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@27
    array-length v0, v0

    #@28
    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    #@2a
    sub-int/2addr v0, p1

    #@2b
    move p1, v0

    #@2c
    .line 202
    :goto_2c
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    #@2e
    if-ge p1, v1, :cond_37

    #@30
    .line 203
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@32
    aput-object v3, v1, p1

    #@34
    add-int/lit8 p1, p1, 0x1

    #@36
    goto :goto_2c

    #@37
    .line 205
    :cond_37
    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    #@39
    :cond_39
    return-void

    #@3a
    .line 186
    :cond_3a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@3c
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@3f
    throw p1
.end method

.method public removeFromStart(I)V
    .registers 6

    #@0
    if-gtz p1, :cond_3

    #@2
    return-void

    #@3
    .line 152
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    #@6
    move-result v0

    #@7
    if-gt p1, v0, :cond_37

    #@9
    .line 155
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@b
    array-length v0, v0

    #@c
    .line 156
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    #@e
    sub-int v2, v0, v1

    #@10
    if-ge p1, v2, :cond_14

    #@12
    add-int v0, v1, p1

    #@14
    :cond_14
    :goto_14
    const/4 v2, 0x0

    #@15
    if-ge v1, v0, :cond_1e

    #@17
    .line 160
    iget-object v3, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@19
    aput-object v2, v3, v1

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_14

    #@1e
    .line 162
    :cond_1e
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    #@20
    sub-int/2addr v0, v1

    #@21
    sub-int/2addr p1, v0

    #@22
    add-int/2addr v1, v0

    #@23
    .line 164
    iget v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@25
    and-int/2addr v0, v1

    #@26
    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    #@28
    if-lez p1, :cond_36

    #@2a
    const/4 v0, 0x0

    #@2b
    :goto_2b
    if-ge v0, p1, :cond_34

    #@2d
    .line 168
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    #@2f
    aput-object v2, v1, v0

    #@31
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_2b

    #@34
    .line 170
    :cond_34
    iput p1, p0, Landroidx/collection/CircularArray;->mHead:I

    #@36
    :cond_36
    return-void

    #@37
    .line 153
    :cond_37
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@39
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@3c
    throw p1
.end method

.method public size()I
    .registers 3

    #@0
    .line 251
    iget v0, p0, Landroidx/collection/CircularArray;->mTail:I

    #@2
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method
