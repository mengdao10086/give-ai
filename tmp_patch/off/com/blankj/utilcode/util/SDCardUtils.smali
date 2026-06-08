.class public final Lcom/blankj/utilcode/util/SDCardUtils;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getExternalAvailableSize()J
    .registers 2

    #@0
    .line 144
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->getSDCardPathByEnvironment()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsAvailableSize(Ljava/lang/String;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static getExternalTotalSize()J
    .registers 2

    #@0
    .line 135
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->getSDCardPathByEnvironment()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsTotalSize(Ljava/lang/String;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static getInternalAvailableSize()J
    .registers 2

    #@0
    .line 162
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsAvailableSize(Ljava/lang/String;)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public static getInternalTotalSize()J
    .registers 2

    #@0
    .line 153
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsTotalSize(Ljava/lang/String;)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public static getMountedSDCardPath()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 116
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->getSDCardInfo()Ljava/util/List;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_3d

    #@b
    .line 117
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_12

    #@11
    goto :goto_3d

    #@12
    .line 118
    :cond_12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3d

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;

    #@22
    .line 119
    # getter for: Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;
    invoke-static {v2}, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->access$000(Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    if-nez v3, :cond_29

    #@28
    goto :goto_16

    #@29
    :cond_29
    const-string v4, "mounted"

    #@2b
    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_16

    #@35
    .line 122
    # getter for: Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->access$100(Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_16

    #@3d
    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public static getSDCardInfo()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;",
            ">;"
        }
    .end annotation

    #@0
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 57
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v1

    #@9
    const-string v2, "storage"

    #@b
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/os/storage/StorageManager;

    #@11
    if-nez v1, :cond_14

    #@13
    return-object v0

    #@14
    .line 60
    :cond_14
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    #@17
    move-result-object v1

    #@18
    .line 63
    :try_start_18
    const-class v2, Landroid/os/storage/StorageVolume;

    #@1a
    const-string v3, "getPath"

    #@1c
    const/4 v4, 0x0

    #@1d
    new-array v5, v4, [Ljava/lang/Class;

    #@1f
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v2

    #@23
    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_5a

    #@2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Landroid/os/storage/StorageVolume;

    #@33
    .line 65
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    #@36
    move-result v5

    #@37
    .line 66
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    new-array v7, v4, [Ljava/lang/Object;

    #@3d
    .line 67
    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Ljava/lang/String;

    #@43
    .line 68
    new-instance v7, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;

    #@45
    invoke-direct {v7, v3, v6, v5}, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@48
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_4b} :catch_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_4b} :catch_51
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_4b} :catch_4c

    #@4b
    goto :goto_27

    #@4c
    :catch_4c
    move-exception v1

    #@4d
    .line 75
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@50
    goto :goto_5a

    #@51
    :catch_51
    move-exception v1

    #@52
    .line 73
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@55
    goto :goto_5a

    #@56
    :catch_56
    move-exception v1

    #@57
    .line 71
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@5a
    :cond_5a
    :goto_5a
    return-object v0
.end method

.method public static getSDCardPathByEnvironment()Ljava/lang/String;
    .registers 1

    #@0
    .line 44
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    :cond_f
    const-string v0, ""

    #@11
    return-object v0
.end method

.method public static isSDCardEnableByEnvironment()Z
    .registers 2

    #@0
    const-string v0, "mounted"

    #@2
    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method
