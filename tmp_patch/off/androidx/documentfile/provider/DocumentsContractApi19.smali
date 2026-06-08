.class Landroidx/documentfile/provider/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# static fields
.field private static final FLAG_VIRTUAL_DOCUMENT:I = 0x200

.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 94
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v1, :cond_9

    #@8
    return v2

    #@9
    .line 100
    :cond_9
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result p0

    #@11
    if-eqz p0, :cond_14

    #@13
    return v2

    #@14
    :cond_14
    return v0
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v1, :cond_9

    #@8
    return v2

    #@9
    .line 114
    :cond_9
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    const-string v3, "flags"

    #@f
    .line 115
    invoke-static {p0, p1, v3, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    #@12
    move-result p0

    #@13
    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result p1

    #@17
    if-eqz p1, :cond_1a

    #@19
    return v2

    #@1a
    :cond_1a
    and-int/lit8 p1, p0, 0x4

    #@1c
    const/4 v3, 0x1

    #@1d
    if-eqz p1, :cond_20

    #@1f
    return v3

    #@20
    :cond_20
    const-string p1, "vnd.android.document/directory"

    #@22
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result p1

    #@26
    if-eqz p1, :cond_2d

    #@28
    and-int/lit8 p1, p0, 0x8

    #@2a
    if-eqz p1, :cond_2d

    #@2c
    return v3

    #@2d
    .line 131
    :cond_2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@30
    move-result p1

    #@31
    if-nez p1, :cond_37

    #@33
    and-int/2addr p0, v0

    #@34
    if-eqz p0, :cond_37

    #@36
    return v3

    #@37
    :cond_37
    return v2
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 1

    #@0
    if-eqz p0, :cond_8

    #@2
    .line 205
    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    #@5
    goto :goto_8

    #@6
    :catch_6
    move-exception p0

    #@7
    .line 207
    throw p0

    #@8
    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 10

    #@0
    const-string v0, "Failed query: "

    #@2
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    const/4 p0, 0x0

    #@7
    const/4 v7, 0x0

    #@8
    :try_start_8
    const-string v2, "document_id"

    #@a
    .line 145
    filled-new-array {v2}, [Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v6, 0x0

    #@11
    move-object v2, p1

    #@12
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@15
    move-result-object v7

    #@16
    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@19
    move-result p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_23
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    #@1a
    if-lez p1, :cond_1d

    #@1c
    const/4 p0, 0x1

    #@1d
    .line 152
    :cond_1d
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@20
    return p0

    #@21
    :catchall_21
    move-exception p0

    #@22
    goto :goto_3a

    #@23
    :catch_23
    move-exception p1

    #@24
    :try_start_24
    const-string v1, "DocumentFile"

    #@26
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object p1

    #@2f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object p1

    #@33
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_21

    #@36
    .line 152
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@39
    return p0

    #@3a
    :goto_3a
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    throw p0
.end method

.method public static getFlags(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    #@0
    const-string v0, "flags"

    #@2
    const-wide/16 v1, 0x0

    #@4
    .line 68
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "_display_name"

    #@2
    const/4 v1, 0x0

    #@3
    .line 49
    invoke-static {p0, p1, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "mime_type"

    #@2
    const/4 v1, 0x0

    #@3
    .line 54
    invoke-static {p0, p1, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    #@0
    .line 59
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const-string p1, "vnd.android.document/directory"

    #@6
    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_d

    #@c
    const/4 p0, 0x0

    #@d
    :cond_d
    return-object p0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3

    #@0
    const-string v0, "vnd.android.document/directory"

    #@2
    .line 72
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result p0

    #@a
    return p0
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 2

    #@0
    .line 76
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const-string p1, "vnd.android.document/directory"

    #@6
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_15

    #@c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result p0

    #@10
    if-eqz p0, :cond_13

    #@12
    goto :goto_15

    #@13
    :cond_13
    const/4 p0, 0x1

    #@14
    return p0

    #@15
    :cond_15
    :goto_15
    const/4 p0, 0x0

    #@16
    return p0
.end method

.method public static isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6

    #@0
    .line 40
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 44
    :cond_8
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getFlags(Landroid/content/Context;Landroid/net/Uri;)J

    #@b
    move-result-wide p0

    #@c
    const-wide/16 v2, 0x200

    #@e
    and-long/2addr p0, v2

    #@f
    const-wide/16 v2, 0x0

    #@11
    cmp-long p0, p0, v2

    #@13
    if-eqz p0, :cond_16

    #@15
    const/4 v1, 0x1

    #@16
    :cond_16
    return v1
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    #@0
    const-string v0, "last_modified"

    #@2
    const-wide/16 v1, 0x0

    #@4
    .line 85
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    #@0
    const-string v0, "_size"

    #@2
    const-wide/16 v1, 0x0

    #@4
    .line 89
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    #@7
    move-result-wide p0

    #@8
    return-wide p0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .registers 6

    #@0
    int-to-long v0, p3

    #@1
    .line 179
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    #@4
    move-result-wide p0

    #@5
    long-to-int p0, p0

    #@6
    return p0
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .registers 13

    #@0
    const-string v0, "Failed query: "

    #@2
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    const/4 p0, 0x1

    #@7
    const/4 v7, 0x0

    #@8
    :try_start_8
    new-array v3, p0, [Ljava/lang/String;

    #@a
    const/4 p0, 0x0

    #@b
    aput-object p2, v3, p0

    #@d
    const/4 v4, 0x0

    #@e
    const/4 v5, 0x0

    #@f
    const/4 v6, 0x0

    #@10
    move-object v2, p1

    #@11
    .line 188
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@14
    move-result-object v7

    #@15
    .line 189
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_29

    #@1b
    invoke-interface {v7, p0}, Landroid/database/Cursor;->isNull(I)Z

    #@1e
    move-result p1

    #@1f
    if-nez p1, :cond_29

    #@21
    .line 190
    invoke-interface {v7, p0}, Landroid/database/Cursor;->getLong(I)J

    #@24
    move-result-wide p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_2f
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    #@25
    .line 198
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    return-wide p0

    #@29
    :cond_29
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2c
    return-wide p3

    #@2d
    :catchall_2d
    move-exception p0

    #@2e
    goto :goto_46

    #@2f
    :catch_2f
    move-exception p0

    #@30
    :try_start_30
    const-string p1, "DocumentFile"

    #@32
    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p0

    #@3b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object p0

    #@3f
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_2d

    #@42
    .line 198
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    return-wide p3

    #@46
    :goto_46
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@49
    throw p0
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    #@0
    const-string v0, "Failed query: "

    #@2
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    const/4 p0, 0x1

    #@7
    const/4 v7, 0x0

    #@8
    :try_start_8
    new-array v3, p0, [Ljava/lang/String;

    #@a
    const/4 p0, 0x0

    #@b
    aput-object p2, v3, p0

    #@d
    const/4 v4, 0x0

    #@e
    const/4 v5, 0x0

    #@f
    const/4 v6, 0x0

    #@10
    move-object v2, p1

    #@11
    .line 163
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@14
    move-result-object v7

    #@15
    .line 164
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_29

    #@1b
    invoke-interface {v7, p0}, Landroid/database/Cursor;->isNull(I)Z

    #@1e
    move-result p1

    #@1f
    if-nez p1, :cond_29

    #@21
    .line 165
    invoke-interface {v7, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@24
    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_2f
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    #@25
    .line 173
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    return-object p0

    #@29
    :cond_29
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2c
    return-object p3

    #@2d
    :catchall_2d
    move-exception p0

    #@2e
    goto :goto_46

    #@2f
    :catch_2f
    move-exception p0

    #@30
    :try_start_30
    const-string p1, "DocumentFile"

    #@32
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p0

    #@3b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object p0

    #@3f
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_2d

    #@42
    .line 173
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    return-object p3

    #@46
    :goto_46
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@49
    throw p0
.end method
