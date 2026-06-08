.class public final Lcom/blankj/utilcode/util/CacheDiskUtils;
.super Ljava/lang/Object;
.source "CacheDiskUtils.java"

# interfaces
.implements Lcom/blankj/utilcode/constant/CacheConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;,
        Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;
    }
.end annotation


# static fields
.field private static final CACHE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheDiskUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_PREFIX:Ljava/lang/String; = "cdu_"

.field private static final DEFAULT_MAX_COUNT:I = 0x7fffffff

.field private static final DEFAULT_MAX_SIZE:J = 0x7fffffffffffffffL

.field private static final TYPE_BITMAP:Ljava/lang/String; = "bi_"

.field private static final TYPE_BYTE:Ljava/lang/String; = "by_"

.field private static final TYPE_DRAWABLE:Ljava/lang/String; = "dr_"

.field private static final TYPE_JSON_ARRAY:Ljava/lang/String; = "ja_"

.field private static final TYPE_JSON_OBJECT:Ljava/lang/String; = "jo_"

.field private static final TYPE_PARCELABLE:Ljava/lang/String; = "pa_"

.field private static final TYPE_SERIALIZABLE:Ljava/lang/String; = "se_"

.field private static final TYPE_STRING:Ljava/lang/String; = "st_"


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private final mCacheKey:Ljava/lang/String;

.field private mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

.field private final mMaxCount:I

.field private final mMaxSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 48
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/CacheDiskUtils;->CACHE_MAP:Ljava/util/Map;

    #@7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;JI)V
    .registers 6

    #@0
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheKey:Ljava/lang/String;

    #@5
    .line 150
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    #@7
    .line 151
    iput-wide p3, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxSize:J

    #@9
    .line 152
    iput p5, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxCount:I

    #@b
    return-void
.end method

.method private getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;
    .registers 8

    #@0
    .line 156
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1c

    #@8
    .line 157
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@a
    if-nez v0, :cond_4e

    #@c
    .line 158
    new-instance v0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@e
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    #@10
    iget-wide v3, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxSize:J

    #@12
    iget v5, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxCount:I

    #@14
    const/4 v6, 0x0

    #@15
    move-object v1, v0

    #@16
    invoke-direct/range {v1 .. v6}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;-><init>(Ljava/io/File;JILcom/blankj/utilcode/util/CacheDiskUtils$1;)V

    #@19
    iput-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@1b
    goto :goto_4e

    #@1c
    .line 161
    :cond_1c
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    #@1e
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_34

    #@24
    .line 162
    new-instance v0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@26
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    #@28
    iget-wide v3, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxSize:J

    #@2a
    iget v5, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxCount:I

    #@2c
    const/4 v6, 0x0

    #@2d
    move-object v1, v0

    #@2e
    invoke-direct/range {v1 .. v6}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;-><init>(Ljava/io/File;JILcom/blankj/utilcode/util/CacheDiskUtils$1;)V

    #@31
    iput-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@33
    goto :goto_4e

    #@34
    .line 164
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    const-string v1, "can\'t make dirs in "

    #@38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    #@3d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    const-string v1, "CacheDiskUtils"

    #@4b
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 167
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@50
    return-object v0
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 4

    #@0
    const-wide v0, 0x7fffffffffffffffL

    #@5
    const v2, 0x7fffffff

    #@8
    const-string v3, ""

    #@a
    .line 65
    invoke-static {v3, v0, v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/lang/String;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static getInstance(JI)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 4

    #@0
    const-string v0, ""

    #@2
    .line 90
    invoke-static {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/lang/String;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getInstance(Ljava/io/File;)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 4

    #@0
    const-wide v0, 0x7fffffffffffffffL

    #@5
    const v2, 0x7fffffff

    #@8
    .line 117
    invoke-static {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/io/File;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getInstance(Ljava/io/File;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 14

    #@0
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "_"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, "_"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 132
    sget-object v7, Lcom/blankj/utilcode/util/CacheDiskUtils;->CACHE_MAP:Ljava/util/Map;

    #@27
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@2d
    if-nez v1, :cond_4d

    #@2f
    .line 134
    const-class v8, Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@31
    monitor-enter v8

    #@32
    .line 135
    :try_start_32
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@38
    if-nez v1, :cond_48

    #@3a
    .line 137
    new-instance v9, Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@3c
    move-object v1, v9

    #@3d
    move-object v2, v0

    #@3e
    move-object v3, p0

    #@3f
    move-wide v4, p1

    #@40
    move v6, p3

    #@41
    invoke-direct/range {v1 .. v6}, Lcom/blankj/utilcode/util/CacheDiskUtils;-><init>(Ljava/lang/String;Ljava/io/File;JI)V

    #@44
    .line 138
    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-object v1, v9

    #@48
    .line 140
    :cond_48
    monitor-exit v8

    #@49
    goto :goto_4d

    #@4a
    :catchall_4a
    move-exception p0

    #@4b
    monitor-exit v8
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_4a

    #@4c
    throw p0

    #@4d
    :cond_4d
    :goto_4d
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 4

    #@0
    const-wide v0, 0x7fffffffffffffffL

    #@5
    const v2, 0x7fffffff

    #@8
    .line 78
    invoke-static {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/lang/String;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 6

    #@0
    .line 103
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const-string p0, "cacheUtils"

    #@8
    .line 104
    :cond_8
    new-instance v0, Ljava/io/File;

    #@a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    .line 105
    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/io/File;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    #@18
    move-result-object p0

    #@19
    return-object p0
.end method

.method private realGetBytes(Ljava/lang/String;)[B
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 234
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;[B)[B

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method private realGetBytes(Ljava/lang/String;[B)[B
    .registers 7

    #@0
    .line 238
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-object p2

    #@7
    .line 240
    :cond_7
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getFileIfExists(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$500(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Ljava/io/File;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_e

    #@d
    return-object p2

    #@e
    .line 242
    :cond_e
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->readFile2Bytes(Ljava/io/File;)[B

    #@11
    move-result-object v2

    #@12
    .line 243
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->isDue([B)Z
    invoke-static {v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->access$600([B)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1c

    #@18
    .line 244
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@1b
    return-object p2

    #@1c
    .line 247
    :cond_1c
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->updateModify(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$300(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V

    #@1f
    .line 248
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->getDataWithoutDueTime([B)[B
    invoke-static {v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->access$800([B)[B

    #@22
    move-result-object p1

    #@23
    return-object p1
.end method

.method private realPutBytes(Ljava/lang/String;[BI)V
    .registers 5

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    .line 202
    :cond_3
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_a

    #@9
    return-void

    #@a
    :cond_a
    if-ltz p3, :cond_10

    #@c
    .line 204
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->newByteArrayWithTime(I[B)[B
    invoke-static {p3, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->access$100(I[B)[B

    #@f
    move-result-object p2

    #@10
    .line 205
    :cond_10
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getFileBeforePut(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$200(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Ljava/io/File;

    #@13
    move-result-object p1

    #@14
    .line 206
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromBytes(Ljava/io/File;[B)Z

    #@17
    .line 207
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->updateModify(Ljava/io/File;)V
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$300(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V

    #@1a
    .line 208
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->put(Ljava/io/File;)V
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$400(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V

    #@1d
    return-void
.end method


# virtual methods
.method public clear()Z
    .registers 2

    #@0
    .line 645
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 647
    :cond_8
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->clear()Z
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$1100(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 431
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "bi_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    #@12
    move-result-object p1

    #@13
    if-nez p1, :cond_16

    #@15
    return-object p2

    #@16
    .line 444
    :cond_16
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    #@19
    move-result-object p1

    #@1a
    return-object p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBytes(Ljava/lang/String;[B)[B

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .registers 5

    #@0
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "by_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;[B)[B

    #@12
    move-result-object p1

    #@13
    return-object p1
.end method

.method public getCacheCount()I
    .registers 2

    #@0
    .line 615
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 617
    :cond_8
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getCacheCount()I
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$1000(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getCacheSize()J
    .registers 3

    #@0
    .line 604
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-wide/16 v0, 0x0

    #@8
    return-wide v0

    #@9
    .line 606
    :cond_9
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->getCacheSize()J
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$900(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 479
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "dr_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    #@12
    move-result-object p1

    #@13
    if-nez p1, :cond_16

    #@15
    return-object p2

    #@16
    .line 492
    :cond_16
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Drawable([B)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object p1

    #@1a
    return-object p1
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 382
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 5

    #@0
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "ja_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    #@12
    move-result-object p1

    #@13
    if-nez p1, :cond_16

    #@15
    return-object p2

    #@16
    .line 395
    :cond_16
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2JSONArray([B)Lorg/json/JSONArray;

    #@19
    move-result-object p1

    #@1a
    return-object p1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 333
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    #@0
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "jo_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    #@12
    move-result-object p1

    #@13
    if-nez p1, :cond_16

    #@15
    return-object p2

    #@16
    .line 346
    :cond_16
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2JSONObject([B)Lorg/json/JSONObject;

    #@19
    move-result-object p1

    #@1a
    return-object p1
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
    .line 530
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "pa_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    #@12
    move-result-object p1

    #@13
    if-nez p1, :cond_16

    #@15
    return-object p3

    #@16
    .line 547
    :cond_16
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Parcelable([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    return-object p1
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 582
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    #@0
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "se_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    #@12
    move-result-object p1

    #@13
    if-nez p1, :cond_16

    #@15
    return-object p2

    #@16
    .line 595
    :cond_16
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Object([B)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "st_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    #@12
    move-result-object p1

    #@13
    if-nez p1, :cond_16

    #@15
    return-object p2

    #@16
    .line 296
    :cond_16
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2String([B)Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    return-object p1
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 410
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 6

    #@0
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "bi_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    #@12
    move-result-object p2

    #@13
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    #@16
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 458
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    #@0
    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "dr_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B

    #@12
    move-result-object p2

    #@13
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    #@16
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 506
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;I)V
    .registers 6

    #@0
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "pa_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->parcelable2Bytes(Landroid/os/Parcelable;)[B

    #@12
    move-result-object p2

    #@13
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    #@16
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 561
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .registers 6

    #@0
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "se_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->serializable2Bytes(Ljava/io/Serializable;)[B

    #@12
    move-result-object p2

    #@13
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    #@16
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 262
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/lang/String;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    #@0
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "st_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->string2Bytes(Ljava/lang/String;)[B

    #@12
    move-result-object p2

    #@13
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    #@16
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 361
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .registers 6

    #@0
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "ja_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->jsonArray2Bytes(Lorg/json/JSONArray;)[B

    #@12
    move-result-object p2

    #@13
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    #@16
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 310
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .registers 6

    #@0
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "jo_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->jsonObject2Bytes(Lorg/json/JSONObject;)[B

    #@12
    move-result-object p2

    #@13
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    #@16
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    .line 186
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;[BI)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;[BI)V
    .registers 6

    #@0
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "by_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    #@12
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 6

    #@0
    .line 627
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 629
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    const-string v3, "by_"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_b1

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    const-string v3, "st_"

    #@21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 630
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_b1

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    const-string v3, "jo_"

    #@36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 631
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_b1

    #@47
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    const-string v3, "ja_"

    #@4b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 632
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_b1

    #@5c
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    const-string v3, "bi_"

    #@60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .line 633
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_b1

    #@71
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    const-string v3, "dr_"

    #@75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    .line 634
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@83
    move-result v2

    #@84
    if-eqz v2, :cond_b1

    #@86
    new-instance v2, Ljava/lang/StringBuilder;

    #@88
    const-string v3, "pa_"

    #@8a
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    .line 635
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_b1

    #@9b
    new-instance v2, Ljava/lang/StringBuilder;

    #@9d
    const-string v3, "se_"

    #@9f
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object p1

    #@a6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object p1

    #@aa
    .line 636
    # invokes: Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->removeByKey(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    #@ad
    move-result p1

    #@ae
    if-eqz p1, :cond_b1

    #@b0
    goto :goto_b2

    #@b1
    :cond_b1
    const/4 v1, 0x0

    #@b2
    :goto_b2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheKey:Ljava/lang/String;

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
