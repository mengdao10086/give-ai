.class public abstract Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

.field private final mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

.field mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

.field private final mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    #@0
    .line 7582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 7590
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    #@5
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    #@a
    .line 7626
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;

    #@c
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    #@f
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    #@11
    .line 7666
    new-instance v2, Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@13
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/ViewBoundsCheck;-><init>(Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V

    #@16
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@18
    .line 7667
    new-instance v0, Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@1a
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ViewBoundsCheck;-><init>(Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V

    #@1d
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@1f
    const/4 v0, 0x0

    #@20
    .line 7672
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    #@22
    .line 7674
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    #@24
    .line 7680
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    #@26
    const/4 v0, 0x1

    #@27
    .line 7686
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    #@29
    .line 7688
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    #@2b
    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .registers 8

    #@0
    .line 8563
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object v0

    #@4
    if-nez p3, :cond_15

    #@6
    .line 8564
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@9
    move-result p3

    #@a
    if-eqz p3, :cond_d

    #@c
    goto :goto_15

    #@d
    .line 8573
    :cond_d
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@f
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@11
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@14
    goto :goto_1c

    #@15
    .line 8566
    :cond_15
    :goto_15
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@17
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@19
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->addToDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@1c
    .line 8575
    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object p3

    #@20
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@22
    .line 8576
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    #@25
    move-result v1

    #@26
    const/4 v2, 0x0

    #@27
    if-nez v1, :cond_90

    #@29
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_30

    #@2f
    goto :goto_90

    #@30
    .line 8586
    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@33
    move-result-object v1

    #@34
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@36
    if-ne v1, v3, :cond_78

    #@38
    .line 8588
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@3a
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    #@3d
    move-result v1

    #@3e
    const/4 v3, -0x1

    #@3f
    if-ne p2, v3, :cond_47

    #@41
    .line 8590
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@43
    invoke-virtual {p2}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@46
    move-result p2

    #@47
    :cond_47
    if-eq v1, v3, :cond_53

    #@49
    if-eq v1, p2, :cond_a6

    #@4b
    .line 8598
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@4d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@4f
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->moveView(II)V

    #@52
    goto :goto_a6

    #@53
    .line 8593
    :cond_53
    new-instance p2, Ljava/lang/IllegalStateException;

    #@55
    new-instance p3, Ljava/lang/StringBuilder;

    #@57
    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    #@59
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5e
    .line 8595
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    #@61
    move-result p1

    #@62
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object p1

    #@66
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@68
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@6b
    move-result-object p3

    #@6c
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object p1

    #@70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object p1

    #@74
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@77
    throw p2

    #@78
    .line 8601
    :cond_78
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@7a
    invoke-virtual {v1, p1, p2, v2}, Landroidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    #@7d
    const/4 p2, 0x1

    #@7e
    .line 8602
    iput-boolean p2, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    #@80
    .line 8603
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@82
    if-eqz p2, :cond_a6

    #@84
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    #@87
    move-result p2

    #@88
    if-eqz p2, :cond_a6

    #@8a
    .line 8604
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@8c
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    #@8f
    goto :goto_a6

    #@90
    .line 8577
    :cond_90
    :goto_90
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    #@93
    move-result v1

    #@94
    if-eqz v1, :cond_9a

    #@96
    .line 8578
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    #@99
    goto :goto_9d

    #@9a
    .line 8580
    :cond_9a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    #@9d
    .line 8582
    :goto_9d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@9f
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v1, p1, p2, v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    #@a6
    .line 8607
    :cond_a6
    :goto_a6
    iget-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    #@a8
    if-eqz p1, :cond_b1

    #@aa
    .line 8611
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@ac
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@af
    .line 8612
    iput-boolean v2, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    #@b1
    :cond_b1
    return-void
.end method

.method public static chooseSize(III)I
    .registers 5

    #@0
    .line 7876
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    .line 7877
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result p0

    #@8
    const/high16 v1, -0x80000000

    #@a
    if-eq v0, v1, :cond_15

    #@c
    const/high16 v1, 0x40000000    # 2.0f

    #@e
    if-eq v0, v1, :cond_14

    #@10
    .line 7885
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@13
    move-result p0

    #@14
    :cond_14
    return p0

    #@15
    .line 7882
    :cond_15
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@18
    move-result p1

    #@19
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@1c
    move-result p0

    #@1d
    return p0
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .registers 3

    #@0
    .line 8791
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    #@5
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .registers 9

    #@0
    sub-int/2addr p0, p2

    #@1
    const/4 p2, 0x0

    #@2
    .line 9446
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    #@5
    move-result p0

    #@6
    const/4 v0, -0x2

    #@7
    const/4 v1, -0x1

    #@8
    const/high16 v2, -0x80000000

    #@a
    const/high16 v3, 0x40000000    # 2.0f

    #@c
    if-eqz p4, :cond_1a

    #@e
    if-ltz p3, :cond_11

    #@10
    goto :goto_1c

    #@11
    :cond_11
    if-ne p3, v1, :cond_2f

    #@13
    if-eq p1, v2, :cond_20

    #@15
    if-eqz p1, :cond_2f

    #@17
    if-eq p1, v3, :cond_20

    #@19
    goto :goto_2f

    #@1a
    :cond_1a
    if-ltz p3, :cond_1e

    #@1c
    :goto_1c
    move p1, v3

    #@1d
    goto :goto_31

    #@1e
    :cond_1e
    if-ne p3, v1, :cond_22

    #@20
    :cond_20
    move p3, p0

    #@21
    goto :goto_31

    #@22
    :cond_22
    if-ne p3, v0, :cond_2f

    #@24
    if-eq p1, v2, :cond_2c

    #@26
    if-ne p1, v3, :cond_29

    #@28
    goto :goto_2c

    #@29
    :cond_29
    move p3, p0

    #@2a
    move p1, p2

    #@2b
    goto :goto_31

    #@2c
    :cond_2c
    :goto_2c
    move p3, p0

    #@2d
    move p1, v2

    #@2e
    goto :goto_31

    #@2f
    :cond_2f
    :goto_2f
    move p1, p2

    #@30
    move p3, p1

    #@31
    .line 9487
    :goto_31
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@34
    move-result p0

    #@35
    return p0
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    sub-int/2addr p0, p1

    #@1
    const/4 p1, 0x0

    #@2
    .line 9403
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    #@5
    move-result p0

    #@6
    const/high16 v0, 0x40000000    # 2.0f

    #@8
    if-eqz p3, :cond_f

    #@a
    if-ltz p2, :cond_d

    #@c
    goto :goto_11

    #@d
    :cond_d
    move p2, p1

    #@e
    goto :goto_1e

    #@f
    :cond_f
    if-ltz p2, :cond_13

    #@11
    :goto_11
    move p1, v0

    #@12
    goto :goto_1e

    #@13
    :cond_13
    const/4 p3, -0x1

    #@14
    if-ne p2, p3, :cond_18

    #@16
    move p2, p0

    #@17
    goto :goto_11

    #@18
    :cond_18
    const/4 p3, -0x2

    #@19
    if-ne p2, p3, :cond_d

    #@1b
    const/high16 p1, -0x80000000

    #@1d
    move p2, p0

    #@1e
    .line 9429
    :goto_1e
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@21
    move-result p0

    #@22
    return p0
.end method

.method private getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I
    .registers 12

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 9835
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    #@6
    move-result v1

    #@7
    .line 9836
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@a
    move-result v2

    #@b
    .line 9837
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    #@e
    move-result v3

    #@f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    #@12
    move-result v4

    #@13
    sub-int/2addr v3, v4

    #@14
    .line 9838
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@17
    move-result v4

    #@18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@1b
    move-result v5

    #@1c
    sub-int/2addr v4, v5

    #@1d
    .line 9839
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@20
    move-result v5

    #@21
    iget v6, p2, Landroid/graphics/Rect;->left:I

    #@23
    add-int/2addr v5, v6

    #@24
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@27
    move-result v6

    #@28
    sub-int/2addr v5, v6

    #@29
    .line 9840
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@2c
    move-result v6

    #@2d
    iget v7, p2, Landroid/graphics/Rect;->top:I

    #@2f
    add-int/2addr v6, v7

    #@30
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@33
    move-result p1

    #@34
    sub-int/2addr v6, p1

    #@35
    .line 9841
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@38
    move-result p1

    #@39
    add-int/2addr p1, v5

    #@3a
    .line 9842
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@3d
    move-result p2

    #@3e
    add-int/2addr p2, v6

    #@3f
    sub-int/2addr v5, v1

    #@40
    const/4 v1, 0x0

    #@41
    .line 9844
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v7

    #@45
    sub-int/2addr v6, v2

    #@46
    .line 9845
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    #@49
    move-result v2

    #@4a
    sub-int/2addr p1, v3

    #@4b
    .line 9846
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@4e
    move-result v3

    #@4f
    sub-int/2addr p2, v4

    #@50
    .line 9847
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    #@53
    move-result p2

    #@54
    .line 9853
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    #@57
    move-result v4

    #@58
    const/4 v8, 0x1

    #@59
    if-ne v4, v8, :cond_63

    #@5b
    if-eqz v3, :cond_5e

    #@5d
    goto :goto_6b

    #@5e
    .line 9855
    :cond_5e
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    #@61
    move-result v3

    #@62
    goto :goto_6b

    #@63
    :cond_63
    if-eqz v7, :cond_66

    #@65
    goto :goto_6a

    #@66
    .line 9858
    :cond_66
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    #@69
    move-result v7

    #@6a
    :goto_6a
    move v3, v7

    #@6b
    :goto_6b
    if-eqz v2, :cond_6e

    #@6d
    goto :goto_72

    #@6e
    .line 9864
    :cond_6e
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    #@71
    move-result v2

    #@72
    :goto_72
    aput v3, v0, v1

    #@74
    aput v2, v0, v8

    #@76
    return-object v0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    .registers 6

    #@0
    .line 10635
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    #@2
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    #@5
    .line 10636
    sget-object v1, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    #@7
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@a
    move-result-object p0

    #@b
    .line 10638
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    #@d
    const/4 p2, 0x1

    #@e
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@11
    move-result p1

    #@12
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    #@14
    .line 10640
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_spanCount:I

    #@16
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result p1

    #@1a
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    #@1c
    .line 10641
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    #@1e
    const/4 p2, 0x0

    #@1f
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@22
    move-result p1

    #@23
    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    #@25
    .line 10642
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    #@27
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2a
    move-result p1

    #@2b
    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    #@2d
    .line 10643
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@30
    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .registers 10

    #@0
    .line 9966
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p1, :cond_8

    #@7
    return v0

    #@8
    .line 9970
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    #@b
    move-result v1

    #@c
    .line 9971
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@f
    move-result v2

    #@10
    .line 9972
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    #@13
    move-result v3

    #@14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    #@17
    move-result v4

    #@18
    sub-int/2addr v3, v4

    #@19
    .line 9973
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@1c
    move-result v4

    #@1d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@20
    move-result v5

    #@21
    sub-int/2addr v4, v5

    #@22
    .line 9974
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@24
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@26
    .line 9975
    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    #@29
    .line 9977
    iget p1, v5, Landroid/graphics/Rect;->left:I

    #@2b
    sub-int/2addr p1, p2

    #@2c
    if-ge p1, v3, :cond_40

    #@2e
    iget p1, v5, Landroid/graphics/Rect;->right:I

    #@30
    sub-int/2addr p1, p2

    #@31
    if-le p1, v1, :cond_40

    #@33
    iget p1, v5, Landroid/graphics/Rect;->top:I

    #@35
    sub-int/2addr p1, p3

    #@36
    if-ge p1, v4, :cond_40

    #@38
    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    #@3a
    sub-int/2addr p1, p3

    #@3b
    if-gt p1, v2, :cond_3e

    #@3d
    goto :goto_40

    #@3e
    :cond_3e
    const/4 p1, 0x1

    #@3f
    return p1

    #@40
    :cond_40
    :goto_40
    return v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .registers 6

    #@0
    .line 9340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    .line 9341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result p1

    #@8
    const/4 v1, 0x0

    #@9
    if-lez p2, :cond_e

    #@b
    if-eq p0, p2, :cond_e

    #@d
    return v1

    #@e
    :cond_e
    const/high16 p2, -0x80000000

    #@10
    const/4 v2, 0x1

    #@11
    if-eq v0, p2, :cond_1f

    #@13
    if-eqz v0, :cond_1e

    #@15
    const/high16 p2, 0x40000000    # 2.0f

    #@17
    if-eq v0, p2, :cond_1a

    #@19
    return v1

    #@1a
    :cond_1a
    if-ne p1, p0, :cond_1d

    #@1c
    move v1, v2

    #@1d
    :cond_1d
    return v1

    #@1e
    :cond_1e
    return v2

    #@1f
    :cond_1f
    if-lt p1, p0, :cond_22

    #@21
    move v1, v2

    #@22
    :cond_22
    return v1
.end method

.method private scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .registers 6

    #@0
    .line 9200
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object v0

    #@4
    .line 9201
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_b

    #@a
    return-void

    #@b
    .line 9207
    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_28

    #@11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_28

    #@17
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@19
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@1b
    .line 9208
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_28

    #@21
    .line 9209
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    #@24
    .line 9210
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@27
    goto :goto_35

    #@28
    .line 9212
    :cond_28
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    #@2b
    .line 9213
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    #@2e
    .line 9214
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@30
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->onViewDetached(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@35
    :goto_35
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 8518
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    #@4
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 8536
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    #@4
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 8547
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    #@4
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 8559
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    #@4
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 7860
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 7861
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    #@7
    :cond_7
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 7897
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 7898
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    #@7
    :cond_7
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 8836
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    #@4
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 8825
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    #@9
    return-void
.end method

.method public attachView(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .registers 6

    #@0
    .line 8804
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object v0

    #@4
    .line 8805
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_12

    #@a
    .line 8806
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@e
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->addToDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@11
    goto :goto_19

    #@12
    .line 8808
    :cond_12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@14
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@16
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@19
    .line 8810
    :goto_19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@1b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@1e
    move-result v0

    #@1f
    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    #@22
    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    #@0
    .line 9707
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-nez v0, :cond_9

    #@4
    const/4 p1, 0x0

    #@5
    .line 9708
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    #@8
    return-void

    #@9
    .line 9711
    :cond_9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    #@c
    move-result-object p1

    #@d
    .line 9712
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public canScrollVertically()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 2

    #@0
    if-eqz p1, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 p1, 0x0

    #@5
    :goto_5
    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 5

    #@0
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 3

    #@0
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4

    #@0
    .line 9192
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_12

    #@8
    .line 9194
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    .line 9195
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_6

    #@12
    :cond_12
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4

    #@0
    .line 8875
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    .line 8876
    invoke-direct {p0, p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    #@9
    return-void
.end method

.method public detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4

    #@0
    .line 8889
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 8890
    invoke-direct {p0, p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    #@7
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 8762
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_b

    #@8
    .line 8764
    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    #@b
    :cond_b
    return-void
.end method

.method public detachViewAt(I)V
    .registers 3

    #@0
    .line 8784
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    #@7
    return-void
.end method

.method dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 8113
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    #@3
    .line 8114
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    #@6
    return-void
.end method

.method dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 8118
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    #@3
    .line 8119
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@6
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .registers 3

    #@0
    .line 8499
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 8500
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@a
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@11
    :cond_11
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    #@0
    .line 8703
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 8706
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    #@9
    move-result-object p1

    #@a
    if-nez p1, :cond_d

    #@c
    return-object v1

    #@d
    .line 8710
    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@f
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_16

    #@15
    return-object v1

    #@16
    :cond_16
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 7

    #@0
    .line 8731
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_32

    #@7
    .line 8733
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 8734
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@e
    move-result-object v3

    #@f
    if-nez v3, :cond_12

    #@11
    goto :goto_2f

    #@12
    .line 8738
    :cond_12
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    #@15
    move-result v4

    #@16
    if-ne v4, p1, :cond_2f

    #@18
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_2f

    #@1e
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@20
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@22
    .line 8739
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    #@25
    move-result v4

    #@26
    if-nez v4, :cond_2e

    #@28
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_2f

    #@2e
    :cond_2e
    return-object v2

    #@2f
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_5

    #@32
    :cond_32
    const/4 p1, 0x0

    #@33
    return-object p1
.end method

.method public abstract generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4

    #@0
    .line 8371
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 3

    #@0
    .line 8347
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 8348
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@8
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 8349
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 8350
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@12
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@14
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@17
    return-object v0

    #@18
    .line 8352
    :cond_18
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@1a
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .registers 2

    #@0
    .line 9742
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@a
    return p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3

    #@0
    .line 8933
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    #@7
    move-result-object p1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    #@0
    .line 8923
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getClipToPadding()Z
    .registers 2

    #@0
    .line 8230
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    #@6
    if-eqz v0, :cond_a

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

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3

    #@0
    .line 10528
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 p2, 0x1

    #@3
    if-eqz p1, :cond_18

    #@5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@7
    if-nez p1, :cond_a

    #@9
    goto :goto_18

    #@a
    .line 10531
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_18

    #@10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@17
    move-result p2

    #@18
    :cond_18
    :goto_18
    return p2
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .registers 3

    #@0
    .line 9686
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    #@7
    move-result p1

    #@8
    add-int/2addr v0, p1

    #@9
    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 9638
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    #@3
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .registers 3

    #@0
    .line 9650
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    #@7
    move-result p1

    #@8
    sub-int/2addr v0, p1

    #@9
    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .registers 4

    #@0
    .line 9514
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    .line 9515
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@b
    move-result p1

    #@c
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@e
    add-int/2addr p1, v1

    #@f
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@11
    add-int/2addr p1, v0

    #@12
    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .registers 4

    #@0
    .line 9500
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    .line 9501
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@b
    move-result p1

    #@c
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@e
    add-int/2addr p1, v1

    #@f
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@11
    add-int/2addr p1, v0

    #@12
    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .registers 3

    #@0
    .line 9674
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    #@7
    move-result p1

    #@8
    add-int/2addr v0, p1

    #@9
    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .registers 3

    #@0
    .line 9662
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    #@7
    move-result p1

    #@8
    sub-int/2addr v0, p1

    #@9
    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 4

    #@0
    .line 9089
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 9092
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_16

    #@c
    .line 9093
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@e
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_15

    #@14
    goto :goto_16

    #@15
    :cond_15
    return-object v0

    #@16
    :cond_16
    :goto_16
    return-object v1
.end method

.method public getHeight()I
    .registers 2

    #@0
    .line 8999
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    #@2
    return v0
.end method

.method public getHeightMode()I
    .registers 2

    #@0
    .line 8967
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    #@2
    return v0
.end method

.method public getItemCount()I
    .registers 2

    #@0
    .line 9112
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-eqz v0, :cond_11

    #@c
    .line 9113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@f
    move-result v0

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0
.end method

.method public getItemViewType(Landroid/view/View;)I
    .registers 2

    #@0
    .line 8683
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getLayoutDirection()I
    .registers 2

    #@0
    .line 8489
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .registers 2

    #@0
    .line 9757
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    iget p1, p1, Landroid/graphics/Rect;->left:I

    #@a
    return p1
.end method

.method public getMinimumHeight()I
    .registers 2

    #@0
    .line 10283
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    #@0
    .line 10275
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    #@0
    .line 9039
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getPaddingEnd()I
    .registers 2

    #@0
    .line 9059
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    #@0
    .line 9009
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    #@0
    .line 9029
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getPaddingStart()I
    .registers 2

    #@0
    .line 9049
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    #@0
    .line 9019
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getPosition(Landroid/view/View;)I
    .registers 2

    #@0
    .line 8673
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .registers 2

    #@0
    .line 9772
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@a
    return p1
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3

    #@0
    .line 10508
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 p2, 0x1

    #@3
    if-eqz p1, :cond_18

    #@5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@7
    if-nez p1, :cond_a

    #@9
    goto :goto_18

    #@a
    .line 10511
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_18

    #@10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@17
    move-result p2

    #@18
    :cond_18
    :goto_18
    return p2
.end method

.method public getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .registers 2

    #@0
    .line 9727
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@a
    return p1
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 9

    #@0
    if-eqz p2, :cond_22

    #@2
    .line 9606
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object p2

    #@6
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@8
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@a
    .line 9607
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@c
    neg-int v0, v0

    #@d
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@f
    neg-int v1, v1

    #@10
    .line 9608
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@13
    move-result v2

    #@14
    iget v3, p2, Landroid/graphics/Rect;->right:I

    #@16
    add-int/2addr v2, v3

    #@17
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@1a
    move-result v3

    #@1b
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    #@1d
    add-int/2addr v3, p2

    #@1e
    .line 9607
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@21
    goto :goto_2e

    #@22
    .line 9610
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@25
    move-result p2

    #@26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@29
    move-result v0

    #@2a
    const/4 v1, 0x0

    #@2b
    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@2e
    .line 9613
    :goto_2e
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@30
    if-eqz p2, :cond_6b

    #@32
    .line 9614
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@35
    move-result-object p2

    #@36
    if-eqz p2, :cond_6b

    #@38
    .line 9615
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_6b

    #@3e
    .line 9616
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@40
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    #@42
    .line 9617
    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@45
    .line 9618
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@48
    .line 9619
    iget p2, v0, Landroid/graphics/RectF;->left:F

    #@4a
    float-to-double v1, p2

    #@4b
    .line 9620
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    #@4e
    move-result-wide v1

    #@4f
    double-to-int p2, v1

    #@50
    iget v1, v0, Landroid/graphics/RectF;->top:F

    #@52
    float-to-double v1, v1

    #@53
    .line 9621
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    #@56
    move-result-wide v1

    #@57
    double-to-int v1, v1

    #@58
    iget v2, v0, Landroid/graphics/RectF;->right:F

    #@5a
    float-to-double v2, v2

    #@5b
    .line 9622
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@5e
    move-result-wide v2

    #@5f
    double-to-int v2, v2

    #@60
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    #@62
    float-to-double v3, v0

    #@63
    .line 9623
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    #@66
    move-result-wide v3

    #@67
    double-to-int v0, v3

    #@68
    .line 9619
    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@6b
    .line 9627
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@6e
    move-result p2

    #@6f
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@72
    move-result p1

    #@73
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    #@76
    return-void
.end method

.method public getWidth()I
    .registers 2

    #@0
    .line 8983
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    #@2
    return v0
.end method

.method public getWidthMode()I
    .registers 2

    #@0
    .line 8950
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    #@2
    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .registers 6

    #@0
    .line 10669
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_1d

    #@8
    .line 10671
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    .line 10672
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v3

    #@10
    .line 10673
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@12
    if-gez v4, :cond_1a

    #@14
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@16
    if-gez v3, :cond_1a

    #@18
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_6

    #@1d
    :cond_1d
    return v1
.end method

.method public hasFocus()Z
    .registers 2

    #@0
    .line 9079
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public ignoreView(Landroid/view/View;)V
    .registers 4

    #@0
    .line 9157
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6
    if-ne v0, v1, :cond_20

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    #@b
    move-result v0

    #@c
    const/4 v1, -0x1

    #@d
    if-eq v0, v1, :cond_20

    #@f
    .line 9163
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    move-result-object p1

    #@13
    const/16 v0, 0x80

    #@15
    .line 9164
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    #@18
    .line 9165
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1a
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    #@1c
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@1f
    return-void

    #@20
    .line 9160
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    const-string v1, "View should be fully attached to be ignored"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2b
    .line 9161
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw p1
.end method

.method public isAttachedToWindow()Z
    .registers 2

    #@0
    .line 8130
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    #@2
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .registers 2

    #@0
    .line 7991
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    #@2
    return v0
.end method

.method public isFocused()Z
    .registers 2

    #@0
    .line 9069
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isFocused()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .registers 2

    #@0
    .line 8058
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    #@2
    return v0
.end method

.method public isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public isMeasurementCacheEnabled()Z
    .registers 2

    #@0
    .line 9324
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    #@2
    return v0
.end method

.method public isSmoothScrolling()Z
    .registers 2

    #@0
    .line 8477
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .registers 6

    #@0
    .line 9946
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@2
    const/16 v0, 0x6003

    #@4
    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    #@7
    move-result p3

    #@8
    const/4 v1, 0x1

    #@9
    if-eqz p3, :cond_15

    #@b
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    #@d
    .line 9948
    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    #@10
    move-result p1

    #@11
    if-eqz p1, :cond_15

    #@13
    move p1, v1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    :goto_16
    if-eqz p2, :cond_19

    #@18
    return p1

    #@19
    :cond_19
    xor-int/2addr p1, v1

    #@1a
    return p1
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .registers 8

    #@0
    .line 9549
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    .line 9550
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@a
    add-int/2addr p2, v1

    #@b
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@d
    add-int/2addr p3, v1

    #@e
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@10
    sub-int/2addr p4, v1

    #@11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@13
    sub-int/2addr p5, v0

    #@14
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    #@17
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .registers 9

    #@0
    .line 9585
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 9586
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    #@8
    .line 9587
    iget v2, v1, Landroid/graphics/Rect;->left:I

    #@a
    add-int/2addr p2, v2

    #@b
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    #@d
    add-int/2addr p2, v2

    #@e
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@10
    add-int/2addr p3, v2

    #@11
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    #@13
    add-int/2addr p3, v2

    #@14
    iget v2, v1, Landroid/graphics/Rect;->right:I

    #@16
    sub-int/2addr p4, v2

    #@17
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    #@19
    sub-int/2addr p4, v2

    #@1a
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@1c
    sub-int/2addr p5, v1

    #@1d
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    #@1f
    sub-int/2addr p5, v0

    #@20
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    #@23
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .registers 9

    #@0
    .line 9270
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 9272
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    #@b
    move-result-object v1

    #@c
    .line 9273
    iget v2, v1, Landroid/graphics/Rect;->left:I

    #@e
    iget v3, v1, Landroid/graphics/Rect;->right:I

    #@10
    add-int/2addr v2, v3

    #@11
    add-int/2addr p2, v2

    #@12
    .line 9274
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@14
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@16
    add-int/2addr v2, v1

    #@17
    add-int/2addr p3, v2

    #@18
    .line 9275
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    #@1f
    move-result v2

    #@20
    .line 9276
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    #@23
    move-result v3

    #@24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    #@27
    move-result v4

    #@28
    add-int/2addr v3, v4

    #@29
    add-int/2addr v3, p2

    #@2a
    iget p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    #@2c
    .line 9277
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@2f
    move-result v4

    #@30
    .line 9275
    invoke-static {v1, v2, v3, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@33
    move-result p2

    #@34
    .line 9278
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@37
    move-result v1

    #@38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    #@3b
    move-result v2

    #@3c
    .line 9279
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@3f
    move-result v3

    #@40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@43
    move-result v4

    #@44
    add-int/2addr v3, v4

    #@45
    add-int/2addr v3, p3

    #@46
    iget p3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    #@48
    .line 9280
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@4b
    move-result v4

    #@4c
    .line 9278
    invoke-static {v1, v2, v3, p3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@4f
    move-result p3

    #@50
    .line 9281
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_59

    #@56
    .line 9282
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@59
    :cond_59
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .registers 9

    #@0
    .line 9369
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 9371
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    #@b
    move-result-object v1

    #@c
    .line 9372
    iget v2, v1, Landroid/graphics/Rect;->left:I

    #@e
    iget v3, v1, Landroid/graphics/Rect;->right:I

    #@10
    add-int/2addr v2, v3

    #@11
    add-int/2addr p2, v2

    #@12
    .line 9373
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@14
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@16
    add-int/2addr v2, v1

    #@17
    add-int/2addr p3, v2

    #@18
    .line 9375
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    #@1f
    move-result v2

    #@20
    .line 9376
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    #@23
    move-result v3

    #@24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    #@27
    move-result v4

    #@28
    add-int/2addr v3, v4

    #@29
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    #@2b
    add-int/2addr v3, v4

    #@2c
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    #@2e
    add-int/2addr v3, v4

    #@2f
    add-int/2addr v3, p2

    #@30
    iget p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    #@32
    .line 9378
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@35
    move-result v4

    #@36
    .line 9375
    invoke-static {v1, v2, v3, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@39
    move-result p2

    #@3a
    .line 9379
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@3d
    move-result v1

    #@3e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    #@41
    move-result v2

    #@42
    .line 9380
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@45
    move-result v3

    #@46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@49
    move-result v4

    #@4a
    add-int/2addr v3, v4

    #@4b
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    #@4d
    add-int/2addr v3, v4

    #@4e
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    #@50
    add-int/2addr v3, v4

    #@51
    add-int/2addr v3, p3

    #@52
    iget p3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    #@54
    .line 9382
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@57
    move-result v4

    #@58
    .line 9379
    invoke-static {v1, v2, v3, p3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    #@5b
    move-result p3

    #@5c
    .line 9383
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_65

    #@62
    .line 9384
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@65
    :cond_65
    return-void
.end method

.method public moveView(II)V
    .registers 5

    #@0
    .line 8856
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 8861
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    #@9
    .line 8862
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    #@c
    return-void

    #@d
    .line 8858
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    const-string v1, "Cannot move a child from non-existing index:"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1c
    .line 8859
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p1

    #@28
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw p2
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 3

    #@0
    .line 9123
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 9124
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    #@7
    :cond_7
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 3

    #@0
    .line 9135
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 9136
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    #@7
    :cond_7
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    #@0
    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    #@0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 3

    #@0
    .line 8221
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    #@3
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 5

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    #@0
    .line 10397
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    #@b
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    #@0
    .line 10413
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz p1, :cond_3d

    #@4
    if-nez p3, :cond_7

    #@6
    goto :goto_3d

    #@7
    :cond_7
    const/4 p2, 0x1

    #@8
    .line 10416
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    #@b
    move-result p1

    #@c
    if-nez p1, :cond_29

    #@e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@10
    const/4 v0, -0x1

    #@11
    .line 10417
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    #@14
    move-result p1

    #@15
    if-nez p1, :cond_29

    #@17
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@19
    .line 10418
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    #@1c
    move-result p1

    #@1d
    if-nez p1, :cond_29

    #@1f
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@21
    .line 10419
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    #@24
    move-result p1

    #@25
    if-eqz p1, :cond_28

    #@27
    goto :goto_29

    #@28
    :cond_28
    const/4 p2, 0x0

    #@29
    .line 10416
    :cond_29
    :goto_29
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    #@2c
    .line 10421
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2e
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@30
    if-eqz p1, :cond_3d

    #@32
    .line 10422
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@34
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@39
    move-result p1

    #@3a
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@3d
    :cond_3d
    :goto_3d
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    #@0
    .line 10348
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@b
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    #@0
    .line 10378
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    #@6
    move-result v0

    #@7
    const/4 v2, 0x1

    #@8
    if-nez v0, :cond_12

    #@a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1a

    #@12
    :cond_12
    const/16 v0, 0x2000

    #@14
    .line 10379
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@17
    .line 10380
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    #@1a
    .line 10382
    :cond_1a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1c
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_2a

    #@22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@24
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_32

    #@2a
    :cond_2a
    const/16 v0, 0x1000

    #@2c
    .line 10383
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@2f
    .line 10384
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    #@32
    .line 10388
    :cond_32
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@35
    move-result v0

    #@36
    .line 10389
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@39
    move-result v1

    #@3a
    .line 10390
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    #@3d
    move-result v2

    #@3e
    .line 10391
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    #@41
    move-result p1

    #@42
    .line 10388
    invoke-static {v0, v1, v2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    #@45
    move-result-object p1

    #@46
    .line 10392
    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    #@49
    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    #@0
    .line 10428
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_21

    #@6
    .line 10430
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_21

    #@c
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@e
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@10
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_21

    #@16
    .line 10431
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@18
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@1a
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1c
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@1e
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@21
    :cond_21
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 11

    #@0
    .line 10453
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@3
    move-result p1

    #@4
    const/4 p2, 0x0

    #@5
    if-eqz p1, :cond_d

    #@7
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@a
    move-result p1

    #@b
    move v0, p1

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v0, p2

    #@e
    .line 10454
    :goto_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_18

    #@14
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@17
    move-result p2

    #@18
    :cond_18
    move v2, p2

    #@19
    const/4 v1, 0x1

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    const/4 v5, 0x0

    #@1d
    .line 10456
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@20
    move-result-object p1

    #@21
    .line 10458
    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@24
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    #@0
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    #@0
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 5

    #@0
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    #@0
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    #@0
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    #@0
    .line 10120
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    #@3
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3

    #@0
    const-string p1, "RecyclerView"

    #@2
    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    #@4
    .line 8285
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 2

    #@0
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .registers 5

    #@0
    .line 10256
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    #@5
    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 9991
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_f

    #@6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p1, 0x1

    #@10
    :goto_10
    return p1
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    #@0
    .line 10013
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    #@0
    return-void
.end method

.method onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .registers 3

    #@0
    .line 10312
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@2
    if-ne v0, p1, :cond_7

    #@4
    const/4 p1, 0x0

    #@5
    .line 10313
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@7
    :cond_7
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5

    #@0
    .line 10550
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .registers 12

    #@0
    .line 10566
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 p2, 0x0

    #@3
    if-nez p1, :cond_6

    #@5
    return p2

    #@6
    :cond_6
    const/16 p4, 0x1000

    #@8
    const/4 v0, 0x1

    #@9
    if-eq p3, p4, :cond_42

    #@b
    const/16 p4, 0x2000

    #@d
    if-eq p3, p4, :cond_12

    #@f
    move v2, p2

    #@10
    move v3, v2

    #@11
    goto :goto_73

    #@12
    :cond_12
    const/4 p3, -0x1

    #@13
    .line 10572
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    #@16
    move-result p1

    #@17
    if-eqz p1, :cond_29

    #@19
    .line 10573
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@1c
    move-result p1

    #@1d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@20
    move-result p4

    #@21
    sub-int/2addr p1, p4

    #@22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@25
    move-result p4

    #@26
    sub-int/2addr p1, p4

    #@27
    neg-int p1, p1

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move p1, p2

    #@2a
    .line 10575
    :goto_2a
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2c
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    #@2f
    move-result p3

    #@30
    if-eqz p3, :cond_71

    #@32
    .line 10576
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    #@35
    move-result p3

    #@36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    #@39
    move-result p4

    #@3a
    sub-int/2addr p3, p4

    #@3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    #@3e
    move-result p4

    #@3f
    sub-int/2addr p3, p4

    #@40
    neg-int p3, p3

    #@41
    goto :goto_6e

    #@42
    .line 10580
    :cond_42
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    #@45
    move-result p1

    #@46
    if-eqz p1, :cond_57

    #@48
    .line 10581
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@4b
    move-result p1

    #@4c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@4f
    move-result p3

    #@50
    sub-int/2addr p1, p3

    #@51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@54
    move-result p3

    #@55
    sub-int/2addr p1, p3

    #@56
    goto :goto_58

    #@57
    :cond_57
    move p1, p2

    #@58
    .line 10583
    :goto_58
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5a
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    #@5d
    move-result p3

    #@5e
    if-eqz p3, :cond_71

    #@60
    .line 10584
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    #@63
    move-result p3

    #@64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    #@67
    move-result p4

    #@68
    sub-int/2addr p3, p4

    #@69
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    #@6c
    move-result p4

    #@6d
    sub-int/2addr p3, p4

    #@6e
    :goto_6e
    move v3, p1

    #@6f
    move v2, p3

    #@70
    goto :goto_73

    #@71
    :cond_71
    move v3, p1

    #@72
    move v2, p2

    #@73
    :goto_73
    if-nez v3, :cond_78

    #@75
    if-nez v2, :cond_78

    #@77
    return p2

    #@78
    .line 10591
    :cond_78
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7a
    const/4 v4, 0x0

    #@7b
    const/high16 v5, -0x80000000

    #@7d
    const/4 v6, 0x1

    #@7e
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    #@81
    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11

    #@0
    .line 10598
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@6
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@8
    move-object v1, p0

    #@9
    move-object v4, p1

    #@a
    move v5, p2

    #@b
    move-object v6, p3

    #@c
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 8144
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 8145
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@7
    :cond_7
    return-void
.end method

.method public removeAllViews()V
    .registers 3

    #@0
    .line 8649
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_10

    #@8
    .line 8651
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@a
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_6

    #@10
    :cond_10
    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4

    #@0
    .line 10338
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_1c

    #@8
    .line 10339
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    .line 10340
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_19

    #@16
    .line 10341
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    #@19
    :cond_19
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    return-void
.end method

.method removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 8

    #@0
    .line 9228
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v1, v0, -0x1

    #@6
    :goto_6
    if-ltz v1, :cond_3d

    #@8
    .line 9231
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    .line 9232
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@f
    move-result-object v3

    #@10
    .line 9233
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_17

    #@16
    goto :goto_3a

    #@17
    :cond_17
    const/4 v4, 0x0

    #@18
    .line 9241
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    #@1b
    .line 9242
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_26

    #@21
    .line 9243
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@23
    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    #@26
    .line 9245
    :cond_26
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@28
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@2a
    if-eqz v4, :cond_33

    #@2c
    .line 9246
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2e
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@30
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@33
    :cond_33
    const/4 v4, 0x1

    #@34
    .line 9248
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    #@37
    .line 9249
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    #@3a
    :goto_3a
    add-int/lit8 v1, v1, -0x1

    #@3c
    goto :goto_6

    #@3d
    .line 9251
    :cond_3d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clearScrap()V

    #@40
    if-lez v0, :cond_47

    #@42
    .line 9253
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    #@47
    :cond_47
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 3

    #@0
    .line 8900
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    #@3
    .line 8901
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    #@6
    return-void
.end method

.method public removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4

    #@0
    .line 8911
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 8912
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    #@7
    .line 8913
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    #@a
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 3

    #@0
    .line 8164
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 8165
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .registers 4

    #@0
    .line 8846
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    #@6
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 8625
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->removeView(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3

    #@0
    .line 8637
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 8639
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    #@b
    :cond_b
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    .line 9886
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .registers 8

    #@0
    .line 9906
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I

    #@3
    move-result-object p2

    #@4
    const/4 p3, 0x0

    #@5
    .line 9908
    aget v0, p2, p3

    #@7
    const/4 v1, 0x1

    #@8
    .line 9909
    aget p2, p2, v1

    #@a
    if-eqz p5, :cond_12

    #@c
    .line 9910
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isFocusedChildVisibleAfterScrolling(Landroidx/recyclerview/widget/RecyclerView;II)Z

    #@f
    move-result p5

    #@10
    if-eqz p5, :cond_17

    #@12
    :cond_12
    if-nez v0, :cond_18

    #@14
    if-eqz p2, :cond_17

    #@16
    goto :goto_18

    #@17
    :cond_17
    return p3

    #@18
    :cond_18
    :goto_18
    if-eqz p4, :cond_1e

    #@1a
    .line 9913
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    #@1d
    goto :goto_21

    #@1e
    .line 9915
    :cond_1e
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    #@21
    :goto_21
    return v1
.end method

.method public requestLayout()V
    .registers 2

    #@0
    .line 7847
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 7848
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    #@7
    :cond_7
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 10472
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    #@3
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public scrollToPosition(I)V
    .registers 2

    #@0
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public setAutoMeasureEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 7918
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    #@2
    return-void
.end method

.method setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    #@0
    .line 10649
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@9
    move-result v0

    #@a
    .line 10650
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@d
    move-result p1

    #@e
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@11
    move-result p1

    #@12
    .line 10648
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    #@15
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .registers 3

    #@0
    .line 8040
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    #@2
    if-eq p1, v0, :cond_12

    #@4
    .line 8041
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    #@6
    const/4 p1, 0x0

    #@7
    .line 8042
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    #@9
    .line 8043
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@b
    if-eqz p1, :cond_12

    #@d
    .line 8044
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    #@f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    #@12
    :cond_12
    return-void
.end method

.method setMeasureSpecs(II)V
    .registers 4

    #@0
    .line 7757
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    #@6
    .line 7758
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result p1

    #@a
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    #@c
    const/4 v0, 0x0

    #@d
    if-nez p1, :cond_15

    #@f
    .line 7759
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    #@11
    if-nez p1, :cond_15

    #@13
    .line 7760
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    #@15
    .line 7763
    :cond_15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@18
    move-result p1

    #@19
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    #@1b
    .line 7764
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1e
    move-result p1

    #@1f
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    #@21
    if-nez p1, :cond_29

    #@23
    .line 7765
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    #@25
    if-nez p1, :cond_29

    #@27
    .line 7766
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    #@29
    :cond_29
    return-void
.end method

.method public setMeasuredDimension(II)V
    .registers 4

    #@0
    .line 10267
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    # invokes: Landroidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;II)V

    #@5
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 6

    #@0
    .line 7836
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    #@c
    move-result v1

    #@d
    add-int/2addr v0, v1

    #@e
    .line 7837
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@11
    move-result p1

    #@12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@15
    move-result v1

    #@16
    add-int/2addr p1, v1

    #@17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@1a
    move-result v1

    #@1b
    add-int/2addr p1, v1

    #@1c
    .line 7838
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    #@1f
    move-result v1

    #@20
    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    #@23
    move-result p2

    #@24
    .line 7839
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    #@27
    move-result v0

    #@28
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    #@2b
    move-result p1

    #@2c
    .line 7840
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    #@2f
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .registers 11

    #@0
    .line 7784
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    .line 7786
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@8
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    #@b
    return-void

    #@c
    :cond_c
    const/high16 v1, -0x80000000

    #@e
    const v2, 0x7fffffff

    #@11
    const/4 v3, 0x0

    #@12
    move v4, v2

    #@13
    move v5, v3

    #@14
    move v2, v1

    #@15
    move v3, v4

    #@16
    :goto_16
    if-ge v5, v0, :cond_3e

    #@18
    .line 7795
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v6

    #@1c
    .line 7796
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@1e
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@20
    .line 7797
    invoke-virtual {p0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    #@23
    .line 7798
    iget v6, v7, Landroid/graphics/Rect;->left:I

    #@25
    if-ge v6, v3, :cond_29

    #@27
    .line 7799
    iget v3, v7, Landroid/graphics/Rect;->left:I

    #@29
    .line 7801
    :cond_29
    iget v6, v7, Landroid/graphics/Rect;->right:I

    #@2b
    if-le v6, v1, :cond_2f

    #@2d
    .line 7802
    iget v1, v7, Landroid/graphics/Rect;->right:I

    #@2f
    .line 7804
    :cond_2f
    iget v6, v7, Landroid/graphics/Rect;->top:I

    #@31
    if-ge v6, v4, :cond_35

    #@33
    .line 7805
    iget v4, v7, Landroid/graphics/Rect;->top:I

    #@35
    .line 7807
    :cond_35
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    #@37
    if-le v6, v2, :cond_3b

    #@39
    .line 7808
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    #@3b
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    #@3d
    goto :goto_16

    #@3e
    .line 7811
    :cond_3e
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@40
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@42
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@45
    .line 7812
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@47
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    #@49
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    #@4c
    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .registers 2

    #@0
    .line 9336
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    #@2
    return-void
.end method

.method setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    #@0
    if-nez p1, :cond_d

    #@2
    const/4 p1, 0x0

    #@3
    .line 7742
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5
    .line 7743
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@7
    const/4 p1, 0x0

    #@8
    .line 7744
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    #@a
    .line 7745
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    #@c
    goto :goto_1f

    #@d
    .line 7747
    :cond_d
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@f
    .line 7748
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@11
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    #@13
    .line 7749
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    #@19
    .line 7750
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@1c
    move-result p1

    #@1d
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    #@1f
    :goto_1f
    const/high16 p1, 0x40000000    # 2.0f

    #@21
    .line 7752
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    #@23
    .line 7753
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    #@25
    return-void
.end method

.method shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 7

    #@0
    .line 9307
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_25

    #@6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    #@8
    if-eqz v0, :cond_25

    #@a
    .line 9309
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@d
    move-result v0

    #@e
    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    #@10
    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    #@13
    move-result p2

    #@14
    if-eqz p2, :cond_25

    #@16
    .line 9310
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@19
    move-result p1

    #@1a
    iget p2, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    #@1c
    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    #@1f
    move-result p1

    #@20
    if-nez p1, :cond_23

    #@22
    goto :goto_25

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    goto :goto_26

    #@25
    :cond_25
    :goto_25
    const/4 p1, 0x1

    #@26
    :goto_26
    return p1
.end method

.method shouldMeasureTwice()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 7

    #@0
    .line 9293
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    #@2
    if-eqz v0, :cond_1f

    #@4
    .line 9294
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@7
    move-result v0

    #@8
    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    #@a
    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    #@d
    move-result p2

    #@e
    if-eqz p2, :cond_1f

    #@10
    .line 9295
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@13
    move-result p1

    #@14
    iget p2, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    #@16
    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    #@19
    move-result p1

    #@1a
    if-nez p1, :cond_1d

    #@1c
    goto :goto_1f

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    #@20
    :goto_20
    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 4

    #@0
    const-string p1, "RecyclerView"

    #@2
    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    #@4
    .line 8451
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .registers 3

    #@0
    .line 8465
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@2
    if-eqz v0, :cond_11

    #@4
    if-eq p1, v0, :cond_11

    #@6
    .line 8466
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 8467
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    #@11
    .line 8469
    :cond_11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@13
    .line 8470
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@15
    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    #@18
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 9178
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object p1

    #@4
    .line 9179
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    #@7
    .line 9180
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    #@a
    const/4 v0, 0x4

    #@b
    .line 9181
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    #@e
    return-void
.end method

.method stopSmoothScroller()V
    .registers 2

    #@0
    .line 10306
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 10307
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    #@7
    :cond_7
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
