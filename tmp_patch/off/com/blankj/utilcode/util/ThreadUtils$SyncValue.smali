.class public Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1345
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@b
    .line 1346
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@10
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 1357
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_12

    #@8
    .line 1359
    :try_start_8
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_e

    #@d
    goto :goto_12

    #@e
    :catch_e
    move-exception v0

    #@f
    .line 1361
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    #@12
    .line 1364
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mValue:Ljava/lang/Object;

    #@14
    return-object v0
.end method

.method public getValue(JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "TT;)TT;"
        }
    .end annotation

    #@0
    .line 1368
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    .line 1370
    :try_start_8
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_e

    #@d
    goto :goto_13

    #@e
    :catch_e
    move-exception p1

    #@f
    .line 1372
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    #@12
    return-object p4

    #@13
    .line 1376
    :cond_13
    :goto_13
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mValue:Ljava/lang/Object;

    #@15
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 1350
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_11

    #@a
    .line 1351
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mValue:Ljava/lang/Object;

    #@c
    .line 1352
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$SyncValue;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@e
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@11
    :cond_11
    return-void
.end method
