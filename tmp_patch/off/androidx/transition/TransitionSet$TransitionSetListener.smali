.class Landroidx/transition/TransitionSet$TransitionSetListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroidx/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;)V
    .registers 2

    #@0
    .line 433
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    #@3
    .line 434
    iput-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    #@5
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 4

    #@0
    .line 447
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    #@2
    iget v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    #@8
    .line 448
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    #@a
    iget v0, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    #@c
    if-nez v0, :cond_18

    #@e
    .line 450
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    #@10
    const/4 v1, 0x0

    #@11
    iput-boolean v1, v0, Landroidx/transition/TransitionSet;->mStarted:Z

    #@13
    .line 451
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    #@15
    invoke-virtual {v0}, Landroidx/transition/TransitionSet;->end()V

    #@18
    .line 453
    :cond_18
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@1b
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 439
    iget-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    #@2
    iget-boolean p1, p1, Landroidx/transition/TransitionSet;->mStarted:Z

    #@4
    if-nez p1, :cond_10

    #@6
    .line 440
    iget-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    #@8
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->start()V

    #@b
    .line 441
    iget-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    #@d
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p1, Landroidx/transition/TransitionSet;->mStarted:Z

    #@10
    :cond_10
    return-void
.end method
