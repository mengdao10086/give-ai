.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.super Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameMetricsApi24Impl"
.end annotation


# static fields
.field private static final NANOS_PER_MS:I = 0xf4240

.field private static final NANOS_ROUNDING_VALUE:I = 0x7a120

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field mMetrics:[Landroid/util/SparseIntArray;

.field mTrackingFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    #@0
    .line 344
    invoke-direct {p0}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>()V

    #@3
    const/16 v0, 0x9

    #@5
    new-array v0, v0, [Landroid/util/SparseIntArray;

    #@7
    .line 339
    iput-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@9
    .line 340
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    #@10
    .line 348
    new-instance v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;

    #@12
    invoke-direct {v0, p0}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;-><init>(Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V

    #@15
    iput-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    #@17
    .line 345
    iput p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@19
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .registers 6

    #@0
    .line 411
    sget-object v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    #@2
    if-nez v0, :cond_1d

    #@4
    .line 412
    new-instance v0, Landroid/os/HandlerThread;

    #@6
    const-string v1, "FrameMetricsAggregator"

    #@8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@b
    sput-object v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    #@d
    .line 413
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@10
    .line 414
    new-instance v0, Landroid/os/Handler;

    #@12
    sget-object v1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    #@14
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1b
    sput-object v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandler:Landroid/os/Handler;

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    :goto_1e
    const/16 v1, 0x8

    #@20
    if-gt v0, v1, :cond_39

    #@22
    .line 417
    iget-object v1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@24
    aget-object v2, v1, v0

    #@26
    if-nez v2, :cond_36

    #@28
    iget v2, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@2a
    const/4 v3, 0x1

    #@2b
    shl-int/2addr v3, v0

    #@2c
    and-int/2addr v2, v3

    #@2d
    if-eqz v2, :cond_36

    #@2f
    .line 418
    new-instance v2, Landroid/util/SparseIntArray;

    #@31
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    #@34
    aput-object v2, v1, v0

    #@36
    :cond_36
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_1e

    #@39
    .line 421
    :cond_39
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3c
    move-result-object v0

    #@3d
    iget-object v1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    #@3f
    sget-object v2, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandler:Landroid/os/Handler;

    #@41
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    #@44
    .line 422
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    #@46
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@48
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@4b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e
    return-void
.end method

.method addDurationItem(Landroid/util/SparseIntArray;J)V
    .registers 8

    #@0
    if-eqz p1, :cond_1a

    #@2
    const-wide/32 v0, 0x7a120

    #@5
    add-long/2addr v0, p2

    #@6
    const-wide/32 v2, 0xf4240

    #@9
    .line 400
    div-long/2addr v0, v2

    #@a
    long-to-int v0, v0

    #@b
    const-wide/16 v1, 0x0

    #@d
    cmp-long p2, p2, v1

    #@f
    if-ltz p2, :cond_1a

    #@11
    .line 403
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    #@14
    move-result p2

    #@15
    add-int/lit8 p2, p2, 0x1

    #@17
    .line 404
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@1a
    :cond_1a
    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .registers 2

    #@0
    .line 453
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@2
    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .registers 5

    #@0
    .line 427
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1d

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@12
    .line 428
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    if-ne v2, p1, :cond_6

    #@18
    .line 429
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1d
    .line 433
    :cond_1d
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@20
    move-result-object p1

    #@21
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    #@23
    invoke-virtual {p1, v0}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    #@26
    .line 434
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@28
    return-object p1
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .registers 3

    #@0
    .line 458
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@2
    const/16 v1, 0x9

    #@4
    new-array v1, v1, [Landroid/util/SparseIntArray;

    #@6
    .line 459
    iput-object v1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@8
    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .registers 4

    #@0
    .line 439
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_2f

    #@a
    .line 441
    iget-object v1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@12
    .line 442
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/app/Activity;

    #@18
    .line 443
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_2c

    #@1e
    .line 444
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    #@24
    invoke-virtual {v1, v2}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    #@27
    .line 445
    iget-object v1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    #@2e
    goto :goto_8

    #@2f
    .line 448
    :cond_2f
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@31
    return-object v0
.end method
