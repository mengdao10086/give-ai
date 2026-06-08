.class Lcom/google/android/material/transition/ScaleProvider$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScaleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$originalScaleX:F

.field final synthetic val$originalScaleY:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;FF)V
    .registers 4

    #@0
    .line 182
    iput-object p1, p0, Lcom/google/android/material/transition/ScaleProvider$1;->val$view:Landroid/view/View;

    #@2
    iput p2, p0, Lcom/google/android/material/transition/ScaleProvider$1;->val$originalScaleX:F

    #@4
    iput p3, p0, Lcom/google/android/material/transition/ScaleProvider$1;->val$originalScaleY:F

    #@6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 185
    iget-object p1, p0, Lcom/google/android/material/transition/ScaleProvider$1;->val$view:Landroid/view/View;

    #@2
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider$1;->val$originalScaleX:F

    #@4
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    #@7
    .line 186
    iget-object p1, p0, Lcom/google/android/material/transition/ScaleProvider$1;->val$view:Landroid/view/View;

    #@9
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider$1;->val$originalScaleY:F

    #@b
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    #@e
    return-void
.end method
