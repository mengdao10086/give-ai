.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousAnimatedIntValue:I

.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

.field final synthetic val$translationYBottom:I


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V
    .registers 3

    #@0
    .line 1020
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@2
    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->val$translationYBottom:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1021
    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->previousAnimatedIntValue:I

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    #@0
    .line 1025
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Ljava/lang/Integer;

    #@6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result p1

    #@a
    .line 1026
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1700()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1c

    #@10
    .line 1029
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@12
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    #@14
    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->previousAnimatedIntValue:I

    #@16
    sub-int v1, p1, v1

    #@18
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@1b
    goto :goto_24

    #@1c
    .line 1032
    :cond_1c
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@1e
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    #@20
    int-to-float v1, p1

    #@21
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    #@24
    .line 1034
    :goto_24
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->previousAnimatedIntValue:I

    #@26
    return-void
.end method
