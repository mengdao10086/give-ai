.class public Landroidx/recyclerview/widget/LinearSmoothScroller;
.super Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasCalculatedMillisPerPixel:Z

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mMillisPerPixel:F

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 93
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    #@3
    .line 79
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@5
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    #@a
    .line 81
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@c
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@11
    const/4 v0, 0x0

    #@12
    .line 86
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    #@14
    .line 91
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    #@16
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    #@18
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1f
    move-result-object p1

    #@20
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@22
    return-void
.end method

.method private clampApplyScroll(II)I
    .registers 3

    #@0
    sub-int p2, p1, p2

    #@2
    mul-int/2addr p1, p2

    #@3
    if-gtz p1, :cond_7

    #@5
    const/4 p1, 0x0

    #@6
    return p1

    #@7
    :cond_7
    return p2
.end method

.method private getSpeedPerPixel()F
    .registers 2

    #@0
    .line 170
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    #@2
    if-nez v0, :cond_f

    #@4
    .line 171
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mMillisPerPixel:F

    #@c
    const/4 v0, 0x1

    #@d
    .line 172
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    #@f
    .line 174
    :cond_f
    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mMillisPerPixel:F

    #@11
    return v0
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .registers 7

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p5, v0, :cond_1c

    #@3
    if-eqz p5, :cond_12

    #@5
    const/4 p1, 0x1

    #@6
    if-ne p5, p1, :cond_a

    #@8
    sub-int/2addr p4, p2

    #@9
    return p4

    #@a
    .line 296
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    #@e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1

    #@12
    :cond_12
    sub-int/2addr p3, p1

    #@13
    if-lez p3, :cond_16

    #@15
    return p3

    #@16
    :cond_16
    sub-int/2addr p4, p2

    #@17
    if-gez p4, :cond_1a

    #@19
    return p4

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    return p1

    #@1c
    :cond_1c
    sub-int/2addr p3, p1

    #@1d
    return p3
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 13

    #@0
    .line 339
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_38

    #@6
    .line 340
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_d

    #@c
    goto :goto_38

    #@d
    .line 344
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@13
    .line 345
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    #@16
    move-result v2

    #@17
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    #@19
    sub-int v5, v2, v3

    #@1b
    .line 346
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    #@1e
    move-result p1

    #@1f
    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    #@21
    add-int v6, p1, v1

    #@23
    .line 347
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    #@26
    move-result v7

    #@27
    .line 348
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    #@2a
    move-result p1

    #@2b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    #@2e
    move-result v0

    #@2f
    sub-int v8, p1, v0

    #@31
    move-object v4, p0

    #@32
    move v9, p2

    #@33
    .line 349
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    #@36
    move-result p1

    #@37
    return p1

    #@38
    :cond_38
    :goto_38
    const/4 p1, 0x0

    #@39
    return p1
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 13

    #@0
    .line 314
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_38

    #@6
    .line 315
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_d

    #@c
    goto :goto_38

    #@d
    .line 319
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@13
    .line 320
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    #@16
    move-result v2

    #@17
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    #@19
    sub-int v5, v2, v3

    #@1b
    .line 321
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    #@1e
    move-result p1

    #@1f
    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    #@21
    add-int v6, p1, v1

    #@23
    .line 322
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@26
    move-result v7

    #@27
    .line 323
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@2a
    move-result p1

    #@2b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@2e
    move-result v0

    #@2f
    sub-int v8, p1, v0

    #@31
    move-object v4, p0

    #@32
    move v9, p2

    #@33
    .line 324
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    #@36
    move-result p1

    #@37
    return p1

    #@38
    :cond_38
    :goto_38
    const/4 p1, 0x0

    #@39
    return p1
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 3

    #@0
    .line 166
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    int-to-float p1, p1

    #@3
    const/high16 v0, 0x41c80000    # 25.0f

    #@5
    div-float/2addr v0, p1

    #@6
    return v0
.end method

.method protected calculateTimeForDeceleration(I)I
    .registers 6

    #@0
    .line 191
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    #@3
    move-result p1

    #@4
    int-to-double v0, p1

    #@5
    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    #@a
    div-double/2addr v0, v2

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int p1, v0

    #@10
    return p1
.end method

.method protected calculateTimeForScrolling(I)I
    .registers 4

    #@0
    .line 205
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result p1

    #@4
    int-to-float p1, p1

    #@5
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getSpeedPerPixel()F

    #@8
    move-result v0

    #@9
    mul-float/2addr p1, v0

    #@a
    float-to-double v0, p1

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int p1, v0

    #@10
    return p1
.end method

.method protected getHorizontalSnapPreference()I
    .registers 3

    #@0
    .line 218
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    #@2
    if-eqz v0, :cond_18

    #@4
    iget v0, v0, Landroid/graphics/PointF;->x:F

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_18

    #@c
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    #@e
    iget v0, v0, Landroid/graphics/PointF;->x:F

    #@10
    cmpl-float v0, v0, v1

    #@12
    if-lez v0, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_19

    #@16
    :cond_16
    const/4 v0, -0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    :goto_18
    const/4 v0, 0x0

    #@19
    :goto_19
    return v0
.end method

.method protected getVerticalSnapPreference()I
    .registers 3

    #@0
    .line 232
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    #@2
    if-eqz v0, :cond_18

    #@4
    iget v0, v0, Landroid/graphics/PointF;->y:F

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_18

    #@c
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    #@e
    iget v0, v0, Landroid/graphics/PointF;->y:F

    #@10
    cmpl-float v0, v0, v1

    #@12
    if-lez v0, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_19

    #@16
    :cond_16
    const/4 v0, -0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    :goto_18
    const/4 v0, 0x0

    #@19
    :goto_19
    return v0
.end method

.method protected onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 5

    #@0
    .line 127
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getChildCount()I

    #@3
    move-result p3

    #@4
    if-nez p3, :cond_a

    #@6
    .line 128
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    #@9
    return-void

    #@a
    .line 137
    :cond_a
    iget p3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    #@c
    invoke-direct {p0, p3, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    #@f
    move-result p1

    #@10
    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    #@12
    .line 138
    iget p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    #@14
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    #@17
    move-result p1

    #@18
    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    #@1a
    .line 140
    iget p2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    #@1c
    if-nez p2, :cond_23

    #@1e
    if-nez p1, :cond_23

    #@20
    .line 141
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    #@23
    :cond_23
    return-void
.end method

.method protected onStart()V
    .registers 1

    #@0
    return-void
.end method

.method protected onStop()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 151
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    #@3
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    #@5
    const/4 v0, 0x0

    #@6
    .line 152
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    #@8
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    #@0
    .line 110
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    #@3
    move-result p2

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    #@7
    move-result p2

    #@8
    .line 111
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    #@f
    move-result p1

    #@10
    mul-int v0, p2, p2

    #@12
    mul-int v1, p1, p1

    #@14
    add-int/2addr v0, v1

    #@15
    int-to-double v0, v0

    #@16
    .line 112
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@19
    move-result-wide v0

    #@1a
    double-to-int v0, v0

    #@1b
    .line 113
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    #@1e
    move-result v0

    #@1f
    if-lez v0, :cond_28

    #@21
    neg-int p2, p2

    #@22
    neg-int p1, p1

    #@23
    .line 115
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@25
    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    #@28
    :cond_28
    return-void
.end method

.method protected updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    #@0
    .line 244
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_48

    #@a
    .line 245
    iget v1, v0, Landroid/graphics/PointF;->x:F

    #@c
    const/4 v2, 0x0

    #@d
    cmpl-float v1, v1, v2

    #@f
    if-nez v1, :cond_18

    #@11
    iget v1, v0, Landroid/graphics/PointF;->y:F

    #@13
    cmpl-float v1, v1, v2

    #@15
    if-nez v1, :cond_18

    #@17
    goto :goto_48

    #@18
    .line 251
    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    #@1b
    .line 252
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    #@1d
    .line 254
    iget v1, v0, Landroid/graphics/PointF;->x:F

    #@1f
    const v2, 0x461c4000    # 10000.0f

    #@22
    mul-float/2addr v1, v2

    #@23
    float-to-int v1, v1

    #@24
    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    #@26
    .line 255
    iget v0, v0, Landroid/graphics/PointF;->y:F

    #@28
    mul-float/2addr v0, v2

    #@29
    float-to-int v0, v0

    #@2a
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    #@2c
    const/16 v0, 0x2710

    #@2e
    .line 256
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    #@31
    move-result v0

    #@32
    .line 260
    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    #@34
    int-to-float v1, v1

    #@35
    const v2, 0x3f99999a    # 1.2f

    #@38
    mul-float/2addr v1, v2

    #@39
    float-to-int v1, v1

    #@3a
    iget v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    #@3c
    int-to-float v3, v3

    #@3d
    mul-float/2addr v3, v2

    #@3e
    float-to-int v3, v3

    #@3f
    int-to-float v0, v0

    #@40
    mul-float/2addr v0, v2

    #@41
    float-to-int v0, v0

    #@42
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    #@44
    invoke-virtual {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    #@47
    return-void

    #@48
    .line 246
    :cond_48
    :goto_48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    #@4b
    move-result v0

    #@4c
    .line 247
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    #@4f
    .line 248
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    #@52
    return-void
.end method
