.class public Landroidx/collection/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 237
    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    #@5
    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@7
    .line 238
    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@9
    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@b
    const/4 v0, 0x0

    #@c
    .line 239
    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@e
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_e

    #@5
    .line 248
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    #@7
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@9
    .line 249
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@b
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@d
    goto :goto_11

    #@e
    .line 251
    :cond_e
    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    #@11
    :goto_11
    const/4 p1, 0x0

    #@12
    .line 253
    iput p1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@14
    return-void
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 260
    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@3
    if-eqz p1, :cond_8

    #@5
    .line 262
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

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
    .line 166
    const-class v0, Landroidx/collection/SimpleArrayMap;

    #@9
    monitor-enter v0

    #@a
    .line 167
    :try_start_a
    sget-object v4, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@c
    if-eqz v4, :cond_2b

    #@e
    .line 169
    iput-object v4, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@10
    .line 170
    aget-object p1, v4, v2

    #@12
    check-cast p1, [Ljava/lang/Object;

    #@14
    check-cast p1, [Ljava/lang/Object;

    #@16
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@18
    .line 171
    aget-object p1, v4, v3

    #@1a
    check-cast p1, [I

    #@1c
    check-cast p1, [I

    #@1e
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@20
    .line 172
    aput-object v1, v4, v3

    #@22
    aput-object v1, v4, v2

    #@24
    .line 173
    sget p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@26
    sub-int/2addr p1, v3

    #@27
    sput p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@29
    .line 176
    monitor-exit v0

    #@2a
    return-void

    #@2b
    .line 178
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
    .line 180
    const-class v0, Landroidx/collection/SimpleArrayMap;

    #@35
    monitor-enter v0

    #@36
    .line 181
    :try_start_36
    sget-object v4, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@38
    if-eqz v4, :cond_57

    #@3a
    .line 183
    iput-object v4, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@3c
    .line 184
    aget-object p1, v4, v2

    #@3e
    check-cast p1, [Ljava/lang/Object;

    #@40
    check-cast p1, [Ljava/lang/Object;

    #@42
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@44
    .line 185
    aget-object p1, v4, v3

    #@46
    check-cast p1, [I

    #@48
    check-cast p1, [I

    #@4a
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@4c
    .line 186
    aput-object v1, v4, v3

    #@4e
    aput-object v1, v4, v2

    #@50
    .line 187
    sget p1, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    #@52
    sub-int/2addr p1, v3

    #@53
    sput p1, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    #@55
    .line 190
    monitor-exit v0

    #@56
    return-void

    #@57
    .line 192
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
    .line 195
    :cond_5c
    :goto_5c
    new-array v0, p1, [I

    #@5e
    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@60
    shl-int/2addr p1, v3

    #@61
    .line 196
    new-array p1, p1, [Ljava/lang/Object;

    #@63
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@65
    return-void
.end method

.method private static binarySearchHashes([III)I
    .registers 3

    #@0
    .line 77
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    #@3
    move-result p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return p0

    #@5
    .line 80
    :catch_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    #@7
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@a
    throw p0
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 10

    #@0
    .line 201
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
    if-ne v0, v1, :cond_2e

    #@b
    .line 202
    const-class v0, Landroidx/collection/SimpleArrayMap;

    #@d
    monitor-enter v0

    #@e
    .line 203
    :try_start_e
    sget v1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@10
    if-ge v1, v5, :cond_29

    #@12
    .line 204
    sget-object v1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@14
    aput-object v1, p1, v4

    #@16
    .line 205
    aput-object p0, p1, v6

    #@18
    shl-int/lit8 p0, p2, 0x1

    #@1a
    sub-int/2addr p0, v6

    #@1b
    :goto_1b
    if-lt p0, v3, :cond_22

    #@1d
    .line 207
    aput-object v2, p1, p0

    #@1f
    add-int/lit8 p0, p0, -0x1

    #@21
    goto :goto_1b

    #@22
    .line 209
    :cond_22
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@24
    .line 210
    sget p0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@26
    add-int/2addr p0, v6

    #@27
    sput p0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@29
    .line 214
    :cond_29
    monitor-exit v0

    #@2a
    goto :goto_55

    #@2b
    :catchall_2b
    move-exception p0

    #@2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    #@2d
    throw p0

    #@2e
    .line 215
    :cond_2e
    array-length v0, p0

    #@2f
    const/4 v1, 0x4

    #@30
    if-ne v0, v1, :cond_55

    #@32
    .line 216
    const-class v0, Landroidx/collection/SimpleArrayMap;

    #@34
    monitor-enter v0

    #@35
    .line 217
    :try_start_35
    sget v1, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    #@37
    if-ge v1, v5, :cond_50

    #@39
    .line 218
    sget-object v1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@3b
    aput-object v1, p1, v4

    #@3d
    .line 219
    aput-object p0, p1, v6

    #@3f
    shl-int/lit8 p0, p2, 0x1

    #@41
    sub-int/2addr p0, v6

    #@42
    :goto_42
    if-lt p0, v3, :cond_49

    #@44
    .line 221
    aput-object v2, p1, p0

    #@46
    add-int/lit8 p0, p0, -0x1

    #@48
    goto :goto_42

    #@49
    .line 223
    :cond_49
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@4b
    .line 224
    sget p0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    #@4d
    add-int/2addr p0, v6

    #@4e
    sput p0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    #@50
    .line 228
    :cond_50
    monitor-exit v0

    #@51
    goto :goto_55

    #@52
    :catchall_52
    move-exception p0

    #@53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_52

    #@54
    throw p0

    #@55
    :cond_55
    :goto_55
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    #@0
    .line 270
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@2
    if-lez v0, :cond_16

    #@4
    .line 271
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@6
    .line 272
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@8
    .line 274
    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    #@a
    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@c
    .line 275
    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@e
    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@10
    const/4 v3, 0x0

    #@11
    .line 276
    iput v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@13
    .line 277
    invoke-static {v1, v2, v0}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@16
    .line 279
    :cond_16
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@18
    if-gtz v0, :cond_1b

    #@1a
    return-void

    #@1b
    .line 280
    :cond_1b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@1d
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@20
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 312
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

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

    #@0
    .line 352
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

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

.method public ensureCapacity(I)V
    .registers 7

    #@0
    .line 289
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@2
    .line 290
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@4
    array-length v2, v1

    #@5
    if-ge v2, p1, :cond_20

    #@7
    .line 292
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@9
    .line 293
    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    #@c
    .line 294
    iget p1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@e
    if-lez p1, :cond_1d

    #@10
    .line 295
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@12
    const/4 v3, 0x0

    #@13
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 296
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@18
    shl-int/lit8 v4, v0, 0x1

    #@1a
    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 298
    :cond_1d
    invoke-static {v1, v2, v0}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@20
    .line 300
    :cond_20
    iget p1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@22
    if-ne p1, v0, :cond_25

    #@24
    return-void

    #@25
    .line 301
    :cond_25
    new-instance p1, Ljava/util/ConcurrentModificationException;

    #@27
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2a
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 684
    :cond_4
    instance-of v1, p1, Landroidx/collection/SimpleArrayMap;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_3e

    #@9
    .line 685
    check-cast p1, Landroidx/collection/SimpleArrayMap;

    #@b
    .line 686
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

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
    .line 691
    :goto_17
    :try_start_17
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@19
    if-ge v1, v3, :cond_3c

    #@1b
    .line 692
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    .line 693
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    .line 694
    invoke-virtual {p1, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v5

    #@27
    if-nez v4, :cond_32

    #@29
    if-nez v5, :cond_31

    #@2b
    .line 696
    invoke-virtual {p1, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_39

    #@31
    :cond_31
    return v2

    #@32
    .line 699
    :cond_32
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v3
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_36} :catch_3d
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_36} :catch_3d

    #@36
    if-nez v3, :cond_39

    #@38
    return v2

    #@39
    :cond_39
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_17

    #@3c
    :cond_3c
    return v0

    #@3d
    :catch_3d
    return v2

    #@3e
    .line 709
    :cond_3e
    instance-of v1, p1, Ljava/util/Map;

    #@40
    if-eqz v1, :cond_76

    #@42
    .line 710
    check-cast p1, Ljava/util/Map;

    #@44
    .line 711
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    #@47
    move-result v1

    #@48
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@4b
    move-result v3

    #@4c
    if-eq v1, v3, :cond_4f

    #@4e
    return v2

    #@4f
    :cond_4f
    move v1, v2

    #@50
    .line 716
    :goto_50
    :try_start_50
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@52
    if-ge v1, v3, :cond_75

    #@54
    .line 717
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@57
    move-result-object v3

    #@58
    .line 718
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v4

    #@5c
    .line 719
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v5

    #@60
    if-nez v4, :cond_6b

    #@62
    if-nez v5, :cond_6a

    #@64
    .line 721
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@67
    move-result v3

    #@68
    if-nez v3, :cond_72

    #@6a
    :cond_6a
    return v2

    #@6b
    .line 724
    :cond_6b
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v3
    :try_end_6f
    .catch Ljava/lang/NullPointerException; {:try_start_50 .. :try_end_6f} :catch_76
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_6f} :catch_76

    #@6f
    if-nez v3, :cond_72

    #@71
    return v2

    #@72
    :cond_72
    add-int/lit8 v1, v1, 0x1

    #@74
    goto :goto_50

    #@75
    :cond_75
    return v0

    #@76
    :catch_76
    :cond_76
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 369
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    #@0
    .line 380
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_e

    #@6
    .line 381
    iget-object p2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@8
    shl-int/lit8 p1, p1, 0x1

    #@a
    add-int/lit8 p1, p1, 0x1

    #@c
    aget-object p2, p2, p1

    #@e
    :cond_e
    return-object p2
.end method

.method public hashCode()I
    .registers 10

    #@0
    .line 743
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@2
    .line 744
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@4
    .line 746
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x1

    #@8
    move v5, v3

    #@9
    move v6, v5

    #@a
    :goto_a
    if-ge v5, v2, :cond_1f

    #@c
    .line 747
    aget-object v7, v1, v4

    #@e
    .line 748
    aget v8, v0, v5

    #@10
    if-nez v7, :cond_14

    #@12
    move v7, v3

    #@13
    goto :goto_18

    #@14
    :cond_14
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v7

    #@18
    :goto_18
    xor-int/2addr v7, v8

    #@19
    add-int/2addr v6, v7

    #@1a
    add-int/lit8 v5, v5, 0x1

    #@1c
    add-int/lit8 v4, v4, 0x2

    #@1e
    goto :goto_a

    #@1f
    :cond_1f
    return v6
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 8

    #@0
    .line 88
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, -0x1

    #@5
    return p1

    #@6
    .line 95
    :cond_6
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@8
    invoke-static {v1, v0, p2}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    #@b
    move-result v1

    #@c
    if-gez v1, :cond_f

    #@e
    return v1

    #@f
    .line 103
    :cond_f
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@11
    shl-int/lit8 v3, v1, 0x1

    #@13
    aget-object v2, v2, v3

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1c

    #@1b
    return v1

    #@1c
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    #@1e
    :goto_1e
    if-ge v2, v0, :cond_36

    #@20
    .line 109
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@22
    aget v3, v3, v2

    #@24
    if-ne v3, p2, :cond_36

    #@26
    .line 110
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@28
    shl-int/lit8 v4, v2, 0x1

    #@2a
    aget-object v3, v3, v4

    #@2c
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_33

    #@32
    return v2

    #@33
    :cond_33
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_1e

    #@36
    :cond_36
    add-int/lit8 v1, v1, -0x1

    #@38
    :goto_38
    if-ltz v1, :cond_50

    #@3a
    .line 114
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@3c
    aget v0, v0, v1

    #@3e
    if-ne v0, p2, :cond_50

    #@40
    .line 115
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@42
    shl-int/lit8 v3, v1, 0x1

    #@44
    aget-object v0, v0, v3

    #@46
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_4d

    #@4c
    return v1

    #@4d
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    #@4f
    goto :goto_38

    #@50
    :cond_50
    not-int p1, v2

    #@51
    return p1
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    .line 322
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

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
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@e
    move-result p1

    #@f
    :goto_f
    return p1
.end method

.method indexOfNull()I
    .registers 6

    #@0
    .line 126
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 133
    :cond_6
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    #@c
    move-result v1

    #@d
    if-gez v1, :cond_10

    #@f
    return v1

    #@10
    .line 141
    :cond_10
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@12
    shl-int/lit8 v3, v1, 0x1

    #@14
    aget-object v2, v2, v3

    #@16
    if-nez v2, :cond_19

    #@18
    return v1

    #@19
    :cond_19
    add-int/lit8 v2, v1, 0x1

    #@1b
    :goto_1b
    if-ge v2, v0, :cond_2f

    #@1d
    .line 147
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@1f
    aget v3, v3, v2

    #@21
    if-nez v3, :cond_2f

    #@23
    .line 148
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@25
    shl-int/lit8 v4, v2, 0x1

    #@27
    aget-object v3, v3, v4

    #@29
    if-nez v3, :cond_2c

    #@2b
    return v2

    #@2c
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_1b

    #@2f
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    #@31
    :goto_31
    if-ltz v1, :cond_45

    #@33
    .line 152
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@35
    aget v0, v0, v1

    #@37
    if-nez v0, :cond_45

    #@39
    .line 153
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@3b
    shl-int/lit8 v3, v1, 0x1

    #@3d
    aget-object v0, v0, v3

    #@3f
    if-nez v0, :cond_42

    #@41
    return v1

    #@42
    :cond_42
    add-int/lit8 v1, v1, -0x1

    #@44
    goto :goto_31

    #@45
    :cond_45
    not-int v0, v2

    #@46
    return v0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 7

    #@0
    .line 326
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@2
    mul-int/lit8 v0, v0, 0x2

    #@4
    .line 327
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    const/4 v2, 0x1

    #@7
    if-nez p1, :cond_15

    #@9
    move p1, v2

    #@a
    :goto_a
    if-ge p1, v0, :cond_26

    #@c
    .line 330
    aget-object v3, v1, p1

    #@e
    if-nez v3, :cond_12

    #@10
    shr-int/2addr p1, v2

    #@11
    return p1

    #@12
    :cond_12
    add-int/lit8 p1, p1, 0x2

    #@14
    goto :goto_a

    #@15
    :cond_15
    move v3, v2

    #@16
    :goto_16
    if-ge v3, v0, :cond_26

    #@18
    .line 336
    aget-object v4, v1, v3

    #@1a
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_23

    #@20
    shr-int/lit8 p1, v3, 0x1

    #@22
    return p1

    #@23
    :cond_23
    add-int/lit8 v3, v3, 0x2

    #@25
    goto :goto_16

    #@26
    :cond_26
    const/4 p1, -0x1

    #@27
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 419
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

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

.method public keyAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    #@0
    .line 390
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 p1, p1, 0x1

    #@4
    aget-object p1, v0, p1

    #@6
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .line 432
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@2
    const/4 v1, 0x0

    #@3
    if-nez p1, :cond_b

    #@5
    .line 437
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    #@8
    move-result v2

    #@9
    move v3, v1

    #@a
    goto :goto_16

    #@b
    .line 439
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@e
    move-result v2

    #@f
    .line 440
    invoke-virtual {p0, p1, v2}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@12
    move-result v3

    #@13
    move v8, v3

    #@14
    move v3, v2

    #@15
    move v2, v8

    #@16
    :goto_16
    if-ltz v2, :cond_23

    #@18
    shl-int/lit8 p1, v2, 0x1

    #@1a
    add-int/lit8 p1, p1, 0x1

    #@1c
    .line 444
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@1e
    aget-object v1, v0, p1

    #@20
    .line 445
    aput-object p2, v0, p1

    #@22
    return-object v1

    #@23
    :cond_23
    not-int v2, v2

    #@24
    .line 450
    iget-object v4, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@26
    array-length v5, v4

    #@27
    if-lt v0, v5, :cond_58

    #@29
    const/16 v5, 0x8

    #@2b
    if-lt v0, v5, :cond_31

    #@2d
    shr-int/lit8 v5, v0, 0x1

    #@2f
    add-int/2addr v5, v0

    #@30
    goto :goto_36

    #@31
    :cond_31
    const/4 v6, 0x4

    #@32
    if-lt v0, v6, :cond_35

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v5, v6

    #@36
    .line 457
    :goto_36
    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@38
    .line 458
    invoke-direct {p0, v5}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    #@3b
    .line 460
    iget v5, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@3d
    if-ne v0, v5, :cond_52

    #@3f
    .line 464
    iget-object v5, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@41
    array-length v7, v5

    #@42
    if-lez v7, :cond_4e

    #@44
    .line 466
    array-length v7, v4

    #@45
    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@48
    .line 467
    iget-object v5, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@4a
    array-length v7, v6

    #@4b
    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4e
    .line 470
    :cond_4e
    invoke-static {v4, v6, v0}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@51
    goto :goto_58

    #@52
    .line 461
    :cond_52
    new-instance p1, Ljava/util/ConcurrentModificationException;

    #@54
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@57
    throw p1

    #@58
    :cond_58
    :goto_58
    if-ge v2, v0, :cond_71

    #@5a
    .line 476
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@5c
    add-int/lit8 v4, v2, 0x1

    #@5e
    sub-int v5, v0, v2

    #@60
    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@63
    .line 477
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@65
    shl-int/lit8 v5, v2, 0x1

    #@67
    shl-int/lit8 v4, v4, 0x1

    #@69
    iget v6, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@6b
    sub-int/2addr v6, v2

    #@6c
    shl-int/lit8 v6, v6, 0x1

    #@6e
    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@71
    .line 481
    :cond_71
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@73
    if-ne v0, v1, :cond_8c

    #@75
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@77
    array-length v4, v0

    #@78
    if-ge v2, v4, :cond_8c

    #@7a
    .line 486
    aput v3, v0, v2

    #@7c
    .line 487
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@7e
    shl-int/lit8 v2, v2, 0x1

    #@80
    aput-object p1, v0, v2

    #@82
    add-int/lit8 v2, v2, 0x1

    #@84
    .line 488
    aput-object p2, v0, v2

    #@86
    add-int/lit8 v1, v1, 0x1

    #@88
    .line 489
    iput v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@8a
    const/4 p1, 0x0

    #@8b
    return-object p1

    #@8c
    .line 482
    :cond_8c
    new-instance p1, Ljava/util/ConcurrentModificationException;

    #@8e
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@91
    throw p1
.end method

.method public putAll(Landroidx/collection/SimpleArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .line 498
    iget v0, p1, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@2
    .line 499
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@4
    add-int/2addr v1, v0

    #@5
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->ensureCapacity(I)V

    #@8
    .line 500
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@a
    const/4 v2, 0x0

    #@b
    if-nez v1, :cond_22

    #@d
    if-lez v0, :cond_32

    #@f
    .line 502
    iget-object v1, p1, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@11
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@13
    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 503
    iget-object p1, p1, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@18
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@1a
    shl-int/lit8 v3, v0, 0x1

    #@1c
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 504
    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@21
    goto :goto_32

    #@22
    :cond_22
    :goto_22
    if-ge v2, v0, :cond_32

    #@24
    .line 508
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_22

    #@32
    :cond_32
    :goto_32
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .line 523
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_a

    #@6
    .line 525
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    :cond_a
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .line 538
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_b

    #@6
    .line 540
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    return-object p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    #@0
    .line 553
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_19

    #@6
    .line 555
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-eq p2, v0, :cond_14

    #@c
    if-eqz p2, :cond_19

    #@e
    .line 556
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result p2

    #@12
    if-eqz p2, :cond_19

    #@14
    .line 557
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

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

.method public removeAt(I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    #@0
    .line 570
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 v1, p1, 0x1

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    aget-object v2, v0, v2

    #@8
    .line 571
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@a
    const/4 v4, 0x0

    #@b
    const/4 v5, 0x1

    #@c
    if-gt v3, v5, :cond_1c

    #@e
    .line 576
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@10
    invoke-static {p1, v0, v3}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@13
    .line 577
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    #@15
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@17
    .line 578
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@19
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@1b
    goto :goto_79

    #@1c
    :cond_1c
    add-int/lit8 v6, v3, -0x1

    #@1e
    .line 582
    iget-object v7, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@20
    array-length v8, v7

    #@21
    const/16 v9, 0x8

    #@23
    if-le v8, v9, :cond_5e

    #@25
    array-length v8, v7

    #@26
    div-int/lit8 v8, v8, 0x3

    #@28
    if-ge v3, v8, :cond_5e

    #@2a
    if-le v3, v9, :cond_30

    #@2c
    shr-int/lit8 v8, v3, 0x1

    #@2e
    add-int v9, v3, v8

    #@30
    .line 592
    :cond_30
    invoke-direct {p0, v9}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    #@33
    .line 594
    iget v8, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@35
    if-ne v3, v8, :cond_58

    #@37
    if-lez p1, :cond_43

    #@39
    .line 600
    iget-object v8, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@3b
    invoke-static {v7, v4, v8, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e
    .line 601
    iget-object v8, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@40
    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@43
    :cond_43
    if-ge p1, v6, :cond_78

    #@45
    add-int/lit8 v4, p1, 0x1

    #@47
    .line 606
    iget-object v8, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    #@49
    sub-int v9, v6, p1

    #@4b
    invoke-static {v7, v4, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4e
    shl-int/lit8 p1, v4, 0x1

    #@50
    .line 607
    iget-object v4, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@52
    shl-int/lit8 v5, v9, 0x1

    #@54
    invoke-static {v0, p1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@57
    goto :goto_78

    #@58
    .line 595
    :cond_58
    new-instance p1, Ljava/util/ConcurrentModificationException;

    #@5a
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@5d
    throw p1

    #@5e
    :cond_5e
    if-ge p1, v6, :cond_6e

    #@60
    add-int/lit8 v0, p1, 0x1

    #@62
    sub-int v4, v6, p1

    #@64
    .line 614
    invoke-static {v7, v0, v7, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@67
    .line 615
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@69
    shl-int/2addr v0, v5

    #@6a
    shl-int/2addr v4, v5

    #@6b
    invoke-static {p1, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6e
    .line 618
    :cond_6e
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@70
    shl-int/lit8 v0, v6, 0x1

    #@72
    const/4 v1, 0x0

    #@73
    aput-object v1, p1, v0

    #@75
    add-int/2addr v0, v5

    #@76
    .line 619
    aput-object v1, p1, v0

    #@78
    :cond_78
    :goto_78
    move v4, v6

    #@79
    .line 622
    :goto_79
    iget p1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@7b
    if-ne v3, p1, :cond_80

    #@7d
    .line 625
    iput v4, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@7f
    return-object v2

    #@80
    .line 623
    :cond_80
    new-instance p1, Ljava/util/ConcurrentModificationException;

    #@82
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@85
    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .line 637
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_b

    #@6
    .line 639
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    return-object p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .line 653
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_19

    #@6
    .line 655
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-eq v0, p2, :cond_14

    #@c
    if-eqz p2, :cond_19

    #@e
    .line 656
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result p2

    #@12
    if-eqz p2, :cond_19

    #@14
    .line 657
    :cond_14
    invoke-virtual {p0, p1, p3}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

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

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    #@0
    shl-int/lit8 p1, p1, 0x1

    #@2
    add-int/lit8 p1, p1, 0x1

    #@4
    .line 410
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    aget-object v1, v0, p1

    #@8
    .line 411
    aput-object p2, v0, p1

    #@a
    return-object v1
.end method

.method public size()I
    .registers 2

    #@0
    .line 668
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 762
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-string v0, "{}"

    #@8
    return-object v0

    #@9
    .line 766
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@d
    mul-int/lit8 v1, v1, 0x1c

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    const/16 v1, 0x7b

    #@14
    .line 767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    const/4 v1, 0x0

    #@18
    .line 768
    :goto_18
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    #@1a
    if-ge v1, v2, :cond_47

    #@1c
    if-lez v1, :cond_23

    #@1e
    const-string v2, ", "

    #@20
    .line 770
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 772
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    const-string v3, "(this Map)"

    #@29
    if-eq v2, p0, :cond_2f

    #@2b
    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    goto :goto_32

    #@2f
    .line 776
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    :goto_32
    const/16 v2, 0x3d

    #@34
    .line 778
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 779
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    if-eq v2, p0, :cond_41

    #@3d
    .line 781
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_44

    #@41
    .line 783
    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_18

    #@47
    :cond_47
    const/16 v1, 0x7d

    #@49
    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    #@0
    .line 399
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 p1, p1, 0x1

    #@4
    add-int/lit8 p1, p1, 0x1

    #@6
    aget-object p1, v0, p1

    #@8
    return-object p1
.end method
