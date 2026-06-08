.class Lcom/blankj/utilcode/util/NetworkUtils$8$1;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/NetworkUtils$8;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/NetworkUtils$8;)V
    .registers 2

    #@0
    .line 799
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$8$1;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$8;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    .line 802
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->access$100()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1c

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/blankj/utilcode/util/Utils$Consumer;

    #@14
    .line 803
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->access$300()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v1, v2}, Lcom/blankj/utilcode/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    #@1b
    goto :goto_8

    #@1c
    :cond_1c
    return-void
.end method
