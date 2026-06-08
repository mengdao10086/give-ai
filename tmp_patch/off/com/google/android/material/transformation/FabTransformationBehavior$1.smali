.class Lcom/google/android/material/transformation/FabTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$dependency:Landroid/view/View;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V
    .registers 5

    #@0
    .line 169
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

    #@2
    iput-boolean p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    #@4
    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    #@6
    iput-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    #@8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 182
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    #@2
    if-nez p1, :cond_17

    #@4
    .line 183
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    #@6
    const/4 v0, 0x4

    #@7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@a
    .line 185
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    #@c
    const/high16 v0, 0x3f800000    # 1.0f

    #@e
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@11
    .line 186
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@17
    :cond_17
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 172
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    #@2
    if-eqz p1, :cond_16

    #@4
    .line 173
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@a
    .line 175
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    #@c
    const/4 v0, 0x0

    #@d
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@10
    .line 176
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    #@12
    const/4 v0, 0x4

    #@13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@16
    :cond_16
    return-void
.end method
