.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 2

    #@0
    .line 1006
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    #@0
    .line 1016
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@2
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    #@5
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 1009
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@2
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;
    invoke-static {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1600(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/ContentViewCallback;

    #@5
    move-result-object p1

    #@6
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@8
    .line 1010
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animationSlideDuration:I
    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1400(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    #@b
    move-result v0

    #@c
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@e
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animationFadeInDuration:I
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1500(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    #@11
    move-result v1

    #@12
    sub-int/2addr v0, v1

    #@13
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@15
    .line 1011
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animationFadeInDuration:I
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1500(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    #@18
    move-result v1

    #@19
    .line 1009
    invoke-interface {p1, v0, v1}, Lcom/google/android/material/snackbar/ContentViewCallback;->animateContentIn(II)V

    #@1c
    return-void
.end method
