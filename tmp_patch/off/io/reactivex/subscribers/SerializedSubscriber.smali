.class public final Lio/reactivex/subscribers/SerializedSubscriber;
.super Ljava/lang/Object;
.source "SerializedSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final QUEUE_LINK_SIZE:I = 0x4


# instance fields
.field final delayError:Z

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

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

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 51
    invoke-direct {p0, p1, v0}, Lio/reactivex/subscribers/SerializedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Z)V

    #@4
    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;Z)V"
        }
    .end annotation

    #@0
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@5
    .line 63
    iput-boolean p2, p0, Lio/reactivex/subscribers/SerializedSubscriber;->delayError:Z

    #@7
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    .line 197
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    #@5
    return-void
.end method

.method emitLoop()V
    .registers 3

    #@0
    .line 175
    :cond_0
    monitor-enter p0

    #@1
    .line 176
    :try_start_1
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@3
    if-nez v0, :cond_a

    #@5
    const/4 v0, 0x0

    #@6
    .line 178
    iput-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    #@8
    .line 179
    monitor-exit p0

    #@9
    return-void

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    .line 181
    iput-object v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@d
    .line 182
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    #@e
    .line 184
    iget-object v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@10
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->accept(Lorg/reactivestreams/Subscriber;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    return-void

    #@17
    :catchall_17
    move-exception v0

    #@18
    .line 182
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 148
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 151
    :cond_5
    monitor-enter p0

    #@6
    .line 152
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 153
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 155
    :cond_c
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    #@e
    if-eqz v0, :cond_25

    #@10
    .line 156
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@12
    if-nez v0, :cond_1c

    #@14
    .line 158
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@16
    const/4 v1, 0x4

    #@17
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1a
    .line 159
    iput-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1c
    .line 161
    :cond_1c
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@23
    .line 162
    monitor-exit p0

    #@24
    return-void

    #@25
    :cond_25
    const/4 v0, 0x1

    #@26
    .line 164
    iput-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@28
    .line 165
    iput-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    #@2a
    .line 166
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_31

    #@2b
    .line 168
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@2d
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    #@30
    return-void

    #@31
    :catchall_31
    move-exception v0

    #@32
    .line 166
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
    .line 107
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 108
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    .line 112
    :cond_8
    monitor-enter p0

    #@9
    .line 113
    :try_start_9
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@b
    const/4 v1, 0x1

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_37

    #@f
    .line 116
    :cond_f
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    #@11
    if-eqz v0, :cond_32

    #@13
    .line 117
    iput-boolean v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@15
    .line 118
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@17
    if-nez v0, :cond_21

    #@19
    .line 120
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1b
    const/4 v1, 0x4

    #@1c
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1f
    .line 121
    iput-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@21
    .line 123
    :cond_21
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    .line 124
    iget-boolean v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->delayError:Z

    #@27
    if-eqz v1, :cond_2d

    #@29
    .line 125
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@2c
    goto :goto_30

    #@2d
    .line 127
    :cond_2d
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    #@30
    .line 129
    :goto_30
    monitor-exit p0

    #@31
    return-void

    #@32
    .line 131
    :cond_32
    iput-boolean v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@34
    .line 132
    iput-boolean v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    #@36
    const/4 v1, 0x0

    #@37
    .line 135
    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_44

    #@38
    if-eqz v1, :cond_3e

    #@3a
    .line 138
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@3d
    return-void

    #@3e
    .line 142
    :cond_3e
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@40
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    #@43
    return-void

    #@44
    :catchall_44
    move-exception p1

    #@45
    .line 135
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    #@46
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
    .line 76
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    if-nez p1, :cond_17

    #@7
    .line 80
    iget-object p1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@9
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@c
    .line 81
    new-instance p1, Ljava/lang/NullPointerException;

    #@e
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {p0, p1}, Lio/reactivex/subscribers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    #@16
    return-void

    #@17
    .line 84
    :cond_17
    monitor-enter p0

    #@18
    .line 85
    :try_start_18
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    #@1a
    if-eqz v0, :cond_1e

    #@1c
    .line 86
    monitor-exit p0

    #@1d
    return-void

    #@1e
    .line 88
    :cond_1e
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    #@20
    if-eqz v0, :cond_37

    #@22
    .line 89
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@24
    if-nez v0, :cond_2e

    #@26
    .line 91
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@28
    const/4 v1, 0x4

    #@29
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@2c
    .line 92
    iput-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@2e
    .line 94
    :cond_2e
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@35
    .line 95
    monitor-exit p0

    #@36
    return-void

    #@37
    :cond_37
    const/4 v0, 0x1

    #@38
    .line 97
    iput-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    #@3a
    .line 98
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_44

    #@3b
    .line 100
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@3d
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    #@40
    .line 102
    invoke-virtual {p0}, Lio/reactivex/subscribers/SerializedSubscriber;->emitLoop()V

    #@43
    return-void

    #@44
    :catchall_44
    move-exception p1

    #@45
    .line 98
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    #@46
    throw p1
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    #@0
    .line 68
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 69
    iput-object p1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@a
    .line 70
    iget-object p1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    #@c
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    #@f
    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 4

    #@0
    .line 192
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    #@5
    return-void
.end method
