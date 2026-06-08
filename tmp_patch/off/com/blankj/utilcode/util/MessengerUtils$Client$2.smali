.class Lcom/blankj/utilcode/util/MessengerUtils$Client$2;
.super Ljava/lang/Object;
.source "MessengerUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils$Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V
    .registers 2

    #@0
    .line 168
    iput-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    #@0
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "client service connected "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    const-string v0, "MessengerUtils"

    #@11
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 173
    iget-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@16
    new-instance v0, Landroid/os/Messenger;

    #@18
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #@1b
    iput-object v0, p1, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    #@1d
    .line 174
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getCurrentProcessName()Ljava/lang/String;

    #@20
    move-result-object p1

    #@21
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@24
    move-result p1

    #@25
    .line 175
    iget-object p2, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@27
    iget-object p2, p2, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    #@29
    const/4 v0, 0x0

    #@2a
    invoke-static {p2, v0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@2d
    move-result-object p1

    #@2e
    .line 176
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@31
    move-result-object p2

    #@32
    const-class v0, Lcom/blankj/utilcode/util/MessengerUtils;

    #@34
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@3b
    .line 177
    iget-object p2, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@3d
    iget-object p2, p2, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mClient:Landroid/os/Messenger;

    #@3f
    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@41
    .line 179
    :try_start_41
    iget-object p2, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@43
    iget-object p2, p2, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    #@45
    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    #@48
    goto :goto_4d

    #@49
    :catch_49
    move-exception p1

    #@4a
    .line 181
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    #@4d
    .line 183
    :goto_4d
    iget-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@4f
    # invokes: Lcom/blankj/utilcode/util/MessengerUtils$Client;->sendCachedMsg2Server()V
    invoke-static {p1}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->access$100(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V

    #@52
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    #@0
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "client service disconnected:"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const-string v1, "MessengerUtils"

    #@11
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 189
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@16
    const/4 v2, 0x0

    #@17
    iput-object v2, v0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    #@19
    .line 190
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@1b
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->bind()Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_33

    #@21
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    const-string v2, "client service rebind failed: "

    #@25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    :cond_33
    return-void
.end method
