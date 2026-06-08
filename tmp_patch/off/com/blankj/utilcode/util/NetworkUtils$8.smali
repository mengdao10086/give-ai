.class Lcom/blankj/utilcode/util/NetworkUtils$8;
.super Ljava/util/TimerTask;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils;->startScanWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 789
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    .line 793
    # invokes: Lcom/blankj/utilcode/util/NetworkUtils;->startScanWifiIfEnabled()V
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->access$400()V

    #@3
    .line 794
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiScanResult()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@6
    move-result-object v0

    #@7
    .line 795
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->access$300()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@a
    move-result-object v1

    #@b
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->allResults:Ljava/util/List;
    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->access$500(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->allResults:Ljava/util/List;
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->access$500(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Ljava/util/List;

    #@12
    move-result-object v2

    #@13
    # invokes: Lcom/blankj/utilcode/util/NetworkUtils;->isSameScanResults(Ljava/util/List;Ljava/util/List;)Z
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/NetworkUtils;->access$600(Ljava/util/List;Ljava/util/List;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1a

    #@19
    return-void

    #@1a
    .line 798
    :cond_1a
    # setter for: Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->access$302(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@1d
    .line 799
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$8$1;

    #@1f
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$8$1;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$8;)V

    #@22
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@25
    return-void
.end method
