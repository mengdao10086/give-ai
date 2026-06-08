.class Landroidx/transition/ChangeBounds$9;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .registers 3

    #@0
    .line 394
    iput-object p1, p0, Landroidx/transition/ChangeBounds$9;->this$0:Landroidx/transition/ChangeBounds;

    #@2
    iput-object p2, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    #@4
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    #@7
    const/4 p1, 0x0

    #@8
    .line 395
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    #@a
    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 399
    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-static {p1, v0}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    #@6
    const/4 p1, 0x1

    #@7
    .line 400
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    #@9
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 4

    #@0
    .line 405
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    #@2
    if-nez v0, :cond_a

    #@4
    .line 406
    iget-object v0, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    #@a
    .line 408
    :cond_a
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@d
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 413
    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-static {p1, v0}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    #@6
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 418
    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    #@2
    const/4 v0, 0x1

    #@3
    invoke-static {p1, v0}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    #@6
    return-void
.end method
