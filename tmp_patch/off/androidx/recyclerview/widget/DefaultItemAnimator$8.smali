.class Landroidx/recyclerview/widget/DefaultItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5

    #@0
    .line 380
    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@2
    iput-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@4
    iput-object p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    #@6
    iput-object p4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    #@8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 387
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@6
    .line 388
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    #@8
    const/high16 v0, 0x3f800000    # 1.0f

    #@a
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@d
    .line 389
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    #@13
    .line 390
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    #@15
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    #@18
    .line 391
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@1a
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@1c
    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    #@22
    .line 392
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@24
    iget-object p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    #@26
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@28
    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2a
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2d
    .line 393
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@2f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    #@32
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 383
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@2
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@4
    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    #@a
    return-void
.end method
