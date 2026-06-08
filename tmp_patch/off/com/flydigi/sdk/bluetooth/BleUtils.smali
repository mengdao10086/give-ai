.class public final Lcom/flydigi/sdk/bluetooth/BleUtils;
.super Ljava/lang/Object;
.source "BleUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BleUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static readDeviceNameFromScanRecord([B)Ljava/lang/String;
    .registers 10

    #@0
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    if-eqz p0, :cond_89

    #@8
    .line 24
    :try_start_8
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@b
    move-result-object p0

    #@c
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@e
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@11
    move-result-object p0

    #@12
    .line 25
    :cond_12
    :goto_12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@15
    move-result v2

    #@16
    const/4 v3, 0x2

    #@17
    if-le v2, v3, :cond_89

    #@19
    .line 26
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_20

    #@1f
    goto :goto_89

    #@20
    .line 29
    :cond_20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@23
    move-result v4

    #@24
    const/4 v5, 0x1

    #@25
    if-eq v4, v3, :cond_66

    #@27
    const/4 v6, 0x3

    #@28
    if-eq v4, v6, :cond_66

    #@2a
    const/4 v3, 0x6

    #@2b
    if-eq v4, v3, :cond_4e

    #@2d
    const/4 v3, 0x7

    #@2e
    if-eq v4, v3, :cond_4e

    #@30
    const/16 v3, 0x9

    #@32
    if-eq v4, v3, :cond_3e

    #@34
    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@37
    move-result v3

    #@38
    add-int/2addr v3, v2

    #@39
    sub-int/2addr v3, v5

    #@3a
    .line 58
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@3d
    goto :goto_12

    #@3e
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    #@40
    .line 52
    new-array v1, v2, [B

    #@42
    .line 53
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@45
    .line 54
    new-instance v2, Ljava/lang/String;

    #@47
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@49
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@4c
    move-object v1, v2

    #@4d
    goto :goto_12

    #@4e
    :cond_4e
    :goto_4e
    const/16 v3, 0x10

    #@50
    if-lt v2, v3, :cond_12

    #@52
    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    #@55
    move-result-wide v3

    #@56
    .line 46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    #@59
    move-result-wide v5

    #@5a
    .line 47
    new-instance v7, Ljava/util/UUID;

    #@5c
    invoke-direct {v7, v5, v6, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    #@5f
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    add-int/lit8 v2, v2, -0x10

    #@64
    int-to-byte v2, v2

    #@65
    goto :goto_4e

    #@66
    :cond_66
    :goto_66
    if-lt v2, v3, :cond_12

    #@68
    const-string v4, "%08x-0000-1000-8000-00805f9b34fb"

    #@6a
    new-array v6, v5, [Ljava/lang/Object;

    #@6c
    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@6f
    move-result v7

    #@70
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@73
    move-result-object v7

    #@74
    const/4 v8, 0x0

    #@75
    aput-object v7, v6, v8

    #@77
    .line 36
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    .line 35
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@7e
    move-result-object v4

    #@7f
    .line 34
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_82} :catch_86

    #@82
    add-int/lit8 v2, v2, -0x2

    #@84
    int-to-byte v2, v2

    #@85
    goto :goto_66

    #@86
    :catch_86
    const-string p0, ""

    #@88
    goto :goto_8a

    #@89
    :cond_89
    :goto_89
    move-object p0, v1

    #@8a
    :goto_8a
    return-object p0
.end method
