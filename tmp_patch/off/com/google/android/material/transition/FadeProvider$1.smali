.class Lcom/google/android/material/transition/FadeProvider$1;
.super Ljava/lang/Object;
.source "FadeProvider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/FadeProvider;->createFadeAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endFraction:F

.field final synthetic val$endValue:F

.field final synthetic val$startFraction:F

.field final synthetic val$startValue:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;FFFF)V
    .registers 6

    #@0
    .line 92
    iput-object p1, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$view:Landroid/view/View;

    #@2
    iput p2, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$startValue:F

    #@4
    iput p3, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$endValue:F

    #@6
    iput p4, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$startFraction:F

    #@8
    iput p5, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$endFraction:F

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    #@0
    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Ljava/lang/Float;

    #@6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p1

    #@a
    .line 96
    iget-object v0, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$view:Landroid/view/View;

    #@c
    iget v1, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$startValue:F

    #@e
    iget v2, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$endValue:F

    #@10
    iget v3, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$startFraction:F

    #@12
    iget v4, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$endFraction:F

    #@14
    invoke-static {v1, v2, v3, v4, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    #@17
    move-result p1

    #@18
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    #@1b
    return-void
.end method
