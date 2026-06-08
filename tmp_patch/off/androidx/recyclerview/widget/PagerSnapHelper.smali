.class public Landroidx/recyclerview/widget/PagerSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    #@3
    return-void
.end method

.method private distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .registers 4

    #@0
    .line 199
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@3
    move-result p1

    #@4
    .line 200
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    #@7
    move-result p2

    #@8
    div-int/lit8 p2, p2, 0x2

    #@a
    add-int/2addr p1, p2

    #@b
    .line 201
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

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .registers 11

    #@0
    .line 217
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
    .line 223
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
    .line 227
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object v5

    #@1d
    .line 228
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@20
    move-result v6

    #@21
    .line 229
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
    .line 230
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
    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@6
    if-eq v0, p1, :cond_e

    #@8
    .line 264
    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@e
    .line 266
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@10
    return-object p1
.end method

.method private getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3

    #@0
    .line 243
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 244
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@9
    move-result-object p1

    #@a
    return-object p1

    #@b
    .line 245
    :cond_b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_16

    #@11
    .line 246
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@14
    move-result-object p1

    #@15
    return-object p1

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    return-object p1
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3

    #@0
    .line 254
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@6
    if-eq v0, p1, :cond_e

    #@8
    .line 255
    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@e
    .line 257
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    #@10
    return-object p1
.end method

.method private isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .registers 6

    #@0
    .line 147
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@3
    move-result p1

    #@4
    const/4 v0, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    if-eqz p1, :cond_d

    #@8
    if-lez p2, :cond_b

    #@a
    goto :goto_c

    #@b
    :cond_b
    move v0, v1

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    if-lez p3, :cond_10

    #@f
    goto :goto_11

    #@10
    :cond_10
    move v0, v1

    #@11
    :goto_11
    return v0
.end method

.method private isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .registers 6

    #@0
    .line 155
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    #@3
    move-result v0

    #@4
    .line 156
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_21

    #@9
    .line 157
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    #@b
    const/4 v1, 0x1

    #@c
    sub-int/2addr v0, v1

    #@d
    .line 159
    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    #@10
    move-result-object p1

    #@11
    if-eqz p1, :cond_21

    #@13
    .line 161
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@15
    const/4 v3, 0x0

    #@16
    cmpg-float v0, v0, v3

    #@18
    if-ltz v0, :cond_20

    #@1a
    iget p1, p1, Landroid/graphics/PointF;->y:F

    #@1c
    cmpg-float p1, p1, v3

    #@1e
    if-gez p1, :cond_21

    #@20
    :cond_20
    move v2, v1

    #@21
    :cond_21
    return v2
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@6
    move-result v1

    #@7
    const/4 v2, 0x0

    #@8
    if-eqz v1, :cond_15

    #@a
    .line 54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@d
    move-result-object v1

    #@e
    .line 53
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

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
    .line 59
    :goto_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@1a
    move-result v1

    #@1b
    const/4 v3, 0x1

    #@1c
    if-eqz v1, :cond_29

    #@1e
    .line 61
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@21
    move-result-object v1

    #@22
    .line 60
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

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

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .registers 3

    #@0
    .line 169
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    #@2
    if-nez p1, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 172
    :cond_6
    new-instance p1, Landroidx/recyclerview/widget/PagerSnapHelper$1;

    #@8
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/PagerSnapHelper$1;-><init>(Landroidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    #@11
    return-object p1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3

    #@0
    .line 71
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 72
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    .line 73
    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1e

    #@15
    .line 74
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

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
    .registers 15

    #@0
    .line 82
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 87
    :cond_8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    #@b
    move-result-object v2

    #@c
    if-nez v2, :cond_f

    #@e
    return v1

    #@f
    .line 99
    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@12
    move-result v3

    #@13
    const/4 v4, 0x0

    #@14
    const/high16 v5, -0x80000000

    #@16
    const v6, 0x7fffffff

    #@19
    const/4 v7, 0x0

    #@1a
    move v8, v7

    #@1b
    move v7, v6

    #@1c
    move v6, v5

    #@1d
    move-object v5, v4

    #@1e
    :goto_1e
    if-ge v8, v3, :cond_3a

    #@20
    .line 101
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v9

    #@24
    if-nez v9, :cond_27

    #@26
    goto :goto_37

    #@27
    .line 105
    :cond_27
    invoke-direct {p0, p1, v9, v2}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    #@2a
    move-result v10

    #@2b
    if-gtz v10, :cond_31

    #@2d
    if-le v10, v6, :cond_31

    #@2f
    move-object v5, v9

    #@30
    move v6, v10

    #@31
    :cond_31
    if-ltz v10, :cond_37

    #@33
    if-ge v10, v7, :cond_37

    #@35
    move-object v4, v9

    #@36
    move v7, v10

    #@37
    :cond_37
    :goto_37
    add-int/lit8 v8, v8, 0x1

    #@39
    goto :goto_1e

    #@3a
    .line 120
    :cond_3a
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    #@3d
    move-result p2

    #@3e
    if-eqz p2, :cond_47

    #@40
    if-eqz v4, :cond_47

    #@42
    .line 122
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@45
    move-result p1

    #@46
    return p1

    #@47
    :cond_47
    if-nez p2, :cond_50

    #@49
    if-eqz v5, :cond_50

    #@4b
    .line 124
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@4e
    move-result p1

    #@4f
    return p1

    #@50
    :cond_50
    if-eqz p2, :cond_53

    #@52
    move-object v4, v5

    #@53
    :cond_53
    if-nez v4, :cond_56

    #@55
    return v1

    #@56
    .line 135
    :cond_56
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@59
    move-result p3

    #@5a
    .line 137
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    #@5d
    move-result p1

    #@5e
    if-ne p1, p2, :cond_62

    #@60
    move p1, v1

    #@61
    goto :goto_63

    #@62
    :cond_62
    const/4 p1, 0x1

    #@63
    :goto_63
    add-int/2addr p3, p1

    #@64
    if-ltz p3, :cond_6a

    #@66
    if-lt p3, v0, :cond_69

    #@68
    goto :goto_6a

    #@69
    :cond_69
    return p3

    #@6a
    :cond_6a
    :goto_6a
    return v1
.end method
