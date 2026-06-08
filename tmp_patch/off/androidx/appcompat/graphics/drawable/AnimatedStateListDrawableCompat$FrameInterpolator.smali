.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private mFrameTimes:[I

.field private mFrames:I

.field private mTotalDuration:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .registers 3

    #@0
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 735
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    #@6
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    #@0
    .line 761
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    #@2
    int-to-float v0, v0

    #@3
    mul-float/2addr p1, v0

    #@4
    const/high16 v0, 0x3f000000    # 0.5f

    #@6
    add-float/2addr p1, v0

    #@7
    float-to-int p1, p1

    #@8
    .line 762
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrames:I

    #@a
    .line 763
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v0, :cond_17

    #@f
    .line 767
    aget v3, v1, v2

    #@11
    if-lt p1, v3, :cond_17

    #@13
    sub-int/2addr p1, v3

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    if-ge v2, v0, :cond_1f

    #@19
    int-to-float p1, p1

    #@1a
    .line 774
    iget v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    #@1c
    int-to-float v1, v1

    #@1d
    div-float/2addr p1, v1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    :goto_20
    int-to-float v1, v2

    #@21
    int-to-float v0, v0

    #@22
    div-float/2addr v1, v0

    #@23
    add-float/2addr v1, p1

    #@24
    return v1
.end method

.method getTotalDuration()I
    .registers 2

    #@0
    .line 756
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    #@2
    return v0
.end method

.method updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .registers 8

    #@0
    .line 739
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@3
    move-result v0

    #@4
    .line 740
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrames:I

    #@6
    .line 741
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    #@8
    if-eqz v1, :cond_d

    #@a
    array-length v1, v1

    #@b
    if-ge v1, v0, :cond_11

    #@d
    .line 742
    :cond_d
    new-array v1, v0, [I

    #@f
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    #@11
    .line 744
    :cond_11
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    #@13
    const/4 v2, 0x0

    #@14
    move v3, v2

    #@15
    :goto_15
    if-ge v2, v0, :cond_29

    #@17
    if-eqz p2, :cond_1e

    #@19
    sub-int v4, v0, v2

    #@1b
    add-int/lit8 v4, v4, -0x1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move v4, v2

    #@1f
    .line 747
    :goto_1f
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    #@22
    move-result v4

    #@23
    .line 748
    aput v4, v1, v2

    #@25
    add-int/2addr v3, v4

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_15

    #@29
    .line 751
    :cond_29
    iput v3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    #@2b
    return v3
.end method
