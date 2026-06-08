.class abstract Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWithAnimatedVisibilityChange.java"

# interfaces
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# static fields
.field private static final DEFAULT_DRAWABLE_RESTART:Z = false

.field private static final GROW_DURATION:I = 0x1f4

.field private static final GROW_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field final context:Landroid/content/Context;

.field private growFraction:F

.field private hideAnimator:Landroid/animation/ValueAnimator;

.field private ignoreCallbacks:Z

.field private internalAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private mockGrowFraction:F

.field private mockHideAnimationRunning:Z

.field private mockShowAnimationRunning:Z

.field final paint:Landroid/graphics/Paint;

.field private showAnimator:Landroid/animation/ValueAnimator;

.field private totalAlpha:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 441
    new-instance v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;

    #@2
    const-class v1, Ljava/lang/Float;

    #@4
    const-string v2, "growFraction"

    #@6
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@9
    sput-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Landroid/util/Property;

    #@b
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V
    .registers 4

    #@0
    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 77
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    #@a
    .line 84
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    #@c
    .line 85
    iput-object p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@e
    .line 86
    new-instance p1, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@10
    invoke-direct {p1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    #@13
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@15
    const/16 p1, 0xff

    #@17
    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setAlpha(I)V

    #@1a
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V
    .registers 1

    #@0
    .line 42
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->dispatchAnimationStart()V

    #@3
    return-void
.end method

.method static synthetic access$101(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;ZZ)Z
    .registers 3

    #@0
    .line 42
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V
    .registers 1

    #@0
    .line 42
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->dispatchAnimationEnd()V

    #@3
    return-void
.end method

.method private varargs cancelAnimatorsWithoutCallbacks([Landroid/animation/ValueAnimator;)V
    .registers 6

    #@0
    .line 307
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    #@2
    const/4 v1, 0x1

    #@3
    .line 308
    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    #@5
    .line 309
    array-length v1, p1

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v1, :cond_11

    #@9
    aget-object v3, p1, v2

    #@b
    .line 310
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_7

    #@11
    .line 312
    :cond_11
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    #@13
    return-void
.end method

.method private dispatchAnimationEnd()V
    .registers 3

    #@0
    .line 178
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->internalAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 179
    invoke-virtual {v0, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    #@7
    .line 181
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@9
    if-eqz v0, :cond_23

    #@b
    iget-boolean v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    #@d
    if-nez v1, :cond_23

    #@f
    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_23

    #@19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@1f
    .line 183
    invoke-virtual {v1, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    #@22
    goto :goto_13

    #@23
    :cond_23
    return-void
.end method

.method private dispatchAnimationStart()V
    .registers 3

    #@0
    .line 166
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->internalAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 167
    invoke-virtual {v0, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    #@7
    .line 169
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@9
    if-eqz v0, :cond_23

    #@b
    iget-boolean v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    #@d
    if-nez v1, :cond_23

    #@f
    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_23

    #@19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@1f
    .line 171
    invoke-virtual {v1, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    #@22
    goto :goto_13

    #@23
    :cond_23
    return-void
.end method

.method private varargs endAnimatorsWithoutCallbacks([Landroid/animation/ValueAnimator;)V
    .registers 6

    #@0
    .line 316
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    #@2
    const/4 v1, 0x1

    #@3
    .line 317
    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    #@5
    .line 318
    array-length v1, p1

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v1, :cond_11

    #@9
    aget-object v3, p1, v2

    #@b
    .line 319
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_7

    #@11
    .line 321
    :cond_11
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    #@13
    return-void
.end method

.method private maybeInitializeAnimators()V
    .registers 6

    #@0
    .line 94
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@2
    const-wide/16 v1, 0x1f4

    #@4
    const/4 v3, 0x2

    #@5
    if-nez v0, :cond_23

    #@7
    .line 95
    sget-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Landroid/util/Property;

    #@9
    new-array v4, v3, [F

    #@b
    fill-array-data v4, :array_44

    #@e
    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@14
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@17
    .line 97
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@19
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1b
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1e
    .line 98
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@20
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setShowAnimator(Landroid/animation/ValueAnimator;)V

    #@23
    .line 100
    :cond_23
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@25
    if-nez v0, :cond_43

    #@27
    .line 101
    sget-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Landroid/util/Property;

    #@29
    new-array v3, v3, [F

    #@2b
    fill-array-data v3, :array_4c

    #@2e
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@34
    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@37
    .line 103
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@39
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@3b
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@3e
    .line 104
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@40
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setHideAnimator(Landroid/animation/ValueAnimator;)V

    #@43
    :cond_43
    return-void

    #@44
    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@4c
    :array_4c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setHideAnimator(Landroid/animation/ValueAnimator;)V
    .registers 3

    #@0
    .line 385
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_13

    #@4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_13

    #@b
    .line 386
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v0, "Cannot set hideAnimator while the current hideAnimator is running."

    #@f
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw p1

    #@13
    .line 390
    :cond_13
    :goto_13
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@15
    .line 393
    new-instance v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$2;

    #@17
    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$2;-><init>(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    #@1a
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1d
    return-void
.end method

.method private setShowAnimator(Landroid/animation/ValueAnimator;)V
    .registers 3

    #@0
    .line 355
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_13

    #@4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_13

    #@b
    .line 356
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v0, "Cannot set showAnimator while the current showAnimator is running."

    #@f
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw p1

    #@13
    .line 359
    :cond_13
    :goto_13
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@15
    .line 362
    new-instance v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;

    #@17
    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;-><init>(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    #@1a
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1d
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .registers 2

    #@0
    .line 151
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 152
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@8
    return-void
.end method

.method public getAlpha()I
    .registers 2

    #@0
    .line 334
    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    #@2
    return v0
.end method

.method getGrowFraction()F
    .registers 2

    #@0
    .line 408
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isShowAnimationEnabled()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isHideAnimationEnabled()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_13

    #@10
    const/high16 v0, 0x3f800000    # 1.0f

    #@12
    return v0

    #@13
    .line 412
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    #@15
    if-nez v0, :cond_1f

    #@17
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    #@19
    if-eqz v0, :cond_1c

    #@1b
    goto :goto_1f

    #@1c
    .line 415
    :cond_1c
    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    #@1e
    return v0

    #@1f
    .line 413
    :cond_1f
    :goto_1f
    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    #@21
    return v0
.end method

.method getHideAnimator()Landroid/animation/ValueAnimator;
    .registers 2

    #@0
    .line 375
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@2
    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public hideNow()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 217
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isHiding()Z
    .registers 2

    #@0
    .line 212
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_e

    #@a
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    #@c
    if-eqz v0, :cond_10

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public isRunning()Z
    .registers 2

    #@0
    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 v0, 0x1

    #@10
    :goto_10
    return v0
.end method

.method public isShowing()Z
    .registers 2

    #@0
    .line 208
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_e

    #@a
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    #@c
    if-eqz v0, :cond_10

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .registers 3

    #@0
    .line 122
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@b
    .line 125
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_18

    #@13
    .line 126
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    :cond_18
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    #@0
    .line 328
    iput p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    #@2
    .line 329
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 339
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    .line 340
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->invalidateSelf()V

    #@8
    return-void
.end method

.method setGrowFraction(F)V
    .registers 3

    #@0
    .line 419
    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 420
    iput p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    #@8
    .line 421
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->invalidateSelf()V

    #@b
    :cond_b
    return-void
.end method

.method setInternalAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .registers 2

    #@0
    .line 161
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->internalAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@2
    return-void
.end method

.method setMockHideAnimationRunning(ZF)V
    .registers 3

    #@0
    .line 435
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    #@2
    .line 436
    iput p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    #@4
    return-void
.end method

.method setMockShowAnimationRunning(ZF)V
    .registers 3

    #@0
    .line 428
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    #@2
    .line 429
    iput p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    #@4
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public setVisible(ZZZ)Z
    .registers 6

    #@0
    .line 236
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@2
    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    #@4
    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    #@b
    move-result v0

    #@c
    if-eqz p3, :cond_15

    #@e
    const/4 p3, 0x0

    #@f
    cmpl-float p3, v0, p3

    #@11
    if-lez p3, :cond_15

    #@13
    const/4 p3, 0x1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p3, 0x0

    #@16
    .line 240
    :goto_16
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    #@19
    move-result p1

    #@1a
    return p1
.end method

.method setVisibleInternal(ZZZ)Z
    .registers 8

    #@0
    .line 253
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->maybeInitializeAnimators()V

    #@3
    .line 254
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isVisible()Z

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    if-nez v0, :cond_d

    #@a
    if-nez p1, :cond_d

    #@c
    return v1

    #@d
    :cond_d
    if-eqz p1, :cond_12

    #@f
    .line 259
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@11
    goto :goto_14

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@14
    :goto_14
    if-eqz p1, :cond_19

    #@16
    .line 260
    iget-object v2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    #@18
    goto :goto_1b

    #@19
    :cond_19
    iget-object v2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    #@1b
    :goto_1b
    const/4 v3, 0x1

    #@1c
    if-nez p3, :cond_41

    #@1e
    .line 264
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@21
    move-result p2

    #@22
    if-eqz p2, :cond_2b

    #@24
    new-array p2, v3, [Landroid/animation/ValueAnimator;

    #@26
    aput-object v2, p2, v1

    #@28
    .line 267
    invoke-direct {p0, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->cancelAnimatorsWithoutCallbacks([Landroid/animation/ValueAnimator;)V

    #@2b
    .line 271
    :cond_2b
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@2e
    move-result p2

    #@2f
    if-eqz p2, :cond_35

    #@31
    .line 272
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    #@34
    goto :goto_3c

    #@35
    :cond_35
    new-array p2, v3, [Landroid/animation/ValueAnimator;

    #@37
    aput-object v0, p2, v1

    #@39
    .line 274
    invoke-direct {p0, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->endAnimatorsWithoutCallbacks([Landroid/animation/ValueAnimator;)V

    #@3c
    .line 278
    :goto_3c
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3f
    move-result p1

    #@40
    return p1

    #@41
    :cond_41
    if-eqz p3, :cond_4a

    #@43
    .line 281
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@46
    move-result p3

    #@47
    if-eqz p3, :cond_4a

    #@49
    return v1

    #@4a
    :cond_4a
    if-eqz p1, :cond_55

    #@4c
    .line 288
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@4f
    move-result p3

    #@50
    if-eqz p3, :cond_53

    #@52
    goto :goto_55

    #@53
    :cond_53
    move p3, v1

    #@54
    goto :goto_56

    #@55
    :cond_55
    :goto_55
    move p3, v3

    #@56
    :goto_56
    if-eqz p1, :cond_5f

    #@58
    .line 290
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@5a
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isShowAnimationEnabled()Z

    #@5d
    move-result p1

    #@5e
    goto :goto_65

    #@5f
    :cond_5f
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@61
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isHideAnimationEnabled()Z

    #@64
    move-result p1

    #@65
    :goto_65
    if-nez p1, :cond_6f

    #@67
    new-array p1, v3, [Landroid/animation/ValueAnimator;

    #@69
    aput-object v0, p1, v1

    #@6b
    .line 293
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->endAnimatorsWithoutCallbacks([Landroid/animation/ValueAnimator;)V

    #@6e
    return p3

    #@6f
    :cond_6f
    if-nez p2, :cond_7c

    #@71
    .line 297
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    #@74
    move-result p1

    #@75
    if-nez p1, :cond_78

    #@77
    goto :goto_7c

    #@78
    .line 301
    :cond_78
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    #@7b
    goto :goto_7f

    #@7c
    .line 299
    :cond_7c
    :goto_7c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@7f
    :goto_7f
    return p3
.end method

.method public start()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 193
    invoke-virtual {p0, v0, v0, v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    #@5
    return-void
.end method

.method public stop()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 199
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    #@5
    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .registers 3

    #@0
    .line 138
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@2
    if-eqz v0, :cond_1c

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1c

    #@a
    .line 139
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@c
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@f
    .line 140
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_1a

    #@17
    const/4 p1, 0x0

    #@18
    .line 141
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    #@1a
    :cond_1a
    const/4 p1, 0x1

    #@1b
    return p1

    #@1c
    :cond_1c
    const/4 p1, 0x0

    #@1d
    return p1
.end method
