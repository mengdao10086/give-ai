.class Landroidx/fragment/app/FragmentTransitionCompat21$2;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransitionCompat21;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$fragmentView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4

    #@0
    .line 146
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$2;->this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

    #@2
    iput-object p2, p0, Landroidx/fragment/app/FragmentTransitionCompat21$2;->val$fragmentView:Landroid/view/View;

    #@4
    iput-object p3, p0, Landroidx/fragment/app/FragmentTransitionCompat21$2;->val$exitingViews:Ljava/util/ArrayList;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5

    #@0
    .line 161
    invoke-static {p1, p0}, Landroidx/fragment/app/FragmentTransitionCompat21$Api19Impl;->removeListener(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    #@3
    .line 162
    iget-object p1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$2;->val$fragmentView:Landroid/view/View;

    #@5
    const/16 v0, 0x8

    #@7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@a
    .line 163
    iget-object p1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$2;->val$exitingViews:Ljava/util/ArrayList;

    #@c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result p1

    #@10
    const/4 v0, 0x0

    #@11
    move v1, v0

    #@12
    :goto_12
    if-ge v1, p1, :cond_22

    #@14
    .line 165
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransitionCompat21$2;->val$exitingViews:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/view/View;

    #@1c
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_12

    #@22
    :cond_22
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 2

    #@0
    .line 155
    invoke-static {p1, p0}, Landroidx/fragment/app/FragmentTransitionCompat21$Api19Impl;->removeListener(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    #@3
    .line 156
    invoke-static {p1, p0}, Landroidx/fragment/app/FragmentTransitionCompat21$Api19Impl;->addListener(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    #@6
    return-void
.end method
