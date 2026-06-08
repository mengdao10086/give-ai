.class public final Lcom/blankj/utilcode/util/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field private static final SEP:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 19
    sget-char v0, Ljava/io/File;->separatorChar:C

    #@2
    sput-char v0, Lcom/blankj/utilcode/util/PathUtils;->SEP:C

    #@4
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method private static getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 469
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getAppDataPathExternalFirst()Ljava/lang/String;
    .registers 2

    #@0
    .line 444
    invoke-static {}, Lcom/blankj/utilcode/util/PathUtils;->getExternalAppDataPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_e

    #@a
    .line 446
    invoke-static {}, Lcom/blankj/utilcode/util/PathUtils;->getInternalAppDataPath()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :cond_e
    return-object v0
.end method

.method public static getCachePathExternalFirst()Ljava/lang/String;
    .registers 2

    #@0
    .line 460
    invoke-static {}, Lcom/blankj/utilcode/util/PathUtils;->getExternalAppCachePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_e

    #@a
    .line 462
    invoke-static {}, Lcom/blankj/utilcode/util/PathUtils;->getInternalAppCachePath()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :cond_e
    return-object v0
.end method

.method public static getDataPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 83
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDownloadCachePath()Ljava/lang/String;
    .registers 1

    #@0
    .line 92
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getExternalAlarmsPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 223
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 224
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalAppAlarmsPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 358
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 359
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppCachePath()Ljava/lang/String;
    .registers 1

    #@0
    .line 308
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 309
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static getExternalAppDataPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 296
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    const-string v1, ""

    #@6
    if-nez v0, :cond_9

    #@8
    return-object v1

    #@9
    .line 297
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_14

    #@13
    return-object v1

    #@14
    .line 299
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public static getExternalAppDcimPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 408
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 409
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppDocumentsPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 418
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 422
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppDownloadPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 398
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 399
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppFilesPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 318
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 319
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static getExternalAppMoviesPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 388
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 389
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppMusicPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 328
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 329
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppNotificationsPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 368
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 369
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppObbPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 431
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 432
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/app/Application;->getObbDir()Ljava/io/File;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static getExternalAppPicturesPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 378
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 379
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppPodcastsPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 338
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 339
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalAppRingtonesPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 348
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 349
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getExternalDcimPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 273
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 274
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalDocumentsPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 283
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 287
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalDownloadsPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 263
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 264
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalMoviesPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 253
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 254
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalMusicPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 193
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 194
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalNotificationsPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 233
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 234
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalPicturesPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 243
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 244
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalPodcastsPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 203
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 204
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalRingtonesPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 213
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 214
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .registers 1

    #@0
    .line 183
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string v0, ""

    #@8
    return-object v0

    #@9
    .line 184
    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getFilesPathExternalFirst()Ljava/lang/String;
    .registers 2

    #@0
    .line 452
    invoke-static {}, Lcom/blankj/utilcode/util/PathUtils;->getExternalAppFilesPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_e

    #@a
    .line 454
    invoke-static {}, Lcom/blankj/utilcode/util/PathUtils;->getInternalAppFilesPath()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :cond_e
    return-object v0
.end method

.method public static getInternalAppCachePath()Ljava/lang/String;
    .registers 1

    #@0
    .line 125
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getInternalAppCodeCacheDir()Ljava/lang/String;
    .registers 1

    #@0
    .line 116
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getCodeCacheDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getInternalAppDataPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 104
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getInternalAppDbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 144
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getInternalAppDbsPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v1

    #@d
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, "/databases"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public static getInternalAppFilesPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 153
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getInternalAppNoBackupFilesPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 174
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getNoBackupFilesDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getInternalAppSpPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v1

    #@d
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, "/shared_prefs"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method private static getLegalSegment(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    const/4 v1, -0x1

    #@5
    const/4 v2, 0x0

    #@6
    move v3, v1

    #@7
    move v4, v3

    #@8
    .line 53
    :goto_8
    array-length v5, v0

    #@9
    if-ge v2, v5, :cond_18

    #@b
    .line 54
    aget-char v5, v0, v2

    #@d
    .line 55
    sget-char v6, Lcom/blankj/utilcode/util/PathUtils;->SEP:C

    #@f
    if-eq v5, v6, :cond_15

    #@11
    if-ne v3, v1, :cond_14

    #@13
    move v3, v2

    #@14
    :cond_14
    move v4, v2

    #@15
    :cond_15
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    if-ltz v3, :cond_23

    #@1a
    if-lt v4, v3, :cond_23

    #@1c
    add-int/lit8 v4, v4, 0x1

    #@1e
    .line 63
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    return-object p0

    #@23
    .line 65
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    const-string v2, "segment of <"

    #@29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p0

    #@30
    const-string v1, "> is illegal"

    #@32
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object p0

    #@36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p0

    #@3a
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0
.end method

.method public static getRootPath()Ljava/lang/String;
    .registers 1

    #@0
    .line 74
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/PathUtils;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getRootPathExternalFirst()Ljava/lang/String;
    .registers 2

    #@0
    .line 436
    invoke-static {}, Lcom/blankj/utilcode/util/PathUtils;->getExternalStoragePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_e

    #@a
    .line 438
    invoke-static {}, Lcom/blankj/utilcode/util/PathUtils;->getRootPath()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :cond_e
    return-object v0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object p0

    #@7
    :cond_7
    if-nez p0, :cond_b

    #@9
    const-string p0, ""

    #@b
    .line 37
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    .line 38
    invoke-static {p1}, Lcom/blankj/utilcode/util/PathUtils;->getLegalSegment(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    if-nez v0, :cond_29

    #@15
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    sget-char v0, Lcom/blankj/utilcode/util/PathUtils;->SEP:C

    #@1c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p0

    #@20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p0

    #@24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    goto :goto_5a

    #@29
    :cond_29
    add-int/lit8 v0, v0, -0x1

    #@2b
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    sget-char v1, Lcom/blankj/utilcode/util/PathUtils;->SEP:C

    #@31
    if-ne v0, v1, :cond_45

    #@33
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object p0

    #@3c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object p0

    #@40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object p0

    #@44
    goto :goto_5a

    #@45
    .line 45
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object p0

    #@4e
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    move-result-object p0

    #@52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object p0

    #@56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object p0

    #@5a
    :goto_5a
    return-object p0
.end method
