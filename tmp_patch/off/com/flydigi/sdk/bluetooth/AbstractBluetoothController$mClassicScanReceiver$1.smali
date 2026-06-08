.class public final Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractBluetoothController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractBluetoothController.kt\ncom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1116:1\n1855#2,2:1117\n1855#2,2:1119\n*S KotlinDebug\n*F\n+ 1 AbstractBluetoothController.kt\ncom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1\n*L\n88#1:1117,2\n91#1:1119,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1",
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
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@2
    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

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
    .line 84
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f
    move-result-object p1

    #@10
    move-object v1, p1

    #@11
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@13
    const-string p1, "android.bluetooth.device.extra.NAME"

    #@15
    .line 85
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    const-string p1, "android.bluetooth.device.extra.RSSI"

    #@1b
    const/16 v0, -0x64

    #@1d
    .line 86
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    #@20
    move-result v3

    #@21
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@24
    move-result-object p1

    #@25
    if-eqz p1, :cond_a4

    #@27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@2a
    move-result p2

    #@2b
    const v0, -0x6a269925

    #@2e
    if-eq p2, v0, :cond_7f

    #@30
    const v0, 0x6724d8

    #@33
    if-eq p2, v0, :cond_5b

    #@35
    const v0, 0x459717c3

    #@38
    if-eq p2, v0, :cond_3b

    #@3a
    goto :goto_a4

    #@3b
    :cond_3b
    const-string p2, "android.bluetooth.device.action.FOUND"

    #@3d
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result p1

    #@41
    if-nez p1, :cond_44

    #@43
    goto :goto_a4

    #@44
    :cond_44
    if-eqz v1, :cond_a4

    #@46
    .line 95
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@48
    .line 98
    new-instance p2, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@4a
    const/4 v4, 0x0

    #@4b
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4e
    move-result-wide v5

    #@4f
    move-object v0, p2

    #@50
    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V

    #@53
    .line 97
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    #@56
    move-result-object p2

    #@57
    .line 96
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->onDeviceFound(Ljava/util/List;)V
    invoke-static {p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$onDeviceFound(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;Ljava/util/List;)V

    #@5a
    goto :goto_a4

    #@5b
    :cond_5b
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    #@5d
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result p1

    #@61
    if-eqz p1, :cond_a4

    #@63
    .line 88
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@65
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getScanDeviceCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;

    #@68
    move-result-object p1

    #@69
    check-cast p1, Ljava/lang/Iterable;

    #@6b
    .line 1117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object p1

    #@6f
    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result p2

    #@73
    if-eqz p2, :cond_a4

    #@75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object p2

    #@79
    check-cast p2, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@7b
    .line 89
    invoke-interface {p2}, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;->onScanStarted()V

    #@7e
    goto :goto_6f

    #@7f
    :cond_7f
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    #@81
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result p1

    #@85
    if-nez p1, :cond_88

    #@87
    goto :goto_a4

    #@88
    .line 91
    :cond_88
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController$mClassicScanReceiver$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;

    #@8a
    # getter for: Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->scanDeviceCallbacks:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;->access$getScanDeviceCallbacks$p(Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController;)Ljava/util/ArrayList;

    #@8d
    move-result-object p1

    #@8e
    check-cast p1, Ljava/lang/Iterable;

    #@90
    .line 1119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@93
    move-result-object p1

    #@94
    :goto_94
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@97
    move-result p2

    #@98
    if-eqz p2, :cond_a4

    #@9a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9d
    move-result-object p2

    #@9e
    check-cast p2, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;

    #@a0
    .line 92
    invoke-interface {p2}, Lcom/flydigi/sdk/bluetooth/ScanDeviceCallback;->onScanStopped()V

    #@a3
    goto :goto_94

    #@a4
    :cond_a4
    :goto_a4
    return-void
.end method
