.class Landroidx/transition/TransitionSet$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/TransitionSet;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/TransitionSet;

.field final synthetic val$nextTransition:Landroidx/transition/Transition;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 503
    iput-object p1, p0, Landroidx/transition/TransitionSet$1;->this$0:Landroidx/transition/TransitionSet;

    #@2
    iput-object p2, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    #@4
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 506
    iget-object v0, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    #@2
    invoke-virtual {v0}, Landroidx/transition/Transition;->runAnimators()V

    #@5
    .line 507
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@8
    return-void
.end method
