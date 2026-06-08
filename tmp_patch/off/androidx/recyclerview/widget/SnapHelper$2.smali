.class Landroidx/recyclerview/widget/SnapHelper$2;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/SnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/SnapHelper;Landroid/content/Context;)V
    .registers 3

    #@0
    .line 227
    iput-object p1, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    #@2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 3

    #@0
    .line 246
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    int-to-float p1, p1

    #@3
    const/high16 v0, 0x42c80000    # 100.0f

    #@5
    div-float/2addr v0, p1

    #@6
    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    #@0
    .line 230
    iget-object p2, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    #@2
    iget-object p2, p2, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@4
    if-nez p2, :cond_7

    #@6
    return-void

    #@7
    .line 234
    :cond_7
    iget-object p2, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    #@9
    iget-object v0, p2, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    #@12
    move-result-object p1

    #@13
    const/4 p2, 0x0

    #@14
    .line 236
    aget p2, p1, p2

    #@16
    const/4 v0, 0x1

    #@17
    .line 237
    aget p1, p1, v0

    #@19
    .line 238
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@1c
    move-result v0

    #@1d
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@20
    move-result v1

    #@21
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@24
    move-result v0

    #@25
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SnapHelper$2;->calculateTimeForDeceleration(I)I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_30

    #@2b
    .line 240
    iget-object v1, p0, Landroidx/recyclerview/widget/SnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@2d
    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    #@30
    :cond_30
    return-void
.end method
