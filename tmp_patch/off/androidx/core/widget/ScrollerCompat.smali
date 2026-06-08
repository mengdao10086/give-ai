.class public final Landroidx/core/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mScroller:Landroid/widget/OverScroller;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p2, :cond_b

    #@5
    .line 58
    new-instance v0, Landroid/widget/OverScroller;

    #@7
    invoke-direct {v0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@a
    goto :goto_10

    #@b
    :cond_b
    new-instance v0, Landroid/widget/OverScroller;

    #@d
    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@10
    :goto_10
    iput-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@12
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/core/widget/ScrollerCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 41
    invoke-static {p0, v0}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 49
    new-instance v0, Landroidx/core/widget/ScrollerCompat;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/core/widget/ScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 273
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@5
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 142
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fling(IIIIIIII)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    move-object v0, p0

    #@1
    .line 210
    iget-object v1, v0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    move/from16 v7, p6

    #@a
    move/from16 v8, p7

    #@c
    move/from16 v9, p8

    #@e
    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    #@11
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    move-object v0, p0

    #@1
    .line 242
    iget-object v1, v0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move/from16 v5, p4

    #@8
    move/from16 v6, p5

    #@a
    move/from16 v7, p6

    #@c
    move/from16 v8, p7

    #@e
    move/from16 v9, p8

    #@10
    move/from16 v10, p9

    #@12
    move/from16 v11, p10

    #@14
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    #@17
    return-void
.end method

.method public getCurrVelocity()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 130
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 82
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 94
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFinalX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 104
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFinalY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 114
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFinished()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 70
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOverScrolled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 334
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 294
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    #@5
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 314
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    #@5
    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 262
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public startScroll(IIII)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 163
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    #@5
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 183
    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@a
    return-void
.end method
