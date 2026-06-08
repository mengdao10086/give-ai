.class public final Lcom/blankj/utilcode/util/CleanUtils;
.super Ljava/lang/Object;
.source "CleanUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static cleanAppUserData()V
    .registers 2

    #@0
    .line 100
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
    .line 102
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    #@f
    return-void
.end method

.method public static cleanCustomDir(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 95
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->deleteAllInDir(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static cleanExternalCache()Z
    .registers 2

    #@0
    const-string v0, "mounted"

    #@2
    .line 84
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1c

    #@c
    .line 85
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->deleteAllInDir(Ljava/io/File;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    :goto_1d
    return v0
.end method

.method public static cleanInternalCache()Z
    .registers 1

    #@0
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->deleteAllInDir(Ljava/io/File;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static cleanInternalDbByName(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 64
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->deleteDatabase(Ljava/lang/String;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static cleanInternalDbs()Z
    .registers 3

    #@0
    .line 53
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const-string v2, "databases"

    #@10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->deleteAllInDir(Ljava/io/File;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public static cleanInternalFiles()Z
    .registers 1

    #@0
    .line 43
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->deleteAllInDir(Ljava/io/File;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static cleanInternalSp()Z
    .registers 3

    #@0
    .line 74
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const-string v2, "shared_prefs"

    #@10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->deleteAllInDir(Ljava/io/File;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method
