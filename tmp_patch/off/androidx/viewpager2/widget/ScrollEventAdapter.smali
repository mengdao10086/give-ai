.class final Landroidx/viewpager2/widget/ScrollEventAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ScrollEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;
    }
.end annotation


# static fields
.field private static final NO_POSITION:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_IN_PROGRESS_FAKE_DRAG:I = 0x4

.field private static final STATE_IN_PROGRESS_IMMEDIATE_SCROLL:I = 0x3

.field private static final STATE_IN_PROGRESS_MANUAL_DRAG:I = 0x1

.field private static final STATE_IN_PROGRESS_SMOOTH_SCROLL:I = 0x2


# instance fields
.field private mAdapterState:I

.field private mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mDataSetChangeHappened:Z

.field private mDispatchSelected:Z

.field private mDragStartPosition:I

.field private mFakeDragging:Z

.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollHappened:Z

.field private mScrollState:I

.field private mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

.field private mTarget:I

.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 2

    #@0
    .line 77
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    #@3
    .line 78
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    #@5
    .line 79
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@9
    .line 81
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    #@f
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@11
    .line 82
    new-instance p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@13
    invoke-direct {p1}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;-><init>()V

    #@16
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@18
    .line 83
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    #@1b
    return-void
.end method

.method private dispatchScrolled(IFI)V
    .registers 5

    #@0
    .line 437
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 438
    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    #@7
    :cond_7
    return-void
.end method

.method private dispatchSelected(I)V
    .registers 3

    #@0
    .line 431
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 432
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    #@7
    :cond_7
    return-void
.end method

.method private dispatchStateChanged(I)V
    .registers 4

    #@0
    .line 416
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_a

    #@5
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@7
    if-nez v0, :cond_a

    #@9
    return-void

    #@a
    .line 420
    :cond_a
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@c
    if-ne v0, p1, :cond_f

    #@e
    return-void

    #@f
    .line 424
    :cond_f
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@11
    .line 425
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    #@13
    if-eqz v0, :cond_18

    #@15
    .line 426
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    #@18
    :cond_18
    return-void
.end method

.method private getPosition()I
    .registers 2

    #@0
    .line 443
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private isInAnyDraggingState()Z
    .registers 4

    #@0
    .line 392
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_a

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v0, v2, :cond_9

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v1, 0x0

    #@a
    :cond_a
    :goto_a
    return v1
.end method

.method private resetState()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 87
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@3
    .line 88
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@5
    .line 89
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@7
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    #@a
    const/4 v1, -0x1

    #@b
    .line 90
    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    #@d
    .line 91
    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    #@f
    .line 92
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    #@11
    .line 93
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    #@13
    .line 94
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    #@15
    .line 95
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    #@17
    return-void
.end method

.method private startDrag(Z)V
    .registers 4

    #@0
    .line 287
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    #@2
    const/4 v0, 0x1

    #@3
    if-eqz p1, :cond_7

    #@5
    const/4 p1, 0x4

    #@6
    goto :goto_8

    #@7
    :cond_7
    move p1, v0

    #@8
    .line 288
    :goto_8
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@a
    .line 289
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    #@c
    const/4 v1, -0x1

    #@d
    if-eq p1, v1, :cond_14

    #@f
    .line 292
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    #@11
    .line 294
    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    #@13
    goto :goto_1e

    #@14
    .line 295
    :cond_14
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    #@16
    if-ne p1, v1, :cond_1e

    #@18
    .line 297
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getPosition()I

    #@1b
    move-result p1

    #@1c
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    #@1e
    .line 299
    :cond_1e
    :goto_1e
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    #@21
    return-void
.end method

.method private updateScrollEventValues()V
    .registers 10

    #@0
    .line 224
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@2
    .line 226
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    #@7
    move-result v1

    #@8
    iput v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@a
    .line 227
    iget v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_13

    #@f
    .line 228
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    #@12
    return-void

    #@13
    .line 231
    :cond_13
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@15
    iget v2, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@17
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@1a
    move-result-object v1

    #@1b
    if-nez v1, :cond_21

    #@1d
    .line 233
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    #@20
    return-void

    #@21
    .line 237
    :cond_21
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@23
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    #@26
    move-result v2

    #@27
    .line 238
    iget-object v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@29
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    #@2c
    move-result v3

    #@2d
    .line 239
    iget-object v4, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2f
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    #@32
    move-result v4

    #@33
    .line 240
    iget-object v5, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@35
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    #@38
    move-result v5

    #@39
    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3c
    move-result-object v6

    #@3d
    .line 243
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    #@3f
    if-eqz v7, :cond_4f

    #@41
    .line 244
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    #@43
    .line 245
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@45
    add-int/2addr v2, v7

    #@46
    .line 246
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@48
    add-int/2addr v3, v7

    #@49
    .line 247
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@4b
    add-int/2addr v4, v7

    #@4c
    .line 248
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@4e
    add-int/2addr v5, v6

    #@4f
    .line 251
    :cond_4f
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@52
    move-result v6

    #@53
    add-int/2addr v6, v4

    #@54
    add-int/2addr v6, v5

    #@55
    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@58
    move-result v5

    #@59
    add-int/2addr v5, v2

    #@5a
    add-int/2addr v5, v3

    #@5b
    .line 254
    iget-object v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@5d
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    #@60
    move-result v3

    #@61
    const/4 v7, 0x1

    #@62
    const/4 v8, 0x0

    #@63
    if-nez v3, :cond_67

    #@65
    move v3, v7

    #@66
    goto :goto_68

    #@67
    :cond_67
    move v3, v8

    #@68
    :goto_68
    if-eqz v3, :cond_81

    #@6a
    .line 258
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@6d
    move-result v1

    #@6e
    sub-int/2addr v1, v2

    #@6f
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@71
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@74
    move-result v2

    #@75
    sub-int/2addr v1, v2

    #@76
    .line 259
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    #@78
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    #@7b
    move-result v2

    #@7c
    if-eqz v2, :cond_7f

    #@7e
    neg-int v1, v1

    #@7f
    :cond_7f
    move v6, v5

    #@80
    goto :goto_8d

    #@81
    .line 264
    :cond_81
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@84
    move-result v1

    #@85
    sub-int/2addr v1, v4

    #@86
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@88
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@8b
    move-result v2

    #@8c
    sub-int/2addr v1, v2

    #@8d
    :goto_8d
    neg-int v1, v1

    #@8e
    .line 267
    iput v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@90
    .line 268
    iget v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@92
    if-gez v1, :cond_c1

    #@94
    .line 271
    new-instance v1, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;

    #@96
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@98
    invoke-direct {v1, v2}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    #@9b
    invoke-virtual {v1}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mayHaveInterferingAnimations()Z

    #@9e
    move-result v1

    #@9f
    if-eqz v1, :cond_a9

    #@a1
    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a3
    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    #@a5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v0

    #@a9
    .line 280
    :cond_a9
    new-instance v1, Ljava/lang/IllegalStateException;

    #@ab
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@ad
    new-array v3, v7, [Ljava/lang/Object;

    #@af
    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@b1
    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v0

    #@b5
    aput-object v0, v3, v8

    #@b7
    const-string v0, "Page can only be offset by a positive amount, not by %d"

    #@b9
    .line 280
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@bc
    move-result-object v0

    #@bd
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c0
    throw v1

    #@c1
    :cond_c1
    if-nez v6, :cond_c5

    #@c3
    const/4 v1, 0x0

    #@c4
    goto :goto_ca

    #@c5
    .line 283
    :cond_c5
    iget v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@c7
    int-to-float v1, v1

    #@c8
    int-to-float v2, v6

    #@c9
    div-float/2addr v1, v2

    #@ca
    :goto_ca
    iput v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    #@cc
    return-void
.end method


# virtual methods
.method getRelativeScrollPosition()D
    .registers 5

    #@0
    .line 407
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    #@3
    .line 408
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@5
    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@7
    int-to-double v0, v0

    #@8
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@a
    iget v2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    #@c
    float-to-double v2, v2

    #@d
    add-double/2addr v0, v2

    #@e
    return-wide v0
.end method

.method getScrollState()I
    .registers 2

    #@0
    .line 360
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@2
    return v0
.end method

.method isDragging()Z
    .registers 3

    #@0
    .line 375
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    :goto_7
    return v1
.end method

.method isFakeDragging()Z
    .registers 2

    #@0
    .line 383
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    #@2
    return v0
.end method

.method isIdle()Z
    .registers 2

    #@0
    .line 367
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@2
    if-nez v0, :cond_6

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

.method notifyBeginFakeDrag()V
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    .line 328
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@3
    const/4 v0, 0x1

    #@4
    .line 329
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->startDrag(Z)V

    #@7
    return-void
.end method

.method notifyDataSetChangeHappened()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 303
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    #@3
    return-void
.end method

.method notifyEndFakeDrag()V
    .registers 4

    #@0
    .line 336
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isDragging()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    .line 340
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    #@e
    .line 341
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    #@11
    .line 342
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@13
    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@15
    if-nez v1, :cond_2d

    #@17
    .line 344
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@19
    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@1b
    iget v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    #@1d
    if-eq v1, v2, :cond_26

    #@1f
    .line 345
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@21
    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@23
    invoke-direct {p0, v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    #@26
    .line 347
    :cond_26
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    #@29
    .line 348
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    #@2c
    goto :goto_31

    #@2d
    :cond_2d
    const/4 v0, 0x2

    #@2e
    .line 351
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    #@31
    :goto_31
    return-void
.end method

.method notifyProgrammaticScroll(IZ)V
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    if-eqz p2, :cond_5

    #@3
    move p2, v0

    #@4
    goto :goto_6

    #@5
    :cond_5
    const/4 p2, 0x3

    #@6
    .line 310
    :goto_6
    iput p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@8
    const/4 p2, 0x0

    #@9
    .line 315
    iput-boolean p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    #@b
    .line 316
    iget v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    #@d
    if-eq v1, p1, :cond_10

    #@f
    const/4 p2, 0x1

    #@10
    .line 317
    :cond_10
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    #@12
    .line 318
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    #@15
    if-eqz p2, :cond_1a

    #@17
    .line 320
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    #@1a
    :cond_1a
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 8

    #@0
    .line 105
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    if-ne p1, v1, :cond_a

    #@6
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@8
    if-eq p1, v1, :cond_10

    #@a
    :cond_a
    if-ne p2, v1, :cond_10

    #@c
    .line 108
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->startDrag(Z)V

    #@f
    return-void

    #@10
    .line 114
    :cond_10
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isInAnyDraggingState()Z

    #@13
    move-result p1

    #@14
    const/4 v2, 0x2

    #@15
    if-eqz p1, :cond_23

    #@17
    if-ne p2, v2, :cond_23

    #@19
    .line 116
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    #@1b
    if-eqz p1, :cond_22

    #@1d
    .line 117
    invoke-direct {p0, v2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    #@20
    .line 119
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    #@22
    :cond_22
    return-void

    #@23
    .line 125
    :cond_23
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isInAnyDraggingState()Z

    #@26
    move-result p1

    #@27
    const/4 v3, -0x1

    #@28
    if-eqz p1, :cond_61

    #@2a
    if-nez p2, :cond_61

    #@2c
    .line 127
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    #@2f
    .line 128
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    #@31
    if-nez p1, :cond_42

    #@33
    .line 133
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@35
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@37
    if-eq p1, v3, :cond_59

    #@39
    .line 134
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@3b
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@3d
    const/4 v4, 0x0

    #@3e
    invoke-direct {p0, p1, v4, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchScrolled(IFI)V

    #@41
    goto :goto_59

    #@42
    .line 137
    :cond_42
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@44
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@46
    if-nez p1, :cond_58

    #@48
    .line 145
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    #@4a
    iget-object v4, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@4c
    iget v4, v4, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@4e
    if-eq p1, v4, :cond_59

    #@50
    .line 146
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@52
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@54
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    #@57
    goto :goto_59

    #@58
    :cond_58
    move v1, v0

    #@59
    :cond_59
    :goto_59
    if-eqz v1, :cond_61

    #@5b
    .line 152
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    #@5e
    .line 153
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    #@61
    .line 157
    :cond_61
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@63
    if-ne p1, v2, :cond_91

    #@65
    if-nez p2, :cond_91

    #@67
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    #@69
    if-eqz p1, :cond_91

    #@6b
    .line 159
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    #@6e
    .line 160
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@70
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@72
    if-nez p1, :cond_91

    #@74
    .line 161
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    #@76
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@78
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@7a
    if-eq p1, p2, :cond_8b

    #@7c
    .line 162
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@7e
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@80
    if-ne p1, v3, :cond_84

    #@82
    move p1, v0

    #@83
    goto :goto_88

    #@84
    :cond_84
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@86
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@88
    :goto_88
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    #@8b
    .line 165
    :cond_8b
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    #@8e
    .line 166
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    #@91
    :cond_91
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 7

    #@0
    const/4 p1, 0x1

    #@1
    .line 177
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    #@3
    .line 178
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    #@6
    .line 180
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    #@8
    const/4 v1, -0x1

    #@9
    const/4 v2, 0x0

    #@a
    if-eqz v0, :cond_3f

    #@c
    .line 182
    iput-boolean v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    #@e
    if-gtz p3, :cond_22

    #@10
    if-nez p3, :cond_20

    #@12
    if-gez p2, :cond_16

    #@14
    move p2, p1

    #@15
    goto :goto_17

    #@16
    :cond_16
    move p2, v2

    #@17
    .line 183
    :goto_17
    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    #@19
    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    #@1c
    move-result p3

    #@1d
    if-ne p2, p3, :cond_20

    #@1f
    goto :goto_22

    #@20
    :cond_20
    move p2, v2

    #@21
    goto :goto_23

    #@22
    :cond_22
    :goto_22
    move p2, p1

    #@23
    :goto_23
    if-eqz p2, :cond_31

    #@25
    .line 187
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@27
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@29
    if-eqz p2, :cond_31

    #@2b
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@2d
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@2f
    add-int/2addr p2, p1

    #@30
    goto :goto_35

    #@31
    :cond_31
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@33
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@35
    :goto_35
    iput p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    #@37
    .line 189
    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    #@39
    if-eq p3, p2, :cond_4d

    #@3b
    .line 190
    invoke-direct {p0, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    #@3e
    goto :goto_4d

    #@3f
    .line 192
    :cond_3f
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    #@41
    if-nez p2, :cond_4d

    #@43
    .line 195
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@45
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@47
    if-ne p2, v1, :cond_4a

    #@49
    move p2, v2

    #@4a
    .line 197
    :cond_4a
    invoke-direct {p0, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    #@4d
    .line 201
    :cond_4d
    :goto_4d
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@4f
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@51
    if-ne p2, v1, :cond_55

    #@53
    move p2, v2

    #@54
    goto :goto_59

    #@55
    :cond_55
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@57
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@59
    :goto_59
    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@5b
    iget p3, p3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    #@5d
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@5f
    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@61
    invoke-direct {p0, p2, p3, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchScrolled(IFI)V

    #@64
    .line 206
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@66
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    #@68
    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    #@6a
    if-eq p2, p3, :cond_6e

    #@6c
    if-ne p3, v1, :cond_7e

    #@6e
    :cond_6e
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    #@70
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    #@72
    if-nez p2, :cond_7e

    #@74
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    #@76
    if-eq p2, p1, :cond_7e

    #@78
    .line 214
    invoke-direct {p0, v2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    #@7b
    .line 215
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    #@7e
    :cond_7e
    return-void
.end method

.method setOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .registers 2

    #@0
    .line 356
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    #@2
    return-void
.end method
