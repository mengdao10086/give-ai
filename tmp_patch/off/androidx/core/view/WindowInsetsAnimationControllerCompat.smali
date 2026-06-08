.class public final Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;,
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;


# direct methods
.method constructor <init>(Landroid/view/WindowInsetsAnimationController;)V
    .registers 3

    #@0
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;

    #@5
    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    #@8
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@a
    return-void
.end method


# virtual methods
.method public finish(Z)V
    .registers 3

    #@0
    .line 189
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->finish(Z)V

    #@5
    return-void
.end method

.method public getCurrentAlpha()F
    .registers 2

    #@0
    .line 124
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getCurrentAlpha()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentFraction()F
    .registers 2

    #@0
    .line 115
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getCurrentFraction()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 100
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getCurrentInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHiddenStateInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 66
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getHiddenStateInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getShownStateInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 85
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getShownStateInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTypes()I
    .registers 2

    #@0
    .line 132
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getTypes()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCancelled()Z
    .registers 2

    #@0
    .line 225
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->isCancelled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFinished()Z
    .registers 2

    #@0
    .line 213
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->isFinished()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReady()Z
    .registers 2

    #@0
    .line 203
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isFinished()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isCancelled()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V
    .registers 5

    #@0
    .line 174
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V

    #@5
    return-void
.end method
