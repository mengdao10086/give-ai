.class public final Lcom/blankj/utilcode/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method private static copyUri2Cache(Landroid/net/Uri;)Ljava/io/File;
    .registers 8

    #@0
    const-string v0, ""

    #@2
    const-string v1, "UriUtils"

    #@4
    const-string v2, "copyUri2Cache() called"

    #@6
    .line 320
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    const/4 v1, 0x0

    #@a
    .line 323
    :try_start_a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@15
    move-result-object p0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_16} :catch_4a
    .catchall {:try_start_a .. :try_end_16} :catchall_48

    #@16
    .line 324
    :try_start_16
    new-instance v2, Ljava/io/File;

    #@18
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    #@1f
    move-result-object v3

    #@20
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@28
    move-result-wide v5

    #@29
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@34
    .line 325
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_3b} :catch_46
    .catchall {:try_start_16 .. :try_end_3b} :catchall_5a

    #@3b
    if-eqz p0, :cond_45

    #@3d
    .line 333
    :try_start_3d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    #@40
    goto :goto_45

    #@41
    :catch_41
    move-exception p0

    #@42
    .line 335
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@45
    :cond_45
    :goto_45
    return-object v2

    #@46
    :catch_46
    move-exception v0

    #@47
    goto :goto_4c

    #@48
    :catchall_48
    move-exception v0

    #@49
    goto :goto_5c

    #@4a
    :catch_4a
    move-exception v0

    #@4b
    move-object p0, v1

    #@4c
    .line 328
    :goto_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5a

    #@4f
    if-eqz p0, :cond_59

    #@51
    .line 333
    :try_start_51
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    #@54
    goto :goto_59

    #@55
    :catch_55
    move-exception p0

    #@56
    .line 335
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@59
    :cond_59
    :goto_59
    return-object v1

    #@5a
    :catchall_5a
    move-exception v0

    #@5b
    move-object v1, p0

    #@5c
    :goto_5c
    if-eqz v1, :cond_66

    #@5e
    .line 333
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    #@61
    goto :goto_66

    #@62
    :catch_62
    move-exception p0

    #@63
    .line 335
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@66
    .line 338
    :cond_66
    :goto_66
    throw v0
.end method

.method public static file2Uri(Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    #@0
    .line 58
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 60
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ".utilcode.fileprovider"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 61
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    #@2a
    move-result-object p0

    #@2b
    return-object p0
.end method

.method private static getFileFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 268
    invoke-static {p0, v0, v0, p1}, Lcom/blankj/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method private static getFileFromUri(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 11

    #@0
    const-string v0, "com.google.android.apps.photos.content"

    #@2
    .line 275
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_20

    #@c
    .line 276
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_6e

    #@16
    .line 277
    new-instance p1, Ljava/io/File;

    #@18
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1f
    return-object p1

    #@20
    :cond_20
    const-string v0, "com.tencent.mtt.fileprovider"

    #@22
    .line 279
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_4a

    #@2c
    .line 280
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_6e

    #@36
    .line 282
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@39
    move-result-object p0

    #@3a
    .line 283
    new-instance p1, Ljava/io/File;

    #@3c
    const/16 p2, 0xa

    #@3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@41
    move-result p3

    #@42
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object p2

    #@46
    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@49
    return-object p1

    #@4a
    :cond_4a
    const-string v0, "com.huawei.hidisk.fileprovider"

    #@4c
    .line 285
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_6e

    #@56
    .line 286
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5d
    move-result v1

    #@5e
    if-nez v1, :cond_6e

    #@60
    .line 288
    new-instance p0, Ljava/io/File;

    #@62
    const-string p1, "/root"

    #@64
    const-string p2, ""

    #@66
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@69
    move-result-object p1

    #@6a
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6d
    return-object p0

    #@6e
    .line 292
    :cond_6e
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@75
    move-result-object v1

    #@76
    const-string v0, "_data"

    #@78
    filled-new-array {v0}, [Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    const/4 v6, 0x0

    #@7d
    move-object v2, p0

    #@7e
    move-object v4, p1

    #@7f
    move-object v5, p2

    #@80
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@83
    move-result-object p1

    #@84
    const/4 p2, 0x0

    #@85
    const-string v1, "UriUtils"

    #@87
    if-nez p1, :cond_a8

    #@89
    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@91
    move-result-object p0

    #@92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object p0

    #@96
    const-string p1, " parse failed(cursor is null). -> "

    #@98
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object p0

    #@9c
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object p0

    #@a0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object p0

    #@a4
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    return-object p2

    #@a8
    .line 299
    :cond_a8
    :try_start_a8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    #@ab
    move-result v2

    #@ac
    if-eqz v2, :cond_ee

    #@ae
    .line 300
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@b1
    move-result v0

    #@b2
    const/4 v2, -0x1

    #@b3
    if-le v0, v2, :cond_c2

    #@b5
    .line 302
    new-instance v2, Ljava/io/File;

    #@b7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@ba
    move-result-object v0

    #@bb
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_be} :catch_112
    .catchall {:try_start_a8 .. :try_end_be} :catchall_110

    #@be
    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@c1
    return-object v2

    #@c2
    .line 304
    :cond_c2
    :try_start_c2
    new-instance v2, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@ca
    move-result-object v3

    #@cb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v2

    #@cf
    const-string v3, " parse failed(columnIndex: "

    #@d1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v2

    #@d5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    const-string v2, " is wrong). -> "

    #@db
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_ea} :catch_112
    .catchall {:try_start_c2 .. :try_end_ea} :catchall_110

    #@ea
    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@ed
    return-object p2

    #@ee
    .line 308
    :cond_ee
    :try_start_ee
    new-instance v0, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v0

    #@fb
    const-string v2, " parse failed(moveToFirst return false). -> "

    #@fd
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v0

    #@101
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v0

    #@105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v0

    #@109
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_10c} :catch_112
    .catchall {:try_start_ee .. :try_end_10c} :catchall_110

    #@10c
    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@10f
    return-object p2

    #@110
    :catchall_110
    move-exception p0

    #@111
    goto :goto_134

    #@112
    .line 312
    :catch_112
    :try_start_112
    new-instance v0, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@11a
    move-result-object p0

    #@11b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object p0

    #@11f
    const-string v0, " parse failed. -> "

    #@121
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object p0

    #@125
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object p0

    #@129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object p0

    #@12d
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catchall {:try_start_112 .. :try_end_130} :catchall_110

    #@130
    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@133
    return-object p2

    #@134
    :goto_134
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@137
    .line 316
    throw p0
.end method

.method public static res2Uri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    #@0
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "android.resource://"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, "/"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@24
    move-result-object p0

    #@25
    return-object p0
.end method

.method public static uri2Bytes(Landroid/net/Uri;)[B
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 351
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@f
    move-result-object p0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_26
    .catchall {:try_start_4 .. :try_end_10} :catchall_21

    #@10
    .line 352
    :try_start_10
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->inputStream2Bytes(Ljava/io/InputStream;)[B

    #@13
    move-result-object v0
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_14} :catch_1f
    .catchall {:try_start_10 .. :try_end_14} :catchall_3d

    #@14
    if-eqz p0, :cond_1e

    #@16
    .line 360
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    #@19
    goto :goto_1e

    #@1a
    :catch_1a
    move-exception p0

    #@1b
    .line 362
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@1e
    :cond_1e
    :goto_1e
    return-object v0

    #@1f
    :catch_1f
    move-exception v1

    #@20
    goto :goto_28

    #@21
    :catchall_21
    move-exception p0

    #@22
    move-object v3, v0

    #@23
    move-object v0, p0

    #@24
    move-object p0, v3

    #@25
    goto :goto_3e

    #@26
    :catch_26
    move-exception v1

    #@27
    move-object p0, v0

    #@28
    .line 354
    :goto_28
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    #@2b
    const-string v1, "UriUtils"

    #@2d
    const-string v2, "uri to bytes failed."

    #@2f
    .line 355
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3d

    #@32
    if-eqz p0, :cond_3c

    #@34
    .line 360
    :try_start_34
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    #@37
    goto :goto_3c

    #@38
    :catch_38
    move-exception p0

    #@39
    .line 362
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@3c
    :cond_3c
    :goto_3c
    return-object v0

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    :goto_3e
    if-eqz p0, :cond_48

    #@40
    .line 360
    :try_start_40
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    #@43
    goto :goto_48

    #@44
    :catch_44
    move-exception p0

    #@45
    .line 362
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@48
    .line 365
    :cond_48
    :goto_48
    throw v0
.end method

.method public static uri2File(Landroid/net/Uri;)Ljava/io/File;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 75
    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UriUtils;->uri2FileReal(Landroid/net/Uri;)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    .line 77
    :cond_b
    invoke-static {p0}, Lcom/blankj/utilcode/util/UriUtils;->copyUri2Cache(Landroid/net/Uri;)Ljava/io/File;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static uri2FileNoCacheCopy(Landroid/net/Uri;)Ljava/io/File;
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 88
    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UriUtils;->uri2FileReal(Landroid/net/Uri;)Ljava/io/File;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static uri2FileReal(Landroid/net/Uri;)Ljava/io/File;
    .registers 18

    #@0
    move-object/from16 v1, p0

    #@2
    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v2, "UriUtils"

    #@8
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    const-string v5, "/"

    #@19
    const/4 v6, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    if-eqz v4, :cond_15e

    #@1d
    const-string v8, "/external/"

    #@1f
    const-string v9, "/external_path/"

    #@21
    .line 103
    filled-new-array {v8, v9}, [Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    move v9, v7

    #@26
    :goto_26
    const-string v10, " -> "

    #@28
    const/4 v11, 0x2

    #@29
    if-ge v9, v11, :cond_7b

    #@2b
    .line 105
    aget-object v11, v8, v9

    #@2d
    .line 106
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v12

    #@31
    if-eqz v12, :cond_78

    #@33
    .line 107
    new-instance v12, Ljava/io/File;

    #@35
    new-instance v13, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@3d
    move-result-object v14

    #@3e
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@41
    move-result-object v14

    #@42
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v13

    #@46
    .line 108
    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@49
    move-result-object v14

    #@4a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v13

    #@4e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v13

    #@52
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@55
    .line 109
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@58
    move-result v13

    #@59
    if-eqz v13, :cond_78

    #@5b
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    return-object v12

    #@78
    :cond_78
    add-int/lit8 v9, v9, 0x1

    #@7a
    goto :goto_26

    #@7b
    :cond_7b
    const-string v8, "/files_path/"

    #@7d
    .line 116
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@80
    move-result v9

    #@81
    if-eqz v9, :cond_ab

    #@83
    .line 117
    new-instance v9, Ljava/io/File;

    #@85
    new-instance v11, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8d
    move-result-object v12

    #@8e
    invoke-virtual {v12}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    #@91
    move-result-object v12

    #@92
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@95
    move-result-object v12

    #@96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v11

    #@9a
    .line 118
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@9d
    move-result-object v8

    #@9e
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v8

    #@a6
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a9
    goto/16 :goto_139

    #@ab
    :cond_ab
    const-string v8, "/cache_path/"

    #@ad
    .line 119
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b0
    move-result v9

    #@b1
    if-eqz v9, :cond_da

    #@b3
    .line 120
    new-instance v9, Ljava/io/File;

    #@b5
    new-instance v11, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@bd
    move-result-object v12

    #@be
    invoke-virtual {v12}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    #@c1
    move-result-object v12

    #@c2
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@c5
    move-result-object v12

    #@c6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v11

    #@ca
    .line 121
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v8

    #@d6
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d9
    goto :goto_139

    #@da
    :cond_da
    const-string v8, "/external_files_path/"

    #@dc
    .line 122
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@df
    move-result v9

    #@e0
    if-eqz v9, :cond_109

    #@e2
    .line 123
    new-instance v9, Ljava/io/File;

    #@e4
    new-instance v11, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@ec
    move-result-object v12

    #@ed
    invoke-virtual {v12, v6}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@f0
    move-result-object v12

    #@f1
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@f4
    move-result-object v12

    #@f5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v11

    #@f9
    .line 124
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@fc
    move-result-object v8

    #@fd
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v8

    #@101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v8

    #@105
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@108
    goto :goto_139

    #@109
    :cond_109
    const-string v8, "/external_cache_path/"

    #@10b
    .line 125
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10e
    move-result v9

    #@10f
    if-eqz v9, :cond_138

    #@111
    .line 126
    new-instance v9, Ljava/io/File;

    #@113
    new-instance v11, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@11b
    move-result-object v12

    #@11c
    invoke-virtual {v12}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    #@11f
    move-result-object v12

    #@120
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@123
    move-result-object v12

    #@124
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v11

    #@128
    .line 127
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@12b
    move-result-object v8

    #@12c
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v8

    #@130
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v8

    #@134
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@137
    goto :goto_139

    #@138
    :cond_138
    move-object v9, v6

    #@139
    :goto_139
    if-eqz v9, :cond_15e

    #@13b
    .line 129
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    #@13e
    move-result v8

    #@13f
    if-eqz v8, :cond_15e

    #@141
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    #@143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@149
    move-result-object v1

    #@14a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v0

    #@14e
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v0

    #@152
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v0

    #@156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v0

    #@15a
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15d
    return-object v9

    #@15e
    :cond_15e
    const-string v8, "file"

    #@160
    .line 134
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@163
    move-result v8

    #@164
    if-eqz v8, :cond_189

    #@166
    if-eqz v4, :cond_16e

    #@168
    .line 135
    new-instance v0, Ljava/io/File;

    #@16a
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@16d
    return-object v0

    #@16e
    .line 136
    :cond_16e
    new-instance v0, Ljava/lang/StringBuilder;

    #@170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@176
    move-result-object v1

    #@177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v0

    #@17b
    const-string v1, " parse failed. -> 0"

    #@17d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v0

    #@181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v0

    #@185
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@188
    return-object v6

    #@189
    .line 140
    :cond_189
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@18c
    move-result-object v4

    #@18d
    invoke-static {v4, v1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    #@190
    move-result v4

    #@191
    const-string v8, "content"

    #@193
    if-eqz v4, :cond_409

    #@195
    const-string v4, "com.android.externalstorage.documents"

    #@197
    .line 141
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19a
    move-result v4

    #@19b
    const-string v9, ":"

    #@19d
    const/4 v10, 0x1

    #@19e
    if-eqz v4, :cond_2ec

    #@1a0
    .line 142
    invoke-static/range {p0 .. p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@1a3
    move-result-object v0

    #@1a4
    .line 143
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1a7
    move-result-object v0

    #@1a8
    .line 144
    aget-object v3, v0, v7

    #@1aa
    const-string v4, "primary"

    #@1ac
    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1af
    move-result v4

    #@1b0
    if-eqz v4, :cond_1d3

    #@1b2
    .line 146
    new-instance v1, Ljava/io/File;

    #@1b4
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@1bc
    move-result-object v3

    #@1bd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v2

    #@1c1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v2

    #@1c5
    aget-object v0, v0, v10

    #@1c7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v0

    #@1cb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ce
    move-result-object v0

    #@1cf
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1d2
    return-object v1

    #@1d3
    .line 150
    :cond_1d3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@1d6
    move-result-object v4

    #@1d7
    const-string v8, "storage"

    #@1d9
    invoke-virtual {v4, v8}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1dc
    move-result-object v4

    #@1dd
    check-cast v4, Landroid/os/storage/StorageManager;

    #@1df
    :try_start_1df
    const-string v8, "android.os.storage.StorageVolume"

    #@1e1
    .line 152
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@1e4
    move-result-object v8

    #@1e5
    .line 153
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e8
    move-result-object v9

    #@1e9
    const-string v11, "getVolumeList"

    #@1eb
    new-array v12, v7, [Ljava/lang/Class;

    #@1ed
    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1f0
    move-result-object v9

    #@1f1
    const-string v11, "getUuid"

    #@1f3
    new-array v12, v7, [Ljava/lang/Class;

    #@1f5
    .line 154
    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1f8
    move-result-object v11

    #@1f9
    const-string v12, "getState"

    #@1fb
    new-array v13, v7, [Ljava/lang/Class;

    #@1fd
    .line 155
    invoke-virtual {v8, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@200
    move-result-object v12

    #@201
    const-string v13, "getPath"

    #@203
    new-array v14, v7, [Ljava/lang/Class;

    #@205
    .line 156
    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@208
    move-result-object v13

    #@209
    const-string v14, "isPrimary"

    #@20b
    new-array v15, v7, [Ljava/lang/Class;

    #@20d
    .line 157
    invoke-virtual {v8, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@210
    move-result-object v14

    #@211
    const-string v15, "isEmulated"

    #@213
    new-array v6, v7, [Ljava/lang/Class;

    #@215
    .line 158
    invoke-virtual {v8, v15, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@218
    move-result-object v6

    #@219
    new-array v8, v7, [Ljava/lang/Object;

    #@21b
    .line 160
    invoke-virtual {v9, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@21e
    move-result-object v4

    #@21f
    .line 162
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@222
    move-result v8

    #@223
    move v9, v7

    #@224
    :goto_224
    if-ge v9, v8, :cond_2d0

    #@226
    .line 164
    invoke-static {v4, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@229
    move-result-object v15

    #@22a
    const-string v10, "mounted"

    #@22c
    move-object/from16 v16, v4

    #@22e
    new-array v4, v7, [Ljava/lang/Object;

    #@230
    .line 167
    invoke-virtual {v12, v15, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@233
    move-result-object v4

    #@234
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@237
    move-result v4

    #@238
    if-nez v4, :cond_24b

    #@23a
    const-string v4, "mounted_ro"

    #@23c
    new-array v10, v7, [Ljava/lang/Object;

    #@23e
    .line 168
    invoke-virtual {v12, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@241
    move-result-object v10

    #@242
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@245
    move-result v4

    #@246
    if-eqz v4, :cond_249

    #@248
    goto :goto_24b

    #@249
    :cond_249
    move v4, v7

    #@24a
    goto :goto_24c

    #@24b
    :cond_24b
    :goto_24b
    const/4 v4, 0x1

    #@24c
    :goto_24c
    if-nez v4, :cond_24f

    #@24e
    goto :goto_2a0

    #@24f
    :cond_24f
    new-array v4, v7, [Ljava/lang/Object;

    #@251
    .line 174
    invoke-virtual {v14, v15, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@254
    move-result-object v4

    #@255
    check-cast v4, Ljava/lang/Boolean;

    #@257
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@25a
    move-result v4

    #@25b
    if-eqz v4, :cond_26c

    #@25d
    new-array v4, v7, [Ljava/lang/Object;

    #@25f
    .line 175
    invoke-virtual {v6, v15, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@262
    move-result-object v4

    #@263
    check-cast v4, Ljava/lang/Boolean;

    #@265
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@268
    move-result v4

    #@269
    if-eqz v4, :cond_26c

    #@26b
    goto :goto_2a0

    #@26c
    :cond_26c
    new-array v4, v7, [Ljava/lang/Object;

    #@26e
    .line 179
    invoke-virtual {v11, v15, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@271
    move-result-object v4

    #@272
    check-cast v4, Ljava/lang/String;

    #@274
    if-eqz v4, :cond_2a0

    #@276
    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@279
    move-result v4

    #@27a
    if-eqz v4, :cond_2a0

    #@27c
    .line 182
    new-instance v3, Ljava/io/File;

    #@27e
    new-instance v4, Ljava/lang/StringBuilder;

    #@280
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@283
    new-array v6, v7, [Ljava/lang/Object;

    #@285
    invoke-virtual {v13, v15, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@288
    move-result-object v6

    #@289
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v4

    #@28d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v4

    #@291
    const/4 v5, 0x1

    #@292
    aget-object v0, v0, v5

    #@294
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v0

    #@298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29b
    move-result-object v0

    #@29c
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_29f} :catch_2a7

    #@29f
    return-object v3

    #@2a0
    :cond_2a0
    :goto_2a0
    add-int/lit8 v9, v9, 0x1

    #@2a2
    move-object/from16 v4, v16

    #@2a4
    const/4 v10, 0x1

    #@2a5
    goto/16 :goto_224

    #@2a7
    :catch_2a7
    move-exception v0

    #@2a8
    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    #@2aa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2ad
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2b0
    move-result-object v4

    #@2b1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v3

    #@2b5
    const-string v4, " parse failed. "

    #@2b7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v3

    #@2bb
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@2be
    move-result-object v0

    #@2bf
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v0

    #@2c3
    const-string v3, " -> 1_0"

    #@2c5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v0

    #@2c9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cc
    move-result-object v0

    #@2cd
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d0
    .line 189
    :cond_2d0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d5
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2d8
    move-result-object v1

    #@2d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v0

    #@2dd
    const-string v1, " parse failed. -> 1_0"

    #@2df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v0

    #@2e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e6
    move-result-object v0

    #@2e7
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2ea
    const/4 v1, 0x0

    #@2eb
    return-object v1

    #@2ec
    :cond_2ec
    const-string v4, "com.android.providers.downloads.documents"

    #@2ee
    .line 192
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f1
    move-result v4

    #@2f2
    if-eqz v4, :cond_381

    #@2f4
    .line 193
    invoke-static/range {p0 .. p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@2f7
    move-result-object v0

    #@2f8
    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2fb
    move-result v3

    #@2fc
    if-eqz v3, :cond_31a

    #@2fe
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    #@300
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@303
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@306
    move-result-object v1

    #@307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v0

    #@30b
    const-string v1, " parse failed(id is null). -> 1_1"

    #@30d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    move-result-object v0

    #@311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@314
    move-result-object v0

    #@315
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@318
    const/4 v1, 0x0

    #@319
    return-object v1

    #@31a
    :cond_31a
    const-string v3, "raw:"

    #@31c
    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@31f
    move-result v3

    #@320
    if-eqz v3, :cond_32d

    #@322
    .line 199
    new-instance v1, Ljava/io/File;

    #@324
    const/4 v2, 0x4

    #@325
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@328
    move-result-object v0

    #@329
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@32c
    return-object v1

    #@32d
    :cond_32d
    const-string v3, "msf:"

    #@32f
    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@332
    move-result v3

    #@333
    if-eqz v3, :cond_33c

    #@335
    .line 201
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@338
    move-result-object v0

    #@339
    const/4 v3, 0x1

    #@33a
    aget-object v0, v0, v3

    #@33c
    .line 206
    :cond_33c
    :try_start_33c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@33f
    move-result-wide v3
    :try_end_340
    .catch Ljava/lang/Exception; {:try_start_33c .. :try_end_340} :catch_37f

    #@340
    const-string v0, "content://downloads/all_downloads"

    #@342
    const-string v5, "content://downloads/my_downloads"

    #@344
    const-string v6, "content://downloads/public_downloads"

    #@346
    .line 211
    filled-new-array {v6, v0, v5}, [Ljava/lang/String;

    #@349
    move-result-object v0

    #@34a
    :goto_34a
    const/4 v5, 0x3

    #@34b
    if-ge v7, v5, :cond_363

    #@34d
    .line 217
    aget-object v5, v0, v7

    #@34f
    .line 218
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@352
    move-result-object v5

    #@353
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@356
    move-result-object v5

    #@357
    :try_start_357
    const-string v6, "1_1"

    #@359
    .line 220
    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    #@35c
    move-result-object v5
    :try_end_35d
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_35d} :catch_360

    #@35d
    if-eqz v5, :cond_360

    #@35f
    return-object v5

    #@360
    :catch_360
    :cond_360
    add-int/lit8 v7, v7, 0x1

    #@362
    goto :goto_34a

    #@363
    .line 228
    :cond_363
    new-instance v0, Ljava/lang/StringBuilder;

    #@365
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@368
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@36b
    move-result-object v1

    #@36c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36f
    move-result-object v0

    #@370
    const-string v1, " parse failed. -> 1_1"

    #@372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@375
    move-result-object v0

    #@376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@379
    move-result-object v0

    #@37a
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37d
    const/4 v1, 0x0

    #@37e
    return-object v1

    #@37f
    :catch_37f
    const/4 v1, 0x0

    #@380
    return-object v1

    #@381
    :cond_381
    const-string v4, "com.android.providers.media.documents"

    #@383
    .line 231
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@386
    move-result v0

    #@387
    if-eqz v0, :cond_3e0

    #@389
    .line 232
    invoke-static/range {p0 .. p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@38c
    move-result-object v0

    #@38d
    .line 233
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@390
    move-result-object v0

    #@391
    .line 234
    aget-object v3, v0, v7

    #@393
    const-string v4, "image"

    #@395
    .line 236
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@398
    move-result v4

    #@399
    if-eqz v4, :cond_39f

    #@39b
    .line 237
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@39d
    :goto_39d
    const/4 v2, 0x1

    #@39e
    goto :goto_3b5

    #@39f
    :cond_39f
    const-string v4, "video"

    #@3a1
    .line 238
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a4
    move-result v4

    #@3a5
    if-eqz v4, :cond_3aa

    #@3a7
    .line 239
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@3a9
    goto :goto_39d

    #@3aa
    :cond_3aa
    const-string v4, "audio"

    #@3ac
    .line 240
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3af
    move-result v3

    #@3b0
    if-eqz v3, :cond_3c4

    #@3b2
    .line 241
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@3b4
    goto :goto_39d

    #@3b5
    :goto_3b5
    new-array v3, v2, [Ljava/lang/String;

    #@3b7
    .line 247
    aget-object v0, v0, v2

    #@3b9
    aput-object v0, v3, v7

    #@3bb
    const-string v0, "_id=?"

    #@3bd
    const-string v2, "1_2"

    #@3bf
    .line 248
    invoke-static {v1, v0, v3, v2}, Lcom/blankj/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@3c2
    move-result-object v0

    #@3c3
    return-object v0

    #@3c4
    .line 243
    :cond_3c4
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3c9
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@3cc
    move-result-object v1

    #@3cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v0

    #@3d1
    const-string v1, " parse failed. -> 1_2"

    #@3d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d6
    move-result-object v0

    #@3d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3da
    move-result-object v0

    #@3db
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3de
    const/4 v1, 0x0

    #@3df
    return-object v1

    #@3e0
    .line 250
    :cond_3e0
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e3
    move-result v0

    #@3e4
    if-eqz v0, :cond_3ed

    #@3e6
    const-string v0, "1_3"

    #@3e8
    .line 251
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    #@3eb
    move-result-object v0

    #@3ec
    return-object v0

    #@3ed
    .line 254
    :cond_3ed
    new-instance v0, Ljava/lang/StringBuilder;

    #@3ef
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f2
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@3f5
    move-result-object v1

    #@3f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f9
    move-result-object v0

    #@3fa
    const-string v1, " parse failed. -> 1_4"

    #@3fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ff
    move-result-object v0

    #@400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@403
    move-result-object v0

    #@404
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@407
    const/4 v1, 0x0

    #@408
    return-object v1

    #@409
    .line 258
    :cond_409
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40c
    move-result v0

    #@40d
    if-eqz v0, :cond_416

    #@40f
    const-string v0, "2"

    #@411
    .line 259
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    #@414
    move-result-object v0

    #@415
    return-object v0

    #@416
    .line 262
    :cond_416
    new-instance v0, Ljava/lang/StringBuilder;

    #@418
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41b
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@41e
    move-result-object v1

    #@41f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@422
    move-result-object v0

    #@423
    const-string v1, " parse failed. -> 3"

    #@425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@428
    move-result-object v0

    #@429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42c
    move-result-object v0

    #@42d
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@430
    const/4 v1, 0x0

    #@431
    return-object v1
.end method
