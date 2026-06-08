.class public final Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "BluetoothCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothCallback.kt\ncom/flydigi/sdk/bluetooth/ScanDeviceCallback$DefaultImpls\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1855#2,2:130\n*S KotlinDebug\n*F\n+ 1 BluetoothCallback.kt\ncom/flydigi/sdk/bluetooth/ScanDeviceCallback$DefaultImpls\n*L\n45#1:130,2\n*E\n"
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
.method public static onDeviceFound(Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;",
            "Ljava/util/List<",
            "Lcom/flydigi/sdk/bluetooth/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string p0, "devices"

    #@2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 45
    check-cast p1, Ljava/lang/Iterable;

    #@7
    .line 130
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object p0

    #@b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result p1

    #@f
    if-eqz p1, :cond_52

    #@11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@17
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    const-string v1, "\u626b\u5230\u8bbe\u5907\uff1a"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const/16 v1, 0x28

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    const-string v1, "),\u4fe1\u53f7\u5f3a\u5ea6\uff1a"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->getRssi()I

    #@45
    move-result p1

    #@46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object p1

    #@4e
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@51
    goto :goto_b

    #@52
    :cond_52
    return-void
.end method

.method public static onScanFailed(Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;I)V
    .registers 3

    #@0
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    #@2
    const-string v0, "\u626b\u63cf\u5931\u8d25\uff0ccode\uff1a"

    #@4
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    move-result-object p0

    #@b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@12
    return-void
.end method

.method public static onScanStarted(Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;)V
    .registers 1

    #@0
    const-string p0, "\u5f00\u59cb\u626b\u63cf"

    #@2
    .line 51
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static onScanStopped(Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;)V
    .registers 1

    #@0
    const-string p0, "\u626b\u63cf\u7ed3\u675f"

    #@2
    .line 55
    invoke-static {p0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@5
    return-void
.end method
