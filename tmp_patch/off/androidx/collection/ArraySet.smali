.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field private static sBaseCache:[Ljava/lang/Object;

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;

.field private static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field private mCollections:Landroidx/collection/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field private mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [I

    #@3
    .line 50
    sput-object v1, Landroidx/collection/ArraySet;->INT:[I

    #@5
    new-array v0, v0, [Ljava/lang/Object;

    #@7
    .line 51
    sput-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    #@9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 240
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    #@4
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_e

    #@5
    .line 249
    sget-object p1, Landroidx/collection/ArraySet;->INT:[I

    #@7
    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@9
    .line 250
    sget-object p1, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    #@b
    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@d
    goto :goto_11

    #@e
    .line 252
    :cond_e
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    #@11
    :goto_11
    const/4 p1, 0x0

    #@12
    .line 254
    iput p1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@14
    return-void
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    #@0
    .line 261
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    #@3
    if-eqz p1, :cond_8

    #@5
    .line 263
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    #@8
    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    #@0
    .line 271
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    #@3
    if-eqz p1, :cond_8

    #@5
    .line 273
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@8
    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    #@0
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    if-ne p1, v0, :cond_30

    #@7
    .line 161
    const-class v0, Landroidx/collection/ArraySet;

    #@9
    monitor-enter v0

    #@a
    .line 162
    :try_start_a
    sget-object v4, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    #@c
    if-eqz v4, :cond_2b

    #@e
    .line 164
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@10
    .line 165
    aget-object p1, v4, v2

    #@12
    check-cast p1, [Ljava/lang/Object;

    #@14
    check-cast p1, [Ljava/lang/Object;

    #@16
    sput-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    #@18
    .line 166
    aget-object p1, v4, v3

    #@1a
    check-cast p1, [I

    #@1c
    check-cast p1, [I

    #@1e
    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@20
    .line 167
    aput-object v1, v4, v3

    #@22
    aput-object v1, v4, v2

    #@24
    .line 168
    sget p1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    #@26
    sub-int/2addr p1, v3

    #@27
    sput p1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    #@29
    .line 173
    monitor-exit v0

    #@2a
    return-void

    #@2b
    .line 175
    :cond_2b
    monitor-exit v0

    #@2c
    goto :goto_5c

    #@2d
    :catchall_2d
    move-exception p1

    #@2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_2d

    #@2f
    throw p1

    #@30
    :cond_30
    const/4 v0, 0x4

    #@31
    if-ne p1, v0, :cond_5c

    #@33
    .line 177
    const-class v0, Landroidx/collection/ArraySet;

    #@35
    monitor-enter v0

    #@36
    .line 178
    :try_start_36
    sget-object v4, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    #@38
    if-eqz v4, :cond_57

    #@3a
    .line 180
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@3c
    .line 181
    aget-object p1, v4, v2

    #@3e
    check-cast p1, [Ljava/lang/Object;

    #@40
    check-cast p1, [Ljava/lang/Object;

    #@42
    sput-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    #@44
    .line 182
    aget-object p1, v4, v3

    #@46
    check-cast p1, [I

    #@48
    check-cast p1, [I

    #@4a
    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@4c
    .line 183
    aput-object v1, v4, v3

    #@4e
    aput-object v1, v4, v2

    #@50
    .line 184
    sget p1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    #@52
    sub-int/2addr p1, v3

    #@53
    sput p1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    #@55
    .line 189
    monitor-exit v0

    #@56
    return-void

    #@57
    .line 191
    :cond_57
    monitor-exit v0

    #@58
    goto :goto_5c

    #@59
    :catchall_59
    move-exception p1

    #@5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_59

    #@5b
    throw p1

    #@5c
    .line 194
    :cond_5c
    :goto_5c
    new-array v0, p1, [I

    #@5e
    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@60
    .line 195
    new-array p1, p1, [Ljava/lang/Object;

    #@62
    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@64
    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 10

    #@0
    .line 200
    array-length v0, p0

    #@1
    const/16 v1, 0x8

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x2

    #@5
    const/4 v4, 0x0

    #@6
    const/16 v5, 0xa

    #@8
    const/4 v6, 0x1

    #@9
    if-ne v0, v1, :cond_2c

    #@b
    .line 201
    const-class v0, Landroidx/collection/ArraySet;

    #@d
    monitor-enter v0

    #@e
    .line 202
    :try_start_e
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    #@10
    if-ge v1, v5, :cond_27

    #@12
    .line 203
    sget-object v1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    #@14
    aput-object v1, p1, v4

    #@16
    .line 204
    aput-object p0, p1, v6

    #@18
    sub-int/2addr p2, v6

    #@19
    :goto_19
    if-lt p2, v3, :cond_20

    #@1b
    .line 206
    aput-object v2, p1, p2

    #@1d
    add-int/lit8 p2, p2, -0x1

    #@1f
    goto :goto_19

    #@20
    .line 208
    :cond_20
    sput-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    #@22
    .line 209
    sget p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    #@24
    add-int/2addr p0, v6

    #@25
    sput p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    #@27
    .line 215
    :cond_27
    monitor-exit v0

    #@28
    goto :goto_51

    #@29
    :catchall_29
    move-exception p0

    #@2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    #@2b
    throw p0

    #@2c
    .line 216
    :cond_2c
    array-length v0, p0

    #@2d
    const/4 v1, 0x4

    #@2e
    if-ne v0, v1, :cond_51

    #@30
    .line 217
    const-class v0, Landroidx/collection/ArraySet;

    #@32
    monitor-enter v0

    #@33
    .line 218
    :try_start_33
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    #@35
    if-ge v1, v5, :cond_4c

    #@37
    .line 219
    sget-object v1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    #@39
    aput-object v1, p1, v4

    #@3b
    .line 220
    aput-object p0, p1, v6

    #@3d
    sub-int/2addr p2, v6

    #@3e
    :goto_3e
    if-lt p2, v3, :cond_45

    #@40
    .line 222
    aput-object v2, p1, p2

    #@42
    add-int/lit8 p2, p2, -0x1

    #@44
    goto :goto_3e

    #@45
    .line 224
    :cond_45
    sput-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    #@47
    .line 225
    sget p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    #@49
    add-int/2addr p0, v6

    #@4a
    sput p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    #@4c
    .line 231
    :cond_4c
    monitor-exit v0

    #@4d
    goto :goto_51

    #@4e
    :catchall_4e
    move-exception p0

    #@4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    #@50
    throw p0

    #@51
    :cond_51
    :goto_51
    return-void
.end method

.method private getCollection()Landroidx/collection/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    #@0
    .line 634
    iget-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 635
    new-instance v0, Landroidx/collection/ArraySet$1;

    #@6
    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$1;-><init>(Landroidx/collection/ArraySet;)V

    #@9
    iput-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    #@b
    .line 682
    :cond_b
    iget-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    #@d
    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 7

    #@0
    .line 83
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, -0x1

    #@5
    return p1

    #@6
    .line 90
    :cond_6
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@8
    invoke-static {v1, v0, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    #@b
    move-result v1

    #@c
    if-gez v1, :cond_f

    #@e
    return v1

    #@f
    .line 98
    :cond_f
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@11
    aget-object v2, v2, v1

    #@13
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1a

    #@19
    return v1

    #@1a
    :cond_1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    :goto_1c
    if-ge v2, v0, :cond_32

    #@1e
    .line 104
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@20
    aget v3, v3, v2

    #@22
    if-ne v3, p2, :cond_32

    #@24
    .line 105
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@26
    aget-object v3, v3, v2

    #@28
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2f

    #@2e
    return v2

    #@2f
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_1c

    #@32
    :cond_32
    add-int/lit8 v1, v1, -0x1

    #@34
    :goto_34
    if-ltz v1, :cond_4a

    #@36
    .line 109
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@38
    aget v0, v0, v1

    #@3a
    if-ne v0, p2, :cond_4a

    #@3c
    .line 110
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@3e
    aget-object v0, v0, v1

    #@40
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_47

    #@46
    return v1

    #@47
    :cond_47
    add-int/lit8 v1, v1, -0x1

    #@49
    goto :goto_34

    #@4a
    :cond_4a
    not-int p1, v2

    #@4b
    return p1
.end method

.method private indexOfNull()I
    .registers 5

    #@0
    .line 121
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 128
    :cond_6
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v1, v0, v2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    #@c
    move-result v1

    #@d
    if-gez v1, :cond_10

    #@f
    return v1

    #@10
    .line 136
    :cond_10
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@12
    aget-object v2, v2, v1

    #@14
    if-nez v2, :cond_17

    #@16
    return v1

    #@17
    :cond_17
    add-int/lit8 v2, v1, 0x1

    #@19
    :goto_19
    if-ge v2, v0, :cond_2b

    #@1b
    .line 142
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@1d
    aget v3, v3, v2

    #@1f
    if-nez v3, :cond_2b

    #@21
    .line 143
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@23
    aget-object v3, v3, v2

    #@25
    if-nez v3, :cond_28

    #@27
    return v2

    #@28
    :cond_28
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_19

    #@2b
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    #@2d
    :goto_2d
    if-ltz v1, :cond_3f

    #@2f
    .line 147
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@31
    aget v0, v0, v1

    #@33
    if-nez v0, :cond_3f

    #@35
    .line 148
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@37
    aget-object v0, v0, v1

    #@39
    if-nez v0, :cond_3c

    #@3b
    return v1

    #@3c
    :cond_3c
    add-int/lit8 v1, v1, -0x1

    #@3e
    goto :goto_2d

    #@3f
    :cond_3f
    not-int v0, v2

    #@40
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_9

    #@3
    .line 361
    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    #@6
    move-result v1

    #@7
    move v2, v0

    #@8
    goto :goto_14

    #@9
    .line 363
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@c
    move-result v1

    #@d
    .line 364
    invoke-direct {p0, p1, v1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    #@10
    move-result v2

    #@11
    move v7, v2

    #@12
    move v2, v1

    #@13
    move v1, v7

    #@14
    :goto_14
    if-ltz v1, :cond_17

    #@16
    return v0

    #@17
    :cond_17
    not-int v1, v1

    #@18
    .line 371
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    #@1a
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@1c
    array-length v5, v4

    #@1d
    if-lt v3, v5, :cond_45

    #@1f
    const/16 v5, 0x8

    #@21
    if-lt v3, v5, :cond_27

    #@23
    shr-int/lit8 v5, v3, 0x1

    #@25
    add-int/2addr v5, v3

    #@26
    goto :goto_2c

    #@27
    :cond_27
    const/4 v6, 0x4

    #@28
    if-lt v3, v6, :cond_2b

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v5, v6

    #@2c
    .line 378
    :goto_2c
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@2e
    .line 379
    invoke-direct {p0, v5}, Landroidx/collection/ArraySet;->allocArrays(I)V

    #@31
    .line 381
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@33
    array-length v6, v5

    #@34
    if-lez v6, :cond_40

    #@36
    .line 383
    array-length v6, v4

    #@37
    invoke-static {v4, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    .line 384
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@3c
    array-length v6, v3

    #@3d
    invoke-static {v3, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    .line 387
    :cond_40
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@42
    invoke-static {v4, v3, v0}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@45
    .line 390
    :cond_45
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@47
    if-ge v1, v0, :cond_59

    #@49
    .line 395
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@4b
    add-int/lit8 v4, v1, 0x1

    #@4d
    sub-int/2addr v0, v1

    #@4e
    invoke-static {v3, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@51
    .line 396
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@53
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    #@55
    sub-int/2addr v3, v1

    #@56
    invoke-static {v0, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@59
    .line 399
    :cond_59
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@5b
    aput v2, v0, v1

    #@5d
    .line 400
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@5f
    aput-object p1, v0, v1

    #@61
    .line 401
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@63
    const/4 v0, 0x1

    #@64
    add-int/2addr p1, v0

    #@65
    iput p1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@67
    return v0
.end method

.method public addAll(Landroidx/collection/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    #@0
    .line 410
    iget v0, p1, Landroidx/collection/ArraySet;->mSize:I

    #@2
    .line 411
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@4
    add-int/2addr v1, v0

    #@5
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    #@8
    .line 412
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@a
    const/4 v2, 0x0

    #@b
    if-nez v1, :cond_20

    #@d
    if-lez v0, :cond_2c

    #@f
    .line 414
    iget-object v1, p1, Landroidx/collection/ArraySet;->mHashes:[I

    #@11
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@13
    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 415
    iget-object p1, p1, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@18
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@1a
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 416
    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@1f
    goto :goto_2c

    #@20
    :cond_20
    :goto_20
    if-ge v2, v0, :cond_2c

    #@22
    .line 420
    invoke-virtual {p1, v2}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    #@29
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_20

    #@2c
    :cond_2c
    :goto_2c
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    #@0
    .line 719
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@5
    move-result v1

    #@6
    add-int/2addr v0, v1

    #@7
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    #@a
    .line 721
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object p1

    #@e
    const/4 v0, 0x0

    #@f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1f

    #@15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 722
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    or-int/2addr v0, v1

    #@1e
    goto :goto_f

    #@1f
    :cond_1f
    return v0
.end method

.method public clear()V
    .registers 4

    #@0
    .line 282
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@2
    if-eqz v0, :cond_16

    #@4
    .line 283
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@6
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@8
    invoke-static {v1, v2, v0}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@b
    .line 284
    sget-object v0, Landroidx/collection/ArraySet;->INT:[I

    #@d
    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@f
    .line 285
    sget-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    #@11
    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@13
    const/4 v0, 0x0

    #@14
    .line 286
    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@16
    :cond_16
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 315
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

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

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 705
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object p1

    #@4
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_16

    #@a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 706
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_4

    #@14
    const/4 p1, 0x0

    #@15
    return p1

    #@16
    :cond_16
    const/4 p1, 0x1

    #@17
    return p1
.end method

.method public ensureCapacity(I)V
    .registers 6

    #@0
    .line 295
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@2
    array-length v1, v0

    #@3
    if-ge v1, p1, :cond_20

    #@5
    .line 297
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@7
    .line 298
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    #@a
    .line 299
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@c
    if-lez p1, :cond_1b

    #@e
    .line 300
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@10
    const/4 v3, 0x0

    #@11
    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 301
    iget-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@16
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    #@18
    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 303
    :cond_1b
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@1d
    invoke-static {v0, v1, p1}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@20
    :cond_20
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 562
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_2a

    #@9
    .line 563
    check-cast p1, Ljava/util/Set;

    #@b
    .line 564
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    #@e
    move-result v1

    #@f
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@12
    move-result v3

    #@13
    if-eq v1, v3, :cond_16

    #@15
    return v2

    #@16
    :cond_16
    move v1, v2

    #@17
    .line 569
    :goto_17
    :try_start_17
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    #@19
    if-ge v1, v3, :cond_29

    #@1b
    .line 570
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    .line 571
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v3
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_23} :catch_2a
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_23} :catch_2a

    #@23
    if-nez v3, :cond_26

    #@25
    return v2

    #@26
    :cond_26
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_17

    #@29
    :cond_29
    return v0

    #@2a
    :catch_2a
    :cond_2a
    return v2
.end method

.method public hashCode()I
    .registers 6

    #@0
    .line 590
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@2
    .line 592
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@4
    const/4 v2, 0x0

    #@5
    move v3, v2

    #@6
    :goto_6
    if-ge v2, v1, :cond_e

    #@8
    .line 593
    aget v4, v0, v2

    #@a
    add-int/2addr v3, v4

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_6

    #@e
    :cond_e
    return v3
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    .line 325
    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    #@5
    move-result p1

    #@6
    goto :goto_f

    #@7
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@a
    move-result v0

    #@b
    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    #@e
    move-result p1

    #@f
    :goto_f
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 343
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@2
    if-gtz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    #@0
    .line 694
    invoke-direct {p0}, Landroidx/collection/ArraySet;->getCollection()Landroidx/collection/MapCollections;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/collection/MapCollections;->getKeySet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 433
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_b

    #@6
    .line 435
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@9
    const/4 p1, 0x1

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method public removeAll(Landroidx/collection/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    #@0
    .line 506
    iget v0, p1, Landroidx/collection/ArraySet;->mSize:I

    #@2
    .line 510
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@4
    const/4 v2, 0x0

    #@5
    move v3, v2

    #@6
    :goto_6
    if-ge v3, v0, :cond_12

    #@8
    .line 512
    invoke-virtual {p1, v3}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0, v4}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    #@f
    add-int/lit8 v3, v3, 0x1

    #@11
    goto :goto_6

    #@12
    .line 514
    :cond_12
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@14
    if-eq v1, p1, :cond_17

    #@16
    const/4 v2, 0x1

    #@17
    :cond_17
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 735
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_15

    #@b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 736
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    or-int/2addr v0, v1

    #@14
    goto :goto_5

    #@15
    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 447
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@2
    aget-object v1, v0, p1

    #@4
    .line 448
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x1

    #@8
    if-gt v2, v4, :cond_1a

    #@a
    .line 451
    iget-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@c
    invoke-static {p1, v0, v2}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@f
    .line 452
    sget-object p1, Landroidx/collection/ArraySet;->INT:[I

    #@11
    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@13
    .line 453
    sget-object p1, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    #@15
    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@17
    .line 454
    iput v3, p0, Landroidx/collection/ArraySet;->mSize:I

    #@19
    goto :goto_6f

    #@1a
    .line 456
    :cond_1a
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@1c
    array-length v6, v5

    #@1d
    const/16 v7, 0x8

    #@1f
    if-le v6, v7, :cond_55

    #@21
    array-length v6, v5

    #@22
    div-int/lit8 v6, v6, 0x3

    #@24
    if-ge v2, v6, :cond_55

    #@26
    if-le v2, v7, :cond_2c

    #@28
    shr-int/lit8 v6, v2, 0x1

    #@2a
    add-int v7, v2, v6

    #@2c
    .line 466
    :cond_2c
    invoke-direct {p0, v7}, Landroidx/collection/ArraySet;->allocArrays(I)V

    #@2f
    .line 468
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    #@31
    sub-int/2addr v2, v4

    #@32
    iput v2, p0, Landroidx/collection/ArraySet;->mSize:I

    #@34
    if-lez p1, :cond_40

    #@36
    .line 471
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@38
    invoke-static {v5, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 472
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@3d
    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    .line 474
    :cond_40
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    #@42
    if-ge p1, v2, :cond_6f

    #@44
    add-int/lit8 v3, p1, 0x1

    #@46
    .line 479
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    #@48
    sub-int/2addr v2, p1

    #@49
    invoke-static {v5, v3, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4c
    .line 480
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@4e
    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    #@50
    sub-int/2addr v4, p1

    #@51
    invoke-static {v0, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@54
    goto :goto_6f

    #@55
    :cond_55
    sub-int/2addr v2, v4

    #@56
    .line 483
    iput v2, p0, Landroidx/collection/ArraySet;->mSize:I

    #@58
    if-ge p1, v2, :cond_68

    #@5a
    add-int/lit8 v0, p1, 0x1

    #@5c
    sub-int/2addr v2, p1

    #@5d
    .line 488
    invoke-static {v5, v0, v5, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@60
    .line 489
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@62
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    #@64
    sub-int/2addr v3, p1

    #@65
    invoke-static {v2, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@68
    .line 491
    :cond_68
    iget-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@6a
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@6c
    const/4 v2, 0x0

    #@6d
    aput-object v2, p1, v0

    #@6f
    :cond_6f
    :goto_6f
    return-object v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 750
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@2
    const/4 v1, 0x1

    #@3
    sub-int/2addr v0, v1

    #@4
    const/4 v2, 0x0

    #@5
    :goto_5
    if-ltz v0, :cond_18

    #@7
    .line 751
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@9
    aget-object v3, v3, v0

    #@b
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_15

    #@11
    .line 752
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@14
    move v2, v1

    #@15
    :cond_15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_5

    #@18
    :cond_18
    return v2
.end method

.method public size()I
    .registers 2

    #@0
    .line 522
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@2
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    #@0
    .line 528
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@2
    new-array v1, v0, [Ljava/lang/Object;

    #@4
    .line 529
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 536
    array-length v0, p1

    #@1
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@3
    if-ge v0, v1, :cond_17

    #@5
    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@c
    move-result-object p1

    #@d
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    #@f
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    check-cast p1, [Ljava/lang/Object;

    #@15
    check-cast p1, [Ljava/lang/Object;

    #@17
    .line 541
    :cond_17
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@19
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 542
    array-length v0, p1

    #@20
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@22
    if-le v0, v1, :cond_27

    #@24
    const/4 v0, 0x0

    #@25
    .line 543
    aput-object v0, p1, v1

    #@27
    :cond_27
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 607
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-string v0, "{}"

    #@8
    return-object v0

    #@9
    .line 611
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    #@d
    mul-int/lit8 v1, v1, 0xe

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    const/16 v1, 0x7b

    #@14
    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    const/4 v1, 0x0

    #@18
    .line 613
    :goto_18
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    #@1a
    if-ge v1, v2, :cond_35

    #@1c
    if-lez v1, :cond_23

    #@1e
    const-string v2, ", "

    #@20
    .line 615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 617
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    if-eq v2, p0, :cond_2d

    #@29
    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_32

    #@2d
    :cond_2d
    const-string v2, "(this Set)"

    #@2f
    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_18

    #@35
    :cond_35
    const/16 v1, 0x7d

    #@37
    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
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
    .line 335
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@2
    aget-object p1, v0, p1

    #@4
    return-object p1
.end method
