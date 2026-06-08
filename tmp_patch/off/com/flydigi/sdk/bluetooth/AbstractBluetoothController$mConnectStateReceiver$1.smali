.class public final Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractBluetoothController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;-><init>(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;


# direct methods
.method constructor <init>(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    .line 223
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p1, "intent"

    #@7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    #@c
    .line 225
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    #@12
    const/4 v0, 0x0

    #@13
    if-eqz p1, :cond_10d

    #@15
    .line 228
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@17
    invoke-virtual {v1, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->isDeviceNameExist(Landroid/bluetooth/BluetoothDevice;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_10d

    #@1d
    .line 229
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@1f
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getDeviceFilter()Lcom/flydigi/sdk/bluetooth/DeviceFilter;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x2

    #@29
    invoke-static {v1, v2, v3, v4, v0}, Lcom/flydigi/sdk/bluetooth/DeviceFilter$DefaultImpls;->isValidDevice$default(Lcom/flydigi/sdk/bluetooth/DeviceFilter;Ljava/lang/String;IILjava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_10d

    #@2f
    .line 230
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@31
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    #@34
    move-result-object v1

    #@35
    if-eqz v1, :cond_45

    #@37
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@39
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->getMBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {p1, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v1

    #@41
    if-nez v1, :cond_45

    #@43
    goto/16 :goto_10d

    #@45
    .line 236
    :cond_45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    if-eqz v0, :cond_10c

    #@4b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@4e
    move-result v1

    #@4f
    const v2, -0x11f77b4b

    #@52
    const-string v3, "[Broadcast] Action received: device:"

    #@54
    if-eq v1, v2, :cond_d2

    #@56
    const v2, 0x42f3be3f

    #@59
    if-eq v1, v2, :cond_92

    #@5b
    const p2, 0x6c9330ef

    #@5e
    if-eq v1, p2, :cond_62

    #@60
    goto/16 :goto_10c

    #@62
    :cond_62
    const-string p2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    #@64
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result p2

    #@68
    if-nez p2, :cond_6c

    #@6a
    goto/16 :goto_10c

    #@6c
    .line 243
    :cond_6c
    new-instance p2, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@71
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object p2

    #@79
    const-string v0, " android.bluetooth.device.action.ACL_DISCONNECTED "

    #@7b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object p2

    #@7f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object p2

    #@83
    invoke-static {p2}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@86
    .line 244
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@88
    invoke-virtual {p2, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    #@8b
    .line 245
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@8d
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->reset()V

    #@90
    goto/16 :goto_10c

    #@92
    :cond_92
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    #@94
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v0

    #@98
    if-nez v0, :cond_9b

    #@9a
    goto :goto_10c

    #@9b
    .line 248
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    const-string v1, " android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED "

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v0

    #@b2
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@b5
    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    #@b7
    const/4 v1, -0x1

    #@b8
    .line 250
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@bb
    move-result p2

    #@bc
    if-eqz p2, :cond_c7

    #@be
    if-eq p2, v4, :cond_c1

    #@c0
    goto :goto_10c

    #@c1
    .line 252
    :cond_c1
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@c3
    invoke-virtual {p2, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    #@c6
    goto :goto_10c

    #@c7
    .line 254
    :cond_c7
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@c9
    invoke-virtual {p2, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    #@cc
    .line 255
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@ce
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->reset()V

    #@d1
    goto :goto_10c

    #@d2
    :cond_d2
    const-string p2, "android.bluetooth.device.action.ACL_CONNECTED"

    #@d4
    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result p2

    #@d8
    if-eqz p2, :cond_10c

    #@da
    .line 238
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@dc
    invoke-virtual {p2, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->setMBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    #@df
    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@e7
    move-result-object v0

    #@e8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object p2

    #@ec
    const-string v0, " android.bluetooth.device.action.ACL_CONNECTED connectionStateCallback.size:"

    #@ee
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object p2

    #@f2
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@f4
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->connectionStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getConnectionStateCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;

    #@f7
    move-result-object v0

    #@f8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@fb
    move-result v0

    #@fc
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object p2

    #@100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object p2

    #@104
    invoke-static {p2}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@107
    .line 240
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mConnectStateReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@109
    invoke-virtual {p2, p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    #@10c
    :cond_10c
    :goto_10c
    return-void

    #@10d
    .line 232
    :cond_10d
    :goto_10d
    new-instance p2, Ljava/lang/StringBuilder;

    #@10f
    const-string v1, "skip other device["

    #@111
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@114
    if-eqz p1, :cond_11a

    #@116
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@119
    move-result-object v0

    #@11a
    :cond_11a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object p1

    #@11e
    const/16 p2, 0x5d

    #@120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@123
    move-result-object p1

    #@124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object p1

    #@128
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@12b
    return-void
.end method
