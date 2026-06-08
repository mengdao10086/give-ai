.class final Lio/reactivex/processors/SerializedProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "SerializedProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
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
.method constructor <init>(Lio/reactivex/processors/FlowableProcessor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/FlowableProcessor<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 42
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@5
    return-void
.end method


# virtual methods
.method emitLoop()V
    .registers 3

    #@0
    .line 167
    :goto_0
    monitor-enter p0

    #@1
    .line 168
    :try_start_1
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@3
    if-nez v0, :cond_a

    #@5
    const/4 v0, 0x0

    #@6
    .line 170
    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@8
    .line 171
    monitor-exit p0

    #@9
    return-void

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    .line 173
    iput-object v1, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@d
    .line 174
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    #@e
    .line 176
    iget-object v1, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@10
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->accept(Lorg/reactivestreams/Subscriber;)Z

    #@13
    goto :goto_0

    #@14
    :catchall_14
    move-exception v0

    #@15
    .line 174
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 193
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@2
    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->getThrowable()Ljava/lang/Throwable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasComplete()Z
    .registers 2

    #@0
    .line 198
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@2
    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->hasComplete()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasSubscribers()Z
    .registers 2

    #@0
    .line 182
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@2
    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->hasSubscribers()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasThrowable()Z
    .registers 2

    #@0
    .line 187
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@2
    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->hasThrowable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 141
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 144
    :cond_5
    monitor-enter p0

    #@6
    .line 145
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 146
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    .line 148
    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@f
    .line 149
    iget-boolean v1, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@11
    if-eqz v1, :cond_28

    #@13
    .line 150
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@15
    if-nez v0, :cond_1f

    #@17
    .line 152
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@19
    const/4 v1, 0x4

    #@1a
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1d
    .line 153
    iput-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1f
    .line 155
    :cond_1f
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@26
    .line 156
    monitor-exit p0

    #@27
    return-void

    #@28
    .line 158
    :cond_28
    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@2a
    .line 159
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_31

    #@2b
    .line 160
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@2d
    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->onComplete()V

    #@30
    return-void

    #@31
    :catchall_31
    move-exception v0

    #@32
    .line 159
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
    .line 109
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 110
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    .line 114
    :cond_8
    monitor-enter p0

    #@9
    .line 115
    :try_start_9
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@b
    const/4 v1, 0x1

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_2d

    #@f
    .line 118
    :cond_f
    iput-boolean v1, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@11
    .line 119
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@13
    if-eqz v0, :cond_2a

    #@15
    .line 120
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@17
    if-nez v0, :cond_21

    #@19
    .line 122
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1b
    const/4 v1, 0x4

    #@1c
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1f
    .line 123
    iput-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@21
    .line 125
    :cond_21
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    #@28
    .line 126
    monitor-exit p0

    #@29
    return-void

    #@2a
    .line 129
    :cond_2a
    iput-boolean v1, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@2c
    const/4 v1, 0x0

    #@2d
    .line 131
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_3a

    #@2e
    if-eqz v1, :cond_34

    #@30
    .line 133
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@33
    return-void

    #@34
    .line 136
    :cond_34
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@36
    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->onError(Ljava/lang/Throwable;)V

    #@39
    return-void

    #@3a
    :catchall_3a
    move-exception p1

    #@3b
    .line 131
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
    .line 85
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 88
    :cond_5
    monitor-enter p0

    #@6
    .line 89
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 90
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 92
    :cond_c
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@e
    if-eqz v0, :cond_25

    #@10
    .line 93
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@12
    if-nez v0, :cond_1c

    #@14
    .line 95
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@16
    const/4 v1, 0x4

    #@17
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1a
    .line 96
    iput-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1c
    .line 98
    :cond_1c
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@23
    .line 99
    monitor-exit p0

    #@24
    return-void

    #@25
    :cond_25
    const/4 v0, 0x1

    #@26
    .line 101
    iput-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@28
    .line 102
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_32

    #@29
    .line 103
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@2b
    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    #@2e
    .line 104
    invoke-virtual {p0}, Lio/reactivex/processors/SerializedProcessor;->emitLoop()V

    #@31
    return-void

    #@32
    :catchall_32
    move-exception p1

    #@33
    .line 102
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    #@34
    throw p1
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    #@0
    .line 54
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_2d

    #@5
    .line 55
    monitor-enter p0

    #@6
    .line 56
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->done:Z

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_28

    #@b
    .line 59
    :cond_b
    iget-boolean v0, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@d
    if-eqz v0, :cond_24

    #@f
    .line 60
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@11
    if-nez v0, :cond_1b

    #@13
    .line 62
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@15
    const/4 v1, 0x4

    #@16
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@19
    .line 63
    iput-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1b
    .line 65
    :cond_1b
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->subscription(Lorg/reactivestreams/Subscription;)Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@22
    .line 66
    monitor-exit p0

    #@23
    return-void

    #@24
    .line 68
    :cond_24
    iput-boolean v1, p0, Lio/reactivex/processors/SerializedProcessor;->emitting:Z

    #@26
    const/4 v0, 0x0

    #@27
    move v1, v0

    #@28
    .line 71
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
    .line 76
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@32
    goto :goto_3b

    #@33
    .line 78
    :cond_33
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@35
    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@38
    .line 79
    invoke-virtual {p0}, Lio/reactivex/processors/SerializedProcessor;->emitLoop()V

    #@3b
    :goto_3b
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 48
    iget-object v0, p0, Lio/reactivex/processors/SerializedProcessor;->actual:Lio/reactivex/processors/FlowableProcessor;

    #@2
    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->subscribe(Lorg/reactivestreams/Subscriber;)V

    #@5
    return-void
.end method
