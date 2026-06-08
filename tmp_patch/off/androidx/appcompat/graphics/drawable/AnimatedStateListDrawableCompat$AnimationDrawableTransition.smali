.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/ObjectAnimator;

.field private final mHasReversibleFlag:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 391
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    #@4
    .line 392
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz p2, :cond_e

    #@b
    add-int/lit8 v2, v0, -0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    move v2, v1

    #@f
    :goto_f
    const/4 v3, 0x1

    #@10
    if-eqz p2, :cond_14

    #@12
    move v0, v1

    #@13
    goto :goto_15

    #@14
    :cond_14
    sub-int/2addr v0, v3

    #@15
    .line 395
    :goto_15
    new-instance v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;

    #@17
    invoke-direct {v4, p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    #@1a
    const/4 p2, 0x2

    #@1b
    new-array p2, p2, [I

    #@1d
    aput v2, p2, v1

    #@1f
    aput v0, p2, v3

    #@21
    const-string v0, "currentIndex"

    #@23
    .line 398
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@26
    move-result-object p1

    #@27
    .line 400
    invoke-static {p1, v3}, Landroidx/appcompat/resources/Compatibility$Api18Impl;->setAutoCancel(Landroid/animation/ObjectAnimator;Z)V

    #@2a
    .line 402
    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->getTotalDuration()I

    #@2d
    move-result p2

    #@2e
    int-to-long v0, p2

    #@2f
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@32
    .line 403
    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@35
    .line 404
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mHasReversibleFlag:Z

    #@37
    .line 405
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    #@39
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .registers 2

    #@0
    .line 410
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mHasReversibleFlag:Z

    #@2
    return v0
.end method

.method public reverse()V
    .registers 2

    #@0
    .line 420
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    #@2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    #@5
    return-void
.end method

.method public start()V
    .registers 2

    #@0
    .line 415
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    #@2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@5
    return-void
.end method

.method public stop()V
    .registers 2

    #@0
    .line 425
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    #@2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@5
    return-void
.end method
