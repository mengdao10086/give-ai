.class Lcom/google/android/material/transition/FadeProvider$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/FadeProvider;->createFadeAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$originalAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .registers 3

    #@0
    .line 100
    iput-object p1, p0, Lcom/google/android/material/transition/FadeProvider$2;->val$view:Landroid/view/View;

    #@2
    iput p2, p0, Lcom/google/android/material/transition/FadeProvider$2;->val$originalAlpha:F

    #@4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 104
    iget-object p1, p0, Lcom/google/android/material/transition/FadeProvider$2;->val$view:Landroid/view/View;

    #@2
    iget v0, p0, Lcom/google/android/material/transition/FadeProvider$2;->val$originalAlpha:F

    #@4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@7
    return-void
.end method
