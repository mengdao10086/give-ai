.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

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

.field private mKeys:[I

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
    sput-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0xa

    #@2
    .line 62
    invoke-direct {p0, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

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
    iput-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@6
    if-nez p1, :cond_11

    #@8
    .line 74
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    #@a
    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@c
    .line 75
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@e
    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@10
    goto :goto_1d

    #@11
    .line 77
    :cond_11
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    #@14
    move-result p1

    #@15
    .line 78
    new-array v0, p1, [I

    #@17
    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@19
    .line 79
    new-array p1, p1, [Ljava/lang/Object;

    #@1b
    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@1d
    :goto_1d
    return-void
.end method

.method private gc()V
    .registers 9

    #@0
    .line 230
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@2
    .line 232
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@4
    .line 233
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

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
    .line 236
    aget-object v6, v2, v4

    #@d
    .line 238
    sget-object v7, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    #@f
    if-eq v6, v7, :cond_1e

    #@11
    if-eq v4, v5, :cond_1c

    #@13
    .line 240
    aget v7, v1, v4

    #@15
    aput v7, v1, v5

    #@17
    .line 241
    aput-object v6, v2, v5

    #@19
    const/4 v6, 0x0

    #@1a
    .line 242
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
    .line 249
    :cond_21
    iput-boolean v3, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@23
    .line 250
    iput v5, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@25
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .line 460
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@2
    if-eqz v0, :cond_10

    #@4
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@6
    add-int/lit8 v2, v0, -0x1

    #@8
    aget v1, v1, v2

    #@a
    if-gt p1, v1, :cond_10

    #@c
    .line 461
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    #@f
    return-void

    #@10
    .line 465
    :cond_10
    iget-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@12
    if-eqz v1, :cond_1c

    #@14
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@16
    array-length v1, v1

    #@17
    if-lt v0, v1, :cond_1c

    #@19
    .line 466
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    #@1c
    .line 469
    :cond_1c
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@1e
    .line 470
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@20
    array-length v1, v1

    #@21
    if-lt v0, v1, :cond_3e

    #@23
    add-int/lit8 v1, v0, 0x1

    #@25
    .line 471
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    #@28
    move-result v1

    #@29
    .line 473
    new-array v2, v1, [I

    #@2b
    .line 474
    new-array v1, v1, [Ljava/lang/Object;

    #@2d
    .line 477
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@2f
    array-length v4, v3

    #@30
    const/4 v5, 0x0

    #@31
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    .line 478
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@36
    array-length v4, v3

    #@37
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    .line 480
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@3c
    .line 481
    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@3e
    .line 484
    :cond_3e
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@40
    aput p1, v1, v0

    #@42
    .line 485
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@44
    aput-object p2, p1, v0

    #@46
    add-int/lit8 v0, v0, 0x1

    #@48
    .line 486
    iput v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@4a
    return-void
.end method

.method public clear()V
    .registers 6

    #@0
    .line 444
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@2
    .line 445
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

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
    .line 448
    aput-object v4, v1, v3

    #@b
    add-int/lit8 v3, v3, 0x1

    #@d
    goto :goto_6

    #@e
    .line 451
    :cond_e
    iput v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@10
    .line 452
    iput-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@12
    return-void
.end method

.method public clone()Landroidx/collection/SparseArrayCompat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
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
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    #@6
    .line 89
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@8
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [I

    #@e
    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@10
    .line 90
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@12
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, [Ljava/lang/Object;

    #@18
    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;
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
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public containsKey(I)Z
    .registers 2

    #@0
    .line 432
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

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
    .line 437
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

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

.method public delete(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 132
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    #@3
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 109
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .line 118
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@2
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@4
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result p1

    #@8
    if-ltz p1, :cond_14

    #@a
    .line 120
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@c
    aget-object p1, v0, p1

    #@e
    sget-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    #@10
    if-ne p1, v0, :cond_13

    #@12
    goto :goto_14

    #@13
    :cond_13
    return-object p1

    #@14
    :cond_14
    :goto_14
    return-object p2
.end method

.method public indexOfKey(I)I
    .registers 4

    #@0
    .line 401
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 402
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    #@7
    .line 405
    :cond_7
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@9
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@b
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

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
    .line 419
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 420
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 423
    :goto_8
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@a
    if-ge v0, v1, :cond_16

    #@c
    .line 424
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

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
    .line 352
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

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

.method public keyAt(I)I
    .registers 3

    #@0
    .line 361
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 362
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    #@7
    .line 365
    :cond_7
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@9
    aget p1, v0, p1

    #@b
    return p1
.end method

.method public put(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .line 261
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@2
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@4
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    if-ltz v0, :cond_f

    #@a
    .line 264
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@c
    aput-object p2, p1, v0

    #@e
    goto :goto_7e

    #@f
    :cond_f
    not-int v0, v0

    #@10
    .line 268
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@12
    if-ge v0, v1, :cond_23

    #@14
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@16
    aget-object v3, v2, v0

    #@18
    sget-object v4, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    #@1a
    if-ne v3, v4, :cond_23

    #@1c
    .line 269
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@1e
    aput p1, v1, v0

    #@20
    .line 270
    aput-object p2, v2, v0

    #@22
    return-void

    #@23
    .line 274
    :cond_23
    iget-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@25
    if-eqz v2, :cond_38

    #@27
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@29
    array-length v2, v2

    #@2a
    if-lt v1, v2, :cond_38

    #@2c
    .line 275
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    #@2f
    .line 278
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@31
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@33
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    #@36
    move-result v0

    #@37
    not-int v0, v0

    #@38
    .line 281
    :cond_38
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@3a
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@3c
    array-length v2, v2

    #@3d
    if-lt v1, v2, :cond_5a

    #@3f
    add-int/lit8 v1, v1, 0x1

    #@41
    .line 282
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    #@44
    move-result v1

    #@45
    .line 284
    new-array v2, v1, [I

    #@47
    .line 285
    new-array v1, v1, [Ljava/lang/Object;

    #@49
    .line 288
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@4b
    array-length v4, v3

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@50
    .line 289
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@52
    array-length v4, v3

    #@53
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@56
    .line 291
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@58
    .line 292
    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@5a
    .line 295
    :cond_5a
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@5c
    sub-int v2, v1, v0

    #@5e
    if-eqz v2, :cond_70

    #@60
    .line 297
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@62
    add-int/lit8 v3, v0, 0x1

    #@64
    sub-int/2addr v1, v0

    #@65
    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@68
    .line 298
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@6a
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@6c
    sub-int/2addr v2, v0

    #@6d
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@70
    .line 301
    :cond_70
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@72
    aput p1, v1, v0

    #@74
    .line 302
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@76
    aput-object p2, p1, v0

    #@78
    .line 303
    iget p1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@7a
    add-int/lit8 p1, p1, 0x1

    #@7c
    iput p1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@7e
    :goto_7e
    return-void
.end method

.method public putAll(Landroidx/collection/SparseArrayCompat;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "+TE;>;)V"
        }
    .end annotation

    #@0
    .line 313
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_15

    #@7
    .line 314
    invoke-virtual {p1, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p1, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {p0, v2, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_5

    #@15
    :cond_15
    return-void
.end method

.method public putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .line 328
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 330
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    #@9
    :cond_9
    return-object v0
.end method

.method public remove(I)V
    .registers 5

    #@0
    .line 139
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    #@2
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@4
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result p1

    #@8
    if-ltz p1, :cond_17

    #@a
    .line 142
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v0, p1

    #@e
    sget-object v2, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    #@10
    if-eq v1, v2, :cond_17

    #@12
    .line 143
    aput-object v2, v0, p1

    #@14
    const/4 p1, 0x1

    #@15
    .line 144
    iput-boolean p1, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@17
    :cond_17
    return-void
.end method

.method public remove(ILjava/lang/Object;)Z
    .registers 4

    #@0
    .line 156
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_19

    #@6
    .line 158
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-eq p2, v0, :cond_14

    #@c
    if-eqz p2, :cond_19

    #@e
    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result p2

    #@12
    if-eqz p2, :cond_19

    #@14
    .line 160
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

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
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@2
    aget-object v1, v0, p1

    #@4
    sget-object v2, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    #@6
    if-eq v1, v2, :cond_d

    #@8
    .line 172
    aput-object v2, v0, p1

    #@a
    const/4 p1, 0x1

    #@b
    .line 173
    iput-boolean p1, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@d
    :cond_d
    return-void
.end method

.method public removeAtRange(II)V
    .registers 4

    #@0
    .line 184
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@2
    add-int/2addr p2, p1

    #@3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@6
    move-result p2

    #@7
    :goto_7
    if-ge p1, p2, :cond_f

    #@9
    .line 186
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    #@c
    add-int/lit8 p1, p1, 0x1

    #@e
    goto :goto_7

    #@f
    :cond_f
    return-void
.end method

.method public replace(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .line 198
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_d

    #@6
    .line 200
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@8
    aget-object v1, v0, p1

    #@a
    .line 201
    aput-object p2, v0, p1

    #@c
    return-object v1

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    return-object p1
.end method

.method public replace(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    #@0
    .line 216
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_1a

    #@6
    .line 218
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@8
    aget-object v0, v0, p1

    #@a
    if-eq v0, p2, :cond_14

    #@c
    if-eqz p2, :cond_1a

    #@e
    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result p2

    #@12
    if-eqz p2, :cond_1a

    #@14
    .line 220
    :cond_14
    iget-object p2, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@16
    aput-object p3, p2, p1

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
    .line 388
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 389
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    #@7
    .line 392
    :cond_7
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@9
    aput-object p2, v0, p1

    #@b
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 340
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 341
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    #@7
    .line 344
    :cond_7
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 498
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_9

    #@6
    const-string v0, "{}"

    #@8
    return-object v0

    #@9
    .line 502
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@d
    mul-int/lit8 v1, v1, 0x1c

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    const/16 v1, 0x7b

    #@14
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    const/4 v1, 0x0

    #@18
    .line 504
    :goto_18
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    #@1a
    if-ge v1, v2, :cond_41

    #@1c
    if-lez v1, :cond_23

    #@1e
    const-string v2, ", "

    #@20
    .line 506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 508
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    #@26
    move-result v2

    #@27
    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    const/16 v2, 0x3d

    #@2c
    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 511
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    if-eq v2, p0, :cond_39

    #@35
    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_3e

    #@39
    :cond_39
    const-string v2, "(this Map)"

    #@3b
    .line 515
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
    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 519
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
    .line 375
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 376
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    #@7
    .line 379
    :cond_7
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    #@9
    aget-object p1, v0, p1

    #@b
    return-object p1
.end method
