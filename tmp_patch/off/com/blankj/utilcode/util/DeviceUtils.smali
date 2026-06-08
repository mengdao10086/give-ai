.class public final Lcom/blankj/utilcode/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final KEY_UDID:Ljava/lang/String; = "KEY_UDID"

.field private static volatile udid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getABIs()[Ljava/lang/String;
    .registers 1

    #@0
    .line 334
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .registers 3

    #@0
    .line 105
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "android_id"

    #@a
    .line 104
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string v1, "9774d56d682e549c"

    #@10
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    const-string v2, ""

    #@16
    if-eqz v1, :cond_19

    #@18
    return-object v2

    #@19
    :cond_19
    if-nez v0, :cond_1c

    #@1b
    move-object v0, v2

    #@1c
    :cond_1c
    return-object v0
.end method

.method private static getInetAddress()Ljava/net/InetAddress;
    .registers 5

    #@0
    .line 263
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .line 264
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_3e

    #@a
    .line 265
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/net/NetworkInterface;

    #@10
    .line 267
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_17

    #@16
    goto :goto_4

    #@17
    .line 268
    :cond_17
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@1a
    move-result-object v1

    #@1b
    .line 269
    :cond_1b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_4

    #@21
    .line 270
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/net/InetAddress;

    #@27
    .line 271
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1b

    #@2d
    .line 272
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    const/16 v4, 0x3a

    #@33
    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@36
    move-result v3
    :try_end_37
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_37} :catch_3a

    #@37
    if-gez v3, :cond_1b

    #@39
    return-object v2

    #@3a
    :catch_3a
    move-exception v0

    #@3b
    .line 278
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 122
    move-object v1, v0

    #@2
    check-cast v1, [Ljava/lang/String;

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress([Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_22

    #@e
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getWifiEnabled()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_15

    #@14
    goto :goto_22

    #@15
    :cond_15
    const/4 v1, 0x1

    #@16
    .line 124
    invoke-static {v1}, Lcom/blankj/utilcode/util/DeviceUtils;->setWifiEnabled(Z)V

    #@19
    const/4 v1, 0x0

    #@1a
    .line 125
    invoke-static {v1}, Lcom/blankj/utilcode/util/DeviceUtils;->setWifiEnabled(Z)V

    #@1d
    .line 126
    invoke-static {v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress([Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    :cond_22
    :goto_22
    return-object v1
.end method

.method public static varargs getMacAddress([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 160
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByNetworkInterface()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 161
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_b

    #@a
    return-object v0

    #@b
    .line 164
    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByInetAddress()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 165
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_16

    #@15
    return-object v0

    #@16
    .line 168
    :cond_16
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByWifiInfo()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 169
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_21

    #@20
    return-object v0

    #@21
    .line 172
    :cond_21
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByFile()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 173
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    #@28
    move-result p0

    #@29
    if-eqz p0, :cond_2c

    #@2b
    return-object v0

    #@2c
    :cond_2c
    const-string p0, ""

    #@2e
    return-object p0
.end method

.method private static getMacAddressByFile()Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "getprop wifi.interface"

    #@2
    const/4 v1, 0x0

    #@3
    .line 284
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@6
    move-result-object v0

    #@7
    .line 285
    iget v2, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    #@9
    if-nez v2, :cond_37

    #@b
    .line 286
    iget-object v0, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    #@d
    if-eqz v0, :cond_37

    #@f
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    const-string v3, "cat /sys/class/net/"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string v2, "/address"

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@27
    move-result-object v0

    #@28
    .line 289
    iget v1, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    #@2a
    if-nez v1, :cond_37

    #@2c
    .line 290
    iget-object v0, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    #@2e
    if-eqz v0, :cond_37

    #@30
    .line 291
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@33
    move-result v1

    #@34
    if-lez v1, :cond_37

    #@36
    return-object v0

    #@37
    :cond_37
    const-string v0, "02:00:00:00:00:00"

    #@39
    return-object v0
.end method

.method private static getMacAddressByInetAddress()Ljava/lang/String;
    .registers 8

    #@0
    .line 241
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getInetAddress()Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_44

    #@6
    .line 243
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_44

    #@c
    .line 245
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_44

    #@12
    .line 246
    array-length v1, v0

    #@13
    if-lez v1, :cond_44

    #@15
    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    .line 248
    array-length v2, v0

    #@1b
    const/4 v3, 0x0

    #@1c
    move v4, v3

    #@1d
    :goto_1d
    const/4 v5, 0x1

    #@1e
    if-ge v4, v2, :cond_36

    #@20
    aget-byte v6, v0, v4

    #@22
    const-string v7, "%02x:"

    #@24
    new-array v5, v5, [Ljava/lang/Object;

    #@26
    .line 249
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@29
    move-result-object v6

    #@2a
    aput-object v6, v5, v3

    #@2c
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_1d

    #@36
    .line 251
    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@39
    move-result v0

    #@3a
    sub-int/2addr v0, v5

    #@3b
    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    #@3f
    return-object v0

    #@40
    :catch_40
    move-exception v0

    #@41
    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@44
    :cond_44
    const-string v0, "02:00:00:00:00:00"

    #@46
    return-object v0
.end method

.method private static getMacAddressByNetworkInterface()Ljava/lang/String;
    .registers 8

    #@0
    .line 220
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .line 221
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_57

    #@a
    .line 222
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/net/NetworkInterface;

    #@10
    if-eqz v1, :cond_4

    #@12
    .line 223
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    const-string v3, "wlan0"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_1f

    #@1e
    goto :goto_4

    #@1f
    .line 224
    :cond_1f
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    #@22
    move-result-object v1

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 225
    array-length v2, v1

    #@26
    if-lez v2, :cond_4

    #@28
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    .line 227
    array-length v2, v1

    #@2e
    const/4 v3, 0x0

    #@2f
    move v4, v3

    #@30
    :goto_30
    const/4 v5, 0x1

    #@31
    if-ge v4, v2, :cond_49

    #@33
    aget-byte v6, v1, v4

    #@35
    const-string v7, "%02x:"

    #@37
    new-array v5, v5, [Ljava/lang/Object;

    #@39
    .line 228
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@3c
    move-result-object v6

    #@3d
    aput-object v6, v5, v3

    #@3f
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    add-int/lit8 v4, v4, 0x1

    #@48
    goto :goto_30

    #@49
    .line 230
    :cond_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@4c
    move-result v1

    #@4d
    sub-int/2addr v1, v5

    #@4e
    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@51
    move-result-object v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    #@52
    return-object v0

    #@53
    :catch_53
    move-exception v0

    #@54
    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@57
    :cond_57
    const-string v0, "02:00:00:00:00:00"

    #@59
    return-object v0
.end method

.method private static getMacAddressByWifiInfo()Ljava/lang/String;
    .registers 2

    #@0
    .line 200
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    .line 201
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    const-string v1, "wifi"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@10
    if-eqz v0, :cond_27

    #@12
    .line 203
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_27

    #@18
    .line 206
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_23

    #@20
    if-nez v1, :cond_27

    #@22
    return-object v0

    #@23
    :catch_23
    move-exception v0

    #@24
    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@27
    :cond_27
    const-string v0, "02:00:00:00:00:00"

    #@29
    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 1

    #@0
    .line 307
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 3

    #@0
    .line 317
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@2
    const-string v1, ""

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string v2, "\\s*"

    #@c
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    :cond_10
    return-object v1
.end method

.method public static getSDKVersionCode()I
    .registers 1

    #@0
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    return v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .registers 1

    #@0
    .line 85
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, ""

    #@2
    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    const-string v2, "-"

    #@8
    if-eqz v1, :cond_28

    #@a
    .line 560
    new-instance p1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object p0

    #@13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@1a
    move-result-object p1

    #@1b
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p0

    #@23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p0

    #@27
    return-object p0

    #@28
    .line 562
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p0

    #@31
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@34
    move-result-object p1

    #@35
    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@40
    move-result-object p1

    #@41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object p0

    #@45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object p0

    #@49
    return-object p0
.end method

.method public static getUniqueDeviceId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    const/4 v1, 0x1

    #@3
    .line 458
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getUniqueDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 471
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    #@0
    if-nez p1, :cond_7

    #@2
    .line 499
    invoke-static {p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0

    #@7
    .line 501
    :cond_7
    sget-object p1, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@9
    if-nez p1, :cond_30

    #@b
    .line 502
    const-class p1, Lcom/blankj/utilcode/util/DeviceUtils;

    #@d
    monitor-enter p1

    #@e
    .line 503
    :try_start_e
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@10
    if-nez v0, :cond_2b

    #@12
    .line 504
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@15
    move-result-object v0

    #@16
    const-string v1, "KEY_UDID"

    #@18
    const/4 v2, 0x0

    #@19
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_25

    #@1f
    .line 506
    sput-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@21
    .line 507
    sget-object p0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@23
    monitor-exit p1

    #@24
    return-object p0

    #@25
    .line 509
    :cond_25
    invoke-static {p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object p0

    #@29
    monitor-exit p1

    #@2a
    return-object p0

    #@2b
    .line 511
    :cond_2b
    monitor-exit p1

    #@2c
    goto :goto_30

    #@2d
    :catchall_2d
    move-exception p0

    #@2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    #@2f
    throw p0

    #@30
    .line 513
    :cond_30
    :goto_30
    sget-object p0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@32
    return-object p0
.end method

.method public static getUniqueDeviceId(Z)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 484
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method private static getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 518
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_21

    #@a
    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    #@20
    return-object p0

    #@21
    .line 524
    :catch_21
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p0

    #@2a
    const/16 v0, 0x9

    #@2c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p0

    #@30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p0

    #@34
    const-string v0, ""

    #@36
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object p0

    #@3a
    return-object p0
.end method

.method private static getWifiEnabled()Z
    .registers 2

    #@0
    .line 131
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "wifi"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 133
    :cond_10
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public static isAdbEnabled()Z
    .registers 3

    #@0
    .line 74
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "adb_enabled"

    #@a
    const/4 v2, 0x0

    #@b
    .line 73
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    if-lez v0, :cond_12

    #@11
    const/4 v2, 0x1

    #@12
    :cond_12
    return v2
.end method

.method private static varargs isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    #@0
    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    const-string v0, "02:00:00:00:00:00"

    #@a
    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    return v1

    #@11
    :cond_11
    const/4 v0, 0x1

    #@12
    if-eqz p1, :cond_2a

    #@14
    .line 186
    array-length v2, p1

    #@15
    if-nez v2, :cond_18

    #@17
    goto :goto_2a

    #@18
    .line 189
    :cond_18
    array-length v2, p1

    #@19
    move v3, v1

    #@1a
    :goto_1a
    if-ge v3, v2, :cond_2a

    #@1c
    aget-object v4, p1, v3

    #@1e
    if-eqz v4, :cond_27

    #@20
    .line 190
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_27

    #@26
    return v1

    #@27
    :cond_27
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    :goto_2a
    return v0
.end method

.method public static isDevelopmentSettingsEnabled()Z
    .registers 3

    #@0
    .line 440
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string v1, "development_settings_enabled"

    #@a
    const/4 v2, 0x0

    #@b
    .line 439
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    if-lez v0, :cond_12

    #@11
    const/4 v2, 0x1

    #@12
    :cond_12
    return v2
.end method

.method public static isDeviceRooted()Z
    .registers 11

    #@0
    const-string v0, "/system/bin/"

    #@2
    const-string v1, "/system/xbin/"

    #@4
    const-string v2, "/sbin/"

    #@6
    const-string v3, "/system/sd/xbin/"

    #@8
    const-string v4, "/system/bin/failsafe/"

    #@a
    const-string v5, "/data/local/xbin/"

    #@c
    const-string v6, "/data/local/bin/"

    #@e
    const-string v7, "/data/local/"

    #@10
    const-string v8, "/system/sbin/"

    #@12
    const-string v9, "/usr/bin/"

    #@14
    const-string v10, "/vendor/bin/"

    #@16
    .line 55
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const/4 v1, 0x0

    #@1b
    move v2, v1

    #@1c
    :goto_1c
    const/16 v3, 0xb

    #@1e
    if-ge v2, v3, :cond_45

    #@20
    .line 58
    aget-object v3, v0, v2

    #@22
    .line 59
    new-instance v4, Ljava/io/File;

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string v5, "su"

    #@2f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_42

    #@40
    const/4 v0, 0x1

    #@41
    return v0

    #@42
    :cond_42
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_1c

    #@45
    :cond_45
    return v1
.end method

.method public static isEmulator()Z
    .registers 6

    #@0
    .line 360
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@2
    const-string v1, "generic"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x1

    #@a
    if-nez v0, :cond_6b

    #@c
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@e
    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    const-string v4, "vbox"

    #@14
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_6b

    #@1a
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@1c
    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const-string v4, "test-keys"

    #@22
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_6b

    #@28
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@2a
    const-string v4, "google_sdk"

    #@2c
    .line 363
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_6b

    #@32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@34
    const-string v5, "Emulator"

    #@36
    .line 364
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_6b

    #@3c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@3e
    const-string v5, "Android SDK built for x86"

    #@40
    .line 365
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_6b

    #@46
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@48
    const-string v5, "Genymotion"

    #@4a
    .line 366
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_6b

    #@50
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    #@52
    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_60

    #@58
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5d
    move-result v0

    #@5e
    if-nez v0, :cond_6b

    #@60
    :cond_60
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    #@62
    .line 368
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_69

    #@68
    goto :goto_6b

    #@69
    :cond_69
    move v0, v2

    #@6a
    goto :goto_6c

    #@6b
    :cond_6b
    :goto_6b
    move v0, v3

    #@6c
    :goto_6c
    if-eqz v0, :cond_6f

    #@6e
    return v3

    #@6f
    .line 372
    :cond_6f
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@72
    move-result-object v0

    #@73
    const-string v1, "phone"

    #@75
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@78
    move-result-object v0

    #@79
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@7b
    if-eqz v0, :cond_84

    #@7d
    .line 374
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    if-eqz v0, :cond_84

    #@83
    goto :goto_86

    #@84
    :cond_84
    const-string v0, ""

    #@86
    .line 379
    :goto_86
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    const-string v1, "android"

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v0

    #@90
    if-eqz v0, :cond_93

    #@92
    return v3

    #@93
    .line 383
    :cond_93
    new-instance v0, Landroid/content/Intent;

    #@95
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@98
    const-string v1, "tel:123456"

    #@9a
    .line 384
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@a1
    const-string v1, "android.intent.action.DIAL"

    #@a3
    .line 385
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@a6
    .line 386
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@b1
    move-result-object v0

    #@b2
    if-nez v0, :cond_b6

    #@b4
    move v0, v3

    #@b5
    goto :goto_b7

    #@b6
    :cond_b6
    move v0, v2

    #@b7
    :goto_b7
    if-eqz v0, :cond_ba

    #@b9
    return v3

    #@ba
    .line 388
    :cond_ba
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->isEmulatorByCpu()Z

    #@bd
    move-result v0

    #@be
    if-eqz v0, :cond_c1

    #@c0
    return v3

    #@c1
    :cond_c1
    return v2
.end method

.method private static isEmulatorByCpu()Z
    .registers 2

    #@0
    .line 404
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->readCpuInfo()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "intel"

    #@6
    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_17

    #@c
    const-string v1, "amd"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_18

    #@17
    :cond_17
    :goto_17
    const/4 v0, 0x1

    #@18
    :goto_18
    return v0
.end method

.method public static isSameDevice(Ljava/lang/String;)Z
    .registers 7

    #@0
    .line 530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    const/16 v1, 0x21

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v0, :cond_10

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    if-ge v0, v1, :cond_10

    #@f
    return v2

    #@10
    .line 531
    :cond_10
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    const/4 v3, 0x1

    #@17
    if-eqz v0, :cond_1a

    #@19
    return v3

    #@1a
    .line 532
    :cond_1a
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@1d
    move-result-object v0

    #@1e
    const-string v4, "KEY_UDID"

    #@20
    const/4 v5, 0x0

    #@21
    invoke-virtual {v0, v4, v5}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 533
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2c

    #@2b
    return v3

    #@2c
    .line 534
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2f
    move-result v0

    #@30
    sub-int/2addr v0, v1

    #@31
    add-int/lit8 v1, v0, 0x1

    #@33
    .line 535
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    const-string v3, "1"

    #@39
    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3c
    move-result v3

    #@3d
    const-string v4, ""

    #@3f
    if-eqz v3, :cond_59

    #@41
    .line 537
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 538
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_4c

    #@4b
    return v2

    #@4c
    .line 541
    :cond_4c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4f
    move-result-object p0

    #@50
    invoke-static {v4, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result p0

    #@58
    return p0

    #@59
    :cond_59
    const-string v3, "2"

    #@5b
    .line 542
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_79

    #@61
    .line 543
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    .line 544
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@68
    move-result v3

    #@69
    if-eqz v3, :cond_6c

    #@6b
    return v2

    #@6c
    .line 547
    :cond_6c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object p0

    #@70
    invoke-static {v4, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result p0

    #@78
    return p0

    #@79
    :cond_79
    return v2
.end method

.method public static isTablet()Z
    .registers 2

    #@0
    .line 349
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@a
    and-int/lit8 v0, v0, 0xf

    #@c
    const/4 v1, 0x3

    #@d
    if-lt v0, v1, :cond_11

    #@f
    const/4 v0, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0
.end method

.method private static readCpuInfo()Ljava/lang/String;
    .registers 5

    #@0
    :try_start_0
    const-string v0, "/system/bin/cat"

    #@2
    const-string v1, "/proc/cpuinfo"

    #@4
    .line 416
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 417
    new-instance v1, Ljava/lang/ProcessBuilder;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    #@d
    .line 418
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    #@10
    move-result-object v0

    #@11
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    .line 421
    new-instance v2, Ljava/io/BufferedReader;

    #@18
    new-instance v3, Ljava/io/InputStreamReader;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@1d
    move-result-object v0

    #@1e
    const-string v4, "utf-8"

    #@20
    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@23
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@26
    .line 422
    :goto_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    if-eqz v0, :cond_30

    #@2c
    .line 423
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_26

    #@30
    .line 425
    :cond_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    #@33
    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3a
    move-result-object v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3c

    #@3b
    goto :goto_3e

    #@3c
    :catch_3c
    const-string v0, ""

    #@3e
    :goto_3e
    return-object v0
.end method

.method private static saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 553
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    sput-object p0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@6
    .line 554
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@9
    move-result-object p0

    #@a
    const-string p1, "KEY_UDID"

    #@c
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@e
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 555
    sget-object p0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    #@13
    return-object p0
.end method

.method private static setWifiEnabled(Z)V
    .registers 3

    #@0
    .line 145
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "wifi"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@c
    if-nez v0, :cond_f

    #@e
    return-void

    #@f
    .line 147
    :cond_f
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    #@12
    move-result v1

    #@13
    if-ne p0, v1, :cond_16

    #@15
    return-void

    #@16
    .line 148
    :cond_16
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    #@19
    return-void
.end method
