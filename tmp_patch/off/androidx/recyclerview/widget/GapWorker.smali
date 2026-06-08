.class final Landroidx/recyclerview/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Landroidx/recyclerview/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/recyclerview/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    #@7
    .line 190
    new-instance v0, Landroidx/recyclerview/widget/GapWorker$1;

    #@9
    invoke-direct {v0}, Landroidx/recyclerview/widget/GapWorker$1;-><init>()V

    #@c
    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    #@e
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@a
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    #@11
    return-void
.end method

.method private buildTaskList()V
    .registers 12

    #@0
    .line 217
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    move v3, v2

    #@9
    :goto_9
    if-ge v2, v0, :cond_26

    #@b
    .line 220
    iget-object v4, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    #@13
    .line 221
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_23

    #@19
    .line 222
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    #@1b
    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    #@1e
    .line 223
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    #@20
    iget v4, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@22
    add-int/2addr v3, v4

    #@23
    :cond_23
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_9

    #@26
    .line 228
    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@2b
    move v2, v1

    #@2c
    move v3, v2

    #@2d
    :goto_2d
    if-ge v2, v0, :cond_90

    #@2f
    .line 231
    iget-object v4, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    #@37
    .line 232
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_3e

    #@3d
    goto :goto_8d

    #@3e
    .line 237
    :cond_3e
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    #@40
    .line 238
    iget v6, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    #@42
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@45
    move-result v6

    #@46
    iget v7, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    #@48
    .line 239
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    #@4b
    move-result v7

    #@4c
    add-int/2addr v6, v7

    #@4d
    move v7, v1

    #@4e
    .line 240
    :goto_4e
    iget v8, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@50
    mul-int/lit8 v8, v8, 0x2

    #@52
    if-ge v7, v8, :cond_8d

    #@54
    .line 242
    iget-object v8, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@59
    move-result v8

    #@5a
    if-lt v3, v8, :cond_67

    #@5c
    .line 243
    new-instance v8, Landroidx/recyclerview/widget/GapWorker$Task;

    #@5e
    invoke-direct {v8}, Landroidx/recyclerview/widget/GapWorker$Task;-><init>()V

    #@61
    .line 244
    iget-object v9, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@66
    goto :goto_6f

    #@67
    .line 246
    :cond_67
    iget-object v8, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v8

    #@6d
    check-cast v8, Landroidx/recyclerview/widget/GapWorker$Task;

    #@6f
    .line 248
    :goto_6f
    iget-object v9, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@71
    add-int/lit8 v10, v7, 0x1

    #@73
    aget v9, v9, v10

    #@75
    if-gt v9, v6, :cond_79

    #@77
    const/4 v10, 0x1

    #@78
    goto :goto_7a

    #@79
    :cond_79
    move v10, v1

    #@7a
    .line 250
    :goto_7a
    iput-boolean v10, v8, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    #@7c
    .line 251
    iput v6, v8, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    #@7e
    .line 252
    iput v9, v8, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    #@80
    .line 253
    iput-object v4, v8, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    #@82
    .line 254
    iget-object v9, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@84
    aget v9, v9, v7

    #@86
    iput v9, v8, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    #@88
    add-int/lit8 v3, v3, 0x1

    #@8a
    add-int/lit8 v7, v7, 0x2

    #@8c
    goto :goto_4e

    #@8d
    :cond_8d
    :goto_8d
    add-int/lit8 v2, v2, 0x1

    #@8f
    goto :goto_2d

    #@90
    .line 261
    :cond_90
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    #@92
    sget-object v1, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    #@94
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@97
    return-void
.end method

.method private flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V
    .registers 7

    #@0
    .line 344
    iget-boolean v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    const-wide v0, 0x7fffffffffffffffL

    #@9
    goto :goto_b

    #@a
    :cond_a
    move-wide v0, p2

    #@b
    .line 345
    :goto_b
    iget-object v2, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    #@d
    iget p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    #@f
    invoke-direct {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    move-result-object p1

    #@13
    if-eqz p1, :cond_30

    #@15
    .line 347
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    #@17
    if-eqz v0, :cond_30

    #@19
    .line 349
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_30

    #@1f
    .line 350
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_30

    #@25
    .line 351
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    #@27
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2a
    move-result-object p1

    #@2b
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    #@2d
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V

    #@30
    :cond_30
    return-void
.end method

.method private flushTasksWithDeadline(J)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 356
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1f

    #@9
    .line 357
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/recyclerview/widget/GapWorker$Task;

    #@11
    .line 358
    iget-object v2, v1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    #@13
    if-nez v2, :cond_16

    #@15
    goto :goto_1f

    #@16
    .line 361
    :cond_16
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GapWorker;->flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V

    #@19
    .line 362
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GapWorker$Task;->clear()V

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_1

    #@1f
    :cond_1f
    :goto_1f
    return-void
.end method

.method static isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 7

    #@0
    .line 265
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_23

    #@a
    .line 267
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@c
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    #@f
    move-result-object v3

    #@10
    .line 268
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@13
    move-result-object v3

    #@14
    .line 270
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    #@16
    if-ne v4, p1, :cond_20

    #@18
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_20

    #@1e
    const/4 p0, 0x1

    #@1f
    return p0

    #@20
    :cond_20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_8

    #@23
    :cond_23
    return v1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V
    .registers 7

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 316
    :cond_3
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    #@5
    if-eqz v0, :cond_12

    #@7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@9
    .line 317
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_12

    #@f
    .line 320
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    #@12
    .line 324
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    #@14
    const/4 v1, 0x1

    #@15
    .line 325
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    #@18
    .line 327
    iget v1, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@1a
    if-eqz v1, :cond_42

    #@1c
    :try_start_1c
    const-string v1, "RV Nested Prefetch"

    #@1e
    .line 329
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@21
    .line 330
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@23
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@25
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$State;->prepareForNestedPrefetch(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    #@28
    const/4 v1, 0x0

    #@29
    .line 331
    :goto_29
    iget v2, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@2b
    mul-int/lit8 v2, v2, 0x2

    #@2d
    if-ge v1, v2, :cond_39

    #@2f
    .line 334
    iget-object v2, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@31
    aget v2, v2, v1

    #@33
    .line 335
    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_3d

    #@36
    add-int/lit8 v1, v1, 0x2

    #@38
    goto :goto_29

    #@39
    .line 338
    :cond_39
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@3c
    goto :goto_42

    #@3d
    :catchall_3d
    move-exception p1

    #@3e
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@41
    .line 339
    throw p1

    #@42
    :cond_42
    :goto_42
    return-void
.end method

.method private prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 7

    #@0
    .line 279
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/GapWorker;->isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 284
    :cond_8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@a
    const/4 v1, 0x0

    #@b
    .line 287
    :try_start_b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    #@e
    .line 288
    invoke-virtual {v0, p2, v1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@11
    move-result-object p2

    #@12
    if-eqz p2, :cond_29

    #@14
    .line 292
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    #@17
    move-result p3

    #@18
    if-eqz p3, :cond_26

    #@1a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    #@1d
    move-result p3

    #@1e
    if-nez p3, :cond_26

    #@20
    .line 295
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@22
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    #@25
    goto :goto_29

    #@26
    .line 301
    :cond_26
    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2d

    #@29
    .line 305
    :cond_29
    :goto_29
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    #@2c
    return-object p2

    #@2d
    :catchall_2d
    move-exception p2

    #@2e
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    #@31
    .line 306
    throw p2
.end method


# virtual methods
.method public add(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    #@0
    .line 163
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 8

    #@0
    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 181
    iget-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    #@8
    const-wide/16 v2, 0x0

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_17

    #@e
    .line 182
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    #@14
    .line 183
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    #@17
    .line 187
    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    #@19
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    #@1c
    return-void
.end method

.method prefetch(J)V
    .registers 3

    #@0
    .line 367
    invoke-direct {p0}, Landroidx/recyclerview/widget/GapWorker;->buildTaskList()V

    #@3
    .line 368
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker;->flushTasksWithDeadline(J)V

    #@6
    return-void
.end method

.method public remove(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    #@0
    .line 167
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public run()V
    .registers 9

    #@0
    const-wide/16 v0, 0x0

    #@2
    :try_start_2
    const-string v2, "RV Prefetch"

    #@4
    .line 374
    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@7
    .line 376
    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@c
    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_4f

    #@d
    if-eqz v2, :cond_15

    #@f
    .line 403
    :goto_f
    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    #@11
    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@14
    return-void

    #@15
    .line 383
    :cond_15
    :try_start_15
    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v2

    #@1b
    const/4 v3, 0x0

    #@1c
    move-wide v4, v0

    #@1d
    :goto_1d
    if-ge v3, v2, :cond_38

    #@1f
    .line 386
    iget-object v6, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    #@27
    .line 387
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    #@2a
    move-result v7

    #@2b
    if-nez v7, :cond_35

    #@2d
    .line 388
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getDrawingTime()J

    #@30
    move-result-wide v6

    #@31
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@34
    move-result-wide v4

    #@35
    :cond_35
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_1d

    #@38
    :cond_38
    cmp-long v2, v4, v0

    #@3a
    if-nez v2, :cond_3d

    #@3c
    goto :goto_f

    #@3d
    .line 397
    :cond_3d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@3f
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@42
    move-result-wide v2

    #@43
    iget-wide v4, p0, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    #@45
    add-long/2addr v2, v4

    #@46
    .line 399
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/GapWorker;->prefetch(J)V
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_4f

    #@49
    .line 403
    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    #@4b
    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@4e
    return-void

    #@4f
    :catchall_4f
    move-exception v2

    #@50
    .line 403
    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    #@52
    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@55
    .line 405
    throw v2
.end method
