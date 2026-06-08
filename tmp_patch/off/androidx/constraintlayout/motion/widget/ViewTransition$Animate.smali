.class Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/ViewTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Animate"
.end annotation


# instance fields
.field hold_at_100:Z

.field mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field private final mClearsTag:I

.field mDpositionDt:F

.field mDuration:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mLastRender:J

.field mMC:Landroidx/constraintlayout/motion/widget/MotionController;

.field mPosition:F

.field private final mSetsTag:I

.field mStart:J

.field mTempRec:Landroid/graphics/Rect;

.field mUpDuration:I

.field mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

.field reverse:Z


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "motionController",
            "duration",
            "upDuration",
            "mode",
            "interpolator",
            "setTag",
            "clearTag"
        }
    .end annotation

    #@0
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 346
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@a
    const/4 v0, 0x0

    #@b
    .line 349
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    #@d
    .line 353
    new-instance v1, Landroid/graphics/Rect;

    #@f
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    #@14
    .line 354
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    #@16
    .line 360
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@18
    .line 361
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    #@1a
    .line 362
    iput p3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDuration:I

    #@1c
    .line 363
    iput p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    #@1e
    .line 364
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@21
    move-result-wide p1

    #@22
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mStart:J

    #@24
    .line 365
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    #@26
    .line 366
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@28
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->addAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V

    #@2b
    .line 367
    iput-object p6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2d
    .line 368
    iput p7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    #@2f
    .line 369
    iput p8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    #@31
    const/4 p1, 0x3

    #@32
    if-ne p5, p1, :cond_37

    #@34
    const/4 p1, 0x1

    #@35
    .line 371
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    #@37
    :cond_37
    if-nez p3, :cond_3d

    #@39
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    #@3c
    goto :goto_41

    #@3d
    :cond_3d
    const/high16 p1, 0x3f800000    # 1.0f

    #@3f
    int-to-float p2, p3

    #@40
    div-float/2addr p1, p2

    #@41
    .line 373
    :goto_41
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    #@43
    .line 374
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    #@46
    return-void
.end method


# virtual methods
.method mutate()V
    .registers 2

    #@0
    .line 387
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 388
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutateReverse()V

    #@7
    goto :goto_b

    #@8
    .line 390
    :cond_8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutateForward()V

    #@b
    :goto_b
    return-void
.end method

.method mutateForward()V
    .registers 8

    #@0
    .line 423
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v3

    #@4
    .line 424
    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    #@6
    sub-long v0, v3, v0

    #@8
    .line 425
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    #@a
    .line 427
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@c
    long-to-double v0, v0

    #@d
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    #@12
    mul-double/2addr v0, v5

    #@13
    double-to-float v0, v0

    #@14
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    #@16
    mul-float/2addr v0, v1

    #@17
    add-float/2addr v2, v0

    #@18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@1a
    const/high16 v6, 0x3f800000    # 1.0f

    #@1c
    cmpl-float v0, v2, v6

    #@1e
    if-ltz v0, :cond_22

    #@20
    .line 429
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@22
    .line 432
    :cond_22
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    #@24
    if-nez v0, :cond_29

    #@26
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@28
    goto :goto_2f

    #@29
    :cond_29
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@2b
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@2e
    move-result v0

    #@2f
    :goto_2f
    move v2, v0

    #@30
    .line 433
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    #@32
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@34
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@36
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    #@39
    move-result v0

    #@3a
    .line 436
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@3c
    cmpl-float v1, v1, v6

    #@3e
    if-ltz v1, :cond_71

    #@40
    .line 437
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    #@42
    const/4 v2, -0x1

    #@43
    if-eq v1, v2, :cond_58

    #@45
    .line 438
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    #@47
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    #@4a
    move-result-object v1

    #@4b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    #@4d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@50
    move-result-wide v4

    #@51
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@58
    .line 440
    :cond_58
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    #@5a
    if-eq v1, v2, :cond_68

    #@5c
    .line 441
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    #@5e
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    #@61
    move-result-object v1

    #@62
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    #@64
    const/4 v3, 0x0

    #@65
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@68
    .line 443
    :cond_68
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    #@6a
    if-nez v1, :cond_71

    #@6c
    .line 444
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@6e
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V

    #@71
    .line 447
    :cond_71
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@73
    cmpg-float v1, v1, v6

    #@75
    if-ltz v1, :cond_79

    #@77
    if-eqz v0, :cond_7e

    #@79
    .line 448
    :cond_79
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@7b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->invalidate()V

    #@7e
    :cond_7e
    return-void
.end method

.method mutateReverse()V
    .registers 8

    #@0
    .line 395
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v3

    #@4
    .line 396
    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    #@6
    sub-long v0, v3, v0

    #@8
    .line 397
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    #@a
    .line 399
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@c
    long-to-double v0, v0

    #@d
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    #@12
    mul-double/2addr v0, v5

    #@13
    double-to-float v0, v0

    #@14
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    #@16
    mul-float/2addr v0, v1

    #@17
    sub-float/2addr v2, v0

    #@18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@1a
    const/4 v6, 0x0

    #@1b
    cmpg-float v0, v2, v6

    #@1d
    if-gez v0, :cond_21

    #@1f
    .line 401
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@21
    .line 404
    :cond_21
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    #@23
    if-nez v0, :cond_28

    #@25
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@27
    goto :goto_2e

    #@28
    :cond_28
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@2a
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@2d
    move-result v0

    #@2e
    :goto_2e
    move v2, v0

    #@2f
    .line 405
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    #@31
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@33
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@35
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    #@38
    move-result v0

    #@39
    .line 407
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@3b
    cmpg-float v1, v1, v6

    #@3d
    if-gtz v1, :cond_6c

    #@3f
    .line 408
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    #@41
    const/4 v2, -0x1

    #@42
    if-eq v1, v2, :cond_57

    #@44
    .line 409
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    #@46
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    #@49
    move-result-object v1

    #@4a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    #@4c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4f
    move-result-wide v4

    #@50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@57
    .line 411
    :cond_57
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    #@59
    if-eq v1, v2, :cond_67

    #@5b
    .line 412
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    #@5d
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    #@60
    move-result-object v1

    #@61
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    #@63
    const/4 v3, 0x0

    #@64
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@67
    .line 414
    :cond_67
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@69
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V

    #@6c
    .line 416
    :cond_6c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    #@6e
    cmpl-float v1, v1, v6

    #@70
    if-gtz v1, :cond_74

    #@72
    if-eqz v0, :cond_79

    #@74
    .line 417
    :cond_74
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@76
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->invalidate()V

    #@79
    :cond_79
    return-void
.end method

.method public reactTo(IFF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "x",
            "y"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_24

    #@3
    const/4 v1, 0x2

    #@4
    if-eq p1, v1, :cond_7

    #@6
    goto :goto_23

    #@7
    .line 460
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    #@9
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    .line 461
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    #@f
    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@12
    .line 462
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    #@14
    float-to-int p2, p2

    #@15
    float-to-int p3, p3

    #@16
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    #@19
    move-result p1

    #@1a
    if-nez p1, :cond_23

    #@1c
    .line 463
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    #@1e
    if-nez p1, :cond_23

    #@20
    .line 464
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse(Z)V

    #@23
    :cond_23
    :goto_23
    return-void

    #@24
    .line 455
    :cond_24
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    #@26
    if-nez p1, :cond_2b

    #@28
    .line 456
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse(Z)V

    #@2b
    :cond_2b
    return-void
.end method

.method reverse(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    #@0
    .line 378
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    #@2
    if-eqz p1, :cond_16

    #@4
    .line 379
    iget p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    #@6
    const/4 v0, -0x1

    #@7
    if-eq p1, v0, :cond_16

    #@9
    if-nez p1, :cond_f

    #@b
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    #@e
    goto :goto_14

    #@f
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    #@11
    int-to-float p1, p1

    #@12
    div-float p1, v0, p1

    #@14
    .line 380
    :goto_14
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    #@16
    .line 382
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@18
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->invalidate()V

    #@1b
    .line 383
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    #@21
    return-void
.end method
