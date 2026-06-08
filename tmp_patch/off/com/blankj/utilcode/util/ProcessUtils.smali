.class public final Lcom/blankj/utilcode/util/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getAllBackgroundProcesses()Ljava/util/Set;
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
    .line 131
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
    .line 132
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    .line 133
    new-instance v1, Ljava/util/HashSet;

    #@12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@15
    if-eqz v0, :cond_2d

    #@17
    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v0

    #@1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2d

    #@21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@27
    .line 136
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    #@29
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@2c
    goto :goto_1b

    #@2d
    :cond_2d
    return-object v1
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .registers 2

    #@0
    .line 213
    invoke-static {}, Lcom/blankj/utilcode/util/ProcessUtils;->getCurrentProcessNameByFile()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_b

    #@a
    return-object v0

    #@b
    .line 215
    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/ProcessUtils;->getCurrentProcessNameByAms()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_16

    #@15
    return-object v0

    #@16
    .line 217
    :cond_16
    invoke-static {}, Lcom/blankj/utilcode/util/ProcessUtils;->getCurrentProcessNameByReflect()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method private static getCurrentProcessNameByAms()Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, ""

    #@2
    .line 236
    :try_start_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    const-string v2, "activity"

    #@8
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/app/ActivityManager;

    #@e
    if-nez v1, :cond_11

    #@10
    return-object v0

    #@11
    .line 238
    :cond_11
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_3c

    #@17
    .line 239
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1e

    #@1d
    goto :goto_3c

    #@1e
    .line 240
    :cond_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@21
    move-result v2

    #@22
    .line 241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_3c

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@32
    .line 242
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    #@34
    if-ne v4, v2, :cond_26

    #@36
    .line 243
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    #@38
    if-eqz v4, :cond_26

    #@3a
    .line 244
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_3c

    #@3c
    :catch_3c
    :cond_3c
    :goto_3c
    return-object v0
.end method

.method private static getCurrentProcessNameByFile()Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "/proc/"

    #@2
    .line 223
    :try_start_2
    new-instance v1, Ljava/io/File;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@c
    move-result v0

    #@d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v2, "/cmdline"

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1e
    .line 224
    new-instance v0, Ljava/io/BufferedReader;

    #@20
    new-instance v2, Ljava/io/FileReader;

    #@22
    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@25
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@28
    .line 225
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 226
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    #@33
    return-object v1

    #@34
    :catch_34
    move-exception v0

    #@35
    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@38
    const-string v0, ""

    #@3a
    return-object v0
.end method

.method private static getCurrentProcessNameByReflect()Ljava/lang/String;
    .registers 5

    #@0
    .line 257
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    const-string v2, "mLoadedApk"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@12
    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v1

    #@1a
    const-string v3, "mActivityThread"

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1f
    move-result-object v1

    #@20
    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@23
    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2a
    move-result-object v1

    #@2b
    const-string v2, "getProcessName"

    #@2d
    const/4 v3, 0x0

    #@2e
    new-array v4, v3, [Ljava/lang/Class;

    #@30
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@33
    move-result-object v1

    #@34
    new-array v2, v3, [Ljava/lang/Object;

    #@36
    .line 267
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    #@3c
    goto :goto_43

    #@3d
    :catch_3d
    move-exception v0

    #@3e
    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@41
    const-string v0, ""

    #@43
    :goto_43
    return-object v0
.end method

.method public static getForegroundProcessName()Ljava/lang/String;
    .registers 11

    #@0
    const-string v0, "android:get_usage_stats"

    #@2
    .line 56
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    const-string v2, "activity"

    #@8
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/app/ActivityManager;

    #@e
    .line 58
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_33

    #@14
    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@17
    move-result v2

    #@18
    if-lez v2, :cond_33

    #@1a
    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_33

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@2a
    .line 61
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    #@2c
    const/16 v4, 0x64

    #@2e
    if-ne v3, v4, :cond_1e

    #@30
    .line 63
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    #@32
    return-object v0

    #@33
    .line 68
    :cond_33
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3a
    move-result-object v1

    #@3b
    .line 69
    new-instance v2, Landroid/content/Intent;

    #@3d
    const-string v3, "android.settings.USAGE_ACCESS_SETTINGS"

    #@3f
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@42
    const/high16 v3, 0x10000

    #@44
    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@47
    move-result-object v3

    #@48
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    const-string v5, "ProcessUtils"

    #@4e
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@54
    move-result v3

    #@55
    const-string v4, ""

    #@57
    if-gtz v3, :cond_5f

    #@59
    const-string v0, "getForegroundProcessName: noun of access to usage information."

    #@5b
    .line 74
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    return-object v4

    #@5f
    .line 80
    :cond_5f
    :try_start_5f
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    const/4 v6, 0x0

    #@68
    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@6b
    move-result-object v1

    #@6c
    .line 82
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@6f
    move-result-object v3

    #@70
    const-string v6, "appops"

    #@72
    invoke-virtual {v3, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@75
    move-result-object v3

    #@76
    check-cast v3, Landroid/app/AppOpsManager;

    #@78
    .line 83
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@7a
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7c
    invoke-virtual {v3, v0, v6, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_8e

    #@82
    const/high16 v6, 0x10000000

    #@84
    .line 86
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@87
    .line 87
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6, v2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@8e
    .line 89
    :cond_8e
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@90
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@92
    invoke-virtual {v3, v0, v2, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    #@95
    move-result v0

    #@96
    if-eqz v0, :cond_9e

    #@98
    const-string v0, "getForegroundProcessName: refuse to device usage stats."

    #@9a
    .line 92
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    return-object v4

    #@9e
    .line 96
    :cond_9e
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@a1
    move-result-object v0

    #@a2
    const-string v1, "usagestats"

    #@a4
    .line 97
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a7
    move-result-object v0

    #@a8
    move-object v5, v0

    #@a9
    check-cast v5, Landroid/app/usage/UsageStatsManager;

    #@ab
    const/4 v0, 0x0

    #@ac
    if-eqz v5, :cond_bd

    #@ae
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b1
    move-result-wide v9

    #@b2
    const-wide/32 v1, 0x240c8400

    #@b5
    sub-long v7, v9, v1

    #@b7
    const/4 v6, 0x4

    #@b8
    .line 103
    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    #@bb
    move-result-object v1

    #@bc
    goto :goto_be

    #@bd
    :cond_bd
    move-object v1, v0

    #@be
    :goto_be
    if-eqz v1, :cond_f0

    #@c0
    .line 106
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@c3
    move-result v2

    #@c4
    if-eqz v2, :cond_c7

    #@c6
    goto :goto_f0

    #@c7
    .line 108
    :cond_c7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@ca
    move-result-object v1

    #@cb
    move-object v2, v0

    #@cc
    :cond_cc
    :goto_cc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@cf
    move-result v3

    #@d0
    if-eqz v3, :cond_e8

    #@d2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d5
    move-result-object v3

    #@d6
    check-cast v3, Landroid/app/usage/UsageStats;

    #@d8
    if-eqz v2, :cond_e6

    #@da
    .line 110
    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    #@dd
    move-result-wide v5

    #@de
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    #@e1
    move-result-wide v7

    #@e2
    cmp-long v5, v5, v7

    #@e4
    if-lez v5, :cond_cc

    #@e6
    :cond_e6
    move-object v2, v3

    #@e7
    goto :goto_cc

    #@e8
    :cond_e8
    if-nez v2, :cond_eb

    #@ea
    goto :goto_ef

    #@eb
    .line 114
    :cond_eb
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    #@ee
    move-result-object v0
    :try_end_ef
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_ef} :catch_f1

    #@ef
    :goto_ef
    return-object v0

    #@f0
    :cond_f0
    :goto_f0
    return-object v4

    #@f1
    :catch_f1
    move-exception v0

    #@f2
    .line 116
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@f5
    return-object v4
.end method

.method public static isMainProcess()Z
    .registers 2

    #@0
    .line 204
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/ProcessUtils;->getCurrentProcessName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public static killAllBackgroundProcesses()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 151
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
    .line 152
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    .line 153
    new-instance v2, Ljava/util/HashSet;

    #@12
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@15
    if-nez v1, :cond_18

    #@17
    return-object v2

    #@18
    .line 155
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v3

    #@20
    const/4 v4, 0x0

    #@21
    if-eqz v3, :cond_39

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@29
    .line 156
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    #@2b
    array-length v5, v3

    #@2c
    :goto_2c
    if-ge v4, v5, :cond_1c

    #@2e
    aget-object v6, v3, v4

    #@30
    .line 157
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    #@33
    .line 158
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_2c

    #@39
    .line 161
    :cond_39
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@3c
    move-result-object v0

    #@3d
    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v0

    #@41
    :cond_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_5b

    #@47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@4d
    .line 163
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    #@4f
    array-length v3, v1

    #@50
    move v5, v4

    #@51
    :goto_51
    if-ge v5, v3, :cond_41

    #@53
    aget-object v6, v1, v5

    #@55
    .line 164
    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@58
    add-int/lit8 v5, v5, 0x1

    #@5a
    goto :goto_51

    #@5b
    :cond_5b
    return-object v2
.end method

.method public static killBackgroundProcesses(Ljava/lang/String;)Z
    .registers 5

    #@0
    .line 180
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
    .line 181
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x1

    #@11
    if-eqz v1, :cond_65

    #@13
    .line 182
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_1a

    #@19
    goto :goto_65

    #@1a
    .line 183
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_3a

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@2a
    .line 184
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    #@2c
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1e

    #@36
    .line 185
    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    #@39
    goto :goto_1e

    #@3a
    .line 188
    :cond_3a
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@3d
    move-result-object v0

    #@3e
    if-eqz v0, :cond_65

    #@40
    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@43
    move-result v1

    #@44
    if-nez v1, :cond_47

    #@46
    goto :goto_65

    #@47
    .line 190
    :cond_47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v0

    #@4b
    :cond_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_65

    #@51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@57
    .line 191
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    #@59
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5c
    move-result-object v1

    #@5d
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_4b

    #@63
    const/4 p0, 0x0

    #@64
    return p0

    #@65
    :cond_65
    :goto_65
    return v2
.end method
