.class public final Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "LeDataInteractionController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;-><init>(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLeDataInteractionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LeDataInteractionController.kt\ncom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,460:1\n1#2:461\n1855#3,2:462\n*S KotlinDebug\n*F\n+ 1 LeDataInteractionController.kt\ncom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1\n*L\n132#1:462,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J$\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J$\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016J(\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J$\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0016J\u001a\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u001a\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "com/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1",
        "Landroid/bluetooth/BluetoothGattCallback;",
        "onCharacteristicChanged",
        "",
        "gatt",
        "Landroid/bluetooth/BluetoothGatt;",
        "characteristic",
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        "onCharacteristicRead",
        "status",
        "",
        "onCharacteristicWrite",
        "onConnectionStateChange",
        "newState",
        "onDescriptorRead",
        "descriptor",
        "Landroid/bluetooth/BluetoothGattDescriptor;",
        "value",
        "",
        "onDescriptorWrite",
        "onReadRemoteRssi",
        "rssi",
        "onReliableWriteCompleted",
        "onServicesDiscovered",
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


# instance fields
.field final synthetic this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;


# direct methods
.method constructor <init>(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@2
    .line 41
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 12

    #@0
    if-eqz p2, :cond_133

    #@2
    .line 118
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@4
    .line 119
    sget-object v0, Lcom/flydigi/sdk/bluetooth/util/Logger;->INSTANCE:Lcom/flydigi/sdk/bluetooth/util/Logger;

    #@6
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->getLogRawData()Z

    #@9
    move-result v0

    #@a
    const-string v1, "it.value"

    #@c
    const/4 v2, 0x0

    #@d
    const/4 v3, 0x1

    #@e
    if-eqz v0, :cond_3b

    #@10
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    const-string v4, "onReceiveDataFromDevice:"

    #@14
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1e
    invoke-static {v4, v2, v3, v2}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string v4, " from "

    #@28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@3b
    .line 122
    :cond_3b
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaFactory:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaFactory$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@3e
    move-result-object v0

    #@3f
    if-eqz v0, :cond_4c

    #@41
    invoke-static {v0, v2, v3, v2}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory$DefaultImpls;->getOtaCharacteristic$default(Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;Ljava/util/UUID;ILjava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@44
    move-result-object v0

    #@45
    if-eqz v0, :cond_4c

    #@47
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@4a
    move-result-object v0

    #@4b
    goto :goto_4d

    #@4c
    :cond_4c
    move-object v0, v2

    #@4d
    :goto_4d
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@50
    move-result-object v4

    #@51
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_112

    #@57
    .line 123
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@5a
    move-result-object p2

    #@5b
    if-eqz p2, :cond_133

    #@5d
    const-string v0, "value"

    #@5f
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@62
    .line 124
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaFactory:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaFactory$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@65
    move-result-object v0

    #@66
    const/4 v1, 0x0

    #@67
    if-eqz v0, :cond_71

    #@69
    invoke-interface {v0, p2}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->isOtaReady([B)Z

    #@6c
    move-result v0

    #@6d
    if-ne v0, v3, :cond_71

    #@6f
    move v0, v3

    #@70
    goto :goto_72

    #@71
    :cond_71
    move v0, v1

    #@72
    :goto_72
    if-eqz v0, :cond_a7

    #@74
    .line 125
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaFactory:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaFactory$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@77
    move-result-object v0

    #@78
    if-eqz v0, :cond_133

    #@7a
    invoke-interface {v0}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->requestOtaDataCheckSize()Lkotlin/Pair;

    #@7d
    move-result-object v0

    #@7e
    if-eqz v0, :cond_133

    #@80
    .line 126
    move-object v2, p1

    #@81
    check-cast v2, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;

    #@83
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    #@86
    move-result-object v3

    #@87
    check-cast v3, Ljava/util/UUID;

    #@89
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    #@8c
    move-result-object v0

    #@8d
    move-object v4, v0

    #@8e
    check-cast v4, Ljava/util/List;

    #@90
    const/4 v5, 0x0

    #@91
    const/4 v6, 0x0

    #@92
    const/16 v7, 0xc

    #@94
    const/4 v8, 0x0

    #@95
    invoke-static/range {v2 .. v8}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;->addCommandToQueue$default(Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;Ljava/util/UUID;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ILjava/lang/Object;)V

    #@98
    .line 127
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaFactory:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaFactory$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@9b
    move-result-object v0

    #@9c
    if-eqz v0, :cond_a2

    #@9e
    invoke-interface {v0, p2}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->isOtaReady([B)Z

    #@a1
    move-result v1

    #@a2
    :cond_a2
    invoke-static {p1, v1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$setOtaIdle$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;Z)V

    #@a5
    goto/16 :goto_133

    #@a7
    .line 129
    :cond_a7
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaFactory:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaFactory$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@aa
    move-result-object v0

    #@ab
    if-eqz v0, :cond_b5

    #@ad
    invoke-interface {v0, p2}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->isOtaResultCmd([B)Z

    #@b0
    move-result v0

    #@b1
    if-ne v0, v3, :cond_b5

    #@b3
    move v0, v3

    #@b4
    goto :goto_b6

    #@b5
    :cond_b5
    move v0, v1

    #@b6
    :goto_b6
    if-eqz v0, :cond_f5

    #@b8
    .line 130
    invoke-virtual {p1, v1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->setInOtaMode(Z)V

    #@bb
    .line 131
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaFactory:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaFactory$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@be
    move-result-object v0

    #@bf
    if-eqz v0, :cond_c8

    #@c1
    invoke-interface {v0, p2}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->isOtaSuccess([B)Z

    #@c4
    move-result v0

    #@c5
    if-ne v0, v3, :cond_c8

    #@c7
    goto :goto_c9

    #@c8
    :cond_c8
    move v3, v1

    #@c9
    :goto_c9
    if-eqz v3, :cond_e5

    #@cb
    .line 132
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaCallbacks:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaCallbacks$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Ljava/util/ArrayList;

    #@ce
    move-result-object p1

    #@cf
    check-cast p1, Ljava/lang/Iterable;

    #@d1
    .line 462
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d4
    move-result-object p1

    #@d5
    :goto_d5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@d8
    move-result p2

    #@d9
    if-eqz p2, :cond_133

    #@db
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@de
    move-result-object p2

    #@df
    check-cast p2, Lcom/flydigi/sdk/bluetooth/ota/OtaCallback;

    #@e1
    .line 132
    invoke-interface {p2}, Lcom/flydigi/sdk/bluetooth/ota/OtaCallback;->onOtaSuccess()V

    #@e4
    goto :goto_d5

    #@e5
    .line 135
    :cond_e5
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_OTA_FAILED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@e7
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaFactory:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaFactory$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@ea
    move-result-object v1

    #@eb
    if-eqz v1, :cond_f1

    #@ed
    invoke-interface {v1, p2}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->getOtaResultCode([B)Ljava/lang/Byte;

    #@f0
    move-result-object v2

    #@f1
    .line 134
    :cond_f1
    # invokes: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onOtaFailed(Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;Ljava/lang/Byte;)V
    invoke-static {p1, v0, v2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$onOtaFailed(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;Ljava/lang/Byte;)V

    #@f4
    goto :goto_133

    #@f5
    .line 139
    :cond_f5
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->otaFactory:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$getOtaFactory$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@f8
    move-result-object v0

    #@f9
    if-eqz v0, :cond_102

    #@fb
    invoke-interface {v0, p2}, Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;->handleCharacteristic([B)Z

    #@fe
    move-result p2

    #@ff
    if-ne p2, v3, :cond_102

    #@101
    goto :goto_103

    #@102
    :cond_102
    move v3, v1

    #@103
    :goto_103
    invoke-static {p1, v3}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$setOtaIdle$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;Z)V

    #@106
    .line 141
    # getter for: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->isOtaIdle:Z
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$isOtaIdle$p(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Z

    #@109
    move-result p2

    #@10a
    if-nez p2, :cond_133

    #@10c
    .line 142
    sget-object p2, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_DEVICE_NOT_PREPARED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@10e
    # invokes: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onOtaFailed(Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;Ljava/lang/Byte;)V
    invoke-static {p1, p2, v2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$onOtaFailed(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;Ljava/lang/Byte;)V

    #@111
    goto :goto_133

    #@112
    .line 148
    :cond_112
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->getReadCharacteristicUUID()Ljava/util/UUID;

    #@115
    move-result-object v0

    #@116
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@119
    move-result-object v2

    #@11a
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11d
    move-result v0

    #@11e
    if-eqz v0, :cond_133

    #@120
    .line 149
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@123
    move-result-object v0

    #@124
    const-string v2, "it.uuid"

    #@126
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@129
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@12c
    move-result-object p2

    #@12d
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@130
    invoke-virtual {p1, v0, p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onReceiveDataFromDevice(Ljava/util/UUID;[B)V

    #@133
    :cond_133
    :goto_133
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 8

    #@0
    if-eqz p2, :cond_38

    #@2
    .line 55
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@4
    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    #@6
    const-string v0, "onCharacteristicReadSuccess:"

    #@8
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@e
    move-result-object v0

    #@f
    const-string v1, "it.value"

    #@11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@14
    const/4 v2, 0x1

    #@15
    const/4 v3, 0x0

    #@16
    invoke-static {v0, v3, v2, v3}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p3

    #@1e
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p3

    #@22
    invoke-static {p3}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@25
    .line 57
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@28
    move-result-object p3

    #@29
    const-string v0, "it.uuid"

    #@2b
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@2e
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@31
    move-result-object p2

    #@32
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@35
    invoke-virtual {p1, p3, p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onCharacteristicReadSuccess(Ljava/util/UUID;[B)V

    #@38
    :cond_38
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 9

    #@0
    if-eqz p2, :cond_42

    #@2
    .line 64
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@4
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    const-string v1, "onCharacteristicWriteSuccess:"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@e
    move-result-object v1

    #@f
    const-string v2, "it.value"

    #@11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@14
    const/4 v3, 0x1

    #@15
    const/4 v4, 0x0

    #@16
    invoke-static {v1, v4, v3, v4}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string v1, " status:"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object p3

    #@28
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p3

    #@2c
    invoke-static {p3}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@2f
    .line 66
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@32
    move-result-object p3

    #@33
    const-string v0, "it.uuid"

    #@35
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@38
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@3b
    move-result-object p2

    #@3c
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@3f
    invoke-virtual {p1, p3, p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onCharacteristicWriteSuccess(Ljava/util/UUID;[B)V

    #@42
    :cond_42
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    #@0
    const-string v0, "gatt"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    const-string v1, "onConnectionStateChange status\uff1a"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object p2

    #@10
    const-string v0, " newState:"

    #@12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p2

    #@16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object p2

    #@1a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p2

    #@1e
    invoke-static {p2}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@21
    if-eqz p3, :cond_2d

    #@23
    const/4 p2, 0x2

    #@24
    if-eq p3, p2, :cond_27

    #@26
    goto :goto_32

    #@27
    .line 46
    :cond_27
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@29
    invoke-virtual {p2, p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onGattConnected(Landroid/bluetooth/BluetoothGatt;)V

    #@2c
    goto :goto_32

    #@2d
    .line 48
    :cond_2d
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@2f
    invoke-virtual {p2, p1}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onGattDisconnected(Landroid/bluetooth/BluetoothGatt;)V

    #@32
    :goto_32
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
    .registers 7

    #@0
    const-string v0, "gatt"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "descriptor"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string v0, "value"

    #@c
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I[B)V

    #@12
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    #@14
    const-string v0, "onDescriptorRead:read "

    #@16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19
    const/4 v0, 0x0

    #@1a
    const/4 v1, 0x1

    #@1b
    invoke-static {p4, v0, v1, v0}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object p4

    #@1f
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p1

    #@23
    const-string p4, " from "

    #@25
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object p1

    #@29
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    #@2c
    move-result-object p2

    #@2d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p1

    #@31
    const-string p2, " status:"

    #@33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object p1

    #@3f
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@42
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 7

    #@0
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    #@2
    const-string v0, "onDescriptorWritten:"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    const/4 v0, 0x0

    #@8
    if-eqz p2, :cond_16

    #@a
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_16

    #@10
    const/4 v2, 0x1

    #@11
    invoke-static {v1, v0, v2, v0}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    goto :goto_17

    #@16
    :cond_16
    move-object v1, v0

    #@17
    :goto_17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    const-string v1, " to "

    #@1d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p1

    #@21
    if-eqz p2, :cond_27

    #@23
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    #@26
    move-result-object v0

    #@27
    :cond_27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p1

    #@2b
    const-string v0, " status:"

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p1

    #@31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object p1

    #@35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object p1

    #@39
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@3c
    if-eqz p2, :cond_43

    #@3e
    .line 104
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@40
    invoke-virtual {p1, p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onDescriptorWritten(Landroid/bluetooth/BluetoothGattDescriptor;)V

    #@43
    :cond_43
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    #@0
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    #@3
    if-nez p3, :cond_a

    #@5
    .line 96
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@7
    invoke-virtual {p1, p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->onReadRemoteRssi(I)V

    #@a
    :cond_a
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3

    #@0
    const-string p1, "onReliableWriteCompleted"

    #@2
    .line 90
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 5

    #@0
    .line 71
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@2
    # invokes: Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->checkBluetoothPermission()Z
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->access$checkBluetoothPermission(Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 72
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const-string v1, "onServicesDiscovered status:"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@1b
    if-nez p2, :cond_4f

    #@1d
    if-eqz p1, :cond_4f

    #@1f
    .line 74
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$mGattCallback$1;->this$0:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@21
    .line 75
    invoke-virtual {p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->getServiceUUID()Ljava/util/UUID;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p2, v0}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->setGattService(Landroid/bluetooth/BluetoothGattService;)V

    #@2c
    .line 76
    invoke-virtual {p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->getGattService()Landroid/bluetooth/BluetoothGattService;

    #@2f
    move-result-object v0

    #@30
    if-eqz v0, :cond_35

    #@32
    .line 77
    invoke-virtual {p2, v0}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;)V

    #@35
    .line 79
    :cond_35
    invoke-virtual {p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->getReadCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    #@38
    move-result-object v0

    #@39
    if-eqz v0, :cond_4f

    #@3b
    const/4 v1, 0x1

    #@3c
    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    #@3f
    .line 81
    invoke-virtual {p2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->getDescriptorUUID()Ljava/util/UUID;

    #@42
    move-result-object p2

    #@43
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    #@46
    move-result-object p2

    #@47
    .line 82
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    #@49
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    #@4c
    .line 83
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    #@4f
    :cond_4f
    return-void
.end method
