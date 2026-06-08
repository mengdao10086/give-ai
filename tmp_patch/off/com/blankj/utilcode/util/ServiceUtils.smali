.class public final Lcom/blankj/utilcode/util/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V
    .registers 4

    #@0
    .line 194
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    goto :goto_c

    #@8
    :catch_8
    move-exception p0

    #@9
    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@c
    :goto_c
    return-void
.end method

.method public static bindService(Ljava/lang/Class;Landroid/content/ServiceConnection;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ServiceConnection;",
            "I)V"
        }
    .end annotation

    #@0
    .line 171
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ServiceUtils;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V

    #@c
    return-void
.end method

.method public static bindService(Ljava/lang/String;Landroid/content/ServiceConnection;I)V
    .registers 3

    #@0
    .line 146
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ServiceUtils;->bindService(Ljava/lang/Class;Landroid/content/ServiceConnection;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    goto :goto_c

    #@8
    :catch_8
    move-exception p0

    #@9
    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@c
    :goto_c
    return-void
.end method

.method public static getAllRunningServices()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 36
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "activity"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/ActivityManager;

    #@c
    const v1, 0x7fffffff

    #@f
    .line 37
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    .line 38
    new-instance v1, Ljava/util/HashSet;

    #@15
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@18
    if-eqz v0, :cond_3c

    #@1a
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_21

    #@20
    goto :goto_3c

    #@21
    .line 40
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v0

    #@25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_3b

    #@2b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    #@31
    .line 41
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #@33
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_25

    #@3b
    :cond_3b
    return-object v1

    #@3c
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    #@3d
    return-object v0
.end method

.method public static isServiceRunning(Ljava/lang/Class;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 216
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ServiceUtils;->isServiceRunning(Ljava/lang/String;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isServiceRunning(Ljava/lang/String;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 227
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v1

    #@5
    const-string v2, "activity"

    #@7
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/app/ActivityManager;

    #@d
    const v2, 0x7fffffff

    #@10
    .line 228
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    #@13
    move-result-object v1

    #@14
    if-eqz v1, :cond_3b

    #@16
    .line 229
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_1d

    #@1c
    goto :goto_3b

    #@1d
    .line 230
    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3b

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    #@2d
    .line 231
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #@2f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_3b

    #@37
    if-eqz v2, :cond_21

    #@39
    const/4 p0, 0x1

    #@3a
    return p0

    #@3b
    :catch_3b
    :cond_3b
    :goto_3b
    return v0
.end method

.method public static startService(Landroid/content/Intent;)V
    .registers 2

    #@0
    const/16 v0, 0x20

    #@2
    .line 75
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@5
    .line 77
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
    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@11
    :goto_11
    return-void
.end method

.method public static startService(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 65
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    invoke-static {v0}, Lcom/blankj/utilcode/util/ServiceUtils;->startService(Landroid/content/Intent;)V

    #@c
    return-void
.end method

.method public static startService(Ljava/lang/String;)V
    .registers 1

    #@0
    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ServiceUtils;->startService(Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    goto :goto_c

    #@8
    :catch_8
    move-exception p0

    #@9
    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@c
    :goto_c
    return-void
.end method

.method public static stopService(Landroid/content/Intent;)Z
    .registers 2

    #@0
    .line 119
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    #@7
    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return p0

    #@9
    :catch_9
    move-exception p0

    #@a
    .line 121
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@d
    const/4 p0, 0x0

    #@e
    return p0
.end method

.method public static stopService(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 108
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    invoke-static {v0}, Lcom/blankj/utilcode/util/ServiceUtils;->stopService(Landroid/content/Intent;)Z

    #@c
    move-result p0

    #@d
    return p0
.end method

.method public static stopService(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 94
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ServiceUtils;->stopService(Ljava/lang/Class;)Z

    #@7
    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return p0

    #@9
    :catch_9
    move-exception p0

    #@a
    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@d
    const/4 p0, 0x0

    #@e
    return p0
.end method

.method public static unbindService(Landroid/content/ServiceConnection;)V
    .registers 2

    #@0
    .line 206
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    #@7
    return-void
.end method
