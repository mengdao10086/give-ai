.class public final Lcom/google/android/material/transition/platform/Hold;
.super Landroid/transition/Visibility;
.source "Hold.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 p1, 0x1

    #@1
    new-array p1, p1, [F

    #@3
    const/4 p2, 0x0

    #@4
    const/4 p3, 0x0

    #@5
    aput p3, p1, p2

    #@7
    .line 46
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 p1, 0x1

    #@1
    new-array p1, p1, [F

    #@3
    const/4 p2, 0x0

    #@4
    const/4 p3, 0x0

    #@5
    aput p3, p1, p2

    #@7
    .line 56
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method
