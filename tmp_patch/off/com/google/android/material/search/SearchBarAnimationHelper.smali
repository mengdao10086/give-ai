.class Lcom/google/android/material/search/SearchBarAnimationHelper;
.super Ljava/lang/Object;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;
    }
.end annotation


# static fields
.field private static final COLLAPSE_DURATION_MS:J = 0xfaL

.field private static final COLLAPSE_FADE_IN_CHILDREN_DURATION_MS:J = 0x64L

.field private static final EXPAND_DURATION_MS:J = 0x12cL

.field private static final EXPAND_FADE_OUT_CHILDREN_DURATION_MS:J = 0x4bL

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_DURATION_MS:J = 0xfaL

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_IN_START_DELAY_MS:J = 0x1f4L

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_OUT_START_DELAY_MS:J = 0x2eeL

.field private static final ON_LOAD_ANIM_SECONDARY_DURATION_MS:J = 0xfaL

.field private static final ON_LOAD_ANIM_SECONDARY_START_DELAY_MS:J = 0xfaL


# instance fields
.field private final collapseAnimationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private collapsing:Z

.field private defaultCenterViewAnimator:Landroid/animation/Animator;

.field private final expandAnimationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private expanding:Z

.field private final onLoadAnimationCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onLoadAnimationFadeInEnabled:Z

.field private runningExpandOrCollapseAnimator:Landroid/animation/Animator;

.field private secondaryViewAnimator:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$iABKJ6kyZ69puyOjwiq34DXz3r0(Landroid/animation/Animator;)V
    .registers 1

    #@0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    #@3
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    #@a
    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    #@11
    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    #@13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    #@18
    const/4 v0, 0x1

    #@19
    .line 69
    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 70
    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    #@1e
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V
    .registers 2

    #@0
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    #@3
    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z
    .registers 2

    #@0
    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    #@2
    return p1
.end method

.method static synthetic access$202(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    #@0
    .line 46
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    #@2
    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z
    .registers 2

    #@0
    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    #@2
    return p1
.end method

.method private dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V
    .registers 4

    #@0
    .line 147
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;

    #@12
    .line 148
    invoke-interface {p1, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;->invoke(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method private getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .registers 6

    #@0
    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@3
    move-result-object p2

    #@4
    const-wide/16 v0, 0xfa

    #@6
    .line 310
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@9
    move-result-object p2

    #@a
    new-instance p3, Lcom/google/android/material/search/SearchBarAnimationHelper$6;

    #@c
    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$6;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V

    #@f
    .line 311
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@12
    move-result-object p1

    #@13
    .line 324
    invoke-virtual {p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getCollapseAnimator()Landroid/animation/Animator;

    #@16
    move-result-object p1

    #@17
    return-object p1
.end method

.method private getDefaultCenterViewAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .registers 13

    #@0
    const/4 v0, 0x2

    #@1
    new-array v1, v0, [F

    #@3
    .line 157
    fill-array-data v1, :array_64

    #@6
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    new-array v3, v2, [Landroid/view/View;

    #@d
    const/4 v4, 0x0

    #@e
    aput-object p1, v3, v4

    #@10
    .line 158
    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@17
    .line 159
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@19
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1c
    .line 161
    iget-boolean v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    #@1e
    const-wide/16 v5, 0xfa

    #@20
    const-wide/16 v7, 0x0

    #@22
    if-eqz v3, :cond_26

    #@24
    move-wide v9, v5

    #@25
    goto :goto_27

    #@26
    :cond_26
    move-wide v9, v7

    #@27
    .line 160
    :goto_27
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@2a
    .line 163
    iget-boolean v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    #@2c
    if-eqz v3, :cond_30

    #@2e
    const-wide/16 v7, 0x1f4

    #@30
    .line 162
    :cond_30
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@33
    new-array v3, v0, [F

    #@35
    .line 165
    fill-array-data v3, :array_6c

    #@38
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@3b
    move-result-object v3

    #@3c
    new-array v7, v2, [Landroid/view/View;

    #@3e
    aput-object p1, v7, v4

    #@40
    .line 166
    invoke-static {v7}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@43
    move-result-object p1

    #@44
    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@47
    .line 167
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@49
    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@4c
    .line 168
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@4f
    const-wide/16 v5, 0x2ee

    #@51
    .line 169
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@54
    .line 171
    new-instance p1, Landroid/animation/AnimatorSet;

    #@56
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    #@59
    new-array v0, v0, [Landroid/animation/Animator;

    #@5b
    aput-object v1, v0, v4

    #@5d
    aput-object v3, v0, v2

    #@5f
    .line 172
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@62
    return-object p1

    #@63
    nop

    #@64
    :array_64
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@6c
    :array_6c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getEndAnchoredViews(Landroid/view/View;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .line 397
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    .line 398
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 399
    instance-of v2, p1, Landroid/view/ViewGroup;

    #@b
    if-eqz v2, :cond_2c

    #@d
    .line 400
    check-cast p1, Landroid/view/ViewGroup;

    #@f
    const/4 v2, 0x0

    #@10
    .line 401
    :goto_10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@13
    move-result v3

    #@14
    if-ge v2, v3, :cond_2c

    #@16
    .line 402
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v3

    #@1a
    if-nez v0, :cond_20

    #@1c
    .line 403
    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    #@1e
    if-nez v4, :cond_26

    #@20
    :cond_20
    if-eqz v0, :cond_29

    #@22
    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    #@24
    if-nez v4, :cond_29

    #@26
    .line 405
    :cond_26
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    :cond_29
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_10

    #@2c
    :cond_2c
    return-object v1
.end method

.method private getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .registers 6

    #@0
    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@3
    move-result-object p2

    #@4
    const-wide/16 v0, 0x12c

    #@6
    .line 244
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@9
    move-result-object p2

    #@a
    new-instance p3, Lcom/google/android/material/search/SearchBarAnimationHelper$4;

    #@c
    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V

    #@f
    .line 245
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@12
    move-result-object p1

    #@13
    .line 257
    invoke-virtual {p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandAnimator()Landroid/animation/Animator;

    #@16
    move-result-object p1

    #@17
    return-object p1
.end method

.method private getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .registers 5

    #@0
    .line 341
    new-instance v0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;-><init>(Landroid/view/View;Landroid/view/View;)V

    #@5
    .line 343
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandedViewBackgroundUpdateListener(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@8
    move-result-object p1

    #@9
    .line 342
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setAdditionalUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@c
    move-result-object p1

    #@d
    if-eqz p3, :cond_14

    #@f
    .line 344
    invoke-virtual {p3}, Lcom/google/android/material/appbar/AppBarLayout;->getTop()I

    #@12
    move-result p3

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p3, 0x0

    #@15
    :goto_15
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setCollapsedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@18
    move-result-object p1

    #@19
    .line 345
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getEndAnchoredViews(Landroid/view/View;)Ljava/util/List;

    #@1c
    move-result-object p2

    #@1d
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addEndAnchoredViews(Ljava/util/Collection;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    #@20
    move-result-object p1

    #@21
    return-object p1
.end method

.method private getExpandedViewBackgroundUpdateListener(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 5

    #@0
    .line 351
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    move-result-object v0

    #@8
    .line 352
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    #@f
    .line 353
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@12
    move-result p1

    #@13
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@16
    .line 355
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda1;

    #@18
    invoke-direct {p1, v0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;)V

    #@1b
    return-object p1
.end method

.method private getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/search/SearchBar;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .line 389
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getChildren(Landroid/view/View;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 390
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_11

    #@a
    .line 391
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    #@d
    move-result-object p1

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@11
    :cond_11
    return-object v0
.end method

.method private getFadeInChildrenAnimator(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [F

    #@7
    .line 381
    fill-array-data v0, :array_20

    #@a
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@d
    move-result-object v0

    #@e
    .line 382
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@15
    const-wide/16 v1, 0x64

    #@17
    .line 383
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@1a
    .line 384
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1c
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1f
    return-object v0

    #@20
    :array_20
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFadeOutChildrenAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;
    .registers 4

    #@0
    .line 365
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [F

    #@7
    .line 366
    fill-array-data v0, :array_28

    #@a
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@d
    move-result-object v0

    #@e
    .line 367
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@15
    .line 368
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;

    #@17
    invoke-direct {p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    #@1a
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@1d
    const-wide/16 p1, 0x4b

    #@1f
    .line 374
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@22
    .line 375
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@24
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@27
    return-object v0

    #@28
    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getSecondaryActionMenuItemAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 196
    fill-array-data v0, :array_22

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Landroid/view/View;

    #@d
    const/4 v2, 0x0

    #@e
    aput-object p1, v1, v2

    #@10
    .line 197
    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@17
    .line 198
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@19
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1c
    const-wide/16 v1, 0xfa

    #@1e
    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@21
    return-object v0

    #@22
    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSecondaryViewAnimator(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;
    .registers 6

    #@0
    .line 178
    new-instance v0, Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@5
    const-wide/16 v1, 0xfa

    #@7
    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    #@a
    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getTextViewAnimator(Landroid/widget/TextView;)Landroid/animation/Animator;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@11
    if-eqz p2, :cond_1a

    #@13
    .line 182
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getSecondaryActionMenuItemAnimator(Landroid/view/View;)Landroid/animation/Animator;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1a
    :cond_1a
    return-object v0
.end method

.method private getTextViewAnimator(Landroid/widget/TextView;)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 188
    fill-array-data v0, :array_22

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Landroid/view/View;

    #@d
    const/4 v2, 0x0

    #@e
    aput-object p1, v1, v2

    #@10
    .line 189
    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@17
    .line 190
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@19
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1c
    const-wide/16 v1, 0xfa

    #@1e
    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@21
    return-object v0

    #@22
    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$getExpandedViewBackgroundUpdateListener$1(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    #@0
    .line 356
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    #@3
    move-result p2

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    sub-float p2, v0, p2

    #@8
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@b
    .line 357
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@e
    .line 360
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@11
    return-void
.end method

.method static synthetic lambda$getFadeOutChildrenAnimator$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    .line 372
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    #@4
    return-void
.end method


# virtual methods
.method addCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    #@0
    .line 332
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method addExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    #@0
    .line 265
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method addOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V
    .registers 3

    #@0
    .line 139
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method isCollapsing()Z
    .registers 2

    #@0
    .line 328
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    #@2
    return v0
.end method

.method isExpanding()Z
    .registers 2

    #@0
    .line 261
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    #@2
    return v0
.end method

.method isOnLoadAnimationFadeInEnabled()Z
    .registers 2

    #@0
    .line 131
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    #@2
    return v0
.end method

.method synthetic lambda$startExpandAnimation$0$com-google-android-material-search-SearchBarAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .registers 7

    #@0
    .line 217
    new-instance v0, Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@5
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeOutChildrenAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;

    #@8
    move-result-object v1

    #@9
    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    #@c
    move-result-object p1

    #@d
    const/4 p2, 0x2

    #@e
    new-array p2, p2, [Landroid/animation/Animator;

    #@10
    const/4 p3, 0x0

    #@11
    aput-object v1, p2, p3

    #@13
    const/4 p3, 0x1

    #@14
    aput-object p1, p2, p3

    #@16
    .line 221
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@19
    .line 222
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$3;

    #@1b
    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$3;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    #@1e
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@21
    .line 229
    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    #@23
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object p1

    #@27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result p2

    #@2b
    if-eqz p2, :cond_37

    #@2d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object p2

    #@31
    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    #@33
    .line 230
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@36
    goto :goto_27

    #@37
    :cond_37
    if-eqz p4, :cond_3e

    #@39
    const-wide/16 p1, 0x0

    #@3b
    .line 233
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    #@3e
    .line 235
    :cond_3e
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@41
    .line 237
    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    #@43
    return-void
.end method

.method removeCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .registers 3

    #@0
    .line 336
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method removeExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .registers 3

    #@0
    .line 269
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method removeOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)Z
    .registers 3

    #@0
    .line 143
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method setOnLoadAnimationFadeInEnabled(Z)V
    .registers 2

    #@0
    .line 135
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    #@2
    return-void
.end method

.method startCollapseAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .registers 8

    #@0
    .line 279
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isExpanding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 280
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    .line 283
    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    #@10
    .line 284
    new-instance v1, Landroid/animation/AnimatorSet;

    #@12
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@15
    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    #@18
    move-result-object p2

    #@19
    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeInChildrenAnimator(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;

    #@1c
    move-result-object p1

    #@1d
    const/4 p3, 0x2

    #@1e
    new-array p3, p3, [Landroid/animation/Animator;

    #@20
    const/4 v2, 0x0

    #@21
    aput-object p2, p3, v2

    #@23
    aput-object p1, p3, v0

    #@25
    .line 288
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@28
    .line 289
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$5;

    #@2a
    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    #@2d
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@30
    .line 296
    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    #@32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object p1

    #@36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result p2

    #@3a
    if-eqz p2, :cond_46

    #@3c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object p2

    #@40
    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    #@42
    .line 297
    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@45
    goto :goto_36

    #@46
    :cond_46
    if-eqz p4, :cond_4d

    #@48
    const-wide/16 p1, 0x0

    #@4a
    .line 300
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    #@4d
    .line 302
    :cond_4d
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    #@50
    .line 304
    iput-object v1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    #@52
    return-void
.end method

.method startExpandAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .registers 12

    #@0
    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isCollapsing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 211
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    .line 213
    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    #@10
    const/4 v0, 0x4

    #@11
    .line 214
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    #@14
    .line 215
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;

    #@16
    move-object v1, v0

    #@17
    move-object v2, p0

    #@18
    move-object v3, p1

    #@19
    move-object v4, p2

    #@1a
    move-object v5, p3

    #@1b
    move v6, p4

    #@1c
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    #@1f
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@22
    return-void
.end method

.method startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
    .registers 6

    #@0
    .line 73
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda3;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda3;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    #@8
    .line 74
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    #@b
    move-result-object v0

    #@c
    .line 75
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    .line 77
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getSecondaryActionMenuItemView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;

    #@13
    move-result-object p1

    #@14
    .line 79
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getSecondaryViewAnimator(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;

    #@17
    move-result-object v2

    #@18
    .line 80
    new-instance v3, Lcom/google/android/material/search/SearchBarAnimationHelper$1;

    #@1a
    invoke-direct {v3, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$1;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    #@1d
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@20
    .line 87
    iput-object v2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->secondaryViewAnimator:Landroid/animation/Animator;

    #@22
    const/4 v3, 0x0

    #@23
    .line 89
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    #@26
    if-eqz p1, :cond_2b

    #@28
    .line 91
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    #@2b
    .line 93
    :cond_2b
    instance-of p1, v1, Lcom/google/android/material/animation/AnimatableView;

    #@2d
    if-eqz p1, :cond_3d

    #@2f
    .line 94
    check-cast v1, Lcom/google/android/material/animation/AnimatableView;

    #@31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda4;

    #@36
    invoke-direct {p1, v2}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda4;-><init>(Landroid/animation/Animator;)V

    #@39
    invoke-interface {v1, p1}, Lcom/google/android/material/animation/AnimatableView;->startAnimation(Lcom/google/android/material/animation/AnimatableView$Listener;)V

    #@3c
    goto :goto_5b

    #@3d
    :cond_3d
    if-eqz v1, :cond_58

    #@3f
    .line 96
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    #@42
    const/4 p1, 0x0

    #@43
    .line 97
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    #@46
    .line 98
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getDefaultCenterViewAnimator(Landroid/view/View;)Landroid/animation/Animator;

    #@49
    move-result-object p1

    #@4a
    .line 99
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->defaultCenterViewAnimator:Landroid/animation/Animator;

    #@4c
    .line 100
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;

    #@4e
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/material/search/SearchBarAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/view/View;Landroid/animation/Animator;)V

    #@51
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@54
    .line 108
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    #@57
    goto :goto_5b

    #@58
    .line 110
    :cond_58
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    #@5b
    :goto_5b
    return-void
.end method

.method stopOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
    .registers 3

    #@0
    .line 115
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->secondaryViewAnimator:Landroid/animation/Animator;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 116
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@7
    .line 118
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->defaultCenterViewAnimator:Landroid/animation/Animator;

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 119
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@e
    .line 121
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    #@11
    move-result-object p1

    #@12
    .line 122
    instance-of v0, p1, Lcom/google/android/material/animation/AnimatableView;

    #@14
    if-eqz v0, :cond_1c

    #@16
    .line 123
    move-object v0, p1

    #@17
    check-cast v0, Lcom/google/android/material/animation/AnimatableView;

    #@19
    invoke-interface {v0}, Lcom/google/android/material/animation/AnimatableView;->stopAnimation()V

    #@1c
    :cond_1c
    if-eqz p1, :cond_22

    #@1e
    const/4 v0, 0x0

    #@1f
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@22
    :cond_22
    return-void
.end method
