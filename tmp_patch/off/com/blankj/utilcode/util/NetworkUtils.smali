.class public final Lcom/blankj/utilcode/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;,
        Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;,
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;,
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    }
.end annotation


# static fields
.field private static final SCAN_PERIOD_MILLIS:J = 0xbb8L

.field private static final SCAN_RESULT_CONSUMERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

.field private static sScanWifiTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 765
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .registers 1

    #@0
    .line 54
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    #@0
    .line 54
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->startScanWifi()V

    #@3
    return-void
.end method

.method static synthetic access$300()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .registers 1

    #@0
    .line 54
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@2
    return-object v0
.end method

.method static synthetic access$302(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .registers 1

    #@0
    .line 54
    sput-object p0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@2
    return-object p0
.end method

.method static synthetic access$400()V
    .registers 0

    #@0
    .line 54
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->startScanWifiIfEnabled()V

    #@3
    return-void
.end method

.method static synthetic access$600(Ljava/util/List;Ljava/util/List;)Z
    .registers 2

    #@0
    .line 54
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/NetworkUtils;->isSameScanResults(Ljava/util/List;Ljava/util/List;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$700()V
    .registers 0

    #@0
    .line 54
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->stopScanWifi()V

    #@3
    return-void
.end method

.method public static addOnWifiChangedConsumer(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;)V"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 772
    :cond_3
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$7;

    #@5
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$7;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@b
    return-void
.end method

.method private static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    #@0
    .line 515
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "connectivity"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x0

    #@f
    return-object v0

    #@10
    .line 517
    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static getBroadcastIpAddress()Ljava/lang/String;
    .registers 5

    #@0
    .line 589
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .line 590
    new-instance v1, Ljava/util/LinkedList;

    #@6
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@9
    .line 591
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_45

    #@f
    .line 592
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/net/NetworkInterface;

    #@15
    .line 593
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_9

    #@1b
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_22

    #@21
    goto :goto_9

    #@22
    .line 594
    :cond_22
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    #@25
    move-result-object v1

    #@26
    .line 595
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@29
    move-result v2

    #@2a
    const/4 v3, 0x0

    #@2b
    :goto_2b
    if-ge v3, v2, :cond_9

    #@2d
    .line 596
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Ljava/net/InterfaceAddress;

    #@33
    .line 597
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    #@36
    move-result-object v4

    #@37
    if-eqz v4, :cond_3e

    #@39
    .line 599
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@3c
    move-result-object v0
    :try_end_3d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3d} :catch_41

    #@3d
    return-object v0

    #@3e
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_2b

    #@41
    :catch_41
    move-exception v0

    #@42
    .line 604
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    #@45
    :cond_45
    const-string v0, ""

    #@47
    return-object v0
.end method

.method public static getDomainAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    #@0
    .line 640
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object p0

    #@4
    .line 641
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7
    move-result-object p0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return-object p0

    #@9
    :catch_9
    move-exception p0

    #@a
    .line 643
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    #@d
    const-string p0, ""

    #@f
    return-object p0
.end method

.method public static getDomainAddressAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 620
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$6;

    #@2
    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$6;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getGatewayByWifi()Ljava/lang/String;
    .registers 2

    #@0
    .line 669
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
    if-nez v0, :cond_11

    #@e
    const-string v0, ""

    #@10
    return-object v0

    #@11
    .line 671
    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    #@14
    move-result-object v0

    #@15
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    #@17
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .registers 5

    #@0
    .line 549
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .line 550
    new-instance v1, Ljava/util/LinkedList;

    #@6
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@9
    .line 551
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_36

    #@f
    .line 552
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/net/NetworkInterface;

    #@15
    .line 554
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_9

    #@1b
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_22

    #@21
    goto :goto_9

    #@22
    .line 555
    :cond_22
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@25
    move-result-object v2

    #@26
    .line 556
    :goto_26
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_9

    #@2c
    .line 557
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Ljava/net/InetAddress;

    #@32
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@35
    goto :goto_26

    #@36
    .line 560
    :cond_36
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v0

    #@3a
    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_7d

    #@40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Ljava/net/InetAddress;

    #@46
    .line 561
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_3a

    #@4c
    .line 562
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    const/16 v2, 0x3a

    #@52
    .line 563
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@55
    move-result v2

    #@56
    const/4 v3, 0x0

    #@57
    if-gez v2, :cond_5b

    #@59
    const/4 v2, 0x1

    #@5a
    goto :goto_5c

    #@5b
    :cond_5b
    move v2, v3

    #@5c
    :goto_5c
    if-eqz p0, :cond_61

    #@5e
    if-eqz v2, :cond_3a

    #@60
    return-object v1

    #@61
    :cond_61
    if-nez v2, :cond_3a

    #@63
    const/16 p0, 0x25

    #@65
    .line 568
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    #@68
    move-result p0

    #@69
    if-gez p0, :cond_70

    #@6b
    .line 570
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@6e
    move-result-object p0

    #@6f
    goto :goto_78

    #@70
    .line 571
    :cond_70
    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@73
    move-result-object p0

    #@74
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@77
    move-result-object p0
    :try_end_78
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_78} :catch_79

    #@78
    :goto_78
    return-object p0

    #@79
    :catch_79
    move-exception p0

    #@7a
    .line 577
    invoke-virtual {p0}, Ljava/net/SocketException;->printStackTrace()V

    #@7d
    :cond_7d
    const-string p0, ""

    #@7f
    return-object p0
.end method

.method public static getIPAddressAsync(ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 530
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$5;

    #@2
    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$5;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Z)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getIpAddressByWifi()Ljava/lang/String;
    .registers 2

    #@0
    .line 656
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
    if-nez v0, :cond_11

    #@e
    const-string v0, ""

    #@10
    return-object v0

    #@11
    .line 658
    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    #@14
    move-result-object v0

    #@15
    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    #@17
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static getMobileDataEnabled()Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 250
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v1

    #@5
    const-string v2, "phone"

    #@7
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@d
    if-nez v1, :cond_10

    #@f
    return v0

    #@10
    .line 253
    :cond_10
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    #@13
    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    #@14
    return v0

    #@15
    :catch_15
    move-exception v1

    #@16
    .line 262
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@19
    return v0
.end method

.method public static getNetMaskByWifi()Ljava/lang/String;
    .registers 2

    #@0
    .line 682
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
    if-nez v0, :cond_11

    #@e
    const-string v0, ""

    #@10
    return-object v0

    #@11
    .line 684
    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    #@14
    move-result-object v0

    #@15
    iget v0, v0, Landroid/net/DhcpInfo;->netmask:I

    #@17
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    #@0
    .line 419
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "phone"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@c
    if-nez v0, :cond_11

    #@e
    const-string v0, ""

    #@10
    return-object v0

    #@11
    .line 421
    :cond_11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static getNetworkType()Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 3

    #@0
    .line 441
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isEthernet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 442
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@8
    return-object v0

    #@9
    .line 444
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_5e

    #@f
    .line 445
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_5e

    #@15
    .line 446
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x1

    #@1a
    if-ne v1, v2, :cond_1f

    #@1c
    .line 447
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@1e
    return-object v0

    #@1f
    .line 448
    :cond_1f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_5b

    #@25
    .line 449
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    #@28
    move-result v1

    #@29
    packed-switch v1, :pswitch_data_62

    #@2c
    .line 477
    :pswitch_2c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    const-string v1, "TD-SCDMA"

    #@32
    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@35
    move-result v1

    #@36
    if-nez v1, :cond_58

    #@38
    const-string v1, "WCDMA"

    #@3a
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_58

    #@40
    const-string v1, "CDMA2000"

    #@42
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_55

    #@48
    goto :goto_58

    #@49
    .line 475
    :pswitch_49
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@4b
    return-object v0

    #@4c
    .line 472
    :pswitch_4c
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@4e
    return-object v0

    #@4f
    .line 468
    :pswitch_4f
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@51
    return-object v0

    #@52
    .line 456
    :pswitch_52
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@54
    return-object v0

    #@55
    .line 483
    :cond_55
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@57
    return-object v0

    #@58
    .line 481
    :cond_58
    :goto_58
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@5a
    return-object v0

    #@5b
    .line 487
    :cond_5b
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@5d
    return-object v0

    #@5e
    .line 490
    :cond_5e
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@60
    return-object v0

    #@61
    nop

    #@62
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_4f
        :pswitch_52
        :pswitch_4f
        :pswitch_4f
        :pswitch_52
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_4f
        :pswitch_4f
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_2c
        :pswitch_49
    .end packed-switch
.end method

.method public static getSSID()Ljava/lang/String;
    .registers 4

    #@0
    .line 707
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
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
    const-string v1, ""

    #@12
    if-nez v0, :cond_15

    #@14
    return-object v1

    #@15
    .line 709
    :cond_15
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_1c

    #@1b
    return-object v1

    #@1c
    .line 711
    :cond_1c
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 712
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_27

    #@26
    return-object v1

    #@27
    .line 715
    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2a
    move-result v1

    #@2b
    const/4 v2, 0x2

    #@2c
    if-le v1, v2, :cond_4c

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v1

    #@33
    const/16 v2, 0x22

    #@35
    if-ne v1, v2, :cond_4c

    #@37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@3a
    move-result v1

    #@3b
    const/4 v3, 0x1

    #@3c
    sub-int/2addr v1, v3

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v1

    #@41
    if-ne v1, v2, :cond_4c

    #@43
    .line 716
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@46
    move-result v1

    #@47
    sub-int/2addr v1, v3

    #@48
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    :cond_4c
    return-object v0
.end method

.method public static getServerAddressByWifi()Ljava/lang/String;
    .registers 2

    #@0
    .line 695
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
    if-nez v0, :cond_11

    #@e
    const-string v0, ""

    #@10
    return-object v0

    #@11
    .line 697
    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    #@14
    move-result-object v0

    #@15
    iget v0, v0, Landroid/net/DhcpInfo;->serverAddress:I

    #@17
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static getWifiEnabled()Z
    .registers 2

    #@0
    .line 346
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
    .line 348
    :cond_10
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public static getWifiScanResult()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .registers 3

    #@0
    .line 752
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;-><init>()V

    #@5
    .line 753
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_c

    #@b
    return-object v0

    #@c
    .line 755
    :cond_c
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@f
    move-result-object v1

    #@10
    const-string v2, "wifi"

    #@12
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/net/wifi/WifiManager;

    #@18
    .line 757
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_21

    #@1e
    .line 759
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->setAllResults(Ljava/util/List;)V

    #@21
    :cond_21
    return-object v0
.end method

.method public static is4G()Z
    .registers 2

    #@0
    .line 317
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_16

    #@6
    .line 319
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    .line 320
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    #@f
    move-result v0

    #@10
    const/16 v1, 0xd

    #@12
    if-ne v0, v1, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    :goto_17
    return v0
.end method

.method public static is5G()Z
    .registers 2

    #@0
    .line 331
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_16

    #@6
    .line 333
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    .line 334
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    #@f
    move-result v0

    #@10
    const/16 v1, 0x14

    #@12
    if-ne v0, v1, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    :goto_17
    return v0
.end method

.method public static isAvailable()Z
    .registers 1

    #@0
    .line 119
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDns()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_10

    #@6
    const/4 v0, 0x0

    #@7
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPing(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_e

    #@d
    goto :goto_10

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_11

    #@10
    :cond_10
    :goto_10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0
.end method

.method public static isAvailableAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .line 102
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$1;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$1;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static isAvailableByDns()Z
    .registers 1

    #@0
    const-string v0, ""

    #@2
    .line 219
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDns(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isAvailableByDns(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const-string p0, "www.baidu.com"

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 234
    :try_start_9
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@c
    move-result-object p0
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_d} :catch_11

    #@d
    if-eqz p0, :cond_10

    #@f
    const/4 v0, 0x1

    #@10
    :cond_10
    return v0

    #@11
    :catch_11
    move-exception p0

    #@12
    .line 237
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    #@15
    return v0
.end method

.method public static isAvailableByDnsAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task;"
        }
    .end annotation

    #@0
    .line 202
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$3;

    #@2
    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$3;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static isAvailableByDnsAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, ""

    #@2
    .line 188
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDnsAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    #@5
    return-void
.end method

.method public static isAvailableByPing()Z
    .registers 1

    #@0
    const-string v0, ""

    #@2
    .line 163
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPing(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isAvailableByPing(Ljava/lang/String;)Z
    .registers 4

    #@0
    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const-string p0, "223.5.5.5"

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    new-array v1, v0, [Ljava/lang/Object;

    #@b
    const/4 v2, 0x0

    #@c
    aput-object p0, v1, v2

    #@e
    const-string p0, "ping -c 1 %s"

    #@10
    .line 176
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    invoke-static {p0, v2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@17
    move-result-object p0

    #@18
    .line 177
    iget p0, p0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    #@1a
    if-nez p0, :cond_1d

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move v0, v2

    #@1e
    :goto_1e
    return v0
.end method

.method public static isAvailableByPingAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .line 145
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$2;

    #@2
    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$2;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static isAvailableByPingAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, ""

    #@2
    .line 131
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPingAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    #@5
    return-void
.end method

.method public static isBehindProxy()Z
    .registers 1

    #@0
    const-string v0, "http.proxyHost"

    #@2
    .line 273
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_12

    #@8
    const-string v0, "http.proxyPort"

    #@a
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method public static isConnected()Z
    .registers 1

    #@0
    .line 89
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 90
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method private static isEthernet()Z
    .registers 3

    #@0
    .line 503
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "connectivity"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager;

    #@c
    const/4 v1, 0x0

    #@d
    if-nez v0, :cond_10

    #@f
    return v1

    #@10
    :cond_10
    const/16 v2, 0x9

    #@12
    .line 505
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@15
    move-result-object v0

    #@16
    if-nez v0, :cond_19

    #@18
    return v1

    #@19
    .line 507
    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_20

    #@1f
    return v1

    #@20
    .line 509
    :cond_20
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@22
    if-eq v0, v2, :cond_28

    #@24
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@26
    if-ne v0, v2, :cond_29

    #@28
    :cond_28
    const/4 v1, 0x1

    #@29
    :cond_29
    return v1
.end method

.method public static isMobileData()Z
    .registers 2

    #@0
    .line 303
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 305
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_14

    #@c
    .line 306
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_14

    #@12
    const/4 v0, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    :goto_15
    return v0
.end method

.method public static isRegisteredNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)Z
    .registers 2

    #@0
    .line 738
    # invokes: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->getInstance()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->isRegistered(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method private static isSameScanResultContent(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z
    .registers 4

    #@0
    if-eqz p0, :cond_2a

    #@2
    if-eqz p1, :cond_2a

    #@4
    .line 861
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@6
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@8
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2a

    #@e
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@10
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@12
    .line 862
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2a

    #@18
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1a
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1c
    .line 863
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2a

    #@22
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    #@24
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    #@26
    if-ne p0, p1, :cond_2a

    #@28
    const/4 p0, 0x1

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    const/4 p0, 0x0

    #@2b
    :goto_2b
    return p0
.end method

.method private static isSameScanResults(Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p0, :cond_6

    #@3
    if-nez p1, :cond_6

    #@5
    return v0

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    if-eqz p0, :cond_35

    #@9
    if-nez p1, :cond_c

    #@b
    goto :goto_35

    #@c
    .line 847
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@13
    move-result v3

    #@14
    if-eq v2, v3, :cond_17

    #@16
    return v1

    #@17
    :cond_17
    move v2, v1

    #@18
    .line 850
    :goto_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@1b
    move-result v3

    #@1c
    if-ge v2, v3, :cond_34

    #@1e
    .line 851
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Landroid/net/wifi/ScanResult;

    #@24
    .line 852
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Landroid/net/wifi/ScanResult;

    #@2a
    .line 853
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/NetworkUtils;->isSameScanResultContent(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_31

    #@30
    return v1

    #@31
    :cond_31
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_18

    #@34
    :cond_34
    return v0

    #@35
    :cond_35
    :goto_35
    return v1
.end method

.method public static isUsingVPN()Z
    .registers 3

    #@0
    .line 282
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "connectivity"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager;

    #@c
    .line 283
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@e
    const/16 v2, 0x1c

    #@10
    if-lt v1, v2, :cond_1d

    #@12
    const/16 v1, 0x11

    #@14
    .line 284
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    :cond_1d
    const/4 v1, 0x4

    #@1e
    .line 286
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public static isWifiAvailable()Z
    .registers 1

    #@0
    .line 390
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailable()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public static isWifiAvailableAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .line 403
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$4;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$4;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static isWifiConnected()Z
    .registers 3

    #@0
    .line 375
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "connectivity"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager;

    #@c
    const/4 v1, 0x0

    #@d
    if-nez v0, :cond_10

    #@f
    return v1

    #@10
    .line 377
    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_1e

    #@16
    .line 378
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@19
    move-result v0

    #@1a
    const/4 v2, 0x1

    #@1b
    if-ne v0, v2, :cond_1e

    #@1d
    move v1, v2

    #@1e
    :cond_1e
    return v1
.end method

.method public static openWirelessSettings()V
    .registers 3

    #@0
    .line 75
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/content/Intent;

    #@6
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    #@8
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    const/high16 v2, 0x10000000

    #@d
    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@10
    move-result-object v1

    #@11
    .line 75
    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@14
    return-void
.end method

.method public static registerNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .registers 2

    #@0
    .line 728
    # invokes: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->getInstance()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->registerListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    #@7
    return-void
.end method

.method public static removeOnWifiChangedConsumer(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;)V"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 822
    :cond_3
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$9;

    #@5
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$9;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@b
    return-void
.end method

.method public static setWifiEnabled(Z)V
    .registers 3

    #@0
    .line 360
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
    .line 362
    :cond_f
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    #@12
    move-result v1

    #@13
    if-ne p0, v1, :cond_16

    #@15
    return-void

    #@16
    .line 363
    :cond_16
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    #@19
    return-void
.end method

.method private static startScanWifi()V
    .registers 7

    #@0
    .line 787
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@7
    .line 788
    new-instance v1, Ljava/util/Timer;

    #@9
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #@c
    sput-object v1, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    #@e
    .line 789
    new-instance v2, Lcom/blankj/utilcode/util/NetworkUtils$8;

    #@10
    invoke-direct {v2}, Lcom/blankj/utilcode/util/NetworkUtils$8;-><init>()V

    #@13
    const-wide/16 v3, 0x0

    #@15
    const-wide/16 v5, 0xbb8

    #@17
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@1a
    return-void
.end method

.method private static startScanWifiIfEnabled()V
    .registers 2

    #@0
    .line 813
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 815
    :cond_7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@a
    move-result-object v0

    #@b
    const-string v1, "wifi"

    #@d
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@13
    .line 817
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    #@16
    return-void
.end method

.method private static stopScanWifi()V
    .registers 1

    #@0
    .line 834
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 835
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    #@7
    const/4 v0, 0x0

    #@8
    .line 836
    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    #@a
    :cond_a
    return-void
.end method

.method public static unregisterNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .registers 2

    #@0
    .line 747
    # invokes: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->getInstance()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->unregisterListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    #@7
    return-void
.end method
