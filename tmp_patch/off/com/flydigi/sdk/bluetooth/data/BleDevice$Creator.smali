.class public final Lcom/flydigi/sdk/bluetooth/data/BleDevice$Creator;
.super Ljava/lang/Object;
.source "BleDevice.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/bluetooth/data/BleDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/flydigi/sdk/bluetooth/data/BleDevice;",
        ">;"
    }
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
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/flydigi/sdk/bluetooth/data/BleDevice;
    .registers 10

    #@0
    const-string v0, "parcel"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@7
    const-class v1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@10
    move-result-object v1

    #@11
    move-object v2, v1

    #@12
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #@14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@23
    move-result-wide v6

    #@24
    move-object v1, v0

    #@25
    invoke-direct/range {v1 .. v7}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V

    #@28
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public final newArray(I)[Lcom/flydigi/sdk/bluetooth/data/BleDevice;
    .registers 2

    #@0
    new-array p1, p1, [Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@2
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/data/BleDevice$Creator;->newArray(I)[Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
