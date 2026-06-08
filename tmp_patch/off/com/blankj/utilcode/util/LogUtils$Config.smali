.class public final Lcom/blankj/utilcode/util/LogUtils$Config;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private mConsoleFilter:I

.field private mDefaultDir:Ljava/lang/String;

.field private mDir:Ljava/lang/String;

.field private mFileExtension:Ljava/lang/String;

.field private mFileFilter:I

.field private mFileHead:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

.field private mFilePrefix:Ljava/lang/String;

.field private mFileWriter:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

.field private mGlobalTag:Ljava/lang/String;

.field private mLog2ConsoleSwitch:Z

.field private mLog2FileSwitch:Z

.field private mLogBorderSwitch:Z

.field private mLogHeadSwitch:Z

.field private mLogSwitch:Z

.field private mOnConsoleOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

.field private mOnFileOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

.field private mProcessName:Ljava/lang/String;

.field private mSaveDays:I

.field private mSingleTagSwitch:Z

.field private mStackDeep:I

.field private mStackOffset:I

.field private mTagIsSpace:Z


# direct methods
.method private constructor <init>()V
    .registers 5

    #@0
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "util"

    #@5
    .line 620
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    #@7
    const-string v0, ".txt"

    #@9
    .line 621
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    #@b
    const/4 v0, 0x1

    #@c
    .line 622
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    #@e
    .line 623
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    #@10
    const-string v1, ""

    #@12
    .line 624
    iput-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    #@14
    .line 625
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    #@16
    .line 626
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    #@18
    const/4 v1, 0x0

    #@19
    .line 627
    iput-boolean v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    #@1b
    .line 628
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    #@1d
    .line 629
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    #@1f
    const/4 v2, 0x2

    #@20
    .line 630
    iput v2, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    #@22
    .line 631
    iput v2, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I

    #@24
    .line 632
    iput v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackDeep:I

    #@26
    .line 633
    iput v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackOffset:I

    #@28
    const/4 v0, -0x1

    #@29
    .line 634
    iput v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSaveDays:I

    #@2b
    .line 635
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getCurrentProcessName()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mProcessName:Ljava/lang/String;

    #@31
    .line 639
    new-instance v0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@33
    const-string v1, "Log"

    #@35
    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;-><init>(Ljava/lang/String;)V

    #@38
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@3a
    .line 642
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    #@3d
    move-result v0

    #@3e
    const-string v1, "log"

    #@40
    if-eqz v0, :cond_79

    #@42
    .line 643
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@45
    move-result-object v0

    #@46
    const/4 v2, 0x0

    #@47
    invoke-virtual {v0, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@4a
    move-result-object v0

    #@4b
    if-eqz v0, :cond_79

    #@4d
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    #@78
    goto :goto_a4

    #@79
    .line 646
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    #@a4
    :goto_a4
    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/LogUtils$1;)V
    .registers 2

    #@0
    .line 617
    invoke-direct {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/LogUtils$Config;)I
    .registers 1

    #@0
    .line 617
    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    #@2
    return p0
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/LogUtils$Config;)I
    .registers 1

    #@0
    .line 617
    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I

    #@2
    return p0
.end method

.method static synthetic access$500(Lcom/blankj/utilcode/util/LogUtils$Config;)Z
    .registers 1

    #@0
    .line 617
    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    #@2
    return p0
.end method

.method static synthetic access$600(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;
    .registers 1

    #@0
    .line 617
    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    #@2
    return-object p0
.end method

.method static synthetic access$700(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/UtilsBridge$FileHead;
    .registers 1

    #@0
    .line 617
    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@2
    return-object p0
.end method

.method static synthetic access$800(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$IFileWriter;
    .registers 1

    #@0
    .line 617
    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileWriter:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

    #@2
    return-object p0
.end method

.method static synthetic access$900(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;
    .registers 1

    #@0
    .line 617
    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    #@2
    return-object p0
.end method


# virtual methods
.method public final addFileExtraHead(Ljava/lang/String;Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 4

    #@0
    .line 780
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->append(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public final addFileExtraHead(Ljava/util/Map;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/utilcode/util/LogUtils$Config;"
        }
    .end annotation

    #@0
    .line 775
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->append(Ljava/util/Map;)V

    #@5
    return-object p0
.end method

.method public final addFormatter(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/LogUtils$IFormatter<",
            "TT;>;)",
            "Lcom/blankj/utilcode/util/LogUtils$Config;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_d

    #@2
    .line 754
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1200()Landroidx/collection/SimpleArrayMap;

    #@5
    move-result-object v0

    #@6
    # invokes: Lcom/blankj/utilcode/util/LogUtils;->getTypeClassFromParadigm(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;
    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->access$1100(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    :cond_d
    return-object p0
.end method

.method public final getConsoleFilter()C
    .registers 3

    #@0
    .line 835
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->T:[C
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1300()[C

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    #@6
    add-int/lit8 v1, v1, -0x2

    #@8
    aget-char v0, v0, v1

    #@a
    return v0
.end method

.method public final getDefaultDir()Ljava/lang/String;
    .registers 2

    #@0
    .line 790
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getDir()Ljava/lang/String;
    .registers 2

    #@0
    .line 794
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    #@2
    if-nez v0, :cond_6

    #@4
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    #@6
    :cond_6
    return-object v0
.end method

.method public final getFileExtension()Ljava/lang/String;
    .registers 2

    #@0
    .line 802
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getFileFilter()C
    .registers 3

    #@0
    .line 839
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->T:[C
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1300()[C

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I

    #@6
    add-int/lit8 v1, v1, -0x2

    #@8
    aget-char v0, v0, v1

    #@a
    return v0
.end method

.method public final getFilePrefix()Ljava/lang/String;
    .registers 2

    #@0
    .line 798
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getGlobalTag()Ljava/lang/String;
    .registers 2

    #@0
    .line 814
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    const-string v0, ""

    #@a
    return-object v0

    #@b
    .line 815
    :cond_b
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    #@d
    return-object v0
.end method

.method public final getProcessName()Ljava/lang/String;
    .registers 4

    #@0
    .line 785
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mProcessName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_7

    #@4
    const-string v0, ""

    #@6
    return-object v0

    #@7
    :cond_7
    const-string v1, ":"

    #@9
    const-string v2, "_"

    #@b
    .line 786
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final getSaveDays()I
    .registers 2

    #@0
    .line 851
    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSaveDays:I

    #@2
    return v0
.end method

.method public final getStackDeep()I
    .registers 2

    #@0
    .line 843
    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackDeep:I

    #@2
    return v0
.end method

.method public final getStackOffset()I
    .registers 2

    #@0
    .line 847
    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackOffset:I

    #@2
    return v0
.end method

.method public final haveSetOnConsoleOutputListener()Z
    .registers 2

    #@0
    .line 855
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public final haveSetOnFileOutputListener()Z
    .registers 2

    #@0
    .line 859
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public final isLog2ConsoleSwitch()Z
    .registers 2

    #@0
    .line 810
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    #@2
    return v0
.end method

.method public final isLog2FileSwitch()Z
    .registers 2

    #@0
    .line 823
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    #@2
    return v0
.end method

.method public final isLogBorderSwitch()Z
    .registers 2

    #@0
    .line 827
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    #@2
    return v0
.end method

.method public final isLogHeadSwitch()Z
    .registers 2

    #@0
    .line 819
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    #@2
    return v0
.end method

.method public final isLogSwitch()Z
    .registers 2

    #@0
    .line 806
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    #@2
    return v0
.end method

.method public final isSingleTagSwitch()Z
    .registers 2

    #@0
    .line 831
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    #@2
    return v0
.end method

.method public final setBorderSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 718
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    #@2
    return-object p0
.end method

.method public final setConsoleFilter(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 728
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    #@2
    return-object p0
.end method

.method public final setConsoleSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 656
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    #@2
    return-object p0
.end method

.method public final setDir(Ljava/io/File;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    goto :goto_1d

    #@4
    .line 691
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p1

    #@11
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    :goto_1d
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    #@1f
    return-object p0
.end method

.method public final setDir(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 3

    #@0
    .line 682
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    const/4 p1, 0x0

    #@7
    .line 683
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    #@9
    goto :goto_2c

    #@a
    .line 685
    :cond_a
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_2a

    #@15
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    :goto_2a
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    #@2c
    :goto_2c
    return-object p0
.end method

.method public final setFileExtension(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 4

    #@0
    .line 705
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string p1, ".txt"

    #@8
    .line 706
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    #@a
    goto :goto_25

    #@b
    :cond_b
    const-string v0, "."

    #@d
    .line 708
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_16

    #@13
    .line 709
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    #@15
    goto :goto_25

    #@16
    .line 711
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    #@25
    :goto_25
    return-object p0
.end method

.method public final setFileFilter(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 733
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I

    #@2
    return-object p0
.end method

.method public final setFilePrefix(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 3

    #@0
    .line 696
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string p1, "util"

    #@8
    .line 697
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    #@a
    goto :goto_d

    #@b
    .line 699
    :cond_b
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    #@d
    :goto_d
    return-object p0
.end method

.method public final setFileWriter(Lcom/blankj/utilcode/util/LogUtils$IFileWriter;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 760
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileWriter:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

    #@2
    return-object p0
.end method

.method public final setGlobalTag(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 3

    #@0
    .line 661
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    const-string p1, ""

    #@8
    .line 662
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    #@a
    const/4 p1, 0x1

    #@b
    .line 663
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    #@d
    goto :goto_13

    #@e
    .line 665
    :cond_e
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    #@10
    const/4 p1, 0x0

    #@11
    .line 666
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    #@13
    :goto_13
    return-object p0
.end method

.method public final setLog2FileSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 677
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    #@2
    return-object p0
.end method

.method public final setLogHeadSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 672
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    #@2
    return-object p0
.end method

.method public final setLogSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 651
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    #@2
    return-object p0
.end method

.method public final setOnConsoleOutputListener(Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 765
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    #@2
    return-object p0
.end method

.method public final setOnFileOutputListener(Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 770
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    #@2
    return-object p0
.end method

.method public final setSaveDays(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 748
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSaveDays:I

    #@2
    return-object p0
.end method

.method public final setSingleTagSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 723
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    #@2
    return-object p0
.end method

.method public final setStackDeep(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 738
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackDeep:I

    #@2
    return-object p0
.end method

.method public final setStackOffset(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .registers 2

    #@0
    .line 743
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackOffset:I

    #@2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "process: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getProcessName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 865
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, "logSwitch: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogSwitch()Z

    #@20
    move-result v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 866
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string v1, "consoleSwitch: "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2ConsoleSwitch()Z

    #@36
    move-result v1

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 867
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    const-string v1, "tag: "

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    const-string v2, ""

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_58

    #@55
    const-string v1, "null"

    #@57
    goto :goto_5c

    #@58
    :cond_58
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 868
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    const-string v1, "headSwitch: "

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogHeadSwitch()Z

    #@71
    move-result v1

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    .line 869
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    const-string v1, "fileSwitch: "

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2FileSwitch()Z

    #@87
    move-result v1

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 870
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    const-string v1, "dir: "

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    .line 871
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    const-string v1, "filePrefix: "

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFilePrefix()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    .line 872
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    const-string v1, "borderSwitch: "

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    #@c9
    move-result v1

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    .line 873
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@d1
    move-result-object v1

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    const-string v1, "singleTagSwitch: "

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v0

    #@dc
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isSingleTagSwitch()Z

    #@df
    move-result v1

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v0

    #@e4
    .line 874
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@e7
    move-result-object v1

    #@e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    const-string v1, "consoleFilter: "

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v0

    #@f2
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getConsoleFilter()C

    #@f5
    move-result v1

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v0

    #@fa
    .line 875
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v0

    #@102
    const-string v1, "fileFilter: "

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFileFilter()C

    #@10b
    move-result v1

    #@10c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v0

    #@110
    .line 876
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v0

    #@118
    const-string v1, "stackDeep: "

    #@11a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v0

    #@11e
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackDeep()I

    #@121
    move-result v1

    #@122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    move-result-object v0

    #@126
    .line 877
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@129
    move-result-object v1

    #@12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v0

    #@12e
    const-string v1, "stackOffset: "

    #@130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v0

    #@134
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackOffset()I

    #@137
    move-result v1

    #@138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v0

    #@13c
    .line 878
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v0

    #@144
    const-string v1, "saveDays: "

    #@146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v0

    #@14a
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getSaveDays()I

    #@14d
    move-result v1

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v0

    #@152
    .line 879
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@155
    move-result-object v1

    #@156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v0

    #@15a
    const-string v1, "formatter: "

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v0

    #@160
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1200()Landroidx/collection/SimpleArrayMap;

    #@163
    move-result-object v1

    #@164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v0

    #@168
    .line 880
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@16b
    move-result-object v1

    #@16c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v0

    #@170
    const-string v1, "fileWriter: "

    #@172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v0

    #@176
    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileWriter:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

    #@178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v0

    #@17c
    .line 881
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@17f
    move-result-object v1

    #@180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v0

    #@184
    const-string v1, "onConsoleOutputListener: "

    #@186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v0

    #@18a
    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v0

    #@190
    .line 882
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@193
    move-result-object v1

    #@194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v0

    #@198
    const-string v1, "onFileOutputListener: "

    #@19a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v0

    #@19e
    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    #@1a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v0

    #@1a4
    .line 883
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@1a7
    move-result-object v1

    #@1a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v0

    #@1ac
    const-string v1, "fileExtraHeader: "

    #@1ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v0

    #@1b2
    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@1b4
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->getAppended()Ljava/lang/String;

    #@1b7
    move-result-object v1

    #@1b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v0

    #@1bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bf
    move-result-object v0

    #@1c0
    return-object v0
.end method
