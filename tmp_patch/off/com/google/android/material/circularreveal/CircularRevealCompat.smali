.class public final Lcom/google/android/material/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "CircularRevealCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .registers 10

    #@0
    .line 57
    sget-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    #@2
    sget-object v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    #@4
    const/4 v2, 0x1

    #@5
    new-array v3, v2, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@7
    new-instance v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@9
    invoke-direct {v4, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    #@c
    const/4 v5, 0x0

    #@d
    aput-object v4, v3, v5

    #@f
    .line 58
    invoke-static {p0, v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@12
    move-result-object v0

    #@13
    .line 66
    invoke-interface {p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_33

    #@19
    .line 71
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@1b
    .line 72
    check-cast p0, Landroid/view/View;

    #@1d
    float-to-int p1, p1

    #@1e
    float-to-int p2, p2

    #@1f
    .line 73
    invoke-static {p0, p1, p2, v1, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    #@22
    move-result-object p0

    #@23
    .line 75
    new-instance p1, Landroid/animation/AnimatorSet;

    #@25
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    #@28
    const/4 p2, 0x2

    #@29
    new-array p2, p2, [Landroid/animation/Animator;

    #@2b
    aput-object v0, p2, v5

    #@2d
    aput-object p0, p2, v2

    #@2f
    .line 76
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@32
    return-object p1

    #@33
    .line 68
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    #@35
    const-string p1, "Caller must set a non-null RevealInfo before calling this."

    #@37
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw p0
.end method

.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFFF)Landroid/animation/Animator;
    .registers 12

    #@0
    .line 97
    sget-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    #@2
    sget-object v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    #@4
    const/4 v2, 0x2

    #@5
    new-array v3, v2, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@7
    new-instance v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@9
    invoke-direct {v4, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    #@c
    const/4 v5, 0x0

    #@d
    aput-object v4, v3, v5

    #@f
    new-instance v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@11
    invoke-direct {v4, p1, p2, p4}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    #@14
    const/4 v6, 0x1

    #@15
    aput-object v4, v3, v6

    #@17
    .line 98
    invoke-static {p0, v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@1a
    move-result-object v0

    #@1b
    .line 105
    check-cast p0, Landroid/view/View;

    #@1d
    float-to-int p1, p1

    #@1e
    float-to-int p2, p2

    #@1f
    .line 106
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    #@22
    move-result-object p0

    #@23
    .line 108
    new-instance p1, Landroid/animation/AnimatorSet;

    #@25
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    #@28
    new-array p2, v2, [Landroid/animation/Animator;

    #@2a
    aput-object v0, p2, v5

    #@2c
    aput-object p0, p2, v6

    #@2e
    .line 109
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@31
    return-object p1
.end method

.method public static createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
    .registers 2

    #@0
    .line 123
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    #@5
    return-object v0
.end method
