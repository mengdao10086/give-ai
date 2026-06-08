.class public abstract Landroidx/core/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/AutoScrollHelper$ClampedScroller;,
        Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 195
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@3
    move-result v0

    #@4
    sput v0, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    #@0
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    #@5
    invoke-direct {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    #@a
    .line 141
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@c
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@11
    const/4 v0, 0x2

    #@12
    new-array v1, v0, [F

    #@14
    .line 150
    fill-array-data v1, :array_7c

    #@17
    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@19
    new-array v1, v0, [F

    #@1b
    .line 153
    fill-array-data v1, :array_84

    #@1e
    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@20
    new-array v1, v0, [F

    #@22
    .line 162
    fill-array-data v1, :array_8c

    #@25
    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@27
    new-array v1, v0, [F

    #@29
    .line 165
    fill-array-data v1, :array_94

    #@2c
    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@2e
    new-array v0, v0, [F

    #@30
    .line 168
    fill-array-data v0, :array_9c

    #@33
    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@35
    .line 211
    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@37
    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3e
    move-result-object p1

    #@3f
    const v0, 0x44c4e000    # 1575.0f

    #@42
    .line 214
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    #@44
    mul-float/2addr v1, v0

    #@45
    const/high16 v0, 0x3f000000    # 0.5f

    #@47
    add-float/2addr v1, v0

    #@48
    float-to-int v1, v1

    #@49
    const v2, 0x439d8000    # 315.0f

    #@4c
    .line 215
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    #@4e
    mul-float/2addr p1, v2

    #@4f
    add-float/2addr p1, v0

    #@50
    float-to-int p1, p1

    #@51
    int-to-float v0, v1

    #@52
    .line 216
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    #@55
    int-to-float p1, p1

    #@56
    .line 217
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    #@59
    const/4 p1, 0x1

    #@5a
    .line 219
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;

    #@5d
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    #@60
    .line 220
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    #@63
    const p1, 0x3e4ccccd    # 0.2f

    #@66
    .line 221
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    #@69
    const/high16 p1, 0x3f800000    # 1.0f

    #@6b
    .line 222
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    #@6e
    .line 223
    sget p1, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    #@70
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;

    #@73
    const/16 p1, 0x1f4

    #@75
    .line 224
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;

    #@78
    .line 225
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;

    #@7b
    return-void

    #@7c
    :array_7c
    .array-data 4
        0x0
        0x0
    .end array-data

    #@84
    :array_84
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    #@8c
    :array_8c
    .array-data 4
        0x0
        0x0
    .end array-data

    #@94
    :array_94
    .array-data 4
        0x0
        0x0
    .end array-data

    #@9c
    :array_9c
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 8

    #@0
    .line 549
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@2
    aget v0, v0, p1

    #@4
    .line 550
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@6
    aget v1, v1, p1

    #@8
    .line 551
    invoke-direct {p0, v0, p3, v1, p2}, Landroidx/core/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    #@b
    move-result p2

    #@c
    const/4 p3, 0x0

    #@d
    cmpl-float v0, p2, p3

    #@f
    if-nez v0, :cond_12

    #@11
    return p3

    #@12
    .line 557
    :cond_12
    iget-object p3, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@14
    aget p3, p3, p1

    #@16
    .line 558
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@18
    aget v1, v1, p1

    #@1a
    .line 559
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@1c
    aget p1, v2, p1

    #@1e
    mul-float/2addr p3, p4

    #@1f
    if-lez v0, :cond_27

    #@21
    mul-float/2addr p2, p3

    #@22
    .line 566
    invoke-static {p2, v1, p1}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    #@25
    move-result p1

    #@26
    return p1

    #@27
    :cond_27
    neg-float p2, p2

    #@28
    mul-float/2addr p2, p3

    #@29
    .line 568
    invoke-static {p2, v1, p1}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    #@2c
    move-result p1

    #@2d
    neg-float p1, p1

    #@2e
    return p1
.end method

.method static constrain(FFF)F
    .registers 4

    #@0
    cmpl-float v0, p0, p2

    #@2
    if-lez v0, :cond_5

    #@4
    return p2

    #@5
    :cond_5
    cmpg-float p2, p0, p1

    #@7
    if-gez p2, :cond_a

    #@9
    return p1

    #@a
    :cond_a
    return p0
.end method

.method static constrain(III)I
    .registers 3

    #@0
    if-le p0, p2, :cond_3

    #@2
    return p2

    #@3
    :cond_3
    if-ge p0, p1, :cond_6

    #@5
    return p1

    #@6
    :cond_6
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v1, p2, v0

    #@3
    if-nez v1, :cond_6

    #@5
    return v0

    #@6
    .line 638
    :cond_6
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    #@8
    const/4 v2, 0x1

    #@9
    if-eqz v1, :cond_18

    #@b
    if-eq v1, v2, :cond_18

    #@d
    const/4 v2, 0x2

    #@e
    if-eq v1, v2, :cond_11

    #@10
    goto :goto_2c

    #@11
    :cond_11
    cmpg-float v1, p1, v0

    #@13
    if-gez v1, :cond_2c

    #@15
    neg-float p2, p2

    #@16
    div-float/2addr p1, p2

    #@17
    return p1

    #@18
    :cond_18
    cmpg-float v3, p1, p2

    #@1a
    if-gez v3, :cond_2c

    #@1c
    cmpl-float v3, p1, v0

    #@1e
    const/high16 v4, 0x3f800000    # 1.0f

    #@20
    if-ltz v3, :cond_25

    #@22
    div-float/2addr p1, p2

    #@23
    sub-float/2addr v4, p1

    #@24
    return v4

    #@25
    .line 645
    :cond_25
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    #@27
    if-eqz p1, :cond_2c

    #@29
    if-ne v1, v2, :cond_2c

    #@2b
    return v4

    #@2c
    :cond_2c
    :goto_2c
    return v0
.end method

.method private getEdgeValue(FFFF)F
    .registers 6

    #@0
    mul-float/2addr p1, p2

    #@1
    const/4 v0, 0x0

    #@2
    .line 617
    invoke-static {p1, v0, p3}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    #@5
    move-result p1

    #@6
    .line 618
    invoke-direct {p0, p4, p1}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    #@9
    move-result p3

    #@a
    sub-float/2addr p2, p4

    #@b
    .line 619
    invoke-direct {p0, p2, p1}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    #@e
    move-result p1

    #@f
    sub-float/2addr p1, p3

    #@10
    cmpg-float p2, p1, v0

    #@12
    if-gez p2, :cond_1d

    #@14
    .line 623
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@16
    neg-float p1, p1

    #@17
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@1a
    move-result p1

    #@1b
    neg-float p1, p1

    #@1c
    goto :goto_27

    #@1d
    :cond_1d
    cmpl-float p2, p1, v0

    #@1f
    if-lez p2, :cond_30

    #@21
    .line 625
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@23
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@26
    move-result p1

    #@27
    :goto_27
    const/high16 p2, -0x40800000    # -1.0f

    #@29
    const/high16 p3, 0x3f800000    # 1.0f

    #@2b
    .line 630
    invoke-static {p1, p2, p3}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    #@2e
    move-result p1

    #@2f
    return p1

    #@30
    :cond_30
    return v0
.end method

.method private requestStop()V
    .registers 2

    #@0
    .line 538
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    .line 541
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    #@7
    goto :goto_d

    #@8
    .line 543
    :cond_8
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    #@a
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    #@d
    :goto_d
    return-void
.end method

.method private startAnimating()V
    .registers 7

    #@0
    .line 514
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 515
    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    #@6
    invoke-direct {v0, p0}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidx/core/widget/AutoScrollHelper;)V

    #@9
    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@b
    :cond_b
    const/4 v0, 0x1

    #@c
    .line 518
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    #@e
    .line 519
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    #@10
    .line 521
    iget-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@12
    if-nez v1, :cond_21

    #@14
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    #@16
    if-lez v1, :cond_21

    #@18
    .line 522
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@1a
    iget-object v3, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@1c
    int-to-long v4, v1

    #@1d
    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    #@20
    goto :goto_26

    #@21
    .line 524
    :cond_21
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@23
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@26
    .line 529
    :goto_26
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@28
    return-void
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .registers 9

    #@0
    .line 687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    const/4 v4, 0x3

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    const/4 v7, 0x0

    #@8
    move-wide v0, v2

    #@9
    .line 688
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@c
    move-result-object v0

    #@d
    .line 690
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@12
    .line 691
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@15
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    .line 248
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    #@2
    return v0
.end method

.method public isExclusive()Z
    .registers 2

    #@0
    .line 277
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    #@2
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    .line 466
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 470
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    #@9
    move-result v0

    #@a
    const/4 v2, 0x1

    #@b
    if-eqz v0, :cond_1a

    #@d
    if-eq v0, v2, :cond_16

    #@f
    const/4 v3, 0x2

    #@10
    if-eq v0, v3, :cond_1e

    #@12
    const/4 p1, 0x3

    #@13
    if-eq v0, p1, :cond_16

    #@15
    goto :goto_58

    #@16
    .line 491
    :cond_16
    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    #@19
    goto :goto_58

    #@1a
    .line 473
    :cond_1a
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    #@1c
    .line 474
    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@1e
    .line 478
    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@21
    move-result v0

    #@22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@25
    move-result v3

    #@26
    int-to-float v3, v3

    #@27
    iget-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@29
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@2c
    move-result v4

    #@2d
    int-to-float v4, v4

    #@2e
    .line 477
    invoke-direct {p0, v1, v0, v3, v4}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    #@31
    move-result v0

    #@32
    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@35
    move-result p2

    #@36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@39
    move-result p1

    #@3a
    int-to-float p1, p1

    #@3b
    iget-object v3, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@3d
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@40
    move-result v3

    #@41
    int-to-float v3, v3

    #@42
    .line 479
    invoke-direct {p0, v2, p2, p1, v3}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    #@45
    move-result p1

    #@46
    .line 481
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    #@48
    invoke-virtual {p2, v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    #@4b
    .line 485
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    #@4d
    if-nez p1, :cond_58

    #@4f
    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    #@52
    move-result p1

    #@53
    if-eqz p1, :cond_58

    #@55
    .line 486
    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->startAnimating()V

    #@58
    .line 495
    :cond_58
    :goto_58
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    #@5a
    if-eqz p1, :cond_61

    #@5c
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    #@5e
    if-eqz p1, :cond_61

    #@60
    move v1, v2

    #@61
    :cond_61
    return v1
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    #@0
    .line 420
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    #@2
    return-object p0
.end method

.method public setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    #@0
    .line 359
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    #@2
    return-object p0
.end method

.method public setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    #@0
    .line 236
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    if-nez p1, :cond_9

    #@6
    .line 237
    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    #@9
    .line 240
    :cond_9
    iput-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    #@b
    return-object p0
.end method

.method public setExclusive(Z)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    #@0
    .line 264
    iput-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    #@2
    return-object p0
.end method

.method public setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 5

    #@0
    .line 402
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    const/4 p1, 0x1

    #@6
    .line 403
    aput p2, v0, p1

    #@8
    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 6

    #@0
    .line 296
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@2
    const/high16 v1, 0x447a0000    # 1000.0f

    #@4
    div-float/2addr p1, v1

    #@5
    const/4 v2, 0x0

    #@6
    aput p1, v0, v2

    #@8
    const/4 p1, 0x1

    #@9
    div-float/2addr p2, v1

    #@a
    .line 297
    aput p2, v0, p1

    #@c
    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 6

    #@0
    .line 315
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@2
    const/high16 v1, 0x447a0000    # 1000.0f

    #@4
    div-float/2addr p1, v1

    #@5
    const/4 v2, 0x0

    #@6
    aput p1, v0, v2

    #@8
    const/4 p1, 0x1

    #@9
    div-float/2addr p2, v1

    #@a
    .line 316
    aput p2, v0, p1

    #@c
    return-object p0
.end method

.method public setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    #@0
    .line 452
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    #@5
    return-object p0
.end method

.method public setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    #@0
    .line 436
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    #@5
    return-object p0
.end method

.method public setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 5

    #@0
    .line 379
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    const/4 p1, 0x1

    #@6
    .line 380
    aput p2, v0, p1

    #@8
    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 6

    #@0
    .line 337
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@2
    const/high16 v1, 0x447a0000    # 1000.0f

    #@4
    div-float/2addr p1, v1

    #@5
    const/4 v2, 0x0

    #@6
    aput p1, v0, v2

    #@8
    const/4 p1, 0x1

    #@9
    div-float/2addr p2, v1

    #@a
    .line 338
    aput p2, v0, p1

    #@c
    return-object p0
.end method

.method shouldAnimate()Z
    .registers 3

    #@0
    .line 502
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    #@2
    .line 503
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    #@5
    move-result v1

    #@6
    .line 504
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    #@9
    move-result v0

    #@a
    if-eqz v1, :cond_12

    #@c
    .line 506
    invoke-virtual {p0, v1}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1a

    #@12
    :cond_12
    if-eqz v0, :cond_1c

    #@14
    .line 507
    invoke-virtual {p0, v0}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    :cond_1a
    const/4 v0, 0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    :goto_1d
    return v0
.end method
