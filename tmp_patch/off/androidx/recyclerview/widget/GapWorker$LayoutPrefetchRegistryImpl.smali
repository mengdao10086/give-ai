.class Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .registers 8

    #@0
    if-ltz p1, :cond_3b

    #@2
    if-ltz p2, :cond_33

    #@4
    .line 121
    iget v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@6
    mul-int/lit8 v0, v0, 0x2

    #@8
    .line 122
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@a
    if-nez v1, :cond_16

    #@c
    const/4 v1, 0x4

    #@d
    new-array v1, v1, [I

    #@f
    .line 123
    iput-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@11
    const/4 v2, -0x1

    #@12
    .line 124
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    #@15
    goto :goto_24

    #@16
    .line 125
    :cond_16
    array-length v2, v1

    #@17
    if-lt v0, v2, :cond_24

    #@19
    mul-int/lit8 v2, v0, 0x2

    #@1b
    .line 127
    new-array v2, v2, [I

    #@1d
    iput-object v2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@1f
    .line 128
    array-length v3, v1

    #@20
    const/4 v4, 0x0

    #@21
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 132
    :cond_24
    :goto_24
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@26
    aput p1, v1, v0

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    .line 133
    aput p2, v1, v0

    #@2c
    .line 135
    iget p1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@2e
    add-int/lit8 p1, p1, 0x1

    #@30
    iput p1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@32
    return-void

    #@33
    .line 117
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@35
    const-string p2, "Pixel distance must be non-negative"

    #@37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw p1

    #@3b
    .line 113
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@3d
    const-string p2, "Layout positions must be non-negative"

    #@3f
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw p1
.end method

.method clearPrefetchPositions()V
    .registers 3

    #@0
    .line 152
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v1, -0x1

    #@5
    .line 153
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 155
    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@b
    return-void
.end method

.method collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 79
    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@3
    .line 80
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@5
    if-eqz v0, :cond_b

    #@7
    const/4 v1, -0x1

    #@8
    .line 81
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@b
    .line 84
    :cond_b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@d
    .line 85
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@f
    if-eqz v1, :cond_4d

    #@11
    if-eqz v0, :cond_4d

    #@13
    .line 87
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_4d

    #@19
    if-eqz p2, :cond_2d

    #@1b
    .line 91
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    #@1d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_3c

    #@23
    .line 92
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@25
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    #@2c
    goto :goto_3c

    #@2d
    .line 96
    :cond_2d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_3c

    #@33
    .line 97
    iget v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    #@35
    iget v2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    #@37
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@39
    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    #@3c
    .line 102
    :cond_3c
    :goto_3c
    iget v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@3e
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    #@40
    if-le v1, v2, :cond_4d

    #@42
    .line 103
    iget v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@44
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    #@46
    .line 104
    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    #@48
    .line 105
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@4a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    #@4d
    :cond_4d
    return-void
.end method

.method lastPrefetchIncludedPosition(I)Z
    .registers 6

    #@0
    .line 139
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_17

    #@5
    .line 140
    iget v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    #@7
    mul-int/lit8 v0, v0, 0x2

    #@9
    move v2, v1

    #@a
    :goto_a
    if-ge v2, v0, :cond_17

    #@c
    .line 142
    iget-object v3, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    #@e
    aget v3, v3, v2

    #@10
    if-ne v3, p1, :cond_14

    #@12
    const/4 p1, 0x1

    #@13
    return p1

    #@14
    :cond_14
    add-int/lit8 v2, v2, 0x2

    #@16
    goto :goto_a

    #@17
    :cond_17
    return v1
.end method

.method setPrefetchVector(II)V
    .registers 3

    #@0
    .line 74
    iput p1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    #@2
    .line 75
    iput p2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    #@4
    return-void
.end method
