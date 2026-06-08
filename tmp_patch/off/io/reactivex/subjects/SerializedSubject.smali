.class final Lio/reactivex/subjects/SerializedSubject;
.super Lio/reactivex/subjects/Subject;
.source "SerializedSubject.java"

# interfaces
.implements Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject<",
        "TT;>;",
        "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/subjects/Subject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/Subject<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 43
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@5
    return-void
.end method


# virtual methods
.method emitLoop()V
    .registers 3

    #@0
    .line 168
    :goto_0
    monitor-enter p0

    #@1
    .line 169
    :try_start_1
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@3
    if-nez v0, :cond_a

    #@5
    const/4 v0, 0x0

    #@6
    .line 171
    iput-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@8
    .line 172
    monitor-exit p0

    #@9
    return-void

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    .line 174
    iput-object v1, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@d
    .line 175
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    #@e
    .line 176
    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    #@11
    goto :goto_0

    #@12
    :catchall_12
    move-exception v0

    #@13
    .line 175
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    #@14
    throw v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 198
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@2
    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->getThrowable()Ljava/lang/Throwable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasComplete()Z
    .registers 2

    #@0
    .line 203
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@2
    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasComplete()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasObservers()Z
    .registers 2

    #@0
    .line 187
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@2
    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasObservers()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasThrowable()Z
    .registers 2

    #@0
    .line 192
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@2
    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasThrowable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 142
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 145
    :cond_5
    monitor-enter p0

    #@6
    .line 146
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 147
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    .line 149
    iput-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@f
    .line 150
    iget-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@11
    if-eqz v1, :cond_28

    #@13
    .line 151
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@15
    if-nez v0, :cond_1f

    #@17
    .line 153
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@19
    const/4 v1, 0x4

    #@1a
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1d
    .line 154
    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1f
    .line 156
    :cond_1f
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@26
    .line 157
    monitor-exit p0

    #@27
    return-void

    #@28
    .line 159
    :cond_28
    iput-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@2a
    .line 160
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_31

    #@2b
    .line 161
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@2d
    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->onComplete()V

    #@30
    return-void

    #@31
    :catchall_31
    move-exception v0

    #@32
    .line 160
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    #@33
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 110
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 111
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    .line 115
    :cond_8
    monitor-enter p0

    #@9
    .line 116
    :try_start_9
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@b
    const/4 v1, 0x1

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_2d

    #@f
    .line 119
    :cond_f
    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@11
    .line 120
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@13
    if-eqz v0, :cond_2a

    #@15
    .line 121
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@17
    if-nez v0, :cond_21

    #@19
    .line 123
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1b
    const/4 v1, 0x4

    #@1c
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1f
    .line 124
    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@21
    .line 126
    :cond_21
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    #@28
    .line 127
    monitor-exit p0

    #@29
    return-void

    #@2a
    .line 130
    :cond_2a
    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@2c
    const/4 v1, 0x0

    #@2d
    .line 132
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_3a

    #@2e
    if-eqz v1, :cond_34

    #@30
    .line 134
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@33
    return-void

    #@34
    .line 137
    :cond_34
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@36
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    #@39
    return-void

    #@3a
    :catchall_3a
    move-exception p1

    #@3b
    .line 132
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    #@3c
    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 86
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 89
    :cond_5
    monitor-enter p0

    #@6
    .line 90
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 91
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 93
    :cond_c
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@e
    if-eqz v0, :cond_25

    #@10
    .line 94
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@12
    if-nez v0, :cond_1c

    #@14
    .line 96
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@16
    const/4 v1, 0x4

    #@17
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1a
    .line 97
    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1c
    .line 99
    :cond_1c
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@23
    .line 100
    monitor-exit p0

    #@24
    return-void

    #@25
    :cond_25
    const/4 v0, 0x1

    #@26
    .line 102
    iput-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@28
    .line 103
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_32

    #@29
    .line 104
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@2b
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    #@2e
    .line 105
    invoke-virtual {p0}, Lio/reactivex/subjects/SerializedSubject;->emitLoop()V

    #@31
    return-void

    #@32
    :catchall_32
    move-exception p1

    #@33
    .line 103
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    #@34
    throw p1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 4

    #@0
    .line 55
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_2d

    #@5
    .line 56
    monitor-enter p0

    #@6
    .line 57
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_28

    #@b
    .line 60
    :cond_b
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@d
    if-eqz v0, :cond_24

    #@f
    .line 61
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@11
    if-nez v0, :cond_1b

    #@13
    .line 63
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@15
    const/4 v1, 0x4

    #@16
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@19
    .line 64
    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1b
    .line 66
    :cond_1b
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->disposable(Lio/reactivex/disposables/Disposable;)Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@22
    .line 67
    monitor-exit p0

    #@23
    return-void

    #@24
    .line 69
    :cond_24
    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    #@26
    const/4 v0, 0x0

    #@27
    move v1, v0

    #@28
    .line 72
    :goto_28
    monitor-exit p0

    #@29
    goto :goto_2d

    #@2a
    :catchall_2a
    move-exception p1

    #@2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    #@2c
    throw p1

    #@2d
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_33

    #@2f
    .line 77
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@32
    goto :goto_3b

    #@33
    .line 79
    :cond_33
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@35
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@38
    .line 80
    invoke-virtual {p0}, Lio/reactivex/subjects/SerializedSubject;->emitLoop()V

    #@3b
    :goto_3b
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 49
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->subscribe(Lio/reactivex/Observer;)V

    #@5
    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 182
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    #@2
    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method
