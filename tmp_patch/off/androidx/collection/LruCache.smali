.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


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


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    #@0
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-lez p1, :cond_13

    #@5
    .line 55
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    #@7
    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    #@9
    const/high16 v0, 0x3f400000    # 0.75f

    #@b
    const/4 v1, 0x1

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@10
    iput-object p1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@12
    return-void

    #@13
    .line 53
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@15
    const-string v0, "maxSize <= 0"

    #@17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw p1
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    #@0
    .line 259
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_7

    #@6
    return v0

    #@7
    .line 261
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "Negative size: "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p1

    #@14
    const-string v1, "="

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public final declared-synchronized createCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 322
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public final evictAll()V
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    .line 281
    invoke-virtual {p0, v0}, Landroidx/collection/LruCache;->trimToSize(I)V

    #@4
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 336
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_54

    #@2
    .line 88
    monitor-enter p0

    #@3
    .line 89
    :try_start_3
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_13

    #@b
    .line 91
    iget p1, p0, Landroidx/collection/LruCache;->hitCount:I

    #@d
    add-int/lit8 p1, p1, 0x1

    #@f
    iput p1, p0, Landroidx/collection/LruCache;->hitCount:I

    #@11
    .line 92
    monitor-exit p0

    #@12
    return-object v0

    #@13
    .line 94
    :cond_13
    iget v0, p0, Landroidx/collection/LruCache;->missCount:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    iput v0, p0, Landroidx/collection/LruCache;->missCount:I

    #@19
    .line 95
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_51

    #@1a
    .line 104
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    if-nez v0, :cond_22

    #@20
    const/4 p1, 0x0

    #@21
    return-object p1

    #@22
    .line 109
    :cond_22
    monitor-enter p0

    #@23
    .line 110
    :try_start_23
    iget v1, p0, Landroidx/collection/LruCache;->createCount:I

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    iput v1, p0, Landroidx/collection/LruCache;->createCount:I

    #@29
    .line 111
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@2b
    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    if-eqz v1, :cond_37

    #@31
    .line 115
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@33
    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    goto :goto_40

    #@37
    .line 117
    :cond_37
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    #@39
    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3c
    move-result v3

    #@3d
    add-int/2addr v2, v3

    #@3e
    iput v2, p0, Landroidx/collection/LruCache;->size:I

    #@40
    .line 119
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_4e

    #@41
    if-eqz v1, :cond_48

    #@43
    const/4 v2, 0x0

    #@44
    .line 122
    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@47
    return-object v1

    #@48
    .line 125
    :cond_48
    iget p1, p0, Landroidx/collection/LruCache;->maxSize:I

    #@4a
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    #@4d
    return-object v0

    #@4e
    :catchall_4e
    move-exception p1

    #@4f
    .line 119
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    #@50
    throw p1

    #@51
    :catchall_51
    move-exception p1

    #@52
    .line 95
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    #@53
    throw p1

    #@54
    .line 84
    :cond_54
    new-instance p1, Ljava/lang/NullPointerException;

    #@56
    const-string v0, "key == null"

    #@58
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@5b
    throw p1
.end method

.method public final declared-synchronized hitCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 307
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 299
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final declared-synchronized missCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 315
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_35

    #@2
    if-eqz p2, :cond_35

    #@4
    .line 143
    monitor-enter p0

    #@5
    .line 144
    :try_start_5
    iget v0, p0, Landroidx/collection/LruCache;->putCount:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iput v0, p0, Landroidx/collection/LruCache;->putCount:I

    #@b
    .line 145
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    #@d
    invoke-direct {p0, p1, p2}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    iput v0, p0, Landroidx/collection/LruCache;->size:I

    #@14
    .line 146
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@16
    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_25

    #@1c
    .line 148
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    #@1e
    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@21
    move-result v2

    #@22
    sub-int/2addr v1, v2

    #@23
    iput v1, p0, Landroidx/collection/LruCache;->size:I

    #@25
    .line 150
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_32

    #@26
    if-eqz v0, :cond_2c

    #@28
    const/4 v1, 0x0

    #@29
    .line 153
    invoke-virtual {p0, v1, p1, v0, p2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@2c
    .line 156
    :cond_2c
    iget p1, p0, Landroidx/collection/LruCache;->maxSize:I

    #@2e
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    #@31
    return-object v0

    #@32
    :catchall_32
    move-exception p1

    #@33
    .line 150
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    #@34
    throw p1

    #@35
    .line 139
    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    #@37
    const-string p2, "key == null || value == null"

    #@39
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3c
    throw p1
.end method

.method public final declared-synchronized putCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 329
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_20

    #@2
    .line 205
    monitor-enter p0

    #@3
    .line 206
    :try_start_3
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_14

    #@b
    .line 208
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    #@d
    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@10
    move-result v2

    #@11
    sub-int/2addr v1, v2

    #@12
    iput v1, p0, Landroidx/collection/LruCache;->size:I

    #@14
    .line 210
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    #@15
    if-eqz v0, :cond_1c

    #@17
    const/4 v1, 0x0

    #@18
    const/4 v2, 0x0

    #@19
    .line 213
    invoke-virtual {p0, v1, p1, v0, v2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@1c
    :cond_1c
    return-object v0

    #@1d
    :catchall_1d
    move-exception p1

    #@1e
    .line 210
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    #@1f
    throw p1

    #@20
    .line 201
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    #@22
    const-string v0, "key == null"

    #@24
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@27
    throw p1
.end method

.method public resize(I)V
    .registers 3

    #@0
    if-lez p1, :cond_d

    #@2
    .line 69
    monitor-enter p0

    #@3
    .line 70
    :try_start_3
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    #@5
    .line 71
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    #@6
    .line 72
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    #@9
    return-void

    #@a
    :catchall_a
    move-exception p1

    #@b
    .line 71
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    #@c
    throw p1

    #@d
    .line 66
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string v0, "maxSize <= 0"

    #@11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw p1
.end method

.method public final declared-synchronized size()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 290
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    .line 344
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    #@3
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 7

    #@0
    monitor-enter p0

    #@1
    .line 348
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->hitCount:I

    #@3
    iget v1, p0, Landroidx/collection/LruCache;->missCount:I

    #@5
    add-int/2addr v1, v0

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_d

    #@9
    mul-int/lit8 v0, v0, 0x64

    #@b
    .line 349
    div-int/2addr v0, v1

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v0, v2

    #@e
    .line 350
    :goto_e
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@10
    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    #@12
    const/4 v4, 0x4

    #@13
    new-array v4, v4, [Ljava/lang/Object;

    #@15
    iget v5, p0, Landroidx/collection/LruCache;->maxSize:I

    #@17
    .line 351
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v5

    #@1b
    aput-object v5, v4, v2

    #@1d
    iget v2, p0, Landroidx/collection/LruCache;->hitCount:I

    #@1f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v2

    #@23
    const/4 v5, 0x1

    #@24
    aput-object v2, v4, v5

    #@26
    iget v2, p0, Landroidx/collection/LruCache;->missCount:I

    #@28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v2

    #@2c
    const/4 v5, 0x2

    #@2d
    aput-object v2, v4, v5

    #@2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v0

    #@33
    const/4 v2, 0x3

    #@34
    aput-object v0, v4, v2

    #@36
    .line 350
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@39
    move-result-object v0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    #@3a
    monitor-exit p0

    #@3b
    return-object v0

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    monitor-exit p0

    #@3e
    throw v0
.end method

.method public trimToSize(I)V
    .registers 6

    #@0
    .line 171
    :goto_0
    monitor-enter p0

    #@1
    .line 172
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    #@3
    if-ltz v0, :cond_52

    #@5
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_11

    #@d
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    #@f
    if-nez v0, :cond_52

    #@11
    .line 177
    :cond_11
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    #@13
    if-le v0, p1, :cond_50

    #@15
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@17
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1e

    #@1d
    goto :goto_50

    #@1e
    .line 181
    :cond_1e
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@20
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@23
    move-result-object v0

    #@24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v0

    #@28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/util/Map$Entry;

    #@2e
    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    .line 184
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    #@38
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 185
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    #@3d
    invoke-direct {p0, v1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@40
    move-result v3

    #@41
    sub-int/2addr v2, v3

    #@42
    iput v2, p0, Landroidx/collection/LruCache;->size:I

    #@44
    .line 186
    iget v2, p0, Landroidx/collection/LruCache;->evictionCount:I

    #@46
    const/4 v3, 0x1

    #@47
    add-int/2addr v2, v3

    #@48
    iput v2, p0, Landroidx/collection/LruCache;->evictionCount:I

    #@4a
    .line 187
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_73

    #@4b
    const/4 v2, 0x0

    #@4c
    .line 189
    invoke-virtual {p0, v3, v1, v0, v2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@4f
    goto :goto_0

    #@50
    .line 178
    :cond_50
    :goto_50
    :try_start_50
    monitor-exit p0

    #@51
    return-void

    #@52
    .line 173
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    #@54
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    const-string v1, ".sizeOf() is reporting inconsistent results!"

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@72
    throw p1

    #@73
    :catchall_73
    move-exception p1

    #@74
    .line 187
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_73

    #@75
    throw p1
.end method
