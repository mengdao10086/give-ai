.class Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;
.super Ljava/lang/Object;
.source "CacheDiskUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;-><init>(Ljava/io/File;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

.field final synthetic val$cacheDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V
    .registers 3

    #@0
    .line 666
    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->this$0:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->val$cacheDir:Ljava/io/File;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    #@0
    .line 671
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->val$cacheDir:Ljava/io/File;

    #@2
    new-instance v1, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$1;

    #@4
    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$1;-><init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_45

    #@d
    .line 678
    array-length v1, v0

    #@e
    const/4 v2, 0x0

    #@f
    move v3, v2

    #@10
    move v4, v3

    #@11
    :goto_11
    if-ge v2, v1, :cond_32

    #@13
    aget-object v5, v0, v2

    #@15
    int-to-long v6, v3

    #@16
    .line 679
    invoke-virtual {v5}, Ljava/io/File;->length()J

    #@19
    move-result-wide v8

    #@1a
    add-long/2addr v6, v8

    #@1b
    long-to-int v3, v6

    #@1c
    add-int/lit8 v4, v4, 0x1

    #@1e
    .line 681
    iget-object v6, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->this$0:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@20
    # getter for: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;
    invoke-static {v6}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$1200(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Ljava/util/Map;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    #@27
    move-result-wide v7

    #@28
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b
    move-result-object v7

    #@2c
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_11

    #@32
    .line 683
    :cond_32
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->this$0:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@34
    # getter for: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$1300(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Ljava/util/concurrent/atomic/AtomicLong;

    #@37
    move-result-object v0

    #@38
    int-to-long v1, v3

    #@39
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    #@3c
    .line 684
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->this$0:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@3e
    # getter for: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$1400(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    #@45
    :cond_45
    return-void
.end method
