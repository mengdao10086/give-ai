.class public final Lcom/blankj/utilcode/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/AppUtils$AppInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static exitApp()V
    .registers 1

    #@0
    .line 328
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->finishAllActivities()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 329
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@7
    return-void
.end method

.method public static getApkInfo(Ljava/io/File;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;
    .registers 2

    #@0
    if-eqz p0, :cond_18

    #@2
    .line 850
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_18

    #@8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_18

    #@f
    .line 851
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@12
    move-result-object p0

    #@13
    invoke-static {p0}, Lcom/blankj/utilcode/util/AppUtils;->getApkInfo(Ljava/lang/String;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    #@16
    move-result-object p0

    #@17
    return-object p0

    #@18
    :cond_18
    :goto_18
    const/4 p0, 0x0

    #@19
    return-object p0
.end method

.method public static getApkInfo(Ljava/lang/String;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;
    .registers 4

    #@0
    .line 861
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 862
    :cond_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_13

    #@12
    return-object v1

    #@13
    :cond_13
    const/4 v2, 0x0

    #@14
    .line 864
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@17
    move-result-object v2

    #@18
    if-nez v2, :cond_1b

    #@1a
    return-object v1

    #@1b
    .line 866
    :cond_1b
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    .line 867
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@1f
    .line 868
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@21
    .line 869
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/AppUtils;->getBean(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    #@24
    move-result-object p0

    #@25
    return-object p0
.end method

.method public static getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 339
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    .line 350
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 352
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    const/4 v2, 0x0

    #@11
    .line 353
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@14
    move-result-object p0

    #@15
    if-nez p0, :cond_18

    #@17
    goto :goto_1e

    #@18
    .line 354
    :cond_18
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1a
    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v1
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1e} :catch_1f

    #@1e
    :goto_1e
    return-object v1

    #@1f
    :catch_1f
    move-exception p0

    #@20
    .line 356
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@23
    return-object v1
.end method

.method public static getAppIconId()I
    .registers 1

    #@0
    .line 367
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppIconId(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getAppIconId(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 377
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 379
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    .line 380
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@13
    move-result-object p0

    #@14
    if-nez p0, :cond_17

    #@16
    goto :goto_1b

    #@17
    .line 381
    :cond_17
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@19
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1b} :catch_1c

    #@1b
    :goto_1b
    return v1

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    .line 383
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@20
    return v1
.end method

.method public static getAppInfo()Lcom/blankj/utilcode/util/AppUtils$AppInfo;
    .registers 1

    #@0
    .line 792
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppInfo(Ljava/lang/String;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppInfo(Ljava/lang/String;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 815
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_c

    #@b
    return-object v0

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    .line 817
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@10
    move-result-object p0

    #@11
    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/AppUtils;->getBean(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    #@14
    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_16

    #@15
    return-object p0

    #@16
    :catch_16
    move-exception p0

    #@17
    .line 819
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@1a
    return-object v0
.end method

.method public static getAppMinSdkVersion()I
    .registers 1

    #@0
    .line 550
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppMinSdkVersion(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getAppMinSdkVersion(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 560
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 563
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    const/4 v2, 0x0

    #@11
    .line 564
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@14
    move-result-object p0

    #@15
    if-nez p0, :cond_18

    #@17
    return v1

    #@18
    .line 566
    :cond_18
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1a
    if-nez p0, :cond_1d

    #@1c
    goto :goto_1f

    #@1d
    .line 567
    :cond_1d
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1f} :catch_20

    #@1f
    :goto_1f
    return v1

    #@20
    :catch_20
    move-exception p0

    #@21
    .line 569
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@24
    return v1
.end method

.method public static getAppName()Ljava/lang/String;
    .registers 1

    #@0
    .line 437
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 448
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const-string v1, ""

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object v1

    #@9
    .line 450
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v0

    #@11
    const/4 v2, 0x0

    #@12
    .line 451
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@15
    move-result-object p0

    #@16
    if-nez p0, :cond_19

    #@18
    goto :goto_23

    #@19
    .line 452
    :cond_19
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@1e
    move-result-object p0

    #@1f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@22
    move-result-object v1
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_23} :catch_24

    #@23
    :goto_23
    return-object v1

    #@24
    :catch_24
    move-exception p0

    #@25
    .line 454
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@28
    return-object v1
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .registers 1

    #@0
    .line 427
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getAppPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 466
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppPath(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 477
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const-string v1, ""

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object v1

    #@9
    .line 479
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v0

    #@11
    const/4 v2, 0x0

    #@12
    .line 480
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@15
    move-result-object p0

    #@16
    if-nez p0, :cond_19

    #@18
    goto :goto_1d

    #@19
    .line 481
    :cond_19
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1d} :catch_1e

    #@1d
    :goto_1d
    return-object v1

    #@1e
    :catch_1e
    move-exception p0

    #@1f
    .line 483
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@22
    return-object v1
.end method

.method public static getAppSignatures()[Landroid/content/pm/Signature;
    .registers 1

    #@0
    .line 610
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppSignatures(Ljava/io/File;)[Landroid/content/pm/Signature;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 655
    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    .line 656
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@e
    const/16 v3, 0x1c

    #@10
    if-lt v2, v3, :cond_31

    #@12
    .line 657
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    const/high16 v2, 0x8000000

    #@18
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@1b
    move-result-object p0

    #@1c
    if-nez p0, :cond_1f

    #@1e
    return-object v0

    #@1f
    .line 660
    :cond_1f
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    #@21
    .line 661
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2c

    #@27
    .line 662
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    #@2a
    move-result-object p0

    #@2b
    return-object p0

    #@2c
    .line 664
    :cond_2c
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    #@2f
    move-result-object p0

    #@30
    return-object p0

    #@31
    .line 667
    :cond_31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object p0

    #@35
    const/16 v2, 0x40

    #@37
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@3a
    move-result-object p0

    #@3b
    if-nez p0, :cond_3e

    #@3d
    return-object v0

    #@3e
    .line 670
    :cond_3e
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@40
    return-object p0
.end method

.method public static getAppSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 5

    #@0
    .line 621
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 623
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    .line 624
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@12
    const/16 v3, 0x1c

    #@14
    if-lt v2, v3, :cond_31

    #@16
    const/high16 v2, 0x8000000

    #@18
    .line 625
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@1b
    move-result-object p0

    #@1c
    if-nez p0, :cond_1f

    #@1e
    return-object v1

    #@1f
    .line 628
    :cond_1f
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    #@21
    .line 629
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2c

    #@27
    .line 630
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    #@2a
    move-result-object p0

    #@2b
    return-object p0

    #@2c
    .line 632
    :cond_2c
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    #@2f
    move-result-object p0

    #@30
    return-object p0

    #@31
    :cond_31
    const/16 v2, 0x40

    #@33
    .line 635
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@36
    move-result-object p0

    #@37
    if-nez p0, :cond_3a

    #@39
    return-object v1

    #@3a
    .line 638
    :cond_3a
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_3c} :catch_3d

    #@3c
    return-object p0

    #@3d
    :catch_3d
    move-exception p0

    #@3e
    .line 641
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@41
    return-object v1
.end method

.method private static getAppSignaturesHash(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 762
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 763
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_c

    #@b
    return-object v0

    #@c
    .line 764
    :cond_c
    invoke-static {p0}, Lcom/blankj/utilcode/util/AppUtils;->getAppSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    #@f
    move-result-object p0

    #@10
    if-eqz p0, :cond_36

    #@12
    .line 765
    array-length v1, p0

    #@13
    if-gtz v1, :cond_16

    #@15
    goto :goto_36

    #@16
    .line 766
    :cond_16
    array-length v1, p0

    #@17
    const/4 v2, 0x0

    #@18
    :goto_18
    if-ge v2, v1, :cond_36

    #@1a
    aget-object v3, p0, v2

    #@1c
    .line 767
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    #@1f
    move-result-object v3

    #@20
    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->hashTemplate([BLjava/lang/String;)[B

    #@23
    move-result-object v3

    #@24
    invoke-static {v3}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    const-string v4, "(?<=[0-9A-F]{2})[0-9A-F]{2}"

    #@2a
    const-string v5, ":$0"

    #@2c
    .line 768
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 769
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_18

    #@36
    :cond_36
    :goto_36
    return-object v0
.end method

.method public static getAppSignaturesMD5()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 723
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppSignaturesMD5(Ljava/lang/String;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppSignaturesMD5(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, "MD5"

    #@2
    .line 734
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppSignaturesHash(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getAppSignaturesSHA1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 681
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppSignaturesSHA1(Ljava/lang/String;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppSignaturesSHA1(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, "SHA1"

    #@2
    .line 692
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppSignaturesHash(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getAppSignaturesSHA256()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 702
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppSignaturesSHA256(Ljava/lang/String;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppSignaturesSHA256(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, "SHA256"

    #@2
    .line 713
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppSignaturesHash(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getAppTargetSdkVersion()I
    .registers 1

    #@0
    .line 580
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppTargetSdkVersion(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getAppTargetSdkVersion(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 590
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 592
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    const/4 v2, 0x0

    #@11
    .line 593
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@14
    move-result-object p0

    #@15
    if-nez p0, :cond_18

    #@17
    return v1

    #@18
    .line 595
    :cond_18
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1a
    if-nez p0, :cond_1d

    #@1c
    goto :goto_1f

    #@1d
    .line 596
    :cond_1d
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1f} :catch_20

    #@1f
    :goto_1f
    return v1

    #@20
    :catch_20
    move-exception p0

    #@21
    .line 598
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@24
    return v1
.end method

.method public static getAppUid()I
    .registers 1

    #@0
    .line 743
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppUid(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getAppUid(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 754
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object p0

    #@d
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    #@f
    return p0

    #@10
    :catch_10
    move-exception p0

    #@11
    .line 756
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@14
    const/4 p0, -0x1

    #@15
    return p0
.end method

.method public static getAppVersionCode()I
    .registers 1

    #@0
    .line 523
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionCode(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getAppVersionCode(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 533
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 535
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    const/4 v2, 0x0

    #@11
    .line 536
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@14
    move-result-object p0

    #@15
    if-nez p0, :cond_18

    #@17
    goto :goto_1a

    #@18
    .line 537
    :cond_18
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1a} :catch_1b

    #@1a
    :goto_1a
    return v1

    #@1b
    :catch_1b
    move-exception p0

    #@1c
    .line 539
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@1f
    return v1
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .registers 1

    #@0
    .line 495
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getAppVersionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 506
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const-string v1, ""

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object v1

    #@9
    .line 508
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v0

    #@11
    const/4 v2, 0x0

    #@12
    .line 509
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@15
    move-result-object p0

    #@16
    if-nez p0, :cond_19

    #@18
    goto :goto_1b

    #@19
    .line 510
    :cond_19
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1b} :catch_1c

    #@1b
    :goto_1b
    return-object v1

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    .line 512
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@20
    return-object v1
.end method

.method public static getAppsInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/AppUtils$AppInfo;",
            ">;"
        }
    .end annotation

    #@0
    .line 831
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 832
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v1

    #@d
    if-nez v1, :cond_10

    #@f
    return-object v0

    #@10
    :cond_10
    const/4 v2, 0x0

    #@11
    .line 834
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@14
    move-result-object v2

    #@15
    .line 835
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_30

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroid/content/pm/PackageInfo;

    #@25
    .line 836
    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/AppUtils;->getBean(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    #@28
    move-result-object v3

    #@29
    if-nez v3, :cond_2c

    #@2b
    goto :goto_19

    #@2c
    .line 838
    :cond_2c
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_19

    #@30
    :cond_30
    return-object v0
.end method

.method private static getBean(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;
    .registers 12

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 890
    :cond_4
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@6
    .line 891
    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@8
    .line 892
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@a
    .line 893
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    if-nez p1, :cond_1d

    #@e
    .line 895
    new-instance p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    #@10
    const-string v2, ""

    #@12
    const/4 v3, 0x0

    #@13
    const-string v4, ""

    #@15
    const/4 v7, -0x1

    #@16
    const/4 v8, -0x1

    #@17
    const/4 v9, 0x0

    #@18
    move-object v0, p0

    #@19
    invoke-direct/range {v0 .. v9}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    #@1c
    return-object p0

    #@1d
    .line 897
    :cond_1d
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 898
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v3

    #@29
    .line 899
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@2b
    .line 902
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@2d
    .line 904
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2f
    .line 905
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@31
    const/4 p1, 0x1

    #@32
    and-int/2addr p0, p1

    #@33
    if-eqz p0, :cond_37

    #@35
    move v9, p1

    #@36
    goto :goto_39

    #@37
    :cond_37
    const/4 p0, 0x0

    #@38
    move v9, p0

    #@39
    .line 906
    :goto_39
    new-instance p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    #@3b
    move-object v0, p0

    #@3c
    invoke-direct/range {v0 .. v9}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    #@3f
    return-object p0
.end method

.method public static installApp(Landroid/net/Uri;)V
    .registers 2

    #@0
    .line 88
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getInstallAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_7

    #@6
    return-void

    #@7
    .line 90
    :cond_7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@e
    return-void
.end method

.method public static installApp(Ljava/io/File;)V
    .registers 2

    #@0
    .line 75
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_7

    #@6
    return-void

    #@7
    .line 77
    :cond_7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@e
    return-void
.end method

.method public static installApp(Ljava/lang/String;)V
    .registers 1

    #@0
    .line 64
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/AppUtils;->installApp(Ljava/io/File;)V

    #@7
    return-void
.end method

.method public static isAppDebug()Z
    .registers 1

    #@0
    .line 137
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->isAppDebug(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static isAppDebug(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 147
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 149
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    .line 150
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@13
    move-result-object p0

    #@14
    .line 151
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_16} :catch_1c

    #@16
    and-int/lit8 p0, p0, 0x2

    #@18
    if-eqz p0, :cond_1b

    #@1a
    const/4 v1, 0x1

    #@1b
    :cond_1b
    return v1

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    .line 153
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@20
    return v1
.end method

.method public static isAppForeground()Z
    .registers 1

    #@0
    .line 191
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppForeground()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isAppForeground(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 203
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_12

    #@6
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getForegroundProcessName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result p0

    #@e
    if-eqz p0, :cond_12

    #@10
    const/4 p0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    :goto_13
    return p0
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 112
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 113
    :cond_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    .line 115
    :try_start_10
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@13
    move-result-object p0

    #@14
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_16} :catch_17

    #@16
    return p0

    #@17
    :catch_17
    return v1
.end method

.method public static isAppRoot()Z
    .registers 2

    #@0
    const-string v0, "echo root"

    #@2
    const/4 v1, 0x1

    #@3
    .line 127
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@6
    move-result-object v0

    #@7
    .line 128
    iget v0, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v1, 0x0

    #@d
    :goto_d
    return v1
.end method

.method public static isAppRunning(Ljava/lang/String;)Z
    .registers 8

    #@0
    .line 213
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 214
    :cond_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    const-string v2, "activity"

    #@e
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/app/ActivityManager;

    #@14
    if-eqz v0, :cond_70

    #@16
    const v2, 0x7fffffff

    #@19
    .line 216
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    #@1c
    move-result-object v3

    #@1d
    const/4 v4, 0x1

    #@1e
    if-eqz v3, :cond_47

    #@20
    .line 217
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@23
    move-result v5

    #@24
    if-lez v5, :cond_47

    #@26
    .line 218
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v3

    #@2a
    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_47

    #@30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    #@36
    .line 219
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@38
    if-eqz v6, :cond_2a

    #@3a
    .line 220
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@3c
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_2a

    #@46
    return v4

    #@47
    .line 226
    :cond_47
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    #@4a
    move-result-object v0

    #@4b
    if-eqz v0, :cond_70

    #@4d
    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@50
    move-result v2

    #@51
    if-lez v2, :cond_70

    #@53
    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v0

    #@57
    :cond_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_70

    #@5d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    #@63
    .line 229
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #@65
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_57

    #@6f
    return v4

    #@70
    :cond_70
    return v1
.end method

.method public static isAppSystem()Z
    .registers 1

    #@0
    .line 164
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->isAppSystem(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static isAppSystem(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 174
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 176
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    .line 177
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@13
    move-result-object p0

    #@14
    .line 178
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_16} :catch_1c

    #@16
    const/4 v0, 0x1

    #@17
    and-int/2addr p0, v0

    #@18
    if-eqz p0, :cond_1b

    #@1a
    move v1, v0

    #@1b
    :cond_1b
    return v1

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    .line 180
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@20
    return v1
.end method

.method public static isAppUpgraded()Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 411
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppPackageName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@10
    move-result-object v1

    #@11
    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    #@13
    .line 412
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppPackageName()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@22
    move-result-object v3

    #@23
    iget-wide v3, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2a

    #@25
    cmp-long v1, v1, v3

    #@27
    if-eqz v1, :cond_2a

    #@29
    const/4 v0, 0x1

    #@2a
    :catch_2a
    :cond_2a
    return v0
.end method

.method public static isFirstTimeInstall()Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 396
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppPackageName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@10
    move-result-object v1

    #@11
    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    #@13
    .line 397
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppPackageName()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@22
    move-result-object v3

    #@23
    iget-wide v3, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2a

    #@25
    cmp-long v1, v1, v3

    #@27
    if-nez v1, :cond_2a

    #@29
    const/4 v0, 0x1

    #@2a
    :catch_2a
    :cond_2a
    return v0
.end method

.method public static isFirstTimeInstalled()Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 880
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@15
    move-result-object v1

    #@16
    .line 881
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    #@18
    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1a} :catch_21

    #@1a
    cmp-long v1, v4, v1

    #@1c
    if-nez v1, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v0, v3

    #@20
    :goto_20
    return v0

    #@21
    :catch_21
    move-exception v1

    #@22
    .line 883
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@25
    return v0
.end method

.method public static launchApp(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 244
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 245
    :cond_7
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getLaunchAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    move-result-object p0

    #@b
    if-nez p0, :cond_15

    #@d
    const-string p0, "AppUtils"

    #@f
    const-string v0, "Didn\'t exist launcher activity."

    #@11
    .line 247
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    return-void

    #@15
    .line 250
    :cond_15
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@1c
    return-void
.end method

.method public static launchAppDetailsSettings()V
    .registers 1

    #@0
    .line 285
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->launchAppDetailsSettings(Ljava/lang/String;)V

    #@b
    return-void
.end method

.method public static launchAppDetailsSettings(Landroid/app/Activity;I)V
    .registers 3

    #@0
    .line 307
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/AppUtils;->launchAppDetailsSettings(Landroid/app/Activity;ILjava/lang/String;)V

    #@b
    return-void
.end method

.method public static launchAppDetailsSettings(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 4

    #@0
    if-eqz p0, :cond_18

    #@2
    .line 318
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_18

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 319
    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    #@d
    move-result-object p2

    #@e
    .line 320
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_15

    #@14
    return-void

    #@15
    .line 321
    :cond_15
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@18
    :cond_18
    :goto_18
    return-void
.end method

.method public static launchAppDetailsSettings(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 294
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x1

    #@8
    .line 295
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    #@b
    move-result-object p0

    #@c
    .line 296
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_13

    #@12
    return-void

    #@13
    .line 297
    :cond_13
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@1a
    return-void
.end method

.method public static registerAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V
    .registers 1

    #@0
    .line 44
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->addOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V

    #@3
    return-void
.end method

.method public static relaunchApp()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 257
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->relaunchApp(Z)V

    #@4
    return-void
.end method

.method public static relaunchApp(Z)V
    .registers 3

    #@0
    .line 266
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getLaunchAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_16

    #@e
    const-string p0, "AppUtils"

    #@10
    const-string v0, "Didn\'t exist launcher activity."

    #@12
    .line 268
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    return-void

    #@16
    :cond_16
    const v1, 0x14008000

    #@19
    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1c
    .line 275
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@23
    if-nez p0, :cond_26

    #@25
    return-void

    #@26
    .line 277
    :cond_26
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@29
    move-result p0

    #@2a
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    #@2d
    const/4 p0, 0x0

    #@2e
    .line 278
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    #@31
    return-void
.end method

.method public static uninstallApp(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 101
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 102
    :cond_7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@a
    move-result-object v0

    #@b
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getUninstallAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@e
    move-result-object p0

    #@f
    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@12
    return-void
.end method

.method public static unregisterAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V
    .registers 1

    #@0
    .line 53
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V

    #@3
    return-void
.end method
