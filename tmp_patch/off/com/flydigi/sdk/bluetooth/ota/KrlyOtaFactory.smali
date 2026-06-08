.class public final Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;
.super Ljava/lang/Object;
.source "OtaFactory.kt"

# interfaces
.implements Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J$\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001d\u001a\u00020\u000b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001bH\u0002J$\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u000bH\u0016J\u0014\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0004H\u0016J\"\u0010%\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u00192\u0006\u0010&\u001a\u00020\u000bH\u0016J\u0017\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020\u001bH\u0016\u00a2\u0006\u0002\u0010*J\u0010\u0010+\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u001bH\u0016J\u0010\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u001bH\u0016J\u0010\u0010-\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u001bH\u0016J\u0010\u0010/\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u001bH\u0016J\u001a\u00100\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u0019H\u0016J(\u00101\u001a\u0012\u0012\u0004\u0012\u00020#\u0012\u0006\u0012\u0004\u0018\u00010#\u0018\u00010\u00192\u0006\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u000204H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u000bX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007\u00a8\u00065"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;",
        "Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;",
        "()V",
        "characteristic2UUID",
        "Ljava/util/UUID;",
        "characteristicUUID",
        "getCharacteristicUUID",
        "()Ljava/util/UUID;",
        "checkCallbackRequired",
        "",
        "checkDataSize",
        "",
        "descriptorUUID",
        "getDescriptorUUID",
        "otaService",
        "Landroid/bluetooth/BluetoothGattService;",
        "packetLength",
        "getPacketLength",
        "()I",
        "sendDataSize",
        "serviceUUID",
        "getServiceUUID",
        "checkCallback",
        "first",
        "checkOtaReadyCmd",
        "Lkotlin/Pair;",
        "",
        "",
        "file",
        "crc16",
        "data",
        "fillData",
        "total",
        "index",
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
.field public static final INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;

.field private static final characteristic2UUID:Ljava/util/UUID;

.field private static final characteristicUUID:Ljava/util/UUID;

.field private static checkCallbackRequired:Z

.field private static checkDataSize:I

.field private static final descriptorUUID:Ljava/util/UUID;

.field private static otaService:Landroid/bluetooth/BluetoothGattService;

.field private static final packetLength:I

.field private static sendDataSize:I

.field private static final serviceUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;

    #@2
    invoke-direct {v0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;-><init>()V

    #@5
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;

    #@7
    const-string v0, "0000FF10-0000-1000-8000-00805F9B34FB"

    #@9
    .line 388
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@c
    move-result-object v0

    #@d
    const-string v1, "fromString(\"0000FF10-0000-1000-8000-00805F9B34FB\")"

    #@f
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->serviceUUID:Ljava/util/UUID;

    #@14
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    #@16
    .line 389
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "fromString(\"00002902-0000-1000-8000-00805f9b34fb\")"

    #@1c
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1f
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->descriptorUUID:Ljava/util/UUID;

    #@21
    const-string v0, "0000FF11-0000-1000-8000-00805F9B34FB"

    #@23
    .line 390
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@26
    move-result-object v0

    #@27
    const-string v1, "fromString(\"0000FF11-0000-1000-8000-00805F9B34FB\")"

    #@29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@2c
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->characteristicUUID:Ljava/util/UUID;

    #@2e
    const-string v0, "0000FF12-0000-1000-8000-00805F9B34FB"

    #@30
    .line 391
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@33
    move-result-object v0

    #@34
    const-string v1, "fromString(\"0000FF12-0000-1000-8000-00805F9B34FB\")"

    #@36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@39
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->characteristic2UUID:Ljava/util/UUID;

    #@3b
    const/16 v0, 0x14

    #@3d
    .line 392
    sput v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->packetLength:I

    #@3f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private final crc16([B)I
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_2f

    #@3
    .line 515
    array-length v1, p1

    #@4
    move v2, v0

    #@5
    move v3, v2

    #@6
    :goto_6
    if-ge v2, v1, :cond_2e

    #@8
    aget-byte v4, p1, v2

    #@a
    move v5, v0

    #@b
    :goto_b
    const/16 v6, 0x8

    #@d
    if-ge v5, v6, :cond_2b

    #@f
    rsub-int/lit8 v6, v5, 0x7

    #@11
    shr-int v6, v4, v6

    #@13
    const/4 v7, 0x1

    #@14
    and-int/2addr v6, v7

    #@15
    if-ne v6, v7, :cond_19

    #@17
    move v6, v7

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v6, v0

    #@1a
    :goto_1a
    shr-int/lit8 v8, v3, 0xf

    #@1c
    and-int/2addr v8, v7

    #@1d
    if-ne v8, v7, :cond_20

    #@1f
    goto :goto_21

    #@20
    :cond_20
    move v7, v0

    #@21
    :goto_21
    shl-int/lit8 v3, v3, 0x1

    #@23
    xor-int/2addr v6, v7

    #@24
    if-eqz v6, :cond_28

    #@26
    xor-int/lit16 v3, v3, 0x1021

    #@28
    :cond_28
    add-int/lit8 v5, v5, 0x1

    #@2a
    goto :goto_b

    #@2b
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_6

    #@2e
    :cond_2e
    move v0, v3

    #@2f
    :cond_2f
    return v0
.end method


# virtual methods
.method public checkCallback(Ljava/util/UUID;)Z
    .registers 3

    #@0
    const-string v0, "first"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 488
    sget-boolean p1, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->checkCallbackRequired:Z

    #@7
    return p1
.end method

.method public checkOtaReadyCmd([B)Lkotlin/Pair;
    .registers 8
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
    const/16 v0, 0x8

    #@2
    new-array v1, v0, [B

    #@4
    const/4 v2, 0x0

    #@5
    aput-byte v0, v1, v2

    #@7
    const/4 v3, 0x1

    #@8
    const/16 v4, 0x50

    #@a
    aput-byte v4, v1, v3

    #@c
    const/4 v3, 0x2

    #@d
    aput-byte v2, v1, v3

    #@f
    .line 419
    invoke-direct {p0, p1}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->crc16([B)I

    #@12
    move-result v3

    #@13
    shr-int/lit8 v4, v3, 0x8

    #@15
    int-to-byte v4, v4

    #@16
    const/4 v5, 0x3

    #@17
    aput-byte v4, v1, v5

    #@19
    and-int/lit16 v3, v3, 0xff

    #@1b
    int-to-byte v3, v3

    #@1c
    const/4 v4, 0x4

    #@1d
    aput-byte v3, v1, v4

    #@1f
    if-eqz p1, :cond_23

    #@21
    .line 422
    array-length v3, p1

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v3, v2

    #@24
    :goto_24
    shr-int/lit8 v3, v3, 0x10

    #@26
    int-to-byte v3, v3

    #@27
    const/4 v4, 0x5

    #@28
    aput-byte v3, v1, v4

    #@2a
    if-eqz p1, :cond_2e

    #@2c
    .line 423
    array-length v3, p1

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    move v3, v2

    #@2f
    :goto_2f
    const v4, 0xff00

    #@32
    and-int/2addr v3, v4

    #@33
    shr-int/lit8 v0, v3, 0x8

    #@35
    int-to-byte v0, v0

    #@36
    const/4 v3, 0x6

    #@37
    aput-byte v0, v1, v3

    #@39
    if-eqz p1, :cond_3c

    #@3b
    .line 424
    array-length v2, p1

    #@3c
    :cond_3c
    and-int/lit16 p1, v2, 0xff

    #@3e
    int-to-byte p1, p1

    #@3f
    const/4 v0, 0x7

    #@40
    aput-byte p1, v1, v0

    #@42
    .line 425
    new-instance p1, Lkotlin/Pair;

    #@44
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@47
    move-result-object v0

    #@48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4f
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
    .line 460
    array-length v0, p1

    #@6
    .line 461
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getPacketLength()I

    #@9
    move-result v1

    #@a
    rem-int v1, v0, v1

    #@c
    const/4 v2, 0x1

    #@d
    if-nez v1, :cond_16

    #@f
    .line 462
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getPacketLength()I

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
    .line 464
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getPacketLength()I

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
    .line 468
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getPacketLength()I

    #@2c
    move-result v1

    #@2d
    mul-int/2addr v1, p2

    #@2e
    sub-int/2addr v0, v1

    #@2f
    goto :goto_34

    #@30
    .line 470
    :cond_30
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getPacketLength()I

    #@33
    move-result v0

    #@34
    .line 473
    :goto_34
    new-array v1, v0, [B

    #@36
    .line 474
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getPacketLength()I

    #@39
    move-result v3

    #@3a
    mul-int/2addr p2, v3

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3f
    .line 476
    sget p1, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->sendDataSize:I

    #@41
    add-int/2addr p1, v0

    #@42
    sput p1, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->sendDataSize:I

    #@44
    .line 477
    sget p2, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->checkDataSize:I

    #@46
    if-ne p1, p2, :cond_53

    #@48
    .line 478
    sput v3, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->sendDataSize:I

    #@4a
    .line 479
    sput-boolean v2, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->checkCallbackRequired:Z

    #@4c
    const-string p1, "cwq"

    #@4e
    const-string p2, "check callback"

    #@50
    .line 480
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 482
    :cond_53
    new-instance p1, Lkotlin/Pair;

    #@55
    sget-object p2, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->characteristic2UUID:Ljava/util/UUID;

    #@57
    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@5a
    return-object p1
.end method

.method public getCharacteristicUUID()Ljava/util/UUID;
    .registers 2

    #@0
    .line 390
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->characteristicUUID:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public getDescriptorUUID()Ljava/util/UUID;
    .registers 2

    #@0
    .line 389
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->descriptorUUID:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public getOtaCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 3

    #@0
    .line 412
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->otaService:Landroid/bluetooth/BluetoothGattService;

    #@2
    if-eqz v0, :cond_f

    #@4
    if-nez p1, :cond_a

    #@6
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

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
    .registers 4
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
    .line 492
    new-instance p1, Lkotlin/Pair;

    #@2
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    return-object p1
.end method

.method public getOtaResultCode([B)Ljava/lang/Byte;
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    return-object p1
.end method

.method public getPacketLength()I
    .registers 2

    #@0
    .line 392
    sget v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->packetLength:I

    #@2
    return v0
.end method

.method public getServiceUUID()Ljava/util/UUID;
    .registers 2

    #@0
    .line 388
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->serviceUUID:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public handleCharacteristic([B)Z
    .registers 10

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 v0, 0x0

    #@6
    .line 444
    aget-byte v1, p1, v0

    #@8
    const/4 v2, 0x5

    #@9
    const/4 v3, 0x3

    #@a
    const/4 v4, 0x2

    #@b
    const/16 v5, 0x8

    #@d
    const/4 v6, 0x1

    #@e
    if-ne v1, v2, :cond_28

    #@10
    .line 445
    aget-byte v2, p1, v6

    #@12
    const/16 v7, 0x51

    #@14
    if-ne v2, v7, :cond_28

    #@16
    .line 446
    aget-byte v2, p1, v4

    #@18
    if-nez v2, :cond_28

    #@1a
    .line 448
    aget-byte v0, p1, v3

    #@1c
    and-int/lit16 v0, v0, 0xff

    #@1e
    shl-int/2addr v0, v5

    #@1f
    const/4 v1, 0x4

    #@20
    aget-byte p1, p1, v1

    #@22
    and-int/lit16 p1, p1, 0xff

    #@24
    add-int/2addr v0, p1

    #@25
    sput v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->checkDataSize:I

    #@27
    goto :goto_3c

    #@28
    :cond_28
    if-ne v1, v5, :cond_3c

    #@2a
    .line 450
    aget-byte v1, p1, v6

    #@2c
    const/16 v2, 0x52

    #@2e
    if-ne v1, v2, :cond_3c

    #@30
    .line 451
    aget-byte v1, p1, v4

    #@32
    if-nez v1, :cond_3c

    #@34
    .line 453
    sput-boolean v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->checkCallbackRequired:Z

    #@36
    .line 454
    aget-byte p1, p1, v3

    #@38
    if-nez p1, :cond_3b

    #@3a
    move v0, v6

    #@3b
    :cond_3b
    return v0

    #@3c
    :cond_3c
    :goto_3c
    return v6
.end method

.method public isEndCmd([B)Z
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    return p1
.end method

.method public isOtaReady([B)Z
    .registers 6

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 429
    array-length v0, p1

    #@6
    const/4 v1, 0x1

    #@7
    const/4 v2, 0x0

    #@8
    if-nez v0, :cond_c

    #@a
    move v0, v1

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v0, v2

    #@d
    :goto_d
    xor-int/2addr v0, v1

    #@e
    if-eqz v0, :cond_28

    #@10
    .line 430
    aget-byte v0, p1, v2

    #@12
    const/4 v3, 0x4

    #@13
    if-ne v0, v3, :cond_28

    #@15
    .line 431
    aget-byte v0, p1, v1

    #@17
    const/16 v3, 0x50

    #@19
    if-ne v0, v3, :cond_28

    #@1b
    const/4 v0, 0x2

    #@1c
    .line 432
    aget-byte v0, p1, v0

    #@1e
    if-nez v0, :cond_28

    #@20
    const/4 v0, 0x3

    #@21
    .line 434
    aget-byte p1, p1, v0

    #@23
    if-nez p1, :cond_26

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v1, v2

    #@27
    :goto_27
    return v1

    #@28
    :cond_28
    return v2
.end method

.method public isOtaResultCmd([B)Z
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    return p1
.end method

.method public isOtaSuccess([B)Z
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 p1, 0x0

    #@6
    return p1
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
    .line 440
    new-instance v0, Lkotlin/Pair;

    #@2
    sget-object v1, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;

    #@4
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x3

    #@9
    new-array v2, v2, [B

    #@b
    fill-array-data v2, :array_16

    #@e
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@15
    return-object v0

    #@16
    :array_16
    .array-data 1
        0x3t
        0x51t
        0x0t
    .end array-data
.end method

.method public setupOta(ILandroid/bluetooth/BluetoothGatt;)Lkotlin/Pair;
    .registers 4
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
    .line 402
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getServiceUUID()Ljava/util/UUID;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    #@c
    move-result-object p1

    #@d
    if-eqz p1, :cond_25

    #@f
    .line 403
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;

    #@11
    sput-object p1, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->otaService:Landroid/bluetooth/BluetoothGattService;

    #@13
    .line 404
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/ota/KrlyOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@1a
    move-result-object p1

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 405
    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    #@1f
    .line 406
    new-instance p2, Lkotlin/Pair;

    #@21
    invoke-direct {p2, p1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@24
    return-object p2

    #@25
    :cond_25
    const/4 p1, 0x0

    #@26
    return-object p1
.end method
