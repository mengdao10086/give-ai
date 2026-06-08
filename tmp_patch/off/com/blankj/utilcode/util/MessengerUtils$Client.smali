.class Lcom/blankj/utilcode/util/MessengerUtils$Client;
.super Ljava/lang/Object;
.source "MessengerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Client"
.end annotation


# instance fields
.field mCached:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mClient:Landroid/os/Messenger;

.field mConn:Landroid/content/ServiceConnection;

.field mPkgName:Ljava/lang/String;

.field mReceiveServeMsgHandler:Landroid/os/Handler;

.field mServer:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 151
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    #@a
    .line 152
    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$Client$1;

    #@c
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client$1;-><init>(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V

    #@f
    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    #@11
    .line 167
    new-instance v0, Landroid/os/Messenger;

    #@13
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    #@15
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@18
    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mClient:Landroid/os/Messenger;

    #@1a
    .line 168
    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;

    #@1c
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;-><init>(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V

    #@1f
    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mConn:Landroid/content/ServiceConnection;

    #@21
    .line 197
    iput-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    #@23
    return-void
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V
    .registers 1

    #@0
    .line 147
    invoke-direct {p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->sendCachedMsg2Server()V

    #@3
    return-void
.end method

.method private send2Server(Landroid/os/Bundle;)Z
    .registers 4

    #@0
    .line 256
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 257
    const-class v1, Lcom/blankj/utilcode/util/MessengerUtils;

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@10
    .line 258
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@13
    .line 259
    iget-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mClient:Landroid/os/Messenger;

    #@15
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@17
    .line 261
    :try_start_17
    iget-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1e

    #@1c
    const/4 p1, 0x1

    #@1d
    return p1

    #@1e
    :catch_1e
    move-exception p1

    #@1f
    .line 264
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    #@22
    const/4 p1, 0x0

    #@23
    return p1
.end method

.method private sendCachedMsg2Server()V
    .registers 3

    #@0
    .line 247
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 248
    :cond_9
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    #@b
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    #@e
    move-result v0

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    :goto_11
    if-ltz v0, :cond_29

    #@13
    .line 249
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    #@15
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/os/Bundle;

    #@1b
    invoke-direct {p0, v1}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->send2Server(Landroid/os/Bundle;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_26

    #@21
    .line 250
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    #@26
    :cond_26
    add-int/lit8 v0, v0, -0x1

    #@28
    goto :goto_11

    #@29
    :cond_29
    return-void
.end method


# virtual methods
.method bind()Z
    .registers 5

    #@0
    .line 201
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-eqz v0, :cond_1f

    #@9
    .line 202
    new-instance v0, Landroid/content/Intent;

    #@b
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@e
    move-result-object v2

    #@f
    const-class v3, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@11
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@14
    .line 203
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mConn:Landroid/content/ServiceConnection;

    #@1a
    invoke-virtual {v2, v0, v3, v1}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@1d
    move-result v0

    #@1e
    return v0

    #@1f
    .line 205
    :cond_1f
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    #@21
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppInstalled(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    const/4 v2, 0x0

    #@26
    const-string v3, "MessengerUtils"

    #@28
    if-eqz v0, :cond_71

    #@2a
    .line 206
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    #@2c
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppRunning(Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_5c

    #@32
    .line 207
    new-instance v0, Landroid/content/Intent;

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    iget-object v3, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    const-string v3, ".messenger"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4c
    .line 208
    iget-object v2, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    #@4e
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@51
    .line 209
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@54
    move-result-object v2

    #@55
    iget-object v3, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mConn:Landroid/content/ServiceConnection;

    #@57
    invoke-virtual {v2, v0, v3, v1}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@5a
    move-result v0

    #@5b
    return v0

    #@5c
    .line 211
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    #@5e
    const-string v1, "bind: the app is not running -> "

    #@60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@63
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    return v2

    #@71
    .line 215
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    #@73
    const-string v1, "bind: the app is not installed -> "

    #@75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@78
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    return v2
.end method

.method sendMsg2Server(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 235
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    #@2
    if-nez v0, :cond_1e

    #@4
    .line 236
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@9
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const-string v1, "save the bundle "

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    const-string v0, "MessengerUtils"

    #@1a
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    goto :goto_2c

    #@1e
    .line 239
    :cond_1e
    invoke-direct {p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->sendCachedMsg2Server()V

    #@21
    .line 240
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->send2Server(Landroid/os/Bundle;)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2c

    #@27
    .line 241
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    #@29
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@2c
    :cond_2c
    :goto_2c
    return-void
.end method

.method unbind()V
    .registers 5

    #@0
    .line 221
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getCurrentProcessName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 222
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    #@a
    const/4 v2, 0x1

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    .line 223
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mClient:Landroid/os/Messenger;

    #@12
    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@14
    .line 225
    :try_start_14
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    #@19
    goto :goto_1e

    #@1a
    :catch_1a
    move-exception v0

    #@1b
    .line 227
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    #@1e
    .line 230
    :goto_1e
    :try_start_1e
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@21
    move-result-object v0

    #@22
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mConn:Landroid/content/ServiceConnection;

    #@24
    invoke-virtual {v0, v1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_27

    #@27
    :catch_27
    return-void
.end method
