.class public final Lcom/flydigi/sdk/bluetooth/data/BleDevice;
.super Ljava/lang/Object;
.source "BleDevice.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010#\u001a\u00020\u000bH\u00c6\u0003J?\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\t\u0010%\u001a\u00020\u0007H\u00d6\u0001J\u0013\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0003J\t\u0010*\u001a\u00020\u0007H\u00d6\u0001J\t\u0010+\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0007H\u00d6\u0001R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u00061"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/data/BleDevice;",
        "Landroid/os/Parcelable;",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "deviceName",
        "",
        "rssi",
        "",
        "bytes",
        "",
        "timestampNanos",
        "",
        "(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V",
        "getBytes",
        "()[B",
        "setBytes",
        "([B)V",
        "getDevice",
        "()Landroid/bluetooth/BluetoothDevice;",
        "getDeviceName",
        "()Ljava/lang/String;",
        "setDeviceName",
        "(Ljava/lang/String;)V",
        "getRssi",
        "()I",
        "setRssi",
        "(I)V",
        "getTimestampNanos",
        "()J",
        "setTimestampNanos",
        "(J)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/flydigi/sdk/bluetooth/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bytes:[B

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private deviceName:Ljava/lang/String;

.field private rssi:I

.field private timestampNanos:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/flydigi/sdk/bluetooth/data/BleDevice$Creator;

    #@2
    invoke-direct {v0}, Lcom/flydigi/sdk/bluetooth/data/BleDevice$Creator;-><init>()V

    #@5
    check-cast v0, Landroid/os/Parcelable$Creator;

    #@7
    sput-object v0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V
    .registers 8

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 20
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@a
    .line 21
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@c
    .line 22
    iput p3, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@e
    .line 23
    iput-object p4, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@10
    .line 24
    iput-wide p5, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@12
    return-void
.end method

.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    #@0
    and-int/lit8 v0, p7, 0x2

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_7

    #@5
    move-object v4, v1

    #@6
    goto :goto_8

    #@7
    :cond_7
    move-object v4, p2

    #@8
    :goto_8
    and-int/lit8 v0, p7, 0x8

    #@a
    if-eqz v0, :cond_e

    #@c
    move-object v6, v1

    #@d
    goto :goto_f

    #@e
    :cond_e
    move-object v6, p4

    #@f
    :goto_f
    move-object v2, p0

    #@10
    move-object v3, p1

    #@11
    move v5, p3

    #@12
    move-wide v7, p5

    #@13
    .line 19
    invoke-direct/range {v2 .. v8}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V

    #@16
    return-void
.end method

.method public static synthetic copy$default(Lcom/flydigi/sdk/bluetooth/data/BleDevice;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJILjava/lang/Object;)Lcom/flydigi/sdk/bluetooth/data/BleDevice;
    .registers 13

    #@0
    and-int/lit8 p8, p7, 0x1

    #@2
    if-eqz p8, :cond_6

    #@4
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@6
    :cond_6
    and-int/lit8 p8, p7, 0x2

    #@8
    if-eqz p8, :cond_c

    #@a
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@c
    :cond_c
    move-object p8, p2

    #@d
    and-int/lit8 p2, p7, 0x4

    #@f
    if-eqz p2, :cond_13

    #@11
    iget p3, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@13
    :cond_13
    move v0, p3

    #@14
    and-int/lit8 p2, p7, 0x8

    #@16
    if-eqz p2, :cond_1a

    #@18
    iget-object p4, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@1a
    :cond_1a
    move-object v1, p4

    #@1b
    and-int/lit8 p2, p7, 0x10

    #@1d
    if-eqz p2, :cond_21

    #@1f
    iget-wide p5, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@21
    :cond_21
    move-wide v2, p5

    #@22
    move-object p2, p0

    #@23
    move-object p3, p1

    #@24
    move-object p4, p8

    #@25
    move p5, v0

    #@26
    move-object p6, v1

    #@27
    move-wide p7, v2

    #@28
    invoke-virtual/range {p2 .. p8}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->copy(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@2b
    move-result-object p0

    #@2c
    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final component3()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@2
    return v0
.end method

.method public final component4()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@2
    return-object v0
.end method

.method public final component5()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@2
    return-wide v0
.end method

.method public final copy(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)Lcom/flydigi/sdk/bluetooth/data/BleDevice;
    .registers 15

    #@0
    const-string v0, "device"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@7
    move-object v1, v0

    #@8
    move-object v2, p1

    #@9
    move-object v3, p2

    #@a
    move v4, p3

    #@b
    move-object v5, p4

    #@c
    move-wide v6, p5

    #@d
    invoke-direct/range {v1 .. v7}, Lcom/flydigi/sdk/bluetooth/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I[BJ)V

    #@10
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    instance-of v1, p1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    :cond_a
    check-cast p1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;

    #@c
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@e
    iget-object v3, p1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@10
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_17

    #@16
    return v2

    #@17
    :cond_17
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@19
    iget-object v3, p1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@1b
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_22

    #@21
    return v2

    #@22
    :cond_22
    iget v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@24
    iget v3, p1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@26
    if-eq v1, v3, :cond_29

    #@28
    return v2

    #@29
    :cond_29
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@2b
    iget-object v3, p1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@2d
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_34

    #@33
    return v2

    #@34
    :cond_34
    iget-wide v3, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@36
    iget-wide v5, p1, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@38
    cmp-long p1, v3, v5

    #@3a
    if-eqz p1, :cond_3d

    #@3c
    return v2

    #@3d
    :cond_3d
    return v0
.end method

.method public final getBytes()[B
    .registers 2

    #@0
    .line 23
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@2
    return-object v0
.end method

.method public final getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    #@0
    .line 20
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .registers 2

    #@0
    .line 21
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getRssi()I
    .registers 2

    #@0
    .line 22
    iget v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@2
    return v0
.end method

.method public final getTimestampNanos()J
    .registers 3

    #@0
    .line 24
    iget-wide v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@a
    const/4 v2, 0x0

    #@b
    if-nez v1, :cond_f

    #@d
    move v1, v2

    #@e
    goto :goto_13

    #@f
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@12
    move-result v1

    #@13
    :goto_13
    add-int/2addr v0, v1

    #@14
    mul-int/lit8 v0, v0, 0x1f

    #@16
    iget v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    #@1b
    move-result v1

    #@1c
    add-int/2addr v0, v1

    #@1d
    mul-int/lit8 v0, v0, 0x1f

    #@1f
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@21
    if-nez v1, :cond_24

    #@23
    goto :goto_28

    #@24
    :cond_24
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@27
    move-result v2

    #@28
    :goto_28
    add-int/2addr v0, v2

    #@29
    mul-int/lit8 v0, v0, 0x1f

    #@2b
    iget-wide v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@2d
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    #@30
    move-result v1

    #@31
    add-int/2addr v0, v1

    #@32
    return v0
.end method

.method public final setBytes([B)V
    .registers 2

    #@0
    .line 23
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@2
    return-void
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 21
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setRssi(I)V
    .registers 2

    #@0
    .line 22
    iput p1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@2
    return-void
.end method

.method public final setTimestampNanos(J)V
    .registers 3

    #@0
    .line 24
    iput-wide p1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "BleDevice(device="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", deviceName="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", rssi="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, ", bytes="

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@2d
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string v1, ", timestampNanos="

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    iget-wide v1, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@3d
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    const/16 v1, 0x29

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    #@0
    const-string v0, "out"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    #@7
    check-cast v0, Landroid/os/Parcelable;

    #@9
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@c
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->deviceName:Ljava/lang/String;

    #@e
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    iget p2, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->rssi:I

    #@13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    iget-object p2, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->bytes:[B

    #@18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1b
    iget-wide v0, p0, Lcom/flydigi/sdk/bluetooth/data/BleDevice;->timestampNanos:J

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@20
    return-void
.end method
