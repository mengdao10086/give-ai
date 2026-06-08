.class final Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadPoolExecutor4Util"
.end annotation


# instance fields
.field private final mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;


# direct methods
.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V
    .registers 8

    #@0
    .line 1043
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@3
    .line 1035
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 1048
    # setter for: Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;
    invoke-static {p6, p0}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->access$302(Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;)Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@d
    .line 1049
    iput-object p6, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    #@f
    return-void
.end method

.method static synthetic access$100(II)Ljava/util/concurrent/ExecutorService;
    .registers 2

    #@0
    .line 998
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->createPool(II)Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static createPool(II)Ljava/util/concurrent/ExecutorService;
    .registers 26

    #@0
    move/from16 v2, p0

    #@2
    move/from16 v0, p1

    #@4
    const/4 v1, -0x8

    #@5
    const/4 v3, 0x1

    #@6
    if-eq v2, v1, :cond_a1

    #@8
    const/4 v1, -0x4

    #@9
    if-eq v2, v1, :cond_7a

    #@b
    const/4 v1, -0x2

    #@c
    if-eq v2, v1, :cond_5a

    #@e
    const/4 v1, -0x1

    #@f
    if-eq v2, v1, :cond_3f

    #@11
    .line 1027
    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@13
    const-wide/16 v3, 0x0

    #@15
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@17
    new-instance v6, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    #@19
    invoke-direct {v6}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    #@1c
    new-instance v7, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    const-string v9, "fixed("

    #@22
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v9, ")"

    #@2b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v7, v1, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    #@36
    move-object v0, v8

    #@37
    move/from16 v1, p0

    #@39
    move/from16 v2, p0

    #@3b
    invoke-direct/range {v0 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    #@3e
    return-object v8

    #@3f
    .line 1003
    :cond_3f
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@41
    const/4 v10, 0x1

    #@42
    const/4 v11, 0x1

    #@43
    const-wide/16 v12, 0x0

    #@45
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@47
    new-instance v15, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    #@49
    invoke-direct {v15}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    #@4c
    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    #@4e
    const-string v3, "single"

    #@50
    invoke-direct {v2, v3, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    #@53
    move-object v9, v1

    #@54
    move-object/from16 v16, v2

    #@56
    invoke-direct/range {v9 .. v16}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    #@59
    return-object v1

    #@5a
    .line 1009
    :cond_5a
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@5c
    const/16 v17, 0x0

    #@5e
    const/16 v18, 0x80

    #@60
    const-wide/16 v19, 0x3c

    #@62
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@64
    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    #@66
    invoke-direct {v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>(Z)V

    #@69
    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    #@6b
    const-string v4, "cached"

    #@6d
    invoke-direct {v3, v4, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    #@70
    move-object/from16 v16, v1

    #@72
    move-object/from16 v22, v2

    #@74
    move-object/from16 v23, v3

    #@76
    invoke-direct/range {v16 .. v23}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    #@79
    return-object v1

    #@7a
    .line 1015
    :cond_7a
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@7c
    # getter for: Lcom/blankj/utilcode/util/ThreadUtils;->CPU_COUNT:I
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$200()I

    #@7f
    move-result v2

    #@80
    mul-int/lit8 v2, v2, 0x2

    #@82
    add-int/lit8 v6, v2, 0x1

    #@84
    # getter for: Lcom/blankj/utilcode/util/ThreadUtils;->CPU_COUNT:I
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$200()I

    #@87
    move-result v2

    #@88
    mul-int/lit8 v2, v2, 0x2

    #@8a
    add-int/lit8 v7, v2, 0x1

    #@8c
    const-wide/16 v8, 0x1e

    #@8e
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@90
    new-instance v11, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    #@92
    invoke-direct {v11}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    #@95
    new-instance v12, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    #@97
    const-string v2, "io"

    #@99
    invoke-direct {v12, v2, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    #@9c
    move-object v5, v1

    #@9d
    invoke-direct/range {v5 .. v12}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    #@a0
    return-object v1

    #@a1
    .line 1021
    :cond_a1
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@a3
    # getter for: Lcom/blankj/utilcode/util/ThreadUtils;->CPU_COUNT:I
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$200()I

    #@a6
    move-result v2

    #@a7
    add-int/lit8 v14, v2, 0x1

    #@a9
    # getter for: Lcom/blankj/utilcode/util/ThreadUtils;->CPU_COUNT:I
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$200()I

    #@ac
    move-result v2

    #@ad
    mul-int/lit8 v2, v2, 0x2

    #@af
    add-int/lit8 v15, v2, 0x1

    #@b1
    const-wide/16 v16, 0x1e

    #@b3
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@b5
    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    #@b7
    invoke-direct {v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>(Z)V

    #@ba
    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    #@bc
    const-string v4, "cpu"

    #@be
    invoke-direct {v3, v4, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    #@c1
    move-object v13, v1

    #@c2
    move-object/from16 v19, v2

    #@c4
    move-object/from16 v20, v3

    #@c6
    invoke-direct/range {v13 .. v20}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    #@c9
    return-object v1
.end method

.method private getSubmittedCount()I
    .registers 2

    #@0
    .line 1053
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 1058
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    .line 1059
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    #@8
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    #@0
    .line 1064
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->isShutdown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 1065
    :cond_7
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@c
    .line 1067
    :try_start_c
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_f} :catch_16
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    #@f
    goto :goto_22

    #@10
    .line 1072
    :catchall_10
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@15
    goto :goto_22

    #@16
    :catch_16
    const-string v0, "ThreadUtils"

    #@18
    const-string v1, "This will not happen!"

    #@1a
    .line 1069
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1070
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    #@1f
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->offer(Ljava/lang/Runnable;)Z

    #@22
    :goto_22
    return-void
.end method
