.class public final Landroidx/core/view/WindowInsetsAnimationCompat;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;,
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;,
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl;,
        Landroidx/core/view/WindowInsetsAnimationCompat$Callback;,
        Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowInsetsAnimCompat"


# instance fields
.field private mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .registers 7

    #@0
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v1, 0x1e

    #@7
    if-lt v0, v1, :cond_11

    #@9
    .line 76
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    #@b
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(ILandroid/view/animation/Interpolator;J)V

    #@e
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@10
    goto :goto_18

    #@11
    .line 78
    :cond_11
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;

    #@13
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;-><init>(ILandroid/view/animation/Interpolator;J)V

    #@16
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@18
    :goto_18
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const-wide/16 v1, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 86
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/core/view/WindowInsetsAnimationCompat;-><init>(ILandroid/view/animation/Interpolator;J)V

    #@7
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v1, 0x1e

    #@b
    if-lt v0, v1, :cond_14

    #@d
    .line 88
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    #@f
    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(Landroid/view/WindowInsetsAnimation;)V

    #@12
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@14
    :cond_14
    return-void
.end method

.method static setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .registers 4

    #@0
    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 525
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    #@9
    goto :goto_d

    #@a
    .line 527
    :cond_a
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    #@d
    :goto_d
    return-void
.end method

.method static toWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;
    .registers 2

    #@0
    .line 329
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsAnimationCompat;-><init>(Landroid/view/WindowInsetsAnimation;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    #@0
    .line 194
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getAlpha()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDurationMillis()J
    .registers 3

    #@0
    .line 168
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getDurationMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getFraction()F
    .registers 2

    #@0
    .line 121
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getFraction()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInterpolatedFraction()F
    .registers 2

    #@0
    .line 148
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getInterpolatedFraction()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    #@0
    .line 160
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getInterpolator()Landroid/view/animation/Interpolator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTypeMask()I
    .registers 2

    #@0
    .line 97
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getTypeMask()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    #@0
    .line 209
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->setAlpha(F)V

    #@5
    return-void
.end method

.method public setFraction(F)V
    .registers 3

    #@0
    .line 184
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->setFraction(F)V

    #@5
    return-void
.end method
