.class public final Lcom/google/android/material/transition/FadeProvider;
.super Ljava/lang/Object;
.source "FadeProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# instance fields
.field private incomingEndThreshold:F


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    .line 34
    iput v0, p0, Lcom/google/android/material/transition/FadeProvider;->incomingEndThreshold:F

    #@7
    return-void
.end method

.method private static createFadeAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
    .registers 14

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 90
    fill-array-data v0, :array_22

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    .line 91
    new-instance v7, Lcom/google/android/material/transition/FadeProvider$1;

    #@c
    move-object v1, v7

    #@d
    move-object v2, p0

    #@e
    move v3, p1

    #@f
    move v4, p2

    #@10
    move v5, p3

    #@11
    move v6, p4

    #@12
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/FadeProvider$1;-><init>(Landroid/view/View;FFFF)V

    #@15
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@18
    .line 99
    new-instance p1, Lcom/google/android/material/transition/FadeProvider$2;

    #@1a
    invoke-direct {p1, p0, p5}, Lcom/google/android/material/transition/FadeProvider$2;-><init>(Landroid/view/View;F)V

    #@1d
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@20
    return-object v0

    #@21
    nop

    #@22
    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 9

    #@0
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    #@3
    move-result p1

    #@4
    const/4 v0, 0x0

    #@5
    cmpl-float p1, p1, v0

    #@7
    if-nez p1, :cond_c

    #@9
    const/high16 p1, 0x3f800000    # 1.0f

    #@b
    goto :goto_10

    #@c
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    #@f
    move-result p1

    #@10
    :goto_10
    move v5, p1

    #@11
    const/4 v1, 0x0

    #@12
    const/4 v3, 0x0

    #@13
    .line 61
    iget v4, p0, Lcom/google/android/material/transition/FadeProvider;->incomingEndThreshold:F

    #@15
    move-object v0, p2

    #@16
    move v2, v5

    #@17
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/FadeProvider;->createFadeAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 9

    #@0
    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    #@3
    move-result p1

    #@4
    const/4 v0, 0x0

    #@5
    cmpl-float p1, p1, v0

    #@7
    if-nez p1, :cond_c

    #@9
    const/high16 p1, 0x3f800000    # 1.0f

    #@b
    goto :goto_10

    #@c
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    #@f
    move-result p1

    #@10
    :goto_10
    move v5, p1

    #@11
    const/4 v2, 0x0

    #@12
    const/4 v3, 0x0

    #@13
    const/high16 v4, 0x3f800000    # 1.0f

    #@15
    move-object v0, p2

    #@16
    move v1, v5

    #@17
    .line 74
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/FadeProvider;->createFadeAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method public getIncomingEndThreshold()F
    .registers 2

    #@0
    .line 42
    iget v0, p0, Lcom/google/android/material/transition/FadeProvider;->incomingEndThreshold:F

    #@2
    return v0
.end method

.method public setIncomingEndThreshold(F)V
    .registers 2

    #@0
    .line 54
    iput p1, p0, Lcom/google/android/material/transition/FadeProvider;->incomingEndThreshold:F

    #@2
    return-void
.end method
