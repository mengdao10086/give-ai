.class public final Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;
.super Ljava/lang/Thread;
.source "BtDataInteractionController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommunicationThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;",
        "Ljava/lang/Thread;",
        "socket",
        "Landroid/bluetooth/BluetoothSocket;",
        "(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;Landroid/bluetooth/BluetoothSocket;)V",
        "mInputStream",
        "Ljava/io/InputStream;",
        "kotlin.jvm.PlatformType",
        "mIsRunning",
        "",
        "mOutputStream",
        "Ljava/io/OutputStream;",
        "cancel",
        "",
        "listenStream",
        "run",
        "sendStream",
        "data",
        "",
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
.field private final mInputStream:Ljava/io/InputStream;

.field private mIsRunning:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final socket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;


# direct methods
.method public constructor <init>(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;Landroid/bluetooth/BluetoothSocket;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothSocket;",
            ")V"
        }
    .end annotation

    #@0
    const-string v0, "socket"

    #@2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 132
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@a
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->socket:Landroid/bluetooth/BluetoothSocket;

    #@c
    .line 134
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    #@f
    move-result-object p1

    #@10
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mInputStream:Ljava/io/InputStream;

    #@12
    .line 135
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    #@15
    move-result-object p1

    #@16
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mOutputStream:Ljava/io/OutputStream;

    #@18
    return-void
.end method

.method private final listenStream()V
    .registers 5

    #@0
    const/high16 v0, 0x100000

    #@2
    new-array v0, v0, [B

    #@4
    const/4 v1, 0x1

    #@5
    .line 163
    iput-boolean v1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mIsRunning:Z

    #@7
    .line 165
    :cond_7
    :goto_7
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@9
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->getMDataConnectState()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x2

    #@e
    if-ne v1, v2, :cond_46

    #@10
    iget-boolean v1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mIsRunning:Z

    #@12
    if-eqz v1, :cond_46

    #@14
    const/4 v1, 0x0

    #@15
    .line 168
    :try_start_15
    iget-object v3, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mInputStream:Ljava/io/InputStream;

    #@17
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    #@1a
    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_2c

    #@1b
    if-lez v2, :cond_7

    #@1d
    .line 179
    new-array v3, v2, [B

    #@1f
    .line 180
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22
    .line 182
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@24
    invoke-virtual {v1}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->getServiceUUID()Ljava/util/UUID;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2, v3}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->onReceiveDataFromDevice(Ljava/util/UUID;[B)V

    #@2b
    goto :goto_7

    #@2c
    :catch_2c
    const-string v0, "listenStream occur exception"

    #@2e
    .line 170
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@31
    .line 171
    iput-boolean v1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mIsRunning:Z

    #@33
    .line 172
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@35
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->getMDataConnectState()I

    #@38
    move-result v0

    #@39
    if-ne v0, v2, :cond_40

    #@3b
    .line 173
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@3d
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->onConnectionLost()V

    #@40
    .line 175
    :cond_40
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@42
    const/4 v1, 0x0

    #@43
    invoke-static {v0, v1}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->access$setMCommunicationThread$p(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;)V

    #@46
    :cond_46
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    #@0
    .line 224
    invoke-virtual {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->interrupt()V

    #@3
    return-void
.end method

.method public run()V
    .registers 2

    #@0
    .line 138
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    #@3
    .line 139
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mInputStream:Ljava/io/InputStream;

    #@5
    if-nez v0, :cond_12

    #@7
    const-string v0, "mInputStream is null"

    #@9
    .line 140
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@c
    .line 141
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@e
    # invokes: Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->disconnect()V
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->access$disconnect(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;)V

    #@11
    return-void

    #@12
    .line 145
    :cond_12
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mOutputStream:Ljava/io/OutputStream;

    #@14
    if-nez v0, :cond_21

    #@16
    const-string v0, "mOutputStream is null"

    #@18
    .line 146
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@1b
    .line 147
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@1d
    # invokes: Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->disconnect()V
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->access$disconnect(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;)V

    #@20
    return-void

    #@21
    .line 151
    :cond_21
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->socket:Landroid/bluetooth/BluetoothSocket;

    #@23
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_34

    #@29
    const-string v0, "socket is disconnected"

    #@2b
    .line 152
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@2e
    .line 153
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@30
    # invokes: Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->disconnect()V
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->access$disconnect(Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;)V

    #@33
    return-void

    #@34
    .line 156
    :cond_34
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@36
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->onConnectionEstablished()V

    #@39
    .line 158
    invoke-direct {p0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->listenStream()V

    #@3c
    return-void
.end method

.method public final sendStream([B)Z
    .registers 6

    #@0
    const-string v0, "data"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    const-string v1, "sendStream "

    #@9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x1

    #@e
    invoke-static {p1, v1, v2, v1}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logd(Ljava/lang/String;)V

    #@1d
    .line 189
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->socket:Landroid/bluetooth/BluetoothSocket;

    #@1f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    #@22
    move-result v0

    #@23
    const/4 v1, 0x0

    #@24
    if-nez v0, :cond_2c

    #@26
    const-string p1, "socket is disconnected"

    #@28
    .line 190
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@2b
    return v1

    #@2c
    .line 193
    :cond_2c
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->this$0:Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;

    #@2e
    invoke-virtual {v0}, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController;->getMDataConnectState()I

    #@31
    move-result v0

    #@32
    const/4 v3, 0x2

    #@33
    if-eq v0, v3, :cond_3b

    #@35
    const-string p1, "mGattConnectState = GattState.STATE_GATT_CONNECTED"

    #@37
    .line 194
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@3a
    return v1

    #@3b
    .line 197
    :cond_3b
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mOutputStream:Ljava/io/OutputStream;

    #@3d
    if-nez v0, :cond_45

    #@3f
    const-string p1, "mOutputStream is null"

    #@41
    .line 198
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@44
    return v1

    #@45
    .line 202
    :cond_45
    :try_start_45
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    #@48
    .line 215
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/BtDataInteractionController$CommunicationThread;->mOutputStream:Ljava/io/OutputStream;

    #@4a
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4d} :catch_4e

    #@4d
    return v2

    #@4e
    :catch_4e
    const-string p1, "mOutputStream occur exception"

    #@50
    .line 217
    invoke-static {p1}, Lcom/flydigi/sdk/bluetooth/util/Logger;->logw(Ljava/lang/String;)V

    #@53
    return v1
.end method
