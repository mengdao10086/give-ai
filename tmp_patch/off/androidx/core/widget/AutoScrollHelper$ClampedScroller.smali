.class Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method constructor <init>()V
    .registers 3

    #@0
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/high16 v0, -0x8000000000000000L

    #@5
    .line 757
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@7
    const-wide/16 v0, -0x1

    #@9
    .line 758
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@b
    const-wide/16 v0, 0x0

    #@d
    .line 759
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@f
    const/4 v0, 0x0

    #@10
    .line 760
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    #@12
    .line 761
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    #@14
    return-void
.end method

.method private getValueAt(J)F
    .registers 11

    #@0
    .line 800
    iget-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@2
    cmp-long v2, p1, v0

    #@4
    const/4 v3, 0x0

    #@5
    if-gez v2, :cond_8

    #@7
    return v3

    #@8
    .line 802
    :cond_8
    iget-wide v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@a
    const-wide/16 v6, 0x0

    #@c
    cmp-long v2, v4, v6

    #@e
    const/high16 v6, 0x3f800000    # 1.0f

    #@10
    if-ltz v2, :cond_28

    #@12
    cmp-long v2, p1, v4

    #@14
    if-gez v2, :cond_17

    #@16
    goto :goto_28

    #@17
    :cond_17
    sub-long/2addr p1, v4

    #@18
    .line 807
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    #@1a
    sub-float v1, v6, v0

    #@1c
    long-to-float p1, p1

    #@1d
    iget p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    #@1f
    int-to-float p2, p2

    #@20
    div-float/2addr p1, p2

    #@21
    .line 808
    invoke-static {p1, v3, v6}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    #@24
    move-result p1

    #@25
    mul-float/2addr v0, p1

    #@26
    add-float/2addr v1, v0

    #@27
    return v1

    #@28
    :cond_28
    :goto_28
    sub-long/2addr p1, v0

    #@29
    long-to-float p1, p1

    #@2a
    .line 804
    iget p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    #@2c
    int-to-float p2, p2

    #@2d
    div-float/2addr p1, p2

    #@2e
    invoke-static {p1, v3, v6}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    #@31
    move-result p1

    #@32
    const/high16 p2, 0x3f000000    # 0.5f

    #@34
    mul-float/2addr p1, p2

    #@35
    return p1
.end method

.method private interpolateValue(F)F
    .registers 4

    #@0
    const/high16 v0, -0x3f800000    # -4.0f

    #@2
    mul-float/2addr v0, p1

    #@3
    mul-float/2addr v0, p1

    #@4
    const/high16 v1, 0x40800000    # 4.0f

    #@6
    mul-float/2addr p1, v1

    #@7
    add-float/2addr v0, p1

    #@8
    return v0
.end method


# virtual methods
.method public computeScrollDelta()V
    .registers 6

    #@0
    .line 831
    iget-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_29

    #@8
    .line 835
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@b
    move-result-wide v0

    #@c
    .line 836
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    #@f
    move-result v2

    #@10
    .line 837
    invoke-direct {p0, v2}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    #@13
    move-result v2

    #@14
    .line 838
    iget-wide v3, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@16
    sub-long v3, v0, v3

    #@18
    .line 840
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@1a
    long-to-float v0, v3

    #@1b
    mul-float/2addr v0, v2

    #@1c
    .line 841
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    #@1e
    mul-float/2addr v1, v0

    #@1f
    float-to-int v1, v1

    #@20
    iput v1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    #@22
    .line 842
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    #@24
    mul-float/2addr v0, v1

    #@25
    float-to-int v0, v0

    #@26
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    #@28
    return-void

    #@29
    .line 832
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    #@2b
    const-string v1, "Cannot compute scroll delta before calling start()"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method public getDeltaX()I
    .registers 2

    #@0
    .line 869
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    #@2
    return v0
.end method

.method public getDeltaY()I
    .registers 2

    #@0
    .line 877
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    #@2
    return v0
.end method

.method public getHorizontalDirection()I
    .registers 3

    #@0
    .line 857
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@5
    move-result v1

    #@6
    div-float/2addr v0, v1

    #@7
    float-to-int v0, v0

    #@8
    return v0
.end method

.method public getVerticalDirection()I
    .registers 3

    #@0
    .line 861
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@5
    move-result v1

    #@6
    div-float/2addr v0, v1

    #@7
    float-to-int v0, v0

    #@8
    return v0
.end method

.method public isFinished()Z
    .registers 7

    #@0
    .line 795
    iget-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_18

    #@8
    .line 796
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@b
    move-result-wide v0

    #@c
    iget-wide v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@e
    iget v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    #@10
    int-to-long v4, v4

    #@11
    add-long/2addr v2, v4

    #@12
    cmp-long v0, v0, v2

    #@14
    if-lez v0, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    :goto_19
    return v0
.end method

.method public requestStop()V
    .registers 6

    #@0
    .line 788
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 789
    iget-wide v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@6
    sub-long v2, v0, v2

    #@8
    long-to-int v2, v2

    #@9
    const/4 v3, 0x0

    #@a
    iget v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    #@c
    invoke-static {v2, v3, v4}, Landroidx/core/widget/AutoScrollHelper;->constrain(III)I

    #@f
    move-result v2

    #@10
    iput v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    #@12
    .line 790
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    #@15
    move-result v2

    #@16
    iput v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    #@18
    .line 791
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@1a
    return-void
.end method

.method public setRampDownDuration(I)V
    .registers 2

    #@0
    .line 769
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    #@2
    return-void
.end method

.method public setRampUpDuration(I)V
    .registers 2

    #@0
    .line 765
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    #@2
    return-void
.end method

.method public setTargetVelocity(FF)V
    .registers 3

    #@0
    .line 852
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    #@2
    .line 853
    iput p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    #@4
    return-void
.end method

.method public start()V
    .registers 5

    #@0
    .line 776
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@6
    const-wide/16 v2, -0x1

    #@8
    .line 777
    iput-wide v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@a
    .line 778
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@c
    const/high16 v0, 0x3f000000    # 0.5f

    #@e
    .line 779
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    #@10
    const/4 v0, 0x0

    #@11
    .line 780
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    #@13
    .line 781
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    #@15
    return-void
.end method
