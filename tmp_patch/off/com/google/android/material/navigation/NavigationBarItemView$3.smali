.class Lcom/google/android/material/navigation/NavigationBarItemView$3;
.super Ljava/lang/Object;
.source "NavigationBarItemView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;->maybeAnimateActiveIndicatorToProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

.field final synthetic val$newProgress:F


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;F)V
    .registers 3

    #@0
    .line 360
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$3;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    #@2
    iput p2, p0, Lcom/google/android/material/navigation/NavigationBarItemView$3;->val$newProgress:F

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    #@0
    .line 363
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
    .line 364
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView$3;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    #@c
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$3;->val$newProgress:F

    #@e
    # invokes: Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorProgress(FF)V
    invoke-static {v0, p1, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->access$500(Lcom/google/android/material/navigation/NavigationBarItemView;FF)V

    #@11
    return-void
.end method
