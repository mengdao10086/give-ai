.class Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;
.super Landroid/os/Handler;
.source "MessengerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils$ServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)V
    .registers 2

    #@0
    .line 275
    iput-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    if-eqz v0, :cond_29

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_19

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_e

    #@a
    .line 290
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@d
    goto :goto_3a

    #@e
    .line 283
    :cond_e
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@10
    # invokes: Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->sendMsg2Client(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->access$300(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V

    #@13
    .line 284
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@15
    # invokes: Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->consumeServerProcessCallback(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->access$400(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V

    #@18
    goto :goto_3a

    #@19
    .line 287
    :cond_19
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@1b
    # getter for: Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->access$200(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;

    #@1e
    move-result-object v0

    #@1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    #@21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    goto :goto_3a

    #@29
    .line 280
    :cond_29
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@2b
    # getter for: Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->access$200(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;

    #@2e
    move-result-object v0

    #@2f
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v1

    #@35
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@37
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    :goto_3a
    return-void
.end method
