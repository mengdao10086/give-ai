.class public final Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;
.super Ljava/lang/Object;
.source "OtaFactory.kt"

# interfaces
.implements Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001<B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\tH\u0016J$\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016J\u001c\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u00042\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u001bH\u0002J\u0018\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u0004H\u0002J$\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010&\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\u0004H\u0016J\u0018\u0010(\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\u0004H\u0002J\u0014\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0010+\u001a\u0004\u0018\u00010\tH\u0016J\"\u0010,\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u00192\u0006\u0010-\u001a\u00020\u0004H\u0016J\u0017\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020\u001bH\u0016\u00a2\u0006\u0002\u00101J\u0010\u00102\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u001bH\u0016J\u0010\u00103\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u001bH\u0016J\u0010\u00104\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u001bH\u0016J\u0010\u00105\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u001bH\u0016J\u0010\u00106\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u001bH\u0016J\u001a\u00107\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u0019H\u0016J&\u00108\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020*\u0018\u00010\u00192\u0006\u00109\u001a\u00020\u00042\u0006\u0010:\u001a\u00020;H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000b\u00a8\u0006="
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;",
        "Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;",
        "()V",
        "CMD_OTA_END",
        "",
        "CMD_OTA_RESULT",
        "CMD_OTA_START",
        "OTA_RESULT_OTA_SUCCESS",
        "characteristicUUID",
        "Ljava/util/UUID;",
        "getCharacteristicUUID",
        "()Ljava/util/UUID;",
        "descriptorUUID",
        "getDescriptorUUID",
        "otaService",
        "Landroid/bluetooth/BluetoothGattService;",
        "packetLength",
        "getPacketLength",
        "()I",
        "serviceUUID",
        "getServiceUUID",
        "checkCallback",
        "",
        "first",
        "checkOtaReadyCmd",
        "Lkotlin/Pair;",
        "",
        "",
        "file",
        "convertCmd",
        "opcode",
        "data",
        "crc16",
        "packet",
        "fillCrc",
        "",
        "crc",
        "fillData",
        "total",
        "index",
        "fillIndex",
        "getOtaCharacteristic",
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        "uuid",
        "getOtaEndCmd",
        "idx",
        "getOtaResultCode",
        "",
        "value",
        "([B)Ljava/lang/Byte;",
        "handleCharacteristic",
        "isEndCmd",
        "isOtaReady",
        "isOtaResultCmd",
        "isOtaSuccess",
        "requestOtaDataCheckSize",
        "setupOta",
        "chipType",
        "gatt",
        "Landroid/bluetooth/BluetoothGatt;",
        "OtaResult",
        "bluetooth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CMD_OTA_END:I = 0xff02

.field private static final CMD_OTA_RESULT:I = 0xff06

.field private static final CMD_OTA_START:I = 0xff01

.field public static final INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;

.field private static final OTA_RESULT_OTA_SUCCESS:I

.field private static otaService:Landroid/bluetooth/BluetoothGattService;

.field private static final packetLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;

    #@2
    invoke-direct {v0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;-><init>()V

    #@5
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;

    #@7
    const/16 v0, 0x10

    #@9
    .line 60
    sput v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->packetLength:I

    #@b
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private final convertCmd(I[B)[B
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x2

    #@3
    if-nez p2, :cond_14

    #@5
    new-array p2, v2, [B

    #@7
    and-int/lit16 v2, p1, 0xff

    #@9
    int-to-byte v2, v2

    #@a
    aput-byte v2, p2, v1

    #@c
    shr-int/lit8 p1, p1, 0x8

    #@e
    and-int/lit16 p1, p1, 0xff

    #@10
    int-to-byte p1, p1

    #@11
    aput-byte p1, p2, v0

    #@13
    goto :goto_29

    #@14
    .line 287
    :cond_14
    array-length v3, p2

    #@15
    add-int/2addr v3, v2

    #@16
    new-array v3, v3, [B

    #@18
    and-int/lit16 v4, p1, 0xff

    #@1a
    int-to-byte v4, v4

    #@1b
    .line 288
    aput-byte v4, v3, v1

    #@1d
    shr-int/lit8 p1, p1, 0x8

    #@1f
    and-int/lit16 p1, p1, 0xff

    #@21
    int-to-byte p1, p1

    #@22
    .line 289
    aput-byte p1, v3, v0

    #@24
    .line 290
    array-length p1, p2

    #@25
    invoke-static {p2, v1, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    move-object p2, v3

    #@29
    :goto_29
    return-object p2
.end method

.method static synthetic convertCmd$default(Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;I[BILjava/lang/Object;)[B
    .registers 5

    #@0
    and-int/lit8 p3, p3, 0x2

    #@2
    if-eqz p3, :cond_5

    #@4
    const/4 p2, 0x0

    #@5
    .line 282
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->convertCmd(I[B)[B

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method private final crc16([B)I
    .registers 11

    #@0
    .line 268
    array-length v0, p1

    #@1
    const/4 v1, 0x2

    #@2
    sub-int/2addr v0, v1

    #@3
    new-array v1, v1, [S

    #@5
    .line 269
    fill-array-data v1, :array_2a

    #@8
    const v2, 0xffff

    #@b
    const/4 v3, 0x0

    #@c
    move v5, v2

    #@d
    move v4, v3

    #@e
    :goto_e
    if-ge v4, v0, :cond_28

    #@10
    .line 273
    aget-byte v6, p1, v4

    #@12
    move v7, v3

    #@13
    :goto_13
    const/16 v8, 0x8

    #@15
    if-ge v7, v8, :cond_25

    #@17
    shr-int/lit8 v8, v5, 0x1

    #@19
    xor-int/2addr v5, v6

    #@1a
    and-int/lit8 v5, v5, 0x1

    #@1c
    .line 275
    aget-short v5, v1, v5

    #@1e
    and-int/2addr v5, v2

    #@1f
    xor-int/2addr v5, v8

    #@20
    shr-int/lit8 v6, v6, 0x1

    #@22
    add-int/lit8 v7, v7, 0x1

    #@24
    goto :goto_13

    #@25
    :cond_25
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_e

    #@28
    :cond_28
    return v5

    #@29
    nop

    #@2a
    :array_2a
    .array-data 2
        0x0s
        -0x5fffs
    .end array-data
.end method

.method private final fillCrc([BI)V
    .registers 6

    #@0
    .line 262
    array-length v0, p1

    #@1
    add-int/lit8 v0, v0, -0x2

    #@3
    add-int/lit8 v1, v0, 0x1

    #@5
    and-int/lit16 v2, p2, 0xff

    #@7
    int-to-byte v2, v2

    #@8
    .line 263
    aput-byte v2, p1, v0

    #@a
    shr-int/lit8 p2, p2, 0x8

    #@c
    and-int/lit16 p2, p2, 0xff

    #@e
    int-to-byte p2, p2

    #@f
    .line 264
    aput-byte p2, p1, v1

    #@11
    return-void
.end method

.method private final fillIndex([BI)V
    .registers 5

    #@0
    and-int/lit16 v0, p2, 0xff

    #@2
    int-to-byte v0, v0

    #@3
    const/4 v1, 0x0

    #@4
    .line 257
    aput-byte v0, p1, v1

    #@6
    shr-int/lit8 p2, p2, 0x8

    #@8
    and-int/lit16 p2, p2, 0xff

    #@a
    int-to-byte p2, p2

    #@b
    const/4 v0, 0x1

    #@c
    .line 258
    aput-byte p2, p1, v0

    #@e
    return-void
.end method


# virtual methods
.method public checkCallback(Ljava/util/UUID;)Z
    .registers 3

    #@0
    const-string v0, "first"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    return p1
.end method

.method public checkOtaReadyCmd([B)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lkotlin/Pair<",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    #@0
    .line 164
    new-instance p1, Lkotlin/Pair;

    #@2
    .line 165
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x2

    #@8
    const v3, 0xff01

    #@b
    .line 170
    invoke-static {p0, v3, v1, v2, v1}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->convertCmd$default(Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;I[BILjava/lang/Object;)[B

    #@e
    move-result-object v1

    #@f
    .line 165
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    .line 164
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@16
    return-object p1
.end method

.method public fillData([BI)Lkotlin/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lkotlin/Pair<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    #@0
    const-string v0, "total"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 231
    array-length v0, p1

    #@6
    .line 232
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getPacketLength()I

    #@9
    move-result v1

    #@a
    rem-int v1, v0, v1

    #@c
    const/4 v2, 0x1

    #@d
    if-nez v1, :cond_16

    #@f
    .line 233
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getPacketLength()I

    #@12
    move-result v1

    #@13
    div-int v1, v0, v1

    #@15
    goto :goto_25

    #@16
    :cond_16
    int-to-float v1, v0

    #@17
    .line 235
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getPacketLength()I

    #@1a
    move-result v3

    #@1b
    int-to-float v3, v3

    #@1c
    div-float/2addr v1, v3

    #@1d
    int-to-float v3, v2

    #@1e
    add-float/2addr v1, v3

    #@1f
    float-to-double v3, v1

    #@20
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    #@23
    move-result-wide v3

    #@24
    double-to-int v1, v3

    #@25
    :goto_25
    add-int/lit8 v3, p2, 0x1

    #@27
    if-ne v3, v1, :cond_30

    #@29
    .line 238
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getPacketLength()I

    #@2c
    move-result v1

    #@2d
    mul-int/2addr v1, p2

    #@2e
    sub-int/2addr v0, v1

    #@2f
    goto :goto_34

    #@30
    .line 240
    :cond_30
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getPacketLength()I

    #@33
    move-result v0

    #@34
    .line 242
    :goto_34
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getPacketLength()I

    #@37
    move-result v1

    #@38
    if-ne v0, v1, :cond_41

    #@3a
    .line 243
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getPacketLength()I

    #@3d
    move-result v1

    #@3e
    :goto_3e
    add-int/lit8 v1, v1, 0x4

    #@40
    goto :goto_4d

    #@41
    .line 245
    :cond_41
    rem-int/lit8 v1, v0, 0x10

    #@43
    if-nez v1, :cond_47

    #@45
    move v1, v0

    #@46
    goto :goto_3e

    #@47
    :cond_47
    div-int/lit8 v1, v0, 0x10

    #@49
    add-int/2addr v1, v2

    #@4a
    mul-int/lit8 v1, v1, 0x10

    #@4c
    goto :goto_3e

    #@4d
    .line 247
    :goto_4d
    new-array v2, v1, [B

    #@4f
    const/4 v3, 0x0

    #@50
    :goto_50
    if-ge v3, v1, :cond_58

    #@52
    const/4 v4, -0x1

    #@53
    aput-byte v4, v2, v3

    #@55
    add-int/lit8 v3, v3, 0x1

    #@57
    goto :goto_50

    #@58
    .line 248
    :cond_58
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getPacketLength()I

    #@5b
    move-result v1

    #@5c
    mul-int/2addr v1, p2

    #@5d
    const/4 v3, 0x2

    #@5e
    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@61
    .line 249
    invoke-direct {p0, v2, p2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->fillIndex([BI)V

    #@64
    .line 250
    invoke-direct {p0, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->crc16([B)I

    #@67
    move-result p1

    #@68
    .line 251
    invoke-direct {p0, v2, p1}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->fillCrc([BI)V

    #@6b
    .line 252
    new-instance p1, Lkotlin/Pair;

    #@6d
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@70
    move-result-object p2

    #@71
    invoke-direct {p1, p2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@74
    return-object p1
.end method

.method public getCharacteristicUUID()Ljava/util/UUID;
    .registers 3

    #@0
    const-string v0, "00010203-0405-0607-0809-0a0b0c0d2b12"

    #@2
    .line 58
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@5
    move-result-object v0

    #@6
    const-string v1, "fromString(\"00010203-0405-0607-0809-0a0b0c0d2b12\")"

    #@8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public getDescriptorUUID()Ljava/util/UUID;
    .registers 3

    #@0
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    #@2
    .line 56
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@5
    move-result-object v0

    #@6
    const-string v1, "fromString(\"00002902-0000-1000-8000-00805f9b34fb\")"

    #@8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public getOtaCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 3

    #@0
    .line 201
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->otaService:Landroid/bluetooth/BluetoothGattService;

    #@2
    if-eqz v0, :cond_f

    #@4
    if-nez p1, :cond_a

    #@6
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@9
    move-result-object p1

    #@a
    :cond_a
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@d
    move-result-object p1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    :goto_10
    return-object p1
.end method

.method public getOtaEndCmd(I)Lkotlin/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    #@0
    .line 214
    new-instance v0, Lkotlin/Pair;

    #@2
    .line 215
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x4

    #@7
    new-array v2, v2, [B

    #@9
    and-int/lit16 v3, p1, 0xff

    #@b
    int-to-byte v3, v3

    #@c
    const/4 v4, 0x0

    #@d
    aput-byte v3, v2, v4

    #@f
    shr-int/lit8 v3, p1, 0x8

    #@11
    and-int/lit16 v3, v3, 0xff

    #@13
    int-to-byte v3, v3

    #@14
    const/4 v4, 0x1

    #@15
    aput-byte v3, v2, v4

    #@17
    not-int p1, p1

    #@18
    and-int/lit16 v3, p1, 0xff

    #@1a
    int-to-byte v3, v3

    #@1b
    const/4 v4, 0x2

    #@1c
    aput-byte v3, v2, v4

    #@1e
    shr-int/lit8 p1, p1, 0x8

    #@20
    and-int/lit16 p1, p1, 0xff

    #@22
    int-to-byte p1, p1

    #@23
    const/4 v3, 0x3

    #@24
    aput-byte p1, v2, v3

    #@26
    const p1, 0xff02

    #@29
    .line 217
    invoke-direct {p0, p1, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->convertCmd(I[B)[B

    #@2c
    move-result-object p1

    #@2d
    .line 216
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@30
    move-result-object p1

    #@31
    .line 214
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@34
    return-object v0
.end method

.method public getOtaResultCode([B)Ljava/lang/Byte;
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 207
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->isOtaResultCmd([B)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_13

    #@b
    const/4 v0, 0x2

    #@c
    .line 208
    aget-byte p1, p1, v0

    #@e
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@11
    move-result-object p1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    :goto_14
    return-object p1
.end method

.method public getPacketLength()I
    .registers 2

    #@0
    .line 60
    sget v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->packetLength:I

    #@2
    return v0
.end method

.method public getServiceUUID()Ljava/util/UUID;
    .registers 3

    #@0
    const-string v0, "00010203-0405-0607-0809-0a0b0c0d1912"

    #@2
    .line 54
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@5
    move-result-object v0

    #@6
    const-string v1, "fromString(\"00010203-0405-0607-0809-0a0b0c0d1912\")"

    #@8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public handleCharacteristic([B)Z
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x1

    #@6
    return p1
.end method

.method public isEndCmd([B)Z
    .registers 5

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 180
    array-length v0, p1

    #@6
    const/4 v1, 0x6

    #@7
    const/4 v2, 0x0

    #@8
    if-ne v0, v1, :cond_16

    #@a
    .line 181
    aget-byte v0, p1, v2

    #@c
    const/4 v1, 0x2

    #@d
    if-ne v0, v1, :cond_16

    #@f
    const/4 v0, 0x1

    #@10
    .line 182
    aget-byte p1, p1, v0

    #@12
    const/4 v1, -0x1

    #@13
    if-ne p1, v1, :cond_16

    #@15
    move v2, v0

    #@16
    :cond_16
    return v2
.end method

.method public isOtaReady([B)Z
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x1

    #@6
    return p1
.end method

.method public isOtaResultCmd([B)Z
    .registers 5

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 186
    array-length v0, p1

    #@6
    const/4 v1, 0x4

    #@7
    const/4 v2, 0x0

    #@8
    if-ne v0, v1, :cond_16

    #@a
    .line 187
    aget-byte v0, p1, v2

    #@c
    const/4 v1, 0x6

    #@d
    if-ne v0, v1, :cond_16

    #@f
    const/4 v0, 0x1

    #@10
    .line 188
    aget-byte p1, p1, v0

    #@12
    const/4 v1, -0x1

    #@13
    if-ne p1, v1, :cond_16

    #@15
    move v2, v0

    #@16
    :cond_16
    return v2
.end method

.method public isOtaSuccess([B)Z
    .registers 4

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 203
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->isOtaResultCmd([B)Z

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    if-eqz v0, :cond_12

    #@c
    const/4 v0, 0x2

    #@d
    .line 204
    aget-byte p1, p1, v0

    #@f
    if-nez p1, :cond_12

    #@11
    const/4 v1, 0x1

    #@12
    :cond_12
    return v1
.end method

.method public requestOtaDataCheckSize()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    #@0
    .line 193
    new-instance v0, Lkotlin/Pair;

    #@2
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@5
    move-result-object v1

    #@6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    return-object v0
.end method

.method public setupOta(ILandroid/bluetooth/BluetoothGatt;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    #@0
    const-string p1, "gatt"

    #@2
    .line 149
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getServiceUUID()Ljava/util/UUID;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    #@c
    move-result-object p1

    #@d
    if-eqz p1, :cond_40

    #@f
    .line 150
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;

    #@11
    sput-object p1, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->otaService:Landroid/bluetooth/BluetoothGattService;

    #@13
    .line 151
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@1a
    move-result-object p1

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 152
    invoke-virtual {p2, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    #@1f
    .line 154
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getDescriptorUUID()Ljava/util/UUID;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    #@26
    move-result-object v0

    #@27
    if-eqz v0, :cond_3a

    #@29
    const-string v1, "getDescriptor(descriptorUUID)"

    #@2b
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@2e
    const/4 v1, 0x2

    #@2f
    new-array v1, v1, [B

    #@31
    .line 155
    fill-array-data v1, :array_42

    #@34
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    #@37
    .line 156
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    #@3a
    .line 158
    :cond_3a
    new-instance p2, Lkotlin/Pair;

    #@3c
    invoke-direct {p2, p1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3f
    return-object p2

    #@40
    :cond_40
    const/4 p1, 0x0

    #@41
    return-object p1

    #@42
    :array_42
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method
