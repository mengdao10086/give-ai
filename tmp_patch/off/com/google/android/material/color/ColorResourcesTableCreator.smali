.class final Lcom/google/android/material/color/ColorResourcesTableCreator;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_ID:B = 0x1t

.field private static final ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private static final APPLICATION_PACKAGE_ID:B = 0x7ft

.field private static final COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_TYPE_PACKAGE:S = 0x200s

.field private static final HEADER_TYPE_RES_TABLE:S = 0x2s

.field private static final HEADER_TYPE_STRING_POOL:S = 0x1s

.field private static final HEADER_TYPE_TYPE:S = 0x201s

.field private static final HEADER_TYPE_TYPE_SPEC:S = 0x202s

.field private static final RESOURCE_TYPE_NAME_COLOR:Ljava/lang/String; = "color"

.field private static typeIdColor:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 56
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    #@2
    const/4 v1, 0x1

    #@3
    const-string v2, "android"

    #@5
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    #@8
    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    #@a
    .line 59
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$1;

    #@c
    invoke-direct {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;-><init>()V

    #@f
    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    #@11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$1200(C)[B
    .registers 1

    #@0
    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$1300()B
    .registers 1

    #@0
    .line 40
    sget-byte v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    #@2
    return v0
.end method

.method static synthetic access$400()Ljava/util/Comparator;
    .registers 1

    #@0
    .line 40
    sget-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method static synthetic access$500(I)[B
    .registers 1

    #@0
    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$600(S)[B
    .registers 1

    #@0
    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;)[B
    .registers 1

    #@0
    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArrayUtf8(Ljava/lang/String;)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/String;)[B
    .registers 1

    #@0
    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArray(Ljava/lang/String;)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static charToByteArray(C)[B
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [B

    #@3
    and-int/lit16 v1, p0, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    shr-int/lit8 p0, p0, 0x8

    #@b
    and-int/lit16 p0, p0, 0xff

    #@d
    int-to-byte p0, p0

    #@e
    const/4 v1, 0x1

    #@f
    aput-byte p0, v0, v1

    #@11
    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/util/Map;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 68
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_106

    #@a
    .line 71
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    #@c
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const/16 v2, 0x7f

    #@12
    invoke-direct {v0, v2, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    #@15
    .line 74
    new-instance v1, Ljava/util/HashMap;

    #@17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1a
    .line 76
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1d
    move-result-object p1

    #@1e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object p1

    #@22
    const/4 v3, 0x0

    #@23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_e4

    #@29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Ljava/util/Map$Entry;

    #@2f
    .line 77
    new-instance v4, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    #@31
    .line 79
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    check-cast v5, Ljava/lang/Integer;

    #@37
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v5

    #@3b
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3e
    move-result-object v6

    #@3f
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@42
    move-result-object v7

    #@43
    check-cast v7, Ljava/lang/Integer;

    #@45
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@48
    move-result v7

    #@49
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 81
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@50
    move-result-object v7

    #@51
    check-cast v7, Ljava/lang/Integer;

    #@53
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@56
    move-result v7

    #@57
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;-><init>(ILjava/lang/String;I)V

    #@5a
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5d
    move-result-object v5

    #@5e
    .line 84
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Ljava/lang/Integer;

    #@64
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@67
    move-result v3

    #@68
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    const-string v5, "color"

    #@6e
    .line 85
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v3

    #@72
    if-eqz v3, :cond_b7

    #@74
    .line 93
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    #@77
    move-result v3

    #@78
    const/4 v5, 0x1

    #@79
    if-ne v3, v5, :cond_7e

    #@7b
    .line 94
    sget-object v3, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    #@7d
    goto :goto_85

    #@7e
    .line 95
    :cond_7e
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    #@81
    move-result v3

    #@82
    if-ne v3, v2, :cond_9e

    #@84
    move-object v3, v0

    #@85
    .line 101
    :goto_85
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@88
    move-result v5

    #@89
    if-nez v5, :cond_93

    #@8b
    .line 102
    new-instance v5, Ljava/util/ArrayList;

    #@8d
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@90
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    .line 104
    :cond_93
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@96
    move-result-object v3

    #@97
    check-cast v3, Ljava/util/List;

    #@99
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9c
    move-object v3, v4

    #@9d
    goto :goto_23

    #@9e
    .line 98
    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@a0
    new-instance p1, Ljava/lang/StringBuilder;

    #@a2
    const-string v0, "Not supported with unknown package id: "

    #@a4
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a7
    .line 99
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    #@aa
    move-result v0

    #@ab
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object p1

    #@af
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object p1

    #@b3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b6
    throw p0

    #@b7
    .line 86
    :cond_b7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@b9
    new-instance p1, Ljava/lang/StringBuilder;

    #@bb
    const-string v0, "Non color resource found: name="

    #@bd
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c0
    .line 88
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object p1

    #@c8
    const-string v0, ", typeId="

    #@ca
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object p1

    #@ce
    .line 90
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    #@d1
    move-result v0

    #@d2
    and-int/lit16 v0, v0, 0xff

    #@d4
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d7
    move-result-object v0

    #@d8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object p1

    #@dc
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object p1

    #@e0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e3
    throw p0

    #@e4
    .line 109
    :cond_e4
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    #@e7
    move-result p0

    #@e8
    sput-byte p0, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    #@ea
    if-eqz p0, :cond_fe

    #@ec
    .line 113
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    #@ee
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@f1
    .line 114
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;

    #@f3
    invoke-direct {p1, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;-><init>(Ljava/util/Map;)V

    #@f6
    invoke-virtual {p1, p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@f9
    .line 115
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@fc
    move-result-object p0

    #@fd
    return-object p0

    #@fe
    .line 111
    :cond_fe
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@100
    const-string p1, "No color resources found for harmonization."

    #@102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@105
    throw p0

    #@106
    .line 69
    :cond_106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@108
    const-string p1, "No color resources provided for harmonization."

    #@10a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10d
    throw p0
.end method

.method private static intToByteArray(I)[B
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [B

    #@3
    and-int/lit16 v1, p0, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    shr-int/lit8 v1, p0, 0x8

    #@b
    and-int/lit16 v1, v1, 0xff

    #@d
    int-to-byte v1, v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-byte v1, v0, v2

    #@11
    shr-int/lit8 v1, p0, 0x10

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    int-to-byte v1, v1

    #@16
    const/4 v2, 0x2

    #@17
    aput-byte v1, v0, v2

    #@19
    shr-int/lit8 p0, p0, 0x18

    #@1b
    and-int/lit16 p0, p0, 0xff

    #@1d
    int-to-byte p0, p0

    #@1e
    const/4 v1, 0x3

    #@1f
    aput-byte p0, v0, v1

    #@21
    return-object v0
.end method

.method private static shortToByteArray(S)[B
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [B

    #@3
    and-int/lit16 v1, p0, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    shr-int/lit8 p0, p0, 0x8

    #@b
    and-int/lit16 p0, p0, 0xff

    #@d
    int-to-byte p0, p0

    #@e
    const/4 v1, 0x1

    #@f
    aput-byte p0, v0, v1

    #@11
    return-object v0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .registers 10

    #@0
    .line 597
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object p0

    #@4
    .line 598
    array-length v0, p0

    #@5
    mul-int/lit8 v0, v0, 0x2

    #@7
    add-int/lit8 v0, v0, 0x4

    #@9
    new-array v1, v0, [B

    #@b
    .line 599
    array-length v2, p0

    #@c
    int-to-short v2, v2

    #@d
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x0

    #@12
    .line 600
    aget-byte v4, v2, v3

    #@14
    aput-byte v4, v1, v3

    #@16
    const/4 v4, 0x1

    #@17
    .line 601
    aget-byte v2, v2, v4

    #@19
    aput-byte v2, v1, v4

    #@1b
    move v2, v3

    #@1c
    .line 602
    :goto_1c
    array-length v5, p0

    #@1d
    if-ge v2, v5, :cond_36

    #@1f
    .line 603
    aget-char v5, p0, v2

    #@21
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    #@24
    move-result-object v5

    #@25
    mul-int/lit8 v6, v2, 0x2

    #@27
    add-int/lit8 v7, v6, 0x2

    #@29
    .line 604
    aget-byte v8, v5, v3

    #@2b
    aput-byte v8, v1, v7

    #@2d
    add-int/lit8 v6, v6, 0x3

    #@2f
    .line 605
    aget-byte v5, v5, v4

    #@31
    aput-byte v5, v1, v6

    #@33
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_1c

    #@36
    :cond_36
    add-int/lit8 p0, v0, -0x2

    #@38
    .line 607
    aput-byte v3, v1, p0

    #@3a
    sub-int/2addr v0, v4

    #@3b
    .line 608
    aput-byte v3, v1, v0

    #@3d
    return-object v1
.end method

.method private static stringToByteArrayUtf8(Ljava/lang/String;)[B
    .registers 6

    #@0
    const-string v0, "UTF-8"

    #@2
    .line 613
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object p0

    #@a
    .line 614
    array-length v0, p0

    #@b
    int-to-byte v0, v0

    #@c
    .line 615
    array-length v1, p0

    #@d
    add-int/lit8 v1, v1, 0x3

    #@f
    new-array v2, v1, [B

    #@11
    const/4 v3, 0x2

    #@12
    const/4 v4, 0x0

    #@13
    .line 616
    invoke-static {p0, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    const/4 p0, 0x1

    #@17
    .line 617
    aput-byte v0, v2, p0

    #@19
    aput-byte v0, v2, v4

    #@1b
    sub-int/2addr v1, p0

    #@1c
    .line 618
    aput-byte v4, v2, v1

    #@1e
    return-object v2
.end method
