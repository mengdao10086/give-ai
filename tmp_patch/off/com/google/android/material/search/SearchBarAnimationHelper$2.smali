.class Lcom/google/android/material/search/SearchBarAnimationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchBarAnimationHelper;->startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

.field final synthetic val$centerView:Landroid/view/View;

.field final synthetic val$secondaryViewAnimator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/view/View;Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 101
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    iput-object p2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->val$centerView:Landroid/view/View;

    #@4
    iput-object p3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->val$secondaryViewAnimator:Landroid/animation/Animator;

    #@6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 104
    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->val$centerView:Landroid/view/View;

    #@2
    const/16 v0, 0x8

    #@4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@7
    .line 105
    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->val$secondaryViewAnimator:Landroid/animation/Animator;

    #@9
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    #@c
    return-void
.end method
