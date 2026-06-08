.class public final Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;
.super Ljava/lang/Object;
.source "CacheMemoryStaticUtils.java"


# static fields
.field private static sDefaultCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static clear()V
    .registers 1

    #@0
    .line 93
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->clear(Lcom/blankj/utilcode/util/CacheMemoryUtils;)V

    #@7
    return-void
.end method

.method public static clear(Lcom/blankj/utilcode/util/CacheMemoryUtils;)V
    .registers 1

    #@0
    .line 182
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->clear()V

    #@3
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
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
    .line 55
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->get(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static get(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 137
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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
    .line 67
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->get(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 152
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getCacheCount()I
    .registers 1

    #@0
    .line 76
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getCacheCount(Lcom/blankj/utilcode/util/CacheMemoryUtils;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getCacheCount(Lcom/blankj/utilcode/util/CacheMemoryUtils;)I
    .registers 1

    #@0
    .line 162
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getCacheCount()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .registers 1

    #@0
    .line 186
    sget-object v0, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->sDefaultCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_9

    #@5
    :cond_5
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@8
    move-result-object v0

    #@9
    :goto_9
    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheMemoryUtils;)V

    #@7
    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4

    #@0
    .line 44
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->put(Ljava/lang/String;Ljava/lang/Object;ILcom/blankj/utilcode/util/CacheMemoryUtils;)V

    #@7
    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;ILcom/blankj/utilcode/util/CacheMemoryUtils;)V
    .registers 4

    #@0
    .line 125
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheMemoryUtils;)V
    .registers 3

    #@0
    .line 110
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public static remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 86
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->remove(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 173
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->remove(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static setDefaultCacheMemoryUtils(Lcom/blankj/utilcode/util/CacheMemoryUtils;)V
    .registers 1

    #@0
    .line 23
    sput-object p0, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->sDefaultCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    #@2
    return-void
.end method
