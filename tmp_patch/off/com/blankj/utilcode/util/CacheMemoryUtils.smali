.class public final Lcom/blankj/utilcode/util/CacheMemoryUtils;
.super Ljava/lang/Object;
.source "CacheMemoryUtils.java"

# interfaces
.implements Lcom/blankj/utilcode/constant/CacheConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;
    }
.end annotation


# static fields
.field private static final CACHE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_COUNT:I = 0x100


# instance fields
.field private final mCacheKey:Ljava/lang/String;

.field private final mMemoryCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 23
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->CACHE_MAP:Ljava/util/Map;

    #@7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/collection/LruCache;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mCacheKey:Ljava/lang/String;

    #@5
    .line 70
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    #@7
    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .registers 1

    #@0
    const/16 v0, 0x100

    #@2
    .line 34
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance(I)Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getInstance(I)Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .registers 2

    #@0
    .line 44
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .registers 6

    #@0
    .line 55
    sget-object v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->CACHE_MAP:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@8
    if-nez v1, :cond_27

    #@a
    .line 57
    const-class v2, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@c
    monitor-enter v2

    #@d
    .line 58
    :try_start_d
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@13
    if-nez v1, :cond_22

    #@15
    .line 60
    new-instance v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@17
    new-instance v3, Landroidx/collection/LruCache;

    #@19
    invoke-direct {v3, p1}, Landroidx/collection/LruCache;-><init>(I)V

    #@1c
    invoke-direct {v1, p0, v3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;-><init>(Ljava/lang/String;Landroidx/collection/LruCache;)V

    #@1f
    .line 61
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 63
    :cond_22
    monitor-exit v2

    #@23
    goto :goto_27

    #@24
    :catchall_24
    move-exception p0

    #@25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    #@26
    throw p0

    #@27
    :cond_27
    :goto_27
    return-object v1
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    .line 156
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    #@2
    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    #@5
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    #@0
    .line 121
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;

    #@8
    if-nez v0, :cond_b

    #@a
    return-object p2

    #@b
    .line 123
    :cond_b
    iget-wide v1, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;->dueTime:J

    #@d
    const-wide/16 v3, -0x1

    #@f
    cmp-long v1, v1, v3

    #@11
    if-eqz v1, :cond_24

    #@13
    iget-wide v1, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;->dueTime:J

    #@15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@18
    move-result-wide v3

    #@19
    cmp-long v1, v1, v3

    #@1b
    if-ltz v1, :cond_1e

    #@1d
    goto :goto_24

    #@1e
    .line 127
    :cond_1e
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    #@20
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    return-object p2

    #@24
    .line 125
    :cond_24
    :goto_24
    iget-object p1, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;->value:Ljava/lang/Object;

    #@26
    return-object p1
.end method

.method public getCacheCount()I
    .registers 2

    #@0
    .line 137
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    #@2
    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 85
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 8

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    if-gez p3, :cond_8

    #@5
    const-wide/16 v0, -0x1

    #@7
    goto :goto_10

    #@8
    .line 97
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v0

    #@c
    mul-int/lit16 p3, p3, 0x3e8

    #@e
    int-to-long v2, p3

    #@f
    add-long/2addr v0, v2

    #@10
    .line 98
    :goto_10
    iget-object p3, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    #@12
    new-instance v2, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;

    #@14
    invoke-direct {v2, v0, v1, p2}, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;-><init>(JLjava/lang/Object;)V

    #@17
    invoke-virtual {p3, p1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    #@0
    .line 147
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return-object p1

    #@c
    .line 149
    :cond_c
    iget-object p1, p1, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;->value:Ljava/lang/Object;

    #@e
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mCacheKey:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, "@"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@14
    move-result v1

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
