.class public Lcom/blankj/utilcode/util/MessengerUtils;
.super Ljava/lang/Object;
.source "MessengerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/MessengerUtils$MessageCallback;,
        Lcom/blankj/utilcode/util/MessengerUtils$ServerService;,
        Lcom/blankj/utilcode/util/MessengerUtils$Client;
    }
.end annotation


# static fields
.field private static final KEY_STRING:Ljava/lang/String; = "MESSENGER_UTILS"

.field private static final WHAT_SEND:I = 0x2

.field private static final WHAT_SUBSCRIBE:I = 0x0

.field private static final WHAT_UNSUBSCRIBE:I = 0x1

.field private static sClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/MessengerUtils$Client;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocalClient:Lcom/blankj/utilcode/util/MessengerUtils$Client;

.field private static subscribers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/MessengerUtils$MessageCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    #@e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    #@0
    .line 40
    sget-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object v0
.end method

.method public static post(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    #@0
    const-string v0, "MESSENGER_UTILS"

    #@2
    .line 121
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 122
    sget-object p0, Lcom/blankj/utilcode/util/MessengerUtils;->sLocalClient:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@7
    if-eqz p0, :cond_d

    #@9
    .line 123
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->sendMsg2Server(Landroid/os/Bundle;)V

    #@c
    goto :goto_1e

    #@d
    .line 125
    :cond_d
    new-instance p0, Landroid/content/Intent;

    #@f
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@12
    move-result-object v0

    #@13
    const-class v1, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@15
    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@18
    .line 126
    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@1b
    .line 127
    invoke-static {p0}, Lcom/blankj/utilcode/util/MessengerUtils;->startServiceCompat(Landroid/content/Intent;)V

    #@1e
    .line 129
    :goto_1e
    sget-object p0, Lcom/blankj/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    #@20
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@23
    move-result-object p0

    #@24
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object p0

    #@28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_38

    #@2e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@34
    .line 130
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->sendMsg2Server(Landroid/os/Bundle;)V

    #@37
    goto :goto_28

    #@38
    :cond_38
    return-void
.end method

.method public static register()V
    .registers 3

    #@0
    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isMainProcess()Z

    #@3
    move-result v0

    #@4
    const-string v1, "MessengerUtils"

    #@6
    if-eqz v0, :cond_29

    #@8
    .line 54
    const-class v0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@a
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isServiceRunning(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1a

    #@14
    const-string v0, "Server service is running."

    #@16
    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    return-void

    #@1a
    .line 58
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    #@1c
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@1f
    move-result-object v1

    #@20
    const-class v2, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@22
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@25
    invoke-static {v0}, Lcom/blankj/utilcode/util/MessengerUtils;->startServiceCompat(Landroid/content/Intent;)V

    #@28
    return-void

    #@29
    .line 61
    :cond_29
    sget-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->sLocalClient:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@2b
    if-nez v0, :cond_42

    #@2d
    .line 62
    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@2f
    const/4 v2, 0x0

    #@30
    invoke-direct {v0, v2}, Lcom/blankj/utilcode/util/MessengerUtils$Client;-><init>(Ljava/lang/String;)V

    #@33
    .line 63
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->bind()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3c

    #@39
    .line 64
    sput-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->sLocalClient:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@3b
    goto :goto_47

    #@3c
    :cond_3c
    const-string v0, "Bind service failed."

    #@3e
    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_47

    #@42
    :cond_42
    const-string v0, "The client have been bind."

    #@44
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    :goto_47
    return-void
.end method

.method public static register(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 88
    sget-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    const-string v1, "MessengerUtils"

    #@8
    if-eqz v0, :cond_1d

    #@a
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    const-string v2, "register: client registered: "

    #@e
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    return-void

    #@1d
    .line 92
    :cond_1d
    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@1f
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;-><init>(Ljava/lang/String;)V

    #@22
    .line 93
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->bind()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2e

    #@28
    .line 94
    sget-object v1, Lcom/blankj/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    #@2a
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    goto :goto_40

    #@2e
    .line 96
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    const-string v2, "register: client bind failed: "

    #@32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object p0

    #@39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object p0

    #@3d
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    :goto_40
    return-void
.end method

.method private static startServiceCompat(Landroid/content/Intent;)V
    .registers 2

    #@0
    const/16 v0, 0x20

    #@2
    .line 136
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@5
    .line 138
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0}, Landroid/app/Application;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    #@c
    goto :goto_11

    #@d
    :catch_d
    move-exception p0

    #@e
    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@11
    :goto_11
    return-void
.end method

.method public static subscribe(Ljava/lang/String;Lcom/blankj/utilcode/util/MessengerUtils$MessageCallback;)V
    .registers 3

    #@0
    .line 113
    sget-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public static unregister()V
    .registers 3

    #@0
    .line 74
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isMainProcess()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2c

    #@6
    .line 75
    const-class v0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isServiceRunning(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1a

    #@12
    const-string v0, "MessengerUtils"

    #@14
    const-string v1, "Server service isn\'t running."

    #@16
    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    return-void

    #@1a
    .line 79
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    #@1c
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@1f
    move-result-object v1

    #@20
    const-class v2, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    #@22
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@25
    .line 80
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    #@2c
    .line 82
    :cond_2c
    sget-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->sLocalClient:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@2e
    if-eqz v0, :cond_33

    #@30
    .line 83
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->unbind()V

    #@33
    :cond_33
    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 101
    sget-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1d

    #@8
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    const-string v1, "unregister: client didn\'t register: "

    #@c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object p0

    #@13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object p0

    #@17
    const-string v0, "MessengerUtils"

    #@19
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    return-void

    #@1d
    .line 105
    :cond_1d
    sget-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    #@1f
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/blankj/utilcode/util/MessengerUtils$Client;

    #@25
    .line 106
    sget-object v1, Lcom/blankj/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    #@27
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    if-eqz v0, :cond_2f

    #@2c
    .line 108
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->unbind()V

    #@2f
    :cond_2f
    return-void
.end method

.method public static unsubscribe(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 117
    sget-object v0, Lcom/blankj/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method
