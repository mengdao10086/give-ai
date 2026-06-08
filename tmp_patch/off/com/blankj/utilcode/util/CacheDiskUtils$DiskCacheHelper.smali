.class final Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;
.super Ljava/lang/Object;
.source "CacheDiskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiskCacheHelper"
.end annotation


# static fields
.field static final TIME_INFO_LEN:I = 0xe


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$100(I[B)[B
    .registers 2

    #@0
    .line 809
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->newByteArrayWithTime(I[B)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$600([B)Z
    .registers 1

    #@0
    .line 809
    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->isDue([B)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$800([B)[B
    .registers 1

    #@0
    .line 809
    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->getDataWithoutDueTime([B)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static copyOfRange([BII)[B
    .registers 5

    #@0
    sub-int v0, p2, p1

    #@2
    if-ltz v0, :cond_11

    #@4
    .line 861
    new-array p2, v0, [B

    #@6
    .line 862
    array-length v1, p0

    #@7
    sub-int/2addr v1, p1

    #@8
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    return-object p2

    #@11
    .line 860
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v0, " > "

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw p0
.end method

.method private static createDueTime(I)Ljava/lang/String;
    .registers 7

    #@0
    .line 829
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    .line 830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a
    move-result-wide v2

    #@b
    const-wide/16 v4, 0x3e8

    #@d
    div-long/2addr v2, v4

    #@e
    int-to-long v4, p0

    #@f
    add-long/2addr v2, v4

    #@10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13
    move-result-object p0

    #@14
    const/4 v2, 0x0

    #@15
    aput-object p0, v1, v2

    #@17
    const-string p0, "_$%010d$_"

    #@19
    .line 828
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0
.end method

.method private static getDataWithoutDueTime([B)[B
    .registers 3

    #@0
    .line 852
    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->hasTimeInfo([B)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    const/16 v0, 0xe

    #@8
    .line 853
    array-length v1, p0

    #@9
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->copyOfRange([BII)[B

    #@c
    move-result-object p0

    #@d
    :cond_d
    return-object p0
.end method

.method private static getDueTime([B)J
    .registers 6

    #@0
    .line 840
    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->hasTimeInfo([B)Z

    #@3
    move-result v0

    #@4
    const-wide/16 v1, -0x1

    #@6
    if-eqz v0, :cond_1c

    #@8
    .line 841
    new-instance v0, Ljava/lang/String;

    #@a
    const/4 v3, 0x2

    #@b
    const/16 v4, 0xc

    #@d
    invoke-static {p0, v3, v4}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->copyOfRange([BII)[B

    #@10
    move-result-object p0

    #@11
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    #@14
    .line 843
    :try_start_14
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@17
    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_18} :catch_1c

    #@18
    const-wide/16 v2, 0x3e8

    #@1a
    mul-long/2addr v0, v2

    #@1b
    return-wide v0

    #@1c
    :catch_1c
    :cond_1c
    return-wide v1
.end method

.method private static hasTimeInfo([B)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_22

    #@3
    .line 867
    array-length v1, p0

    #@4
    const/16 v2, 0xe

    #@6
    if-lt v1, v2, :cond_22

    #@8
    aget-byte v1, p0, v0

    #@a
    const/16 v2, 0x5f

    #@c
    if-ne v1, v2, :cond_22

    #@e
    const/4 v1, 0x1

    #@f
    aget-byte v3, p0, v1

    #@11
    const/16 v4, 0x24

    #@13
    if-ne v3, v4, :cond_22

    #@15
    const/16 v3, 0xc

    #@17
    aget-byte v3, p0, v3

    #@19
    if-ne v3, v4, :cond_22

    #@1b
    const/16 v3, 0xd

    #@1d
    aget-byte p0, p0, v3

    #@1f
    if-ne p0, v2, :cond_22

    #@21
    move v0, v1

    #@22
    :cond_22
    return v0
.end method

.method private static isDue([B)Z
    .registers 5

    #@0
    .line 835
    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->getDueTime([B)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, -0x1

    #@6
    cmp-long p0, v0, v2

    #@8
    if-eqz p0, :cond_14

    #@a
    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v2

    #@e
    cmp-long p0, v2, v0

    #@10
    if-lez p0, :cond_14

    #@12
    const/4 p0, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p0, 0x0

    #@15
    :goto_15
    return p0
.end method

.method private static newByteArrayWithTime(I[B)[B
    .registers 5

    #@0
    .line 814
    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->createDueTime(I)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@7
    move-result-object p0

    #@8
    .line 815
    array-length v0, p0

    #@9
    array-length v1, p1

    #@a
    add-int/2addr v0, v1

    #@b
    new-array v0, v0, [B

    #@d
    .line 816
    array-length v1, p0

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 817
    array-length p0, p0

    #@13
    array-length v1, p1

    #@14
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    return-object v0
.end method
