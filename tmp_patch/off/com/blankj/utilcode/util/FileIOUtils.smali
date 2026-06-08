.class public final Lcom/blankj/utilcode/util/FileIOUtils;
.super Ljava/lang/Object;
.source "FileIOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static sBufferSize:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static readFile2BytesByChannel(Ljava/io/File;)[B
    .registers 5

    #@0
    .line 867
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 870
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/RandomAccessFile;

    #@a
    const-string v2, "r"

    #@c
    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    #@12
    move-result-object p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_4c
    .catchall {:try_start_8 .. :try_end_13} :catchall_4a

    #@13
    if-nez p0, :cond_2a

    #@15
    :try_start_15
    const-string v0, "FileIOUtils"

    #@17
    const-string v2, "fc is null."

    #@19
    .line 872
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    const/4 v0, 0x0

    #@1d
    new-array v0, v0, [B
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_48
    .catchall {:try_start_15 .. :try_end_1f} :catchall_5c

    #@1f
    if-eqz p0, :cond_29

    #@21
    .line 886
    :try_start_21
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    #@24
    goto :goto_29

    #@25
    :catch_25
    move-exception p0

    #@26
    .line 889
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@29
    :cond_29
    :goto_29
    return-object v0

    #@2a
    .line 875
    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    #@2d
    move-result-wide v2

    #@2e
    long-to-int v0, v2

    #@2f
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@32
    move-result-object v0

    #@33
    .line 877
    :cond_33
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    #@36
    move-result v2

    #@37
    if-gtz v2, :cond_33

    #@39
    .line 879
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@3c
    move-result-object v0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3d} :catch_48
    .catchall {:try_start_2a .. :try_end_3d} :catchall_5c

    #@3d
    if-eqz p0, :cond_47

    #@3f
    .line 886
    :try_start_3f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    #@42
    goto :goto_47

    #@43
    :catch_43
    move-exception p0

    #@44
    .line 889
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@47
    :cond_47
    :goto_47
    return-object v0

    #@48
    :catch_48
    move-exception v0

    #@49
    goto :goto_4e

    #@4a
    :catchall_4a
    move-exception v0

    #@4b
    goto :goto_5e

    #@4c
    :catch_4c
    move-exception v0

    #@4d
    move-object p0, v1

    #@4e
    .line 881
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5c

    #@51
    if-eqz p0, :cond_5b

    #@53
    .line 886
    :try_start_53
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    #@56
    goto :goto_5b

    #@57
    :catch_57
    move-exception p0

    #@58
    .line 889
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@5b
    :cond_5b
    :goto_5b
    return-object v1

    #@5c
    :catchall_5c
    move-exception v0

    #@5d
    move-object v1, p0

    #@5e
    :goto_5e
    if-eqz v1, :cond_68

    #@60
    .line 886
    :try_start_60
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    #@63
    goto :goto_68

    #@64
    :catch_64
    move-exception p0

    #@65
    .line 889
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@68
    .line 891
    :cond_68
    :goto_68
    throw v0
.end method

.method public static readFile2BytesByChannel(Ljava/lang/String;)[B
    .registers 1

    #@0
    .line 857
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByChannel(Ljava/io/File;)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static readFile2BytesByMap(Ljava/io/File;)[B
    .registers 10

    #@0
    .line 911
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 914
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/RandomAccessFile;

    #@a
    const-string v2, "r"

    #@c
    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    #@12
    move-result-object p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_51
    .catchall {:try_start_8 .. :try_end_13} :catchall_4f

    #@13
    const/4 v0, 0x0

    #@14
    if-nez p0, :cond_2a

    #@16
    :try_start_16
    const-string v2, "FileIOUtils"

    #@18
    const-string v3, "fc is null."

    #@1a
    .line 916
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    new-array v0, v0, [B
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1f} :catch_4d
    .catchall {:try_start_16 .. :try_end_1f} :catchall_61

    #@1f
    if-eqz p0, :cond_29

    #@21
    .line 930
    :try_start_21
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    #@24
    goto :goto_29

    #@25
    :catch_25
    move-exception p0

    #@26
    .line 933
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@29
    :cond_29
    :goto_29
    return-object v0

    #@2a
    .line 919
    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    #@2d
    move-result-wide v2

    #@2e
    long-to-int v2, v2

    #@2f
    .line 920
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@31
    const-wide/16 v5, 0x0

    #@33
    int-to-long v7, v2

    #@34
    move-object v3, p0

    #@35
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    #@3c
    move-result-object v3

    #@3d
    .line 921
    new-array v4, v2, [B

    #@3f
    .line 922
    invoke-virtual {v3, v4, v0, v2}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_42} :catch_4d
    .catchall {:try_start_2a .. :try_end_42} :catchall_61

    #@42
    if-eqz p0, :cond_4c

    #@44
    .line 930
    :try_start_44
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    #@47
    goto :goto_4c

    #@48
    :catch_48
    move-exception p0

    #@49
    .line 933
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@4c
    :cond_4c
    :goto_4c
    return-object v4

    #@4d
    :catch_4d
    move-exception v0

    #@4e
    goto :goto_53

    #@4f
    :catchall_4f
    move-exception v0

    #@50
    goto :goto_63

    #@51
    :catch_51
    move-exception v0

    #@52
    move-object p0, v1

    #@53
    .line 925
    :goto_53
    :try_start_53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    #@56
    if-eqz p0, :cond_60

    #@58
    .line 930
    :try_start_58
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    #@5b
    goto :goto_60

    #@5c
    :catch_5c
    move-exception p0

    #@5d
    .line 933
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@60
    :cond_60
    :goto_60
    return-object v1

    #@61
    :catchall_61
    move-exception v0

    #@62
    move-object v1, p0

    #@63
    :goto_63
    if-eqz v1, :cond_6d

    #@65
    .line 930
    :try_start_65
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    #@68
    goto :goto_6d

    #@69
    :catch_69
    move-exception p0

    #@6a
    .line 933
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@6d
    .line 935
    :cond_6d
    :goto_6d
    throw v0
.end method

.method public static readFile2BytesByMap(Ljava/lang/String;)[B
    .registers 1

    #@0
    .line 901
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByMap(Ljava/io/File;)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static readFile2BytesByStream(Ljava/io/File;)[B
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 776
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B
    .registers 12

    #@0
    .line 804
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 807
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/BufferedInputStream;

    #@a
    new-instance v2, Ljava/io/FileInputStream;

    #@c
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@f
    sget p0, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    #@11
    invoke-direct {v0, v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_14} :catch_90

    #@14
    .line 809
    :try_start_14
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    #@16
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_64
    .catchall {:try_start_14 .. :try_end_19} :catchall_61

    #@19
    .line 810
    :try_start_19
    sget v2, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    #@1b
    new-array v2, v2, [B

    #@1d
    const/4 v3, -0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    if-nez p1, :cond_2d

    #@21
    .line 813
    :goto_21
    sget p1, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    #@23
    invoke-virtual {v0, v2, v4, p1}, Ljava/io/InputStream;->read([BII)I

    #@26
    move-result p1

    #@27
    if-eq p1, v3, :cond_4a

    #@29
    .line 814
    invoke-virtual {p0, v2, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@2c
    goto :goto_21

    #@2d
    .line 817
    :cond_2d
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@30
    move-result v5

    #@31
    int-to-double v5, v5

    #@32
    const-wide/16 v7, 0x0

    #@34
    .line 819
    invoke-interface {p1, v7, v8}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    #@37
    move v7, v4

    #@38
    .line 820
    :goto_38
    sget v8, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    #@3a
    invoke-virtual {v0, v2, v4, v8}, Ljava/io/InputStream;->read([BII)I

    #@3d
    move-result v8

    #@3e
    if-eq v8, v3, :cond_4a

    #@40
    .line 821
    invoke-virtual {p0, v2, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@43
    add-int/2addr v7, v8

    #@44
    int-to-double v8, v7

    #@45
    div-double/2addr v8, v5

    #@46
    .line 823
    invoke-interface {p1, v8, v9}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    #@49
    goto :goto_38

    #@4a
    .line 826
    :cond_4a
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@4d
    move-result-object p1
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4e} :catch_5f
    .catchall {:try_start_19 .. :try_end_4e} :catchall_7c

    #@4e
    .line 832
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_51} :catch_90

    #@51
    goto :goto_56

    #@52
    :catch_52
    move-exception v0

    #@53
    .line 834
    :try_start_53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_56} :catch_90

    #@56
    .line 838
    :goto_56
    :try_start_56
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_90

    #@59
    goto :goto_5e

    #@5a
    :catch_5a
    move-exception p0

    #@5b
    .line 841
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_5e} :catch_90

    #@5e
    :goto_5e
    return-object p1

    #@5f
    :catch_5f
    move-exception p1

    #@60
    goto :goto_66

    #@61
    :catchall_61
    move-exception p1

    #@62
    move-object p0, v1

    #@63
    goto :goto_7d

    #@64
    :catch_64
    move-exception p1

    #@65
    move-object p0, v1

    #@66
    .line 828
    :goto_66
    :try_start_66
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_7c

    #@69
    .line 832
    :try_start_69
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_6c} :catch_90

    #@6c
    goto :goto_71

    #@6d
    :catch_6d
    move-exception p1

    #@6e
    .line 834
    :try_start_6e
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_71} :catch_90

    #@71
    :goto_71
    if-eqz p0, :cond_7b

    #@73
    .line 838
    :try_start_73
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_76} :catch_90

    #@76
    goto :goto_7b

    #@77
    :catch_77
    move-exception p0

    #@78
    .line 841
    :try_start_78
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_7b} :catch_90

    #@7b
    :cond_7b
    :goto_7b
    return-object v1

    #@7c
    :catchall_7c
    move-exception p1

    #@7d
    .line 832
    :goto_7d
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_80} :catch_90

    #@80
    goto :goto_85

    #@81
    :catch_81
    move-exception v0

    #@82
    .line 834
    :try_start_82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_85} :catch_90

    #@85
    :goto_85
    if-eqz p0, :cond_8f

    #@87
    .line 838
    :try_start_87
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8a} :catch_90

    #@8a
    goto :goto_8f

    #@8b
    :catch_8b
    move-exception p0

    #@8c
    .line 841
    :try_start_8c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@8f
    .line 843
    :cond_8f
    :goto_8f
    throw p1
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_90} :catch_90

    #@90
    :catch_90
    move-exception p0

    #@91
    .line 845
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    #@94
    return-object v1
.end method

.method public static readFile2BytesByStream(Ljava/lang/String;)[B
    .registers 2

    #@0
    .line 766
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static readFile2BytesByStream(Ljava/lang/String;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B
    .registers 2

    #@0
    .line 792
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static readFile2List(Ljava/io/File;)Ljava/util/List;
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

    #@0
    const v0, 0x7fffffff

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 601
    invoke-static {p0, v2, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static readFile2List(Ljava/io/File;II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 652
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 668
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    :cond_8
    if-le p1, p2, :cond_b

    #@a
    return-object v1

    #@b
    .line 674
    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 675
    invoke-static {p3}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    const/4 v3, 0x1

    #@15
    if-eqz v2, :cond_27

    #@17
    .line 676
    new-instance p3, Ljava/io/BufferedReader;

    #@19
    new-instance v2, Ljava/io/InputStreamReader;

    #@1b
    new-instance v4, Ljava/io/FileInputStream;

    #@1d
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@20
    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@23
    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@26
    goto :goto_37

    #@27
    .line 678
    :cond_27
    new-instance v2, Ljava/io/BufferedReader;

    #@29
    new-instance v4, Ljava/io/InputStreamReader;

    #@2b
    new-instance v5, Ljava/io/FileInputStream;

    #@2d
    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@30
    invoke-direct {v4, v5, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@33
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_36} :catch_59
    .catchall {:try_start_b .. :try_end_36} :catchall_57

    #@36
    move-object p3, v2

    #@37
    .line 682
    :goto_37
    :try_start_37
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3a
    move-result-object p0

    #@3b
    if-eqz p0, :cond_4a

    #@3d
    if-le v3, p2, :cond_40

    #@3f
    goto :goto_4a

    #@40
    :cond_40
    if-gt p1, v3, :cond_47

    #@42
    if-gt v3, p2, :cond_47

    #@44
    .line 684
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_47} :catch_55
    .catchall {:try_start_37 .. :try_end_47} :catchall_69

    #@47
    :cond_47
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_37

    #@4a
    :cond_4a
    :goto_4a
    if-eqz p3, :cond_54

    #@4c
    .line 694
    :try_start_4c
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    #@4f
    goto :goto_54

    #@50
    :catch_50
    move-exception p0

    #@51
    .line 697
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@54
    :cond_54
    :goto_54
    return-object v0

    #@55
    :catch_55
    move-exception p0

    #@56
    goto :goto_5b

    #@57
    :catchall_57
    move-exception p0

    #@58
    goto :goto_6b

    #@59
    :catch_59
    move-exception p0

    #@5a
    move-object p3, v1

    #@5b
    .line 689
    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_69

    #@5e
    if-eqz p3, :cond_68

    #@60
    .line 694
    :try_start_60
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    #@63
    goto :goto_68

    #@64
    :catch_64
    move-exception p0

    #@65
    .line 697
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@68
    :cond_68
    :goto_68
    return-object v1

    #@69
    :catchall_69
    move-exception p0

    #@6a
    move-object v1, p3

    #@6b
    :goto_6b
    if-eqz v1, :cond_75

    #@6d
    .line 694
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    #@70
    goto :goto_75

    #@71
    :catch_71
    move-exception p1

    #@72
    .line 697
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@75
    .line 699
    :cond_75
    :goto_75
    throw p0
.end method

.method public static readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const v1, 0x7fffffff

    #@4
    .line 612
    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;)Ljava/util/List;
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
    .line 580
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 624
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 640
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 2
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
    .line 591
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static readFile2String(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 730
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 741
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 743
    :cond_8
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_14

    #@e
    .line 744
    new-instance p1, Ljava/lang/String;

    #@10
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    #@13
    return-object p1

    #@14
    .line 747
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/String;

    #@16
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_19} :catch_1a

    #@19
    return-object v0

    #@1a
    :catch_1a
    move-exception p0

    #@1b
    .line 749
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@1e
    const-string p0, ""

    #@20
    return-object p0
.end method

.method public static readFile2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 709
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static readFile2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 720
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static setBufferSize(I)V
    .registers 1

    #@0
    .line 945
    sput p0, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    #@2
    return-void
.end method

.method public static writeFileFromBytesByChannel(Ljava/io/File;[BZ)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 363
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z
    .registers 9

    #@0
    const-string v0, "FileIOUtils"

    #@2
    const/4 v1, 0x0

    #@3
    if-nez p1, :cond_b

    #@5
    const-string p0, "bytes is null."

    #@7
    .line 380
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    return v1

    #@b
    .line 383
    :cond_b
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_2a

    #@11
    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    #@13
    const-string p2, "create file <"

    #@15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    const-string p1, "> failed."

    #@1e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p0

    #@22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    return v1

    #@2a
    :cond_2a
    const/4 v2, 0x0

    #@2b
    .line 389
    :try_start_2b
    new-instance v3, Ljava/io/FileOutputStream;

    #@2d
    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@30
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@33
    move-result-object v2

    #@34
    if-nez v2, :cond_46

    #@36
    const-string p0, "fc is null."

    #@38
    .line 391
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3b} :catch_67
    .catchall {:try_start_2b .. :try_end_3b} :catchall_65

    #@3b
    if-eqz v2, :cond_45

    #@3d
    .line 404
    :try_start_3d
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    #@40
    goto :goto_45

    #@41
    :catch_41
    move-exception p0

    #@42
    .line 407
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@45
    :cond_45
    :goto_45
    return v1

    #@46
    .line 394
    :cond_46
    :try_start_46
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    #@49
    move-result-wide v3

    #@4a
    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    #@4d
    .line 395
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@50
    move-result-object p0

    #@51
    invoke-virtual {v2, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    #@54
    const/4 p0, 0x1

    #@55
    if-eqz p3, :cond_5a

    #@57
    .line 396
    invoke-virtual {v2, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5a} :catch_67
    .catchall {:try_start_46 .. :try_end_5a} :catchall_65

    #@5a
    :cond_5a
    if-eqz v2, :cond_64

    #@5c
    .line 404
    :try_start_5c
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    #@5f
    goto :goto_64

    #@60
    :catch_60
    move-exception p1

    #@61
    .line 407
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@64
    :cond_64
    :goto_64
    return p0

    #@65
    :catchall_65
    move-exception p0

    #@66
    goto :goto_76

    #@67
    :catch_67
    move-exception p0

    #@68
    .line 399
    :try_start_68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_65

    #@6b
    if-eqz v2, :cond_75

    #@6d
    .line 404
    :try_start_6d
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    #@70
    goto :goto_75

    #@71
    :catch_71
    move-exception p0

    #@72
    .line 407
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@75
    :cond_75
    :goto_75
    return v1

    #@76
    :goto_76
    if-eqz v2, :cond_80

    #@78
    .line 404
    :try_start_78
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    #@7b
    goto :goto_80

    #@7c
    :catch_7c
    move-exception p1

    #@7d
    .line 407
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@80
    .line 409
    :cond_80
    :goto_80
    throw p0
.end method

.method public static writeFileFromBytesByChannel(Ljava/lang/String;[BZ)Z
    .registers 4

    #@0
    .line 333
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static writeFileFromBytesByChannel(Ljava/lang/String;[BZZ)Z
    .registers 4

    #@0
    .line 349
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static writeFileFromBytesByMap(Ljava/io/File;[BZ)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 453
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z
    .registers 14

    #@0
    const-string v0, "FileIOUtils"

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz p1, :cond_65

    #@5
    .line 469
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_c

    #@b
    goto :goto_65

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    .line 475
    :try_start_d
    new-instance v3, Ljava/io/FileOutputStream;

    #@f
    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@15
    move-result-object v2

    #@16
    if-nez v2, :cond_28

    #@18
    const-string p0, "fc is null."

    #@1a
    .line 477
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1d} :catch_4b
    .catchall {:try_start_d .. :try_end_1d} :catchall_49

    #@1d
    if-eqz v2, :cond_27

    #@1f
    .line 490
    :try_start_1f
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    #@22
    goto :goto_27

    #@23
    :catch_23
    move-exception p0

    #@24
    .line 493
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@27
    :cond_27
    :goto_27
    return v1

    #@28
    .line 480
    :cond_28
    :try_start_28
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    #@2a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    #@2d
    move-result-wide v6

    #@2e
    array-length p0, p1

    #@2f
    int-to-long v8, p0

    #@30
    move-object v4, v2

    #@31
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@34
    move-result-object p0

    #@35
    .line 481
    invoke-virtual {p0, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@38
    if-eqz p3, :cond_3d

    #@3a
    .line 482
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3d} :catch_4b
    .catchall {:try_start_28 .. :try_end_3d} :catchall_49

    #@3d
    :cond_3d
    if-eqz v2, :cond_47

    #@3f
    .line 490
    :try_start_3f
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    #@42
    goto :goto_47

    #@43
    :catch_43
    move-exception p0

    #@44
    .line 493
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@47
    :cond_47
    :goto_47
    const/4 p0, 0x1

    #@48
    return p0

    #@49
    :catchall_49
    move-exception p0

    #@4a
    goto :goto_5a

    #@4b
    :catch_4b
    move-exception p0

    #@4c
    .line 485
    :try_start_4c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    #@4f
    if-eqz v2, :cond_59

    #@51
    .line 490
    :try_start_51
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    #@54
    goto :goto_59

    #@55
    :catch_55
    move-exception p0

    #@56
    .line 493
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@59
    :cond_59
    :goto_59
    return v1

    #@5a
    :goto_5a
    if-eqz v2, :cond_64

    #@5c
    .line 490
    :try_start_5c
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    #@5f
    goto :goto_64

    #@60
    :catch_60
    move-exception p1

    #@61
    .line 493
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@64
    .line 495
    :cond_64
    :goto_64
    throw p0

    #@65
    .line 470
    :cond_65
    :goto_65
    new-instance p1, Ljava/lang/StringBuilder;

    #@67
    const-string p2, "create file <"

    #@69
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object p0

    #@70
    const-string p1, "> failed."

    #@72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object p0

    #@76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object p0

    #@7a
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    return v1
.end method

.method public static writeFileFromBytesByMap(Ljava/lang/String;[BZ)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 423
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z
    .registers 4

    #@0
    .line 439
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[B)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 240
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 302
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BZ)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 254
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 5

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    .line 319
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@6
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@9
    invoke-static {p0, v0, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@c
    move-result p0

    #@d
    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[B)Z
    .registers 4

    #@0
    .line 215
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@9
    move-result p0

    #@a
    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 4

    #@0
    .line 272
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BZ)Z
    .registers 4

    #@0
    .line 229
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 4

    #@0
    .line 288
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 81
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 143
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 95
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_8c

    #@3
    .line 159
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_b

    #@9
    goto/16 :goto_8c

    #@b
    :cond_b
    const/4 v1, 0x0

    #@c
    .line 165
    :try_start_c
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@e
    new-instance v3, Ljava/io/FileOutputStream;

    #@10
    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@13
    sget p0, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    #@15
    invoke-direct {v2, v3, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_62
    .catchall {:try_start_c .. :try_end_18} :catchall_60

    #@18
    const/4 p0, -0x1

    #@19
    if-nez p3, :cond_29

    #@1b
    .line 167
    :try_start_1b
    sget p2, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    #@1d
    new-array p2, p2, [B

    #@1f
    .line 168
    :goto_1f
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    #@22
    move-result p3

    #@23
    if-eq p3, p0, :cond_48

    #@25
    .line 169
    invoke-virtual {v2, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    #@28
    goto :goto_1f

    #@29
    .line 172
    :cond_29
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    #@2c
    move-result p2

    #@2d
    int-to-double v3, p2

    #@2e
    const-wide/16 v5, 0x0

    #@30
    .line 174
    invoke-interface {p3, v5, v6}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    #@33
    .line 175
    sget p2, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    #@35
    new-array p2, p2, [B

    #@37
    move v1, v0

    #@38
    .line 176
    :goto_38
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    #@3b
    move-result v5

    #@3c
    if-eq v5, p0, :cond_48

    #@3e
    .line 177
    invoke-virtual {v2, p2, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    #@41
    add-int/2addr v1, v5

    #@42
    int-to-double v5, v1

    #@43
    div-double/2addr v5, v3

    #@44
    .line 179
    invoke-interface {p3, v5, v6}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_47} :catch_5d
    .catchall {:try_start_1b .. :try_end_47} :catchall_5a

    #@47
    goto :goto_38

    #@48
    .line 188
    :cond_48
    :try_start_48
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    #@4b
    goto :goto_50

    #@4c
    :catch_4c
    move-exception p0

    #@4d
    .line 190
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@50
    .line 194
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    #@53
    goto :goto_58

    #@54
    :catch_54
    move-exception p0

    #@55
    .line 197
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@58
    :goto_58
    const/4 p0, 0x1

    #@59
    return p0

    #@5a
    :catchall_5a
    move-exception p0

    #@5b
    move-object v1, v2

    #@5c
    goto :goto_79

    #@5d
    :catch_5d
    move-exception p0

    #@5e
    move-object v1, v2

    #@5f
    goto :goto_63

    #@60
    :catchall_60
    move-exception p0

    #@61
    goto :goto_79

    #@62
    :catch_62
    move-exception p0

    #@63
    .line 184
    :goto_63
    :try_start_63
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    #@66
    .line 188
    :try_start_66
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    #@69
    goto :goto_6e

    #@6a
    :catch_6a
    move-exception p0

    #@6b
    .line 190
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@6e
    :goto_6e
    if-eqz v1, :cond_78

    #@70
    .line 194
    :try_start_70
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    #@73
    goto :goto_78

    #@74
    :catch_74
    move-exception p0

    #@75
    .line 197
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@78
    :cond_78
    :goto_78
    return v0

    #@79
    .line 188
    :goto_79
    :try_start_79
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    #@7c
    goto :goto_81

    #@7d
    :catch_7d
    move-exception p1

    #@7e
    .line 190
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@81
    :goto_81
    if-eqz v1, :cond_8b

    #@83
    .line 194
    :try_start_83
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    #@86
    goto :goto_8b

    #@87
    :catch_87
    move-exception p1

    #@88
    .line 197
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@8b
    .line 199
    :cond_8b
    :goto_8b
    throw p0

    #@8c
    .line 160
    :cond_8c
    :goto_8c
    new-instance p1, Ljava/lang/StringBuilder;

    #@8e
    const-string p2, "create file <"

    #@90
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object p0

    #@97
    const-string p1, "> failed."

    #@99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object p0

    #@9d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object p0

    #@a1
    const-string p1, "FileIOUtils"

    #@a3
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    return v0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 4

    #@0
    .line 56
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@9
    move-result p0

    #@a
    return p0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 4

    #@0
    .line 113
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .registers 4

    #@0
    .line 70
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 4

    #@0
    .line 129
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 531
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_61

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_61

    #@6
    .line 546
    :cond_6
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_27

    #@c
    .line 547
    new-instance p1, Ljava/lang/StringBuilder;

    #@e
    const-string p2, "create file <"

    #@10
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    const-string p1, "> failed."

    #@19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    const-string p1, "FileIOUtils"

    #@23
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    return v0

    #@27
    :cond_27
    const/4 v1, 0x0

    #@28
    .line 552
    :try_start_28
    new-instance v2, Ljava/io/BufferedWriter;

    #@2a
    new-instance v3, Ljava/io/FileWriter;

    #@2c
    invoke-direct {v3, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    #@2f
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_47
    .catchall {:try_start_28 .. :try_end_32} :catchall_45

    #@32
    .line 553
    :try_start_32
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_42
    .catchall {:try_start_32 .. :try_end_35} :catchall_3f

    #@35
    .line 561
    :try_start_35
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    #@38
    goto :goto_3d

    #@39
    :catch_39
    move-exception p0

    #@3a
    .line 564
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@3d
    :goto_3d
    const/4 p0, 0x1

    #@3e
    return p0

    #@3f
    :catchall_3f
    move-exception p0

    #@40
    move-object v1, v2

    #@41
    goto :goto_56

    #@42
    :catch_42
    move-exception p0

    #@43
    move-object v1, v2

    #@44
    goto :goto_48

    #@45
    :catchall_45
    move-exception p0

    #@46
    goto :goto_56

    #@47
    :catch_47
    move-exception p0

    #@48
    .line 556
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    #@4b
    if-eqz v1, :cond_55

    #@4d
    .line 561
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    #@50
    goto :goto_55

    #@51
    :catch_51
    move-exception p0

    #@52
    .line 564
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@55
    :cond_55
    :goto_55
    return v0

    #@56
    :goto_56
    if-eqz v1, :cond_60

    #@58
    .line 561
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    #@5b
    goto :goto_60

    #@5c
    :catch_5c
    move-exception p1

    #@5d
    .line 564
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@60
    .line 566
    :cond_60
    :goto_60
    throw p0

    #@61
    :cond_61
    :goto_61
    return v0
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 506
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    #@0
    .line 520
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    #@7
    move-result p0

    #@8
    return p0
.end method
