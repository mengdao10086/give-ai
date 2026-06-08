.class Landroidx/emoji2/text/ConcurrencyHelpers;
.super Ljava/lang/Object;
.source "ConcurrencyHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/ConcurrencyHelpers$Handler28Impl;
    }
.end annotation


# static fields
.field private static final FONT_LOAD_TIMEOUT_SECONDS:I = 0xf


# direct methods
.method public static synthetic $r8$lambda$xMC8M6LLEeW997bBmO6BCC6GGAM(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static convertHandlerToExecutor(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 94
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    new-instance v0, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda1;

    #@5
    invoke-direct {v0, p0}, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    #@8
    return-object v0
.end method

.method static createBackgroundPriorityExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 9

    #@0
    .line 56
    new-instance v7, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda0;

    #@2
    invoke-direct {v7, p0}, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    #@5
    .line 61
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    const-wide/16 v3, 0xf

    #@b
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@d
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    #@f
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    #@12
    move-object v0, p0

    #@13
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@16
    const/4 v0, 0x1

    #@17
    .line 69
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    #@1a
    return-object p0
.end method

.method static synthetic lambda$createBackgroundPriorityExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    #@0
    .line 57
    new-instance v0, Ljava/lang/Thread;

    #@2
    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@5
    const/16 p0, 0xa

    #@7
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    #@a
    return-object v0
.end method

.method static mainHandlerAsync()Landroid/os/Handler;
    .registers 2

    #@0
    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_f

    #@6
    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Landroidx/emoji2/text/ConcurrencyHelpers$Handler28Impl;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 80
    :cond_f
    new-instance v0, Landroid/os/Handler;

    #@11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@18
    return-object v0
.end method
