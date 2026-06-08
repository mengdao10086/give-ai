.class public final Lcom/blankj/utilcode/util/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFFER_LEN:I = 0x2000


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getComments(Ljava/io/File;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 415
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 416
    new-instance v1, Ljava/util/zip/ZipFile;

    #@b
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    #@e
    .line 417
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@11
    move-result-object p0

    #@12
    .line 418
    :goto_12
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_26

    #@18
    .line 419
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/util/zip/ZipEntry;

    #@1e
    .line 420
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_12

    #@26
    .line 422
    :cond_26
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    #@29
    return-object v0
.end method

.method public static getComments(Ljava/lang/String;)Ljava/util/List;
    .registers 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 402
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ZipUtils;->getComments(Ljava/io/File;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getFilesPath(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 377
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 378
    new-instance v1, Ljava/util/zip/ZipFile;

    #@b
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    #@e
    .line 379
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@11
    move-result-object p0

    #@12
    .line 380
    :goto_12
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_54

    #@18
    .line 381
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/util/zip/ZipEntry;

    #@1e
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    const-string v3, "\\"

    #@24
    const-string v4, "/"

    #@26
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    const-string v3, "../"

    #@2c
    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_50

    #@32
    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    const-string v4, "entryName: "

    #@36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string v4, " is dangerous!"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    const-string v4, "ZipUtils"

    #@49
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 384
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_12

    #@50
    .line 386
    :cond_50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    goto :goto_12

    #@54
    .line 389
    :cond_54
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    #@57
    return-object v0
.end method

.method public static getFilesPath(Ljava/lang/String;)Ljava/util/List;
    .registers 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 364
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 327
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5
    .line 328
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    .line 329
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    #@b
    move-result p0

    #@c
    if-eqz p0, :cond_13

    #@e
    .line 330
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsDir(Ljava/io/File;)Z

    #@11
    move-result p0

    #@12
    return p0

    #@13
    .line 332
    :cond_13
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    #@16
    move-result p0

    #@17
    const/4 p1, 0x0

    #@18
    if-nez p0, :cond_1b

    #@1a
    return p1

    #@1b
    :cond_1b
    const/4 p0, 0x0

    #@1c
    .line 336
    :try_start_1c
    new-instance p4, Ljava/io/BufferedInputStream;

    #@1e
    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@21
    move-result-object p2

    #@22
    invoke-direct {p4, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_4b

    #@25
    .line 337
    :try_start_25
    new-instance p2, Ljava/io/BufferedOutputStream;

    #@27
    new-instance p3, Ljava/io/FileOutputStream;

    #@29
    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@2c
    invoke-direct {p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_48

    #@2f
    const/16 p0, 0x2000

    #@31
    :try_start_31
    new-array p0, p0, [B

    #@33
    .line 340
    :goto_33
    invoke-virtual {p4, p0}, Ljava/io/InputStream;->read([B)I

    #@36
    move-result p3

    #@37
    const/4 v0, -0x1

    #@38
    if-eq p3, v0, :cond_3e

    #@3a
    .line 341
    invoke-virtual {p2, p0, p1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_46

    #@3d
    goto :goto_33

    #@3e
    .line 345
    :cond_3e
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    #@41
    .line 348
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    #@44
    const/4 p0, 0x1

    #@45
    return p0

    #@46
    :catchall_46
    move-exception p0

    #@47
    goto :goto_4f

    #@48
    :catchall_48
    move-exception p1

    #@49
    move-object p2, p0

    #@4a
    goto :goto_4e

    #@4b
    :catchall_4b
    move-exception p1

    #@4c
    move-object p2, p0

    #@4d
    move-object p4, p2

    #@4e
    :goto_4e
    move-object p0, p1

    #@4f
    :goto_4f
    if-eqz p4, :cond_54

    #@51
    .line 345
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    #@54
    :cond_54
    if-eqz p2, :cond_59

    #@56
    .line 348
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    #@59
    .line 350
    :cond_59
    throw p0
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 256
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 242
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p0, :cond_af

    #@2
    if-nez p1, :cond_6

    #@4
    goto/16 :goto_af

    #@6
    .line 289
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 290
    new-instance v1, Ljava/util/zip/ZipFile;

    #@d
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    #@10
    .line 291
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@13
    move-result-object p0

    #@14
    .line 293
    :try_start_14
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@17
    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_aa

    #@18
    const-string v3, " is dangerous!"

    #@1a
    const-string v4, "entryName: "

    #@1c
    const-string v5, "ZipUtils"

    #@1e
    const-string v6, "../"

    #@20
    const-string v7, "/"

    #@22
    const-string v8, "\\"

    #@24
    if-eqz v2, :cond_63

    #@26
    .line 294
    :cond_26
    :goto_26
    :try_start_26
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@29
    move-result p2

    #@2a
    if-eqz p2, :cond_a6

    #@2c
    .line 295
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2f
    move-result-object p2

    #@30
    check-cast p2, Ljava/util/zip/ZipEntry;

    #@32
    .line 296
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 297
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3d
    move-result v9

    #@3e
    if-eqz v9, :cond_59

    #@40
    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object p2

    #@49
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object p2

    #@4d
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object p2

    #@51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object p2

    #@55
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_26

    #@59
    .line 301
    :cond_59
    invoke-static {p1, v0, v1, p2, v2}, Lcom/blankj/utilcode/util/ZipUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    #@5c
    move-result p2
    :try_end_5d
    .catchall {:try_start_26 .. :try_end_5d} :catchall_aa

    #@5d
    if-nez p2, :cond_26

    #@5f
    .line 317
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    #@62
    return-object v0

    #@63
    .line 304
    :cond_63
    :goto_63
    :try_start_63
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_a6

    #@69
    .line 305
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@6c
    move-result-object v2

    #@6d
    check-cast v2, Ljava/util/zip/ZipEntry;

    #@6f
    .line 306
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    .line 307
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@7a
    move-result v10

    #@7b
    if-eqz v10, :cond_96

    #@7d
    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    goto :goto_63

    #@96
    .line 311
    :cond_96
    invoke-virtual {v9, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@99
    move-result v10

    #@9a
    if-eqz v10, :cond_63

    #@9c
    .line 312
    invoke-static {p1, v0, v1, v2, v9}, Lcom/blankj/utilcode/util/ZipUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    #@9f
    move-result v2
    :try_end_a0
    .catchall {:try_start_63 .. :try_end_a0} :catchall_aa

    #@a0
    if-nez v2, :cond_63

    #@a2
    .line 317
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    #@a5
    return-object v0

    #@a6
    :cond_a6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    #@a9
    return-object v0

    #@aa
    :catchall_aa
    move-exception p0

    #@ab
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    #@ae
    .line 318
    throw p0

    #@af
    :cond_af
    :goto_af
    const/4 p0, 0x0

    #@b0
    return-object p0
.end method

.method public static unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 272
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object p1

    #@8
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 163
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p0, :cond_24

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_24

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 182
    :try_start_6
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    #@8
    new-instance v2, Ljava/io/FileOutputStream;

    #@a
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@d
    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_1d

    #@10
    :try_start_10
    const-string p1, ""

    #@12
    .line 183
    invoke-static {p0, p1, v1, p2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    #@15
    move-result p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    #@16
    .line 186
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    #@19
    return p0

    #@1a
    :catchall_1a
    move-exception p0

    #@1b
    move-object v0, v1

    #@1c
    goto :goto_1e

    #@1d
    :catchall_1d
    move-exception p0

    #@1e
    :goto_1e
    if-eqz v0, :cond_23

    #@20
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    #@23
    .line 188
    :cond_23
    throw p0

    #@24
    :cond_24
    :goto_24
    const/4 p0, 0x0

    #@25
    return p0
.end method

.method private static zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@c
    move-result p1

    #@d
    if-eqz p1, :cond_12

    #@f
    const-string p1, ""

    #@11
    goto :goto_14

    #@12
    :cond_12
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    #@14
    :goto_14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    .line 197
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@27
    move-result v0

    #@28
    const/4 v1, 0x0

    #@29
    if-eqz v0, :cond_67

    #@2b
    .line 198
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@2e
    move-result-object p0

    #@2f
    if-eqz p0, :cond_45

    #@31
    .line 199
    array-length v0, p0

    #@32
    if-gtz v0, :cond_35

    #@34
    goto :goto_45

    #@35
    .line 205
    :cond_35
    array-length v0, p0

    #@36
    move v2, v1

    #@37
    :goto_37
    if-ge v2, v0, :cond_92

    #@39
    aget-object v3, p0, v2

    #@3b
    .line 206
    invoke-static {v3, p1, p2, p3}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_42

    #@41
    return v1

    #@42
    :cond_42
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_37

    #@45
    .line 200
    :cond_45
    :goto_45
    new-instance p0, Ljava/util/zip/ZipEntry;

    #@47
    new-instance v0, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object p1

    #@50
    const/16 v0, 0x2f

    #@52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    move-result-object p1

    #@56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object p1

    #@5a
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@5d
    .line 201
    invoke-virtual {p0, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    #@60
    .line 202
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@63
    .line 203
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    #@66
    goto :goto_92

    #@67
    :cond_67
    const/4 v0, 0x0

    #@68
    .line 212
    :try_start_68
    new-instance v2, Ljava/io/BufferedInputStream;

    #@6a
    new-instance v3, Ljava/io/FileInputStream;

    #@6c
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@6f
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_97

    #@72
    .line 213
    :try_start_72
    new-instance p0, Ljava/util/zip/ZipEntry;

    #@74
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@77
    .line 214
    invoke-virtual {p0, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    #@7a
    .line 215
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@7d
    const/16 p0, 0x2000

    #@7f
    new-array p1, p0, [B

    #@81
    .line 218
    :goto_81
    invoke-virtual {v2, p1, v1, p0}, Ljava/io/InputStream;->read([BII)I

    #@84
    move-result p3

    #@85
    const/4 v0, -0x1

    #@86
    if-eq p3, v0, :cond_8c

    #@88
    .line 219
    invoke-virtual {p2, p1, v1, p3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    #@8b
    goto :goto_81

    #@8c
    .line 221
    :cond_8c
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_8f
    .catchall {:try_start_72 .. :try_end_8f} :catchall_94

    #@8f
    .line 224
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    #@92
    :cond_92
    :goto_92
    const/4 p0, 0x1

    #@93
    return p0

    #@94
    :catchall_94
    move-exception p0

    #@95
    move-object v0, v2

    #@96
    goto :goto_98

    #@97
    :catchall_97
    move-exception p0

    #@98
    :goto_98
    if-eqz v0, :cond_9d

    #@9a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@9d
    .line 226
    :cond_9d
    throw p0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 133
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object p1

    #@8
    const/4 v0, 0x0

    #@9
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    #@c
    move-result p0

    #@d
    return p0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 149
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object p1

    #@8
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 90
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_45

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_45

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    .line 109
    :try_start_7
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    #@9
    new-instance v3, Ljava/io/FileOutputStream;

    #@b
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@e
    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_3b

    #@11
    .line 110
    :try_start_11
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object p0

    #@15
    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_30

    #@1b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    check-cast p1, Ljava/io/File;

    #@21
    const-string v1, ""

    #@23
    .line 111
    invoke-static {p1, v1, v2, p2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    #@26
    move-result p1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_38

    #@27
    if-nez p1, :cond_15

    #@29
    .line 116
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    #@2c
    .line 117
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    #@2f
    return v0

    #@30
    .line 116
    :cond_30
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    #@33
    .line 117
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    #@36
    const/4 p0, 0x1

    #@37
    return p0

    #@38
    :catchall_38
    move-exception p0

    #@39
    move-object v1, v2

    #@3a
    goto :goto_3c

    #@3b
    :catchall_3b
    move-exception p0

    #@3c
    :goto_3c
    if-eqz v1, :cond_44

    #@3e
    .line 116
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    #@41
    .line 117
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    #@44
    .line 119
    :cond_44
    throw p0

    #@45
    :cond_45
    :goto_45
    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 48
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_49

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_49

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    .line 67
    :try_start_7
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    #@9
    new-instance v3, Ljava/io/FileOutputStream;

    #@b
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@e
    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_3f

    #@11
    .line 68
    :try_start_11
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object p0

    #@15
    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_34

    #@1b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    check-cast p1, Ljava/lang/String;

    #@21
    .line 69
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@24
    move-result-object p1

    #@25
    const-string v1, ""

    #@27
    invoke-static {p1, v1, v2, p2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    #@2a
    move-result p1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_3c

    #@2b
    if-nez p1, :cond_15

    #@2d
    .line 74
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    #@30
    .line 75
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    #@33
    return v0

    #@34
    .line 74
    :cond_34
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    #@37
    .line 75
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    #@3a
    const/4 p0, 0x1

    #@3b
    return p0

    #@3c
    :catchall_3c
    move-exception p0

    #@3d
    move-object v1, v2

    #@3e
    goto :goto_40

    #@3f
    :catchall_3f
    move-exception p0

    #@40
    :goto_40
    if-eqz v1, :cond_48

    #@42
    .line 74
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    #@45
    .line 75
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    #@48
    .line 77
    :cond_48
    throw p0

    #@49
    :cond_49
    :goto_49
    return v0
.end method
