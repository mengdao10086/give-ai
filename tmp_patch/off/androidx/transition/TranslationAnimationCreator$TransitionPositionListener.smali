.class Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .registers 8

    #@0
    .line 99
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@3
    .line 100
    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@5
    .line 101
    iput-object p2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    #@7
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@a
    move-result v0

    #@b
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@e
    move-result v0

    #@f
    sub-int/2addr p3, v0

    #@10
    iput p3, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    #@12
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@15
    move-result p1

    #@16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@19
    move-result p1

    #@1a
    sub-int/2addr p4, p1

    #@1b
    iput p4, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    #@1d
    .line 104
    iput p5, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    #@1f
    .line 105
    iput p6, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    #@21
    .line 106
    sget p1, Landroidx/transition/R$id;->transition_position:I

    #@23
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@26
    move-result-object p1

    #@27
    check-cast p1, [I

    #@29
    check-cast p1, [I

    #@2b
    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@2d
    if-eqz p1, :cond_35

    #@2f
    .line 108
    sget p1, Landroidx/transition/R$id;->transition_position:I

    #@31
    const/4 p3, 0x0

    #@32
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@35
    :cond_35
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 114
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@2
    if-nez p1, :cond_9

    #@4
    const/4 p1, 0x2

    #@5
    new-array p1, p1, [I

    #@7
    .line 115
    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@9
    .line 117
    :cond_9
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@b
    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    #@d
    int-to-float v0, v0

    #@e
    iget-object v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@10
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    #@13
    move-result v1

    #@14
    add-float/2addr v0, v1

    #@15
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@18
    move-result v0

    #@19
    const/4 v1, 0x0

    #@1a
    aput v0, p1, v1

    #@1c
    .line 118
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@1e
    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    #@20
    int-to-float v0, v0

    #@21
    iget-object v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@23
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    #@26
    move-result v1

    #@27
    add-float/2addr v0, v1

    #@28
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@2b
    move-result v0

    #@2c
    const/4 v1, 0x1

    #@2d
    aput v0, p1, v1

    #@2f
    .line 119
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    #@31
    sget v0, Landroidx/transition/R$id;->transition_position:I

    #@33
    iget-object v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@35
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@38
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 124
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    #@8
    .line 125
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@a
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    #@10
    .line 126
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@12
    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    #@14
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    #@17
    .line 127
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@19
    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    #@1b
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    #@1e
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 132
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@2
    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    #@4
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    #@7
    .line 133
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@9
    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    #@b
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    #@e
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 4

    #@0
    .line 142
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@2
    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    #@7
    .line 143
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@9
    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@e
    .line 144
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@11
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .registers 2

    #@0
    return-void
.end method
