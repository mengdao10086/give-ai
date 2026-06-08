.class public final Lcom/google/android/material/transition/MaterialFadeThrough;
.super Lcom/google/android/material/transition/MaterialVisibility;
.source "MaterialFadeThrough.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/MaterialVisibility<",
        "Lcom/google/android/material/transition/FadeThroughProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_START_SCALE:F = 0.92f

.field private static final DEFAULT_THEMED_DURATION_ATTR:I

.field private static final DEFAULT_THEMED_EASING_ATTR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 35
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    #@2
    sput v0, Lcom/google/android/material/transition/MaterialFadeThrough;->DEFAULT_THEMED_DURATION_ATTR:I

    #@4
    .line 38
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@6
    sput v0, Lcom/google/android/material/transition/MaterialFadeThrough;->DEFAULT_THEMED_EASING_ATTR:I

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 41
    invoke-static {}, Lcom/google/android/material/transition/MaterialFadeThrough;->createPrimaryAnimatorProvider()Lcom/google/android/material/transition/FadeThroughProvider;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/google/android/material/transition/MaterialFadeThrough;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/MaterialVisibility;-><init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    #@b
    return-void
.end method

.method private static createPrimaryAnimatorProvider()Lcom/google/android/material/transition/FadeThroughProvider;
    .registers 1

    #@0
    .line 45
    new-instance v0, Lcom/google/android/material/transition/FadeThroughProvider;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/transition/FadeThroughProvider;-><init>()V

    #@5
    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    #@0
    .line 49
    new-instance v0, Lcom/google/android/material/transition/ScaleProvider;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/transition/ScaleProvider;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setScaleOnDisappear(Z)V

    #@9
    const v1, 0x3f6b851f    # 0.92f

    #@c
    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    #@f
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 2

    #@0
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    #@3
    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .registers 1

    #@0
    .line 31
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    #@3
    return-void
.end method

.method getDurationThemeAttrResId(Z)I
    .registers 2

    #@0
    .line 58
    sget p1, Lcom/google/android/material/transition/MaterialFadeThrough;->DEFAULT_THEMED_DURATION_ATTR:I

    #@2
    return p1
.end method

.method getEasingThemeAttrResId(Z)I
    .registers 2

    #@0
    .line 64
    sget p1, Lcom/google/android/material/transition/MaterialFadeThrough;->DEFAULT_THEMED_EASING_ATTR:I

    #@2
    return p1
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    #@0
    .line 31
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    #@0
    .line 31
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .registers 2

    #@0
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 2

    #@0
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    #@3
    return-void
.end method
