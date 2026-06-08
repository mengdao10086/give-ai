.class Lcom/google/android/material/search/SearchViewAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchViewAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchViewAnimationHelper;->lambda$startShowAnimationExpand$0$com-google-android-material-search-SearchViewAnimationHelper()V
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
    .line 142
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 151
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@2
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_15

    #@c
    .line 152
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@e
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    #@15
    .line 154
    :cond_15
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@17
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    #@1a
    move-result-object p1

    #@1b
    sget-object v0, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    #@1d
    invoke-virtual {p1, v0}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    #@20
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 145
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@2
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    #@5
    move-result-object p1

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    #@a
    .line 146
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    #@c
    # getter for: Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->stopOnLoadAnimation()V

    #@13
    return-void
.end method
