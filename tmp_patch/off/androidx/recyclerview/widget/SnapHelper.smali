.class public abstract Landroidx/recyclerview/widget/SnapHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
.source "SnapHelper.java"


# static fields
.field static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;-><init>()V

    #@3
    .line 42
    new-instance v0, Landroidx/recyclerview/widget/SnapHelper$1;

    #@5
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/SnapHelper$1;-><init>(Landroidx/recyclerview/widget/SnapHelper;)V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@a
    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    #@0
    .line 123
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/SnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    #@7
    .line 124
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    #@d
    return-void
.end method

.method private setupCallbacks()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .line 112
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_15

    #@8
    .line 115
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@a
    iget-object v1, p0, Landroidx/recyclerview/widget/SnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@c
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    #@f
    .line 116
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@11
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    #@14
    return-void

    #@15
    .line 113
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    const-string v1, "An instance of OnFlingListener already set."

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
.end method

.method private snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .registers 6

    #@0
    .line 157
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 161
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_d

    #@c
    return v1

    #@d
    .line 166
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    #@10
    move-result p2

    #@11
    const/4 p3, -0x1

    #@12
    if-ne p2, p3, :cond_15

    #@14
    return v1

    #@15
    .line 171
    :cond_15
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    #@18
    .line 172
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    #@1b
    const/4 p1, 0x1

    #@1c
    return p1
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .line 93
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    if-eqz v0, :cond_a

    #@7
    .line 97
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;->destroyCallbacks()V

    #@a
    .line 99
    :cond_a
    iput-object p1, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c
    if-eqz p1, :cond_26

    #@e
    .line 101
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;->setupCallbacks()V

    #@11
    .line 102
    new-instance p1, Landroid/widget/Scroller;

    #@13
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    #@1b
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@1e
    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@21
    iput-object p1, p0, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    #@23
    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SnapHelper;->snapToTargetExistingView()V

    #@26
    :cond_26
    return-void
.end method

.method public abstract calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
.end method

.method public calculateScrollDistance(II)[I
    .registers 13

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 138
    iget-object v1, p0, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    const/high16 v6, -0x80000000

    #@9
    const v7, 0x7fffffff

    #@c
    const/high16 v8, -0x80000000

    #@e
    const v9, 0x7fffffff

    #@11
    move v4, p1

    #@12
    move v5, p2

    #@13
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    #@16
    .line 140
    iget-object p1, p0, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    #@18
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    #@1b
    move-result p1

    #@1c
    const/4 p2, 0x0

    #@1d
    aput p1, v0, p2

    #@1f
    .line 141
    iget-object p1, p0, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    #@21
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    #@24
    move-result p1

    #@25
    const/4 p2, 0x1

    #@26
    aput p1, v0, p2

    #@28
    return-object v0
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .registers 2

    #@0
    .line 209
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 224
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    #@2
    if-nez p1, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 227
    :cond_6
    new-instance p1, Landroidx/recyclerview/widget/SnapHelper$2;

    #@8
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/SnapHelper$2;-><init>(Landroidx/recyclerview/widget/SnapHelper;Landroid/content/Context;)V

    #@11
    return-object p1
.end method

.method public abstract findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
.end method

.method public abstract findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .registers 7

    #@0
    .line 65
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 69
    :cond_a
    iget-object v2, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@f
    move-result-object v2

    #@10
    if-nez v2, :cond_13

    #@12
    return v1

    #@13
    .line 73
    :cond_13
    iget-object v2, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@15
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    #@18
    move-result v2

    #@19
    .line 74
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@1c
    move-result v3

    #@1d
    if-gt v3, v2, :cond_25

    #@1f
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@22
    move-result v3

    #@23
    if-le v3, v2, :cond_2c

    #@25
    .line 75
    :cond_25
    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    #@28
    move-result p1

    #@29
    if-eqz p1, :cond_2c

    #@2b
    const/4 v1, 0x1

    #@2c
    :cond_2c
    return v1
.end method

.method snapToTargetExistingView()V
    .registers 5

    #@0
    .line 182
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 185
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    move-result-object v0

    #@9
    if-nez v0, :cond_c

    #@b
    return-void

    #@c
    .line 189
    :cond_c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    if-nez v1, :cond_13

    #@12
    return-void

    #@13
    .line 193
    :cond_13
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    #@16
    move-result-object v0

    #@17
    const/4 v1, 0x0

    #@18
    .line 194
    aget v1, v0, v1

    #@1a
    const/4 v2, 0x1

    #@1b
    if-nez v1, :cond_21

    #@1d
    aget v3, v0, v2

    #@1f
    if-eqz v3, :cond_28

    #@21
    .line 195
    :cond_21
    iget-object v3, p0, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@23
    aget v0, v0, v2

    #@25
    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    #@28
    :cond_28
    return-void
.end method
