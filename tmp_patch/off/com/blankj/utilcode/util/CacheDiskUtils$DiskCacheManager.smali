.class final Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;
.super Ljava/lang/Object;
.source "CacheDiskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiskCacheManager"
.end annotation


# instance fields
.field private final cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final cacheDir:Ljava/io/File;

.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final countLimit:I

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;

.field private final sizeLimit:J


# direct methods
.method private constructor <init>(Ljava/io/File;JI)V
    .registers 6

    #@0
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 655
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 656
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@e
    .line 661
    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheDir:Ljava/io/File;

    #@10
    .line 662
    iput-wide p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->sizeLimit:J

    #@12
    .line 663
    iput p4, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->countLimit:I

    #@14
    .line 664
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    #@16
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@19
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@1b
    .line 665
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@1d
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@20
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    .line 666
    new-instance p2, Ljava/lang/Thread;

    #@24
    new-instance p3, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;

    #@26
    invoke-direct {p3, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;-><init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V

    #@29
    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@2c
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->mThread:Ljava/lang/Thread;

    #@2e
    .line 688
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    #@31
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;JILcom/blankj/utilcode/util/CacheDiskUtils$1;)V
    .registers 6

    #@0
    .line 650
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;-><init>(Ljava/io/File;JI)V

    #@3
    return-void
.end method

.method static synthetic access$1000(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)I
    .registers 1

    #@0
    .line 650
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getCacheCount()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$1100(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Z
    .registers 1

    #@0
    .line 650
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->clear()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$1200(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Ljava/util/Map;
    .registers 1

    #@0
    .line 650
    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@2
    return-object p0
.end method

.method static synthetic access$1300(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    #@0
    .line 650
    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    return-object p0
.end method

.method static synthetic access$1400(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    #@0
    .line 650
    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    #@0
    .line 650
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getFileBeforePut(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$300(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V
    .registers 2

    #@0
    .line 650
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->updateModify(Ljava/io/File;)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V
    .registers 2

    #@0
    .line 650
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->put(Ljava/io/File;)V

    #@3
    return-void
.end method

.method static synthetic access$500(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    #@0
    .line 650
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getFileIfExists(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 650
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$900(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)J
    .registers 3

    #@0
    .line 650
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getCacheSize()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private clear()Z
    .registers 10

    #@0
    .line 755
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheDir:Ljava/io/File;

    #@2
    new-instance v1, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$2;

    #@4
    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$2;-><init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x1

    #@c
    if-eqz v0, :cond_4c

    #@e
    .line 761
    array-length v2, v0

    #@f
    if-gtz v2, :cond_12

    #@11
    goto :goto_4c

    #@12
    .line 763
    :cond_12
    array-length v2, v0

    #@13
    const/4 v3, 0x0

    #@14
    move v4, v3

    #@15
    :goto_15
    if-ge v4, v2, :cond_39

    #@17
    aget-object v5, v0, v4

    #@19
    .line 764
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@1c
    move-result v6

    #@1d
    if-nez v6, :cond_21

    #@1f
    move v1, v3

    #@20
    goto :goto_36

    #@21
    .line 768
    :cond_21
    iget-object v6, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@23
    invoke-virtual {v5}, Ljava/io/File;->length()J

    #@26
    move-result-wide v7

    #@27
    neg-long v7, v7

    #@28
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@2b
    .line 769
    iget-object v6, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2d
    const/4 v7, -0x1

    #@2e
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@31
    .line 770
    iget-object v6, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@33
    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    :goto_36
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_15

    #@39
    :cond_39
    if-eqz v1, :cond_4c

    #@3b
    .line 773
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@3d
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@40
    .line 774
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@42
    const-wide/16 v4, 0x0

    #@44
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@47
    .line 775
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@49
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@4c
    :cond_4c
    :goto_4c
    return v1
.end method

.method private getCacheCount()I
    .registers 2

    #@0
    .line 697
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->wait2InitOk()V

    #@3
    .line 698
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private getCacheNameByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "cdu_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x3

    #@9
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@18
    move-result p1

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p1

    #@21
    return-object p1
.end method

.method private getCacheSize()J
    .registers 3

    #@0
    .line 692
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->wait2InitOk()V

    #@3
    .line 693
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method private getFileBeforePut(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    #@0
    .line 702
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->wait2InitOk()V

    #@3
    .line 703
    new-instance v0, Ljava/io/File;

    #@5
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheDir:Ljava/io/File;

    #@7
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getCacheNameByKey(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object p1

    #@b
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e
    .line 704
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_24

    #@14
    .line 705
    iget-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16
    const/4 v1, -0x1

    #@17
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@1a
    .line 706
    iget-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@1c
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@1f
    move-result-wide v1

    #@20
    neg-long v1, v1

    #@21
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@24
    :cond_24
    return-object v0
.end method

.method private getFileIfExists(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    #@0
    .line 720
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheDir:Ljava/io/File;

    #@4
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getCacheNameByKey(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 721
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@e
    move-result p1

    #@f
    if-nez p1, :cond_13

    #@11
    const/4 p1, 0x0

    #@12
    return-object p1

    #@13
    :cond_13
    return-object v0
.end method

.method private put(Ljava/io/File;)V
    .registers 6

    #@0
    .line 730
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@6
    .line 731
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@8
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@b
    move-result-wide v1

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@f
    .line 732
    :goto_f
    iget-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@14
    move-result p1

    #@15
    iget v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->countLimit:I

    #@17
    if-gt p1, v0, :cond_27

    #@19
    iget-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@1b
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@1e
    move-result-wide v0

    #@1f
    iget-wide v2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->sizeLimit:J

    #@21
    cmp-long p1, v0, v2

    #@23
    if-lez p1, :cond_26

    #@25
    goto :goto_27

    #@26
    :cond_26
    return-void

    #@27
    .line 733
    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@29
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeOldest()J

    #@2c
    move-result-wide v0

    #@2d
    neg-long v0, v0

    #@2e
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@31
    .line 734
    iget-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@33
    const/4 v0, -0x1

    #@34
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@37
    goto :goto_f
.end method

.method private removeByKey(Ljava/lang/String;)Z
    .registers 6

    #@0
    .line 745
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getFileIfExists(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x1

    #@5
    if-nez p1, :cond_8

    #@7
    return v0

    #@8
    .line 747
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_10

    #@e
    const/4 p1, 0x0

    #@f
    return p1

    #@10
    .line 748
    :cond_10
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    #@12
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@15
    move-result-wide v2

    #@16
    neg-long v2, v2

    #@17
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    #@1a
    .line 749
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1c
    const/4 v2, -0x1

    #@1d
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@20
    .line 750
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@22
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    return v0
.end method

.method private removeOldest()J
    .registers 13

    #@0
    .line 786
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    const-wide/16 v1, 0x0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-wide v1

    #@b
    :cond_b
    const-wide v3, 0x7fffffffffffffffL

    #@10
    .line 787
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13
    move-result-object v0

    #@14
    .line 789
    iget-object v3, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@16
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v3

    #@1a
    .line 790
    iget-object v4, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@1c
    monitor-enter v4

    #@1d
    .line 791
    :try_start_1d
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v3

    #@21
    const/4 v5, 0x0

    #@22
    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_49

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Ljava/util/Map$Entry;

    #@2e
    .line 792
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Ljava/lang/Long;

    #@34
    .line 793
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@37
    move-result-wide v8

    #@38
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@3b
    move-result-wide v10

    #@3c
    cmp-long v8, v8, v10

    #@3e
    if-gez v8, :cond_22

    #@40
    .line 795
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Ljava/io/File;

    #@46
    move-object v5, v0

    #@47
    move-object v0, v7

    #@48
    goto :goto_22

    #@49
    .line 798
    :cond_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_5e

    #@4a
    if-nez v5, :cond_4d

    #@4c
    return-wide v1

    #@4d
    .line 800
    :cond_4d
    invoke-virtual {v5}, Ljava/io/File;->length()J

    #@50
    move-result-wide v3

    #@51
    .line 801
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_5d

    #@57
    .line 802
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@59
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    return-wide v3

    #@5d
    :cond_5d
    return-wide v1

    #@5e
    :catchall_5e
    move-exception v0

    #@5f
    .line 798
    :try_start_5f
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    #@60
    throw v0
.end method

.method private updateModify(Ljava/io/File;)V
    .registers 5

    #@0
    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v0

    #@8
    .line 740
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v1

    #@c
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    #@f
    .line 741
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->lastUsageDates:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    return-void
.end method

.method private wait2InitOk()V
    .registers 2

    #@0
    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->mThread:Ljava/lang/Thread;

    #@2
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    goto :goto_a

    #@6
    :catch_6
    move-exception v0

    #@7
    .line 715
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    #@a
    :goto_a
    return-void
.end method
