.class public final Lio/reactivex/internal/util/BlockingHelper;
.super Ljava/lang/Object;
.source "BlockingHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lio/reactivex/disposables/Disposable;)V
    .registers 6

    #@0
    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 39
    :cond_b
    :try_start_b
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    #@e
    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_11} :catch_12

    #@11
    return-void

    #@12
    :catch_12
    move-exception p0

    #@13
    .line 42
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@16
    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    #@1d
    .line 47
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1f
    const-string v0, "Interrupted while waiting for subscription to complete."

    #@21
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw p1
.end method

.method public static verifyNonBlocking()V
    .registers 3

    #@0
    .line 57
    invoke-static {}, Lio/reactivex/plugins/RxJavaPlugins;->isFailOnNonBlockingScheduler()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_38

    #@6
    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    instance-of v0, v0, Lio/reactivex/internal/schedulers/NonBlockingThread;

    #@c
    if-nez v0, :cond_15

    #@e
    .line 59
    invoke-static {}, Lio/reactivex/plugins/RxJavaPlugins;->onBeforeBlocking()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_15

    #@14
    goto :goto_38

    #@15
    .line 60
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    const-string v2, "Attempt to block on a Scheduler "

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string v2, " that doesn\'t support blocking operators as they may lead to deadlock"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    :cond_38
    :goto_38
    return-void
.end method
