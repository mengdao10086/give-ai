.class abstract Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SchedulerWhen.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ScheduledAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 160
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@5
    return-void
.end method


# virtual methods
.method call(Lio/reactivex/Scheduler$Worker;Lio/reactivex/CompletableObserver;)V
    .registers 5

    #@0
    .line 164
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    .line 166
    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerWhen;->DISPOSED:Lio/reactivex/disposables/Disposable;

    #@8
    if-ne v0, v1, :cond_b

    #@a
    return-void

    #@b
    .line 170
    :cond_b
    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lio/reactivex/disposables/Disposable;

    #@d
    if-eq v0, v1, :cond_10

    #@f
    return-void

    #@10
    .line 177
    :cond_10
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->callActual(Lio/reactivex/Scheduler$Worker;Lio/reactivex/CompletableObserver;)Lio/reactivex/disposables/Disposable;

    #@13
    move-result-object p1

    #@14
    .line 179
    sget-object p2, Lio/reactivex/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lio/reactivex/disposables/Disposable;

    #@16
    invoke-virtual {p0, p2, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result p2

    #@1a
    if-nez p2, :cond_1f

    #@1c
    .line 184
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1f
    :cond_1f
    return-void
.end method

.method protected abstract callActual(Lio/reactivex/Scheduler$Worker;Lio/reactivex/CompletableObserver;)Lio/reactivex/disposables/Disposable;
.end method

.method public dispose()V
    .registers 4

    #@0
    .line 199
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->DISPOSED:Lio/reactivex/disposables/Disposable;

    #@2
    .line 201
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lio/reactivex/disposables/Disposable;

    #@8
    .line 202
    sget-object v2, Lio/reactivex/internal/schedulers/SchedulerWhen;->DISPOSED:Lio/reactivex/disposables/Disposable;

    #@a
    if-ne v1, v2, :cond_d

    #@c
    return-void

    #@d
    .line 206
    :cond_d
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 208
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lio/reactivex/disposables/Disposable;

    #@15
    if-eq v1, v0, :cond_1a

    #@17
    .line 210
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1a
    :cond_1a
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 192
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@9
    move-result v0

    #@a
    return v0
.end method
