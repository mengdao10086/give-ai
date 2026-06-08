.class public Landroidx/appcompat/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionBarContainer$Api21Impl;
    }
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 56
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 63
    new-instance v0, Landroidx/appcompat/widget/ActionBarBackgroundDrawable;

    #@5
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionBarBackgroundDrawable;-><init>(Landroidx/appcompat/widget/ActionBarContainer;)V

    #@8
    .line 64
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 66
    sget-object v0, Landroidx/appcompat/R$styleable;->ActionBar:[I

    #@d
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object p1

    #@11
    .line 68
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_background:I

    #@13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object p2

    #@17
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@19
    .line 69
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_backgroundStacked:I

    #@1b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object p2

    #@1f
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@21
    .line 71
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    #@23
    const/4 v0, -0x1

    #@24
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@27
    move-result p2

    #@28
    iput p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mHeight:I

    #@2a
    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getId()I

    #@2d
    move-result p2

    #@2e
    sget v0, Landroidx/appcompat/R$id;->split_action_bar:I

    #@30
    const/4 v1, 0x1

    #@31
    if-ne p2, v0, :cond_3d

    #@33
    .line 74
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@35
    .line 75
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_backgroundSplit:I

    #@37
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3a
    move-result-object p2

    #@3b
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3d
    .line 77
    :cond_3d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@40
    .line 79
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@42
    const/4 p2, 0x0

    #@43
    if-eqz p1, :cond_4a

    #@45
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@47
    if-nez p1, :cond_53

    #@49
    goto :goto_54

    #@4a
    .line 80
    :cond_4a
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@4c
    if-nez p1, :cond_53

    #@4e
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@50
    if-nez p1, :cond_53

    #@52
    goto :goto_54

    #@53
    :cond_53
    move v1, p2

    #@54
    .line 79
    :goto_54
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    #@57
    return-void
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .registers 4

    #@0
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@6
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@9
    move-result p1

    #@a
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@c
    add-int/2addr p1, v1

    #@d
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@f
    add-int/2addr p1, v0

    #@10
    return p1
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .registers 4

    #@0
    if-eqz p1, :cond_13

    #@2
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x8

    #@8
    if-eq v0, v1, :cond_13

    #@a
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@d
    move-result p1

    #@e
    if-nez p1, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 p1, 0x1

    #@14
    :goto_14
    return p1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    #@0
    .line 169
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    #@3
    .line 170
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_16

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_16

    #@d
    .line 171
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@16
    .line 173
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@18
    if-eqz v0, :cond_29

    #@1a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_29

    #@20
    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@29
    .line 176
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@2b
    if-eqz v0, :cond_3c

    #@2d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3c

    #@33
    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@35
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3c
    :cond_3c
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    #@0
    .line 244
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    #@0
    .line 183
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    #@3
    .line 184
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 185
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@a
    .line 187
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_11

    #@e
    .line 188
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@11
    .line 190
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@13
    if-eqz v0, :cond_18

    #@15
    .line 191
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@18
    :cond_18
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    #@0
    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    #@3
    .line 86
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    #@5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@b
    .line 87
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    #@d
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    #@13
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 223
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    const/4 p1, 0x1

    #@4
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    .line 210
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsTransitioning:Z

    #@2
    if-nez v0, :cond_d

    #@4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p1, 0x1

    #@e
    :goto_e
    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 11

    #@0
    .line 304
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@3
    .line 306
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@5
    const/16 p3, 0x8

    #@7
    const/4 p5, 0x1

    #@8
    const/4 v0, 0x0

    #@9
    if-eqz p1, :cond_13

    #@b
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v1

    #@f
    if-eq v1, p3, :cond_13

    #@11
    move v1, p5

    #@12
    goto :goto_14

    #@13
    :cond_13
    move v1, v0

    #@14
    :goto_14
    if-eqz p1, :cond_35

    #@16
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@19
    move-result v2

    #@1a
    if-eq v2, p3, :cond_35

    #@1c
    .line 310
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    #@1f
    move-result p3

    #@20
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    #@26
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@29
    move-result v3

    #@2a
    sub-int v3, p3, v3

    #@2c
    .line 313
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@2e
    sub-int/2addr v3, v4

    #@2f
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@31
    sub-int/2addr p3, v2

    #@32
    invoke-virtual {p1, p2, v3, p4, p3}, Landroid/view/View;->layout(IIII)V

    #@35
    .line 318
    :cond_35
    iget-boolean p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@37
    if-eqz p2, :cond_4d

    #@39
    .line 319
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3b
    if-eqz p1, :cond_4a

    #@3d
    .line 320
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    #@40
    move-result p2

    #@41
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    #@44
    move-result p3

    #@45
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@48
    goto/16 :goto_c0

    #@4a
    :cond_4a
    move p5, v0

    #@4b
    goto/16 :goto_c0

    #@4d
    .line 324
    :cond_4d
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@4f
    if-eqz p2, :cond_a5

    #@51
    .line 325
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@53
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    #@56
    move-result p2

    #@57
    if-nez p2, :cond_77

    #@59
    .line 326
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5b
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@5d
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    #@60
    move-result p3

    #@61
    iget-object p4, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@63
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    #@66
    move-result p4

    #@67
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@69
    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@6c
    move-result v0

    #@6d
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@6f
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@72
    move-result v2

    #@73
    .line 326
    invoke-virtual {p2, p3, p4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@76
    goto :goto_a4

    #@77
    .line 328
    :cond_77
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    #@79
    if-eqz p2, :cond_9f

    #@7b
    .line 329
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    #@7e
    move-result p2

    #@7f
    if-nez p2, :cond_9f

    #@81
    .line 330
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@83
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    #@85
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    #@88
    move-result p3

    #@89
    iget-object p4, p0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    #@8b
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    #@8e
    move-result p4

    #@8f
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    #@91
    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@94
    move-result v0

    #@95
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    #@97
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@9a
    move-result v2

    #@9b
    .line 330
    invoke-virtual {p2, p3, p4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@9e
    goto :goto_a4

    #@9f
    .line 333
    :cond_9f
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@a1
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@a4
    :goto_a4
    move v0, p5

    #@a5
    .line 337
    :cond_a5
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsStacked:Z

    #@a7
    if-eqz v1, :cond_4a

    #@a9
    .line 338
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@ab
    if-eqz p2, :cond_4a

    #@ad
    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@b0
    move-result p3

    #@b1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@b4
    move-result p4

    #@b5
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@b8
    move-result v0

    #@b9
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@bc
    move-result p1

    #@bd
    .line 339
    invoke-virtual {p2, p3, p4, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@c0
    :goto_c0
    if-eqz p5, :cond_c5

    #@c2
    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    #@c5
    :cond_c5
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    #@0
    .line 274
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-nez v0, :cond_1c

    #@6
    .line 275
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result v0

    #@a
    if-ne v0, v1, :cond_1c

    #@c
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mHeight:I

    #@e
    if-ltz v0, :cond_1c

    #@10
    .line 277
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@13
    move-result p2

    #@14
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@17
    move-result p2

    #@18
    .line 276
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1b
    move-result p2

    #@1c
    .line 279
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@1f
    .line 281
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@21
    if-nez p1, :cond_24

    #@23
    return-void

    #@24
    .line 283
    :cond_24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@27
    move-result p1

    #@28
    .line 284
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@2a
    if-eqz v0, :cond_73

    #@2c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@2f
    move-result v0

    #@30
    const/16 v2, 0x8

    #@32
    if-eq v0, v2, :cond_73

    #@34
    const/high16 v0, 0x40000000    # 2.0f

    #@36
    if-eq p1, v0, :cond_73

    #@38
    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@3a
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_47

    #@40
    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@42
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    #@45
    move-result v0

    #@46
    goto :goto_57

    #@47
    .line 289
    :cond_47
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    #@49
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_56

    #@4f
    .line 290
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    #@51
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    #@54
    move-result v0

    #@55
    goto :goto_57

    #@56
    :cond_56
    const/4 v0, 0x0

    #@57
    :goto_57
    if-ne p1, v1, :cond_5e

    #@59
    .line 295
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@5c
    move-result p1

    #@5d
    goto :goto_61

    #@5e
    :cond_5e
    const p1, 0x7fffffff

    #@61
    .line 296
    :goto_61
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    #@64
    move-result p2

    #@65
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@67
    .line 297
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    #@6a
    move-result v1

    #@6b
    add-int/2addr v0, v1

    #@6c
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@6f
    move-result p1

    #@70
    .line 296
    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setMeasuredDimension(II)V

    #@73
    :cond_73
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    .line 215
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    const/4 p1, 0x1

    #@4
    return p1
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 91
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_d

    #@4
    const/4 v1, 0x0

    #@5
    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8
    .line 93
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 95
    :cond_d
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@f
    if-eqz p1, :cond_33

    #@11
    .line 97
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@14
    .line 98
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@16
    if-eqz p1, :cond_33

    #@18
    .line 99
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@1d
    move-result p1

    #@1e
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@23
    move-result v1

    #@24
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@26
    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@29
    move-result v2

    #@2a
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    #@2c
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@2f
    move-result v3

    #@30
    .line 99
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@33
    .line 103
    :cond_33
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@35
    const/4 v0, 0x1

    #@36
    const/4 v1, 0x0

    #@37
    if-eqz p1, :cond_3e

    #@39
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3b
    if-nez p1, :cond_47

    #@3d
    goto :goto_48

    #@3e
    .line 104
    :cond_3e
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@40
    if-nez p1, :cond_47

    #@42
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@44
    if-nez p1, :cond_47

    #@46
    goto :goto_48

    #@47
    :cond_47
    move v0, v1

    #@48
    .line 103
    :goto_48
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    #@4b
    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    #@4e
    .line 107
    invoke-static {p0}, Landroidx/appcompat/widget/ActionBarContainer$Api21Impl;->invalidateOutline(Landroidx/appcompat/widget/ActionBarContainer;)V

    #@51
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_d

    #@4
    const/4 v1, 0x0

    #@5
    .line 134
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8
    .line 135
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 137
    :cond_d
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@f
    const/4 v0, 0x0

    #@10
    if-eqz p1, :cond_28

    #@12
    .line 139
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@15
    .line 140
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@17
    if-eqz p1, :cond_28

    #@19
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@1b
    if-eqz p1, :cond_28

    #@1d
    .line 141
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    #@20
    move-result v1

    #@21
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    #@24
    move-result v2

    #@25
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@28
    .line 144
    :cond_28
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@2a
    const/4 v1, 0x1

    #@2b
    if-eqz p1, :cond_33

    #@2d
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@2f
    if-nez p1, :cond_3c

    #@31
    :goto_31
    move v0, v1

    #@32
    goto :goto_3c

    #@33
    .line 145
    :cond_33
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@35
    if-nez p1, :cond_3c

    #@37
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@39
    if-nez p1, :cond_3c

    #@3b
    goto :goto_31

    #@3c
    .line 144
    :cond_3c
    :goto_3c
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    #@3f
    .line 146
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    #@42
    .line 148
    invoke-static {p0}, Landroidx/appcompat/widget/ActionBarContainer$Api21Impl;->invalidateOutline(Landroidx/appcompat/widget/ActionBarContainer;)V

    #@45
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_d

    #@4
    const/4 v1, 0x0

    #@5
    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8
    .line 114
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 116
    :cond_d
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@f
    if-eqz p1, :cond_37

    #@11
    .line 118
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@14
    .line 119
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsStacked:Z

    #@16
    if-eqz p1, :cond_37

    #@18
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@1a
    if-eqz p1, :cond_37

    #@1c
    .line 120
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@1e
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@21
    move-result v0

    #@22
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@24
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@27
    move-result v1

    #@28
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@2a
    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@2d
    move-result v2

    #@2e
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@30
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@33
    move-result v3

    #@34
    .line 120
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@37
    .line 124
    :cond_37
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@39
    const/4 v0, 0x1

    #@3a
    const/4 v1, 0x0

    #@3b
    if-eqz p1, :cond_42

    #@3d
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@3f
    if-nez p1, :cond_4b

    #@41
    goto :goto_4c

    #@42
    .line 125
    :cond_42
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@44
    if-nez p1, :cond_4b

    #@46
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@48
    if-nez p1, :cond_4b

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    move v0, v1

    #@4c
    .line 124
    :goto_4c
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    #@4f
    .line 126
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    #@52
    .line 128
    invoke-static {p0}, Landroidx/appcompat/widget/ActionBarContainer$Api21Impl;->invalidateOutline(Landroidx/appcompat/widget/ActionBarContainer;)V

    #@55
    return-void
.end method

.method public setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .registers 4

    #@0
    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 231
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    #@7
    .line 233
    :cond_7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    #@9
    if-eqz p1, :cond_1c

    #@b
    .line 235
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    #@e
    .line 236
    invoke-virtual {p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object v0

    #@12
    const/4 v1, -0x1

    #@13
    .line 237
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@15
    const/4 v1, -0x2

    #@16
    .line 238
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@18
    const/4 v0, 0x0

    #@19
    .line 239
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    #@1c
    :cond_1c
    return-void
.end method

.method public setTransitioning(Z)V
    .registers 2

    #@0
    .line 203
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsTransitioning:Z

    #@2
    if-eqz p1, :cond_7

    #@4
    const/high16 p1, 0x60000

    #@6
    goto :goto_9

    #@7
    :cond_7
    const/high16 p1, 0x40000

    #@9
    .line 204
    :goto_9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setDescendantFocusability(I)V

    #@c
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    #@0
    .line 154
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@3
    const/4 v0, 0x0

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move p1, v0

    #@9
    .line 156
    :goto_9
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v1, :cond_10

    #@d
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@10
    .line 157
    :cond_10
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_17

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@17
    .line 158
    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@19
    if-eqz v1, :cond_1e

    #@1b
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@1e
    :cond_1e
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    #@0
    if-eqz p3, :cond_7

    #@2
    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    #@0
    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v0, :cond_8

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@6
    if-eqz v0, :cond_1e

    #@8
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    #@a
    if-ne p1, v0, :cond_10

    #@c
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsStacked:Z

    #@e
    if-nez v0, :cond_1e

    #@10
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@12
    if-ne p1, v0, :cond_18

    #@14
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    #@16
    if-nez v0, :cond_1e

    #@18
    .line 164
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@1b
    move-result p1

    #@1c
    if-eqz p1, :cond_20

    #@1e
    :cond_1e
    const/4 p1, 0x1

    #@1f
    goto :goto_21

    #@20
    :cond_20
    const/4 p1, 0x0

    #@21
    :goto_21
    return p1
.end method
