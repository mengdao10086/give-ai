.class Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .registers 2

    #@0
    .line 551
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    const/4 p1, 0x0

    #@6
    .line 549
    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    #@8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 572
    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    #@3
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 557
    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    #@2
    const/4 v0, 0x0

    #@3
    if-eqz p1, :cond_8

    #@5
    .line 558
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    #@7
    return-void

    #@8
    .line 561
    :cond_8
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    #@a
    iget-object p1, p1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@c
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Ljava/lang/Float;

    #@12
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@15
    move-result p1

    #@16
    const/4 v1, 0x0

    #@17
    cmpl-float p1, p1, v1

    #@19
    if-nez p1, :cond_25

    #@1b
    .line 562
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    #@1d
    iput v0, p1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    #@1f
    .line 563
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    #@21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    #@24
    goto :goto_2f

    #@25
    .line 565
    :cond_25
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    #@27
    const/4 v0, 0x2

    #@28
    iput v0, p1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    #@2a
    .line 566
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    #@2c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    #@2f
    :goto_2f
    return-void
.end method
