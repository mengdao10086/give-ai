.class public final Lcom/flydigi/sdk/waspwing/WaspWingInfo;
.super Ljava/lang/Object;
.source "WaspWingInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flydigi/sdk/waspwing/WaspWingInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008k\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u009b\u00012\u00020\u0001:\u0002\u009b\u0001B\u00ab\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010$J\u000b\u0010j\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010k\u001a\u00020\u000bH\u00c6\u0003J\t\u0010l\u001a\u00020\u000bH\u00c6\u0003J\t\u0010m\u001a\u00020\u000bH\u00c6\u0003J\t\u0010n\u001a\u00020\u0006H\u00c6\u0003J\t\u0010o\u001a\u00020\u000bH\u00c6\u0003J\t\u0010p\u001a\u00020\u000bH\u00c6\u0003J\t\u0010q\u001a\u00020\u000bH\u00c6\u0003J\t\u0010r\u001a\u00020\u000bH\u00c6\u0003J\t\u0010s\u001a\u00020\u000bH\u00c6\u0003J\t\u0010t\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010v\u001a\u00020\u0019H\u00c6\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u001bH\u00c6\u0003J\t\u0010x\u001a\u00020\u0006H\u00c6\u0003J\t\u0010y\u001a\u00020\u0006H\u00c6\u0003J\t\u0010z\u001a\u00020\u001fH\u00c6\u0003J\u0010\u0010{\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010:J\u0010\u0010|\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010:J\t\u0010}\u001a\u00020\u0006H\u00c6\u0003J\u0010\u0010~\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010:J\t\u0010\u007f\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u0080\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\n\u0010\u0082\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u0083\u0001\u001a\u00020\u000bH\u00c6\u0003J\n\u0010\u0084\u0001\u001a\u00020\u000bH\u00c6\u0003J\n\u0010\u0085\u0001\u001a\u00020\u000bH\u00c6\u0003J\u00b6\u0002\u0010\u0086\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\"\u001a\u00020\u00062\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0003\u0010\u0087\u0001J\n\u0010\u0088\u0001\u001a\u00020\u000bH\u00d6\u0001J\u0016\u0010\u0089\u0001\u001a\u00020\u00062\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u00d6\u0003J\u0007\u0010\u008c\u0001\u001a\u00020\u0003J\u0010\u0010\u008d\u0001\u001a\u00020\u00032\u0007\u0010\u008e\u0001\u001a\u00020\u000bJ\u0007\u0010\u008f\u0001\u001a\u00020\u0003J\u0007\u0010\u0090\u0001\u001a\u00020\u000bJ\u0007\u0010\u0091\u0001\u001a\u00020\u000bJ\u0008\u0010\u0092\u0001\u001a\u00030\u0093\u0001J\n\u0010\u0094\u0001\u001a\u00020\u000bH\u00d6\u0001J\n\u0010\u0095\u0001\u001a\u00020\u0003H\u00d6\u0001J\u001e\u0010\u0096\u0001\u001a\u00030\u0097\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u009a\u0001\u001a\u00020\u000bH\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010\u000c\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010\u0013\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010*\"\u0004\u0008.\u0010,R\u001a\u0010\u001c\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010*\"\u0004\u00084\u0010,R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010&\"\u0004\u00086\u0010(R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010&\"\u0004\u00088\u0010(R\u001e\u0010#\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010=\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010&\"\u0004\u0008?\u0010(R\u001a\u0010\u001d\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u00100\"\u0004\u0008A\u00102R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001e\u0010 \u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010=\u001a\u0004\u0008F\u0010:\"\u0004\u0008G\u0010<R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u00100\"\u0004\u0008H\u00102R\u001a\u0010\"\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u00100\"\u0004\u0008I\u00102R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001a\u0010\u0017\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010*\"\u0004\u0008O\u0010,R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u00100\"\u0004\u0008Q\u00102R\u001e\u0010!\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010=\u001a\u0004\u0008R\u0010:\"\u0004\u0008S\u0010<R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u00100\"\u0004\u0008U\u00102R\u001a\u0010\u000f\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010*\"\u0004\u0008W\u0010,R\u001a\u0010\u0014\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010*\"\u0004\u0008Y\u0010,R\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010*\"\u0004\u0008[\u0010,R\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u001a\u0010\r\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010*\"\u0004\u0008a\u0010,R\u001a\u0010\u000e\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010*\"\u0004\u0008c\u0010,R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010*\"\u0004\u0008e\u0010,R\u001a\u0010\u0012\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010*\"\u0004\u0008g\u0010,R\u001a\u0010\u0015\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010*\"\u0004\u0008i\u0010,\u00a8\u0006\u009c\u0001"
    }
    d2 = {
        "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
        "Landroid/os/Parcelable;",
        "deviceName",
        "",
        "address",
        "isConnected",
        "",
        "deviceCode",
        "firmwareVersion",
        "lightState",
        "windLevel",
        "",
        "coldLevel",
        "temperature",
        "temperatureDecimal",
        "runMode",
        "targetTemperature",
        "overClockUsable",
        "windLevelOverclock",
        "coldLevelOverclock",
        "speed",
        "windRunLevel",
        "coldRunLevel",
        "ledType",
        "hotSurfaceTemperature",
        "",
        "ledData",
        "Lcom/flydigi/sdk/waspwing/LedData;",
        "coldProtection",
        "hotProtectionEnabled",
        "tempHistories",
        "",
        "ipType",
        "modeCustom",
        "isExperimentalRunModeOn",
        "experimentalRunModeValue",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)V",
        "getAddress",
        "()Ljava/lang/String;",
        "setAddress",
        "(Ljava/lang/String;)V",
        "getColdLevel",
        "()I",
        "setColdLevel",
        "(I)V",
        "getColdLevelOverclock",
        "setColdLevelOverclock",
        "getColdProtection",
        "()Z",
        "setColdProtection",
        "(Z)V",
        "getColdRunLevel",
        "setColdRunLevel",
        "getDeviceCode",
        "setDeviceCode",
        "getDeviceName",
        "setDeviceName",
        "getExperimentalRunModeValue",
        "()Ljava/lang/Integer;",
        "setExperimentalRunModeValue",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getFirmwareVersion",
        "setFirmwareVersion",
        "getHotProtectionEnabled",
        "setHotProtectionEnabled",
        "getHotSurfaceTemperature",
        "()B",
        "setHotSurfaceTemperature",
        "(B)V",
        "getIpType",
        "setIpType",
        "setConnected",
        "setExperimentalRunModeOn",
        "getLedData",
        "()Lcom/flydigi/sdk/waspwing/LedData;",
        "setLedData",
        "(Lcom/flydigi/sdk/waspwing/LedData;)V",
        "getLedType",
        "setLedType",
        "getLightState",
        "setLightState",
        "getModeCustom",
        "setModeCustom",
        "getOverClockUsable",
        "setOverClockUsable",
        "getRunMode",
        "setRunMode",
        "getSpeed",
        "setSpeed",
        "getTargetTemperature",
        "setTargetTemperature",
        "getTempHistories",
        "()[B",
        "setTempHistories",
        "([B)V",
        "getTemperature",
        "setTemperature",
        "getTemperatureDecimal",
        "setTemperatureDecimal",
        "getWindLevel",
        "setWindLevel",
        "getWindLevelOverclock",
        "setWindLevelOverclock",
        "getWindRunLevel",
        "setWindRunLevel",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
        "describeContents",
        "equals",
        "other",
        "",
        "getReadableCold",
        "getReadableLevel",
        "pwm",
        "getReadableWind",
        "getRealColdLevel",
        "getRealWindLevel",
        "getRunModeSmartLevel",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "sdk_waspwing_release"
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
            "Lcom/flydigi/sdk/waspwing/WaspWingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/flydigi/sdk/waspwing/WaspWingInfo$Companion;

.field public static final DEFAULT_COLD_LEVEL:I = 0x73

.field public static final DEFAULT_COLD_LEVEL_OVERCLOCK_MAX:I = 0x86

.field public static final DEFAULT_COLD_LEVEL_OVERCLOCK_MIDDLE:I = 0x99

.field public static final DEFAULT_COLD_LEVEL_OVERCLOCK_MIN:I = 0xad

.field public static final DEFAULT_WIND_LEVEL_MAX:I = 0x4d

.field public static final DEFAULT_WIND_LEVEL_MIDDLE:I = 0x5f

.field public static final DEFAULT_WIND_LEVEL_MIN:I = 0x73

.field public static final DEFAULT_WIND_LEVEL_OVERCLOCK_MAX:I = 0x4d

.field public static final DEFAULT_WIND_LEVEL_OVERCLOCK_MIDDLE:I = 0x5f

.field public static final DEFAULT_WIND_LEVEL_OVERCLOCK_MIN:I = 0x86

.field public static final EXPERIMENTAL_RUN_MODE_COLD_LEVEL:I = 0xe6

.field public static final EXPERIMENTAL_RUN_MODE_WIND_LEVEL:I = 0x1644

.field public static final LED_OFF:I = 0x0

.field public static final LED_ON:I = 0x1

.field public static final SPEED_MAX:I = 0xff

.field public static final SPEED_MAX_B5:I = 0x73

.field public static final SPEED_MIN_B3:I = 0x78

.field public static final SPEED_MIN_B5:I = 0x39

.field public static final TEMPERATURE_MIDDLE:I = 0x12

.field public static final TEMPERATURE_MIN:I = 0x10

.field public static final WIND_LEVEL_MAX:I = 0x157c

.field public static final WIND_LEVEL_MIN:I = 0xfa0


# instance fields
.field private address:Ljava/lang/String;

.field private coldLevel:I

.field private coldLevelOverclock:I

.field private coldProtection:Z

.field private coldRunLevel:I

.field private deviceCode:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private experimentalRunModeValue:Ljava/lang/Integer;

.field private firmwareVersion:Ljava/lang/String;

.field private hotProtectionEnabled:Z

.field private hotSurfaceTemperature:B

.field private ipType:Ljava/lang/Integer;

.field private isConnected:Z

.field private isExperimentalRunModeOn:Z

.field private ledData:Lcom/flydigi/sdk/waspwing/LedData;

.field private ledType:I

.field private lightState:Z

.field private modeCustom:Ljava/lang/Integer;

.field private overClockUsable:Z

.field private runMode:I

.field private speed:I

.field private targetTemperature:I

.field private tempHistories:[B

.field private temperature:I

.field private temperatureDecimal:I

.field private windLevel:I

.field private windLevelOverclock:I

.field private windRunLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/flydigi/sdk/waspwing/WaspWingInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->Companion:Lcom/flydigi/sdk/waspwing/WaspWingInfo$Companion;

    #@8
    new-instance v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo$Creator;

    #@a
    invoke-direct {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo$Creator;-><init>()V

    #@d
    check-cast v0, Landroid/os/Parcelable$Creator;

    #@f
    sput-object v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11
    return-void
.end method

.method public constructor <init>()V
    .registers 32

    #@0
    move-object/from16 v0, p0

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    const/4 v7, 0x0

    #@9
    const/4 v8, 0x0

    #@a
    const/4 v9, 0x0

    #@b
    const/4 v10, 0x0

    #@c
    const/4 v11, 0x0

    #@d
    const/4 v12, 0x0

    #@e
    const/4 v13, 0x0

    #@f
    const/4 v14, 0x0

    #@10
    const/4 v15, 0x0

    #@11
    const/16 v16, 0x0

    #@13
    const/16 v17, 0x0

    #@15
    const/16 v18, 0x0

    #@17
    const/16 v19, 0x0

    #@19
    const/16 v20, 0x0

    #@1b
    const/16 v21, 0x0

    #@1d
    const/16 v22, 0x0

    #@1f
    const/16 v23, 0x0

    #@21
    const/16 v24, 0x0

    #@23
    const/16 v25, 0x0

    #@25
    const/16 v26, 0x0

    #@27
    const/16 v27, 0x0

    #@29
    const/16 v28, 0x0

    #@2b
    const v29, 0xfffffff

    #@2e
    const/16 v30, 0x0

    #@30
    invoke-direct/range {v0 .. v30}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)V
    .registers 33

    #@0
    move-object v0, p0

    #@1
    move-object v1, p4

    #@2
    move-object/from16 v2, p24

    #@4
    const-string v3, "deviceCode"

    #@6
    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@9
    const-string v3, "tempHistories"

    #@b
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@e
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@11
    move-object v3, p1

    #@12
    .line 13
    iput-object v3, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@14
    move-object v3, p2

    #@15
    .line 14
    iput-object v3, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@17
    move v3, p3

    #@18
    .line 15
    iput-boolean v3, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@1a
    .line 16
    iput-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@1c
    move-object v1, p5

    #@1d
    .line 17
    iput-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@1f
    move v1, p6

    #@20
    .line 18
    iput-boolean v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@22
    move v1, p7

    #@23
    .line 19
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@25
    move v1, p8

    #@26
    .line 20
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@28
    move v1, p9

    #@29
    .line 21
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@2b
    move v1, p10

    #@2c
    .line 22
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@2e
    move v1, p11

    #@2f
    .line 23
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@31
    move/from16 v1, p12

    #@33
    .line 24
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@35
    move/from16 v1, p13

    #@37
    .line 25
    iput-boolean v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@39
    move/from16 v1, p14

    #@3b
    .line 26
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@3d
    move/from16 v1, p15

    #@3f
    .line 27
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@41
    move/from16 v1, p16

    #@43
    .line 28
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@45
    move/from16 v1, p17

    #@47
    .line 29
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@49
    move/from16 v1, p18

    #@4b
    .line 30
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@4d
    move/from16 v1, p19

    #@4f
    .line 31
    iput v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@51
    move/from16 v1, p20

    #@53
    .line 32
    iput-byte v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@55
    move-object/from16 v1, p21

    #@57
    .line 33
    iput-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@59
    move/from16 v1, p22

    #@5b
    .line 34
    iput-boolean v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@5d
    move/from16 v1, p23

    #@5f
    .line 35
    iput-boolean v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@61
    .line 36
    iput-object v2, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@63
    move-object/from16 v1, p25

    #@65
    .line 37
    iput-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@67
    move-object/from16 v1, p26

    #@69
    .line 38
    iput-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@6b
    move/from16 v1, p27

    #@6d
    .line 39
    iput-boolean v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@6f
    move-object/from16 v1, p28

    #@71
    .line 40
    iput-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@73
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 60

    #@0
    move/from16 v0, p29

    #@2
    and-int/lit8 v1, v0, 0x1

    #@4
    if-eqz v1, :cond_8

    #@6
    const/4 v1, 0x0

    #@7
    goto :goto_a

    #@8
    :cond_8
    move-object/from16 v1, p1

    #@a
    :goto_a
    and-int/lit8 v3, v0, 0x2

    #@c
    if-eqz v3, :cond_10

    #@e
    const/4 v3, 0x0

    #@f
    goto :goto_12

    #@10
    :cond_10
    move-object/from16 v3, p2

    #@12
    :goto_12
    and-int/lit8 v4, v0, 0x4

    #@14
    if-eqz v4, :cond_18

    #@16
    const/4 v4, 0x0

    #@17
    goto :goto_1a

    #@18
    :cond_18
    move/from16 v4, p3

    #@1a
    :goto_1a
    and-int/lit8 v6, v0, 0x8

    #@1c
    if-eqz v6, :cond_21

    #@1e
    const-string v6, "all"

    #@20
    goto :goto_23

    #@21
    :cond_21
    move-object/from16 v6, p4

    #@23
    :goto_23
    and-int/lit8 v7, v0, 0x10

    #@25
    if-eqz v7, :cond_29

    #@27
    const/4 v7, 0x0

    #@28
    goto :goto_2b

    #@29
    :cond_29
    move-object/from16 v7, p5

    #@2b
    :goto_2b
    and-int/lit8 v8, v0, 0x20

    #@2d
    if-eqz v8, :cond_31

    #@2f
    const/4 v8, 0x0

    #@30
    goto :goto_33

    #@31
    :cond_31
    move/from16 v8, p6

    #@33
    :goto_33
    and-int/lit8 v9, v0, 0x40

    #@35
    if-eqz v9, :cond_39

    #@37
    const/4 v9, 0x0

    #@38
    goto :goto_3b

    #@39
    :cond_39
    move/from16 v9, p7

    #@3b
    :goto_3b
    and-int/lit16 v10, v0, 0x80

    #@3d
    if-eqz v10, :cond_41

    #@3f
    const/4 v10, 0x0

    #@40
    goto :goto_43

    #@41
    :cond_41
    move/from16 v10, p8

    #@43
    :goto_43
    and-int/lit16 v11, v0, 0x100

    #@45
    if-eqz v11, :cond_49

    #@47
    const/4 v11, 0x0

    #@48
    goto :goto_4b

    #@49
    :cond_49
    move/from16 v11, p9

    #@4b
    :goto_4b
    and-int/lit16 v12, v0, 0x200

    #@4d
    if-eqz v12, :cond_51

    #@4f
    const/4 v12, 0x0

    #@50
    goto :goto_53

    #@51
    :cond_51
    move/from16 v12, p10

    #@53
    :goto_53
    and-int/lit16 v13, v0, 0x400

    #@55
    if-eqz v13, :cond_59

    #@57
    const/4 v13, 0x1

    #@58
    goto :goto_5b

    #@59
    :cond_59
    move/from16 v13, p11

    #@5b
    :goto_5b
    and-int/lit16 v15, v0, 0x800

    #@5d
    if-eqz v15, :cond_61

    #@5f
    const/4 v15, 0x0

    #@60
    goto :goto_63

    #@61
    :cond_61
    move/from16 v15, p12

    #@63
    :goto_63
    and-int/lit16 v2, v0, 0x1000

    #@65
    if-eqz v2, :cond_69

    #@67
    const/4 v2, 0x0

    #@68
    goto :goto_6b

    #@69
    :cond_69
    move/from16 v2, p13

    #@6b
    :goto_6b
    and-int/lit16 v14, v0, 0x2000

    #@6d
    if-eqz v14, :cond_71

    #@6f
    const/4 v14, 0x0

    #@70
    goto :goto_73

    #@71
    :cond_71
    move/from16 v14, p14

    #@73
    :goto_73
    and-int/lit16 v5, v0, 0x4000

    #@75
    if-eqz v5, :cond_79

    #@77
    const/4 v5, 0x0

    #@78
    goto :goto_7b

    #@79
    :cond_79
    move/from16 v5, p15

    #@7b
    :goto_7b
    const v16, 0x8000

    #@7e
    and-int v16, v0, v16

    #@80
    if-eqz v16, :cond_85

    #@82
    const/16 v16, 0x0

    #@84
    goto :goto_87

    #@85
    :cond_85
    move/from16 v16, p16

    #@87
    :goto_87
    const/high16 v17, 0x10000

    #@89
    and-int v17, v0, v17

    #@8b
    if-eqz v17, :cond_90

    #@8d
    const/16 v17, 0x0

    #@8f
    goto :goto_92

    #@90
    :cond_90
    move/from16 v17, p17

    #@92
    :goto_92
    const/high16 v18, 0x20000

    #@94
    and-int v18, v0, v18

    #@96
    if-eqz v18, :cond_9b

    #@98
    const/16 v18, 0x0

    #@9a
    goto :goto_9d

    #@9b
    :cond_9b
    move/from16 v18, p18

    #@9d
    :goto_9d
    const/high16 v19, 0x40000

    #@9f
    and-int v19, v0, v19

    #@a1
    if-eqz v19, :cond_a6

    #@a3
    const/16 v19, 0x0

    #@a5
    goto :goto_a8

    #@a6
    :cond_a6
    move/from16 v19, p19

    #@a8
    :goto_a8
    const/high16 v20, 0x80000

    #@aa
    and-int v20, v0, v20

    #@ac
    if-eqz v20, :cond_b1

    #@ae
    const/16 v20, 0x0

    #@b0
    goto :goto_b3

    #@b1
    :cond_b1
    move/from16 v20, p20

    #@b3
    :goto_b3
    const/high16 v21, 0x100000

    #@b5
    and-int v21, v0, v21

    #@b7
    if-eqz v21, :cond_bc

    #@b9
    const/16 v21, 0x0

    #@bb
    goto :goto_be

    #@bc
    :cond_bc
    move-object/from16 v21, p21

    #@be
    :goto_be
    const/high16 v22, 0x200000

    #@c0
    and-int v22, v0, v22

    #@c2
    if-eqz v22, :cond_c7

    #@c4
    const/16 v22, 0x1

    #@c6
    goto :goto_c9

    #@c7
    :cond_c7
    move/from16 v22, p22

    #@c9
    :goto_c9
    const/high16 v23, 0x400000

    #@cb
    and-int v23, v0, v23

    #@cd
    if-eqz v23, :cond_d2

    #@cf
    const/16 v23, 0x0

    #@d1
    goto :goto_d4

    #@d2
    :cond_d2
    move/from16 v23, p23

    #@d4
    :goto_d4
    const/high16 v24, 0x800000

    #@d6
    and-int v24, v0, v24

    #@d8
    move/from16 p30, v5

    #@da
    if-eqz v24, :cond_e2

    #@dc
    move/from16 v24, v14

    #@de
    const/4 v5, 0x0

    #@df
    new-array v14, v5, [B

    #@e1
    goto :goto_e7

    #@e2
    :cond_e2
    move/from16 v24, v14

    #@e4
    const/4 v5, 0x0

    #@e5
    move-object/from16 v14, p24

    #@e7
    :goto_e7
    const/high16 v25, 0x1000000

    #@e9
    and-int v25, v0, v25

    #@eb
    if-eqz v25, :cond_f2

    #@ed
    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f0
    move-result-object v25

    #@f1
    goto :goto_f4

    #@f2
    :cond_f2
    move-object/from16 v25, p25

    #@f4
    :goto_f4
    const/high16 v26, 0x2000000

    #@f6
    and-int v26, v0, v26

    #@f8
    if-eqz v26, :cond_ff

    #@fa
    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fd
    move-result-object v26

    #@fe
    goto :goto_101

    #@ff
    :cond_ff
    move-object/from16 v26, p26

    #@101
    :goto_101
    const/high16 v27, 0x4000000

    #@103
    and-int v27, v0, v27

    #@105
    if-eqz v27, :cond_10a

    #@107
    move/from16 v27, v5

    #@109
    goto :goto_10c

    #@10a
    :cond_10a
    move/from16 v27, p27

    #@10c
    :goto_10c
    const/high16 v28, 0x8000000

    #@10e
    and-int v0, v0, v28

    #@110
    if-eqz v0, :cond_117

    #@112
    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@115
    move-result-object v0

    #@116
    goto :goto_119

    #@117
    :cond_117
    move-object/from16 v0, p28

    #@119
    :goto_119
    move-object/from16 p1, p0

    #@11b
    move-object/from16 p2, v1

    #@11d
    move-object/from16 p3, v3

    #@11f
    move/from16 p4, v4

    #@121
    move-object/from16 p5, v6

    #@123
    move-object/from16 p6, v7

    #@125
    move/from16 p7, v8

    #@127
    move/from16 p8, v9

    #@129
    move/from16 p9, v10

    #@12b
    move/from16 p10, v11

    #@12d
    move/from16 p11, v12

    #@12f
    move/from16 p12, v13

    #@131
    move/from16 p13, v15

    #@133
    move/from16 p14, v2

    #@135
    move/from16 p15, v24

    #@137
    move/from16 p16, p30

    #@139
    move/from16 p17, v16

    #@13b
    move/from16 p18, v17

    #@13d
    move/from16 p19, v18

    #@13f
    move/from16 p20, v19

    #@141
    move/from16 p21, v20

    #@143
    move-object/from16 p22, v21

    #@145
    move/from16 p23, v22

    #@147
    move/from16 p24, v23

    #@149
    move-object/from16 p25, v14

    #@14b
    move-object/from16 p26, v25

    #@14d
    move-object/from16 p27, v26

    #@14f
    move/from16 p28, v27

    #@151
    move-object/from16 p29, v0

    #@153
    .line 12
    invoke-direct/range {p1 .. p29}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)V

    #@156
    return-void
.end method

.method public static final convertFromDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    sget-object v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->Companion:Lcom/flydigi/sdk/waspwing/WaspWingInfo$Companion;

    #@2
    invoke-virtual {v0, p0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo$Companion;->convertFromDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static synthetic copy$default(Lcom/flydigi/sdk/waspwing/WaspWingInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;
    .registers 48

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p29

    #@4
    and-int/lit8 v2, v1, 0x1

    #@6
    if-eqz v2, :cond_b

    #@8
    iget-object v2, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@a
    goto :goto_d

    #@b
    :cond_b
    move-object/from16 v2, p1

    #@d
    :goto_d
    and-int/lit8 v3, v1, 0x2

    #@f
    if-eqz v3, :cond_14

    #@11
    iget-object v3, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@13
    goto :goto_16

    #@14
    :cond_14
    move-object/from16 v3, p2

    #@16
    :goto_16
    and-int/lit8 v4, v1, 0x4

    #@18
    if-eqz v4, :cond_1d

    #@1a
    iget-boolean v4, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@1c
    goto :goto_1f

    #@1d
    :cond_1d
    move/from16 v4, p3

    #@1f
    :goto_1f
    and-int/lit8 v5, v1, 0x8

    #@21
    if-eqz v5, :cond_26

    #@23
    iget-object v5, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@25
    goto :goto_28

    #@26
    :cond_26
    move-object/from16 v5, p4

    #@28
    :goto_28
    and-int/lit8 v6, v1, 0x10

    #@2a
    if-eqz v6, :cond_2f

    #@2c
    iget-object v6, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@2e
    goto :goto_31

    #@2f
    :cond_2f
    move-object/from16 v6, p5

    #@31
    :goto_31
    and-int/lit8 v7, v1, 0x20

    #@33
    if-eqz v7, :cond_38

    #@35
    iget-boolean v7, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@37
    goto :goto_3a

    #@38
    :cond_38
    move/from16 v7, p6

    #@3a
    :goto_3a
    and-int/lit8 v8, v1, 0x40

    #@3c
    if-eqz v8, :cond_41

    #@3e
    iget v8, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@40
    goto :goto_43

    #@41
    :cond_41
    move/from16 v8, p7

    #@43
    :goto_43
    and-int/lit16 v9, v1, 0x80

    #@45
    if-eqz v9, :cond_4a

    #@47
    iget v9, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@49
    goto :goto_4c

    #@4a
    :cond_4a
    move/from16 v9, p8

    #@4c
    :goto_4c
    and-int/lit16 v10, v1, 0x100

    #@4e
    if-eqz v10, :cond_53

    #@50
    iget v10, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@52
    goto :goto_55

    #@53
    :cond_53
    move/from16 v10, p9

    #@55
    :goto_55
    and-int/lit16 v11, v1, 0x200

    #@57
    if-eqz v11, :cond_5c

    #@59
    iget v11, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@5b
    goto :goto_5e

    #@5c
    :cond_5c
    move/from16 v11, p10

    #@5e
    :goto_5e
    and-int/lit16 v12, v1, 0x400

    #@60
    if-eqz v12, :cond_65

    #@62
    iget v12, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@64
    goto :goto_67

    #@65
    :cond_65
    move/from16 v12, p11

    #@67
    :goto_67
    and-int/lit16 v13, v1, 0x800

    #@69
    if-eqz v13, :cond_6e

    #@6b
    iget v13, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@6d
    goto :goto_70

    #@6e
    :cond_6e
    move/from16 v13, p12

    #@70
    :goto_70
    and-int/lit16 v14, v1, 0x1000

    #@72
    if-eqz v14, :cond_77

    #@74
    iget-boolean v14, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@76
    goto :goto_79

    #@77
    :cond_77
    move/from16 v14, p13

    #@79
    :goto_79
    and-int/lit16 v15, v1, 0x2000

    #@7b
    if-eqz v15, :cond_80

    #@7d
    iget v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@7f
    goto :goto_82

    #@80
    :cond_80
    move/from16 v15, p14

    #@82
    :goto_82
    move/from16 p14, v15

    #@84
    and-int/lit16 v15, v1, 0x4000

    #@86
    if-eqz v15, :cond_8b

    #@88
    iget v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@8a
    goto :goto_8d

    #@8b
    :cond_8b
    move/from16 v15, p15

    #@8d
    :goto_8d
    const v16, 0x8000

    #@90
    and-int v16, v1, v16

    #@92
    move/from16 p15, v15

    #@94
    if-eqz v16, :cond_99

    #@96
    iget v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@98
    goto :goto_9b

    #@99
    :cond_99
    move/from16 v15, p16

    #@9b
    :goto_9b
    const/high16 v16, 0x10000

    #@9d
    and-int v16, v1, v16

    #@9f
    move/from16 p16, v15

    #@a1
    if-eqz v16, :cond_a6

    #@a3
    iget v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@a5
    goto :goto_a8

    #@a6
    :cond_a6
    move/from16 v15, p17

    #@a8
    :goto_a8
    const/high16 v16, 0x20000

    #@aa
    and-int v16, v1, v16

    #@ac
    move/from16 p17, v15

    #@ae
    if-eqz v16, :cond_b3

    #@b0
    iget v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@b2
    goto :goto_b5

    #@b3
    :cond_b3
    move/from16 v15, p18

    #@b5
    :goto_b5
    const/high16 v16, 0x40000

    #@b7
    and-int v16, v1, v16

    #@b9
    move/from16 p18, v15

    #@bb
    if-eqz v16, :cond_c0

    #@bd
    iget v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@bf
    goto :goto_c2

    #@c0
    :cond_c0
    move/from16 v15, p19

    #@c2
    :goto_c2
    const/high16 v16, 0x80000

    #@c4
    and-int v16, v1, v16

    #@c6
    move/from16 p19, v15

    #@c8
    if-eqz v16, :cond_cd

    #@ca
    iget-byte v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@cc
    goto :goto_cf

    #@cd
    :cond_cd
    move/from16 v15, p20

    #@cf
    :goto_cf
    const/high16 v16, 0x100000

    #@d1
    and-int v16, v1, v16

    #@d3
    move/from16 p20, v15

    #@d5
    if-eqz v16, :cond_da

    #@d7
    iget-object v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@d9
    goto :goto_dc

    #@da
    :cond_da
    move-object/from16 v15, p21

    #@dc
    :goto_dc
    const/high16 v16, 0x200000

    #@de
    and-int v16, v1, v16

    #@e0
    move-object/from16 p21, v15

    #@e2
    if-eqz v16, :cond_e7

    #@e4
    iget-boolean v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@e6
    goto :goto_e9

    #@e7
    :cond_e7
    move/from16 v15, p22

    #@e9
    :goto_e9
    const/high16 v16, 0x400000

    #@eb
    and-int v16, v1, v16

    #@ed
    move/from16 p22, v15

    #@ef
    if-eqz v16, :cond_f4

    #@f1
    iget-boolean v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@f3
    goto :goto_f6

    #@f4
    :cond_f4
    move/from16 v15, p23

    #@f6
    :goto_f6
    const/high16 v16, 0x800000

    #@f8
    and-int v16, v1, v16

    #@fa
    move/from16 p23, v15

    #@fc
    if-eqz v16, :cond_101

    #@fe
    iget-object v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@100
    goto :goto_103

    #@101
    :cond_101
    move-object/from16 v15, p24

    #@103
    :goto_103
    const/high16 v16, 0x1000000

    #@105
    and-int v16, v1, v16

    #@107
    move-object/from16 p24, v15

    #@109
    if-eqz v16, :cond_10e

    #@10b
    iget-object v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@10d
    goto :goto_110

    #@10e
    :cond_10e
    move-object/from16 v15, p25

    #@110
    :goto_110
    const/high16 v16, 0x2000000

    #@112
    and-int v16, v1, v16

    #@114
    move-object/from16 p25, v15

    #@116
    if-eqz v16, :cond_11b

    #@118
    iget-object v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@11a
    goto :goto_11d

    #@11b
    :cond_11b
    move-object/from16 v15, p26

    #@11d
    :goto_11d
    const/high16 v16, 0x4000000

    #@11f
    and-int v16, v1, v16

    #@121
    move-object/from16 p26, v15

    #@123
    if-eqz v16, :cond_128

    #@125
    iget-boolean v15, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@127
    goto :goto_12a

    #@128
    :cond_128
    move/from16 v15, p27

    #@12a
    :goto_12a
    const/high16 v16, 0x8000000

    #@12c
    and-int v1, v1, v16

    #@12e
    if-eqz v1, :cond_133

    #@130
    iget-object v1, v0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@132
    goto :goto_135

    #@133
    :cond_133
    move-object/from16 v1, p28

    #@135
    :goto_135
    move-object/from16 p1, v2

    #@137
    move-object/from16 p2, v3

    #@139
    move/from16 p3, v4

    #@13b
    move-object/from16 p4, v5

    #@13d
    move-object/from16 p5, v6

    #@13f
    move/from16 p6, v7

    #@141
    move/from16 p7, v8

    #@143
    move/from16 p8, v9

    #@145
    move/from16 p9, v10

    #@147
    move/from16 p10, v11

    #@149
    move/from16 p11, v12

    #@14b
    move/from16 p12, v13

    #@14d
    move/from16 p13, v14

    #@14f
    move/from16 p27, v15

    #@151
    move-object/from16 p28, v1

    #@153
    invoke-virtual/range {p0 .. p28}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@156
    move-result-object v0

    #@157
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final component10()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@2
    return v0
.end method

.method public final component11()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@2
    return v0
.end method

.method public final component12()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@2
    return v0
.end method

.method public final component13()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@2
    return v0
.end method

.method public final component14()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@2
    return v0
.end method

.method public final component15()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@2
    return v0
.end method

.method public final component16()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@2
    return v0
.end method

.method public final component17()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@2
    return v0
.end method

.method public final component18()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@2
    return v0
.end method

.method public final component19()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@2
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final component20()B
    .registers 2

    #@0
    iget-byte v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@2
    return v0
.end method

.method public final component21()Lcom/flydigi/sdk/waspwing/LedData;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@2
    return-object v0
.end method

.method public final component22()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@2
    return v0
.end method

.method public final component23()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@2
    return v0
.end method

.method public final component24()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@2
    return-object v0
.end method

.method public final component25()Ljava/lang/Integer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public final component26()Ljava/lang/Integer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public final component27()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@2
    return v0
.end method

.method public final component28()Ljava/lang/Integer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public final component3()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@2
    return v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final component6()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@2
    return v0
.end method

.method public final component7()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@2
    return v0
.end method

.method public final component8()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@2
    return v0
.end method

.method public final component9()I
    .registers 2

    #@0
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@2
    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)Lcom/flydigi/sdk/waspwing/WaspWingInfo;
    .registers 59

    #@0
    move-object/from16 v1, p1

    #@2
    move-object/from16 v2, p2

    #@4
    move/from16 v3, p3

    #@6
    move-object/from16 v4, p4

    #@8
    move-object/from16 v5, p5

    #@a
    move/from16 v6, p6

    #@c
    move/from16 v7, p7

    #@e
    move/from16 v8, p8

    #@10
    move/from16 v9, p9

    #@12
    move/from16 v10, p10

    #@14
    move/from16 v11, p11

    #@16
    move/from16 v12, p12

    #@18
    move/from16 v13, p13

    #@1a
    move/from16 v14, p14

    #@1c
    move/from16 v15, p15

    #@1e
    move/from16 v16, p16

    #@20
    move/from16 v17, p17

    #@22
    move/from16 v18, p18

    #@24
    move/from16 v19, p19

    #@26
    move/from16 v20, p20

    #@28
    move-object/from16 v21, p21

    #@2a
    move/from16 v22, p22

    #@2c
    move/from16 v23, p23

    #@2e
    move-object/from16 v24, p24

    #@30
    move-object/from16 v25, p25

    #@32
    move-object/from16 v26, p26

    #@34
    move/from16 v27, p27

    #@36
    move-object/from16 v28, p28

    #@38
    const-string v0, "deviceCode"

    #@3a
    move-object/from16 v1, p4

    #@3c
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@3f
    const-string v0, "tempHistories"

    #@41
    move-object/from16 v1, p24

    #@43
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@46
    new-instance v29, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@48
    move-object/from16 v0, v29

    #@4a
    move-object/from16 v1, p1

    #@4c
    invoke-direct/range {v0 .. v28}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIIIZIIIIIIBLcom/flydigi/sdk/waspwing/LedData;ZZ[BLjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)V

    #@4f
    return-object v29
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    instance-of v1, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    :cond_a
    check-cast p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@c
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@e
    iget-object v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@19
    iget-object v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@24
    iget-boolean v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@26
    if-eq v1, v3, :cond_29

    #@28
    return v2

    #@29
    :cond_29
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@2b
    iget-object v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@36
    iget-object v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_3f

    #@3e
    return v2

    #@3f
    :cond_3f
    iget-boolean v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@41
    iget-boolean v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@43
    if-eq v1, v3, :cond_46

    #@45
    return v2

    #@46
    :cond_46
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@48
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@4a
    if-eq v1, v3, :cond_4d

    #@4c
    return v2

    #@4d
    :cond_4d
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@4f
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@51
    if-eq v1, v3, :cond_54

    #@53
    return v2

    #@54
    :cond_54
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@56
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@58
    if-eq v1, v3, :cond_5b

    #@5a
    return v2

    #@5b
    :cond_5b
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@5d
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@5f
    if-eq v1, v3, :cond_62

    #@61
    return v2

    #@62
    :cond_62
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@64
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@66
    if-eq v1, v3, :cond_69

    #@68
    return v2

    #@69
    :cond_69
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@6b
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@6d
    if-eq v1, v3, :cond_70

    #@6f
    return v2

    #@70
    :cond_70
    iget-boolean v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@72
    iget-boolean v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@74
    if-eq v1, v3, :cond_77

    #@76
    return v2

    #@77
    :cond_77
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@79
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@7b
    if-eq v1, v3, :cond_7e

    #@7d
    return v2

    #@7e
    :cond_7e
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@80
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@82
    if-eq v1, v3, :cond_85

    #@84
    return v2

    #@85
    :cond_85
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@87
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@89
    if-eq v1, v3, :cond_8c

    #@8b
    return v2

    #@8c
    :cond_8c
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@8e
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@90
    if-eq v1, v3, :cond_93

    #@92
    return v2

    #@93
    :cond_93
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@95
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@97
    if-eq v1, v3, :cond_9a

    #@99
    return v2

    #@9a
    :cond_9a
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@9c
    iget v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@9e
    if-eq v1, v3, :cond_a1

    #@a0
    return v2

    #@a1
    :cond_a1
    iget-byte v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@a3
    iget-byte v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@a5
    if-eq v1, v3, :cond_a8

    #@a7
    return v2

    #@a8
    :cond_a8
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@aa
    iget-object v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@ac
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@af
    move-result v1

    #@b0
    if-nez v1, :cond_b3

    #@b2
    return v2

    #@b3
    :cond_b3
    iget-boolean v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@b5
    iget-boolean v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@b7
    if-eq v1, v3, :cond_ba

    #@b9
    return v2

    #@ba
    :cond_ba
    iget-boolean v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@bc
    iget-boolean v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@be
    if-eq v1, v3, :cond_c1

    #@c0
    return v2

    #@c1
    :cond_c1
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@c3
    iget-object v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@c5
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c8
    move-result v1

    #@c9
    if-nez v1, :cond_cc

    #@cb
    return v2

    #@cc
    :cond_cc
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@ce
    iget-object v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@d0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d3
    move-result v1

    #@d4
    if-nez v1, :cond_d7

    #@d6
    return v2

    #@d7
    :cond_d7
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@d9
    iget-object v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@db
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@de
    move-result v1

    #@df
    if-nez v1, :cond_e2

    #@e1
    return v2

    #@e2
    :cond_e2
    iget-boolean v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@e4
    iget-boolean v3, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@e6
    if-eq v1, v3, :cond_e9

    #@e8
    return v2

    #@e9
    :cond_e9
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@eb
    iget-object p1, p1, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@ed
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f0
    move-result p1

    #@f1
    if-nez p1, :cond_f4

    #@f3
    return v2

    #@f4
    :cond_f4
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .registers 2

    #@0
    .line 14
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getColdLevel()I
    .registers 2

    #@0
    .line 20
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@2
    return v0
.end method

.method public final getColdLevelOverclock()I
    .registers 2

    #@0
    .line 27
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@2
    return v0
.end method

.method public final getColdProtection()Z
    .registers 2

    #@0
    .line 34
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@2
    return v0
.end method

.method public final getColdRunLevel()I
    .registers 2

    #@0
    .line 30
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@2
    return v0
.end method

.method public final getDeviceCode()Ljava/lang/String;
    .registers 2

    #@0
    .line 16
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .registers 2

    #@0
    .line 13
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getExperimentalRunModeValue()Ljava/lang/Integer;
    .registers 2

    #@0
    .line 40
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public final getFirmwareVersion()Ljava/lang/String;
    .registers 2

    #@0
    .line 17
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getHotProtectionEnabled()Z
    .registers 2

    #@0
    .line 35
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@2
    return v0
.end method

.method public final getHotSurfaceTemperature()B
    .registers 2

    #@0
    .line 32
    iget-byte v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@2
    return v0
.end method

.method public final getIpType()Ljava/lang/Integer;
    .registers 2

    #@0
    .line 37
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public final getLedData()Lcom/flydigi/sdk/waspwing/LedData;
    .registers 2

    #@0
    .line 33
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@2
    return-object v0
.end method

.method public final getLedType()I
    .registers 2

    #@0
    .line 31
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@2
    return v0
.end method

.method public final getLightState()Z
    .registers 2

    #@0
    .line 18
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@2
    return v0
.end method

.method public final getModeCustom()Ljava/lang/Integer;
    .registers 2

    #@0
    .line 38
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public final getOverClockUsable()Z
    .registers 2

    #@0
    .line 25
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@2
    return v0
.end method

.method public final getReadableCold()Ljava/lang/String;
    .registers 3

    #@0
    .line 108
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@2
    if-eqz v0, :cond_48

    #@4
    const/16 v1, 0x13

    #@6
    if-eq v0, v1, :cond_45

    #@8
    const/16 v1, 0x26

    #@a
    if-eq v0, v1, :cond_42

    #@c
    const/16 v1, 0x39

    #@e
    if-eq v0, v1, :cond_3f

    #@10
    const/16 v1, 0x4d

    #@12
    if-eq v0, v1, :cond_3c

    #@14
    const/16 v1, 0x5f

    #@16
    if-eq v0, v1, :cond_39

    #@18
    const/16 v1, 0x73

    #@1a
    if-eq v0, v1, :cond_36

    #@1c
    const/16 v1, 0x86

    #@1e
    if-eq v0, v1, :cond_33

    #@20
    const/16 v1, 0x99

    #@22
    if-eq v0, v1, :cond_30

    #@24
    const/16 v1, 0xad

    #@26
    if-eq v0, v1, :cond_2d

    #@28
    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    goto :goto_4a

    #@2d
    :cond_2d
    const-string v0, "5.5V"

    #@2f
    goto :goto_4a

    #@30
    :cond_30
    const-string v0, "5.0V"

    #@32
    goto :goto_4a

    #@33
    :cond_33
    const-string v0, "4.5V"

    #@35
    goto :goto_4a

    #@36
    :cond_36
    const-string v0, "4.0V"

    #@38
    goto :goto_4a

    #@39
    :cond_39
    const-string v0, "3.5V"

    #@3b
    goto :goto_4a

    #@3c
    :cond_3c
    const-string v0, "3.0V"

    #@3e
    goto :goto_4a

    #@3f
    :cond_3f
    const-string v0, "2.5V"

    #@41
    goto :goto_4a

    #@42
    :cond_42
    const-string v0, "2.0V"

    #@44
    goto :goto_4a

    #@45
    :cond_45
    const-string v0, "1.5V"

    #@47
    goto :goto_4a

    #@48
    :cond_48
    const-string v0, "--"

    #@4a
    :goto_4a
    return-object v0
.end method

.method public final getReadableLevel(I)Ljava/lang/String;
    .registers 9

    #@0
    .line 93
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    #@2
    const/4 v0, 0x1

    #@3
    new-array v1, v0, [Ljava/lang/Object;

    #@5
    const/16 v2, 0x13

    #@7
    sub-int/2addr p1, v2

    #@8
    int-to-double v3, p1

    #@9
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    #@b
    mul-double/2addr v3, v5

    #@c
    int-to-double v5, v2

    #@d
    div-double/2addr v3, v5

    #@e
    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    #@10
    add-double/2addr v3, v5

    #@11
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@14
    move-result-object p1

    #@15
    const/4 v2, 0x0

    #@16
    aput-object p1, v1, v2

    #@18
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1b
    move-result-object p1

    #@1c
    const-string v0, "%.2fV"

    #@1e
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    const-string v0, "format(format, *args)"

    #@24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@27
    return-object p1
.end method

.method public final getReadableWind()Ljava/lang/String;
    .registers 3

    #@0
    .line 96
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@2
    if-eqz v0, :cond_2c

    #@4
    const/16 v1, 0x39

    #@6
    if-eq v0, v1, :cond_29

    #@8
    const/16 v1, 0x4d

    #@a
    if-eq v0, v1, :cond_26

    #@c
    const/16 v1, 0x5f

    #@e
    if-eq v0, v1, :cond_23

    #@10
    const/16 v1, 0x73

    #@12
    if-eq v0, v1, :cond_20

    #@14
    const/16 v1, 0x86

    #@16
    if-eq v0, v1, :cond_1d

    #@18
    .line 103
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    goto :goto_2e

    #@1d
    :cond_1d
    const-string v0, "4.5V"

    #@1f
    goto :goto_2e

    #@20
    :cond_20
    const-string v0, "4.0V"

    #@22
    goto :goto_2e

    #@23
    :cond_23
    const-string v0, "3.5V"

    #@25
    goto :goto_2e

    #@26
    :cond_26
    const-string v0, "3.0V"

    #@28
    goto :goto_2e

    #@29
    :cond_29
    const-string v0, "2.5V"

    #@2b
    goto :goto_2e

    #@2c
    :cond_2c
    const-string v0, "--"

    #@2e
    :goto_2e
    return-object v0
.end method

.method public final getRealColdLevel()I
    .registers 2

    #@0
    .line 89
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@2
    if-nez v0, :cond_b

    #@4
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 90
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@a
    goto :goto_d

    #@b
    .line 91
    :cond_b
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@d
    :goto_d
    return v0
.end method

.method public final getRealWindLevel()I
    .registers 2

    #@0
    .line 85
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@2
    if-nez v0, :cond_b

    #@4
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 86
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@a
    goto :goto_d

    #@b
    .line 87
    :cond_b
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@d
    :goto_d
    return v0
.end method

.method public final getRunMode()I
    .registers 2

    #@0
    .line 23
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@2
    return v0
.end method

.method public final getRunModeSmartLevel()F
    .registers 7

    #@0
    .line 125
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@2
    const/16 v1, 0x12

    #@4
    const/16 v2, 0x86

    #@6
    const/16 v3, 0x73

    #@8
    if-ne v0, v1, :cond_1e

    #@a
    .line 126
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@c
    const/16 v4, 0x4d

    #@e
    if-ne v1, v4, :cond_1e

    #@10
    .line 127
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@12
    if-ne v1, v3, :cond_1e

    #@14
    .line 128
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@16
    if-ne v1, v4, :cond_1e

    #@18
    .line 129
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@1a
    if-ne v1, v2, :cond_1e

    #@1c
    const/4 v0, 0x0

    #@1d
    return v0

    #@1e
    :cond_1e
    const/16 v1, 0x10

    #@20
    if-ne v0, v1, :cond_39

    #@22
    .line 131
    iget v4, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@24
    const/16 v5, 0x5f

    #@26
    if-ne v4, v5, :cond_39

    #@28
    .line 132
    iget v4, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@2a
    if-ne v4, v3, :cond_39

    #@2c
    .line 133
    iget v4, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@2e
    if-ne v4, v5, :cond_39

    #@30
    .line 134
    iget v4, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@32
    const/16 v5, 0x99

    #@34
    if-ne v4, v5, :cond_39

    #@36
    const/high16 v0, 0x3f800000    # 1.0f

    #@38
    return v0

    #@39
    :cond_39
    if-ne v0, v1, :cond_50

    #@3b
    .line 136
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@3d
    if-ne v0, v3, :cond_50

    #@3f
    .line 137
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@41
    if-ne v0, v3, :cond_50

    #@43
    .line 138
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@45
    if-ne v0, v2, :cond_50

    #@47
    .line 139
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@49
    const/16 v1, 0xad

    #@4b
    if-ne v0, v1, :cond_50

    #@4d
    const/high16 v0, 0x40000000    # 2.0f

    #@4f
    return v0

    #@50
    :cond_50
    const/high16 v0, -0x40800000    # -1.0f

    #@52
    return v0
.end method

.method public final getSpeed()I
    .registers 2

    #@0
    .line 28
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@2
    return v0
.end method

.method public final getTargetTemperature()I
    .registers 2

    #@0
    .line 24
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@2
    return v0
.end method

.method public final getTempHistories()[B
    .registers 2

    #@0
    .line 36
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@2
    return-object v0
.end method

.method public final getTemperature()I
    .registers 2

    #@0
    .line 21
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@2
    return v0
.end method

.method public final getTemperatureDecimal()I
    .registers 2

    #@0
    .line 22
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@2
    return v0
.end method

.method public final getWindLevel()I
    .registers 2

    #@0
    .line 19
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@2
    return v0
.end method

.method public final getWindLevelOverclock()I
    .registers 2

    #@0
    .line 26
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@2
    return v0
.end method

.method public final getWindRunLevel()I
    .registers 2

    #@0
    .line 29
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_7

    #@5
    move v0, v1

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v0

    #@b
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    #@d
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@f
    if-nez v2, :cond_13

    #@11
    move v2, v1

    #@12
    goto :goto_17

    #@13
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@16
    move-result v2

    #@17
    :goto_17
    add-int/2addr v0, v2

    #@18
    mul-int/lit8 v0, v0, 0x1f

    #@1a
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@1c
    const/4 v3, 0x1

    #@1d
    if-eqz v2, :cond_20

    #@1f
    move v2, v3

    #@20
    :cond_20
    add-int/2addr v0, v2

    #@21
    mul-int/lit8 v0, v0, 0x1f

    #@23
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@28
    move-result v2

    #@29
    add-int/2addr v0, v2

    #@2a
    mul-int/lit8 v0, v0, 0x1f

    #@2c
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@2e
    if-nez v2, :cond_32

    #@30
    move v2, v1

    #@31
    goto :goto_36

    #@32
    :cond_32
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@35
    move-result v2

    #@36
    :goto_36
    add-int/2addr v0, v2

    #@37
    mul-int/lit8 v0, v0, 0x1f

    #@39
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@3b
    if-eqz v2, :cond_3e

    #@3d
    move v2, v3

    #@3e
    :cond_3e
    add-int/2addr v0, v2

    #@3f
    mul-int/lit8 v0, v0, 0x1f

    #@41
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@43
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@46
    move-result v2

    #@47
    add-int/2addr v0, v2

    #@48
    mul-int/lit8 v0, v0, 0x1f

    #@4a
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@4c
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@4f
    move-result v2

    #@50
    add-int/2addr v0, v2

    #@51
    mul-int/lit8 v0, v0, 0x1f

    #@53
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@55
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@58
    move-result v2

    #@59
    add-int/2addr v0, v2

    #@5a
    mul-int/lit8 v0, v0, 0x1f

    #@5c
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@5e
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@61
    move-result v2

    #@62
    add-int/2addr v0, v2

    #@63
    mul-int/lit8 v0, v0, 0x1f

    #@65
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@67
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@6a
    move-result v2

    #@6b
    add-int/2addr v0, v2

    #@6c
    mul-int/lit8 v0, v0, 0x1f

    #@6e
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@70
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@73
    move-result v2

    #@74
    add-int/2addr v0, v2

    #@75
    mul-int/lit8 v0, v0, 0x1f

    #@77
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@79
    if-eqz v2, :cond_7c

    #@7b
    move v2, v3

    #@7c
    :cond_7c
    add-int/2addr v0, v2

    #@7d
    mul-int/lit8 v0, v0, 0x1f

    #@7f
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@81
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@84
    move-result v2

    #@85
    add-int/2addr v0, v2

    #@86
    mul-int/lit8 v0, v0, 0x1f

    #@88
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@8a
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@8d
    move-result v2

    #@8e
    add-int/2addr v0, v2

    #@8f
    mul-int/lit8 v0, v0, 0x1f

    #@91
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@93
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@96
    move-result v2

    #@97
    add-int/2addr v0, v2

    #@98
    mul-int/lit8 v0, v0, 0x1f

    #@9a
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@9c
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@9f
    move-result v2

    #@a0
    add-int/2addr v0, v2

    #@a1
    mul-int/lit8 v0, v0, 0x1f

    #@a3
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@a5
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@a8
    move-result v2

    #@a9
    add-int/2addr v0, v2

    #@aa
    mul-int/lit8 v0, v0, 0x1f

    #@ac
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@ae
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    #@b1
    move-result v2

    #@b2
    add-int/2addr v0, v2

    #@b3
    mul-int/lit8 v0, v0, 0x1f

    #@b5
    iget-byte v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@b7
    invoke-static {v2}, Ljava/lang/Byte;->hashCode(B)I

    #@ba
    move-result v2

    #@bb
    add-int/2addr v0, v2

    #@bc
    mul-int/lit8 v0, v0, 0x1f

    #@be
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@c0
    if-nez v2, :cond_c4

    #@c2
    move v2, v1

    #@c3
    goto :goto_c8

    #@c4
    :cond_c4
    invoke-virtual {v2}, Lcom/flydigi/sdk/waspwing/LedData;->hashCode()I

    #@c7
    move-result v2

    #@c8
    :goto_c8
    add-int/2addr v0, v2

    #@c9
    mul-int/lit8 v0, v0, 0x1f

    #@cb
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@cd
    if-eqz v2, :cond_d0

    #@cf
    move v2, v3

    #@d0
    :cond_d0
    add-int/2addr v0, v2

    #@d1
    mul-int/lit8 v0, v0, 0x1f

    #@d3
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@d5
    if-eqz v2, :cond_d8

    #@d7
    move v2, v3

    #@d8
    :cond_d8
    add-int/2addr v0, v2

    #@d9
    mul-int/lit8 v0, v0, 0x1f

    #@db
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@dd
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@e0
    move-result v2

    #@e1
    add-int/2addr v0, v2

    #@e2
    mul-int/lit8 v0, v0, 0x1f

    #@e4
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@e6
    if-nez v2, :cond_ea

    #@e8
    move v2, v1

    #@e9
    goto :goto_ee

    #@ea
    :cond_ea
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@ed
    move-result v2

    #@ee
    :goto_ee
    add-int/2addr v0, v2

    #@ef
    mul-int/lit8 v0, v0, 0x1f

    #@f1
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@f3
    if-nez v2, :cond_f7

    #@f5
    move v2, v1

    #@f6
    goto :goto_fb

    #@f7
    :cond_f7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@fa
    move-result v2

    #@fb
    :goto_fb
    add-int/2addr v0, v2

    #@fc
    mul-int/lit8 v0, v0, 0x1f

    #@fe
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@100
    if-eqz v2, :cond_103

    #@102
    goto :goto_104

    #@103
    :cond_103
    move v3, v2

    #@104
    :goto_104
    add-int/2addr v0, v3

    #@105
    mul-int/lit8 v0, v0, 0x1f

    #@107
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@109
    if-nez v2, :cond_10c

    #@10b
    goto :goto_110

    #@10c
    :cond_10c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@10f
    move-result v1

    #@110
    :goto_110
    add-int/2addr v0, v1

    #@111
    return v0
.end method

.method public final isConnected()Z
    .registers 2

    #@0
    .line 15
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@2
    return v0
.end method

.method public final isExperimentalRunModeOn()Z
    .registers 2

    #@0
    .line 39
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@2
    return v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 14
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setColdLevel(I)V
    .registers 2

    #@0
    .line 20
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@2
    return-void
.end method

.method public final setColdLevelOverclock(I)V
    .registers 2

    #@0
    .line 27
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@2
    return-void
.end method

.method public final setColdProtection(Z)V
    .registers 2

    #@0
    .line 34
    iput-boolean p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@2
    return-void
.end method

.method public final setColdRunLevel(I)V
    .registers 2

    #@0
    .line 30
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@2
    return-void
.end method

.method public final setConnected(Z)V
    .registers 2

    #@0
    .line 15
    iput-boolean p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@2
    return-void
.end method

.method public final setDeviceCode(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "<set-?>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 16
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@7
    return-void
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 13
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setExperimentalRunModeOn(Z)V
    .registers 2

    #@0
    .line 39
    iput-boolean p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@2
    return-void
.end method

.method public final setExperimentalRunModeValue(Ljava/lang/Integer;)V
    .registers 2

    #@0
    .line 40
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@2
    return-void
.end method

.method public final setFirmwareVersion(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 17
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setHotProtectionEnabled(Z)V
    .registers 2

    #@0
    .line 35
    iput-boolean p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@2
    return-void
.end method

.method public final setHotSurfaceTemperature(B)V
    .registers 2

    #@0
    .line 32
    iput-byte p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@2
    return-void
.end method

.method public final setIpType(Ljava/lang/Integer;)V
    .registers 2

    #@0
    .line 37
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@2
    return-void
.end method

.method public final setLedData(Lcom/flydigi/sdk/waspwing/LedData;)V
    .registers 2

    #@0
    .line 33
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@2
    return-void
.end method

.method public final setLedType(I)V
    .registers 2

    #@0
    .line 31
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@2
    return-void
.end method

.method public final setLightState(Z)V
    .registers 2

    #@0
    .line 18
    iput-boolean p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@2
    return-void
.end method

.method public final setModeCustom(Ljava/lang/Integer;)V
    .registers 2

    #@0
    .line 38
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@2
    return-void
.end method

.method public final setOverClockUsable(Z)V
    .registers 2

    #@0
    .line 25
    iput-boolean p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@2
    return-void
.end method

.method public final setRunMode(I)V
    .registers 2

    #@0
    .line 23
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@2
    return-void
.end method

.method public final setSpeed(I)V
    .registers 2

    #@0
    .line 28
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@2
    return-void
.end method

.method public final setTargetTemperature(I)V
    .registers 2

    #@0
    .line 24
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@2
    return-void
.end method

.method public final setTempHistories([B)V
    .registers 3

    #@0
    const-string v0, "<set-?>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 36
    iput-object p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@7
    return-void
.end method

.method public final setTemperature(I)V
    .registers 2

    #@0
    .line 21
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@2
    return-void
.end method

.method public final setTemperatureDecimal(I)V
    .registers 2

    #@0
    .line 22
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@2
    return-void
.end method

.method public final setWindLevel(I)V
    .registers 2

    #@0
    .line 19
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@2
    return-void
.end method

.method public final setWindLevelOverclock(I)V
    .registers 2

    #@0
    .line 26
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@2
    return-void
.end method

.method public final setWindRunLevel(I)V
    .registers 2

    #@0
    .line 29
    iput p1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "WaspWingInfo(deviceName="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string v2, ", address="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v2, ", isConnected="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string v2, ", deviceCode="

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string v2, ", firmwareVersion="

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string v2, ", lightState="

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string v2, ", windLevel="

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    const-string v2, ", coldLevel="

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    const-string v2, ", temperature="

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    const-string v2, ", temperatureDecimal="

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    const-string v2, ", runMode="

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    const-string v2, ", targetTemperature="

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    iget v1, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    const-string v2, ", overClockUsable="

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    const-string v2, ", windLevelOverclock="

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    const-string v2, ", coldLevelOverclock="

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    const-string v2, ", speed="

    #@b6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v1

    #@ba
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v1

    #@c0
    const-string v2, ", windRunLevel="

    #@c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@c8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v1

    #@cc
    const-string v2, ", coldRunLevel="

    #@ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    const-string v2, ", ledType="

    #@da
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    iget v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@e0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v1

    #@e4
    const-string v2, ", hotSurfaceTemperature="

    #@e6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    iget-byte v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v1

    #@f0
    const-string v2, ", ledData="

    #@f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v1

    #@f6
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    const-string v2, ", coldProtection="

    #@fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v1

    #@102
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@107
    move-result-object v1

    #@108
    const-string v2, ", hotProtectionEnabled="

    #@10a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v1

    #@10e
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@113
    const-string v1, ", tempHistories="

    #@115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@11b
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@11e
    move-result-object v2

    #@11f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v1

    #@123
    const-string v2, ", ipType="

    #@125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v1

    #@129
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@12b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v1

    #@12f
    const-string v2, ", modeCustom="

    #@131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v1

    #@135
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v1

    #@13b
    const-string v2, ", isExperimentalRunModeOn="

    #@13d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v1

    #@141
    iget-boolean v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@146
    move-result-object v1

    #@147
    const-string v2, ", experimentalRunModeValue="

    #@149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v1

    #@14d
    iget-object v2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@14f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v1

    #@153
    const/16 v2, 0x29

    #@155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v0

    #@15c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    #@0
    const-string v0, "out"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->address:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected:Z

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->deviceCode:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->firmwareVersion:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->lightState:Z

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevel:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevel:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperature:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->temperatureDecimal:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->runMode:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->targetTemperature:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    iget-boolean v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->overClockUsable:Z

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windLevelOverclock:I

    #@48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldLevelOverclock:I

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->speed:I

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->windRunLevel:I

    #@57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldRunLevel:I

    #@5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    iget v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledType:I

    #@61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    iget-byte v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotSurfaceTemperature:B

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@69
    iget-object v0, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ledData:Lcom/flydigi/sdk/waspwing/LedData;

    #@6b
    const/4 v1, 0x0

    #@6c
    const/4 v2, 0x1

    #@6d
    if-nez v0, :cond_73

    #@6f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    goto :goto_79

    #@73
    :cond_73
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@76
    invoke-virtual {v0, p1, p2}, Lcom/flydigi/sdk/waspwing/LedData;->writeToParcel(Landroid/os/Parcel;I)V

    #@79
    :goto_79
    iget-boolean p2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->coldProtection:Z

    #@7b
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@7e
    iget-boolean p2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->hotProtectionEnabled:Z

    #@80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    iget-object p2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->tempHistories:[B

    #@85
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@88
    iget-object p2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->ipType:Ljava/lang/Integer;

    #@8a
    if-nez p2, :cond_90

    #@8c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8f
    goto :goto_9a

    #@90
    :cond_90
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@93
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@96
    move-result p2

    #@97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    :goto_9a
    iget-object p2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->modeCustom:Ljava/lang/Integer;

    #@9c
    if-nez p2, :cond_a2

    #@9e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a1
    goto :goto_ac

    #@a2
    :cond_a2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@a8
    move-result p2

    #@a9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    :goto_ac
    iget-boolean p2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isExperimentalRunModeOn:Z

    #@ae
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@b1
    iget-object p2, p0, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->experimentalRunModeValue:Ljava/lang/Integer;

    #@b3
    if-nez p2, :cond_b9

    #@b5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b8
    goto :goto_c3

    #@b9
    :cond_b9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@bc
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@bf
    move-result p2

    #@c0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@c3
    :goto_c3
    return-void
.end method
