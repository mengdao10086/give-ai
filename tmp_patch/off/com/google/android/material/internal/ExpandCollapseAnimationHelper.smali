.class public Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
.super Ljava/lang/Object;
.source "ExpandCollapseAnimationHelper.java"


# instance fields
.field private additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final collapsedView:Landroid/view/View;

.field private collapsedViewOffsetY:I

.field private duration:J

.field private final endAnchoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final expandedView:Landroid/view/View;

.field private expandedViewOffsetY:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    #@5
    .line 58
    iput-object p2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    #@7
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    #@9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    #@e
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    #@10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    #@15
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)Landroid/view/View;
    .registers 1

    #@0
    .line 44
    iget-object p0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    #@2
    return-object p0
.end method

.method private addListeners(Landroid/animation/Animator;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Ljava/util/List<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 204
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object p2

    #@4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_14

    #@a
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    #@10
    .line 205
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@13
    goto :goto_4

    #@14
    :cond_14
    return-void
.end method

.method private getAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .registers 6

    #@0
    .line 152
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
    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandCollapseAnimator(Z)Landroid/animation/Animator;

    #@c
    move-result-object v3

    #@d
    aput-object v3, v1, v2

    #@f
    const/4 v2, 0x1

    #@10
    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandedViewChildrenAlphaAnimator(Z)Landroid/animation/Animator;

    #@13
    move-result-object v3

    #@14
    aput-object v3, v1, v2

    #@16
    const/4 v2, 0x2

    #@17
    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getEndAnchoredViewsTranslateAnimator(Z)Landroid/animation/Animator;

    #@1a
    move-result-object p1

    #@1b
    aput-object p1, v1, v2

    #@1d
    .line 153
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@20
    return-object v0
.end method

.method private getEndAnchoredViewsTranslateAnimator(Z)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 190
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    #@8
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    .line 191
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    #@f
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@12
    move-result v1

    #@13
    iget-object v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    #@15
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@18
    move-result v2

    #@19
    sub-int/2addr v1, v2

    #@1a
    add-int/2addr v0, v1

    #@1b
    const/4 v1, 0x2

    #@1c
    new-array v1, v1, [F

    #@1e
    const/4 v2, 0x0

    #@1f
    int-to-float v0, v0

    #@20
    aput v0, v1, v2

    #@22
    const/4 v0, 0x1

    #@23
    const/4 v2, 0x0

    #@24
    aput v2, v1, v0

    #@26
    .line 194
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@29
    move-result-object v0

    #@2a
    .line 195
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    #@2c
    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@33
    .line 196
    iget-wide v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    #@35
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@38
    .line 197
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@3a
    .line 198
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@3d
    move-result-object p1

    #@3e
    .line 197
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@41
    return-object v0
.end method

.method private getExpandCollapseAnimator(Z)Landroid/animation/Animator;
    .registers 8

    #@0
    .line 161
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    #@2
    iget v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedViewOffsetY:I

    #@4
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 162
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    #@a
    iget v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedViewOffsetY:I

    #@c
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    #@f
    move-result-object v1

    #@10
    .line 163
    new-instance v2, Landroid/graphics/Rect;

    #@12
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@15
    .line 165
    new-instance v3, Lcom/google/android/material/internal/RectEvaluator;

    #@17
    invoke-direct {v3, v2}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    #@1a
    const/4 v4, 0x2

    #@1b
    new-array v4, v4, [Ljava/lang/Object;

    #@1d
    const/4 v5, 0x0

    #@1e
    aput-object v0, v4, v5

    #@20
    const/4 v0, 0x1

    #@21
    aput-object v1, v4, v0

    #@23
    .line 166
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    #@26
    move-result-object v0

    #@27
    .line 167
    new-instance v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$$ExternalSyntheticLambda0;

    #@29
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;Landroid/graphics/Rect;)V

    #@2c
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@2f
    .line 168
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@31
    if-eqz v1, :cond_36

    #@33
    .line 169
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@36
    .line 171
    :cond_36
    iget-wide v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    #@38
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@3b
    .line 172
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@3d
    .line 173
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@40
    move-result-object p1

    #@41
    .line 172
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@44
    return-object v0
.end method

.method private getExpandedViewChildrenAlphaAnimator(Z)Landroid/animation/Animator;
    .registers 6

    #@0
    .line 179
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    #@2
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getChildren(Landroid/view/View;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    new-array v1, v1, [F

    #@9
    .line 180
    fill-array-data v1, :array_26

    #@c
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@f
    move-result-object v1

    #@10
    .line 181
    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@17
    .line 182
    iget-wide v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    #@19
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@1c
    .line 183
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1e
    .line 184
    invoke-static {p1, v0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@21
    move-result-object p1

    #@22
    .line 183
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@25
    return-object v1

    #@26
    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addEndAnchoredViews(Ljava/util/Collection;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;"
        }
    .end annotation

    #@0
    .line 125
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@5
    return-object p0
.end method

.method public varargs addEndAnchoredViews([Landroid/view/View;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .registers 3

    #@0
    .line 118
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .registers 3

    #@0
    .line 111
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public getCollapseAnimator()Landroid/animation/Animator;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getAnimatorSet(Z)Landroid/animation/AnimatorSet;

    #@4
    move-result-object v0

    #@5
    .line 89
    new-instance v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;

    #@7
    invoke-direct {v1, p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)V

    #@a
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@d
    .line 96
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    #@f
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListeners(Landroid/animation/Animator;Ljava/util/List;)V

    #@12
    return-object v0
.end method

.method public getExpandAnimator()Landroid/animation/Animator;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 73
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getAnimatorSet(Z)Landroid/animation/AnimatorSet;

    #@4
    move-result-object v0

    #@5
    .line 74
    new-instance v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$1;

    #@7
    invoke-direct {v1, p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$1;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)V

    #@a
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@d
    .line 81
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    #@f
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListeners(Landroid/animation/Animator;Ljava/util/List;)V

    #@12
    return-object v0
.end method

.method synthetic lambda$getExpandCollapseAnimator$0$com-google-android-material-internal-ExpandCollapseAnimationHelper(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 3

    #@0
    .line 167
    iget-object p2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    #@2
    invoke-static {p2, p1}, Lcom/google/android/material/internal/ViewUtils;->setBoundsFromRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@5
    return-void
.end method

.method public setAdditionalUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .registers 2

    #@0
    .line 133
    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@2
    return-object p0
.end method

.method public setCollapsedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .registers 2

    #@0
    .line 140
    iput p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedViewOffsetY:I

    #@2
    return-object p0
.end method

.method public setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .registers 3

    #@0
    .line 104
    iput-wide p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    #@2
    return-object p0
.end method

.method public setExpandedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .registers 2

    #@0
    .line 147
    iput p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedViewOffsetY:I

    #@2
    return-object p0
.end method
