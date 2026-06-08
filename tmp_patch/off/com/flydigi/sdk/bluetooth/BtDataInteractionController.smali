.class public abstract Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;
.super Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;
.source "BtDataInteractionController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;,
        Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001:\u0002!\"B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0006\u0010\u0012\u001a\u00020\u0010J\u0008\u0010\u0013\u001a\u00020\u0010H\u0014J\u0008\u0010\u0014\u001a\u00020\u0010H\u0002J\u0008\u0010\u0015\u001a\u00020\u0010H\u0014J\u0008\u0010\u0016\u001a\u00020\u0010H\u0004J\u0008\u0010\u0017\u001a\u00020\u0010H\u0004J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0010\u0010\u001d\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0015J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 H\u0014R\u0014\u0010\t\u001a\u0008\u0018\u00010\nR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0018\u00010\u000cR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;",
        "Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;",
        "mContext",
        "Landroid/content/Context;",
        "filter",
        "Lcom/flydigi/sdk/bluetooth/DeviceFilter;",
        "mProfile",
        "",
        "(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V",
        "mCommunicationThread",
        "Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;",
        "mConnectionThread",
        "Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;",
        "socket",
        "Landroid/bluetooth/BluetoothSocket;",
        "cancelCommunicationThread",
        "",
        "cancelConnectThread",
        "close",
        "connect",
        "disconnect",
        "onConnectionEstablished",
        "onConnectionFailed",
        "onConnectionLost",
        "onReceiveDataFromDevice",
        "uuid",
        "Ljava/util/UUID;",
        "value",
        "",
        "onSocketConnected",
        "writeToBluetoothDevice",
        "pack",
        "Lcom/flydigi/sdk/bluetooth/data/RequestPack;",
        "CommunicationThread",
        "ConnectThread",
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
.field private mCommunicationThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;

.field private mConnectionThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;

.field private socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V
    .registers 5

    #@0
    const-string v0, "mContext"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "filter"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;-><init>(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V

    #@d
    return-void
.end method

.method public static final synthetic access$disconnect(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;)V
    .registers 1

    #@0
    .line 14
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->disconnect()V

    #@3
    return-void
.end method

.method public static final synthetic access$setMCommunicationThread$p(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;)V
    .registers 2

    #@0
    .line 14
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mCommunicationThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;

    #@2
    return-void
.end method

.method public static final synthetic access$setMConnectionThread$p(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;)V
    .registers 2

    #@0
    .line 14
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mConnectionThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;

    #@2
    return-void
.end method

.method private final cancelCommunicationThread()V
    .registers 2

    #@0
    .line 97
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mCommunicationThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->cancel()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 98
    iput-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mCommunicationThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;

    #@a
    return-void
.end method

.method private final cancelConnectThread()V
    .registers 2

    #@0
    .line 92
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mConnectionThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;->cancel()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 93
    iput-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mConnectionThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;

    #@a
    return-void
.end method

.method private final disconnect()V
    .registers 2

    #@0
    .line 61
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->cancelConnectThread()V

    #@3
    .line 62
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->cancelCommunicationThread()V

    #@6
    const/4 v0, 0x0

    #@7
    .line 63
    invoke-virtual {p0, v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->setMDataConnectState(I)V

    #@a
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    #@0
    .line 56
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->disconnect()V

    #@3
    .line 57
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->socket:Landroid/bluetooth/BluetoothSocket;

    #@5
    if-eqz v0, :cond_a

    #@7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    #@a
    :cond_a
    return-void
.end method

.method protected connect()V
    .registers 4

    #@0
    .line 34
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->getMBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_35

    #@6
    .line 35
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    if-eq v1, v2, :cond_1a

    #@d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x3

    #@12
    if-eq v1, v2, :cond_1a

    #@14
    const-string v0, "current device is not a valid classic device"

    #@16
    .line 36
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@19
    return-void

    #@1a
    .line 39
    :cond_1a
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->getServiceUUID()Ljava/util/UUID;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_35

    #@24
    const-string v1, "createInsecureRfcommSock\u2026erviceRecord(serviceUUID)"

    #@26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@29
    .line 40
    iput-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->socket:Landroid/bluetooth/BluetoothSocket;

    #@2b
    .line 41
    new-instance v1, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;

    #@2d
    invoke-direct {v1, p0, v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;-><init>(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;Landroid/bluetooth/BluetoothSocket;)V

    #@30
    .line 42
    iput-object v1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mConnectionThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;

    #@32
    .line 43
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$ConnectThread;->start()V

    #@35
    :cond_35
    return-void
.end method

.method protected onConnectionEstablished()V
    .registers 1

    #@0
    return-void
.end method

.method protected final onConnectionFailed()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 82
    invoke-virtual {p0, v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->setMDataConnectState(I)V

    #@4
    .line 83
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->getMBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    #@b
    return-void
.end method

.method protected final onConnectionLost()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 87
    invoke-virtual {p0, v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->setMDataConnectState(I)V

    #@4
    .line 88
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->getMBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    #@b
    return-void
.end method

.method protected onReceiveDataFromDevice(Ljava/util/UUID;[B)V
    .registers 5

    #@0
    const-string v0, "uuid"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p1, "value"

    #@7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 50
    sget-object p1, Lcom/flydigi/sdk/bluetooth/util/Logger;->INSTANCE:Lcom/flydigi/sdk/bluetooth/util/Logger;

    #@c
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->getLogRawData()Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_2a

    #@12
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    #@14
    const-string v0, "onReceiveDataFromDevice:"

    #@16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19
    const/4 v0, 0x1

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-static {p2, v1, v0, v1}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object p2

    #@1f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p1

    #@23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@2a
    :cond_2a
    return-void
.end method

.method protected onSocketConnected(Landroid/bluetooth/BluetoothSocket;)V
    .registers 3

    #@0
    const-string v0, "socket"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "onSocketConnected"

    #@7
    .line 68
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@a
    const/4 v0, 0x2

    #@b
    .line 69
    invoke-virtual {p0, v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->setMDataConnectState(I)V

    #@e
    .line 70
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->cancelConnectThread()V

    #@11
    .line 71
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->cancelCommunicationThread()V

    #@14
    .line 73
    new-instance v0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;

    #@16
    invoke-direct {v0, p0, p1}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;-><init>(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;Landroid/bluetooth/BluetoothSocket;)V

    #@19
    iput-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mCommunicationThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;

    #@1b
    .line 74
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->start()V

    #@1e
    return-void
.end method

.method protected writeToBluetoothDevice(Lcom/flydigi/sdk/bluetooth/data/RequestPack;)V
    .registers 6

    #@0
    const-string v0, "pack"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 26
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->mCommunicationThread:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    if-eqz v0, :cond_16

    #@b
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->getData()[B

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v0, v3}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->sendStream([B)Z

    #@12
    move-result v0

    #@13
    if-ne v0, v2, :cond_16

    #@15
    move v1, v2

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    if-eqz v1, :cond_34

    #@19
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    const-string v3, "writeToBluetoothDevice success: "

    #@1d
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->getData()[B

    #@23
    move-result-object p1

    #@24
    invoke-static {p1, v0, v2, v0}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object p1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logi(Ljava/lang/String;)V

    #@33
    goto :goto_4e

    #@34
    .line 29
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    const-string v3, "writeToBluetoothDevice failed: "

    #@38
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    invoke-virtual {p1}, Lcom/flydigi/sdk/bluetooth/data/RequestPack;->getData()[B

    #@3e
    move-result-object p1

    #@3f
    invoke-static {p1, v0, v2, v0}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object p1

    #@47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object p1

    #@4b
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@4e
    :goto_4e
    return-void
.end method
