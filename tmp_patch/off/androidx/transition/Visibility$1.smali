.class Landroidx/transition/Visibility$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/Visibility;

.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$overlayHost:Landroid/view/ViewGroup;

.field final synthetic val$startView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    #@0
    .line 438
    iput-object p1, p0, Landroidx/transition/Visibility$1;->this$0:Landroidx/transition/Visibility;

    #@2
    iput-object p2, p0, Landroidx/transition/Visibility$1;->val$overlayHost:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    #@6
    iput-object p4, p0, Landroidx/transition/Visibility$1;->val$startView:Landroid/view/View;

    #@8
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 5

    #@0
    .line 456
    iget-object v0, p0, Landroidx/transition/Visibility$1;->val$startView:Landroid/view/View;

    #@2
    sget v1, Landroidx/transition/R$id;->save_overlay_view:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@8
    .line 457
    iget-object v0, p0, Landroidx/transition/Visibility$1;->val$overlayHost:Landroid/view/ViewGroup;

    #@a
    invoke-static {v0}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    #@10
    invoke-interface {v0, v1}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    #@13
    .line 458
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@16
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 442
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$overlayHost:Landroid/view/ViewGroup;

    #@2
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@5
    move-result-object p1

    #@6
    iget-object v0, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    #@8
    invoke-interface {p1, v0}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    #@b
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 447
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    #@2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5
    move-result-object p1

    #@6
    if-nez p1, :cond_14

    #@8
    .line 448
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$overlayHost:Landroid/view/ViewGroup;

    #@a
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@d
    move-result-object p1

    #@e
    iget-object v0, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    #@10
    invoke-interface {p1, v0}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    #@13
    goto :goto_19

    #@14
    .line 450
    :cond_14
    iget-object p1, p0, Landroidx/transition/Visibility$1;->this$0:Landroidx/transition/Visibility;

    #@16
    invoke-virtual {p1}, Landroidx/transition/Visibility;->cancel()V

    #@19
    :goto_19
    return-void
.end method
