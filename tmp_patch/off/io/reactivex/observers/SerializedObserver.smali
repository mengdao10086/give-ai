.class public final Lio/reactivex/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final QUEUE_LINK_SIZE:I = 0x4


# instance fields
.field final delayError:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
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

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 51
    invoke-direct {p0, p1, v0}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;Z)V

    #@4
    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;Z)V"
        }
    .end annotation

    #@0
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lio/reactivex/observers/SerializedObserver;->downstream:Lio/reactivex/Observer;

    #@5
    .line 63
    iput-boolean p2, p0, Lio/reactivex/observers/SerializedObserver;->delayError:Z

    #@7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    #@0
    .line 77
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@5
    return-void
.end method

.method emitLoop()V
    .registers 3

    #@0
    .line 186
    :cond_0
    monitor-enter p0

    #@1
    .line 187
    :try_start_1
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@3
    if-nez v0, :cond_a

    #@5
    const/4 v0, 0x0

    #@6
    .line 189
    iput-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    #@8
    .line 190
    monitor-exit p0

    #@9
    return-void

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    .line 192
    iput-object v1, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@d
    .line 193
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    #@e
    .line 195
    iget-object v1, p0, Lio/reactivex/observers/SerializedObserver;->downstream:Lio/reactivex/Observer;

    #@10
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->accept(Lio/reactivex/Observer;)Z

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
    .line 193
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 82
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 3

    #@0
    .line 159
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 162
    :cond_5
    monitor-enter p0

    #@6
    .line 163
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 164
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 166
    :cond_c
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    #@e
    if-eqz v0, :cond_25

    #@10
    .line 167
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@12
    if-nez v0, :cond_1c

    #@14
    .line 169
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@16
    const/4 v1, 0x4

    #@17
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1a
    .line 170
    iput-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1c
    .line 172
    :cond_1c
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@23
    .line 173
    monitor-exit p0

    #@24
    return-void

    #@25
    :cond_25
    const/4 v0, 0x1

    #@26
    .line 175
    iput-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@28
    .line 176
    iput-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    #@2a
    .line 177
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_31

    #@2b
    .line 179
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->downstream:Lio/reactivex/Observer;

    #@2d
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@30
    return-void

    #@31
    :catchall_31
    move-exception v0

    #@32
    .line 177
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
    .line 118
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 119
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@7
    return-void

    #@8
    .line 123
    :cond_8
    monitor-enter p0

    #@9
    .line 124
    :try_start_9
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@b
    const/4 v1, 0x1

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_37

    #@f
    .line 127
    :cond_f
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    #@11
    if-eqz v0, :cond_32

    #@13
    .line 128
    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@15
    .line 129
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@17
    if-nez v0, :cond_21

    #@19
    .line 131
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@1b
    const/4 v1, 0x4

    #@1c
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@1f
    .line 132
    iput-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@21
    .line 134
    :cond_21
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    .line 135
    iget-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->delayError:Z

    #@27
    if-eqz v1, :cond_2d

    #@29
    .line 136
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@2c
    goto :goto_30

    #@2d
    .line 138
    :cond_2d
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    #@30
    .line 140
    :goto_30
    monitor-exit p0

    #@31
    return-void

    #@32
    .line 142
    :cond_32
    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@34
    .line 143
    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    #@36
    const/4 v1, 0x0

    #@37
    .line 146
    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_44

    #@38
    if-eqz v1, :cond_3e

    #@3a
    .line 149
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@3d
    return-void

    #@3e
    .line 153
    :cond_3e
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->downstream:Lio/reactivex/Observer;

    #@40
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@43
    return-void

    #@44
    :catchall_44
    move-exception p1

    #@45
    .line 146
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
    .line 87
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    if-nez p1, :cond_17

    #@7
    .line 91
    iget-object p1, p0, Lio/reactivex/observers/SerializedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@9
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@c
    .line 92
    new-instance p1, Ljava/lang/NullPointerException;

    #@e
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    #@10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {p0, p1}, Lio/reactivex/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    #@16
    return-void

    #@17
    .line 95
    :cond_17
    monitor-enter p0

    #@18
    .line 96
    :try_start_18
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    #@1a
    if-eqz v0, :cond_1e

    #@1c
    .line 97
    monitor-exit p0

    #@1d
    return-void

    #@1e
    .line 99
    :cond_1e
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    #@20
    if-eqz v0, :cond_37

    #@22
    .line 100
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@24
    if-nez v0, :cond_2e

    #@26
    .line 102
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@28
    const/4 v1, 0x4

    #@29
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    #@2c
    .line 103
    iput-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    #@2e
    .line 105
    :cond_2e
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    #@35
    .line 106
    monitor-exit p0

    #@36
    return-void

    #@37
    :cond_37
    const/4 v0, 0x1

    #@38
    .line 108
    iput-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    #@3a
    .line 109
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_44

    #@3b
    .line 111
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->downstream:Lio/reactivex/Observer;

    #@3d
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@40
    .line 113
    invoke-virtual {p0}, Lio/reactivex/observers/SerializedObserver;->emitLoop()V

    #@43
    return-void

    #@44
    :catchall_44
    move-exception p1

    #@45
    .line 109
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    #@46
    throw p1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 68
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 69
    iput-object p1, p0, Lio/reactivex/observers/SerializedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    #@a
    .line 71
    iget-object p1, p0, Lio/reactivex/observers/SerializedObserver;->downstream:Lio/reactivex/Observer;

    #@c
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    :cond_f
    return-void
.end method
