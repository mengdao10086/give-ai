.class final Landroidx/viewpager2/widget/FakeDrag;
.super Ljava/lang/Object;
.source "FakeDrag.java"


# instance fields
.field private mActualDraggedDistance:I

.field private mFakeDragBeginTime:J

.field private mMaximumVelocity:I

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRequestedDragDistance:F

.field private final mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    #@5
    .line 46
    iput-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@7
    .line 47
    iput-object p3, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@9
    return-void
.end method

.method private addFakeMotionEvent(JIFF)V
    .registers 14

    #@0
    .line 134
    iget-wide v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    #@2
    const/4 v7, 0x0

    #@3
    move-wide v2, p1

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@a
    move-result-object p1

    #@b
    .line 135
    iget-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    invoke-virtual {p2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@10
    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    #@13
    return-void
.end method

.method private beginFakeVelocityTracker()V
    .registers 2

    #@0
    .line 124
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_1b

    #@4
    .line 125
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 126
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    #@c
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@13
    move-result-object v0

    #@14
    .line 127
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mMaximumVelocity:I

    #@1a
    goto :goto_1e

    #@1b
    .line 129
    :cond_1b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@1e
    :goto_1e
    return-void
.end method


# virtual methods
.method beginFakeDrag()Z
    .registers 8

    #@0
    .line 56
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isDragging()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_a

    #@9
    return v1

    #@a
    .line 59
    :cond_a
    iput v1, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    #@c
    int-to-float v0, v1

    #@d
    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    #@f
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    #@15
    .line 61
    invoke-direct {p0}, Landroidx/viewpager2/widget/FakeDrag;->beginFakeVelocityTracker()V

    #@18
    .line 63
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@1a
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyBeginFakeDrag()V

    #@1d
    .line 64
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@1f
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_2a

    #@25
    .line 66
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    #@2a
    .line 68
    :cond_2a
    iget-wide v2, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    #@2c
    const/4 v4, 0x0

    #@2d
    const/4 v5, 0x0

    #@2e
    const/4 v6, 0x0

    #@2f
    move-object v1, p0

    #@30
    invoke-direct/range {v1 .. v6}, Landroidx/viewpager2/widget/FakeDrag;->addFakeMotionEvent(JIFF)V

    #@33
    const/4 v0, 0x1

    #@34
    return v0
.end method

.method endFakeDrag()Z
    .registers 4

    #@0
    .line 102
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 107
    :cond_a
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@c
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyEndFakeDrag()V

    #@f
    .line 111
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@11
    .line 112
    iget v1, p0, Landroidx/viewpager2/widget/FakeDrag;->mMaximumVelocity:I

    #@13
    int-to-float v1, v1

    #@14
    const/16 v2, 0x3e8

    #@16
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@19
    .line 113
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@1c
    move-result v1

    #@1d
    float-to-int v1, v1

    #@1e
    .line 114
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@21
    move-result v0

    #@22
    float-to-int v0, v0

    #@23
    .line 116
    iget-object v2, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@25
    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_30

    #@2b
    .line 118
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    #@2d
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->snapToPage()V

    #@30
    :cond_30
    const/4 v0, 0x1

    #@31
    return v0
.end method

.method fakeDragBy(F)Z
    .registers 11

    #@0
    .line 74
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 80
    :cond_a
    iget v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    #@c
    sub-float/2addr v0, p1

    #@d
    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    #@f
    .line 82
    iget p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    #@11
    int-to-float p1, p1

    #@12
    sub-float/2addr v0, p1

    #@13
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@16
    move-result p1

    #@17
    .line 84
    iget v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    #@19
    add-int/2addr v0, p1

    #@1a
    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    #@1c
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1f
    move-result-wide v3

    #@20
    .line 87
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    #@22
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    #@25
    move-result v0

    #@26
    const/4 v8, 0x1

    #@27
    if-nez v0, :cond_2b

    #@29
    move v0, v8

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v0, v1

    #@2c
    :goto_2c
    if-eqz v0, :cond_30

    #@2e
    move v2, p1

    #@2f
    goto :goto_31

    #@30
    :cond_30
    move v2, v1

    #@31
    :goto_31
    if-eqz v0, :cond_34

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v1, p1

    #@35
    :goto_35
    const/4 p1, 0x0

    #@36
    if-eqz v0, :cond_3c

    #@38
    .line 92
    iget v5, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    #@3a
    move v6, v5

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move v6, p1

    #@3d
    :goto_3d
    if-eqz v0, :cond_40

    #@3f
    goto :goto_42

    #@40
    .line 93
    :cond_40
    iget p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    #@42
    :goto_42
    move v7, p1

    #@43
    .line 95
    iget-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@45
    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    #@48
    const/4 v5, 0x2

    #@49
    move-object v2, p0

    #@4a
    .line 96
    invoke-direct/range {v2 .. v7}, Landroidx/viewpager2/widget/FakeDrag;->addFakeMotionEvent(JIFF)V

    #@4d
    return v8
.end method

.method isFakeDragging()Z
    .registers 2

    #@0
    .line 51
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
