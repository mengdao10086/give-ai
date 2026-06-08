.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field indicatorAnimator:Landroid/animation/ValueAnimator;

.field private layoutDirection:I

.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .registers 3

    #@0
    .line 3127
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    .line 3128
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@5
    const/4 p1, -0x1

    #@6
    .line 3125
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    #@8
    const/4 p1, 0x0

    #@9
    .line 3129
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    #@c
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)V
    .registers 1

    #@0
    .line 3122
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V

    #@3
    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Landroid/view/View;Landroid/view/View;F)V
    .registers 4

    #@0
    .line 3122
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V

    #@3
    return-void
.end method

.method private jumpIndicatorToIndicatorPosition()V
    .registers 3

    #@0
    .line 3285
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_f

    #@7
    .line 3286
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    #@c
    move-result v1

    #@d
    iput v1, v0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@f
    .line 3288
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@11
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@13
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToPosition(I)V

    #@16
    return-void
.end method

.method private jumpIndicatorToPosition(I)V
    .registers 6

    #@0
    .line 3268
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    # getter for: Lcom/google/android/material/tabs/TabLayout;->viewPagerScrollState:I
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1600(Lcom/google/android/material/tabs/TabLayout;)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 3271
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 3272
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@f
    # getter for: Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;
    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@15
    iget-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->setIndicatorBoundsForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 3274
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@1c
    iput p1, v0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@1e
    return-void
.end method

.method private jumpIndicatorToSelectedPosition()V
    .registers 2

    #@0
    .line 3279
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToPosition(I)V

    #@9
    return-void
.end method

.method private tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V
    .registers 11

    #@0
    if-eqz p1, :cond_a

    #@2
    .line 3307
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-eqz v0, :cond_1e

    #@d
    .line 3309
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@f
    # getter for: Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@15
    iget-object v6, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@17
    move-object v3, p1

    #@18
    move-object v4, p2

    #@19
    move v5, p3

    #@1a
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V

    #@1d
    goto :goto_3a

    #@1e
    .line 3313
    :cond_1e
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@20
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@22
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@24
    iget-object p2, p2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@26
    .line 3314
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@29
    move-result-object p2

    #@2a
    iget p2, p2, Landroid/graphics/Rect;->top:I

    #@2c
    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2e
    iget-object p3, p3, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@30
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@33
    move-result-object p3

    #@34
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    #@36
    const/4 v0, -0x1

    #@37
    .line 3313
    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3a
    .line 3317
    :goto_3a
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@3d
    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .registers 7

    #@0
    .line 3351
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@4
    if-ne v0, p2, :cond_7

    #@6
    return-void

    #@7
    .line 3354
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 3355
    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1b

    #@17
    .line 3358
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V

    #@1a
    return-void

    #@1b
    .line 3361
    :cond_1b
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@1d
    iput p2, v2, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@1f
    .line 3365
    new-instance p2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;

    #@21
    invoke-direct {p2, p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Landroid/view/View;Landroid/view/View;)V

    #@24
    if-eqz p1, :cond_4a

    #@26
    .line 3375
    new-instance p1, Landroid/animation/ValueAnimator;

    #@28
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    #@2b
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    #@2d
    .line 3376
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2f
    # getter for: Lcom/google/android/material/tabs/TabLayout;->tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1900(Lcom/google/android/material/tabs/TabLayout;)Landroid/animation/TimeInterpolator;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@36
    int-to-long v0, p3

    #@37
    .line 3377
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@3a
    const/4 p3, 0x2

    #@3b
    new-array p3, p3, [F

    #@3d
    .line 3378
    fill-array-data p3, :array_56

    #@40
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@43
    .line 3379
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@46
    .line 3380
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@49
    goto :goto_54

    #@4a
    .line 3383
    :cond_4a
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    #@4c
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    #@4f
    .line 3384
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    #@51
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@54
    :goto_54
    return-void

    #@55
    nop

    #@56
    :array_56
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 4

    #@0
    .line 3330
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 3331
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_15

    #@a
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@c
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@e
    if-eq v0, p1, :cond_15

    #@10
    .line 3333
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    #@12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@15
    :cond_15
    const/4 v0, 0x1

    #@16
    .line 3336
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    #@19
    return-void
.end method

.method childrenNeedLayout()Z
    .registers 5

    #@0
    .line 3139
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_17

    #@8
    .line 3140
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    .line 3141
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@f
    move-result v3

    #@10
    if-gtz v3, :cond_14

    #@12
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    :cond_14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_6

    #@17
    :cond_17
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    .line 3390
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@b
    move-result v0

    #@c
    if-gez v0, :cond_16

    #@e
    .line 3392
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@10
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@15
    move-result v0

    #@16
    .line 3398
    :cond_16
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@18
    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    #@1a
    if-eqz v1, :cond_3c

    #@1c
    const/4 v2, 0x1

    #@1d
    const/4 v3, 0x2

    #@1e
    if-eq v1, v2, :cond_2d

    #@20
    const/4 v2, 0x0

    #@21
    if-eq v1, v3, :cond_46

    #@23
    const/4 v0, 0x3

    #@24
    if-eq v1, v0, :cond_28

    #@26
    move v0, v2

    #@27
    goto :goto_46

    #@28
    .line 3413
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    #@2b
    move-result v0

    #@2c
    goto :goto_46

    #@2d
    .line 3404
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    #@30
    move-result v1

    #@31
    sub-int/2addr v1, v0

    #@32
    div-int/lit8 v2, v1, 0x2

    #@34
    .line 3405
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    #@37
    move-result v1

    #@38
    add-int/2addr v1, v0

    #@39
    div-int/lit8 v0, v1, 0x2

    #@3b
    goto :goto_46

    #@3c
    .line 3400
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    #@3f
    move-result v1

    #@40
    sub-int v2, v1, v0

    #@42
    .line 3401
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    #@45
    move-result v0

    #@46
    .line 3420
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@48
    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@4a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@51
    move-result v1

    #@52
    if-lez v1, :cond_6e

    #@54
    .line 3423
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@56
    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@58
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@5b
    move-result-object v1

    #@5c
    .line 3424
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@5e
    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@60
    iget v4, v1, Landroid/graphics/Rect;->left:I

    #@62
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@64
    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@67
    .line 3426
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@69
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@6b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@6e
    .line 3430
    :cond_6e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    #@71
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 3247
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    #@3
    .line 3249
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    #@5
    if-eqz p1, :cond_19

    #@7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_19

    #@d
    .line 3254
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@f
    .line 3255
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    #@12
    move-result p1

    #@13
    const/4 p2, -0x1

    #@14
    const/4 p3, 0x0

    #@15
    .line 3254
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    #@18
    goto :goto_1c

    #@19
    .line 3258
    :cond_19
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToIndicatorPosition()V

    #@1c
    :goto_1c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    #@0
    .line 3187
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@3
    .line 3189
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@6
    move-result v0

    #@7
    const/high16 v1, 0x40000000    # 2.0f

    #@9
    if-eq v0, v1, :cond_c

    #@b
    return-void

    #@c
    .line 3198
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@e
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@10
    const/4 v1, 0x2

    #@11
    const/4 v2, 0x1

    #@12
    if-eq v0, v2, :cond_1a

    #@14
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@16
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    #@18
    if-ne v0, v1, :cond_80

    #@1a
    .line 3199
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    #@1d
    move-result v0

    #@1e
    const/4 v3, 0x0

    #@1f
    move v4, v3

    #@20
    move v5, v4

    #@21
    :goto_21
    if-ge v4, v0, :cond_38

    #@23
    .line 3204
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v6

    #@27
    .line 3205
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@2a
    move-result v7

    #@2b
    if-nez v7, :cond_35

    #@2d
    .line 3206
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    #@30
    move-result v6

    #@31
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@34
    move-result v5

    #@35
    :cond_35
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_21

    #@38
    :cond_38
    if-gtz v5, :cond_3b

    #@3a
    return-void

    #@3b
    .line 3215
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getContext()Landroid/content/Context;

    #@3e
    move-result-object v4

    #@3f
    const/16 v6, 0x10

    #@41
    invoke-static {v4, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@44
    move-result v4

    #@45
    float-to-int v4, v4

    #@46
    mul-int v6, v5, v0

    #@48
    .line 3218
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    #@4b
    move-result v7

    #@4c
    mul-int/2addr v4, v1

    #@4d
    sub-int/2addr v7, v4

    #@4e
    if-gt v6, v7, :cond_72

    #@50
    move v1, v3

    #@51
    :goto_51
    if-ge v3, v0, :cond_70

    #@53
    .line 3222
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@5d
    .line 3223
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@5f
    const/4 v7, 0x0

    #@60
    if-ne v6, v5, :cond_68

    #@62
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@64
    cmpl-float v6, v6, v7

    #@66
    if-eqz v6, :cond_6d

    #@68
    .line 3224
    :cond_68
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@6a
    .line 3225
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@6c
    move v1, v2

    #@6d
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    #@6f
    goto :goto_51

    #@70
    :cond_70
    move v2, v1

    #@71
    goto :goto_7b

    #@72
    .line 3233
    :cond_72
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@74
    iput v3, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    #@76
    .line 3234
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@78
    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    #@7b
    :goto_7b
    if-eqz v2, :cond_80

    #@7d
    .line 3240
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@80
    :cond_80
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    #@0
    .line 3173
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    #@3
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 5

    #@0
    .line 3158
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    int-to-float v1, p1

    #@3
    add-float/2addr v1, p2

    #@4
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@7
    move-result v1

    #@8
    iput v1, v0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    #@a
    .line 3159
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    #@c
    if-eqz v0, :cond_19

    #@e
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_19

    #@14
    .line 3160
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    #@16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@19
    .line 3164
    :cond_19
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    add-int/lit8 p1, p1, 0x1

    #@1f
    .line 3166
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object p1

    #@23
    .line 3168
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V

    #@26
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .registers 6

    #@0
    .line 3133
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@2
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 3134
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    #@a
    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    #@c
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@e
    const/4 v3, 0x0

    #@f
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@11
    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@14
    .line 3135
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    #@17
    return-void
.end method
