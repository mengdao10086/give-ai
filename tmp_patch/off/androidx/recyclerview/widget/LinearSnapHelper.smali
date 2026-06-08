.class public Landroidx/recyclerview/widget/LinearSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    #@3
    return-void
.end method

.method private computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F
    .registers 13

    #@0
    .line 227
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    if-nez v0, :cond_9

    #@8
    return v1

    #@9
    :cond_9
    const/4 v2, 0x0

    #@a
    const v3, 0x7fffffff

    #@d
    const/high16 v4, -0x80000000

    #@f
    const/4 v5, 0x0

    #@10
    move v6, v5

    #@11
    move v5, v4

    #@12
    move v4, v3

    #@13
    move-object v3, v2

    #@14
    :goto_14
    if-ge v6, v0, :cond_2d

    #@16
    .line 233
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v7

    #@1a
    .line 234
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@1d
    move-result v8

    #@1e
    const/4 v9, -0x1

    #@1f
    if-ne v8, v9, :cond_22

    #@21
    goto :goto_2a

    #@22
    :cond_22
    if-ge v8, v4, :cond_26

    #@24
    move-object v2, v7

    #@25
    move v4, v8

    #@26
    :cond_26
    if-le v8, v5, :cond_2a

    #@28
    move-object v3, v7

    #@29
    move v5, v8

    #@2a
    :cond_2a
    :goto_2a
    add-int/lit8 v6, v6, 0x1

    #@2c
    goto :goto_14

    #@2d
    :cond_2d
    if-eqz v2, :cond_56

    #@2f
    if-nez v3, :cond_32

    #@31
    goto :goto_56

    #@32
    .line 250
    :cond_32
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@35
    move-result p1

    #@36
    .line 251
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@39
    move-result v0

    #@3a
    .line 250
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result p1

    #@3e
    .line 252
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@41
    move-result v0

    #@42
    .line 253
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@45
    move-result p2

    #@46
    .line 252
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    #@49
    move-result p2

    #@4a
    sub-int/2addr p2, p1

    #@4b
    if-nez p2, :cond_4e

    #@4d
    return v1

    #@4e
    :cond_4e
    int-to-float p1, p2

    #@4f
    mul-float/2addr p1, v1

    #@50
    sub-int/2addr v5, v4

    #@51
    add-int/lit8 v5, v5, 0x1

    #@53
    int-to-float p2, v5

    #@54
    div-float/2addr p1, p2

    #@55
    return p1

    #@56
    :cond_56
    :goto_56
    return v1
.end method

.method private distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .registers 4

    #@0
    .line 143
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@3
    move-result p1

    #@4
    .line 144
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@7
    move-result p2

    #@8
    div-int/lit8 p2, p2, 0x2

    #@a
    add-int/2addr p1, p2

    #@b
    .line 145
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@e
    move-result p2

    #@f
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@12
    move-result p3

    #@13
    div-int/lit8 p3, p3, 0x2

    #@15
    add-int/2addr p2, p3

    #@16
    sub-int/2addr p1, p2

    #@17
    return p1
.end method

.method private estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I
    .registers 7

    #@0
    .line 162
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    #@3
    move-result-object p3

    #@4
    .line 163
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F

    #@7
    move-result p1

    #@8
    const/4 p2, 0x0

    #@9
    cmpg-float p2, p1, p2

    #@b
    const/4 p4, 0x0

    #@c
    if-gtz p2, :cond_f

    #@e
    return p4

    #@f
    .line 167
    :cond_f
    aget p2, p3, p4

    #@11
    .line 168
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@14
    move-result p2

    #@15
    const/4 v0, 0x1

    #@16
    aget v1, p3, v0

    #@18
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@1b
    move-result v1

    #@1c
    if-le p2, v1, :cond_21

    #@1e
    aget p2, p3, p4

    #@20
    goto :goto_23

    #@21
    :cond_21
    aget p2, p3, v0

    #@23
    :goto_23
    int-to-float p2, p2

    #@24
    div-float/2addr p2, p1

    #@25
    .line 169
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@28
    move-result p1

    #@29
    return p1
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .registers 11

    #@0
    .line 184
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 190
    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@f
    move-result v3

    #@10
    div-int/lit8 v3, v3, 0x2

    #@12
    add-int/2addr v2, v3

    #@13
    const v3, 0x7fffffff

    #@16
    const/4 v4, 0x0

    #@17
    :goto_17
    if-ge v4, v0, :cond_34

    #@19
    .line 194
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object v5

    #@1d
    .line 195
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@20
    move-result v6

    #@21
    .line 196
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@24
    move-result v7

    #@25
    div-int/lit8 v7, v7, 0x2

    #@27
    add-int/2addr v6, v7

    #@28
    sub-int/2addr v6, v2

    #@29
    .line 197
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@2c
    move-result v6

    #@2d
    if-ge v6, v3, :cond_31

    #@2f
    move-object v1, v5

    #@30
    move v3, v6

    #@31
    :cond_31
    add-int/lit8 v4, v4, 0x1

    #@33
    goto :goto_17

    #@34
    :cond_34
    return-object v1
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3

    #@0
    .line 272
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@6
    if-eq v0, p1, :cond_e

    #@8
    .line 273
    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@e
    .line 275
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@10
    return-object p1
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3

    #@0
    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@6
    if-eq v0, p1, :cond_e

    #@8
    .line 264
    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@e
    .line 266
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@10
    return-object p1
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@6
    move-result v1

    #@7
    const/4 v2, 0x0

    #@8
    if-eqz v1, :cond_15

    #@a
    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@d
    move-result-object v1

    #@e
    .line 48
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    #@11
    move-result v1

    #@12
    aput v1, v0, v2

    #@14
    goto :goto_17

    #@15
    :cond_15
    aput v2, v0, v2

    #@17
    .line 54
    :goto_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@1a
    move-result v1

    #@1b
    const/4 v3, 0x1

    #@1c
    if-eqz v1, :cond_29

    #@1e
    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@21
    move-result-object v1

    #@22
    .line 55
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    #@25
    move-result p1

    #@26
    aput p1, v0, v3

    #@28
    goto :goto_2b

    #@29
    :cond_29
    aput v2, v0, v3

    #@2b
    :goto_2b
    return-object v0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3

    #@0
    .line 133
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 134
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    .line 135
    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1e

    #@15
    .line 136
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    #@1c
    move-result-object p1

    #@1d
    return-object p1

    #@1e
    :cond_1e
    const/4 p1, 0x0

    #@1f
    return-object p1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .registers 12

    #@0
    .line 66
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    #@2
    const/4 v1, -0x1

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 70
    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_d

    #@c
    return v1

    #@d
    .line 75
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    #@10
    move-result-object v2

    #@11
    if-nez v2, :cond_14

    #@13
    return v1

    #@14
    .line 80
    :cond_14
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@17
    move-result v2

    #@18
    if-ne v2, v1, :cond_1b

    #@1a
    return v1

    #@1b
    .line 85
    :cond_1b
    move-object v3, p1

    #@1c
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    #@1e
    add-int/lit8 v4, v0, -0x1

    #@20
    .line 90
    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    #@23
    move-result-object v3

    #@24
    if-nez v3, :cond_27

    #@26
    return v1

    #@27
    .line 97
    :cond_27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@2a
    move-result v5

    #@2b
    const/4 v6, 0x0

    #@2c
    const/4 v7, 0x0

    #@2d
    if-eqz v5, :cond_3f

    #@2f
    .line 99
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@32
    move-result-object v5

    #@33
    .line 98
    invoke-direct {p0, p1, v5, p2, v7}, Landroidx/recyclerview/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I

    #@36
    move-result p2

    #@37
    .line 100
    iget v5, v3, Landroid/graphics/PointF;->x:F

    #@39
    cmpg-float v5, v5, v6

    #@3b
    if-gez v5, :cond_40

    #@3d
    neg-int p2, p2

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move p2, v7

    #@40
    .line 106
    :cond_40
    :goto_40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_56

    #@46
    .line 108
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@49
    move-result-object v5

    #@4a
    .line 107
    invoke-direct {p0, p1, v5, v7, p3}, Landroidx/recyclerview/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I

    #@4d
    move-result p3

    #@4e
    .line 109
    iget v3, v3, Landroid/graphics/PointF;->y:F

    #@50
    cmpg-float v3, v3, v6

    #@52
    if-gez v3, :cond_57

    #@54
    neg-int p3, p3

    #@55
    goto :goto_57

    #@56
    :cond_56
    move p3, v7

    #@57
    .line 116
    :cond_57
    :goto_57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@5a
    move-result p1

    #@5b
    if-eqz p1, :cond_5e

    #@5d
    move p2, p3

    #@5e
    :cond_5e
    if-nez p2, :cond_61

    #@60
    return v1

    #@61
    :cond_61
    add-int/2addr v2, p2

    #@62
    if-gez v2, :cond_65

    #@64
    goto :goto_66

    #@65
    :cond_65
    move v7, v2

    #@66
    :goto_66
    if-lt v7, v0, :cond_69

    #@68
    goto :goto_6a

    #@69
    :cond_69
    move v4, v7

    #@6a
    :goto_6a
    return v4
.end method
