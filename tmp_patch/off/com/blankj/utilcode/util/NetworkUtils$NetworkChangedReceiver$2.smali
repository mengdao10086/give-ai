.class Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->unregisterListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

.field final synthetic val$listener:Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .registers 3

    #@0
    .line 901
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;->val$listener:Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    .line 904
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@2
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@9
    move-result v0

    #@a
    .line 905
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@c
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;->val$listener:Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    #@12
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@15
    const/4 v1, 0x1

    #@16
    if-ne v0, v1, :cond_2f

    #@18
    .line 906
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@1a
    # getter for: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2f

    #@24
    .line 907
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@27
    move-result-object v0

    #@28
    # invokes: Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->getInstance()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@2f
    :cond_2f
    return-void
.end method
