.class public final enum Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;
.super Ljava/lang/Enum;
.source "OtaFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OtaResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;",
        "",
        "code",
        "",
        "(Ljava/lang/String;II)V",
        "OTA_RESULT_OTA_DATA_PACKET_SEQ_ERR",
        "OTA_RESULT_OTA_PACKET_INVALID",
        "OTA_RESULT_OTA_DATA_CRC_ERR",
        "OTA_RESULT_OTA_WRITE_FLASH_ERR",
        "OTA_RESULT_OTA_DATA_UNCOMPLETE",
        "OTA_RESULT_OTA_FLOW_ERR",
        "OTA_RESULT_OTA_FW_CHECK_ERR",
        "OTA_RESULT_OTA_VERSION_COMPARE_ERR",
        "OTA_RESULT_OTA_PDU_LEN_ERR",
        "OTA_RESULT_OTA_FIRMWARE_MARK_ERR",
        "OTA_RESULT_OTA_FW_SIZE_ERR",
        "OTA_RESULT_OTA_DATA_PACKET_TIMEOUT",
        "OTA_RESULT_OTA_TIMEOUT",
        "OTA_RESULT_OTA_FAIL_DUE_TO_CONNECTION_TERMINATE",
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
.field private static final synthetic $VALUES:[Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_DATA_CRC_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_DATA_PACKET_SEQ_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_DATA_PACKET_TIMEOUT:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_DATA_UNCOMPLETE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_FIRMWARE_MARK_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_FLOW_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_FW_CHECK_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_FW_SIZE_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_PACKET_INVALID:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_PDU_LEN_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_TIMEOUT:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_VERSION_COMPARE_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

.field public static final enum OTA_RESULT_OTA_WRITE_FLASH_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;


# direct methods
.method private static final synthetic $values()[Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;
    .registers 3

    #@0
    const/16 v0, 0xe

    #@2
    new-array v0, v0, [Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@4
    const/4 v1, 0x0

    #@5
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_DATA_PACKET_SEQ_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_PACKET_INVALID:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_DATA_CRC_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_WRITE_FLASH_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_DATA_UNCOMPLETE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FLOW_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FW_CHECK_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_VERSION_COMPARE_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/16 v1, 0x8

    #@2e
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_PDU_LEN_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@30
    aput-object v2, v0, v1

    #@32
    const/16 v1, 0x9

    #@34
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FIRMWARE_MARK_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@36
    aput-object v2, v0, v1

    #@38
    const/16 v1, 0xa

    #@3a
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FW_SIZE_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@3c
    aput-object v2, v0, v1

    #@3e
    const/16 v1, 0xb

    #@40
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_DATA_PACKET_TIMEOUT:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0xc

    #@46
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_TIMEOUT:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@48
    aput-object v2, v0, v1

    #@4a
    const/16 v1, 0xd

    #@4c
    sget-object v2, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@4e
    aput-object v2, v0, v1

    #@50
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 75
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@2
    const-string v1, "OTA_RESULT_OTA_DATA_PACKET_SEQ_ERR"

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x1

    #@6
    invoke-direct {v0, v1, v2, v3}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@9
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_DATA_PACKET_SEQ_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@b
    .line 83
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@d
    const-string v1, "OTA_RESULT_OTA_PACKET_INVALID"

    #@f
    const/4 v2, 0x2

    #@10
    invoke-direct {v0, v1, v3, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@13
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_PACKET_INVALID:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@15
    .line 88
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@17
    const-string v1, "OTA_RESULT_OTA_DATA_CRC_ERR"

    #@19
    const/4 v3, 0x3

    #@1a
    invoke-direct {v0, v1, v2, v3}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@1d
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_DATA_CRC_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@1f
    .line 93
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@21
    const-string v1, "OTA_RESULT_OTA_WRITE_FLASH_ERR"

    #@23
    const/4 v2, 0x4

    #@24
    invoke-direct {v0, v1, v3, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@27
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_WRITE_FLASH_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@29
    .line 98
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@2b
    const-string v1, "OTA_RESULT_OTA_DATA_UNCOMPLETE"

    #@2d
    const/4 v3, 0x5

    #@2e
    invoke-direct {v0, v1, v2, v3}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@31
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_DATA_UNCOMPLETE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@33
    .line 103
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@35
    const-string v1, "OTA_RESULT_OTA_FLOW_ERR"

    #@37
    const/4 v2, 0x6

    #@38
    invoke-direct {v0, v1, v3, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@3b
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FLOW_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@3d
    .line 108
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@3f
    const-string v1, "OTA_RESULT_OTA_FW_CHECK_ERR"

    #@41
    const/4 v3, 0x7

    #@42
    invoke-direct {v0, v1, v2, v3}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@45
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FW_CHECK_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@47
    .line 113
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@49
    const-string v1, "OTA_RESULT_OTA_VERSION_COMPARE_ERR"

    #@4b
    const/16 v2, 0x8

    #@4d
    invoke-direct {v0, v1, v3, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@50
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_VERSION_COMPARE_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@52
    .line 118
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@54
    const-string v1, "OTA_RESULT_OTA_PDU_LEN_ERR"

    #@56
    const/16 v3, 0x9

    #@58
    invoke-direct {v0, v1, v2, v3}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@5b
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_PDU_LEN_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@5d
    .line 123
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@5f
    const-string v1, "OTA_RESULT_OTA_FIRMWARE_MARK_ERR"

    #@61
    const/16 v2, 0xa

    #@63
    invoke-direct {v0, v1, v3, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@66
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FIRMWARE_MARK_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@68
    .line 128
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@6a
    const-string v1, "OTA_RESULT_OTA_FW_SIZE_ERR"

    #@6c
    const/16 v3, 0xb

    #@6e
    invoke-direct {v0, v1, v2, v3}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@71
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FW_SIZE_ERR:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@73
    .line 133
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@75
    const-string v1, "OTA_RESULT_OTA_DATA_PACKET_TIMEOUT"

    #@77
    const/16 v2, 0xc

    #@79
    invoke-direct {v0, v1, v3, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@7c
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_DATA_PACKET_TIMEOUT:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@7e
    .line 138
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@80
    const-string v1, "OTA_RESULT_OTA_TIMEOUT"

    #@82
    const/16 v3, 0xd

    #@84
    invoke-direct {v0, v1, v2, v3}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@87
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_TIMEOUT:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@89
    .line 143
    new-instance v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@8b
    const-string v1, "OTA_RESULT_OTA_FAIL_DUE_TO_CONNECTION_TERMINATE"

    #@8d
    const/16 v2, 0xe

    #@8f
    invoke-direct {v0, v1, v3, v2}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;-><init>(Ljava/lang/String;II)V

    #@92
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->OTA_RESULT_OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@94
    invoke-static {}, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->$values()[Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@97
    move-result-object v0

    #@98
    sput-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->$VALUES:[Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@9a
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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;
    .registers 2

    #@0
    const-class v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;
    .registers 1

    #@0
    sget-object v0, Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;->$VALUES:[Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/flydigi/sdk/bluetooth/ota/TelinkOtaFactory$OtaResult;

    #@8
    return-object v0
.end method
