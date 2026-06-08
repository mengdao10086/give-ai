.class public final Lcom/flydigi/sdk/bluetooth/ota/OtaFactory$DefaultImpls;
.super Ljava/lang/Object;
.source "OtaFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic getOtaCharacteristic$default(Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;Ljava/util/UUID;ILjava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 4

    #@0
    if-nez p3, :cond_f

    #@2
    and-int/lit8 p2, p2, 0x1

    #@4
    if-eqz p2, :cond_a

    #@6
    .line 36
    invoke-interface {p0}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->getCharacteristicUUID()Ljava/util/UUID;

    #@9
    move-result-object p1

    #@a
    :cond_a
    invoke-interface {p0, p1}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->getOtaCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    #@11
    const-string p1, "Super calls with default arguments not supported in this target, function: getOtaCharacteristic"

    #@13
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@16
    throw p0
.end method
