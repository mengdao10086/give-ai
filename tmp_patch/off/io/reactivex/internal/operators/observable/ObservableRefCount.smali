.class public final Lio/reactivex/internal/operators/observable/ObservableRefCount;
.super Lio/reactivex/Observable;
.source "ObservableRefCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;,
        Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

.field final n:I

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/observables/ConnectableObservable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const-wide/16 v3, 0x0

    #@3
    .line 48
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@5
    const/4 v6, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableRefCount;-><init>(Lio/reactivex/observables/ConnectableObservable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    #@b
    return-void
.end method

.method public constructor <init>(Lio/reactivex/observables/ConnectableObservable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    #@0
    .line 52
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    #@5
    .line 54
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->n:I

    #@7
    .line 55
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    #@9
    .line 56
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->unit:Ljava/util/concurrent/TimeUnit;

    #@b
    .line 57
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->scheduler:Lio/reactivex/Scheduler;

    #@d
    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .registers 7

    #@0
    .line 93
    monitor-enter p0

    #@1
    .line 94
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@3
    if-eqz v0, :cond_3d

    #@5
    if-eq v0, p1, :cond_8

    #@7
    goto :goto_3d

    #@8
    .line 97
    :cond_8
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@a
    const-wide/16 v2, 0x1

    #@c
    sub-long/2addr v0, v2

    #@d
    .line 98
    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@f
    const-wide/16 v2, 0x0

    #@11
    cmp-long v0, v0, v2

    #@13
    if-nez v0, :cond_3b

    #@15
    .line 99
    iget-boolean v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    #@17
    if-nez v0, :cond_1a

    #@19
    goto :goto_3b

    #@1a
    .line 102
    :cond_1a
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    #@1c
    cmp-long v0, v0, v2

    #@1e
    if-nez v0, :cond_25

    #@20
    .line 103
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    #@23
    .line 104
    monitor-exit p0

    #@24
    return-void

    #@25
    .line 106
    :cond_25
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    #@27
    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    #@2a
    .line 107
    iput-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    #@2c
    .line 108
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3f

    #@2d
    .line 110
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->scheduler:Lio/reactivex/Scheduler;

    #@2f
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    #@31
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->unit:Ljava/util/concurrent/TimeUnit;

    #@33
    invoke-virtual {v1, p1, v2, v3, v4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    #@3a
    return-void

    #@3b
    .line 100
    :cond_3b
    :goto_3b
    :try_start_3b
    monitor-exit p0

    #@3c
    return-void

    #@3d
    .line 95
    :cond_3d
    :goto_3d
    monitor-exit p0

    #@3e
    return-void

    #@3f
    :catchall_3f
    move-exception p1

    #@40
    .line 108
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    #@41
    throw p1
.end method

.method clearTimer(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .registers 3

    #@0
    .line 137
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 138
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    #@6
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@9
    const/4 v0, 0x0

    #@a
    .line 139
    iput-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    #@c
    :cond_c
    return-void
.end method

.method reset(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .registers 4

    #@0
    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    #@2
    instance-of v1, v0, Lio/reactivex/disposables/Disposable;

    #@4
    if-eqz v1, :cond_c

    #@6
    .line 145
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@8
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@b
    goto :goto_1b

    #@c
    .line 146
    :cond_c
    instance-of v1, v0, Lio/reactivex/internal/disposables/ResettableConnectable;

    #@e
    if-eqz v1, :cond_1b

    #@10
    .line 147
    check-cast v0, Lio/reactivex/internal/disposables/ResettableConnectable;

    #@12
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->get()Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Lio/reactivex/disposables/Disposable;

    #@18
    invoke-interface {v0, p1}, Lio/reactivex/internal/disposables/ResettableConnectable;->resetIf(Lio/reactivex/disposables/Disposable;)V

    #@1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 66
    monitor-enter p0

    #@1
    .line 67
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@3
    if-nez v0, :cond_c

    #@5
    .line 69
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@7
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;)V

    #@a
    .line 70
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@c
    .line 73
    :cond_c
    iget-wide v1, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@e
    const-wide/16 v3, 0x0

    #@10
    cmp-long v3, v1, v3

    #@12
    if-nez v3, :cond_1d

    #@14
    .line 74
    iget-object v3, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    #@16
    if-eqz v3, :cond_1d

    #@18
    .line 75
    iget-object v3, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    #@1a
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1d
    :cond_1d
    const-wide/16 v3, 0x1

    #@1f
    add-long/2addr v1, v3

    #@20
    .line 77
    iput-wide v1, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@22
    .line 78
    iget-boolean v3, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    #@24
    if-nez v3, :cond_31

    #@26
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->n:I

    #@28
    int-to-long v3, v3

    #@29
    cmp-long v1, v1, v3

    #@2b
    if-nez v1, :cond_31

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 80
    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    #@30
    goto :goto_32

    #@31
    :cond_31
    const/4 v1, 0x0

    #@32
    .line 82
    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_45

    #@33
    .line 84
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    #@35
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;

    #@37
    invoke-direct {v3, p1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    #@3a
    invoke-virtual {v2, v3}, Lio/reactivex/observables/ConnectableObservable;->subscribe(Lio/reactivex/Observer;)V

    #@3d
    if-eqz v1, :cond_44

    #@3f
    .line 87
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    #@41
    invoke-virtual {p1, v0}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    #@44
    :cond_44
    return-void

    #@45
    :catchall_45
    move-exception p1

    #@46
    .line 82
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    #@47
    throw p1
.end method

.method terminated(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .registers 10

    #@0
    .line 114
    monitor-enter p0

    #@1
    .line 115
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    #@3
    instance-of v0, v0, Lio/reactivex/internal/operators/observable/ObservablePublishClassic;

    #@5
    const/4 v1, 0x0

    #@6
    const-wide/16 v2, 0x0

    #@8
    const-wide/16 v4, 0x1

    #@a
    if-eqz v0, :cond_24

    #@c
    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@e
    if-eqz v0, :cond_17

    #@10
    if-ne v0, p1, :cond_17

    #@12
    .line 117
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@14
    .line 118
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->clearTimer(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    #@17
    .line 121
    :cond_17
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@19
    sub-long/2addr v0, v4

    #@1a
    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@1c
    cmp-long v0, v0, v2

    #@1e
    if-nez v0, :cond_3b

    #@20
    .line 122
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->reset(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    #@23
    goto :goto_3b

    #@24
    .line 125
    :cond_24
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@26
    if-eqz v0, :cond_3b

    #@28
    if-ne v0, p1, :cond_3b

    #@2a
    .line 126
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->clearTimer(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    #@2d
    .line 127
    iget-wide v6, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@2f
    sub-long/2addr v6, v4

    #@30
    iput-wide v6, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@32
    cmp-long v0, v6, v2

    #@34
    if-nez v0, :cond_3b

    #@36
    .line 128
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@38
    .line 129
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->reset(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    #@3b
    .line 133
    :cond_3b
    :goto_3b
    monitor-exit p0

    #@3c
    return-void

    #@3d
    :catchall_3d
    move-exception p1

    #@3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    #@3f
    throw p1
.end method

.method timeout(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .registers 6

    #@0
    .line 152
    monitor-enter p0

    #@1
    .line 153
    :try_start_1
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_34

    #@9
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@b
    if-ne p1, v0, :cond_34

    #@d
    const/4 v0, 0x0

    #@e
    .line 154
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    #@10
    .line 155
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@16
    .line 156
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@19
    .line 158
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    #@1b
    instance-of v2, v1, Lio/reactivex/disposables/Disposable;

    #@1d
    if-eqz v2, :cond_25

    #@1f
    .line 159
    check-cast v1, Lio/reactivex/disposables/Disposable;

    #@21
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@24
    goto :goto_34

    #@25
    .line 160
    :cond_25
    instance-of v2, v1, Lio/reactivex/internal/disposables/ResettableConnectable;

    #@27
    if-eqz v2, :cond_34

    #@29
    if-nez v0, :cond_2f

    #@2b
    const/4 v0, 0x1

    #@2c
    .line 162
    iput-boolean v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->disconnectedEarly:Z

    #@2e
    goto :goto_34

    #@2f
    .line 164
    :cond_2f
    check-cast v1, Lio/reactivex/internal/disposables/ResettableConnectable;

    #@31
    invoke-interface {v1, v0}, Lio/reactivex/internal/disposables/ResettableConnectable;->resetIf(Lio/reactivex/disposables/Disposable;)V

    #@34
    .line 168
    :cond_34
    :goto_34
    monitor-exit p0

    #@35
    return-void

    #@36
    :catchall_36
    move-exception p1

    #@37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    #@38
    throw p1
.end method
