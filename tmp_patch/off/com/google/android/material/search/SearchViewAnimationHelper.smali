.class Lcom/google/android/material/search/SearchViewAnimationHelper;
.super Ljava/lang/Object;
.source "SearchViewAnimationHelper.java"


# static fields
.field private static final CONTENT_FROM_SCALE:F = 0.95f

.field private static final HIDE_CLEAR_BUTTON_ALPHA_DURATION_MS:J = 0x2aL

.field private static final HIDE_CLEAR_BUTTON_ALPHA_START_DELAY_MS:J = 0x0L

.field private static final HIDE_CONTENT_ALPHA_DURATION_MS:J = 0x53L

.field private static final HIDE_CONTENT_ALPHA_START_DELAY_MS:J = 0x0L

.field private static final HIDE_CONTENT_SCALE_DURATION_MS:J = 0xfaL

.field private static final HIDE_DURATION_MS:J = 0xfaL

.field private static final HIDE_TRANSLATE_DURATION_MS:J = 0x12cL

.field private static final SHOW_CLEAR_BUTTON_ALPHA_DURATION_MS:J = 0x32L

.field private static final SHOW_CLEAR_BUTTON_ALPHA_START_DELAY_MS:J = 0xfaL

.field private static final SHOW_CONTENT_ALPHA_DURATION_MS:J = 0x96L

.field private static final SHOW_CONTENT_ALPHA_START_DELAY_MS:J = 0x4bL

.field private static final SHOW_CONTENT_SCALE_DURATION_MS:J = 0x12cL

.field private static final SHOW_DURATION_MS:J = 0x12cL

.field private static final SHOW_TRANSLATE_DURATION_MS:J = 0x15eL

.field private static final SHOW_TRANSLATE_KEYBOARD_START_DELAY_MS:J = 0x96L


# instance fields
.field private final clearButton:Landroid/widget/ImageButton;

.field private final contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private final divider:Landroid/view/View;

.field private final dummyToolbar:Landroidx/appcompat/widget/Toolbar;

.field private final editText:Landroid/widget/EditText;

.field private final headerContainer:Landroid/widget/FrameLayout;

.field private final rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field private final scrim:Landroid/view/View;

.field private searchBar:Lcom/google/android/material/search/SearchBar;

.field private final searchPrefix:Landroid/widget/TextView;

.field private final searchView:Lcom/google/android/material/search/SearchView;

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;

.field private final toolbarContainer:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .registers 3

    #@0
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@5
    .line 96
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->scrim:Landroid/view/View;

    #@7
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    #@9
    .line 97
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@b
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@d
    .line 98
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    #@f
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    #@11
    .line 99
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->toolbarContainer:Landroid/widget/FrameLayout;

    #@13
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    #@15
    .line 100
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    #@17
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    #@19
    .line 101
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@1b
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@1d
    .line 102
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    #@1f
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    #@21
    .line 103
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    #@23
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    #@25
    .line 104
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    #@27
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    #@29
    .line 105
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    #@2b
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    #@2d
    .line 106
    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@2f
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@31
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;
    .registers 1

    #@0
    .line 52
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    .registers 1

    #@0
    .line 52
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V
    .registers 2

    #@0
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setContentViewsAlpha(F)V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;
    .registers 1

    #@0
    .line 52
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@2
    return-object p0
.end method

.method private addActionMenuViewAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .registers 10

    #@0
    .line 440
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    const/4 v1, 0x2

    #@a
    new-array v2, v1, [F

    #@c
    .line 446
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXEnd(Landroid/view/View;)I

    #@f
    move-result v3

    #@10
    int-to-float v3, v3

    #@11
    const/4 v4, 0x0

    #@12
    aput v3, v2, v4

    #@14
    const/4 v3, 0x1

    #@15
    const/4 v5, 0x0

    #@16
    aput v5, v2, v3

    #@18
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@1b
    move-result-object v2

    #@1c
    new-array v6, v3, [Landroid/view/View;

    #@1e
    aput-object v0, v6, v4

    #@20
    .line 448
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@23
    move-result-object v6

    #@24
    .line 447
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@27
    new-array v6, v1, [F

    #@29
    .line 450
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    #@2c
    move-result v7

    #@2d
    int-to-float v7, v7

    #@2e
    aput v7, v6, v4

    #@30
    aput v5, v6, v3

    #@32
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@35
    move-result-object v5

    #@36
    new-array v6, v3, [Landroid/view/View;

    #@38
    aput-object v0, v6, v4

    #@3a
    .line 452
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@3d
    move-result-object v0

    #@3e
    .line 451
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@41
    new-array v0, v1, [Landroid/animation/Animator;

    #@43
    aput-object v2, v0, v4

    #@45
    aput-object v5, v0, v3

    #@47
    .line 454
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@4a
    return-void
.end method

.method private addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .registers 4

    #@0
    .line 396
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 401
    :cond_9
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    .line 402
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@13
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_20

    #@19
    .line 403
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addDrawerArrowDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    #@1c
    .line 404
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addFadeThroughDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    #@1f
    goto :goto_23

    #@20
    .line 406
    :cond_20
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setFullDrawableProgressIfNeeded(Landroid/graphics/drawable/Drawable;)V

    #@23
    :goto_23
    return-void
.end method

.method private addBackButtonTranslationAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .registers 10

    #@0
    .line 380
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    const/4 v1, 0x2

    #@a
    new-array v2, v1, [F

    #@c
    .line 386
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXStart(Landroid/view/View;)I

    #@f
    move-result v3

    #@10
    int-to-float v3, v3

    #@11
    const/4 v4, 0x0

    #@12
    aput v3, v2, v4

    #@14
    const/4 v3, 0x1

    #@15
    const/4 v5, 0x0

    #@16
    aput v5, v2, v3

    #@18
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@1b
    move-result-object v2

    #@1c
    new-array v6, v3, [Landroid/view/View;

    #@1e
    aput-object v0, v6, v4

    #@20
    .line 387
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@27
    new-array v6, v1, [F

    #@29
    .line 389
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    #@2c
    move-result v7

    #@2d
    int-to-float v7, v7

    #@2e
    aput v7, v6, v4

    #@30
    aput v5, v6, v3

    #@32
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@35
    move-result-object v5

    #@36
    new-array v6, v3, [Landroid/view/View;

    #@38
    aput-object v0, v6, v4

    #@3a
    .line 390
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@41
    new-array v0, v1, [Landroid/animation/Animator;

    #@43
    aput-object v2, v0, v4

    #@45
    aput-object v5, v0, v3

    #@47
    .line 392
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@4a
    return-void
.end method

.method private addDrawerArrowDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 411
    instance-of v0, p2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    #@2
    if-eqz v0, :cond_21

    #@4
    .line 412
    check-cast p2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    #@6
    const/4 v0, 0x2

    #@7
    new-array v0, v0, [F

    #@9
    .line 413
    fill-array-data v0, :array_22

    #@c
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@f
    move-result-object v0

    #@10
    .line 414
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;

    #@12
    invoke-direct {v1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V

    #@15
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@18
    const/4 p2, 0x1

    #@19
    new-array p2, p2, [Landroid/animation/Animator;

    #@1b
    const/4 v1, 0x0

    #@1c
    aput-object v0, p2, v1

    #@1e
    .line 416
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@21
    :cond_21
    return-void

    #@22
    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addFadeThroughDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 421
    instance-of v0, p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    #@2
    if-eqz v0, :cond_21

    #@4
    .line 422
    check-cast p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    #@6
    const/4 v0, 0x2

    #@7
    new-array v0, v0, [F

    #@9
    .line 423
    fill-array-data v0, :array_22

    #@c
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@f
    move-result-object v0

    #@10
    .line 424
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;

    #@12
    invoke-direct {v1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/internal/FadeThroughDrawable;)V

    #@15
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@18
    const/4 p2, 0x1

    #@19
    new-array p2, p2, [Landroid/animation/Animator;

    #@1b
    const/4 v1, 0x0

    #@1c
    aput-object v0, p2, v1

    #@1e
    .line 426
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@21
    :cond_21
    return-void

    #@22
    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calculateFromClipBounds()Landroid/graphics/Rect;
    .registers 7

    #@0
    const/4 v0, 0x2

    #@1
    new-array v1, v0, [I

    #@3
    .line 338
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@5
    invoke-virtual {v2, v1}, Lcom/google/android/material/search/SearchBar;->getLocationOnScreen([I)V

    #@8
    const/4 v2, 0x0

    #@9
    aget v3, v1, v2

    #@b
    const/4 v4, 0x1

    #@c
    aget v1, v1, v4

    #@e
    new-array v0, v0, [I

    #@10
    .line 344
    iget-object v5, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@12
    invoke-virtual {v5, v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getLocationOnScreen([I)V

    #@15
    aget v2, v0, v2

    #@17
    aget v0, v0, v4

    #@19
    sub-int/2addr v3, v2

    #@1a
    sub-int/2addr v1, v0

    #@1b
    .line 350
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@1d
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getWidth()I

    #@20
    move-result v0

    #@21
    add-int/2addr v0, v3

    #@22
    .line 351
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@24
    invoke-virtual {v2}, Lcom/google/android/material/search/SearchBar;->getHeight()I

    #@27
    move-result v2

    #@28
    add-int/2addr v2, v1

    #@29
    .line 353
    new-instance v4, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v4, v3, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2e
    return-object v4
.end method

.method private getActionMenuViewsAlphaAnimator(Z)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 466
    fill-array-data v0, :array_3a

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    if-eqz p1, :cond_f

    #@c
    const-wide/16 v1, 0x12c

    #@e
    goto :goto_11

    #@f
    :cond_f
    const-wide/16 v1, 0xfa

    #@11
    .line 467
    :goto_11
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@14
    .line 468
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@16
    .line 469
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@19
    move-result-object p1

    #@1a
    .line 468
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1d
    .line 471
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@1f
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    #@22
    move-result p1

    #@23
    if-eqz p1, :cond_39

    #@25
    .line 472
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@27
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    #@2a
    move-result-object p1

    #@2b
    .line 473
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    #@2d
    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    #@30
    move-result-object v1

    #@31
    .line 474
    new-instance v2, Lcom/google/android/material/internal/FadeThroughUpdateListener;

    #@33
    invoke-direct {v2, p1, v1}, Lcom/google/android/material/internal/FadeThroughUpdateListener;-><init>(Landroid/view/View;Landroid/view/View;)V

    #@36
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@39
    :cond_39
    return-object v0

    #@3a
    :array_3a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getButtonsAnimator(Z)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 369
    new-instance v0, Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@5
    .line 370
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonTranslationAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    #@8
    .line 371
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    #@b
    .line 372
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addActionMenuViewAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    #@e
    if-eqz p1, :cond_13

    #@10
    const-wide/16 v1, 0x12c

    #@12
    goto :goto_15

    #@13
    :cond_13
    const-wide/16 v1, 0xfa

    #@15
    .line 373
    :goto_15
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    #@18
    .line 374
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1a
    .line 375
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@1d
    move-result-object p1

    #@1e
    .line 374
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@21
    return-object v0
.end method

.method private getClearButtonAnimator(Z)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 357
    fill-array-data v0, :array_38

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    if-eqz p1, :cond_f

    #@c
    const-wide/16 v1, 0x32

    #@e
    goto :goto_11

    #@f
    :cond_f
    const-wide/16 v1, 0x2a

    #@11
    .line 358
    :goto_11
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@14
    if-eqz p1, :cond_19

    #@16
    const-wide/16 v1, 0xfa

    #@18
    goto :goto_1b

    #@19
    :cond_19
    const-wide/16 v1, 0x0

    #@1b
    .line 360
    :goto_1b
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@1e
    .line 362
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@20
    .line 363
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@23
    move-result-object p1

    #@24
    .line 362
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@27
    const/4 p1, 0x1

    #@28
    new-array p1, p1, [Landroid/view/View;

    #@2a
    const/4 v1, 0x0

    #@2b
    .line 364
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    #@2d
    aput-object v2, p1, v1

    #@2f
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@32
    move-result-object p1

    #@33
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@36
    return-object v0

    #@37
    nop

    #@38
    :array_38
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getContentAlphaAnimator(Z)Landroid/animation/Animator;
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    new-array v1, v0, [F

    #@3
    .line 497
    fill-array-data v1, :array_3c

    #@6
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v1

    #@a
    if-eqz p1, :cond_f

    #@c
    const-wide/16 v2, 0x96

    #@e
    goto :goto_11

    #@f
    :cond_f
    const-wide/16 v2, 0x53

    #@11
    .line 498
    :goto_11
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@14
    if-eqz p1, :cond_19

    #@16
    const-wide/16 v2, 0x4b

    #@18
    goto :goto_1b

    #@19
    :cond_19
    const-wide/16 v2, 0x0

    #@1b
    .line 500
    :goto_1b
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@1e
    .line 502
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@20
    .line 503
    invoke-static {p1, v2}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@23
    move-result-object p1

    #@24
    .line 502
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@27
    new-array p1, v0, [Landroid/view/View;

    #@29
    const/4 v0, 0x0

    #@2a
    .line 504
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    #@2c
    aput-object v2, p1, v0

    #@2e
    const/4 v0, 0x1

    #@2f
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@31
    aput-object v2, p1, v0

    #@33
    .line 505
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@36
    move-result-object p1

    #@37
    .line 504
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@3a
    return-object v1

    #@3b
    nop

    #@3c
    :array_3c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getContentAnimator(Z)Landroid/animation/Animator;
    .registers 6

    #@0
    .line 490
    new-instance v0, Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@5
    const/4 v1, 0x3

    #@6
    new-array v1, v1, [Landroid/animation/Animator;

    #@8
    const/4 v2, 0x0

    #@9
    .line 492
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentAlphaAnimator(Z)Landroid/animation/Animator;

    #@c
    move-result-object v3

    #@d
    aput-object v3, v1, v2

    #@f
    const/4 v2, 0x1

    #@10
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getDividerAnimator(Z)Landroid/animation/Animator;

    #@13
    move-result-object v3

    #@14
    aput-object v3, v1, v2

    #@16
    const/4 v2, 0x2

    #@17
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentScaleAnimator(Z)Landroid/animation/Animator;

    #@1a
    move-result-object p1

    #@1b
    aput-object p1, v1, v2

    #@1d
    .line 491
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@20
    return-object v0
.end method

.method private getContentScaleAnimator(Z)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 523
    fill-array-data v0, :array_2e

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    if-eqz p1, :cond_f

    #@c
    const-wide/16 v1, 0x12c

    #@e
    goto :goto_11

    #@f
    :cond_f
    const-wide/16 v1, 0xfa

    #@11
    .line 524
    :goto_11
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@14
    .line 526
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@16
    .line 527
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@19
    move-result-object p1

    #@1a
    .line 526
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1d
    const/4 p1, 0x1

    #@1e
    new-array p1, p1, [Landroid/view/View;

    #@20
    const/4 v1, 0x0

    #@21
    .line 528
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@23
    aput-object v2, p1, v1

    #@25
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->scaleListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@28
    move-result-object p1

    #@29
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@2c
    return-object v0

    #@2d
    nop

    #@2e
    :array_2e
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDividerAnimator(Z)Landroid/animation/Animator;
    .registers 8

    #@0
    .line 510
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@2
    .line 511
    invoke-virtual {v0}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->getHeight()I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    const v1, 0x3d4cccd0    # 0.050000012f

    #@a
    mul-float/2addr v0, v1

    #@b
    const/high16 v1, 0x40000000    # 2.0f

    #@d
    div-float/2addr v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    new-array v1, v1, [F

    #@11
    const/4 v2, 0x0

    #@12
    aput v0, v1, v2

    #@14
    const/4 v0, 0x0

    #@15
    const/4 v3, 0x1

    #@16
    aput v0, v1, v3

    #@18
    .line 513
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@1b
    move-result-object v0

    #@1c
    if-eqz p1, :cond_21

    #@1e
    const-wide/16 v4, 0x12c

    #@20
    goto :goto_23

    #@21
    :cond_21
    const-wide/16 v4, 0xfa

    #@23
    .line 514
    :goto_23
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@26
    .line 516
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@28
    .line 517
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@2b
    move-result-object p1

    #@2c
    .line 516
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@2f
    new-array p1, v3, [Landroid/view/View;

    #@31
    .line 518
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    #@33
    aput-object v1, p1, v2

    #@35
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@3c
    return-object v0
.end method

.method private getDummyToolbarAnimator(Z)Landroid/animation/Animator;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 458
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method private getEditTextAnimator(Z)Landroid/animation/Animator;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 486
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method private getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .registers 6

    #@0
    .line 257
    new-instance v0, Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@5
    const/16 v1, 0xa

    #@7
    new-array v1, v1, [Landroid/animation/Animator;

    #@9
    const/4 v2, 0x0

    #@a
    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getScrimAlphaAnimator(Z)Landroid/animation/Animator;

    #@d
    move-result-object v3

    #@e
    aput-object v3, v1, v2

    #@10
    const/4 v2, 0x1

    #@11
    .line 260
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getRootViewAnimator(Z)Landroid/animation/Animator;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v1, v2

    #@17
    const/4 v2, 0x2

    #@18
    .line 261
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getClearButtonAnimator(Z)Landroid/animation/Animator;

    #@1b
    move-result-object v3

    #@1c
    aput-object v3, v1, v2

    #@1e
    const/4 v2, 0x3

    #@1f
    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentAnimator(Z)Landroid/animation/Animator;

    #@22
    move-result-object v3

    #@23
    aput-object v3, v1, v2

    #@25
    const/4 v2, 0x4

    #@26
    .line 263
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsAnimator(Z)Landroid/animation/Animator;

    #@29
    move-result-object v3

    #@2a
    aput-object v3, v1, v2

    #@2c
    const/4 v2, 0x5

    #@2d
    .line 264
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getHeaderContainerAnimator(Z)Landroid/animation/Animator;

    #@30
    move-result-object v3

    #@31
    aput-object v3, v1, v2

    #@33
    const/4 v2, 0x6

    #@34
    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getDummyToolbarAnimator(Z)Landroid/animation/Animator;

    #@37
    move-result-object v3

    #@38
    aput-object v3, v1, v2

    #@3a
    const/4 v2, 0x7

    #@3b
    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getActionMenuViewsAlphaAnimator(Z)Landroid/animation/Animator;

    #@3e
    move-result-object v3

    #@3f
    aput-object v3, v1, v2

    #@41
    const/16 v2, 0x8

    #@43
    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getEditTextAnimator(Z)Landroid/animation/Animator;

    #@46
    move-result-object v3

    #@47
    aput-object v3, v1, v2

    #@49
    const/16 v2, 0x9

    #@4b
    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getSearchPrefixAnimator(Z)Landroid/animation/Animator;

    #@4e
    move-result-object v3

    #@4f
    aput-object v3, v1, v2

    #@51
    .line 258
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@54
    .line 269
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$5;

    #@56
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V

    #@59
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@5c
    return-object v0
.end method

.method private getFromTranslationXEnd(Landroid/view/View;)I
    .registers 4

    #@0
    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@9
    move-result p1

    #@a
    .line 560
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@c
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1a

    #@12
    .line 561
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@14
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getLeft()I

    #@17
    move-result v0

    #@18
    sub-int/2addr v0, p1

    #@19
    goto :goto_28

    #@1a
    .line 562
    :cond_1a
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@1c
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getRight()I

    #@1f
    move-result v0

    #@20
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@22
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->getWidth()I

    #@25
    move-result v1

    #@26
    sub-int/2addr v0, v1

    #@27
    add-int/2addr v0, p1

    #@28
    :goto_28
    return v0
.end method

.method private getFromTranslationXStart(Landroid/view/View;)I
    .registers 5

    #@0
    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@9
    move-result p1

    #@a
    .line 551
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@c
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@f
    move-result v0

    #@10
    .line 552
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@12
    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_28

    #@18
    .line 553
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@1a
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getWidth()I

    #@1d
    move-result v1

    #@1e
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@20
    invoke-virtual {v2}, Lcom/google/android/material/search/SearchBar;->getRight()I

    #@23
    move-result v2

    #@24
    sub-int/2addr v1, v2

    #@25
    add-int/2addr v1, p1

    #@26
    sub-int/2addr v1, v0

    #@27
    goto :goto_30

    #@28
    .line 554
    :cond_28
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@2a
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getLeft()I

    #@2d
    move-result v1

    #@2e
    sub-int/2addr v1, p1

    #@2f
    add-int/2addr v1, v0

    #@30
    :goto_30
    return v1
.end method

.method private getFromTranslationY()I
    .registers 4

    #@0
    .line 566
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    #@8
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    div-int/lit8 v0, v0, 0x2

    #@f
    .line 567
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@11
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getTop()I

    #@14
    move-result v1

    #@15
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@17
    invoke-virtual {v2}, Lcom/google/android/material/search/SearchBar;->getBottom()I

    #@1a
    move-result v2

    #@1b
    add-int/2addr v1, v2

    #@1c
    div-int/lit8 v1, v1, 0x2

    #@1e
    sub-int/2addr v1, v0

    #@1f
    return v1
.end method

.method private getHeaderContainerAnimator(Z)Landroid/animation/Animator;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 462
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method private getRootViewAnimator(Z)Landroid/animation/Animator;
    .registers 9

    #@0
    .line 317
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@2
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    #@5
    move-result-object v0

    #@6
    .line 318
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->calculateFromClipBounds()Landroid/graphics/Rect;

    #@9
    move-result-object v1

    #@a
    .line 319
    new-instance v2, Landroid/graphics/Rect;

    #@c
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@f
    .line 321
    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@11
    invoke-virtual {v3}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    #@14
    move-result v3

    #@15
    .line 323
    new-instance v4, Lcom/google/android/material/internal/RectEvaluator;

    #@17
    invoke-direct {v4, v2}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    #@1a
    const/4 v5, 0x2

    #@1b
    new-array v5, v5, [Ljava/lang/Object;

    #@1d
    const/4 v6, 0x0

    #@1e
    aput-object v1, v5, v6

    #@20
    const/4 v1, 0x1

    #@21
    aput-object v0, v5, v1

    #@23
    .line 324
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    #@26
    move-result-object v0

    #@27
    .line 325
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;

    #@29
    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;FLandroid/graphics/Rect;)V

    #@2c
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@2f
    if-eqz p1, :cond_34

    #@31
    const-wide/16 v1, 0x12c

    #@33
    goto :goto_36

    #@34
    :cond_34
    const-wide/16 v1, 0xfa

    #@36
    .line 330
    :goto_36
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@39
    .line 331
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@3b
    .line 332
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@3e
    move-result-object p1

    #@3f
    .line 331
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@42
    return-object v0
.end method

.method private getScrimAlphaAnimator(Z)Landroid/animation/Animator;
    .registers 6

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 307
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@4
    goto :goto_7

    #@5
    :cond_5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@7
    :goto_7
    const/4 v1, 0x2

    #@8
    new-array v1, v1, [F

    #@a
    .line 309
    fill-array-data v1, :array_32

    #@d
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@10
    move-result-object v1

    #@11
    if-eqz p1, :cond_16

    #@13
    const-wide/16 v2, 0x12c

    #@15
    goto :goto_18

    #@16
    :cond_16
    const-wide/16 v2, 0xfa

    #@18
    .line 310
    :goto_18
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@1b
    .line 311
    invoke-static {p1, v0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@22
    const/4 p1, 0x1

    #@23
    new-array p1, p1, [Landroid/view/View;

    #@25
    const/4 v0, 0x0

    #@26
    .line 312
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    #@28
    aput-object v2, p1, v0

    #@2a
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2d
    move-result-object p1

    #@2e
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@31
    return-object v1

    #@32
    :array_32
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSearchPrefixAnimator(Z)Landroid/animation/Animator;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 482
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method private getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .registers 6

    #@0
    .line 241
    new-instance v0, Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@5
    const/4 v1, 0x1

    #@6
    new-array v1, v1, [Landroid/animation/Animator;

    #@8
    const/4 v2, 0x0

    #@9
    .line 242
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationYAnimator()Landroid/animation/Animator;

    #@c
    move-result-object v3

    #@d
    aput-object v3, v1, v2

    #@f
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@12
    .line 243
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    #@15
    .line 244
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@17
    .line 245
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@1a
    move-result-object v1

    #@1b
    .line 244
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1e
    if-eqz p1, :cond_23

    #@20
    const-wide/16 v1, 0x15e

    #@22
    goto :goto_25

    #@23
    :cond_23
    const-wide/16 v1, 0x12c

    #@25
    .line 246
    :goto_25
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    #@28
    return-object v0
.end method

.method private getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;
    .registers 10

    #@0
    if-eqz p2, :cond_7

    #@2
    .line 533
    invoke-direct {p0, p3}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXStart(Landroid/view/View;)I

    #@5
    move-result p2

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-direct {p0, p3}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXEnd(Landroid/view/View;)I

    #@a
    move-result p2

    #@b
    :goto_b
    const/4 v0, 0x2

    #@c
    new-array v1, v0, [F

    #@e
    int-to-float p2, p2

    #@f
    const/4 v2, 0x0

    #@10
    aput p2, v1, v2

    #@12
    const/4 p2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    aput v3, v1, p2

    #@16
    .line 534
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@19
    move-result-object v1

    #@1a
    new-array v4, p2, [Landroid/view/View;

    #@1c
    aput-object p3, v4, v2

    #@1e
    .line 535
    invoke-static {v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@25
    new-array v4, v0, [F

    #@27
    .line 537
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    #@2a
    move-result v5

    #@2b
    int-to-float v5, v5

    #@2c
    aput v5, v4, v2

    #@2e
    aput v3, v4, p2

    #@30
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@33
    move-result-object v3

    #@34
    new-array v4, p2, [Landroid/view/View;

    #@36
    aput-object p3, v4, v2

    #@38
    .line 538
    invoke-static {v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@3b
    move-result-object p3

    #@3c
    invoke-virtual {v3, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@3f
    .line 540
    new-instance p3, Landroid/animation/AnimatorSet;

    #@41
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    #@44
    new-array v0, v0, [Landroid/animation/Animator;

    #@46
    aput-object v1, v0, v2

    #@48
    aput-object v3, v0, p2

    #@4a
    .line 541
    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@4d
    if-eqz p1, :cond_52

    #@4f
    const-wide/16 v0, 0x12c

    #@51
    goto :goto_54

    #@52
    :cond_52
    const-wide/16 v0, 0xfa

    #@54
    .line 542
    :goto_54
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    #@57
    .line 543
    sget-object p2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@59
    .line 544
    invoke-static {p1, p2}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@5c
    move-result-object p1

    #@5d
    .line 543
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@60
    return-object p3
.end method

.method private getTranslationYAnimator()Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 251
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@5
    invoke-virtual {v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getHeight()I

    #@8
    move-result v1

    #@9
    int-to-float v1, v1

    #@a
    const/4 v2, 0x0

    #@b
    aput v1, v0, v2

    #@d
    const/4 v1, 0x0

    #@e
    const/4 v3, 0x1

    #@f
    aput v1, v0, v3

    #@11
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@14
    move-result-object v0

    #@15
    new-array v1, v3, [Landroid/view/View;

    #@17
    .line 252
    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@19
    aput-object v3, v1, v2

    #@1b
    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@22
    return-object v0
.end method

.method static synthetic lambda$addDrawerArrowDrawableAnimatorIfNeeded$3(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    #@0
    .line 415
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    #@3
    move-result p1

    #@4
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    #@7
    return-void
.end method

.method static synthetic lambda$addFadeThroughDrawableAnimatorIfNeeded$4(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    #@0
    .line 425
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    #@3
    move-result p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    #@7
    return-void
.end method

.method private setActionMenuViewAlphaIfNeeded(F)V
    .registers 3

    #@0
    .line 297
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_13

    #@8
    .line 298
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    #@a
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_13

    #@10
    .line 300
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    #@13
    :cond_13
    return-void
.end method

.method private setContentViewsAlpha(F)V
    .registers 3

    #@0
    .line 290
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    #@5
    .line 291
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    #@7
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    #@a
    .line 292
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->setAlpha(F)V

    #@f
    .line 293
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setActionMenuViewAlphaIfNeeded(F)V

    #@12
    return-void
.end method

.method private setFullDrawableProgressIfNeeded(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 431
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 432
    move-object v0, p1

    #@7
    check-cast v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    #@9
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    #@c
    .line 434
    :cond_c
    instance-of v0, p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    #@e
    if-eqz v0, :cond_15

    #@10
    .line 435
    check-cast p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    #@12
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    #@15
    :cond_15
    return-void
.end method

.method private setMenuItemsNotClickable(Landroidx/appcompat/widget/Toolbar;)V
    .registers 5

    #@0
    .line 586
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_1e

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    .line 588
    :goto_8
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    #@b
    move-result v2

    #@c
    if-ge v1, v2, :cond_1e

    #@e
    .line 589
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v2

    #@12
    .line 590
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    #@15
    .line 591
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    #@18
    .line 592
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    return-void
.end method

.method private setUpDummyToolbarIfNeeded()V
    .registers 3

    #@0
    .line 572
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 574
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    #@b
    .line 576
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@d
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    #@10
    move-result v0

    #@11
    const/4 v1, -0x1

    #@12
    if-eq v0, v1, :cond_33

    #@14
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@16
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_33

    #@1c
    .line 577
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@1e
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@20
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    #@23
    move-result v1

    #@24
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    #@27
    .line 578
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@29
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setMenuItemsNotClickable(Landroidx/appcompat/widget/Toolbar;)V

    #@2c
    .line 579
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    #@32
    goto :goto_3a

    #@33
    .line 581
    :cond_33
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    #@35
    const/16 v1, 0x8

    #@37
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    #@3a
    :goto_3a
    return-void
.end method

.method private startHideAnimationCollapse()V
    .registers 3

    #@0
    .line 162
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 163
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    .line 165
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    #@11
    move-result-object v0

    #@12
    .line 166
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$2;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1a
    .line 182
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@1d
    return-void
.end method

.method private startHideAnimationTranslate()V
    .registers 3

    #@0
    .line 217
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 218
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    .line 220
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    #@11
    move-result-object v0

    #@12
    .line 221
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$4;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1a
    .line 237
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@1d
    return-void
.end method

.method private startShowAnimationExpand()V
    .registers 3

    #@0
    .line 130
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 131
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    #@d
    .line 133
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@f
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    #@11
    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    #@14
    .line 134
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setUpDummyToolbarIfNeeded()V

    #@17
    .line 135
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    #@19
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@1b
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 136
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    #@24
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    #@2b
    move-result v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    #@2f
    .line 137
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@31
    const/4 v1, 0x4

    #@32
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    #@35
    .line 138
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@37
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda2;

    #@39
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    #@3c
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->post(Ljava/lang/Runnable;)Z

    #@3f
    return-void
.end method

.method private startShowAnimationTranslate()V
    .registers 5

    #@0
    .line 186
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 187
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    #@a
    .line 188
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda3;

    #@f
    invoke-direct {v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/search/SearchView;)V

    #@12
    const-wide/16 v2, 0x96

    #@14
    .line 187
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/search/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@17
    .line 191
    :cond_17
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@19
    const/4 v1, 0x4

    #@1a
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    #@1d
    .line 192
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@1f
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda4;

    #@21
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    #@24
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->post(Ljava/lang/Runnable;)Z

    #@27
    return-void
.end method


# virtual methods
.method hide()V
    .registers 2

    #@0
    .line 122
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 123
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationCollapse()V

    #@7
    goto :goto_b

    #@8
    .line 125
    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationTranslate()V

    #@b
    :goto_b
    return-void
.end method

.method synthetic lambda$getRootViewAnimator$2$com-google-android-material-search-SearchViewAnimationHelper(FLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 5

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    .line 327
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    #@5
    move-result p3

    #@6
    sub-float/2addr v0, p3

    #@7
    mul-float/2addr p1, v0

    #@8
    .line 328
    iget-object p3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@a
    invoke-virtual {p3, p2, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(Landroid/graphics/Rect;F)V

    #@d
    return-void
.end method

.method synthetic lambda$startShowAnimationExpand$0$com-google-android-material-search-SearchViewAnimationHelper()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 140
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    #@4
    move-result-object v0

    #@5
    .line 141
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$1;

    #@7
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    #@a
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@d
    .line 157
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@10
    return-void
.end method

.method synthetic lambda$startShowAnimationTranslate$1$com-google-android-material-search-SearchViewAnimationHelper()V
    .registers 3

    #@0
    .line 194
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getHeight()I

    #@5
    move-result v1

    #@6
    int-to-float v1, v1

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setTranslationY(F)V

    #@a
    const/4 v0, 0x1

    #@b
    .line 195
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    #@e
    move-result-object v0

    #@f
    .line 196
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$3;

    #@11
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$3;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    #@14
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@17
    .line 212
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@1a
    return-void
.end method

.method setSearchBar(Lcom/google/android/material/search/SearchBar;)V
    .registers 2

    #@0
    .line 110
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@2
    return-void
.end method

.method show()V
    .registers 2

    #@0
    .line 114
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 115
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startShowAnimationExpand()V

    #@7
    goto :goto_b

    #@8
    .line 117
    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startShowAnimationTranslate()V

    #@b
    :goto_b
    return-void
.end method
