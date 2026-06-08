.class public final Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;
.super Ljava/lang/Object;
.source "OtaFactory.kt"

# interfaces
.implements Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0016J$\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016J$\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00152\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u0016J\"\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u00152\u0006\u0010 \u001a\u00020\u000cH\u0016J\u0017\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u0017H\u0016\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010&\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010\'\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010(\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010)\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u0017H\u0016J\u001a\u0010*\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u0015H\u0016J(\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0018\u00010\u00152\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020.H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006/"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;",
        "Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;",
        "()V",
        "characteristicUUID",
        "Ljava/util/UUID;",
        "getCharacteristicUUID",
        "()Ljava/util/UUID;",
        "descriptorUUID",
        "getDescriptorUUID",
        "otaService",
        "Landroid/bluetooth/BluetoothGattService;",
        "packetLength",
        "",
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
.field public static final INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;

.field private static final characteristicUUID:Ljava/util/UUID;

.field private static final descriptorUUID:Ljava/util/UUID;

.field private static otaService:Landroid/bluetooth/BluetoothGattService;

.field private static final packetLength:I

.field private static final serviceUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;

    #@2
    invoke-direct {v0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;-><init>()V

    #@5
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;

    #@7
    const-string v0, "0000fee0-0000-1000-8000-00805f9b34fb"

    #@9
    .line 300
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@c
    move-result-object v0

    #@d
    const-string v1, "fromString(\"0000fee0-0000-1000-8000-00805f9b34fb\")"

    #@f
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->serviceUUID:Ljava/util/UUID;

    #@14
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    #@16
    .line 301
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "fromString(\"00002902-0000-1000-8000-00805f9b34fb\")"

    #@1c
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1f
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->descriptorUUID:Ljava/util/UUID;

    #@21
    const-string v0, "0000fee1-0000-1000-8000-00805f9b34fb"

    #@23
    .line 302
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@26
    move-result-object v0

    #@27
    const-string v1, "fromString(\"0000fee1-0000-1000-8000-00805f9b34fb\")"

    #@29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@2c
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->characteristicUUID:Ljava/util/UUID;

    #@2e
    const/16 v0, 0x14

    #@30
    .line 303
    sput v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->packetLength:I

    #@32
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
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
    .registers 4
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
    .line 319
    new-instance p1, Lkotlin/Pair;

    #@2
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    new-array v1, v1, [B

    #@9
    fill-array-data v1, :array_14

    #@c
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13
    return-object p1

    #@14
    :array_14
    .array-data 1
        -0x1t
        0x5at
        -0x5bt
    .end array-data
.end method

.method public fillData([BI)Lkotlin/Pair;
    .registers 6
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
    .line 337
    array-length v0, p1

    #@6
    .line 338
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getPacketLength()I

    #@9
    move-result v1

    #@a
    rem-int v1, v0, v1

    #@c
    if-nez v1, :cond_15

    #@e
    .line 339
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getPacketLength()I

    #@11
    move-result v1

    #@12
    div-int v1, v0, v1

    #@14
    goto :goto_25

    #@15
    :cond_15
    int-to-float v1, v0

    #@16
    .line 341
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getPacketLength()I

    #@19
    move-result v2

    #@1a
    int-to-float v2, v2

    #@1b
    div-float/2addr v1, v2

    #@1c
    const/4 v2, 0x1

    #@1d
    int-to-float v2, v2

    #@1e
    add-float/2addr v1, v2

    #@1f
    float-to-double v1, v1

    #@20
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    #@23
    move-result-wide v1

    #@24
    double-to-int v1, v1

    #@25
    :goto_25
    add-int/lit8 v2, p2, 0x1

    #@27
    if-ne v2, v1, :cond_30

    #@29
    .line 345
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getPacketLength()I

    #@2c
    move-result v1

    #@2d
    mul-int/2addr v1, p2

    #@2e
    sub-int/2addr v0, v1

    #@2f
    goto :goto_34

    #@30
    .line 347
    :cond_30
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getPacketLength()I

    #@33
    move-result v0

    #@34
    .line 350
    :goto_34
    new-array v1, v0, [B

    #@36
    .line 351
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getPacketLength()I

    #@39
    move-result v2

    #@3a
    mul-int/2addr p2, v2

    #@3b
    const/4 v2, 0x0

    #@3c
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3f
    .line 352
    new-instance p1, Lkotlin/Pair;

    #@41
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@44
    move-result-object p2

    #@45
    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@48
    return-object p1
.end method

.method public getCharacteristicUUID()Ljava/util/UUID;
    .registers 2

    #@0
    .line 302
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->characteristicUUID:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public getDescriptorUUID()Ljava/util/UUID;
    .registers 2

    #@0
    .line 301
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->descriptorUUID:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public getOtaCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 3

    #@0
    .line 331
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->otaService:Landroid/bluetooth/BluetoothGattService;

    #@2
    if-eqz v0, :cond_11

    #@4
    if-nez p1, :cond_c

    #@6
    sget-object p1, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;

    #@8
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@b
    move-result-object p1

    #@c
    :cond_c
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@f
    move-result-object p1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    :goto_12
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
    .line 356
    new-instance p1, Lkotlin/Pair;

    #@2
    .line 357
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    new-array v1, v1, [[B

    #@9
    const/4 v2, 0x2

    #@a
    new-array v3, v2, [B

    #@c
    .line 358
    fill-array-data v3, :array_2c

    #@f
    const/4 v4, 0x0

    #@10
    aput-object v3, v1, v4

    #@12
    new-array v3, v2, [B

    #@14
    .line 359
    fill-array-data v3, :array_32

    #@17
    const/4 v4, 0x1

    #@18
    aput-object v3, v1, v4

    #@1a
    new-array v3, v2, [B

    #@1c
    .line 360
    fill-array-data v3, :array_38

    #@1f
    aput-object v3, v1, v2

    #@21
    .line 358
    check-cast v1, [Ljava/lang/Object;

    #@23
    .line 357
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    #@26
    move-result-object v1

    #@27
    .line 356
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2a
    return-object p1

    #@2b
    nop

    #@2c
    :array_2c
    .array-data 1
        0x55t
        0x55t
    .end array-data

    #@31
    nop

    #@32
    :array_32
    .array-data 1
        0x55t
        -0x56t
    .end array-data

    #@37
    nop

    #@38
    :array_38
    .array-data 1
        -0x56t
        -0x56t
    .end array-data
.end method

.method public getOtaResultCode([B)Ljava/lang/Byte;
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 382
    new-instance p1, Lkotlin/NotImplementedError;

    #@7
    const-string v0, "An operation is not implemented: Not yet implemented"

    #@9
    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method public getPacketLength()I
    .registers 2

    #@0
    .line 303
    sget v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->packetLength:I

    #@2
    return v0
.end method

.method public getServiceUUID()Ljava/util/UUID;
    .registers 2

    #@0
    .line 300
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->serviceUUID:Ljava/util/UUID;

    #@2
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
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 366
    new-instance p1, Lkotlin/NotImplementedError;

    #@7
    const-string v0, "An operation is not implemented: Not yet implemented"

    #@9
    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
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
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 374
    new-instance p1, Lkotlin/NotImplementedError;

    #@7
    const-string v0, "An operation is not implemented: Not yet implemented"

    #@9
    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method public isOtaSuccess([B)Z
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 378
    new-instance p1, Lkotlin/NotImplementedError;

    #@7
    const-string v0, "An operation is not implemented: Not yet implemented"

    #@9
    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
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
    .line 323
    new-instance v0, Lkotlin/Pair;

    #@2
    sget-object v1, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;

    #@4
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@7
    move-result-object v1

    #@8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@f
    return-object v0
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
    .line 309
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getServiceUUID()Ljava/util/UUID;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    #@c
    move-result-object p1

    #@d
    if-eqz p1, :cond_25

    #@f
    .line 310
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->INSTANCE:Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;

    #@11
    sput-object p1, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->otaService:Landroid/bluetooth/BluetoothGattService;

    #@13
    .line 311
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/ota/WchOtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@1a
    move-result-object p1

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 312
    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    #@1f
    .line 313
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
