.class Lcom/google/android/material/transition/MaterialContainerTransform$1;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/MaterialContainerTransform;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transition/MaterialContainerTransform;

.field final synthetic val$transitionDrawable:Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/MaterialContainerTransform;Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V
    .registers 3

    #@0
    .line 968
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$1;->this$0:Lcom/google/android/material/transition/MaterialContainerTransform;

    #@2
    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$1;->val$transitionDrawable:Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    #@0
    .line 971
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$1;->val$transitionDrawable:Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    #@2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    #@5
    move-result p1

    #@6
    # invokes: Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->setProgress(F)V
    invoke-static {v0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->access$200(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;F)V

    #@9
    return-void
.end method
