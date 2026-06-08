.class Landroidx/transition/Visibility$DisappearListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;
.implements Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSuppressLayout:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .registers 5

    #@0
    .line 533
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 531
    iput-boolean v0, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    #@6
    .line 534
    iput-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@8
    .line 535
    iput p2, p0, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@a
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroid/view/ViewGroup;

    #@10
    iput-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@12
    .line 537
    iput-boolean p3, p0, Landroidx/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    #@14
    const/4 p1, 0x1

    #@15
    .line 539
    invoke-direct {p0, p1}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@18
    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .registers 3

    #@0
    .line 604
    iget-boolean v0, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez v0, :cond_12

    #@4
    .line 606
    iget-object v0, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@6
    iget v1, p0, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@8
    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@b
    .line 607
    iget-object v0, p0, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@d
    if-eqz v0, :cond_12

    #@f
    .line 608
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    .line 612
    invoke-direct {p0, v0}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@16
    return-void
.end method

.method private suppressLayout(Z)V
    .registers 3

    #@0
    .line 616
    iget-boolean v0, p0, Landroidx/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    #@2
    if-eqz v0, :cond_11

    #@4
    iget-boolean v0, p0, Landroidx/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    #@6
    if-eq v0, p1, :cond_11

    #@8
    iget-object v0, p0, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 617
    iput-boolean p1, p0, Landroidx/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    #@e
    .line 618
    invoke-static {v0, p1}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    #@11
    :cond_11
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 562
    iput-boolean p1, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    #@3
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    #@0
    .line 575
    invoke-direct {p0}, Landroidx/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    #@3
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 546
    iget-boolean p1, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez p1, :cond_b

    #@4
    .line 547
    iget-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@6
    iget v0, p0, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    #@8
    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@b
    :cond_b
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    #@0
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 555
    iget-boolean p1, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    #@2
    if-nez p1, :cond_a

    #@4
    .line 556
    iget-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@a
    :cond_a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    #@0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    .line 585
    invoke-direct {p0}, Landroidx/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    #@3
    .line 586
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@6
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    .line 595
    invoke-direct {p0, p1}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@4
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 600
    invoke-direct {p0, p1}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    #@4
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method
