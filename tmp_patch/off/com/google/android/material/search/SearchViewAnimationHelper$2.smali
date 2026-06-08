.class Lcom/google/android/material/search/SearchViewAnimationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchViewAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationCollapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .registers 2

    #@0
    .line 167
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 175
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@2
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@5
    move-result-object p1

    #@6
    const/16 v0, 0x8

    #@8
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    #@b
    .line 176
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@d
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    #@14
    move-result p1

    #@15
    if-nez p1, :cond_20

    #@17
    .line 177
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@19
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    #@20
    .line 179
    :cond_20
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@22
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    #@25
    move-result-object p1

    #@26
    sget-object v0, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    #@28
    invoke-virtual {p1, v0}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    #@2b
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 170
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@2
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    #@5
    move-result-object p1

    #@6
    sget-object v0, Lcom/google/android/material/search/SearchView$TransitionState;->HIDING:Lcom/google/android/material/search/SearchView$TransitionState;

    #@8
    invoke-virtual {p1, v0}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    #@b
    return-void
.end method
