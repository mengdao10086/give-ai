.class public final Landroidx/lifecycle/DispatchQueue;
.super Ljava/lang/Object;
.source "DispatchQueue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0007J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0007J\u0008\u0010\u0010\u001a\u00020\u000cH\u0007J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\tH\u0003J\u0008\u0010\u0012\u001a\u00020\u000cH\u0007J\u0008\u0010\u0013\u001a\u00020\u000cH\u0007J\u0008\u0010\u0014\u001a\u00020\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/lifecycle/DispatchQueue;",
        "",
        "()V",
        "finished",
        "",
        "isDraining",
        "paused",
        "queue",
        "Ljava/util/Queue;",
        "Ljava/lang/Runnable;",
        "canRun",
        "dispatchAndEnqueue",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "runnable",
        "drainQueue",
        "enqueue",
        "finish",
        "pause",
        "resume",
        "lifecycle-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private finished:Z

.field private isDraining:Z

.field private paused:Z

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$G2ay370n_s_ksSHUJaD9zIU8eCw(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Landroidx/lifecycle/DispatchQueue;->dispatchAndEnqueue$lambda-2$lambda-1(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 33
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    #@6
    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@b
    check-cast v0, Ljava/util/Queue;

    #@d
    iput-object v0, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    #@f
    return-void
.end method

.method private static final dispatchAndEnqueue$lambda-2$lambda-1(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    const-string v0, "this$0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "$runnable"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 100
    invoke-direct {p0, p1}, Landroidx/lifecycle/DispatchQueue;->enqueue(Ljava/lang/Runnable;)V

    #@d
    return-void
.end method

.method private final enqueue(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 109
    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_c

    #@8
    .line 112
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    #@b
    return-void

    #@c
    .line 109
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    #@e
    const-string v0, "cannot enqueue any more runnables"

    #@10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method


# virtual methods
.method public final canRun()Z
    .registers 2

    #@0
    .line 83
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    #@2
    if-nez v0, :cond_b

    #@4
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 v0, 0x1

    #@c
    :goto_c
    return v0
.end method

.method public final dispatchAndEnqueue(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 5

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "runnable"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 88
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    #@11
    move-result-object v0

    #@12
    .line 99
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_23

    #@18
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->canRun()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1f

    #@1e
    goto :goto_23

    #@1f
    .line 102
    :cond_1f
    invoke-direct {p0, p2}, Landroidx/lifecycle/DispatchQueue;->enqueue(Ljava/lang/Runnable;)V

    #@22
    goto :goto_2b

    #@23
    .line 100
    :cond_23
    :goto_23
    new-instance v1, Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;

    #@25
    invoke-direct {v1, p0, p2}, Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    #@28
    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    #@2b
    :goto_2b
    return-void
.end method

.method public final drainQueue()V
    .registers 4

    #@0
    .line 65
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    const/4 v1, 0x1

    #@7
    .line 70
    :try_start_7
    iput-boolean v1, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    #@9
    .line 71
    :cond_9
    :goto_9
    iget-object v2, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    #@b
    check-cast v2, Ljava/util/Collection;

    #@d
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    #@10
    move-result v2

    #@11
    xor-int/2addr v2, v1

    #@12
    if-eqz v2, :cond_29

    #@14
    .line 72
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->canRun()Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_1b

    #@1a
    goto :goto_29

    #@1b
    .line 75
    :cond_1b
    iget-object v2, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    #@1d
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/Runnable;

    #@23
    if-eqz v2, :cond_9

    #@25
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_2c

    #@28
    goto :goto_9

    #@29
    .line 78
    :cond_29
    :goto_29
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    #@2b
    return-void

    #@2c
    :catchall_2c
    move-exception v1

    #@2d
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    #@2f
    throw v1
.end method

.method public final finish()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 59
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    #@3
    .line 60
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    #@6
    return-void
.end method

.method public final pause()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 42
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    #@3
    return-void
.end method

.method public final resume()V
    .registers 3

    #@0
    .line 47
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 50
    :cond_5
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    #@7
    xor-int/lit8 v0, v0, 0x1

    #@9
    if-eqz v0, :cond_12

    #@b
    const/4 v0, 0x0

    #@c
    .line 53
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    #@e
    .line 54
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    #@11
    return-void

    #@12
    .line 50
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string v1, "Cannot resume a finished dispatcher"

    #@16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method
