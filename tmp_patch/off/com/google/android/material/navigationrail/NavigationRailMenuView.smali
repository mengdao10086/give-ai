.class public Lcom/google/android/material/navigationrail/NavigationRailMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "NavigationRailMenuView.java"


# instance fields
.field private itemMinimumHeight:I

.field private final layoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 41
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    #@6
    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@8
    const/4 v1, -0x2

    #@9
    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@c
    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    #@e
    const/16 p1, 0x31

    #@10
    .line 48
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@12
    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@15
    const/4 p1, 0x1

    #@16
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemActiveIndicatorResizeable(Z)V

    #@19
    return-void
.end method

.method private makeSharedHeightSpec(III)I
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 93
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    #@4
    move-result p3

    #@5
    div-int/2addr p2, p3

    #@6
    .line 97
    iget p3, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    #@8
    const/4 v0, -0x1

    #@9
    if-eq p3, v0, :cond_c

    #@b
    goto :goto_10

    #@c
    .line 99
    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result p3

    #@10
    .line 100
    :goto_10
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    #@13
    move-result p1

    #@14
    const/4 p2, 0x0

    #@15
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@18
    move-result p1

    #@19
    return p1
.end method

.method private measureChildHeight(Landroid/view/View;II)I
    .registers 6

    #@0
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x8

    #@6
    if-eq v0, v1, :cond_10

    #@8
    .line 145
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@b
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@e
    move-result p1

    #@f
    return p1

    #@10
    :cond_10
    const/4 p1, 0x0

    #@11
    return p1
.end method

.method private measureSharedChildHeights(IIILandroid/view/View;)I
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p4, :cond_8

    #@3
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    #@6
    move-result p2

    #@7
    goto :goto_10

    #@8
    .line 128
    :cond_8
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    #@b
    move-result p2

    #@c
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f
    move-result p2

    #@10
    .line 131
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    #@13
    move-result p3

    #@14
    move v1, v0

    #@15
    :goto_15
    if-ge v0, p3, :cond_25

    #@17
    .line 134
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v2

    #@1b
    if-eq v2, p4, :cond_22

    #@1d
    .line 136
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    #@20
    move-result v2

    #@21
    add-int/2addr v1, v2

    #@22
    :cond_22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_15

    #@25
    :cond_25
    return v1
.end method

.method private measureShiftingChildHeights(III)I
    .registers 6

    #@0
    .line 106
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getSelectedItemPosition()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    #@d
    move-result v1

    #@e
    .line 109
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    #@11
    move-result v1

    #@12
    sub-int/2addr p2, v1

    #@13
    add-int/lit8 p3, p3, -0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v1, 0x0

    #@17
    .line 115
    :goto_17
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(IIILandroid/view/View;)I

    #@1a
    move-result p1

    #@1b
    add-int/2addr v1, p1

    #@1c
    return v1
.end method


# virtual methods
.method protected createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .registers 3

    #@0
    .line 89
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailItemView;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailItemView;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public getItemMinimumHeight()I
    .registers 2

    #@0
    .line 172
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    #@2
    return v0
.end method

.method getMenuGravity()I
    .registers 2

    #@0
    .line 160
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    #@2
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@4
    return v0
.end method

.method isTopGravity()Z
    .registers 3

    #@0
    .line 176
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    #@2
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@4
    and-int/lit8 v0, v0, 0x70

    #@6
    const/16 v1, 0x30

    #@8
    if-ne v0, v1, :cond_c

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

.method protected onLayout(ZIIII)V
    .registers 9

    #@0
    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    #@3
    move-result p1

    #@4
    sub-int/2addr p4, p2

    #@5
    const/4 p2, 0x0

    #@6
    move p3, p2

    #@7
    move p5, p3

    #@8
    :goto_8
    if-ge p3, p1, :cond_22

    #@a
    .line 77
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@11
    move-result v1

    #@12
    const/16 v2, 0x8

    #@14
    if-eq v1, v2, :cond_1f

    #@16
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@19
    move-result v1

    #@1a
    add-int/2addr v1, p5

    #@1b
    .line 80
    invoke-virtual {v0, p2, p5, p4, v1}, Landroid/view/View;->layout(IIII)V

    #@1e
    move p5, v1

    #@1f
    :cond_1f
    add-int/lit8 p3, p3, 0x1

    #@21
    goto :goto_8

    #@22
    :cond_22
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    #@0
    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v0

    #@4
    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    const/4 v2, 0x1

    #@11
    if-le v1, v2, :cond_22

    #@13
    .line 59
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getLabelVisibilityMode()I

    #@16
    move-result v2

    #@17
    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->isShifting(II)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_22

    #@1d
    .line 60
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureShiftingChildHeights(III)I

    #@20
    move-result v0

    #@21
    goto :goto_27

    #@22
    :cond_22
    const/4 v2, 0x0

    #@23
    .line 62
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(IIILandroid/view/View;)I

    #@26
    move-result v0

    #@27
    .line 67
    :goto_27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@2a
    move-result p1

    #@2b
    const/4 v1, 0x0

    #@2c
    .line 68
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    #@2f
    move-result p2

    #@30
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMeasuredDimension(II)V

    #@33
    return-void
.end method

.method public setItemMinimumHeight(I)V
    .registers 3

    #@0
    .line 164
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 165
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    #@6
    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->requestLayout()V

    #@9
    :cond_9
    return-void
.end method

.method setMenuGravity(I)V
    .registers 3

    #@0
    .line 153
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    #@2
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@4
    if-eq v0, p1, :cond_f

    #@6
    .line 154
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    #@8
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@a
    .line 155
    iget-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@f
    :cond_f
    return-void
.end method
