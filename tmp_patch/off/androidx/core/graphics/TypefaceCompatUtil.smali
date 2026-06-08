.class public Landroidx/core/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/TypefaceCompatUtil$Api19Impl;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    #@0
    if-eqz p0, :cond_5

    #@2
    .line 195
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    #@5
    :catch_5
    :cond_5
    return-void
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 4

    #@0
    .line 136
    invoke-static {p0}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p0, :cond_8

    #@7
    return-object v0

    #@8
    .line 141
    :cond_8
    :try_start_8
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    #@b
    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1a

    #@c
    if-nez p1, :cond_12

    #@e
    .line 146
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@11
    return-object v0

    #@12
    .line 144
    :cond_12
    :try_start_12
    invoke-static {p0}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    #@15
    move-result-object p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    #@16
    .line 146
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@19
    return-object p1

    #@1a
    :catchall_1a
    move-exception p1

    #@1b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@1e
    .line 147
    throw p1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 3

    #@0
    .line 180
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@3
    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_e

    #@4
    .line 181
    :try_start_4
    invoke-static {p0, p1}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    #@7
    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    #@8
    .line 183
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    #@b
    return p0

    #@c
    :catchall_c
    move-exception p0

    #@d
    goto :goto_10

    #@e
    :catchall_e
    move-exception p0

    #@f
    const/4 p1, 0x0

    #@10
    :goto_10
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    #@13
    .line 184
    throw p0
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 7

    #@0
    .line 155
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    .line 157
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    #@8
    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_2a
    .catchall {:try_start_6 .. :try_end_b} :catchall_28

    #@b
    const/16 p0, 0x400

    #@d
    :try_start_d
    new-array p0, p0, [B

    #@f
    .line 160
    :goto_f
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    #@12
    move-result v2

    #@13
    const/4 v4, -0x1

    #@14
    if-eq v2, v4, :cond_1a

    #@16
    .line 161
    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_25
    .catchall {:try_start_d .. :try_end_19} :catchall_22

    #@19
    goto :goto_f

    #@1a
    .line 168
    :cond_1a
    invoke-static {v3}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    #@1d
    .line 169
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@20
    const/4 p0, 0x1

    #@21
    return p0

    #@22
    :catchall_22
    move-exception p0

    #@23
    move-object v2, v3

    #@24
    goto :goto_4e

    #@25
    :catch_25
    move-exception p0

    #@26
    move-object v2, v3

    #@27
    goto :goto_2b

    #@28
    :catchall_28
    move-exception p0

    #@29
    goto :goto_4e

    #@2a
    :catch_2a
    move-exception p0

    #@2b
    :goto_2b
    :try_start_2b
    const-string p1, "TypefaceCompatUtil"

    #@2d
    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string v4, "Error copying resource contents to temp file: "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@3b
    move-result-object p0

    #@3c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object p0

    #@40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object p0

    #@44
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_28

    #@47
    .line 168
    invoke-static {v2}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    #@4a
    .line 169
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@4d
    return v1

    #@4e
    .line 168
    :goto_4e
    invoke-static {v2}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    #@51
    .line 169
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@54
    .line 170
    throw p0
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    #@0
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p0, :cond_8

    #@7
    return-object v0

    #@8
    .line 76
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const-string v2, ".font"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@12
    move-result v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, "-"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@20
    move-result v3

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_2e
    const/16 v3, 0x64

    #@30
    if-ge v2, v3, :cond_52

    #@32
    .line 78
    new-instance v3, Ljava/io/File;

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@48
    .line 80
    :try_start_48
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    #@4b
    move-result v4
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4f

    #@4c
    if-eqz v4, :cond_4f

    #@4e
    return-object v3

    #@4f
    :catch_4f
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_2e

    #@52
    :cond_52
    return-object v0
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 10

    #@0
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    :try_start_5
    const-string v1, "r"

    #@7
    .line 113
    invoke-static {p0, p2, v1, p1}, Landroidx/core/graphics/TypefaceCompatUtil$Api19Impl;->openFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@a
    move-result-object p0

    #@b
    if-nez p0, :cond_13

    #@d
    if-eqz p0, :cond_12

    #@f
    .line 123
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_4b

    #@12
    :cond_12
    return-object v0

    #@13
    .line 118
    :cond_13
    :try_start_13
    new-instance p1, Ljava/io/FileInputStream;

    #@15
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@18
    move-result-object p2

    #@19
    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_3f

    #@1c
    .line 119
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@1f
    move-result-object v1

    #@20
    .line 120
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    #@23
    move-result-wide v5

    #@24
    .line 121
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@26
    const-wide/16 v3, 0x0

    #@28
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@2b
    move-result-object p2
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_35

    #@2c
    .line 122
    :try_start_2c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3f

    #@2f
    if-eqz p0, :cond_34

    #@31
    .line 123
    :try_start_31
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_4b

    #@34
    :cond_34
    return-object p2

    #@35
    :catchall_35
    move-exception p2

    #@36
    .line 118
    :try_start_36
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    #@39
    goto :goto_3e

    #@3a
    :catchall_3a
    move-exception p1

    #@3b
    :try_start_3b
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@3e
    :goto_3e
    throw p2
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    #@3f
    :catchall_3f
    move-exception p1

    #@40
    if-eqz p0, :cond_4a

    #@42
    .line 113
    :try_start_42
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    #@45
    goto :goto_4a

    #@46
    :catchall_46
    move-exception p0

    #@47
    :try_start_47
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@4a
    :cond_4a
    :goto_4a
    throw p1
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_4b

    #@4b
    :catch_4b
    return-object v0
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 8

    #@0
    .line 96
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_23

    #@5
    .line 97
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@8
    move-result-object v1

    #@9
    .line 98
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    #@c
    move-result-wide v5

    #@d
    .line 99
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@f
    const-wide/16 v3, 0x0

    #@11
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@14
    move-result-object p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    #@15
    .line 100
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_23

    #@18
    return-object p0

    #@19
    :catchall_19
    move-exception p0

    #@1a
    .line 96
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    #@1d
    goto :goto_22

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    :try_start_1f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@22
    :goto_22
    throw p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_23

    #@23
    :catch_23
    const/4 p0, 0x0

    #@24
    return-object p0
.end method

.method public static readFontInfoIntoByteBuffer(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/core/provider/FontsContractCompat$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    #@0
    .line 221
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 223
    array-length v1, p1

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v1, :cond_27

    #@9
    aget-object v3, p1, v2

    #@b
    .line 224
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_12

    #@11
    goto :goto_24

    #@12
    .line 228
    :cond_12
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    #@15
    move-result-object v3

    #@16
    .line 229
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1d

    #@1c
    goto :goto_24

    #@1d
    .line 233
    :cond_1d
    invoke-static {p0, p2, v3}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    #@20
    move-result-object v4

    #@21
    .line 234
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_7

    #@27
    .line 236
    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@2a
    move-result-object p0

    #@2b
    return-object p0
.end method
