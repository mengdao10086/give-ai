.class public final Lcom/blankj/utilcode/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/LogUtils$LogFormatter;,
        Lcom/blankj/utilcode/util/LogUtils$TagHead;,
        Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;,
        Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;,
        Lcom/blankj/utilcode/util/LogUtils$IFileWriter;,
        Lcom/blankj/utilcode/util/LogUtils$IFormatter;,
        Lcom/blankj/utilcode/util/LogUtils$Config;,
        Lcom/blankj/utilcode/util/LogUtils$TYPE;
    }
.end annotation


# static fields
.field public static final A:I = 0x7

.field private static final ARGS:Ljava/lang/String; = "args"

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final BOTTOM_CORNER:Ljava/lang/String; = "\u2514"

.field private static final CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

.field public static final D:I = 0x3

.field public static final E:I = 0x6

.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final FILE:I = 0x10

.field private static final FILE_SEP:Ljava/lang/String;

.field public static final I:I = 0x4

.field private static final I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Class;",
            "Lcom/blankj/utilcode/util/LogUtils$IFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private static final JSON:I = 0x20

.field private static final LEFT_BORDER:Ljava/lang/String; = "\u2502 "

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final MAX_LEN:I = 0x44c

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final MIDDLE_CORNER:Ljava/lang/String; = "\u251c"

.field private static final MIDDLE_DIVIDER:Ljava/lang/String; = "\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final NOTHING:Ljava/lang/String; = "log nothing"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final PLACEHOLDER:Ljava/lang/String; = " "

.field private static final SIDE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final T:[C

.field private static final TOP_BORDER:Ljava/lang/String; = "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TOP_CORNER:Ljava/lang/String; = "\u250c"

.field public static final V:I = 0x2

.field public static final W:I = 0x5

.field private static final XML:I = 0x30

.field private static simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [C

    #@3
    .line 76
    fill-array-data v0, :array_2e

    #@6
    sput-object v0, Lcom/blankj/utilcode/util/LogUtils;->T:[C

    #@8
    const-string v0, "file.separator"

    #@a
    .line 82
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;

    #@10
    const-string v0, "line.separator"

    #@12
    .line 83
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@18
    .line 100
    new-instance v0, Lcom/blankj/utilcode/util/LogUtils$Config;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$Config;-><init>(Lcom/blankj/utilcode/util/LogUtils$1;)V

    #@1e
    sput-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@20
    .line 104
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Lcom/blankj/utilcode/util/LogUtils;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    #@26
    .line 106
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@28
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@2b
    sput-object v0, Lcom/blankj/utilcode/util/LogUtils;->I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;

    #@2d
    return-void

    #@2e
    :array_2e
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x41s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 157
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x7

    #@7
    invoke-static {v1, v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public static varargs aTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    const/4 v0, 0x7

    #@1
    .line 161
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    #@0
    .line 62
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$1100(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;
    .registers 1

    #@0
    .line 62
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->getTypeClassFromParadigm(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$1200()Landroidx/collection/SimpleArrayMap;
    .registers 1

    #@0
    .line 62
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic access$1300()[C
    .registers 1

    #@0
    .line 62
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->T:[C

    #@2
    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    #@0
    .line 62
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    #@0
    .line 62
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$300(ILjava/lang/String;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 62
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->print2File(ILjava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .registers 1

    #@0
    .line 62
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->isMatchLogFileName(Ljava/lang/String;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static createOrExistsFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    #@0
    .line 537
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 538
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_10

    #@b
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    #@e
    move-result p0

    #@f
    return p0

    #@10
    .line 539
    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsDir(Ljava/io/File;)Z

    #@17
    move-result v1

    #@18
    const/4 v2, 0x0

    #@19
    if-nez v1, :cond_1c

    #@1b
    return v2

    #@1c
    .line 541
    :cond_1c
    :try_start_1c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->deleteDueLogs(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 542
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_28

    #@25
    .line 544
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->printDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_29

    #@28
    :cond_28
    return v0

    #@29
    :catch_29
    move-exception p0

    #@2a
    .line 548
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@2d
    return v2
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 125
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-static {v1, v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public static varargs dTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    .line 129
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method private static deleteDueLogs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    #@0
    .line 554
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getSaveDays()I

    #@5
    move-result v1

    #@6
    if-gtz v1, :cond_9

    #@8
    return-void

    #@9
    .line 555
    :cond_9
    new-instance v1, Ljava/io/File;

    #@b
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@e
    .line 556
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@11
    move-result-object p0

    #@12
    .line 557
    new-instance v1, Lcom/blankj/utilcode/util/LogUtils$3;

    #@14
    invoke-direct {v1}, Lcom/blankj/utilcode/util/LogUtils$3;-><init>()V

    #@17
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@1a
    move-result-object p0

    #@1b
    if-eqz p0, :cond_6c

    #@1d
    .line 563
    array-length v1, p0

    #@1e
    if-gtz v1, :cond_21

    #@20
    goto :goto_6c

    #@21
    .line 564
    :cond_21
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@23
    const-string v2, "yyyy_MM_dd"

    #@25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@2c
    .line 566
    :try_start_2c
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@33
    move-result-wide v2

    #@34
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getSaveDays()I

    #@37
    move-result p1

    #@38
    int-to-long v4, p1

    #@39
    const-wide/32 v6, 0x5265c00

    #@3c
    mul-long/2addr v4, v6

    #@3d
    sub-long/2addr v2, v4

    #@3e
    .line 567
    array-length p1, p0

    #@3f
    const/4 v0, 0x0

    #@40
    :goto_40
    if-ge v0, p1, :cond_6c

    #@42
    aget-object v4, p0, v0

    #@44
    .line 568
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    .line 569
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@4b
    .line 570
    invoke-static {v5}, Lcom/blankj/utilcode/util/LogUtils;->findDate(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    .line 571
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    #@56
    move-result-wide v5

    #@57
    cmp-long v5, v5, v2

    #@59
    if-gtz v5, :cond_65

    #@5b
    .line 572
    sget-object v5, Lcom/blankj/utilcode/util/LogUtils;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    #@5d
    new-instance v6, Lcom/blankj/utilcode/util/LogUtils$4;

    #@5f
    invoke-direct {v6, v4}, Lcom/blankj/utilcode/util/LogUtils$4;-><init>(Ljava/io/File;)V

    #@62
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_65
    .catch Ljava/text/ParseException; {:try_start_2c .. :try_end_65} :catch_68

    #@65
    :cond_65
    add-int/lit8 v0, v0, 0x1

    #@67
    goto :goto_40

    #@68
    :catch_68
    move-exception p0

    #@69
    .line 584
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    #@6c
    :cond_6c
    :goto_6c
    return-void
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 149
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    invoke-static {v1, v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public static varargs eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    const/4 v0, 0x6

    #@1
    .line 153
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method public static file(ILjava/lang/Object;)V
    .registers 5

    #@0
    or-int/lit8 p0, p0, 0x10

    #@2
    .line 169
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@4
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    const/4 v2, 0x0

    #@c
    aput-object p1, v1, v2

    #@e
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public static file(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    #@0
    or-int/lit8 p0, p0, 0x10

    #@2
    const/4 v0, 0x1

    #@3
    new-array v0, v0, [Ljava/lang/Object;

    #@5
    const/4 v1, 0x0

    #@6
    aput-object p2, v0, v1

    #@8
    .line 177
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method public static file(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 165
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    const/4 v2, 0x0

    #@a
    aput-object p0, v1, v2

    #@c
    const/16 p0, 0x13

    #@e
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public static file(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    const/16 p1, 0x13

    #@8
    .line 173
    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method private static findDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "[0-9]{4}_[0-9]{2}_[0-9]{2}"

    #@2
    .line 593
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5
    move-result-object v0

    #@6
    .line 594
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9
    move-result-object p0

    #@a
    .line 595
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_15

    #@10
    .line 596
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    return-object p0

    #@15
    :cond_15
    const-string p0, ""

    #@17
    return-object p0
.end method

.method private static formatObject(ILjava/lang/Object;)Ljava/lang/String;
    .registers 3

    #@0
    if-nez p1, :cond_5

    #@2
    const-string p0, "null"

    #@4
    return-object p0

    #@5
    :cond_5
    const/16 v0, 0x20

    #@7
    if-ne p0, v0, :cond_e

    #@9
    .line 355
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->object2String(Ljava/lang/Object;I)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    return-object p0

    #@e
    :cond_e
    const/16 v0, 0x30

    #@10
    if-ne p0, v0, :cond_17

    #@12
    .line 356
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->object2String(Ljava/lang/Object;I)Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    return-object p0

    #@17
    .line 357
    :cond_17
    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    return-object p0
.end method

.method private static formatObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, "null"

    #@4
    return-object p0

    #@5
    .line 362
    :cond_5
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;

    #@7
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_1e

    #@d
    .line 363
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->getClassFromObject(Ljava/lang/Object;)Ljava/lang/Class;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/blankj/utilcode/util/LogUtils$IFormatter;

    #@17
    if-eqz v0, :cond_1e

    #@19
    .line 366
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/LogUtils$IFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    .line 369
    :cond_1e
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->object2String(Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    return-object p0
.end method

.method private static getClassFromObject(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 4

    #@0
    .line 1200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    .line 1201
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_10

    #@a
    invoke-virtual {p0}, Ljava/lang/Class;->isSynthetic()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_63

    #@10
    .line 1202
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    #@13
    move-result-object v0

    #@14
    .line 1204
    array-length v1, v0

    #@15
    const/4 v2, 0x1

    #@16
    if-ne v1, v2, :cond_2b

    #@18
    const/4 v1, 0x0

    #@19
    .line 1205
    aget-object v0, v0, v1

    #@1b
    .line 1206
    :goto_1b
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    #@1d
    if-eqz v1, :cond_26

    #@1f
    .line 1207
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    #@21
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@24
    move-result-object v0

    #@25
    goto :goto_1b

    #@26
    .line 1209
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    goto :goto_3e

    #@2b
    .line 1211
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    #@2e
    move-result-object v0

    #@2f
    .line 1212
    :goto_2f
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    #@31
    if-eqz v1, :cond_3a

    #@33
    .line 1213
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    #@35
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@38
    move-result-object v0

    #@39
    goto :goto_2f

    #@3a
    .line 1215
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    :goto_3e
    const-string v1, "class "

    #@40
    .line 1218
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_4c

    #@46
    const/4 v1, 0x6

    #@47
    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    goto :goto_5a

    #@4c
    :cond_4c
    const-string v1, "interface "

    #@4e
    .line 1220
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_5a

    #@54
    const/16 v1, 0xa

    #@56
    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    .line 1224
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5d
    move-result-object p0
    :try_end_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_5e} :catch_5f

    #@5e
    return-object p0

    #@5f
    :catch_5f
    move-exception v0

    #@60
    .line 1226
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    #@63
    :cond_63
    return-object p0
.end method

.method public static getConfig()Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 1

    #@0
    .line 113
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    return-object v0
.end method

.method public static getCurrentLogFilePath()Ljava/lang/String;
    .registers 1

    #@0
    .line 234
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->getCurrentLogFilePath(Ljava/util/Date;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getCurrentLogFilePath(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    #@0
    .line 521
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->getSdf()Ljava/text/SimpleDateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    const/4 v0, 0x0

    #@9
    const/16 v1, 0xa

    #@b
    .line 522
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    sget-object v1, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@16
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFilePrefix()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string v2, "_"

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p0

    #@30
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p0

    #@34
    .line 525
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->getProcessName()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object p0

    #@3c
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFileExtension()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p0

    #@44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object p0

    #@48
    return-object p0
.end method

.method private static getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3

    #@0
    .line 314
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 318
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    const-string v0, "\\."

    #@d
    .line 319
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 320
    array-length v1, v0

    #@12
    if-lez v1, :cond_19

    #@14
    .line 321
    array-length p0, v0

    #@15
    add-int/lit8 p0, p0, -0x1

    #@17
    aget-object p0, v0, p0

    #@19
    :cond_19
    const/16 v0, 0x24

    #@1b
    .line 323
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@1e
    move-result v0

    #@1f
    const/4 v1, -0x1

    #@20
    if-eq v0, v1, :cond_27

    #@22
    const/4 v1, 0x0

    #@23
    .line 325
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object p0

    #@27
    .line 327
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p0

    #@30
    const-string v0, ".java"

    #@32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object p0

    #@36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p0

    #@3a
    return-object p0
.end method

.method public static getLogFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .line 238
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 239
    new-instance v1, Ljava/io/File;

    #@8
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    .line 240
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_17

    #@11
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    return-object v0

    #@17
    .line 241
    :cond_17
    new-instance v0, Lcom/blankj/utilcode/util/LogUtils$2;

    #@19
    invoke-direct {v0}, Lcom/blankj/utilcode/util/LogUtils$2;-><init>()V

    #@1c
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@1f
    move-result-object v0

    #@20
    .line 247
    new-instance v1, Ljava/util/ArrayList;

    #@22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 248
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@28
    return-object v1
.end method

.method private static getSdf()Ljava/text/SimpleDateFormat;
    .registers 3

    #@0
    .line 530
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    #@2
    if-nez v0, :cond_11

    #@4
    .line 531
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@6
    const-string v1, "yyyy_MM_dd HH:mm:ss.SSS "

    #@8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@f
    sput-object v0, Lcom/blankj/utilcode/util/LogUtils;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    #@11
    .line 533
    :cond_11
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    #@13
    return-object v0
.end method

.method private static getTypeClassFromParadigm(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/LogUtils$IFormatter<",
            "TT;>;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    #@0
    .line 1174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    #@7
    move-result-object v0

    #@8
    .line 1176
    array-length v1, v0

    #@9
    const/4 v2, 0x1

    #@a
    const/4 v3, 0x0

    #@b
    if-ne v1, v2, :cond_10

    #@d
    .line 1177
    aget-object p0, v0, v3

    #@f
    goto :goto_18

    #@10
    .line 1179
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object p0

    #@14
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    #@17
    move-result-object p0

    #@18
    .line 1181
    :goto_18
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@1a
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@1d
    move-result-object p0

    #@1e
    aget-object p0, p0, v3

    #@20
    .line 1182
    :goto_20
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    #@22
    if-eqz v0, :cond_2b

    #@24
    .line 1183
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@26
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@29
    move-result-object p0

    #@2a
    goto :goto_20

    #@2b
    .line 1185
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2e
    move-result-object p0

    #@2f
    const-string v0, "class "

    #@31
    .line 1186
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_3d

    #@37
    const/4 v0, 0x6

    #@38
    .line 1187
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3b
    move-result-object p0

    #@3c
    goto :goto_4b

    #@3d
    :cond_3d
    const-string v0, "interface "

    #@3f
    .line 1188
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_4b

    #@45
    const/16 v0, 0xa

    #@47
    .line 1189
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4a
    move-result-object p0

    #@4b
    .line 1192
    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@4e
    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4b .. :try_end_4f} :catch_50

    #@4f
    return-object p0

    #@50
    :catch_50
    move-exception p0

    #@51
    .line 1194
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    #@54
    const/4 p0, 0x0

    #@55
    return-object p0
.end method

.method public static varargs i([Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 133
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-static {v1, v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public static varargs iTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    .line 137
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method private static input2File(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 607
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mFileWriter:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$800(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_d

    #@8
    const/4 v1, 0x1

    #@9
    .line 608
    invoke-static {p0, p1, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@c
    goto :goto_14

    #@d
    .line 610
    :cond_d
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mFileWriter:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$800(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, p0, p1}, Lcom/blankj/utilcode/util/LogUtils$IFileWriter;->write(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 612
    :goto_14
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$900(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_21

    #@1a
    .line 613
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$900(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {v0, p0, p1}, Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;->onFileOutput(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    :cond_21
    return-void
.end method

.method private static isMatchLogFileName(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "^"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    sget-object v1, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@9
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFilePrefix()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "_[0-9]{4}_[0-9]{2}_[0-9]{2}_.*$"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@1e
    move-result p0

    #@1f
    return p0
.end method

.method public static json(ILjava/lang/Object;)V
    .registers 5

    #@0
    or-int/lit8 p0, p0, 0x20

    #@2
    .line 185
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@4
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    const/4 v2, 0x0

    #@c
    aput-object p1, v1, v2

    #@e
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public static json(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    #@0
    or-int/lit8 p0, p0, 0x20

    #@2
    const/4 v0, 0x1

    #@3
    new-array v0, v0, [Ljava/lang/Object;

    #@5
    const/4 v1, 0x0

    #@6
    aput-object p2, v0, v1

    #@8
    .line 193
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method public static json(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 181
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    const/4 v2, 0x0

    #@a
    aput-object p0, v1, v2

    #@c
    const/16 p0, 0x23

    #@e
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public static json(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    const/16 p1, 0x23

    #@8
    .line 189
    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method public static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    #@0
    .line 213
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogSwitch()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    and-int/lit8 v1, p0, 0xf

    #@b
    and-int/lit16 p0, p0, 0xf0

    #@d
    .line 215
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2ConsoleSwitch()Z

    #@10
    move-result v2

    #@11
    const/16 v3, 0x10

    #@13
    if-nez v2, :cond_1d

    #@15
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2FileSwitch()Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1d

    #@1b
    if-ne p0, v3, :cond_5f

    #@1d
    .line 216
    :cond_1d
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$100(Lcom/blankj/utilcode/util/LogUtils$Config;)I

    #@20
    move-result v2

    #@21
    if-ge v1, v2, :cond_2a

    #@23
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$200(Lcom/blankj/utilcode/util/LogUtils$Config;)I

    #@26
    move-result v2

    #@27
    if-ge v1, v2, :cond_2a

    #@29
    return-void

    #@2a
    .line 217
    :cond_2a
    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->processTagAndHead(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$TagHead;

    #@2d
    move-result-object p1

    #@2e
    .line 218
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/LogUtils;->processBody(I[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object p2

    #@32
    .line 219
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2ConsoleSwitch()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_47

    #@38
    if-eq p0, v3, :cond_47

    #@3a
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$100(Lcom/blankj/utilcode/util/LogUtils$Config;)I

    #@3d
    move-result v2

    #@3e
    if-lt v1, v2, :cond_47

    #@40
    .line 220
    iget-object v2, p1, Lcom/blankj/utilcode/util/LogUtils$TagHead;->tag:Ljava/lang/String;

    #@42
    iget-object v4, p1, Lcom/blankj/utilcode/util/LogUtils$TagHead;->consoleHead:[Ljava/lang/String;

    #@44
    invoke-static {v1, v2, v4, p2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@47
    .line 222
    :cond_47
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2FileSwitch()Z

    #@4a
    move-result v2

    #@4b
    if-nez v2, :cond_4f

    #@4d
    if-ne p0, v3, :cond_5f

    #@4f
    :cond_4f
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$200(Lcom/blankj/utilcode/util/LogUtils$Config;)I

    #@52
    move-result p0

    #@53
    if-lt v1, p0, :cond_5f

    #@55
    .line 223
    sget-object p0, Lcom/blankj/utilcode/util/LogUtils;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    #@57
    new-instance v0, Lcom/blankj/utilcode/util/LogUtils$1;

    #@59
    invoke-direct {v0, v1, p1, p2}, Lcom/blankj/utilcode/util/LogUtils$1;-><init>(ILcom/blankj/utilcode/util/LogUtils$TagHead;Ljava/lang/String;)V

    #@5c
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@5f
    :cond_5f
    return-void
.end method

.method private static print2Console(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    .line 495
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    #@3
    .line 496
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@5
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$600(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_12

    #@b
    .line 497
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$600(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;->onConsoleOutput(ILjava/lang/String;Ljava/lang/String;)V

    #@12
    :cond_12
    return-void
.end method

.method private static print2Console(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    .line 376
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isSingleTagSwitch()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 377
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/LogUtils;->processSingleTagMsg(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p2

    #@c
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->printSingleTagMsg(ILjava/lang/String;Ljava/lang/String;)V

    #@f
    goto :goto_1e

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    .line 379
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->printBorder(ILjava/lang/String;Z)V

    #@14
    .line 380
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->printHead(ILjava/lang/String;[Ljava/lang/String;)V

    #@17
    .line 381
    invoke-static {p0, p1, p3}, Lcom/blankj/utilcode/util/LogUtils;->printMsg(ILjava/lang/String;Ljava/lang/String;)V

    #@1a
    const/4 p2, 0x0

    #@1b
    .line 382
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->printBorder(ILjava/lang/String;Z)V

    #@1e
    :goto_1e
    return-void
.end method

.method private static print2File(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    .line 502
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    .line 503
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->getSdf()Ljava/text/SimpleDateFormat;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    const/16 v3, 0xa

    #@10
    .line 504
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 505
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->getCurrentLogFilePath(Ljava/util/Date;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 506
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->createOrExistsFile(Ljava/lang/String;Ljava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_39

    #@1e
    .line 507
    new-instance p0, Ljava/lang/StringBuilder;

    #@20
    const-string p1, "create "

    #@22
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object p0

    #@29
    const-string p1, " failed!"

    #@2b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object p0

    #@2f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object p0

    #@33
    const-string p1, "LogUtils"

    #@35
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    return-void

    #@39
    :cond_39
    const/16 v2, 0xb

    #@3b
    .line 510
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    sget-object v2, Lcom/blankj/utilcode/util/LogUtils;->T:[C

    #@4a
    add-int/lit8 p0, p0, -0x2

    #@4c
    aget-char p0, v2, p0

    #@4e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    move-result-object p0

    #@52
    const-string v1, "/"

    #@54
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object p0

    #@58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p0

    #@5c
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object p0

    #@60
    sget-object p1, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object p0

    #@66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object p0

    #@6a
    .line 517
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->input2File(Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    return-void
.end method

.method private static printBorder(ILjava/lang/String;Z)V
    .registers 4

    #@0
    .line 387
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    if-eqz p2, :cond_d

    #@a
    const-string p2, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    #@c
    goto :goto_f

    #@d
    :cond_d
    const-string p2, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    #@f
    .line 388
    :goto_f
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@12
    :cond_12
    return-void
.end method

.method private static printDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    .line 602
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$700(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@5
    move-result-object v1

    #@6
    const-string v2, "Date of Log"

    #@8
    invoke-virtual {v1, v2, p1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->addFirst(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 603
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$700(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@e
    move-result-object p1

    #@f
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->toString()Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->input2File(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    return-void
.end method

.method private static printHead(ILjava/lang/String;[Ljava/lang/String;)V
    .registers 8

    #@0
    if-eqz p2, :cond_32

    #@2
    .line 394
    array-length v0, p2

    #@3
    const/4 v1, 0x0

    #@4
    :goto_4
    if-ge v1, v0, :cond_25

    #@6
    aget-object v2, p2, v1

    #@8
    .line 395
    sget-object v3, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@a
    invoke-virtual {v3}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1f

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    const-string v4, "\u2502 "

    #@14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    :cond_1f
    invoke-static {p0, p1, v2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_4

    #@25
    .line 397
    :cond_25
    sget-object p2, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@27
    invoke-virtual {p2}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    #@2a
    move-result p2

    #@2b
    if-eqz p2, :cond_32

    #@2d
    const-string p2, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    #@2f
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@32
    :cond_32
    return-void
.end method

.method private static printMsg(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    #@0
    .line 402
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 403
    div-int/lit16 v1, v0, 0x44c

    #@6
    if-lez v1, :cond_23

    #@8
    const/4 v2, 0x0

    #@9
    move v3, v2

    #@a
    :goto_a
    if-ge v2, v1, :cond_19

    #@c
    add-int/lit16 v4, v3, 0x44c

    #@e
    .line 407
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-static {p0, p1, v3}, Lcom/blankj/utilcode/util/LogUtils;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    move v3, v4

    #@18
    goto :goto_a

    #@19
    :cond_19
    if-eq v3, v0, :cond_26

    #@1b
    .line 411
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object p2

    #@1f
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    #@22
    goto :goto_26

    #@23
    .line 414
    :cond_23
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    #@26
    :cond_26
    :goto_26
    return-void
.end method

.method private static printSingleTagMsg(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    #@0
    .line 461
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 462
    sget-object v1, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@6
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    #@9
    move-result v2

    #@a
    const/16 v3, 0x44c

    #@c
    if-eqz v2, :cond_12

    #@e
    add-int/lit8 v2, v0, -0x71

    #@10
    div-int/2addr v2, v3

    #@11
    goto :goto_14

    #@12
    :cond_12
    div-int/lit16 v2, v0, 0x44c

    #@14
    :goto_14
    if-lez v2, :cond_eb

    #@16
    .line 464
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    #@19
    move-result v1

    #@1a
    const/4 v4, 0x0

    #@1b
    const-string v5, " "

    #@1d
    const/4 v6, 0x1

    #@1e
    if-eqz v1, :cond_a5

    #@20
    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    sget-object v4, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@2f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string v4, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    #@35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {p0, p1, v1}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@40
    :goto_40
    const-string v1, "\u2502 "

    #@42
    const-string v7, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    #@44
    if-ge v6, v2, :cond_7a

    #@46
    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4b
    sget-object v9, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@4d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    add-int/lit16 v7, v3, 0x44c

    #@5f
    .line 469
    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    .line 468
    invoke-static {p0, p1, v1}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@76
    add-int/lit8 v6, v6, 0x1

    #@78
    move v3, v7

    #@79
    goto :goto_40

    #@7a
    :cond_7a
    add-int/lit8 v2, v0, -0x71

    #@7c
    if-eq v3, v2, :cond_ee

    #@7e
    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@83
    sget-object v4, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    .line 475
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@98
    move-result-object p2

    #@99
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object p2

    #@9d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object p2

    #@a1
    .line 474
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@a4
    goto :goto_ee

    #@a5
    .line 478
    :cond_a5
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-static {p0, p1, v1}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@ac
    :goto_ac
    if-ge v6, v2, :cond_ce

    #@ae
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b3
    sget-object v4, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@b5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    add-int/lit16 v4, v3, 0x44c

    #@bb
    .line 482
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v1

    #@c7
    .line 481
    invoke-static {p0, p1, v1}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@ca
    add-int/lit8 v6, v6, 0x1

    #@cc
    move v3, v4

    #@cd
    goto :goto_ac

    #@ce
    :cond_ce
    if-eq v3, v0, :cond_ee

    #@d0
    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d5
    sget-object v2, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v1

    #@db
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@de
    move-result-object p2

    #@df
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object p2

    #@e3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object p2

    #@e7
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@ea
    goto :goto_ee

    #@eb
    .line 490
    :cond_eb
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@ee
    :cond_ee
    :goto_ee
    return-void
.end method

.method private static printSubMsg(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    #@0
    .line 419
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_c

    #@8
    .line 420
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@b
    return-void

    #@c
    .line 424
    :cond_c
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@e
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object p2

    #@12
    .line 425
    array-length v0, p2

    #@13
    const/4 v1, 0x0

    #@14
    :goto_14
    if-ge v1, v0, :cond_2d

    #@16
    aget-object v2, p2, v1

    #@18
    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    const-string v4, "\u2502 "

    #@1c
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {p0, p1, v2}, Lcom/blankj/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_14

    #@2d
    :cond_2d
    return-void
.end method

.method private static varargs processBody(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    #@0
    if-eqz p1, :cond_3d

    #@2
    .line 333
    array-length v0, p1

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    if-ne v0, v2, :cond_e

    #@7
    .line 334
    aget-object p1, p1, v1

    #@9
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->formatObject(ILjava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    goto :goto_3f

    #@e
    .line 336
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    .line 337
    array-length v0, p1

    #@14
    :goto_14
    if-ge v1, v0, :cond_38

    #@16
    .line 338
    aget-object v2, p1, v1

    #@18
    const-string v3, "args["

    #@1a
    .line 339
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 341
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string v4, "] = "

    #@24
    .line 342
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 344
    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    sget-object v3, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@32
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_14

    #@38
    .line 347
    :cond_38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object p0

    #@3c
    goto :goto_3f

    #@3d
    :cond_3d
    const-string p0, "null"

    #@3f
    .line 350
    :goto_3f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@42
    move-result p1

    #@43
    if-nez p1, :cond_47

    #@45
    const-string p0, "log nothing"

    #@47
    :cond_47
    return-object p0
.end method

.method private static processSingleTagMsg(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    #@0
    .line 434
    new-instance p0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 435
    sget-object p1, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@7
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    #@a
    move-result p1

    #@b
    const-string v0, " "

    #@d
    const/4 v1, 0x0

    #@e
    if-eqz p1, :cond_68

    #@10
    .line 436
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p1

    #@14
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    const-string p1, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    #@1b
    .line 437
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    const-string p1, "\u2502 "

    #@24
    if-eqz p2, :cond_47

    #@26
    .line 439
    array-length v0, p2

    #@27
    move v2, v1

    #@28
    :goto_28
    if-ge v2, v0, :cond_3c

    #@2a
    aget-object v3, p2, v2

    #@2c
    .line 440
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    sget-object v4, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_28

    #@3c
    :cond_3c
    const-string p2, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    #@3e
    .line 442
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object p2

    #@42
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 444
    :cond_47
    sget-object p2, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@49
    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@4c
    move-result-object p2

    #@4d
    array-length p3, p2

    #@4e
    :goto_4e
    if-ge v1, p3, :cond_62

    #@50
    aget-object v0, p2, v1

    #@52
    .line 445
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    sget-object v2, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_4e

    #@62
    :cond_62
    const-string p1, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    #@64
    .line 447
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    goto :goto_87

    #@68
    :cond_68
    if-eqz p2, :cond_84

    #@6a
    .line 450
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object p1

    #@6e
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 451
    array-length p1, p2

    #@74
    :goto_74
    if-ge v1, p1, :cond_84

    #@76
    aget-object v0, p2, v1

    #@78
    .line 452
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    sget-object v2, Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    #@7e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    add-int/lit8 v1, v1, 0x1

    #@83
    goto :goto_74

    #@84
    .line 455
    :cond_84
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 457
    :goto_87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object p0

    #@8b
    return-object p0
.end method

.method private static processTagAndHead(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$TagHead;
    .registers 18

    #@0
    .line 253
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$500(Lcom/blankj/utilcode/util/LogUtils$Config;)Z

    #@5
    move-result v1

    #@6
    const-string v2, ": "

    #@8
    const/4 v3, 0x0

    #@9
    if-nez v1, :cond_17

    #@b
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogHeadSwitch()Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_17

    #@11
    .line 254
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto/16 :goto_158

    #@17
    .line 256
    :cond_17
    new-instance v1, Ljava/lang/Throwable;

    #@19
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@1c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1f
    move-result-object v1

    #@20
    .line 257
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackOffset()I

    #@23
    move-result v4

    #@24
    const/4 v5, 0x3

    #@25
    add-int/2addr v4, v5

    #@26
    .line 258
    array-length v6, v1

    #@27
    const/4 v7, -0x1

    #@28
    const/16 v8, 0x2e

    #@2a
    const/4 v9, 0x0

    #@2b
    if-lt v4, v6, :cond_54

    #@2d
    .line 259
    aget-object v1, v1, v5

    #@2f
    .line 260
    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 261
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$500(Lcom/blankj/utilcode/util/LogUtils$Config;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_4c

    #@39
    invoke-static/range {p0 .. p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_4c

    #@3f
    .line 262
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    #@42
    move-result v0

    #@43
    if-ne v0, v7, :cond_47

    #@45
    move-object v0, v1

    #@46
    goto :goto_4e

    #@47
    .line 263
    :cond_47
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    goto :goto_4e

    #@4c
    :cond_4c
    move-object/from16 v0, p0

    #@4e
    .line 265
    :goto_4e
    new-instance v1, Lcom/blankj/utilcode/util/LogUtils$TagHead;

    #@50
    invoke-direct {v1, v0, v3, v2}, Lcom/blankj/utilcode/util/LogUtils$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@53
    return-object v1

    #@54
    .line 267
    :cond_54
    aget-object v6, v1, v4

    #@56
    .line 268
    invoke-static {v6}, Lcom/blankj/utilcode/util/LogUtils;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    #@59
    move-result-object v10

    #@5a
    .line 269
    # getter for: Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->access$500(Lcom/blankj/utilcode/util/LogUtils$Config;)Z

    #@5d
    move-result v11

    #@5e
    if-eqz v11, :cond_73

    #@60
    invoke-static/range {p0 .. p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@63
    move-result v11

    #@64
    if-eqz v11, :cond_73

    #@66
    .line 270
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(I)I

    #@69
    move-result v8

    #@6a
    if-ne v8, v7, :cond_6e

    #@6c
    move-object v7, v10

    #@6d
    goto :goto_75

    #@6e
    .line 271
    :cond_6e
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    goto :goto_75

    #@73
    :cond_73
    move-object/from16 v7, p0

    #@75
    .line 273
    :goto_75
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogHeadSwitch()Z

    #@78
    move-result v8

    #@79
    if-eqz v8, :cond_157

    #@7b
    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 275
    new-instance v3, Ljava/util/Formatter;

    #@85
    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    #@88
    const/4 v8, 0x5

    #@89
    new-array v11, v8, [Ljava/lang/Object;

    #@8b
    aput-object v2, v11, v9

    #@8d
    .line 278
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@90
    move-result-object v12

    #@91
    const/4 v13, 0x1

    #@92
    aput-object v12, v11, v13

    #@94
    .line 279
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@97
    move-result-object v12

    #@98
    const/4 v14, 0x2

    #@99
    aput-object v12, v11, v14

    #@9b
    aput-object v10, v11, v5

    #@9d
    .line 281
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@a0
    move-result v6

    #@a1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a4
    move-result-object v6

    #@a5
    const/4 v10, 0x4

    #@a6
    aput-object v6, v11, v10

    #@a8
    const-string v6, "%s, %s.%s(%s:%d)"

    #@aa
    .line 276
    invoke-virtual {v3, v6, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@ad
    move-result-object v3

    #@ae
    .line 282
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    #@b4
    const-string v11, " ["

    #@b6
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v6

    #@bd
    const-string v11, "]: "

    #@bf
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v6

    #@c3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v6

    #@c7
    .line 284
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackDeep()I

    #@ca
    move-result v11

    #@cb
    if-gt v11, v13, :cond_d7

    #@cd
    .line 285
    new-instance v0, Lcom/blankj/utilcode/util/LogUtils$TagHead;

    #@cf
    new-array v1, v13, [Ljava/lang/String;

    #@d1
    aput-object v3, v1, v9

    #@d3
    invoke-direct {v0, v7, v1, v6}, Lcom/blankj/utilcode/util/LogUtils$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@d6
    return-object v0

    #@d7
    .line 289
    :cond_d7
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackDeep()I

    #@da
    move-result v0

    #@db
    array-length v11, v1

    #@dc
    sub-int/2addr v11, v4

    #@dd
    .line 288
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    #@e0
    move-result v0

    #@e1
    new-array v11, v0, [Ljava/lang/String;

    #@e3
    .line 292
    aput-object v3, v11, v9

    #@e5
    .line 293
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@e8
    move-result v2

    #@e9
    add-int/2addr v2, v14

    #@ea
    .line 294
    new-instance v3, Ljava/util/Formatter;

    #@ec
    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    #@ef
    new-instance v12, Ljava/lang/StringBuilder;

    #@f1
    const-string v15, "%"

    #@f3
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f6
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v2

    #@fa
    const-string v12, "s"

    #@fc
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v2

    #@104
    new-array v12, v13, [Ljava/lang/Object;

    #@106
    const-string v15, ""

    #@108
    aput-object v15, v12, v9

    #@10a
    invoke-virtual {v3, v2, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@10d
    move-result-object v2

    #@10e
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@111
    move-result-object v2

    #@112
    move v3, v13

    #@113
    :goto_113
    if-ge v3, v0, :cond_151

    #@115
    add-int v12, v3, v4

    #@117
    .line 296
    aget-object v12, v1, v12

    #@119
    .line 297
    new-instance v15, Ljava/util/Formatter;

    #@11b
    invoke-direct {v15}, Ljava/util/Formatter;-><init>()V

    #@11e
    new-array v10, v8, [Ljava/lang/Object;

    #@120
    aput-object v2, v10, v9

    #@122
    .line 300
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@125
    move-result-object v16

    #@126
    aput-object v16, v10, v13

    #@128
    .line 301
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@12b
    move-result-object v16

    #@12c
    aput-object v16, v10, v14

    #@12e
    .line 302
    invoke-static {v12}, Lcom/blankj/utilcode/util/LogUtils;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    #@131
    move-result-object v16

    #@132
    aput-object v16, v10, v5

    #@134
    .line 303
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@137
    move-result v12

    #@138
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13b
    move-result-object v12

    #@13c
    const/16 v16, 0x4

    #@13e
    aput-object v12, v10, v16

    #@140
    const-string v12, "%s%s.%s(%s:%d)"

    #@142
    .line 298
    invoke-virtual {v15, v12, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@145
    move-result-object v10

    #@146
    .line 304
    invoke-virtual {v10}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@149
    move-result-object v10

    #@14a
    aput-object v10, v11, v3

    #@14c
    add-int/lit8 v3, v3, 0x1

    #@14e
    move/from16 v10, v16

    #@150
    goto :goto_113

    #@151
    .line 306
    :cond_151
    new-instance v0, Lcom/blankj/utilcode/util/LogUtils$TagHead;

    #@153
    invoke-direct {v0, v7, v11, v6}, Lcom/blankj/utilcode/util/LogUtils$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@156
    return-object v0

    #@157
    :cond_157
    move-object v0, v7

    #@158
    .line 310
    :goto_158
    new-instance v1, Lcom/blankj/utilcode/util/LogUtils$TagHead;

    #@15a
    invoke-direct {v1, v0, v3, v2}, Lcom/blankj/utilcode/util/LogUtils$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@15d
    return-object v1
.end method

.method public static varargs v([Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 117
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-static {v1, v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public static varargs vTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    .line 121
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method public static varargs w([Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 141
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    invoke-static {v1, v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public static varargs wTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    const/4 v0, 0x5

    #@1
    .line 145
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method public static xml(ILjava/lang/String;)V
    .registers 5

    #@0
    or-int/lit8 p0, p0, 0x30

    #@2
    .line 201
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@4
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    const/4 v2, 0x0

    #@c
    aput-object p1, v1, v2

    #@e
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public static xml(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    or-int/lit8 p0, p0, 0x30

    #@2
    const/4 v0, 0x1

    #@3
    new-array v0, v0, [Ljava/lang/Object;

    #@5
    const/4 v1, 0x0

    #@6
    aput-object p2, v0, v1

    #@8
    .line 209
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method public static xml(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 197
    sget-object v0, Lcom/blankj/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/utilcode/util/LogUtils$Config;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    const/4 v2, 0x0

    #@a
    aput-object p0, v1, v2

    #@c
    const/16 p0, 0x33

    #@e
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public static xml(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    const/16 p1, 0x33

    #@8
    .line 205
    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    #@b
    return-void
.end method
