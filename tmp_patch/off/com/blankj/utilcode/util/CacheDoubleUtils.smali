.class public final Lcom/blankj/utilcode/util/CacheDoubleUtils;
.super Ljava/lang/Object;
.source "CacheDoubleUtils.java"

# interfaces
.implements Lcom/blankj/utilcode/constant/CacheConstants;


# static fields
.field private static final CACHE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheDoubleUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

.field private final mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 27
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->CACHE_MAP:Ljava/util/Map;

    #@7
    return-void
.end method

.method private constructor <init>(Lcom/blankj/utilcode/util/CacheMemoryUtils;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .registers 3

    #@0
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@5
    .line 66
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/CacheDoubleUtils;
    .registers 2

    #@0
    .line 38
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance()Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getInstance(Lcom/blankj/utilcode/util/CacheMemoryUtils;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lcom/blankj/utilcode/util/CacheDoubleUtils;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getInstance(Lcom/blankj/utilcode/util/CacheMemoryUtils;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lcom/blankj/utilcode/util/CacheDoubleUtils;
    .registers 6

    #@0
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "_"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 51
    sget-object v1, Lcom/blankj/utilcode/util/CacheDoubleUtils;->CACHE_MAP:Ljava/util/Map;

    #@21
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Lcom/blankj/utilcode/util/CacheDoubleUtils;

    #@27
    if-nez v2, :cond_41

    #@29
    .line 53
    const-class v3, Lcom/blankj/utilcode/util/CacheDoubleUtils;

    #@2b
    monitor-enter v3

    #@2c
    .line 54
    :try_start_2c
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/blankj/utilcode/util/CacheDoubleUtils;

    #@32
    if-nez v2, :cond_3c

    #@34
    .line 56
    new-instance v2, Lcom/blankj/utilcode/util/CacheDoubleUtils;

    #@36
    invoke-direct {v2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;-><init>(Lcom/blankj/utilcode/util/CacheMemoryUtils;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    #@39
    .line 57
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 59
    :cond_3c
    monitor-exit v3

    #@3d
    goto :goto_41

    #@3e
    :catchall_3e
    move-exception p0

    #@3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_3e

    #@40
    throw p0

    #@41
    :cond_41
    :goto_41
    return-object v2
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    .line 553
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->clear()V

    #@5
    .line 554
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->clear()Z

    #@a
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    .line 333
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Bitmap;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 335
    :cond_b
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@d
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 337
    iget-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@15
    invoke-virtual {p2, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    return-object v0

    #@19
    :cond_19
    return-object p2
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getBytes(Ljava/lang/String;[B)[B

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .registers 4

    #@0
    .line 114
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 116
    :cond_b
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@d
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBytes(Ljava/lang/String;)[B

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 118
    iget-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@15
    invoke-virtual {p2, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    return-object v0

    #@19
    :cond_19
    return-object p2
.end method

.method public getCacheDiskCount()I
    .registers 2

    #@0
    .line 527
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getCacheCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCacheDiskSize()J
    .registers 3

    #@0
    .line 518
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getCacheSize()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getCacheMemoryCount()I
    .registers 2

    #@0
    .line 536
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getCacheCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 376
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    .line 387
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 389
    :cond_b
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@d
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 391
    iget-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@15
    invoke-virtual {p2, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    return-object v0

    #@19
    :cond_19
    return-object p2
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 4

    #@0
    .line 279
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/json/JSONArray;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 281
    :cond_b
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@d
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 283
    iget-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@15
    invoke-virtual {p2, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    return-object v0

    #@19
    :cond_19
    return-object p2
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    #@0
    .line 224
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/json/JSONObject;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 226
    :cond_b
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@d
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 228
    iget-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@15
    invoke-virtual {p2, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    return-object v0

    #@19
    :cond_19
    return-object p2
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 433
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    #@0
    .line 448
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object v0

    #@9
    .line 450
    :cond_9
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    #@e
    move-result-object p2

    #@f
    if-eqz p2, :cond_17

    #@11
    .line 452
    iget-object p3, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@13
    invoke-virtual {p3, p1, p2}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@16
    return-object p2

    #@17
    :cond_17
    return-object p3
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 491
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    #@0
    .line 502
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object v0

    #@9
    .line 504
    :cond_9
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@b
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_17

    #@11
    .line 506
    iget-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@13
    invoke-virtual {p2, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@16
    return-object v0

    #@17
    :cond_17
    return-object p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 168
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 170
    :cond_b
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@d
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 172
    iget-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@15
    invoke-virtual {p2, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    return-object v0

    #@19
    :cond_19
    return-object p2
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 300
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 5

    #@0
    .line 311
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 312
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@a
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 354
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 5

    #@0
    .line 365
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 366
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    #@a
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 408
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;I)V
    .registers 5

    #@0
    .line 419
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 420
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    #@a
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 469
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .registers 5

    #@0
    .line 480
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 481
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    #@a
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 135
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Ljava/lang/String;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    #@0
    .line 146
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 147
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/lang/String;I)V

    #@a
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 246
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .registers 5

    #@0
    .line 257
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 258
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    #@a
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 189
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .registers 5

    #@0
    .line 202
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 203
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    #@a
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 81
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;[BI)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;[BI)V
    .registers 5

    #@0
    .line 92
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 93
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;[BI)V

    #@a
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 545
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->remove(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 546
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@7
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->remove(Ljava/lang/String;)Z

    #@a
    return-void
.end method
