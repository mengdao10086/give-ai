.class public Landroidx/core/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AtomicFile"


# instance fields
.field private final mBaseName:Ljava/io/File;

.field private final mLegacyBackupName:Ljava/io/File;

.field private final mNewName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@5
    .line 58
    new-instance v0, Ljava/io/File;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, ".new"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@21
    iput-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@23
    .line 59
    new-instance v0, Ljava/io/File;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object p1

    #@32
    const-string v1, ".bak"

    #@34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object p1

    #@38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object p1

    #@3c
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3f
    iput-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    #@41
    return-void
.end method

.method private static rename(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    #@0
    .line 234
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    const-string v1, "AtomicFile"

    #@6
    if-eqz v0, :cond_20

    #@8
    .line 235
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_20

    #@e
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    const-string v2, "Failed to delete file which is a directory "

    #@12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 239
    :cond_20
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_42

    #@26
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    const-string v2, "Failed to rename "

    #@2a
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p0

    #@31
    const-string v0, " to "

    #@33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p0

    #@37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p0

    #@3b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object p0

    #@3f
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    :cond_42
    return-void
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .registers 1

    #@0
    .line 220
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    #@7
    const/4 p0, 0x1

    #@8
    return p0

    #@9
    :catch_9
    const/4 p0, 0x0

    #@a
    return p0
.end method


# virtual methods
.method public delete()V
    .registers 2

    #@0
    .line 75
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@5
    .line 76
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@a
    .line 77
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    #@c
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@f
    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .registers 4

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 145
    :cond_3
    invoke-static {p1}, Landroidx/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    #@6
    move-result v0

    #@7
    const-string v1, "AtomicFile"

    #@9
    if-nez v0, :cond_10

    #@b
    const-string v0, "Failed to sync file output stream"

    #@d
    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 149
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    #@13
    goto :goto_1a

    #@14
    :catch_14
    move-exception p1

    #@15
    const-string v0, "Failed to close file output stream"

    #@17
    .line 151
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 153
    :goto_1a
    iget-object p1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@1f
    move-result p1

    #@20
    if-nez p1, :cond_36

    #@22
    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    #@24
    const-string v0, "Failed to delete new file "

    #@26
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object p1

    #@2f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object p1

    #@33
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    :cond_36
    return-void
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .registers 4

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 125
    :cond_3
    invoke-static {p1}, Landroidx/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    #@6
    move-result v0

    #@7
    const-string v1, "AtomicFile"

    #@9
    if-nez v0, :cond_10

    #@b
    const-string v0, "Failed to sync file output stream"

    #@d
    .line 126
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 129
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    #@13
    goto :goto_1a

    #@14
    :catch_14
    move-exception p1

    #@15
    const-string v0, "Failed to close file output stream"

    #@17
    .line 131
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 133
    :goto_1a
    iget-object p1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@1c
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@1e
    invoke-static {p1, v0}, Landroidx/core/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    #@21
    return-void
.end method

.method public getBaseFile()Ljava/io/File;
    .registers 2

    #@0
    .line 68
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .line 166
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 167
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    #@a
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@c
    invoke-static {v0, v1}, Landroidx/core/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    #@f
    .line 177
    :cond_f
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_3d

    #@17
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_3d

    #@1f
    .line 178
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@21
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_3d

    #@27
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    const-string v1, "Failed to delete outdated new file "

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    const-string v1, "AtomicFile"

    #@3a
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 182
    :cond_3d
    new-instance v0, Ljava/io/FileInputStream;

    #@3f
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@41
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@44
    return-object v0
.end method

.method public readFully()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 191
    invoke-virtual {p0}, Landroidx/core/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@3
    move-result-object v0

    #@4
    .line 194
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    #@7
    move-result v1

    #@8
    .line 195
    new-array v1, v1, [B

    #@a
    const/4 v2, 0x0

    #@b
    move v3, v2

    #@c
    .line 197
    :cond_c
    :goto_c
    array-length v4, v1

    #@d
    sub-int/2addr v4, v3

    #@e
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@11
    move-result v4
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_29

    #@12
    if-gtz v4, :cond_18

    #@14
    .line 214
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    #@17
    return-object v1

    #@18
    :cond_18
    add-int/2addr v3, v4

    #@19
    .line 206
    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    #@1c
    move-result v4

    #@1d
    .line 207
    array-length v5, v1

    #@1e
    sub-int/2addr v5, v3

    #@1f
    if-le v4, v5, :cond_c

    #@21
    add-int/2addr v4, v3

    #@22
    .line 208
    new-array v4, v4, [B

    #@24
    .line 209
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_29

    #@27
    move-object v1, v4

    #@28
    goto :goto_c

    #@29
    :catchall_29
    move-exception v1

    #@2a
    .line 214
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    #@2d
    .line 215
    throw v1
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 96
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 97
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    #@a
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    #@c
    invoke-static {v0, v1}, Landroidx/core/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    #@f
    .line 101
    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/FileOutputStream;

    #@11
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@13
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_16} :catch_17

    #@16
    return-object v0

    #@17
    .line 103
    :catch_17
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@19
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@1c
    move-result-object v0

    #@1d
    .line 104
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_43

    #@23
    .line 108
    :try_start_23
    new-instance v0, Ljava/io/FileOutputStream;

    #@25
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@27
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2a} :catch_2b

    #@2a
    return-object v0

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    .line 110
    new-instance v1, Ljava/io/IOException;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    const-string v3, "Failed to create new file "

    #@32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@35
    iget-object v3, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    throw v1

    #@43
    .line 105
    :cond_43
    new-instance v0, Ljava/io/IOException;

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    const-string v2, "Failed to create directory for "

    #@49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4c
    iget-object v2, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@59
    throw v0
.end method
