.class public Lcom/flydigi/sdk/bluetooth/UUIDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UUIDReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flydigi/sdk/bluetooth/UUIDReceiver$UUIDListener;
    }
.end annotation


# instance fields
.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mListener:Lcom/flydigi/sdk/bluetooth/UUIDReceiver$UUIDListener;


# direct methods
.method public constructor <init>(Lcom/flydigi/sdk/bluetooth/UUIDReceiver$UUIDListener;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    #@0
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/UUIDReceiver;->mListener:Lcom/flydigi/sdk/bluetooth/UUIDReceiver$UUIDListener;

    #@5
    .line 30
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/UUIDReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    #@0
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_3f

    #@6
    const-string v0, "android.bluetooth.device.action.UUID"

    #@8
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_3f

    #@e
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    #@10
    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@13
    move-result-object p1

    #@14
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    #@16
    const-string v0, "android.bluetooth.device.extra.UUID"

    #@18
    .line 38
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@1b
    move-result-object p2

    #@1c
    if-eqz p1, :cond_3f

    #@1e
    .line 40
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/UUIDReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@20
    if-eqz v0, :cond_3f

    #@22
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3f

    #@28
    if-eqz p2, :cond_3f

    #@2a
    .line 41
    array-length v0, p2

    #@2b
    new-array v0, v0, [Landroid/os/ParcelUuid;

    #@2d
    const/4 v1, 0x0

    #@2e
    .line 42
    :goto_2e
    array-length v2, p2

    #@2f
    if-ge v1, v2, :cond_3a

    #@31
    .line 43
    aget-object v2, p2, v1

    #@33
    check-cast v2, Landroid/os/ParcelUuid;

    #@35
    aput-object v2, v0, v1

    #@37
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_2e

    #@3a
    .line 45
    :cond_3a
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/UUIDReceiver;->mListener:Lcom/flydigi/sdk/bluetooth/UUIDReceiver$UUIDListener;

    #@3c
    invoke-interface {p2, p1, v0}, Lcom/flydigi/sdk/bluetooth/UUIDReceiver$UUIDListener;->onUUIDFound(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    #@3f
    :cond_3f
    return-void
.end method
