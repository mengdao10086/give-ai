.class public final Lcom/flydigi/sdk/waspwing/WaspWingGattCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "WaspWingGattCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;
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
.method public static onGattConnectFailed(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 9
    check-cast p0, Lcom/flydigi/sdk/bluetooth/GattCallback;

    #@7
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/GattCallback$DefaultImpls;->onGattConnectFailed(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@a
    return-void
.end method

.method public static onGattConnectTimeout(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 9
    check-cast p0, Lcom/flydigi/sdk/bluetooth/GattCallback;

    #@7
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/GattCallback$DefaultImpls;->onGattConnectTimeout(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@a
    return-void
.end method

.method public static onGattConnected(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 9
    check-cast p0, Lcom/flydigi/sdk/bluetooth/GattCallback;

    #@7
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/GattCallback$DefaultImpls;->onGattConnected(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@a
    return-void
.end method

.method public static onGattConnecting(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 9
    check-cast p0, Lcom/flydigi/sdk/bluetooth/GattCallback;

    #@7
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/GattCallback$DefaultImpls;->onGattConnecting(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothDevice;)V

    #@a
    return-void
.end method

.method public static onGattDisconnected(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;Landroid/bluetooth/BluetoothGatt;)V
    .registers 3

    #@0
    const-string v0, "gatt"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 9
    check-cast p0, Lcom/flydigi/sdk/bluetooth/GattCallback;

    #@7
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/GattCallback$DefaultImpls;->onGattDisconnected(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothGatt;)V

    #@a
    return-void
.end method

.method public static onReadRemoteRssi(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;I)V
    .registers 2

    #@0
    .line 9
    check-cast p0, Lcom/flydigi/sdk/bluetooth/GattCallback;

    #@2
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/GattCallback$DefaultImpls;->onReadRemoteRssi(Lcom/flydigi/sdk/bluetooth/GattCallback;I)V

    #@5
    return-void
.end method

.method public static onTempHistoryUpdate(Lcom/flydigi/sdk/waspwing/WaspWingGattCallback;[B)V
    .registers 2

    #@0
    const-string p0, "tempHistory"

    #@2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    return-void
.end method
