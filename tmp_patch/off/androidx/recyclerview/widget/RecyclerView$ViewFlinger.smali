.class Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field mOverScroller:Landroid/widget/OverScroller;

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    #@0
    .line 5246
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 5238
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    #@7
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    #@9
    const/4 v0, 0x0

    #@a
    .line 5241
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    #@c
    .line 5244
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    #@e
    .line 5247
    new-instance v0, Landroid/widget/OverScroller;

    #@10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@13
    move-result-object p1

    #@14
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    #@16
    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@19
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    #@1b
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .registers 9

    #@0
    .line 5483
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v0

    #@4
    .line 5484
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@7
    move-result v1

    #@8
    if-le v0, v1, :cond_c

    #@a
    const/4 v2, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v2, 0x0

    #@d
    :goto_d
    mul-int/2addr p3, p3

    #@e
    mul-int/2addr p4, p4

    #@f
    add-int/2addr p3, p4

    #@10
    int-to-double p3, p3

    #@11
    .line 5486
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    #@14
    move-result-wide p3

    #@15
    double-to-int p3, p3

    #@16
    mul-int/2addr p1, p1

    #@17
    mul-int/2addr p2, p2

    #@18
    add-int/2addr p1, p2

    #@19
    int-to-double p1, p1

    #@1a
    .line 5487
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    #@1d
    move-result-wide p1

    #@1e
    double-to-int p1, p1

    #@1f
    .line 5488
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@21
    if-eqz v2, :cond_28

    #@23
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@26
    move-result p2

    #@27
    goto :goto_2c

    #@28
    :cond_28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@2b
    move-result p2

    #@2c
    .line 5489
    :goto_2c
    div-int/lit8 p4, p2, 0x2

    #@2e
    int-to-float p1, p1

    #@2f
    const/high16 v3, 0x3f800000    # 1.0f

    #@31
    mul-float/2addr p1, v3

    #@32
    int-to-float p2, p2

    #@33
    div-float/2addr p1, p2

    #@34
    .line 5490
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    #@37
    move-result p1

    #@38
    int-to-float p4, p4

    #@39
    .line 5492
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    #@3c
    move-result p1

    #@3d
    mul-float/2addr p1, p4

    #@3e
    add-float/2addr p4, p1

    #@3f
    if-lez p3, :cond_51

    #@41
    int-to-float p1, p3

    #@42
    div-float/2addr p4, p1

    #@43
    .line 5496
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    #@46
    move-result p1

    #@47
    const/high16 p2, 0x447a0000    # 1000.0f

    #@49
    mul-float/2addr p1, p2

    #@4a
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@4d
    move-result p1

    #@4e
    mul-int/lit8 p1, p1, 0x4

    #@50
    goto :goto_5c

    #@51
    :cond_51
    if-eqz v2, :cond_54

    #@53
    goto :goto_55

    #@54
    :cond_54
    move v0, v1

    #@55
    :goto_55
    int-to-float p1, v0

    #@56
    div-float/2addr p1, p2

    #@57
    add-float/2addr p1, v3

    #@58
    const/high16 p2, 0x43960000    # 300.0f

    #@5a
    mul-float/2addr p1, p2

    #@5b
    float-to-int p1, p1

    #@5c
    :goto_5c
    const/16 p2, 0x7d0

    #@5e
    .line 5501
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@61
    move-result p1

    #@62
    return p1
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 4

    #@0
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    sub-float/2addr p1, v0

    #@3
    const v0, 0x3ef1463b

    #@6
    mul-float/2addr p1, v0

    #@7
    float-to-double v0, p1

    #@8
    .line 5479
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@b
    move-result-wide v0

    #@c
    double-to-float p1, v0

    #@d
    return p1
.end method

.method private internalPostOnAnimation()V
    .registers 2

    #@0
    .line 5411
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 5412
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@7
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@a
    return-void
.end method


# virtual methods
.method public fling(II)V
    .registers 15

    #@0
    .line 5416
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@6
    const/4 v0, 0x0

    #@7
    .line 5417
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    #@9
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    #@b
    .line 5421
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    #@d
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    #@f
    if-eq v0, v1, :cond_24

    #@11
    .line 5422
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    #@13
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    #@15
    .line 5423
    new-instance v0, Landroid/widget/OverScroller;

    #@17
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    #@1f
    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    #@24
    .line 5425
    :cond_24
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    #@26
    const/4 v4, 0x0

    #@27
    const/4 v5, 0x0

    #@28
    const/high16 v8, -0x80000000

    #@2a
    const v9, 0x7fffffff

    #@2d
    const/high16 v10, -0x80000000

    #@2f
    const v11, 0x7fffffff

    #@32
    move v6, p1

    #@33
    move v7, p2

    #@34
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    #@37
    .line 5427
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    #@3a
    return-void
.end method

.method postOnAnimation()V
    .registers 2

    #@0
    .line 5403
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v0, 0x1

    #@5
    .line 5404
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    #@7
    goto :goto_b

    #@8
    .line 5406
    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->internalPostOnAnimation()V

    #@b
    :goto_b
    return-void
.end method

.method public run()V
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    .line 5252
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@6
    if-nez v1, :cond_c

    #@8
    .line 5253
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    #@b
    return-void

    #@c
    :cond_c
    const/4 v1, 0x0

    #@d
    .line 5257
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    #@f
    const/4 v2, 0x1

    #@10
    .line 5258
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    #@12
    .line 5260
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@14
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    #@17
    .line 5272
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    #@19
    .line 5273
    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_19b

    #@1f
    .line 5274
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    #@22
    move-result v4

    #@23
    .line 5275
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    #@26
    move-result v5

    #@27
    .line 5276
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    #@29
    sub-int v6, v4, v6

    #@2b
    .line 5277
    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    #@2d
    sub-int v13, v5, v7

    #@2f
    .line 5278
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    #@31
    .line 5279
    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    #@33
    .line 5284
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@35
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@37
    aput v1, v4, v1

    #@39
    .line 5285
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@3b
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@3d
    aput v1, v4, v2

    #@3f
    .line 5286
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@41
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@43
    const/4 v11, 0x0

    #@44
    const/4 v12, 0x1

    #@45
    move v8, v6

    #@46
    move v9, v13

    #@47
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_5b

    #@4d
    .line 5288
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@4f
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@51
    aget v4, v4, v1

    #@53
    sub-int/2addr v6, v4

    #@54
    .line 5289
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@56
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@58
    aget v4, v4, v2

    #@5a
    sub-int/2addr v13, v4

    #@5b
    .line 5294
    :cond_5b
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@5d
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    #@60
    move-result v4

    #@61
    const/4 v5, 0x2

    #@62
    if-eq v4, v5, :cond_69

    #@64
    .line 5295
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@66
    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    #@69
    .line 5299
    :cond_69
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@6b
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@6d
    if-eqz v4, :cond_c4

    #@6f
    .line 5300
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@71
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@73
    aput v1, v4, v1

    #@75
    .line 5301
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@77
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@79
    aput v1, v4, v2

    #@7b
    .line 5302
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@7d
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@7f
    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    #@82
    .line 5303
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@84
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@86
    aget v4, v4, v1

    #@88
    .line 5304
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@8a
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@8c
    aget v7, v7, v2

    #@8e
    sub-int/2addr v6, v4

    #@8f
    sub-int/2addr v13, v7

    #@90
    .line 5310
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@92
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@94
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@96
    if-eqz v8, :cond_c6

    #@98
    .line 5311
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    #@9b
    move-result v9

    #@9c
    if-nez v9, :cond_c6

    #@9e
    .line 5312
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    #@a1
    move-result v9

    #@a2
    if-eqz v9, :cond_c6

    #@a4
    .line 5313
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@a6
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    #@a8
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@ab
    move-result v9

    #@ac
    if-nez v9, :cond_b2

    #@ae
    .line 5315
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    #@b1
    goto :goto_c6

    #@b2
    .line 5316
    :cond_b2
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    #@b5
    move-result v10

    #@b6
    if-lt v10, v9, :cond_c0

    #@b8
    sub-int/2addr v9, v2

    #@b9
    .line 5317
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    #@bc
    .line 5318
    invoke-virtual {v8, v4, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    #@bf
    goto :goto_c6

    #@c0
    .line 5320
    :cond_c0
    invoke-virtual {v8, v4, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    #@c3
    goto :goto_c6

    #@c4
    :cond_c4
    move v4, v1

    #@c5
    move v7, v4

    #@c6
    .line 5325
    :cond_c6
    :goto_c6
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@c8
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    #@ca
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@cd
    move-result v8

    #@ce
    if-nez v8, :cond_d5

    #@d0
    .line 5326
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@d2
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    #@d5
    .line 5330
    :cond_d5
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@d7
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@d9
    aput v1, v8, v1

    #@db
    .line 5331
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@dd
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@df
    aput v1, v8, v2

    #@e1
    .line 5332
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@e3
    const/16 v19, 0x0

    #@e5
    const/16 v20, 0x1

    #@e7
    iget-object v8, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@e9
    move v15, v4

    #@ea
    move/from16 v16, v7

    #@ec
    move/from16 v17, v6

    #@ee
    move/from16 v18, v13

    #@f0
    move-object/from16 v21, v8

    #@f2
    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    #@f5
    .line 5334
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@f7
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@f9
    aget v8, v8, v1

    #@fb
    sub-int/2addr v6, v8

    #@fc
    .line 5335
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@fe
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    #@100
    aget v8, v8, v2

    #@102
    sub-int/2addr v13, v8

    #@103
    if-nez v4, :cond_107

    #@105
    if-eqz v7, :cond_10c

    #@107
    .line 5338
    :cond_107
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@109
    invoke-virtual {v8, v4, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    #@10c
    .line 5341
    :cond_10c
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@10e
    # invokes: Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    #@111
    move-result v8

    #@112
    if-nez v8, :cond_119

    #@114
    .line 5342
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@116
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    #@119
    .line 5350
    :cond_119
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    #@11c
    move-result v8

    #@11d
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    #@120
    move-result v9

    #@121
    if-ne v8, v9, :cond_125

    #@123
    move v8, v2

    #@124
    goto :goto_126

    #@125
    :cond_125
    move v8, v1

    #@126
    .line 5351
    :goto_126
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    #@129
    move-result v9

    #@12a
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    #@12d
    move-result v10

    #@12e
    if-ne v9, v10, :cond_132

    #@130
    move v9, v2

    #@131
    goto :goto_133

    #@132
    :cond_132
    move v9, v1

    #@133
    .line 5352
    :goto_133
    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    #@136
    move-result v10

    #@137
    if-nez v10, :cond_144

    #@139
    if-nez v8, :cond_13d

    #@13b
    if-eqz v6, :cond_142

    #@13d
    :cond_13d
    if-nez v9, :cond_144

    #@13f
    if-eqz v13, :cond_142

    #@141
    goto :goto_144

    #@142
    :cond_142
    move v8, v1

    #@143
    goto :goto_145

    #@144
    :cond_144
    :goto_144
    move v8, v2

    #@145
    .line 5359
    :goto_145
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@147
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@149
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@14b
    if-eqz v9, :cond_155

    #@14d
    .line 5361
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    #@150
    move-result v9

    #@151
    if-eqz v9, :cond_155

    #@153
    move v9, v2

    #@154
    goto :goto_156

    #@155
    :cond_155
    move v9, v1

    #@156
    :goto_156
    if-nez v9, :cond_189

    #@158
    if-eqz v8, :cond_189

    #@15a
    .line 5367
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@15c
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    #@15f
    move-result v4

    #@160
    if-eq v4, v5, :cond_17d

    #@162
    .line 5368
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@165
    move-result v3

    #@166
    float-to-int v3, v3

    #@167
    if-gez v6, :cond_16b

    #@169
    neg-int v4, v3

    #@16a
    goto :goto_170

    #@16b
    :cond_16b
    if-lez v6, :cond_16f

    #@16d
    move v4, v3

    #@16e
    goto :goto_170

    #@16f
    :cond_16f
    move v4, v1

    #@170
    :goto_170
    if-gez v13, :cond_174

    #@172
    neg-int v3, v3

    #@173
    goto :goto_178

    #@174
    :cond_174
    if-lez v13, :cond_177

    #@176
    goto :goto_178

    #@177
    :cond_177
    move v3, v1

    #@178
    .line 5371
    :goto_178
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@17a
    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    #@17d
    .line 5374
    :cond_17d
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    #@17f
    if-eqz v3, :cond_19b

    #@181
    .line 5375
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@183
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    #@185
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    #@188
    goto :goto_19b

    #@189
    .line 5380
    :cond_189
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    #@18c
    .line 5381
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@18e
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@190
    if-eqz v3, :cond_19b

    #@192
    .line 5382
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@194
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    #@196
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@198
    invoke-virtual {v3, v5, v4, v7}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    #@19b
    .line 5387
    :cond_19b
    :goto_19b
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@19d
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@19f
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    #@1a1
    if-eqz v3, :cond_1ac

    #@1a3
    .line 5389
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    #@1a6
    move-result v4

    #@1a7
    if-eqz v4, :cond_1ac

    #@1a9
    .line 5390
    invoke-virtual {v3, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    #@1ac
    .line 5393
    :cond_1ac
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    #@1ae
    .line 5394
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    #@1b0
    if-eqz v3, :cond_1b6

    #@1b2
    .line 5395
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->internalPostOnAnimation()V

    #@1b5
    goto :goto_1c0

    #@1b6
    .line 5397
    :cond_1b6
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@1b8
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@1bb
    .line 5398
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@1bd
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    #@1c0
    :goto_1c0
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .registers 13

    #@0
    const/high16 v0, -0x80000000

    #@2
    const/4 v1, 0x0

    #@3
    if-ne p3, v0, :cond_9

    #@5
    .line 5446
    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    #@8
    move-result p3

    #@9
    :cond_9
    move v7, p3

    #@a
    if-nez p4, :cond_e

    #@c
    .line 5449
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    #@e
    .line 5454
    :cond_e
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    #@10
    if-eq p3, p4, :cond_21

    #@12
    .line 5455
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    #@14
    .line 5456
    new-instance p3, Landroid/widget/OverScroller;

    #@16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@1f
    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    #@21
    .line 5460
    :cond_21
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    #@23
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    #@25
    .line 5463
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@27
    const/4 p4, 0x2

    #@28
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    #@2b
    .line 5464
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    #@2d
    const/4 v3, 0x0

    #@2e
    const/4 v4, 0x0

    #@2f
    move v5, p1

    #@30
    move v6, p2

    #@31
    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@34
    .line 5473
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    #@37
    return-void
.end method

.method public stop()V
    .registers 2

    #@0
    .line 5505
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 5506
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    #@7
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@a
    return-void
.end method
