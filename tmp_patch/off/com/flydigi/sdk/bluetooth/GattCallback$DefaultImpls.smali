.class public final Lcom/flydigi/sdk/bluetooth/GattCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "GattCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/bluetooth/GattCallback;
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
.method public static onGattConnectFailed(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object p0

    #@e
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p0

    #@16
    const-string p1, " gatt\u8fde\u63a5\u5931\u8d25"

    #@18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@23
    return-void
.end method

.method public static onGattConnectTimeout(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object p0

    #@e
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p0

    #@16
    const-string p1, " gatt\u8fde\u63a5\u8d85\u65f6"

    #@18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@23
    return-void
.end method

.method public static onGattConnected(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object p0

    #@e
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p0

    #@16
    const-string p1, " gatt\u5df2\u8fde\u63a5"

    #@18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@23
    return-void
.end method

.method public static onGattConnecting(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object p0

    #@e
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p0

    #@16
    const-string p1, " gatt\u8fde\u63a5\u4e2d"

    #@18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@23
    return-void
.end method

.method public static onGattDisconnected(Lcom/flydigi/sdk/bluetooth/GattCallback;Landroid/bluetooth/BluetoothGatt;)V
    .registers 3

    #@0
    const-string v0, "gatt"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object p0

    #@e
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p0

    #@16
    const-string p1, " gatt\u8fde\u63a5\u5df2\u65ad\u5f00"

    #@18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@23
    return-void
.end method

.method public static onReadRemoteRssi(Lcom/flydigi/sdk/bluetooth/GattCallback;I)V
    .registers 3

    #@0
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object p0

    #@9
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    const-string v0, " \u5f53\u524d\u4fe1\u53f7\u503c\uff1a"

    #@13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@22
    return-void
.end method
