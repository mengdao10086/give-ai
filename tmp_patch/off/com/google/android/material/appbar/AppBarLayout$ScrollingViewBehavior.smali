.class public Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 2378
    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 2381
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 2383
    sget-object v0, Lcom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout:[I

    #@5
    .line 2384
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object p1

    #@9
    .line 2385
    sget p2, Lcom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    #@b
    const/4 v0, 0x0

    #@c
    .line 2386
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@f
    move-result p2

    #@10
    .line 2385
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    #@13
    .line 2387
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    return-void
.end method

.method private static getAppBarLayoutOffset(Lcom/google/android/material/appbar/AppBarLayout;)I
    .registers 2

    #@0
    .line 2478
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@9
    move-result-object p0

    #@a
    .line 2479
    instance-of v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    #@c
    if-eqz v0, :cond_15

    #@e
    .line 2480
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    #@13
    move-result p0

    #@14
    return p0

    #@15
    :cond_15
    const/4 p0, 0x0

    #@16
    return p0
.end method

.method private offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    #@0
    .line 2440
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@9
    move-result-object v0

    #@a
    .line 2441
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    #@c
    if-eqz v1, :cond_2b

    #@e
    .line 2444
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    #@10
    .line 2447
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@17
    move-result v2

    #@18
    sub-int/2addr v1, v2

    #@19
    .line 2448
    # getter for: Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I
    invoke-static {v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->access$100(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I

    #@1c
    move-result v0

    #@1d
    add-int/2addr v1, v0

    #@1e
    .line 2449
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    #@21
    move-result v0

    #@22
    add-int/2addr v1, v0

    #@23
    .line 2450
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    #@26
    move-result p2

    #@27
    sub-int/2addr v1, p2

    #@28
    .line 2445
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@2b
    :cond_2b
    return-void
.end method

.method private updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    #@0
    .line 2507
    instance-of v0, p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    if-eqz v0, :cond_13

    #@4
    .line 2508
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    #@6
    .line 2509
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_13

    #@c
    .line 2510
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    #@f
    move-result p1

    #@10
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    #@13
    :cond_13
    return-void
.end method


# virtual methods
.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .registers 2

    #@0
    .line 2376
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/appbar/AppBarLayout;"
        }
    .end annotation

    #@0
    .line 2488
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_17

    #@7
    .line 2489
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/view/View;

    #@d
    .line 2490
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    #@f
    if-eqz v3, :cond_14

    #@11
    .line 2491
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    #@13
    return-object v2

    #@14
    :cond_14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_5

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    return-object p1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .registers 2

    #@0
    .line 2376
    invoke-super {p0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 6

    #@0
    .line 2456
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_24

    #@5
    .line 2457
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    #@7
    .line 2458
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@a
    move-result v0

    #@b
    .line 2459
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    #@e
    move-result v2

    #@f
    .line 2460
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lcom/google/android/material/appbar/AppBarLayout;)I

    #@12
    move-result p1

    #@13
    if-eqz v2, :cond_1a

    #@15
    add-int v3, v0, p1

    #@17
    if-gt v3, v2, :cond_1a

    #@19
    return v1

    #@1a
    :cond_1a
    sub-int/2addr v0, v2

    #@1b
    if-eqz v0, :cond_24

    #@1d
    int-to-float p1, p1

    #@1e
    int-to-float v0, v0

    #@1f
    div-float/2addr p1, v0

    #@20
    const/high16 v0, 0x3f800000    # 1.0f

    #@22
    add-float/2addr p1, v0

    #@23
    return p1

    #@24
    :cond_24
    return v1
.end method

.method getScrollRange(Landroid/view/View;)I
    .registers 3

    #@0
    .line 2499
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 2500
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    #@6
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@9
    move-result p1

    #@a
    return p1

    #@b
    .line 2502
    :cond_b
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    #@e
    move-result p1

    #@f
    return p1
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 2

    #@0
    .line 2376
    invoke-super {p0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isHorizontalOffsetEnabled()Z
    .registers 2

    #@0
    .line 2376
    invoke-super {p0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->isHorizontalOffsetEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isVerticalOffsetEnabled()Z
    .registers 2

    #@0
    .line 2376
    invoke-super {p0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->isVerticalOffsetEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    #@0
    .line 2393
    instance-of p1, p3, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    #@0
    .line 2399
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V

    #@3
    .line 2400
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V

    #@6
    const/4 p1, 0x0

    #@7
    return p1
.end method

.method public onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    #@0
    .line 2407
    instance-of p2, p3, Lcom/google/android/material/appbar/AppBarLayout;

    #@2
    if-eqz p2, :cond_1a

    #@4
    .line 2408
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@6
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@9
    move-result p2

    #@a
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@d
    .line 2409
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@f
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@12
    move-result p2

    #@13
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@16
    const/4 p2, 0x0

    #@17
    .line 2410
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@1a
    :cond_1a
    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    #@0
    .line 2376
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 7

    #@0
    .line 2376
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 8

    #@0
    .line 2420
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz v0, :cond_30

    #@b
    .line 2423
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@12
    move-result p2

    #@13
    invoke-virtual {p3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    #@16
    .line 2425
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    #@18
    .line 2426
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@1f
    move-result p1

    #@20
    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    .line 2428
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@26
    move-result p1

    #@27
    if-nez p1, :cond_30

    #@29
    const/4 p1, 0x1

    #@2a
    xor-int/lit8 p2, p4, 0x1

    #@2c
    .line 2431
    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    #@2f
    return p1

    #@30
    :cond_30
    return v1
.end method

.method public bridge synthetic setHorizontalOffsetEnabled(Z)V
    .registers 2

    #@0
    .line 2376
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->setHorizontalOffsetEnabled(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 2

    #@0
    .line 2376
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 2

    #@0
    .line 2376
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic setVerticalOffsetEnabled(Z)V
    .registers 2

    #@0
    .line 2376
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->setVerticalOffsetEnabled(Z)V

    #@3
    return-void
.end method
