.class public final Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiScanResults"
.end annotation


# instance fields
.field private allResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private filterResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->allResults:Ljava/util/List;

    #@a
    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->filterResults:Ljava/util/List;

    #@11
    return-void
.end method

.method static synthetic access$500(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Ljava/util/List;
    .registers 1

    #@0
    .line 1023
    iget-object p0, p0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->allResults:Ljava/util/List;

    #@2
    return-object p0
.end method

.method private static filterScanResult(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_4c

    #@2
    .line 1045
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_4c

    #@9
    .line 1048
    :cond_9
    new-instance v0, Ljava/util/LinkedHashMap;

    #@b
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@e
    move-result v1

    #@f
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@12
    .line 1049
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object p0

    #@16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_42

    #@1c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/net/wifi/ScanResult;

    #@22
    .line 1050
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2b

    #@2a
    goto :goto_16

    #@2b
    .line 1053
    :cond_2b
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@2d
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/net/wifi/ScanResult;

    #@33
    if-eqz v2, :cond_3c

    #@35
    .line 1054
    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    #@37
    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    #@39
    if-lt v2, v3, :cond_3c

    #@3b
    goto :goto_16

    #@3c
    .line 1057
    :cond_3c
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@3e
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    goto :goto_16

    #@42
    .line 1059
    :cond_42
    new-instance p0, Ljava/util/ArrayList;

    #@44
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@47
    move-result-object v0

    #@48
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@4b
    return-object p0

    #@4c
    .line 1046
    :cond_4c
    :goto_4c
    new-instance p0, Ljava/util/ArrayList;

    #@4e
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@51
    return-object p0
.end method


# virtual methods
.method public getAllResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    #@0
    .line 1032
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->allResults:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getFilterResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    #@0
    .line 1036
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->filterResults:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public setAllResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 1040
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->allResults:Ljava/util/List;

    #@2
    .line 1041
    invoke-static {p1}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->filterScanResult(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->filterResults:Ljava/util/List;

    #@8
    return-void
.end method
