.class public final Lcom/google/android/material/transition/MaterialFade;
.super Lcom/google/android/material/transition/MaterialVisibility;
.source "MaterialFade.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/MaterialVisibility<",
        "Lcom/google/android/material/transition/FadeProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_END_THRESHOLD_ENTER:F = 0.3f

.field private static final DEFAULT_START_SCALE:F = 0.8f

.field private static final DEFAULT_THEMED_INCOMING_DURATION_ATTR:I

.field private static final DEFAULT_THEMED_INCOMING_EASING_ATTR:I

.field private static final DEFAULT_THEMED_OUTGOING_DURATION_ATTR:I

.field private static final DEFAULT_THEMED_OUTGOING_EASING_ATTR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 40
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    #@2
    sput v0, Lcom/google/android/material/transition/MaterialFade;->DEFAULT_THEMED_INCOMING_DURATION_ATTR:I

    #@4
    .line 43
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    #@6
    sput v0, Lcom/google/android/material/transition/MaterialFade;->DEFAULT_THEMED_OUTGOING_DURATION_ATTR:I

    #@8
    .line 46
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    #@a
    sput v0, Lcom/google/android/material/transition/MaterialFade;->DEFAULT_THEMED_INCOMING_EASING_ATTR:I

    #@c
    .line 50
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedAccelerateInterpolator:I

    #@e
    sput v0, Lcom/google/android/material/transition/MaterialFade;->DEFAULT_THEMED_OUTGOING_EASING_ATTR:I

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 54
    invoke-static {}, Lcom/google/android/material/transition/MaterialFade;->createPrimaryAnimatorProvider()Lcom/google/android/material/transition/FadeProvider;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/google/android/material/transition/MaterialFade;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/MaterialVisibility;-><init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    #@b
    return-void
.end method

.method private static createPrimaryAnimatorProvider()Lcom/google/android/material/transition/FadeProvider;
    .registers 2

    #@0
    .line 58
    new-instance v0, Lcom/google/android/material/transition/FadeProvider;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/transition/FadeProvider;-><init>()V

    #@5
    const v1, 0x3e99999a    # 0.3f

    #@8
    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/FadeProvider;->setIncomingEndThreshold(F)V

    #@b
    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    #@0
    .line 64
    new-instance v0, Lcom/google/android/material/transition/ScaleProvider;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/transition/ScaleProvider;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setScaleOnDisappear(Z)V

    #@9
    const v1, 0x3f4ccccd    # 0.8f

    #@c
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    #@f
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 2

    #@0
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    #@3
    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .registers 1

    #@0
    .line 34
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    #@3
    return-void
.end method

.method getDefaultEasingInterpolator(Z)Landroid/animation/TimeInterpolator;
    .registers 2

    #@0
    .line 89
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@2
    return-object p1
.end method

.method getDurationThemeAttrResId(Z)I
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 74
    sget p1, Lcom/google/android/material/transition/MaterialFade;->DEFAULT_THEMED_INCOMING_DURATION_ATTR:I

    #@4
    goto :goto_7

    #@5
    .line 75
    :cond_5
    sget p1, Lcom/google/android/material/transition/MaterialFade;->DEFAULT_THEMED_OUTGOING_DURATION_ATTR:I

    #@7
    :goto_7
    return p1
.end method

.method getEasingThemeAttrResId(Z)I
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 82
    sget p1, Lcom/google/android/material/transition/MaterialFade;->DEFAULT_THEMED_INCOMING_EASING_ATTR:I

    #@4
    goto :goto_7

    #@5
    .line 83
    :cond_5
    sget p1, Lcom/google/android/material/transition/MaterialFade;->DEFAULT_THEMED_OUTGOING_EASING_ATTR:I

    #@7
    :goto_7
    return p1
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    #@0
    .line 34
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2

    #@0
    .line 34
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .registers 2

    #@0
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 2

    #@0
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    #@3
    return-void
.end method
