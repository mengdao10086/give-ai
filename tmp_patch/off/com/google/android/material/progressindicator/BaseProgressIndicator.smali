.class public abstract Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.super Landroid/widget/ProgressBar;
.source "BaseProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/BaseProgressIndicator$HideAnimationBehavior;,
        Lcom/google/android/material/progressindicator/BaseProgressIndicator$ShowAnimationBehavior;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Landroid/widget/ProgressBar;"
    }
.end annotation


# static fields
.field static final DEFAULT_OPACITY:F = 0.2f

.field static final DEF_STYLE_RES:I

.field public static final HIDE_INWARD:I = 0x2

.field public static final HIDE_NONE:I = 0x0

.field public static final HIDE_OUTWARD:I = 0x1

.field static final MAX_ALPHA:I = 0xff

.field static final MAX_HIDE_DELAY:I = 0x3e8

.field public static final SHOW_INWARD:I = 0x2

.field public static final SHOW_NONE:I = 0x0

.field public static final SHOW_OUTWARD:I = 0x1


# instance fields
.field animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field private final delayedHide:Ljava/lang/Runnable;

.field private final delayedShow:Ljava/lang/Runnable;

.field private final hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private isIndeterminateModeChangeRequested:Z

.field private isParentDoneInitializing:Z

.field private lastShowStartTime:J

.field private final minHideDelay:I

.field private final showDelay:I

.field spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private storedProgress:I

.field private storedProgressAnimated:Z

.field private final switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private visibilityAfterHide:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 80
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ProgressIndicator:I

    #@2
    sput v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    #@0
    .line 137
    sget v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    const-wide/16 v0, -0x1

    #@b
    .line 120
    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    #@d
    const/4 p1, 0x0

    #@e
    .line 125
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    #@10
    const/4 v0, 0x4

    #@11
    .line 128
    iput v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    #@13
    .line 780
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    #@18
    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    #@1a
    .line 793
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;

    #@1c
    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    #@1f
    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    #@21
    .line 808
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;

    #@23
    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    #@26
    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@28
    .line 823
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$4;

    #@2a
    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$4;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    #@2d
    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@2f
    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    #@32
    move-result-object v1

    #@33
    .line 143
    invoke-virtual {p0, v1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@39
    .line 146
    sget-object v3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    #@3b
    new-array v6, p1, [I

    #@3d
    move-object v2, p2

    #@3e
    move v4, p3

    #@3f
    move v5, p4

    #@40
    .line 147
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@43
    move-result-object p1

    #@44
    .line 149
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showDelay:I

    #@46
    const/4 p3, -0x1

    #@47
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4a
    move-result p2

    #@4b
    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    #@4d
    .line 150
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_minHideDelay:I

    #@4f
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@52
    move-result p2

    #@53
    const/16 p3, 0x3e8

    #@55
    .line 151
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    #@58
    move-result p2

    #@59
    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    #@5b
    .line 152
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@5e
    .line 154
    new-instance p1, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@60
    invoke-direct {p1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    #@63
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@65
    const/4 p1, 0x1

    #@66
    .line 155
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isParentDoneInitializing:Z

    #@68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .registers 1

    #@0
    .line 70
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalShow()V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .registers 1

    #@0
    .line 70
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalHide()V

    #@3
    return-void
.end method

.method static synthetic access$202(Lcom/google/android/material/progressindicator/BaseProgressIndicator;J)J
    .registers 3

    #@0
    .line 70
    iput-wide p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    #@2
    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I
    .registers 1

    #@0
    .line 70
    iget p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgress:I

    #@2
    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z
    .registers 1

    #@0
    .line 70
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgressAnimated:Z

    #@2
    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z
    .registers 1

    #@0
    .line 70
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    #@2
    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I
    .registers 1

    #@0
    .line 70
    iget p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    #@2
    return p0
.end method

.method private getCurrentDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation

    #@0
    .line 365
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_17

    #@7
    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_e

    #@d
    goto :goto_16

    #@e
    .line 368
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    #@15
    move-result-object v1

    #@16
    :goto_16
    return-object v1

    #@17
    .line 370
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@1a
    move-result-object v0

    #@1b
    if-nez v0, :cond_1e

    #@1d
    goto :goto_26

    #@1e
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    #@25
    move-result-object v1

    #@26
    :goto_26
    return-object v1
.end method

.method private internalHide()V
    .registers 4

    #@0
    .line 249
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x1

    #@8
    .line 250
    invoke-virtual {v0, v1, v1, v2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    #@b
    .line 252
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isNoLongerNeedToBeVisible()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_15

    #@11
    const/4 v0, 0x4

    #@12
    .line 253
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setVisibility(I)V

    #@15
    :cond_15
    return-void
.end method

.method private internalShow()V
    .registers 3

    #@0
    .line 213
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    #@2
    if-lez v0, :cond_a

    #@4
    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    .line 217
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setVisibility(I)V

    #@e
    return-void
.end method

.method private isNoLongerNeedToBeVisible()Z
    .registers 2

    #@0
    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->isVisible()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_21

    #@10
    .line 488
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_23

    #@16
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_21

    #@20
    goto :goto_23

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    goto :goto_24

    #@23
    :cond_23
    :goto_23
    const/4 v0, 0x1

    #@24
    :goto_24
    return v0
.end method

.method private registerAnimationCallbacks()V
    .registers 3

    #@0
    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_19

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_19

    #@c
    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@f
    move-result-object v0

    #@10
    .line 167
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@16
    .line 168
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    #@19
    .line 172
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_28

    #@1f
    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@25
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    #@28
    .line 176
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_37

    #@2e
    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@31
    move-result-object v0

    #@32
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@34
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    #@37
    :cond_37
    return-void
.end method

.method private unregisterAnimationCallbacks()V
    .registers 3

    #@0
    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_1a

    #@6
    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@c
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    #@f
    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->unregisterAnimatorsCompleteCallback()V

    #@1a
    .line 186
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_29

    #@20
    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@23
    move-result-object v0

    #@24
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@26
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    #@29
    :cond_29
    return-void
.end method


# virtual methods
.method protected applyNewVisibility(Z)V
    .registers 5

    #@0
    .line 276
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isParentDoneInitializing:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 280
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@b
    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    #@e
    move-result v1

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    #@13
    return-void
.end method

.method abstract createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TS;"
        }
    .end annotation
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 359
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@9
    move-result-object v0

    #@a
    goto :goto_f

    #@b
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@e
    move-result-object v0

    #@f
    :goto_f
    return-object v0
.end method

.method public getHideAnimationBehavior()I
    .registers 2

    #@0
    .line 673
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    #@4
    return v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "TS;>;"
        }
    .end annotation

    #@0
    .line 429
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@6
    return-object v0
.end method

.method public getIndicatorColor()[I
    .registers 2

    #@0
    .line 563
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    #@4
    return-object v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DeterminateDrawable<",
            "TS;>;"
        }
    .end annotation

    #@0
    .line 423
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@6
    return-object v0
.end method

.method public getShowAnimationBehavior()I
    .registers 2

    #@0
    .line 648
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    #@4
    return v0
.end method

.method public getTrackColor()I
    .registers 2

    #@0
    .line 595
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    #@4
    return v0
.end method

.method public getTrackCornerRadius()I
    .registers 2

    #@0
    .line 622
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    #@4
    return v0
.end method

.method public getTrackThickness()I
    .registers 2

    #@0
    .line 536
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    #@4
    return v0
.end method

.method public hide()V
    .registers 7

    #@0
    .line 225
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 227
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    return-void

    #@c
    .line 231
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    #@e
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@11
    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14
    move-result-wide v0

    #@15
    iget-wide v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    #@17
    sub-long/2addr v0, v2

    #@18
    .line 233
    iget v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    #@1a
    int-to-long v3, v2

    #@1b
    cmp-long v3, v0, v3

    #@1d
    if-ltz v3, :cond_21

    #@1f
    const/4 v3, 0x1

    #@20
    goto :goto_22

    #@21
    :cond_21
    const/4 v3, 0x0

    #@22
    :goto_22
    if-eqz v3, :cond_2a

    #@24
    .line 235
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    #@26
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@29
    return-void

    #@2a
    .line 238
    :cond_2a
    iget-object v3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    #@2c
    int-to-long v4, v2

    #@2d
    sub-long/2addr v4, v0

    #@2e
    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    #@31
    return-void
.end method

.method public invalidate()V
    .registers 2

    #@0
    .line 347
    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    #@3
    .line 348
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 349
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@10
    :cond_10
    return-void
.end method

.method isEffectivelyVisible()Z
    .registers 4

    #@0
    move-object v0, p0

    #@1
    .line 468
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v1, :cond_9

    #@8
    return v2

    #@9
    .line 471
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x1

    #@e
    if-nez v0, :cond_18

    #@10
    .line 473
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWindowVisibility()I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_17

    #@16
    move v2, v1

    #@17
    :cond_17
    return v2

    #@18
    .line 475
    :cond_18
    instance-of v2, v0, Landroid/view/View;

    #@1a
    if-nez v2, :cond_1d

    #@1c
    return v1

    #@1d
    .line 478
    :cond_1d
    check-cast v0, Landroid/view/View;

    #@1f
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 286
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    #@3
    .line 287
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->registerAnimationCallbacks()V

    #@6
    .line 289
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 290
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalShow()V

    #@f
    :cond_f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 297
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 298
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a
    .line 299
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@10
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    #@13
    .line 300
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->unregisterAnimationCallbacks()V

    #@16
    .line 301
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    #@19
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    monitor-enter p0

    #@1
    .line 308
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@4
    move-result v0

    #@5
    .line 309
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_11

    #@b
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1e

    #@11
    .line 310
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    #@14
    move-result v1

    #@15
    int-to-float v1, v1

    #@16
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    #@19
    move-result v2

    #@1a
    int-to-float v2, v2

    #@1b
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@1e
    .line 312
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2a

    #@24
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_4a

    #@2a
    .line 313
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWidth()I

    #@2d
    move-result v1

    #@2e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    #@31
    move-result v2

    #@32
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    #@35
    move-result v3

    #@36
    add-int/2addr v2, v3

    #@37
    sub-int/2addr v1, v2

    #@38
    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getHeight()I

    #@3b
    move-result v2

    #@3c
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    #@3f
    move-result v3

    #@40
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    #@43
    move-result v4

    #@44
    add-int/2addr v3, v4

    #@45
    sub-int/2addr v2, v3

    #@46
    const/4 v3, 0x0

    #@47
    .line 315
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@4a
    .line 319
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@51
    .line 321
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    #@54
    .line 322
    monitor-exit p0

    #@55
    return-void

    #@56
    :catchall_56
    move-exception p1

    #@57
    monitor-exit p0

    #@58
    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    .line 326
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    #@4
    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_48

    #@5
    if-nez v0, :cond_9

    #@7
    .line 328
    monitor-exit p0

    #@8
    return-void

    #@9
    .line 335
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    #@c
    move-result v1

    #@d
    if-gez v1, :cond_18

    #@f
    .line 336
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getSuggestedMinimumWidth()I

    #@12
    move-result v1

    #@13
    invoke-static {v1, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getDefaultSize(II)I

    #@16
    move-result p1

    #@17
    goto :goto_26

    #@18
    .line 337
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    #@1b
    move-result p1

    #@1c
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    #@1f
    move-result v1

    #@20
    add-int/2addr p1, v1

    #@21
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    #@24
    move-result v1

    #@25
    add-int/2addr p1, v1

    #@26
    .line 339
    :goto_26
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    #@29
    move-result v1

    #@2a
    if-gez v1, :cond_35

    #@2c
    .line 340
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getSuggestedMinimumHeight()I

    #@2f
    move-result v0

    #@30
    invoke-static {v0, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getDefaultSize(II)I

    #@33
    move-result p2

    #@34
    goto :goto_43

    #@35
    .line 341
    :cond_35
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    #@38
    move-result p2

    #@39
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    #@3c
    move-result v0

    #@3d
    add-int/2addr p2, v0

    #@3e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    #@41
    move-result v0

    #@42
    add-int/2addr p2, v0

    #@43
    .line 342
    :goto_43
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setMeasuredDimension(II)V
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_48

    #@46
    .line 343
    monitor-exit p0

    #@47
    return-void

    #@48
    :catchall_48
    move-exception p1

    #@49
    monitor-exit p0

    #@4a
    throw p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    #@0
    .line 259
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    if-nez p2, :cond_7

    #@5
    const/4 p1, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    .line 260
    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->applyNewVisibility(Z)V

    #@b
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    #@0
    .line 265
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 266
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->applyNewVisibility(Z)V

    #@7
    return-void
.end method

.method public setAnimatorDurationScaleProvider(Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;)V
    .registers 3

    #@0
    .line 764
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@2
    .line 765
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 766
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@b
    move-result-object v0

    #@c
    iput-object p1, v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@e
    .line 768
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_1a

    #@14
    .line 769
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@17
    move-result-object v0

    #@18
    iput-object p1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@1a
    :cond_1a
    return-void
.end method

.method public setHideAnimationBehavior(I)V
    .registers 3

    #@0
    .line 685
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    #@4
    .line 686
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    #@7
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    .line 501
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    #@4
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3e

    #@5
    if-ne p1, v0, :cond_9

    #@7
    .line 503
    monitor-exit p0

    #@8
    return-void

    #@9
    .line 509
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@f
    if-eqz v0, :cond_14

    #@11
    .line 511
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    #@14
    .line 513
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@17
    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@1d
    const/4 v0, 0x0

    #@1e
    if-eqz p1, :cond_27

    #@20
    .line 517
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    #@23
    move-result v1

    #@24
    invoke-virtual {p1, v1, v0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    #@27
    .line 519
    :cond_27
    instance-of v1, p1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@29
    if-eqz v1, :cond_3a

    #@2b
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3a

    #@31
    .line 520
    check-cast p1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@33
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->startAnimator()V

    #@3a
    .line 524
    :cond_3a
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3e

    #@3c
    .line 525
    monitor-exit p0

    #@3d
    return-void

    #@3e
    :catchall_3e
    move-exception p1

    #@3f
    monitor-exit p0

    #@40
    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 408
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6
    return-void

    #@7
    .line 411
    :cond_7
    instance-of v0, p1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@9
    if-eqz v0, :cond_15

    #@b
    .line 412
    move-object v0, p1

    #@c
    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@e
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    #@11
    .line 413
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    return-void

    #@15
    .line 415
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@17
    const-string v0, "Cannot set framework drawable as indeterminate drawable."

    #@19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw p1
.end method

.method public varargs setIndicatorColor([I)V
    .registers 5

    #@0
    .line 575
    array-length v0, p1

    #@1
    if-nez v0, :cond_14

    #@3
    const/4 p1, 0x1

    #@4
    new-array p1, p1, [I

    #@6
    .line 577
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    sget v1, Lcom/google/android/material/R$attr;->colorPrimary:I

    #@c
    const/4 v2, -0x1

    #@d
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x0

    #@12
    aput v0, p1, v1

    #@14
    .line 579
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndicatorColor()[I

    #@17
    move-result-object v0

    #@18
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_30

    #@1e
    .line 580
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@20
    iput-object p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    #@22
    .line 581
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->invalidateSpecValues()V

    #@2d
    .line 582
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    #@30
    :cond_30
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    .line 700
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    #@4
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    #@5
    if-eqz v0, :cond_9

    #@7
    .line 701
    monitor-exit p0

    #@8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 703
    :try_start_a
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    #@d
    .line 704
    monitor-exit p0

    #@e
    return-void

    #@f
    :catchall_f
    move-exception p1

    #@10
    monitor-exit p0

    #@11
    throw p1
.end method

.method public setProgressCompat(IZ)V
    .registers 4

    #@0
    .line 717
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_47

    #@6
    .line 718
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_59

    #@c
    .line 721
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgress:I

    #@e
    .line 722
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgressAnimated:Z

    #@10
    const/4 p1, 0x1

    #@11
    .line 723
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    #@13
    .line 725
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    #@1a
    move-result p1

    #@1b
    if-eqz p1, :cond_3d

    #@1d
    iget-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    #@1f
    .line 727
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    #@22
    move-result-object p2

    #@23
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@26
    move-result-object p2

    #@27
    .line 726
    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    #@2a
    move-result p1

    #@2b
    const/4 p2, 0x0

    #@2c
    cmpl-float p1, p1, p2

    #@2e
    if-nez p1, :cond_31

    #@30
    goto :goto_3d

    #@31
    .line 731
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@34
    move-result-object p1

    #@35
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->requestCancelAnimatorAfterCurrentCycle()V

    #@3c
    goto :goto_59

    #@3d
    .line 729
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@3f
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@42
    move-result-object p2

    #@43
    invoke-virtual {p1, p2}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    #@46
    goto :goto_59

    #@47
    .line 737
    :cond_47
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@4a
    .line 739
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@4d
    move-result-object p1

    #@4e
    if-eqz p1, :cond_59

    #@50
    if-nez p2, :cond_59

    #@52
    .line 740
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@55
    move-result-object p1

    #@56
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->jumpToCurrentState()V

    #@59
    :cond_59
    :goto_59
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 383
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6
    return-void

    #@7
    .line 386
    :cond_7
    instance-of v0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@9
    if-eqz v0, :cond_22

    #@b
    .line 387
    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@d
    .line 388
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->hideNow()Z

    #@10
    .line 389
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 393
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgress()I

    #@16
    move-result v0

    #@17
    int-to-float v0, v0

    #@18
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getMax()I

    #@1b
    move-result v1

    #@1c
    int-to-float v1, v1

    #@1d
    div-float/2addr v0, v1

    #@1e
    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setLevelByFraction(F)V

    #@21
    return-void

    #@22
    .line 395
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@24
    const-string v0, "Cannot set framework drawable as progress drawable."

    #@26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw p1
.end method

.method public setShowAnimationBehavior(I)V
    .registers 3

    #@0
    .line 660
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    #@4
    .line 661
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    #@7
    return-void
.end method

.method public setTrackColor(I)V
    .registers 3

    #@0
    .line 607
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    #@4
    if-eq v0, p1, :cond_d

    #@6
    .line 608
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@8
    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    #@a
    .line 609
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    #@d
    :cond_d
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .registers 4

    #@0
    .line 634
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    #@4
    if-eq v0, p1, :cond_12

    #@6
    .line 635
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@8
    iget v1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    #@a
    div-int/lit8 v1, v1, 0x2

    #@c
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@f
    move-result p1

    #@10
    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    #@12
    :cond_12
    return-void
.end method

.method public setTrackThickness(I)V
    .registers 3

    #@0
    .line 548
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    #@4
    if-eq v0, p1, :cond_d

    #@6
    .line 549
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@8
    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    #@a
    .line 550
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->requestLayout()V

    #@d
    :cond_d
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_12

    #@2
    const/4 v0, 0x4

    #@3
    if-eq p1, v0, :cond_12

    #@5
    const/16 v0, 0x8

    #@7
    if-ne p1, v0, :cond_a

    #@9
    goto :goto_12

    #@a
    .line 752
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string v0, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    #@e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1

    #@12
    .line 756
    :cond_12
    :goto_12
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    #@14
    return-void
.end method

.method public show()V
    .registers 4

    #@0
    .line 198
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    #@2
    if-lez v0, :cond_12

    #@4
    .line 199
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    .line 200
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    #@b
    iget v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    #@d
    int-to-long v1, v1

    #@e
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    #@11
    goto :goto_17

    #@12
    .line 202
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    #@14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@17
    :goto_17
    return-void
.end method

.method visibleToUser()Z
    .registers 2

    #@0
    .line 437
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 438
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWindowVisibility()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_14

    #@c
    .line 439
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isEffectivelyVisible()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_14

    #@12
    const/4 v0, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    :goto_15
    return v0
.end method
