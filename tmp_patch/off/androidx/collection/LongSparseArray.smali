.class public Landroidx/collection/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 51
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0xa

    #@2
    .line 62
    invoke-direct {p0, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 52
    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@6
    if-nez p1, :cond_11

    #@8
    .line 74
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_LONGS:[J

    #@a
    iput-object p1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@c
    .line 75
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@e
    iput-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@10
    goto :goto_1d

    #@11
    .line 77
    :cond_11
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    #@14
    move-result p1

    #@15
    .line 78
    new-array v0, p1, [J

    #@17
    iput-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@19
    .line 79
    new-array p1, p1, [Ljava/lang/Object;

    #@1b
    iput-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@1d
    :goto_1d
    return-void
.end method

.method private gc()V
    .registers 10

    #@0
    .line 217
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@2
    .line 219
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@4
    .line 220
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    move v4, v3

    #@8
    move v5, v4

    #@9
    :goto_9
    if-ge v4, v0, :cond_21

    #@b
    .line 223
    aget-object v6, v2, v4

    #@d
    .line 225
    sget-object v7, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@f
    if-eq v6, v7, :cond_1e

    #@11
    if-eq v4, v5, :cond_1c

    #@13
    .line 227
    aget-wide v7, v1, v4

    #@15
    aput-wide v7, v1, v5

    #@17
    .line 228
    aput-object v6, v2, v5

    #@19
    const/4 v6, 0x0

    #@1a
    .line 229
    aput-object v6, v2, v4

    #@1c
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    #@1e
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_9

    #@21
    .line 236
    :cond_21
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@23
    .line 237
    iput v5, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@25
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    #@0
    .line 456
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@2
    if-eqz v0, :cond_12

    #@4
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@6
    add-int/lit8 v2, v0, -0x1

    #@8
    aget-wide v2, v1, v2

    #@a
    cmp-long v1, p1, v2

    #@c
    if-gtz v1, :cond_12

    #@e
    .line 457
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@11
    return-void

    #@12
    .line 461
    :cond_12
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@14
    if-eqz v1, :cond_1e

    #@16
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@18
    array-length v1, v1

    #@19
    if-lt v0, v1, :cond_1e

    #@1b
    .line 462
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    #@1e
    .line 465
    :cond_1e
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@20
    .line 466
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@22
    array-length v1, v1

    #@23
    if-lt v0, v1, :cond_40

    #@25
    add-int/lit8 v1, v0, 0x1

    #@27
    .line 467
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    #@2a
    move-result v1

    #@2b
    .line 469
    new-array v2, v1, [J

    #@2d
    .line 470
    new-array v1, v1, [Ljava/lang/Object;

    #@2f
    .line 473
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@31
    array-length v4, v3

    #@32
    const/4 v5, 0x0

    #@33
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    .line 474
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@38
    array-length v4, v3

    #@39
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3c
    .line 476
    iput-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@3e
    .line 477
    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@40
    .line 480
    :cond_40
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@42
    aput-wide p1, v1, v0

    #@44
    .line 481
    iget-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@46
    aput-object p3, p1, v0

    #@48
    add-int/lit8 v0, v0, 0x1

    #@4a
    .line 482
    iput v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@4c
    return-void
.end method

.method public clear()V
    .registers 6

    #@0
    .line 440
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@2
    .line 441
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@4
    const/4 v2, 0x0

    #@5
    move v3, v2

    #@6
    :goto_6
    if-ge v3, v0, :cond_e

    #@8
    const/4 v4, 0x0

    #@9
    .line 444
    aput-object v4, v1, v3

    #@b
    add-int/lit8 v3, v3, 0x1

    #@d
    goto :goto_6

    #@e
    .line 447
    :cond_e
    iput v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@10
    .line 448
    iput-boolean v2, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@12
    return-void
.end method

.method public clone()Landroidx/collection/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    #@0
    .line 88
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/collection/LongSparseArray;

    #@6
    .line 89
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@8
    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [J

    #@e
    iput-object v1, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@10
    .line 90
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@12
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, [Ljava/lang/Object;

    #@18
    iput-object v1, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    #@1a
    return-object v0

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    .line 92
    new-instance v1, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@21
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 50
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public containsKey(J)Z
    .registers 3

    #@0
    .line 428
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .line 433
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public delete(J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 132
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    #@3
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 109
    invoke-virtual {p0, p1, p2, v0}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    #@0
    .line 118
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@2
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result p1

    #@8
    if-ltz p1, :cond_14

    #@a
    .line 120
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object p1, p2, p1

    #@e
    sget-object p2, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-ne p1, p2, :cond_13

    #@12
    goto :goto_14

    #@13
    :cond_13
    return-object p1

    #@14
    :cond_14
    :goto_14
    return-object p3
.end method

.method public indexOfKey(J)I
    .registers 5

    #@0
    .line 399
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 400
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    #@7
    .line 403
    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@9
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@b
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    #@e
    move-result p1

    #@f
    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    #@0
    .line 415
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 416
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 419
    :goto_8
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@a
    if-ge v0, v1, :cond_16

    #@c
    .line 420
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@e
    aget-object v1, v1, v0

    #@10
    if-ne v1, p1, :cond_13

    #@12
    return v0

    #@13
    :cond_13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    const/4 p1, -0x1

    #@17
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 339
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

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

.method public keyAt(I)J
    .registers 5

    #@0
    .line 353
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 354
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    #@7
    .line 357
    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@9
    aget-wide v1, v0, p1

    #@b
    return-wide v1
.end method

.method public put(JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    #@0
    .line 248
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@2
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    if-ltz v0, :cond_f

    #@a
    .line 251
    iget-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aput-object p3, p1, v0

    #@e
    goto :goto_7e

    #@f
    :cond_f
    not-int v0, v0

    #@10
    .line 255
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@12
    if-ge v0, v1, :cond_23

    #@14
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@16
    aget-object v3, v2, v0

    #@18
    sget-object v4, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@1a
    if-ne v3, v4, :cond_23

    #@1c
    .line 256
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@1e
    aput-wide p1, v1, v0

    #@20
    .line 257
    aput-object p3, v2, v0

    #@22
    return-void

    #@23
    .line 261
    :cond_23
    iget-boolean v2, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@25
    if-eqz v2, :cond_38

    #@27
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@29
    array-length v2, v2

    #@2a
    if-lt v1, v2, :cond_38

    #@2c
    .line 262
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    #@2f
    .line 265
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@31
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@33
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    #@36
    move-result v0

    #@37
    not-int v0, v0

    #@38
    .line 268
    :cond_38
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@3a
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@3c
    array-length v2, v2

    #@3d
    if-lt v1, v2, :cond_5a

    #@3f
    add-int/lit8 v1, v1, 0x1

    #@41
    .line 269
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    #@44
    move-result v1

    #@45
    .line 271
    new-array v2, v1, [J

    #@47
    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    #@49
    .line 275
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@4b
    array-length v4, v3

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@50
    .line 276
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@52
    array-length v4, v3

    #@53
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@56
    .line 278
    iput-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@58
    .line 279
    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@5a
    .line 282
    :cond_5a
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@5c
    sub-int v2, v1, v0

    #@5e
    if-eqz v2, :cond_70

    #@60
    .line 284
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@62
    add-int/lit8 v3, v0, 0x1

    #@64
    sub-int/2addr v1, v0

    #@65
    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@68
    .line 285
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@6a
    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@6c
    sub-int/2addr v2, v0

    #@6d
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@70
    .line 288
    :cond_70
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@72
    aput-wide p1, v1, v0

    #@74
    .line 289
    iget-object p1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@76
    aput-object p3, p1, v0

    #@78
    .line 290
    iget p1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@7a
    add-int/lit8 p1, p1, 0x1

    #@7c
    iput p1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@7e
    :goto_7e
    return-void
.end method

.method public putAll(Landroidx/collection/LongSparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "+TE;>;)V"
        }
    .end annotation

    #@0
    .line 300
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_15

    #@7
    .line 301
    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    #@a
    move-result-wide v2

    #@b
    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_5

    #@15
    :cond_15
    return-void
.end method

.method public putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    #@0
    .line 315
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 317
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@9
    :cond_9
    return-object v0
.end method

.method public remove(J)V
    .registers 5

    #@0
    .line 139
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    #@2
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result p1

    #@8
    if-ltz p1, :cond_17

    #@a
    .line 142
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v0, p2, p1

    #@e
    sget-object v1, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-eq v0, v1, :cond_17

    #@12
    .line 143
    aput-object v1, p2, p1

    #@14
    const/4 p1, 0x1

    #@15
    .line 144
    iput-boolean p1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@17
    :cond_17
    return-void
.end method

.method public remove(JLjava/lang/Object;)Z
    .registers 4

    #@0
    .line 156
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_19

    #@6
    .line 158
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    if-eq p3, p2, :cond_14

    #@c
    if-eqz p3, :cond_19

    #@e
    .line 159
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result p2

    #@12
    if-eqz p2, :cond_19

    #@14
    .line 160
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    #@17
    const/4 p1, 0x1

    #@18
    return p1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return p1
.end method

.method public removeAt(I)V
    .registers 5

    #@0
    .line 171
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@2
    aget-object v1, v0, p1

    #@4
    sget-object v2, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@6
    if-eq v1, v2, :cond_d

    #@8
    .line 172
    aput-object v2, v0, p1

    #@a
    const/4 p1, 0x1

    #@b
    .line 173
    iput-boolean p1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@d
    :cond_d
    return-void
.end method

.method public replace(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    #@0
    .line 185
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_d

    #@6
    .line 187
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@8
    aget-object v0, p2, p1

    #@a
    .line 188
    aput-object p3, p2, p1

    #@c
    return-object v0

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    return-object p1
.end method

.method public replace(JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;TE;)Z"
        }
    .end annotation

    #@0
    .line 203
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_1a

    #@6
    .line 205
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@8
    aget-object p2, p2, p1

    #@a
    if-eq p2, p3, :cond_14

    #@c
    if-eqz p3, :cond_1a

    #@e
    .line 206
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result p2

    #@12
    if-eqz p2, :cond_1a

    #@14
    .line 207
    :cond_14
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@16
    aput-object p4, p2, p1

    #@18
    const/4 p1, 0x1

    #@19
    return p1

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    return p1
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .line 386
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 387
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    #@7
    .line 390
    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aput-object p2, v0, p1

    #@b
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 327
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 328
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    #@7
    .line 331
    :cond_7
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 494
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_9

    #@6
    const-string v0, "{}"

    #@8
    return-object v0

    #@9
    .line 498
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@d
    mul-int/lit8 v1, v1, 0x1c

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    const/16 v1, 0x7b

    #@14
    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    const/4 v1, 0x0

    #@18
    .line 500
    :goto_18
    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    #@1a
    if-ge v1, v2, :cond_41

    #@1c
    if-lez v1, :cond_23

    #@1e
    const-string v2, ", "

    #@20
    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 504
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    #@26
    move-result-wide v2

    #@27
    .line 505
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    const/16 v2, 0x3d

    #@2c
    .line 506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 507
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    if-eq v2, p0, :cond_39

    #@35
    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_3e

    #@39
    :cond_39
    const-string v2, "(this Map)"

    #@3b
    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_18

    #@41
    :cond_41
    const/16 v1, 0x7d

    #@43
    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 373
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 374
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    #@7
    .line 377
    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aget-object p1, v0, p1

    #@b
    return-object p1
.end method
