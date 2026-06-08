.class final Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedBlockingQueue4Util"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private mCapacity:I

.field private volatile mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 1084
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@3
    const v0, 0x7fffffff

    #@6
    .line 1081
    iput v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    #@8
    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    #@0
    .line 1095
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@3
    .line 1096
    iput p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    #@5
    return-void
.end method

.method constructor <init>(Z)V
    .registers 3

    #@0
    .line 1088
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@3
    const v0, 0x7fffffff

    #@6
    .line 1081
    iput v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    #@8
    if-eqz p1, :cond_d

    #@a
    const/4 p1, 0x0

    #@b
    .line 1090
    iput p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    #@d
    :cond_d
    return-void
.end method

.method static synthetic access$302(Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;)Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;
    .registers 2

    #@0
    .line 1077
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@2
    return-object p1
.end method


# virtual methods
.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 1077
    check-cast p1, Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->offer(Ljava/lang/Runnable;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .registers 4

    #@0
    .line 1101
    iget v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    #@2
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->size()I

    #@5
    move-result v1

    #@6
    if-gt v0, v1, :cond_1c

    #@8
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@a
    if-eqz v0, :cond_1c

    #@c
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@e
    .line 1102
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->getPoolSize()I

    #@11
    move-result v0

    #@12
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    #@14
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->getMaximumPoolSize()I

    #@17
    move-result v1

    #@18
    if-ge v0, v1, :cond_1c

    #@1a
    const/4 p1, 0x0

    #@1b
    return p1

    #@1c
    .line 1106
    :cond_1c
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    #@1f
    move-result p1

    #@20
    return p1
.end method
