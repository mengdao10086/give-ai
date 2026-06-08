.class final Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
.super Ljava/lang/Object;
.source "BehaviorSubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/BehaviorSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BehaviorDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field fastPath:Z

.field index:J

.field next:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final state:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/subjects/BehaviorSubject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 486
    iput-object p1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->downstream:Lio/reactivex/Observer;

    #@5
    .line 487
    iput-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 492
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x1

    #@5
    .line 493
    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@7
    .line 495
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    #@9
    invoke-virtual {v0, p0}, Lio/reactivex/subjects/BehaviorSubject;->remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V

    #@c
    :cond_c
    return-void
.end method

.method emitFirst()V
    .registers 5

    #@0
    .line 505
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 509
    :cond_5
    monitor-enter p0

    #@6
    .line 510
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 511
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 513
    :cond_c
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    #@e
    if-eqz v0, :cond_12

    #@10
    .line 514
    monitor-exit p0

    #@11
    return-void

    #@12
    .line 517
    :cond_12
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    #@14
    .line 518
    iget-object v1, v0, Lio/reactivex/subjects/BehaviorSubject;->readLock:Ljava/util/concurrent/locks/Lock;

    #@16
    .line 520
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@19
    .line 521
    iget-wide v2, v0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    #@1b
    iput-wide v2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->index:J

    #@1d
    .line 522
    iget-object v0, v0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    #@1f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    .line 523
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@26
    const/4 v1, 0x1

    #@27
    if-eqz v0, :cond_2b

    #@29
    move v2, v1

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    const/4 v2, 0x0

    #@2c
    .line 525
    :goto_2c
    iput-boolean v2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    #@2e
    .line 526
    iput-boolean v1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    #@30
    .line 527
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_3e

    #@31
    if-eqz v0, :cond_3d

    #@33
    .line 530
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3a

    #@39
    return-void

    #@3a
    .line 534
    :cond_3a
    invoke-virtual {p0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitLoop()V

    #@3d
    :cond_3d
    return-void

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    .line 527
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    #@40
    throw v0
.end method

.method emitLoop()V
    .registers 3

    #@0
    .line 574
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 578
    :cond_5
    monitor-enter p0

    #@6
    .line 579
    :try_start_6
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@8
    if-nez v0, :cond_f

    #@a
    const/4 v0, 0x0

    #@b
    .line 581
    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    #@d
    .line 582
    monitor-exit p0

    #@e
    return-void

    #@f
    :cond_f
    const/4 v1, 0x0

    #@10
    .line 584
    iput-object v1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@12
    .line 585
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    #@13
    .line 587
    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    #@16
    goto :goto_0

    #@17
    :catchall_17
    move-exception v0

    #@18
    .line 585
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method

.method emitNext(Ljava/lang/Object;J)V
    .registers 6

    #@0
    .line 539
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 542
    :cond_5
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->fastPath:Z

    #@7
    if-nez v0, :cond_37

    #@9
    .line 543
    monitor-enter p0

    #@a
    .line 544
    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@c
    if-eqz v0, :cond_10

    #@e
    .line 545
    monitor-exit p0

    #@f
    return-void

    #@10
    .line 547
    :cond_10
    iget-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->index:J

    #@12
    cmp-long p2, v0, p2

    #@14
    if-nez p2, :cond_18

    #@16
    .line 548
    monitor-exit p0

    #@17
    return-void

    #@18
    .line 550
    :cond_18
    iget-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    #@1a
    if-eqz p2, :cond_2d

    #@1c
    .line 551
    iget-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1e
    if-nez p2, :cond_28

    #@20
    .line 553
    new-instance p2, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@22
    const/4 p3, 0x4

    #@23
    invoke-direct {p2, p3}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@26
    .line 554
    iput-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@28
    .line 556
    :cond_28
    invoke-virtual {p2, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@2b
    .line 557
    monitor-exit p0

    #@2c
    return-void

    #@2d
    :cond_2d
    const/4 p2, 0x1

    #@2e
    .line 559
    iput-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    #@30
    .line 560
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_34

    #@31
    .line 561
    iput-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->fastPath:Z

    #@33
    goto :goto_37

    #@34
    :catchall_34
    move-exception p1

    #@35
    .line 560
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    #@36
    throw p1

    #@37
    .line 564
    :cond_37
    :goto_37
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    #@3a
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 501
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@2
    return v0
.end method

.method public test(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 569
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    #@2
    if-nez v0, :cond_f

    #@4
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->downstream:Lio/reactivex/Observer;

    #@6
    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p1, 0x1

    #@10
    :goto_10
    return p1
.end method
