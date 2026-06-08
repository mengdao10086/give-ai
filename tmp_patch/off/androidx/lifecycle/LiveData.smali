.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$AlwaysActiveObserver;,
        Landroidx/lifecycle/LiveData$ObserverWrapper;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field mActiveCount:I

.field private mChangingActiveState:Z

.field private volatile mData:Ljava/lang/Object;

.field final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 64
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    #@a
    .line 66
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    #@c
    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    #@11
    const/4 v0, 0x0

    #@12
    .line 70
    iput v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    #@14
    .line 77
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    #@16
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    #@18
    .line 84
    new-instance v1, Landroidx/lifecycle/LiveData$1;

    #@1a
    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    #@1d
    iput-object v1, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    #@1f
    .line 111
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    #@21
    const/4 v0, -0x1

    #@22
    .line 112
    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    #@24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    #@a
    .line 66
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    #@c
    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    #@11
    const/4 v0, 0x0

    #@12
    .line 70
    iput v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    #@14
    .line 77
    sget-object v1, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    #@16
    iput-object v1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    #@18
    .line 84
    new-instance v1, Landroidx/lifecycle/LiveData$1;

    #@1a
    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    #@1d
    iput-object v1, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    #@1f
    .line 103
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    #@21
    .line 104
    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    #@23
    return-void
.end method

.method static assertMainThread(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 486
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-void

    #@b
    .line 487
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "Cannot invoke "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p0

    #@18
    const-string v1, " on a background thread"

    #@1a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p0

    #@1e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
.end method

.method private considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    #@0
    .line 117
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 125
    :cond_5
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    .line 126
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    #@f
    return-void

    #@10
    .line 129
    :cond_10
    iget v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    #@12
    iget v1, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    #@14
    if-lt v0, v1, :cond_17

    #@16
    return-void

    #@17
    .line 132
    :cond_17
    iput v1, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    #@19
    .line 133
    iget-object p1, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    #@1b
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    #@1d
    invoke-interface {p1, v0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    #@20
    return-void
.end method


# virtual methods
.method changeActiveCounter(I)V
    .registers 6

    #@0
    .line 378
    iget v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    #@2
    add-int/2addr p1, v0

    #@3
    .line 379
    iput p1, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    #@5
    .line 380
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    #@7
    if-eqz p1, :cond_a

    #@9
    return-void

    #@a
    :cond_a
    const/4 p1, 0x1

    #@b
    .line 383
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    #@d
    :goto_d
    const/4 v1, 0x0

    #@e
    .line 385
    :try_start_e
    iget v2, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    #@10
    if-eq v0, v2, :cond_2d

    #@12
    if-nez v0, :cond_18

    #@14
    if-lez v2, :cond_18

    #@16
    move v3, p1

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v3, v1

    #@19
    :goto_19
    if-lez v0, :cond_1f

    #@1b
    if-nez v2, :cond_1f

    #@1d
    move v0, p1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v0, v1

    #@20
    :goto_20
    if-eqz v3, :cond_26

    #@22
    .line 390
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    #@25
    goto :goto_2b

    #@26
    :cond_26
    if-eqz v0, :cond_2b

    #@28
    .line 392
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->onInactive()V
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_30

    #@2b
    :cond_2b
    :goto_2b
    move v0, v2

    #@2c
    goto :goto_d

    #@2d
    .line 396
    :cond_2d
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    #@2f
    return-void

    #@30
    :catchall_30
    move-exception p1

    #@31
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    #@33
    .line 397
    throw p1
.end method

.method dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    #@0
    .line 138
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_8

    #@5
    .line 139
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    #@7
    return-void

    #@8
    .line 142
    :cond_8
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    .line 144
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    #@d
    if-eqz p1, :cond_14

    #@f
    .line 146
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    #@12
    const/4 p1, 0x0

    #@13
    goto :goto_33

    #@14
    .line 149
    :cond_14
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    #@16
    .line 150
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    #@19
    move-result-object v1

    #@1a
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_33

    #@20
    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljava/util/Map$Entry;

    #@26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroidx/lifecycle/LiveData$ObserverWrapper;

    #@2c
    invoke-direct {p0, v2}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    #@2f
    .line 152
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    #@31
    if-eqz v2, :cond_1a

    #@33
    .line 157
    :cond_33
    :goto_33
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    #@35
    if-nez v1, :cond_a

    #@37
    .line 158
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    #@39
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 322
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    #@2
    .line 323
    sget-object v1, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    #@4
    if-eq v0, v1, :cond_7

    #@6
    return-object v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    return-object v0
.end method

.method getVersion()I
    .registers 2

    #@0
    .line 330
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    #@2
    return v0
.end method

.method public hasActiveObservers()Z
    .registers 2

    #@0
    .line 373
    iget v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    #@2
    if-lez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public hasObservers()Z
    .registers 2

    #@0
    .line 363
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    #@2
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

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

.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "observe"

    #@2
    .line 191
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    #@5
    .line 192
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    #@f
    if-ne v0, v1, :cond_12

    #@11
    return-void

    #@12
    .line 196
    :cond_12
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    #@14
    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    #@17
    .line 197
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    #@19
    invoke-virtual {v1, p2, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object p2

    #@1d
    check-cast p2, Landroidx/lifecycle/LiveData$ObserverWrapper;

    #@1f
    if-eqz p2, :cond_30

    #@21
    .line 198
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_28

    #@27
    goto :goto_30

    #@28
    .line 199
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string p2, "Cannot add the same observer with different lifecycles"

    #@2c
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw p1

    #@30
    :cond_30
    :goto_30
    if-eqz p2, :cond_33

    #@32
    return-void

    #@33
    .line 205
    :cond_33
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@3a
    return-void
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "observeForever"

    #@2
    .line 224
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    #@5
    .line 225
    new-instance v0, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;

    #@7
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    #@a
    .line 226
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    #@c
    invoke-virtual {v1, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroidx/lifecycle/LiveData$ObserverWrapper;

    #@12
    .line 227
    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    #@14
    if-nez v1, :cond_1e

    #@16
    if-eqz p1, :cond_19

    #@18
    return-void

    #@19
    :cond_19
    const/4 p1, 0x1

    #@1a
    .line 234
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;->activeStateChanged(Z)V

    #@1d
    return-void

    #@1e
    .line 228
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@20
    const-string v0, "Cannot add the same observer with different lifecycles"

    #@22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw p1
.end method

.method protected onActive()V
    .registers 1

    #@0
    return-void
.end method

.method protected onInactive()V
    .registers 1

    #@0
    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 286
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 287
    :try_start_3
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    #@5
    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    #@7
    if-ne v1, v2, :cond_b

    #@9
    const/4 v1, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v1, 0x0

    #@c
    .line 288
    :goto_c
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    #@e
    .line 289
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    #@f
    if-nez v1, :cond_12

    #@11
    return-void

    #@12
    .line 293
    :cond_12
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    #@15
    move-result-object p1

    #@16
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    #@18
    invoke-virtual {p1, v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    #@1b
    return-void

    #@1c
    :catchall_1c
    move-exception p1

    #@1d
    .line 289
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    #@1e
    throw p1
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "removeObserver"

    #@2
    .line 244
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    #@5
    .line 245
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    #@7
    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    check-cast p1, Landroidx/lifecycle/LiveData$ObserverWrapper;

    #@d
    if-nez p1, :cond_10

    #@f
    return-void

    #@10
    .line 249
    :cond_10
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    #@13
    const/4 v0, 0x0

    #@14
    .line 250
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    #@17
    return-void
.end method

.method public removeObservers(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5

    #@0
    const-string v0, "removeObservers"

    #@2
    .line 261
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    #@5
    .line 262
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    #@7
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2d

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/util/Map$Entry;

    #@17
    .line 263
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroidx/lifecycle/LiveData$ObserverWrapper;

    #@1d
    invoke-virtual {v2, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_b

    #@23
    .line 264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroidx/lifecycle/Observer;

    #@29
    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    #@2c
    goto :goto_b

    #@2d
    :cond_2d
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    const-string v0, "setValue"

    #@2
    .line 306
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    #@5
    .line 307
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    #@b
    .line 308
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    #@d
    const/4 p1, 0x0

    #@e
    .line 309
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    #@11
    return-void
.end method
