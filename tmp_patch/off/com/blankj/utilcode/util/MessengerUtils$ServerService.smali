.class public Lcom/blankj/utilcode/util/MessengerUtils$ServerService;
.super Landroid/app/Service;
.source "MessengerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerService"
.end annotation


# instance fields
.field private final mClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiveClientMsgHandler:Landroid/os/Handler;

.field private final messenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 270
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 272
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    .line 274
    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;

    #@c
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;-><init>(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)V

    #@f
    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mReceiveClientMsgHandler:Landroid/os/Handler;

    #@11
    .line 295
    new-instance v1, Landroid/os/Messenger;

    #@13
    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@16
    iput-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    #@18
    return-void
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    #@0
    .line 270
    iget-object p0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V
    .registers 2

    #@0
    .line 270
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->sendMsg2Client(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V
    .registers 2

    #@0
    .line 270
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->consumeServerProcessCallback(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method private consumeServerProcessCallback(Landroid/os/Message;)V
    .registers 4

    #@0
    .line 339
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_1d

    #@6
    const-string v0, "MESSENGER_UTILS"

    #@8
    .line 341
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_1d

    #@e
    .line 343
    # getter for: Lcom/blankj/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/blankj/utilcode/util/MessengerUtils;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/blankj/utilcode/util/MessengerUtils$MessageCallback;

    #@18
    if-eqz v0, :cond_1d

    #@1a
    .line 345
    invoke-interface {v0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$MessageCallback;->messageCall(Landroid/os/Bundle;)V

    #@1d
    :cond_1d
    return-void
.end method

.method private sendMsg2Client(Landroid/os/Message;)V
    .registers 5

    #@0
    .line 325
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@3
    move-result-object p1

    #@4
    .line 326
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_29

    #@14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/os/Messenger;

    #@1a
    if-eqz v1, :cond_e

    #@1c
    .line 329
    :try_start_1c
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    #@23
    goto :goto_e

    #@24
    :catch_24
    move-exception v1

    #@25
    .line 332
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    #@28
    goto :goto_e

    #@29
    .line 335
    :cond_29
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    #@2c
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    #@0
    .line 300
    iget-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    #@2
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    #@0
    .line 306
    sget-object p2, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->DEFAULT_CHANNEL_CONFIG:Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;

    #@2
    const/4 p3, 0x0

    #@3
    invoke-static {p2, p3}, Lcom/blankj/utilcode/util/UtilsBridge;->getNotification(Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;Lcom/blankj/utilcode/util/Utils$Consumer;)Landroid/app/Notification;

    #@6
    move-result-object p2

    #@7
    const/4 p3, 0x1

    #@8
    .line 309
    invoke-virtual {p0, p3, p2}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->startForeground(ILandroid/app/Notification;)V

    #@b
    const/4 p2, 0x2

    #@c
    if-eqz p1, :cond_27

    #@e
    .line 312
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@11
    move-result-object p1

    #@12
    if-eqz p1, :cond_27

    #@14
    .line 314
    iget-object p3, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mReceiveClientMsgHandler:Landroid/os/Handler;

    #@16
    invoke-static {p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@19
    move-result-object p3

    #@1a
    .line 315
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    #@1c
    iput-object v0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1e
    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@21
    .line 317
    invoke-direct {p0, p3}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->sendMsg2Client(Landroid/os/Message;)V

    #@24
    .line 318
    invoke-direct {p0, p3}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->consumeServerProcessCallback(Landroid/os/Message;)V

    #@27
    :cond_27
    return p2
.end method
