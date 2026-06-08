.class Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)V
    .registers 2

    #@0
    .line 917
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    .line 921
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getNetworkType()Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@3
    move-result-object v0

    #@4
    .line 922
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@6
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mType:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$1000(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@9
    move-result-object v1

    #@a
    if-ne v1, v0, :cond_d

    #@c
    return-void

    #@d
    .line 923
    :cond_d
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@f
    # setter for: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mType:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$1002(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@12
    .line 924
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@14
    if-ne v0, v1, :cond_30

    #@16
    .line 925
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@18
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v0

    #@20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_4a

    #@26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    #@2c
    .line 926
    invoke-interface {v1}, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;->onDisconnected()V

    #@2f
    goto :goto_20

    #@30
    .line 929
    :cond_30
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@32
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    #@35
    move-result-object v1

    #@36
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v1

    #@3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_4a

    #@40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    #@46
    .line 930
    invoke-interface {v2, v0}, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;->onConnected(Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)V

    #@49
    goto :goto_3a

    #@4a
    :cond_4a
    return-void
.end method
