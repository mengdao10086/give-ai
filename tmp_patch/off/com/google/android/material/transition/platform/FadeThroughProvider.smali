.class public final Lcom/google/android/material/transition/platform/FadeThroughProvider;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# static fields
.field static final FADE_THROUGH_THRESHOLD:F = 0.35f


# instance fields
.field private progressThreshold:F


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x3eb33333    # 0.35f

    #@6
    .line 45
    iput v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    #@8
    return-void
.end method

.method private static createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
    .registers 14

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 100
    fill-array-data v0, :array_22

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    .line 101
    new-instance v7, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;

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
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;-><init>(Landroid/view/View;FFFF)V

    #@15
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@18
    .line 109
    new-instance p1, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;

    #@1a
    invoke-direct {p1, p0, p5}, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;-><init>(Landroid/view/View;F)V

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
    .line 70
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
    .line 71
    iget v3, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    #@14
    const/high16 v4, 0x3f800000    # 1.0f

    #@16
    move-object v0, p2

    #@17
    move v2, v5

    #@18
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    #@1b
    move-result-object p1

    #@1c
    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 9

    #@0
    .line 83
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
    .line 84
    iget v4, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    #@15
    move-object v0, p2

    #@16
    move v1, v5

    #@17
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method public getProgressThreshold()F
    .registers 2

    #@0
    .line 54
    iget v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    #@2
    return v0
.end method

.method public setProgressThreshold(F)V
    .registers 2

    #@0
    .line 64
    iput p1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    #@2
    return-void
.end method
