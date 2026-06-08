.class public final Lcom/blankj/utilcode/util/MetaDataUtils;
.super Ljava/lang/Object;
.source "MetaDataUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getMetaDataInActivity(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/MetaDataUtils;->getMetaDataInActivity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getMetaDataInActivity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 68
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    .line 69
    new-instance v1, Landroid/content/ComponentName;

    #@a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@11
    const/16 p0, 0x80

    #@13
    .line 71
    :try_start_13
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@16
    move-result-object p0

    #@17
    .line 72
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@19
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object p0

    #@1d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object p0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_21} :catch_22

    #@21
    goto :goto_28

    #@22
    :catch_22
    move-exception p0

    #@23
    .line 74
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@26
    const-string p0, ""

    #@28
    :goto_28
    return-object p0
.end method

.method public static getMetaDataInApp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 35
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    .line 36
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const/16 v2, 0x80

    #@12
    .line 38
    :try_start_12
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@15
    move-result-object v0

    #@16
    .line 39
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@18
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object p0

    #@1c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object p0
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_20} :catch_21

    #@20
    goto :goto_27

    #@21
    :catch_21
    move-exception p0

    #@22
    .line 41
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@25
    const-string p0, ""

    #@27
    :goto_27
    return-object p0
.end method

.method public static getMetaDataInReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/MetaDataUtils;->getMetaDataInReceiver(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getMetaDataInReceiver(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 134
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    .line 135
    new-instance v1, Landroid/content/ComponentName;

    #@a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@11
    const/16 p0, 0x80

    #@13
    .line 137
    :try_start_13
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@16
    move-result-object p0

    #@17
    .line 138
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@19
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object p0

    #@1d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object p0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_21} :catch_22

    #@21
    goto :goto_28

    #@22
    :catch_22
    move-exception p0

    #@23
    .line 140
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@26
    const-string p0, ""

    #@28
    :goto_28
    return-object p0
.end method

.method public static getMetaDataInService(Landroid/app/Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/MetaDataUtils;->getMetaDataInService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getMetaDataInService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 101
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    .line 102
    new-instance v1, Landroid/content/ComponentName;

    #@a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@11
    const/16 p0, 0x80

    #@13
    .line 104
    :try_start_13
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@16
    move-result-object p0

    #@17
    .line 105
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@19
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object p0

    #@1d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object p0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_21} :catch_22

    #@21
    goto :goto_28

    #@22
    :catch_22
    move-exception p0

    #@23
    .line 107
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@26
    const-string p0, ""

    #@28
    :goto_28
    return-object p0
.end method
