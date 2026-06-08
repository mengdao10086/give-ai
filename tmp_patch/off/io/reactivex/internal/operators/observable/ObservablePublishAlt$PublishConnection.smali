.class final Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservablePublishAlt.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservablePublishAlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "[",
        "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<",
        "TT;>;>;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

.field static final TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

.field private static final serialVersionUID:J = -0x2d1f6696927d02d4L


# instance fields
.field final connect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@3
    .line 141
    sput-object v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@5
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@7
    .line 144
    sput-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@9
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<",
            "TT;>;>;)V"
        }
    .end annotation

    #@0
    .line 149
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3
    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    .line 151
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    .line 152
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@e
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@11
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@13
    .line 153
    sget-object p1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@15
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->lazySet(Ljava/lang/Object;)V

    #@18
    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 202
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@6
    .line 203
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@8
    const/4 v2, 0x0

    #@9
    if-ne v0, v1, :cond_c

    #@b
    return v2

    #@c
    .line 206
    :cond_c
    array-length v1, v0

    #@d
    add-int/lit8 v3, v1, 0x1

    #@f
    .line 208
    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@11
    .line 209
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 210
    aput-object p1, v3, v1

    #@16
    .line 211
    invoke-virtual {p0, v0, v3}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    const/4 p1, 0x1

    #@1d
    return p1
.end method

.method public dispose()V
    .registers 3

    #@0
    .line 159
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@2
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, p0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    #@10
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@6
    if-ne v0, v1, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public onComplete()V
    .registers 5

    #@0
    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@7
    .line 195
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@9
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@f
    array-length v1, v0

    #@10
    const/4 v2, 0x0

    #@11
    :goto_11
    if-ge v2, v1, :cond_1d

    #@13
    aget-object v3, v0, v2

    #@15
    .line 196
    iget-object v3, v3, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;->downstream:Lio/reactivex/Observer;

    #@17
    invoke-interface {v3}, Lio/reactivex/Observer;->onComplete()V

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_11

    #@1d
    :cond_1d
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    .line 184
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    #@2
    .line 185
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@4
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    #@9
    .line 186
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@b
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@11
    array-length v1, v0

    #@12
    const/4 v2, 0x0

    #@13
    :goto_13
    if-ge v2, v1, :cond_1f

    #@15
    aget-object v3, v0, v2

    #@17
    .line 187
    iget-object v3, v3, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;->downstream:Lio/reactivex/Observer;

    #@19
    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_13

    #@1f
    :cond_1f
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 176
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@6
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_14

    #@a
    aget-object v3, v0, v2

    #@c
    .line 177
    iget-object v3, v3, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;->downstream:Lio/reactivex/Observer;

    #@e
    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@11
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_8

    #@14
    :cond_14
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    #@0
    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    #@5
    return-void
.end method

.method public remove(Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 220
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@6
    .line 221
    array-length v1, v0

    #@7
    if-nez v1, :cond_a

    #@9
    return-void

    #@a
    :cond_a
    const/4 v2, 0x0

    #@b
    move v3, v2

    #@c
    :goto_c
    if-ge v3, v1, :cond_16

    #@e
    .line 228
    aget-object v4, v0, v3

    #@10
    if-ne v4, p1, :cond_13

    #@12
    goto :goto_17

    #@13
    :cond_13
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_c

    #@16
    :cond_16
    const/4 v3, -0x1

    #@17
    :goto_17
    if-gez v3, :cond_1a

    #@19
    return-void

    #@1a
    .line 237
    :cond_1a
    sget-object v4, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@1c
    const/4 v5, 0x1

    #@1d
    if-eq v1, v5, :cond_2d

    #@1f
    add-int/lit8 v4, v1, -0x1

    #@21
    .line 239
    new-array v4, v4, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    #@23
    .line 240
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    add-int/lit8 v2, v3, 0x1

    #@28
    sub-int/2addr v1, v3

    #@29
    sub-int/2addr v1, v5

    #@2a
    .line 241
    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2d
    .line 243
    :cond_2d
    invoke-virtual {p0, v0, v4}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    return-void
.end method
