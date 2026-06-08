.class public final Lcom/blankj/utilcode/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;
    }
.end annotation


# static fields
.field private static final LINE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "line.separator"

    #@2
    .line 39
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/blankj/utilcode/util/FileUtils;->LINE_SEP:Ljava/lang/String;

    #@8
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 288
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    .line 303
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 304
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->copyDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 306
    :cond_f
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@12
    move-result p0

    #@13
    return p0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 262
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object p1

    #@8
    const/4 v0, 0x0

    #@9
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@c
    move-result p0

    #@d
    return p0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 3

    #@0
    .line 276
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object p1

    #@8
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method private static copyDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 320
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 334
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method private static copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_9f

    #@3
    if-nez p1, :cond_7

    #@5
    goto/16 :goto_9f

    #@7
    .line 427
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 429
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3c

    #@3b
    return v0

    #@3c
    .line 430
    :cond_3c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_9f

    #@42
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_49

    #@48
    goto :goto_9f

    #@49
    .line 431
    :cond_49
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    #@4c
    move-result p1

    #@4d
    if-nez p1, :cond_50

    #@4f
    return v0

    #@50
    .line 432
    :cond_50
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@53
    move-result-object p1

    #@54
    if-eqz p1, :cond_96

    #@56
    .line 433
    array-length v1, p1

    #@57
    if-lez v1, :cond_96

    #@59
    .line 434
    array-length v1, p1

    #@5a
    move v3, v0

    #@5b
    :goto_5b
    if-ge v3, v1, :cond_96

    #@5d
    aget-object v4, p1, v3

    #@5f
    .line 435
    new-instance v5, Ljava/io/File;

    #@61
    new-instance v6, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@79
    .line 436
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    #@7c
    move-result v6

    #@7d
    if-eqz v6, :cond_86

    #@7f
    .line 437
    invoke-static {v4, v5, p2, p3}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    #@82
    move-result v4

    #@83
    if-nez v4, :cond_93

    #@85
    return v0

    #@86
    .line 438
    :cond_86
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    #@89
    move-result v6

    #@8a
    if-eqz v6, :cond_93

    #@8c
    .line 439
    invoke-static {v4, v5, p2, p3}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    #@8f
    move-result v4

    #@90
    if-nez v4, :cond_93

    #@92
    return v0

    #@93
    :cond_93
    add-int/lit8 v3, v3, 0x1

    #@95
    goto :goto_5b

    #@96
    :cond_96
    if-eqz p3, :cond_9e

    #@98
    .line 443
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    #@9b
    move-result p0

    #@9c
    if-eqz p0, :cond_9f

    #@9e
    :cond_9e
    const/4 v0, 0x1

    #@9f
    :cond_9f
    :goto_9f
    return v0
.end method

.method private static copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_5a

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_5a

    #@6
    .line 452
    :cond_6
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_d

    #@c
    return v0

    #@d
    .line 454
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_5a

    #@13
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1a

    #@19
    goto :goto_5a

    #@1a
    .line 455
    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x1

    #@1f
    if-eqz v1, :cond_32

    #@21
    if-eqz p2, :cond_2b

    #@23
    .line 456
    invoke-interface {p2, p0, p1}, Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;->onReplace(Ljava/io/File;Ljava/io/File;)Z

    #@26
    move-result p2

    #@27
    if-eqz p2, :cond_2a

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    return v2

    #@2b
    .line 457
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@2e
    move-result p2

    #@2f
    if-nez p2, :cond_32

    #@31
    return v0

    #@32
    .line 464
    :cond_32
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@35
    move-result-object p2

    #@36
    invoke-static {p2}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    #@39
    move-result p2

    #@3a
    if-nez p2, :cond_3d

    #@3c
    return v0

    #@3d
    .line 466
    :cond_3d
    :try_start_3d
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@40
    move-result-object p1

    #@41
    new-instance p2, Ljava/io/FileInputStream;

    #@43
    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@46
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z

    #@49
    move-result p1

    #@4a
    if-eqz p1, :cond_55

    #@4c
    if-eqz p3, :cond_54

    #@4e
    .line 467
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    #@51
    move-result p0
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_52} :catch_56

    #@52
    if-eqz p0, :cond_55

    #@54
    :cond_54
    move v0, v2

    #@55
    :cond_55
    return v0

    #@56
    :catch_56
    move-exception p0

    #@57
    .line 469
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    #@5a
    :cond_5a
    :goto_5a
    return v0
.end method

.method public static createFileByDeleteOldFile(Ljava/io/File;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 243
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_11

    #@a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_11

    #@10
    return v0

    #@11
    .line 244
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1c

    #@1b
    return v0

    #@1c
    .line 246
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    #@1f
    move-result p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_21

    #@20
    return p0

    #@21
    :catch_21
    move-exception p0

    #@22
    .line 248
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@25
    return v0
.end method

.method public static createFileByDeleteOldFile(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 231
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static createOrExistsDir(Ljava/io/File;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_17

    #@2
    .line 193
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@b
    move-result p0

    #@c
    if-eqz p0, :cond_17

    #@e
    goto :goto_15

    #@f
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    #@12
    move-result p0

    #@13
    if-eqz p0, :cond_17

    #@15
    :goto_15
    const/4 p0, 0x1

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 p0, 0x0

    #@18
    :goto_18
    return p0
.end method

.method public static createOrExistsDir(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 183
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static createOrExistsFile(Ljava/io/File;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 214
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_f

    #@a
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 215
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1a

    #@19
    return v0

    #@1a
    .line 217
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    #@1d
    move-result p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    #@1e
    return p0

    #@1f
    :catch_1f
    move-exception p0

    #@20
    .line 219
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@23
    return v0
.end method

.method public static createOrExistsFile(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 203
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static delete(Ljava/io/File;)Z
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    .line 492
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 493
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 495
    :cond_f
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    #@12
    move-result p0

    #@13
    return p0
.end method

.method public static delete(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 481
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static deleteAllInDir(Ljava/io/File;)Z
    .registers 2

    #@0
    .line 550
    new-instance v0, Lcom/blankj/utilcode/util/FileUtils$1;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/FileUtils$1;-><init>()V

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static deleteAllInDir(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 540
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 507
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    return p0

    #@c
    .line 509
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_13

    #@12
    return v0

    #@13
    .line 510
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_3f

    #@19
    .line 511
    array-length v2, v1

    #@1a
    if-lez v2, :cond_3f

    #@1c
    .line 512
    array-length v2, v1

    #@1d
    move v3, v0

    #@1e
    :goto_1e
    if-ge v3, v2, :cond_3f

    #@20
    aget-object v4, v1, v3

    #@22
    .line 513
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_2f

    #@28
    .line 514
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_3c

    #@2e
    return v0

    #@2f
    .line 515
    :cond_2f
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_3c

    #@35
    .line 516
    invoke-static {v4}, Lcom/blankj/utilcode/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    #@38
    move-result v4

    #@39
    if-nez v4, :cond_3c

    #@3b
    return v0

    #@3c
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_1e

    #@3f
    .line 520
    :cond_3f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@42
    move-result p0

    #@43
    return p0
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_16

    #@2
    .line 530
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_16

    #@e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@11
    move-result p0

    #@12
    if-eqz p0, :cond_16

    #@14
    :cond_14
    const/4 p0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p0, 0x0

    #@17
    :goto_17
    return p0
.end method

.method public static deleteFilesInDir(Ljava/io/File;)Z
    .registers 2

    #@0
    .line 575
    new-instance v0, Lcom/blankj/utilcode/util/FileUtils$2;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/FileUtils$2;-><init>()V

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static deleteFilesInDir(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 565
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_48

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_48

    #@6
    .line 605
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    if-nez v1, :cond_e

    #@d
    return v2

    #@e
    .line 607
    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_15

    #@14
    return v0

    #@15
    .line 608
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@18
    move-result-object p0

    #@19
    if-eqz p0, :cond_47

    #@1b
    .line 609
    array-length v1, p0

    #@1c
    if-eqz v1, :cond_47

    #@1e
    .line 610
    array-length v1, p0

    #@1f
    move v3, v0

    #@20
    :goto_20
    if-ge v3, v1, :cond_47

    #@22
    aget-object v4, p0, v3

    #@24
    .line 611
    invoke-interface {p1, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_44

    #@2a
    .line 612
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_37

    #@30
    .line 613
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@33
    move-result v4

    #@34
    if-nez v4, :cond_44

    #@36
    return v0

    #@37
    .line 614
    :cond_37
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_44

    #@3d
    .line 615
    invoke-static {v4}, Lcom/blankj/utilcode/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    #@40
    move-result v4

    #@41
    if-nez v4, :cond_44

    #@43
    return v0

    #@44
    :cond_44
    add-int/lit8 v3, v3, 0x1

    #@46
    goto :goto_20

    #@47
    :cond_47
    return v2

    #@48
    :cond_48
    :goto_48
    return v0
.end method

.method public static deleteFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Z
    .registers 2

    #@0
    .line 592
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method private static getDirLength(Ljava/io/File;)J
    .registers 7

    #@0
    .line 1171
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isDir(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    const-wide/16 v1, 0x0

    #@6
    if-nez v0, :cond_9

    #@8
    return-wide v1

    #@9
    .line 1173
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@c
    move-result-object p0

    #@d
    if-eqz p0, :cond_2b

    #@f
    .line 1174
    array-length v0, p0

    #@10
    if-lez v0, :cond_2b

    #@12
    .line 1175
    array-length v0, p0

    #@13
    const/4 v3, 0x0

    #@14
    :goto_14
    if-ge v3, v0, :cond_2b

    #@16
    aget-object v4, p0, v3

    #@18
    .line 1176
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_23

    #@1e
    .line 1177
    invoke-static {v4}, Lcom/blankj/utilcode/util/FileUtils;->getDirLength(Ljava/io/File;)J

    #@21
    move-result-wide v4

    #@22
    goto :goto_27

    #@23
    .line 1179
    :cond_23
    invoke-virtual {v4}, Ljava/io/File;->length()J

    #@26
    move-result-wide v4

    #@27
    :goto_27
    add-long/2addr v1, v4

    #@28
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_14

    #@2b
    :cond_2b
    return-wide v1
.end method

.method public static getDirName(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 1293
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getDirName(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getDirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 1303
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
    .line 1304
    :cond_9
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    const/4 v2, -0x1

    #@10
    if-ne v0, v2, :cond_13

    #@12
    goto :goto_1a

    #@13
    :cond_13
    add-int/lit8 v0, v0, 0x1

    #@15
    const/4 v1, 0x0

    #@16
    .line 1305
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    :goto_1a
    return-object v1
.end method

.method private static getDirSize(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    #@0
    .line 1125
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getDirLength(Ljava/io/File;)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, -0x1

    #@6
    cmp-long p0, v0, v2

    #@8
    if-nez p0, :cond_d

    #@a
    const-string p0, ""

    #@c
    goto :goto_11

    #@d
    .line 1126
    :cond_d
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->byte2FitMemorySize(J)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    :goto_11
    return-object p0
.end method

.method public static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    #@0
    .line 52
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    goto :goto_e

    #@8
    :cond_8
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    move-object p0, v0

    #@e
    :goto_e
    return-object p0
.end method

.method public static getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 904
    :cond_5
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isUtf8(Ljava/io/File;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_e

    #@b
    const-string p0, "UTF-8"

    #@d
    return-object p0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    .line 908
    :try_start_f
    new-instance v1, Ljava/io/BufferedInputStream;

    #@11
    new-instance v2, Ljava/io/FileInputStream;

    #@13
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@16
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_35
    .catchall {:try_start_f .. :try_end_19} :catchall_33

    #@19
    .line 909
    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@1c
    move-result p0

    #@1d
    shl-int/lit8 p0, p0, 0x8

    #@1f
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@22
    move-result v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_30
    .catchall {:try_start_19 .. :try_end_23} :catchall_2d

    #@23
    add-int/2addr p0, v0

    #@24
    .line 915
    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    #@27
    goto :goto_44

    #@28
    :catch_28
    move-exception v0

    #@29
    .line 918
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@2c
    goto :goto_44

    #@2d
    :catchall_2d
    move-exception p0

    #@2e
    move-object v0, v1

    #@2f
    goto :goto_57

    #@30
    :catch_30
    move-exception p0

    #@31
    move-object v0, v1

    #@32
    goto :goto_36

    #@33
    :catchall_33
    move-exception p0

    #@34
    goto :goto_57

    #@35
    :catch_35
    move-exception p0

    #@36
    .line 911
    :goto_36
    :try_start_36
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_33

    #@39
    if-eqz v0, :cond_43

    #@3b
    .line 915
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    #@3e
    goto :goto_43

    #@3f
    :catch_3f
    move-exception p0

    #@40
    .line 918
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@43
    :cond_43
    :goto_43
    const/4 p0, 0x0

    #@44
    :goto_44
    const v0, 0xfeff

    #@47
    if-eq p0, v0, :cond_54

    #@49
    const v0, 0xfffe

    #@4c
    if-eq p0, v0, :cond_51

    #@4e
    const-string p0, "GBK"

    #@50
    return-object p0

    #@51
    :cond_51
    const-string p0, "Unicode"

    #@53
    return-object p0

    #@54
    :cond_54
    const-string p0, "UTF-16BE"

    #@56
    return-object p0

    #@57
    :goto_57
    if-eqz v0, :cond_61

    #@59
    .line 915
    :try_start_59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    #@5c
    goto :goto_61

    #@5d
    :catch_5d
    move-exception v0

    #@5e
    .line 918
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@61
    .line 920
    :cond_61
    :goto_61
    throw p0
.end method

.method public static getFileCharsetSimple(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    #@0
    .line 893
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 1369
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    .line 1379
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
    :cond_9
    const/16 v0, 0x2e

    #@b
    .line 1380
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v0

    #@f
    .line 1381
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@14
    move-result v2

    #@15
    const/4 v3, -0x1

    #@16
    if-eq v0, v3, :cond_22

    #@18
    if-lt v2, v0, :cond_1b

    #@1a
    goto :goto_22

    #@1b
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    .line 1383
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    return-object p0

    #@22
    :cond_22
    :goto_22
    return-object v1
.end method

.method public static getFileLastModified(Ljava/io/File;)J
    .registers 3

    #@0
    if-nez p0, :cond_5

    #@2
    const-wide/16 v0, -0x1

    #@4
    return-wide v0

    #@5
    .line 883
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public static getFileLastModified(Ljava/lang/String;)J
    .registers 3

    #@0
    .line 872
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLastModified(Ljava/io/File;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method private static getFileLength(Ljava/io/File;)J
    .registers 3

    #@0
    .line 1217
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-wide/16 v0, -0x1

    #@8
    return-wide v0

    #@9
    .line 1218
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .registers 4

    #@0
    const-string v0, "[a-zA-z]+://[^\\s]*"

    #@2
    .line 1193
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_32

    #@8
    .line 1196
    :try_start_8
    new-instance v0, Ljava/net/URL;

    #@a
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    #@13
    const-string v1, "Accept-Encoding"

    #@15
    const-string v2, "identity"

    #@17
    .line 1197
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1198
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    #@1d
    .line 1199
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    #@20
    move-result v1

    #@21
    const/16 v2, 0xc8

    #@23
    if-ne v1, v2, :cond_2b

    #@25
    .line 1200
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    #@28
    move-result p0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_2e

    #@29
    int-to-long v0, p0

    #@2a
    return-wide v0

    #@2b
    :cond_2b
    const-wide/16 v0, -0x1

    #@2d
    return-wide v0

    #@2e
    :catch_2e
    move-exception v0

    #@2f
    .line 1204
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@32
    .line 1207
    :cond_32
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@35
    move-result-object p0

    #@36
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLength(Ljava/io/File;)J

    #@39
    move-result-wide v0

    #@3a
    return-wide v0
.end method

.method public static getFileLines(Ljava/io/File;)I
    .registers 10

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1064
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    #@4
    new-instance v3, Ljava/io/FileInputStream;

    #@6
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@9
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_55
    .catchall {:try_start_2 .. :try_end_c} :catchall_53

    #@c
    const/16 p0, 0x400

    #@e
    :try_start_e
    new-array v1, p0, [B

    #@10
    .line 1067
    sget-object v3, Lcom/blankj/utilcode/util/FileUtils;->LINE_SEP:Ljava/lang/String;

    #@12
    const-string v4, "\n"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    const/4 v4, -0x1

    #@19
    const/4 v5, 0x0

    #@1a
    if-eqz v3, :cond_30

    #@1c
    .line 1068
    :cond_1c
    invoke-virtual {v2, v1, v5, p0}, Ljava/io/InputStream;->read([BII)I

    #@1f
    move-result v3

    #@20
    if-eq v3, v4, :cond_44

    #@22
    move v6, v5

    #@23
    :goto_23
    if-ge v6, v3, :cond_1c

    #@25
    .line 1070
    aget-byte v7, v1, v6

    #@27
    const/16 v8, 0xa

    #@29
    if-ne v7, v8, :cond_2d

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    #@2f
    goto :goto_23

    #@30
    .line 1074
    :cond_30
    invoke-virtual {v2, v1, v5, p0}, Ljava/io/InputStream;->read([BII)I

    #@33
    move-result v3

    #@34
    if-eq v3, v4, :cond_44

    #@36
    move v6, v5

    #@37
    :goto_37
    if-ge v6, v3, :cond_30

    #@39
    .line 1076
    aget-byte v7, v1, v6
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3b} :catch_50
    .catchall {:try_start_e .. :try_end_3b} :catchall_4d

    #@3b
    const/16 v8, 0xd

    #@3d
    if-ne v7, v8, :cond_41

    #@3f
    add-int/lit8 v0, v0, 0x1

    #@41
    :cond_41
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_37

    #@44
    .line 1085
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    #@47
    goto :goto_5e

    #@48
    :catch_48
    move-exception p0

    #@49
    .line 1088
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@4c
    goto :goto_5e

    #@4d
    :catchall_4d
    move-exception p0

    #@4e
    move-object v1, v2

    #@4f
    goto :goto_5f

    #@50
    :catch_50
    move-exception p0

    #@51
    move-object v1, v2

    #@52
    goto :goto_56

    #@53
    :catchall_53
    move-exception p0

    #@54
    goto :goto_5f

    #@55
    :catch_55
    move-exception p0

    #@56
    .line 1081
    :goto_56
    :try_start_56
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_53

    #@59
    if-eqz v1, :cond_5e

    #@5b
    .line 1085
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_48

    #@5e
    :cond_5e
    :goto_5e
    return v0

    #@5f
    :goto_5f
    if-eqz v1, :cond_69

    #@61
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    #@64
    goto :goto_69

    #@65
    :catch_65
    move-exception v0

    #@66
    .line 1088
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@69
    .line 1090
    :cond_69
    :goto_69
    throw p0
.end method

.method public static getFileLines(Ljava/lang/String;)I
    .registers 1

    #@0
    .line 1051
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLines(Ljava/io/File;)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static getFileMD5(Ljava/io/File;)[B
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 1262
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    #@6
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@9
    const-string p0, "MD5"

    #@b
    .line 1263
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@e
    move-result-object p0

    #@f
    .line 1264
    new-instance v2, Ljava/security/DigestInputStream;

    #@11
    invoke-direct {v2, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_14} :catch_37
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_35
    .catchall {:try_start_4 .. :try_end_14} :catchall_33

    #@14
    const/high16 p0, 0x40000

    #@16
    :try_start_16
    new-array p0, p0, [B

    #@18
    .line 1267
    :cond_18
    invoke-virtual {v2, p0}, Ljava/security/DigestInputStream;->read([B)I

    #@1b
    move-result v1

    #@1c
    if-gtz v1, :cond_18

    #@1e
    .line 1269
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    #@21
    move-result-object p0

    #@22
    .line 1270
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    #@25
    move-result-object p0
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_26} :catch_31
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_2f
    .catchall {:try_start_16 .. :try_end_26} :catchall_47

    #@26
    .line 1276
    :try_start_26
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    #@29
    goto :goto_2e

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    .line 1279
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@2e
    :goto_2e
    return-object p0

    #@2f
    :catch_2f
    move-exception p0

    #@30
    goto :goto_39

    #@31
    :catch_31
    move-exception p0

    #@32
    goto :goto_39

    #@33
    :catchall_33
    move-exception p0

    #@34
    goto :goto_49

    #@35
    :catch_35
    move-exception p0

    #@36
    goto :goto_38

    #@37
    :catch_37
    move-exception p0

    #@38
    :goto_38
    move-object v2, v0

    #@39
    .line 1272
    :goto_39
    :try_start_39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_47

    #@3c
    if-eqz v2, :cond_46

    #@3e
    .line 1276
    :try_start_3e
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    #@41
    goto :goto_46

    #@42
    :catch_42
    move-exception p0

    #@43
    .line 1279
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@46
    :cond_46
    :goto_46
    return-object v0

    #@47
    :catchall_47
    move-exception p0

    #@48
    move-object v0, v2

    #@49
    :goto_49
    if-eqz v0, :cond_53

    #@4b
    .line 1276
    :try_start_4b
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    #@4e
    goto :goto_53

    #@4f
    :catch_4f
    move-exception v0

    #@50
    .line 1279
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@53
    .line 1281
    :cond_53
    :goto_53
    throw p0
.end method

.method public static getFileMD5(Ljava/lang/String;)[B
    .registers 1

    #@0
    .line 1249
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileMD5(Ljava/io/File;)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    #@0
    .line 1239
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileMD5(Ljava/io/File;)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFileMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1228
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    goto :goto_e

    #@8
    :cond_8
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    move-object p0, v0

    #@e
    .line 1229
    :goto_e
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    return-object p0
.end method

.method public static getFileName(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 1316
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 1326
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-string p0, ""

    #@8
    return-object p0

    #@9
    .line 1327
    :cond_9
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    const/4 v1, -0x1

    #@10
    if-ne v0, v1, :cond_13

    #@12
    goto :goto_19

    #@13
    :cond_13
    add-int/lit8 v0, v0, 0x1

    #@15
    .line 1328
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    :goto_19
    return-object p0
.end method

.method public static getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 1339
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 1349
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-string p0, ""

    #@8
    return-object p0

    #@9
    :cond_9
    const/16 v0, 0x2e

    #@b
    .line 1350
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v0

    #@f
    .line 1351
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@14
    move-result v1

    #@15
    const/4 v2, -0x1

    #@16
    if-ne v1, v2, :cond_21

    #@18
    if-ne v0, v2, :cond_1b

    #@1a
    goto :goto_20

    #@1b
    :cond_1b
    const/4 v1, 0x0

    #@1c
    .line 1353
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    :goto_20
    return-object p0

    #@21
    :cond_21
    if-eq v0, v2, :cond_2d

    #@23
    if-le v1, v0, :cond_26

    #@25
    goto :goto_2d

    #@26
    :cond_26
    add-int/lit8 v1, v1, 0x1

    #@28
    .line 1358
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object p0

    #@2c
    return-object p0

    #@2d
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    .line 1356
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object p0

    #@33
    return-object p0
.end method

.method private static getFileSize(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    #@0
    .line 1136
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLength(Ljava/io/File;)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, -0x1

    #@6
    cmp-long p0, v0, v2

    #@8
    if-nez p0, :cond_d

    #@a
    const-string p0, ""

    #@c
    goto :goto_11

    #@d
    .line 1137
    :cond_d
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->byte2FitMemorySize(J)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    :goto_11
    return-object p0
.end method

.method public static getFsAvailableSize(Ljava/lang/String;)J
    .registers 6

    #@0
    .line 1435
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-wide/16 v0, 0x0

    #@8
    return-wide v0

    #@9
    .line 1436
    :cond_9
    new-instance v0, Landroid/os/StatFs;

    #@b
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@e
    .line 1440
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    #@11
    move-result-wide v1

    #@12
    .line 1441
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    #@15
    move-result-wide v3

    #@16
    mul-long/2addr v1, v3

    #@17
    return-wide v1
.end method

.method public static getFsTotalSize(Ljava/lang/String;)J
    .registers 6

    #@0
    .line 1414
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-wide/16 v0, 0x0

    #@8
    return-wide v0

    #@9
    .line 1415
    :cond_9
    new-instance v0, Landroid/os/StatFs;

    #@b
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@e
    .line 1419
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    #@11
    move-result-wide v1

    #@12
    .line 1420
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    #@15
    move-result-wide v3

    #@16
    mul-long/2addr v1, v3

    #@17
    return-wide v1
.end method

.method public static getLength(Ljava/io/File;)J
    .registers 3

    #@0
    if-nez p0, :cond_5

    #@2
    const-wide/16 v0, 0x0

    #@4
    return-wide v0

    #@5
    .line 1158
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_10

    #@b
    .line 1159
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getDirLength(Ljava/io/File;)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0

    #@10
    .line 1161
    :cond_10
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLength(Ljava/io/File;)J

    #@13
    move-result-wide v0

    #@14
    return-wide v0
.end method

.method public static getLength(Ljava/lang/String;)J
    .registers 3

    #@0
    .line 1147
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getLength(Ljava/io/File;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static getSize(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 1112
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_10

    #@b
    .line 1113
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getDirSize(Ljava/io/File;)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    return-object p0

    #@10
    .line 1115
    :cond_10
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileSize(Ljava/io/File;)Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    return-object p0
.end method

.method public static getSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    #@0
    .line 1101
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getSize(Ljava/io/File;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static isDir(Ljava/io/File;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_10

    #@2
    .line 153
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@b
    move-result p0

    #@c
    if-eqz p0, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p0, 0x0

    #@11
    :goto_11
    return p0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 143
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isDir(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isFile(Ljava/io/File;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_10

    #@2
    .line 173
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@b
    move-result p0

    #@c
    if-eqz p0, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p0, 0x0

    #@11
    :goto_11
    return p0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 163
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isFileExists(Ljava/io/File;)Z
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    .line 63
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    return p0

    #@c
    .line 66
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    #@13
    move-result p0

    #@14
    return p0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 76
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return p0

    #@8
    .line 78
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    return p0

    #@10
    .line 81
    :cond_10
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isFileExistsApi29(Ljava/lang/String;)Z

    #@13
    move-result p0

    #@14
    return p0
.end method

.method private static isFileExistsApi29(Ljava/lang/String;)Z
    .registers 4

    #@0
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    const/4 v2, 0x0

    #@5
    if-lt v0, v1, :cond_21

    #@7
    .line 87
    :try_start_7
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object p0

    #@b
    .line 88
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v0

    #@13
    const-string v1, "r"

    #@15
    .line 89
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@18
    move-result-object p0
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_19} :catch_21

    #@19
    if-nez p0, :cond_1c

    #@1b
    return v2

    #@1c
    .line 92
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_21

    #@1f
    :catch_1f
    const/4 p0, 0x1

    #@20
    return p0

    #@21
    :catch_21
    :cond_21
    return v2
.end method

.method private static isUtf8([B)I
    .registers 15

    #@0
    .line 986
    array-length v0, p0

    #@1
    const/4 v1, 0x3

    #@2
    const/16 v2, 0x64

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v4, 0x0

    #@6
    if-le v0, v1, :cond_1c

    #@8
    .line 987
    aget-byte v0, p0, v4

    #@a
    const/16 v1, -0x11

    #@c
    if-ne v0, v1, :cond_1c

    #@e
    aget-byte v0, p0, v3

    #@10
    const/16 v1, -0x45

    #@12
    if-ne v0, v1, :cond_1c

    #@14
    const/4 v0, 0x2

    #@15
    aget-byte v0, p0, v0

    #@17
    const/16 v1, -0x41

    #@19
    if-ne v0, v1, :cond_1c

    #@1b
    return v2

    #@1c
    .line 991
    :cond_1c
    array-length v0, p0

    #@1d
    move v1, v4

    #@1e
    move v5, v1

    #@1f
    move v6, v5

    #@20
    move v7, v6

    #@21
    :goto_21
    if-ge v1, v0, :cond_8c

    #@23
    .line 995
    aget-byte v8, p0, v1

    #@25
    and-int/lit8 v9, v8, -0x1

    #@27
    const/4 v10, -0x1

    #@28
    if-eq v9, v10, :cond_8b

    #@2a
    and-int/lit8 v9, v8, -0x2

    #@2c
    const/4 v10, -0x2

    #@2d
    if-ne v9, v10, :cond_31

    #@2f
    goto/16 :goto_8b

    #@31
    :cond_31
    if-nez v7, :cond_5d

    #@33
    and-int/lit8 v9, v8, 0x7f

    #@35
    if-ne v9, v8, :cond_3c

    #@37
    if-eqz v8, :cond_3c

    #@39
    add-int/lit8 v5, v5, 0x1

    #@3b
    goto :goto_5a

    #@3c
    :cond_3c
    and-int/lit8 v8, v8, -0x40

    #@3e
    const/16 v9, -0x40

    #@40
    if-ne v8, v9, :cond_5a

    #@42
    move v8, v7

    #@43
    move v7, v4

    #@44
    :goto_44
    const/16 v9, 0x8

    #@46
    if-ge v7, v9, :cond_57

    #@48
    const/16 v9, 0x80

    #@4a
    shr-int/2addr v9, v7

    #@4b
    int-to-byte v9, v9

    #@4c
    .line 1005
    aget-byte v10, p0, v1

    #@4e
    and-int/2addr v10, v9

    #@4f
    if-ne v10, v9, :cond_57

    #@51
    add-int/lit8 v8, v7, 0x1

    #@53
    move v13, v8

    #@54
    move v8, v7

    #@55
    move v7, v13

    #@56
    goto :goto_44

    #@57
    :cond_57
    add-int/lit8 v6, v6, 0x1

    #@59
    move v7, v8

    #@5a
    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    #@5c
    goto :goto_21

    #@5d
    .line 1015
    :cond_5d
    array-length v8, p0

    #@5e
    sub-int/2addr v8, v1

    #@5f
    if-le v8, v7, :cond_62

    #@61
    goto :goto_64

    #@62
    :cond_62
    array-length v7, p0

    #@63
    sub-int/2addr v7, v1

    #@64
    :goto_64
    move v8, v4

    #@65
    move v9, v8

    #@66
    :goto_66
    if-ge v8, v7, :cond_80

    #@68
    add-int v10, v1, v8

    #@6a
    .line 1019
    aget-byte v10, p0, v10

    #@6c
    and-int/lit8 v11, v10, -0x80

    #@6e
    const/16 v12, -0x80

    #@70
    if-eq v11, v12, :cond_7d

    #@72
    and-int/lit8 v9, v10, 0x7f

    #@74
    if-ne v9, v10, :cond_7c

    #@76
    .line 1020
    aget-byte v9, p0, v1

    #@78
    if-eqz v9, :cond_7c

    #@7a
    add-int/lit8 v5, v5, 0x1

    #@7c
    :cond_7c
    move v9, v3

    #@7d
    :cond_7d
    add-int/lit8 v8, v8, 0x1

    #@7f
    goto :goto_66

    #@80
    :cond_80
    if-eqz v9, :cond_87

    #@82
    add-int/lit8 v6, v6, -0x1

    #@84
    add-int/lit8 v1, v1, 0x1

    #@86
    goto :goto_89

    #@87
    :cond_87
    add-int/2addr v6, v7

    #@88
    add-int/2addr v1, v7

    #@89
    :goto_89
    move v7, v4

    #@8a
    goto :goto_21

    #@8b
    :cond_8b
    :goto_8b
    return v4

    #@8c
    :cond_8c
    if-ne v5, v0, :cond_8f

    #@8e
    return v2

    #@8f
    :cond_8f
    add-int/2addr v6, v5

    #@90
    int-to-float p0, v6

    #@91
    int-to-float v0, v0

    #@92
    div-float/2addr p0, v0

    #@93
    const/high16 v0, 0x42c80000    # 100.0f

    #@95
    mul-float/2addr p0, v0

    #@96
    float-to-int p0, p0

    #@97
    return p0
.end method

.method public static isUtf8(Ljava/io/File;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    const/16 v1, 0x18

    #@6
    const/4 v2, 0x0

    #@7
    :try_start_7
    new-array v1, v1, [B

    #@9
    .line 952
    new-instance v3, Ljava/io/BufferedInputStream;

    #@b
    new-instance v4, Ljava/io/FileInputStream;

    #@d
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@10
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_42
    .catchall {:try_start_7 .. :try_end_13} :catchall_40

    #@13
    .line 953
    :try_start_13
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    #@16
    move-result p0

    #@17
    const/4 v2, -0x1

    #@18
    if-eq p0, v2, :cond_31

    #@1a
    .line 955
    new-array v2, p0, [B

    #@1c
    .line 956
    invoke-static {v1, v0, v2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 957
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->isUtf8([B)I

    #@22
    move-result p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_3d
    .catchall {:try_start_13 .. :try_end_23} :catchall_3a

    #@23
    const/16 v1, 0x64

    #@25
    if-ne p0, v1, :cond_28

    #@27
    const/4 v0, 0x1

    #@28
    .line 966
    :cond_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    #@2b
    goto :goto_30

    #@2c
    :catch_2c
    move-exception p0

    #@2d
    .line 969
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@30
    :goto_30
    return v0

    #@31
    .line 966
    :cond_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    #@34
    goto :goto_39

    #@35
    :catch_35
    move-exception p0

    #@36
    .line 969
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@39
    :goto_39
    return v0

    #@3a
    :catchall_3a
    move-exception p0

    #@3b
    move-object v2, v3

    #@3c
    goto :goto_51

    #@3d
    :catch_3d
    move-exception p0

    #@3e
    move-object v2, v3

    #@3f
    goto :goto_43

    #@40
    :catchall_40
    move-exception p0

    #@41
    goto :goto_51

    #@42
    :catch_42
    move-exception p0

    #@43
    .line 962
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    #@46
    if-eqz v2, :cond_50

    #@48
    .line 966
    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    #@4b
    goto :goto_50

    #@4c
    :catch_4c
    move-exception p0

    #@4d
    .line 969
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@50
    :cond_50
    :goto_50
    return v0

    #@51
    :goto_51
    if-eqz v2, :cond_5b

    #@53
    .line 966
    :try_start_53
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    #@56
    goto :goto_5b

    #@57
    :catch_57
    move-exception v0

    #@58
    .line 969
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@5b
    .line 971
    :cond_5b
    :goto_5b
    throw p0
.end method

.method public static isUtf8(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 938
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isUtf8(Ljava/io/File;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static listFilesInDir(Ljava/io/File;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 642
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;Ljava/util/Comparator;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static listFilesInDir(Ljava/io/File;Ljava/util/Comparator;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 666
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static listFilesInDir(Ljava/io/File;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 688
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 716
    new-instance v0, Lcom/blankj/utilcode/util/FileUtils$3;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/FileUtils$3;-><init>()V

    #@5
    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static listFilesInDir(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 631
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static listFilesInDir(Ljava/lang/String;Ljava/util/Comparator;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 654
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static listFilesInDir(Ljava/lang/String;Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 677
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static listFilesInDir(Ljava/lang/String;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 702
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 747
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 777
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 805
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 838
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    if-eqz p3, :cond_9

    #@6
    .line 840
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@9
    :cond_9
    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 734
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 762
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 791
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Z",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 822
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 848
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 849
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isDir(Ljava/io/File;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_c

    #@b
    return-object v0

    #@c
    .line 850
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@f
    move-result-object p0

    #@10
    if-eqz p0, :cond_37

    #@12
    .line 851
    array-length v1, p0

    #@13
    if-lez v1, :cond_37

    #@15
    .line 852
    array-length v1, p0

    #@16
    const/4 v2, 0x0

    #@17
    :goto_17
    if-ge v2, v1, :cond_37

    #@19
    aget-object v3, p0, v2

    #@1b
    .line 853
    invoke-interface {p1, v3}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_24

    #@21
    .line 854
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    :cond_24
    if-eqz p2, :cond_34

    #@26
    .line 856
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_34

    #@2c
    const/4 v4, 0x1

    #@2d
    .line 857
    invoke-static {v3, p1, v4}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@34
    :cond_34
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_17

    #@37
    :cond_37
    return-object v0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 372
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    .line 387
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 388
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->moveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 390
    :cond_f
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@12
    move-result p0

    #@13
    return p0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 346
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object p1

    #@8
    const/4 v0, 0x0

    #@9
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@c
    move-result p0

    #@d
    return p0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 3

    #@0
    .line 360
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object p1

    #@8
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static moveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 404
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 418
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static notifySystemToScan(Ljava/io/File;)V
    .registers 4

    #@0
    if-eqz p0, :cond_31

    #@2
    .line 1401
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_31

    #@9
    .line 1402
    :cond_9
    new-instance v0, Landroid/content/Intent;

    #@b
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    const-string v2, "file://"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p0

    #@1f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p0

    #@23
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@26
    move-result-object p0

    #@27
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@2a
    .line 1404
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@2d
    move-result-object p0

    #@2e
    invoke-virtual {p0, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    #@31
    :cond_31
    :goto_31
    return-void
.end method

.method public static notifySystemToScan(Ljava/lang/String;)V
    .registers 1

    #@0
    .line 1392
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->notifySystemToScan(Ljava/io/File;)V

    #@7
    return-void
.end method

.method public static rename(Ljava/io/File;Ljava/lang/String;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 125
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_b

    #@a
    return v0

    #@b
    .line 127
    :cond_b
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_12

    #@11
    return v0

    #@12
    .line 129
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    const/4 v2, 0x1

    #@1b
    if-eqz v1, :cond_1e

    #@1d
    return v2

    #@1e
    .line 130
    :cond_1e
    new-instance v1, Ljava/io/File;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object p1

    #@3b
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3e
    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@41
    move-result p1

    #@42
    if-nez p1, :cond_4b

    #@44
    .line 133
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@47
    move-result p0

    #@48
    if-eqz p0, :cond_4b

    #@4a
    move v0, v2

    #@4b
    :cond_4b
    return v0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 111
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FileUtils;->rename(Ljava/io/File;Ljava/lang/String;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method
