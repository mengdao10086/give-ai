.class public final Lio/reactivex/internal/operators/observable/ObservableCache;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableCache.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCache$Node;,
        Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

.field static final TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;


# instance fields
.field final capacityHint:I

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final head:Lio/reactivex/internal/operators/observable/ObservableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile size:J

.field tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field tailOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@3
    .line 50
    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@5
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@7
    .line 56
    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableCache;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@9
    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 95
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 96
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->capacityHint:I

    #@5
    .line 97
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@a
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    .line 98
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@e
    invoke-direct {p1, p2}, Lio/reactivex/internal/operators/observable/ObservableCache$Node;-><init>(I)V

    #@11
    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->head:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@13
    .line 100
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@15
    .line 101
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    #@17
    sget-object p2, Lio/reactivex/internal/operators/observable/ObservableCache;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@19
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@1c
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 148
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@8
    .line 149
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    return-void

    #@d
    .line 152
    :cond_d
    array-length v1, v0

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    .line 155
    new-array v2, v2, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@12
    const/4 v3, 0x0

    #@13
    .line 156
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 157
    aput-object p1, v2, v1

    #@18
    .line 159
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    invoke-static {v1, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    return-void
.end method

.method cachedEventCount()J
    .registers 3

    #@0
    .line 138
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->size:J

    #@2
    return-wide v0
.end method

.method hasObservers()Z
    .registers 2

    #@0
    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@8
    array-length v0, v0

    #@9
    if-eqz v0, :cond_d

    #@b
    const/4 v0, 0x1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0
.end method

.method isConnected()Z
    .registers 2

    #@0
    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onComplete()V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 323
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->done:Z

    #@3
    .line 324
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@d
    array-length v1, v0

    #@e
    const/4 v2, 0x0

    #@f
    :goto_f
    if-ge v2, v1, :cond_19

    #@11
    aget-object v3, v0, v2

    #@13
    .line 325
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableCache;->replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_f

    #@19
    :cond_19
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 313
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->error:Ljava/lang/Throwable;

    #@2
    const/4 p1, 0x1

    #@3
    .line 314
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->done:Z

    #@5
    .line 315
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableCache;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@9
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@f
    array-length v0, p1

    #@10
    const/4 v1, 0x0

    #@11
    :goto_11
    if-ge v1, v0, :cond_1b

    #@13
    aget-object v2, p1, v1

    #@15
    .line 316
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableCache;->replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_11

    #@1b
    :cond_1b
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 292
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tailOffset:I

    #@2
    .line 294
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->capacityHint:I

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x1

    #@6
    if-ne v0, v1, :cond_1a

    #@8
    .line 295
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@a
    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$Node;-><init>(I)V

    #@d
    .line 296
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->values:[Ljava/lang/Object;

    #@f
    aput-object p1, v0, v2

    #@11
    .line 297
    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tailOffset:I

    #@13
    .line 298
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@15
    iput-object v1, p1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->next:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@17
    .line 299
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@19
    goto :goto_23

    #@1a
    .line 301
    :cond_1a
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@1c
    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->values:[Ljava/lang/Object;

    #@1e
    aput-object p1, v1, v0

    #@20
    add-int/2addr v0, v3

    #@21
    .line 302
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tailOffset:I

    #@23
    .line 304
    :goto_23
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->size:J

    #@25
    const-wide/16 v3, 0x1

    #@27
    add-long/2addr v0, v3

    #@28
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->size:J

    #@2a
    .line 305
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object p1

    #@30
    check-cast p1, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@32
    array-length v0, p1

    #@33
    :goto_33
    if-ge v2, v0, :cond_3d

    #@35
    aget-object v1, p1, v2

    #@37
    .line 306
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableCache;->replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    #@3a
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_33

    #@3d
    :cond_3d
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    #@0
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 172
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@8
    .line 173
    array-length v1, v0

    #@9
    if-nez v1, :cond_c

    #@b
    return-void

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    move v3, v2

    #@e
    :goto_e
    if-ge v3, v1, :cond_18

    #@10
    .line 180
    aget-object v4, v0, v3

    #@12
    if-ne v4, p1, :cond_15

    #@14
    goto :goto_19

    #@15
    :cond_15
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_e

    #@18
    :cond_18
    const/4 v3, -0x1

    #@19
    :goto_19
    if-gez v3, :cond_1c

    #@1b
    return-void

    #@1c
    :cond_1c
    const/4 v4, 0x1

    #@1d
    if-ne v1, v4, :cond_22

    #@1f
    .line 192
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@21
    goto :goto_31

    #@22
    :cond_22
    add-int/lit8 v5, v1, -0x1

    #@24
    .line 194
    new-array v5, v5, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@26
    .line 195
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    add-int/lit8 v2, v3, 0x1

    #@2b
    sub-int/2addr v1, v3

    #@2c
    sub-int/2addr v1, v4

    #@2d
    .line 196
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    move-object v1, v5

    #@31
    .line 199
    :goto_31
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    #@33
    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    return-void
.end method

.method replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 212
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->getAndIncrement()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 219
    :cond_7
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->index:J

    #@9
    .line 220
    iget v2, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->offset:I

    #@b
    .line 221
    iget-object v3, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@d
    .line 222
    iget-object v4, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->downstream:Lio/reactivex/Observer;

    #@f
    .line 223
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->capacityHint:I

    #@11
    const/4 v6, 0x1

    #@12
    move v7, v6

    #@13
    .line 227
    :cond_13
    :goto_13
    iget-boolean v8, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->disposed:Z

    #@15
    const/4 v9, 0x0

    #@16
    if-eqz v8, :cond_1b

    #@18
    .line 228
    iput-object v9, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@1a
    return-void

    #@1b
    .line 233
    :cond_1b
    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->done:Z

    #@1d
    .line 235
    iget-wide v10, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->size:J

    #@1f
    cmp-long v10, v10, v0

    #@21
    const/4 v11, 0x0

    #@22
    if-nez v10, :cond_26

    #@24
    move v10, v6

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v10, v11

    #@27
    :goto_27
    if-eqz v8, :cond_39

    #@29
    if-eqz v10, :cond_39

    #@2b
    .line 240
    iput-object v9, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@2d
    .line 242
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->error:Ljava/lang/Throwable;

    #@2f
    if-eqz p1, :cond_35

    #@31
    .line 244
    invoke-interface {v4, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@34
    goto :goto_38

    #@35
    .line 246
    :cond_35
    invoke-interface {v4}, Lio/reactivex/Observer;->onComplete()V

    #@38
    :goto_38
    return-void

    #@39
    :cond_39
    if-nez v10, :cond_4d

    #@3b
    if-ne v2, v5, :cond_41

    #@3d
    .line 256
    iget-object v2, v3, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->next:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@3f
    move-object v3, v2

    #@40
    move v2, v11

    #@41
    .line 262
    :cond_41
    iget-object v8, v3, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->values:[Ljava/lang/Object;

    #@43
    aget-object v8, v8, v2

    #@45
    invoke-interface {v4, v8}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@48
    add-int/2addr v2, v6

    #@49
    const-wide/16 v8, 0x1

    #@4b
    add-long/2addr v0, v8

    #@4c
    goto :goto_13

    #@4d
    .line 274
    :cond_4d
    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->index:J

    #@4f
    .line 275
    iput v2, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->offset:I

    #@51
    .line 276
    iput-object v3, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    #@53
    neg-int v7, v7

    #@54
    .line 278
    invoke-virtual {p1, v7}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->addAndGet(I)I

    #@57
    move-result v7

    #@58
    if-nez v7, :cond_13

    #@5a
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 106
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    #@2
    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableCache;)V

    #@5
    .line 107
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@8
    .line 108
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;->add(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    #@b
    .line 110
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@10
    move-result p1

    #@11
    if-nez p1, :cond_23

    #@13
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@15
    const/4 v1, 0x0

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@1a
    move-result p1

    #@1b
    if-eqz p1, :cond_23

    #@1d
    .line 111
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->source:Lio/reactivex/ObservableSource;

    #@1f
    invoke-interface {p1, p0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@22
    goto :goto_26

    #@23
    .line 113
    :cond_23
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;->replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    #@26
    :goto_26
    return-void
.end method
