.class public final Lio/reactivex/internal/schedulers/ScheduledRunnable;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ScheduledRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final ASYNC_DISPOSED:Ljava/lang/Object;

.field static final DONE:Ljava/lang/Object;

.field static final FUTURE_INDEX:I = 0x1

.field static final PARENT_DISPOSED:Ljava/lang/Object;

.field static final PARENT_INDEX:I = 0x0

.field static final SYNC_DISPOSED:Ljava/lang/Object;

.field static final THREAD_INDEX:I = 0x2

.field private static final serialVersionUID:J = -0x54ef67182406fc25L


# instance fields
.field final actual:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 30
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    #@7
    .line 32
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    #@e
    .line 34
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    #@15
    .line 36
    new-instance v0, Ljava/lang/Object;

    #@17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1a
    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@1c
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    .line 49
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    #@4
    .line 50
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    #@6
    const/4 p1, 0x0

    #@7
    .line 51
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    #@a
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2

    #@0
    .line 57
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->run()V

    #@3
    const/4 v0, 0x0

    #@4
    return-object v0
.end method

.method public dispose()V
    .registers 8

    #@0
    :cond_0
    const/4 v0, 0x1

    #@1
    .line 110
    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    .line 111
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@7
    const/4 v3, 0x0

    #@8
    if-eq v1, v2, :cond_31

    #@a
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    #@c
    if-eq v1, v2, :cond_31

    #@e
    sget-object v4, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    #@10
    if-ne v1, v4, :cond_13

    #@12
    goto :goto_31

    #@13
    :cond_13
    const/4 v5, 0x2

    #@14
    .line 114
    invoke-virtual {p0, v5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1b
    move-result-object v6

    #@1c
    if-eq v5, v6, :cond_20

    #@1e
    move v5, v0

    #@1f
    goto :goto_21

    #@20
    :cond_20
    move v5, v3

    #@21
    :goto_21
    if-eqz v5, :cond_24

    #@23
    move-object v2, v4

    #@24
    .line 115
    :cond_24
    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_0

    #@2a
    if-eqz v1, :cond_31

    #@2c
    .line 117
    check-cast v1, Ljava/util/concurrent/Future;

    #@2e
    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@31
    .line 124
    :cond_31
    :goto_31
    invoke-virtual {p0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    .line 125
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@37
    if-eq v0, v1, :cond_4b

    #@39
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    #@3b
    if-eq v0, v1, :cond_4b

    #@3d
    if-nez v0, :cond_40

    #@3f
    goto :goto_4b

    #@40
    .line 128
    :cond_40
    invoke-virtual {p0, v3, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_31

    #@46
    .line 129
    check-cast v0, Lio/reactivex/internal/disposables/DisposableContainer;

    #@48
    invoke-interface {v0, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@4b
    :cond_4b
    :goto_4b
    return-void
.end method

.method public isDisposed()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 137
    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    .line 138
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    #@7
    if-eq v1, v2, :cond_d

    #@9
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@b
    if-ne v1, v2, :cond_e

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    :cond_e
    return v0
.end method

.method public run()V
    .registers 6

    #@0
    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    #@8
    const/4 v0, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    const/4 v3, 0x0

    #@b
    .line 66
    :try_start_b
    iget-object v4, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    #@d
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    #@10
    goto :goto_15

    #@11
    :catchall_11
    move-exception v4

    #@12
    .line 69
    :try_start_12
    invoke-static {v4}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_44

    #@15
    .line 72
    :goto_15
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    #@18
    .line 73
    invoke-virtual {p0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 74
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    #@1e
    if-eq v0, v1, :cond_2f

    #@20
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@22
    invoke-virtual {p0, v3, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2f

    #@28
    if-eqz v0, :cond_2f

    #@2a
    .line 75
    check-cast v0, Lio/reactivex/internal/disposables/DisposableContainer;

    #@2c
    invoke-interface {v0, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@2f
    .line 79
    :cond_2f
    invoke-virtual {p0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    .line 80
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    #@35
    if-eq v0, v1, :cond_43

    #@37
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    #@39
    if-eq v0, v1, :cond_43

    #@3b
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@3d
    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_2f

    #@43
    :cond_43
    return-void

    #@44
    :catchall_44
    move-exception v4

    #@45
    .line 72
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    #@48
    .line 73
    invoke-virtual {p0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    .line 74
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    #@4e
    if-eq v0, v1, :cond_5f

    #@50
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@52
    invoke-virtual {p0, v3, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_5f

    #@58
    if-eqz v0, :cond_5f

    #@5a
    .line 75
    check-cast v0, Lio/reactivex/internal/disposables/DisposableContainer;

    #@5c
    invoke-interface {v0, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@5f
    .line 79
    :cond_5f
    :goto_5f
    invoke-virtual {p0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    .line 80
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    #@65
    if-eq v0, v1, :cond_74

    #@67
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    #@69
    if-eq v0, v1, :cond_74

    #@6b
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@6d
    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@70
    move-result v0

    #@71
    if-nez v0, :cond_74

    #@73
    goto :goto_5f

    #@74
    .line 84
    :cond_74
    throw v4
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    #@0
    :cond_0
    const/4 v0, 0x1

    #@1
    .line 89
    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    .line 90
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    #@7
    if-ne v1, v2, :cond_a

    #@9
    return-void

    #@a
    .line 93
    :cond_a
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    #@c
    if-ne v1, v2, :cond_13

    #@e
    const/4 v0, 0x0

    #@f
    .line 94
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@12
    return-void

    #@13
    .line 97
    :cond_13
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    #@15
    if-ne v1, v2, :cond_1b

    #@17
    .line 98
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@1a
    return-void

    #@1b
    .line 101
    :cond_1b
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    return-void
.end method
