.class public final enum Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;
.super Ljava/lang/Enum;
.source "OtaStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;",
        "",
        "code",
        "",
        "(Ljava/lang/String;II)V",
        "ERR_DEVICE_NOT_CONNECTED",
        "ERR_FIRMWARE_NOT_FOUND",
        "ERR_DEVICE_NOT_PREPARED",
        "ERR_OTA_FAILED",
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
.field private static final synthetic $VALUES:[Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

.field public static final enum ERR_DEVICE_NOT_CONNECTED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

.field public static final enum ERR_DEVICE_NOT_PREPARED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

.field public static final enum ERR_FIRMWARE_NOT_FOUND:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

.field public static final enum ERR_OTA_FAILED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@3
    const/4 v1, 0x0

    #@4
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_DEVICE_NOT_CONNECTED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_FIRMWARE_NOT_FOUND:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_DEVICE_NOT_PREPARED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_OTA_FAILED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@15
    aput-object v2, v0, v1

    #@17
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 4
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@2
    const/4 v1, 0x0

    #@3
    const/16 v2, 0x10

    #@5
    const-string v3, "ERR_DEVICE_NOT_CONNECTED"

    #@7
    invoke-direct {v0, v3, v1, v2}, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;-><init>(Ljava/lang/String;II)V

    #@a
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_DEVICE_NOT_CONNECTED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@c
    .line 5
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@e
    const/4 v1, 0x1

    #@f
    const/16 v2, 0x11

    #@11
    const-string v3, "ERR_FIRMWARE_NOT_FOUND"

    #@13
    invoke-direct {v0, v3, v1, v2}, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;-><init>(Ljava/lang/String;II)V

    #@16
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_FIRMWARE_NOT_FOUND:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@18
    .line 6
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@1a
    const/4 v1, 0x2

    #@1b
    const/16 v2, 0x12

    #@1d
    const-string v3, "ERR_DEVICE_NOT_PREPARED"

    #@1f
    invoke-direct {v0, v3, v1, v2}, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;-><init>(Ljava/lang/String;II)V

    #@22
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_DEVICE_NOT_PREPARED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@24
    .line 7
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@26
    const/4 v1, 0x3

    #@27
    const/16 v2, 0x13

    #@29
    const-string v3, "ERR_OTA_FAILED"

    #@2b
    invoke-direct {v0, v3, v1, v2}, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;-><init>(Ljava/lang/String;II)V

    #@2e
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->ERR_OTA_FAILED:Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@30
    invoke-static {}, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->$values()[Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->$VALUES:[Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    #@0
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput p3, p0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->code:I

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;
    .registers 2

    #@0
    const-class v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;
    .registers 1

    #@0
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;->$VALUES:[Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/flydigi/sdk/bluetooth/ota/OtaStatus;

    #@8
    return-object v0
.end method
