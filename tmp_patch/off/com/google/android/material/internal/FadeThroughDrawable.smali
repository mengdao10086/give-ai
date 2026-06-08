.class public Lcom/google/android/material/internal/FadeThroughDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FadeThroughDrawable.java"


# instance fields
.field private final alphas:[F

.field private final fadeInDrawable:Landroid/graphics/drawable/Drawable;

.field private final fadeOutDrawable:Landroid/graphics/drawable/Drawable;

.field private progress:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 46
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@6
    move-result-object p1

    #@7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    .line 47
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object p1

    #@1d
    iput-object p1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@1f
    const/4 p2, 0x0

    #@20
    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@23
    const/4 p1, 0x2

    #@24
    new-array p1, p1, [F

    #@26
    .line 49
    iput-object p1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->alphas:[F

    #@28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 54
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@5
    .line 55
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@a
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 3

    #@0
    .line 72
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    #@0
    .line 67
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getMinimumHeight()I
    .registers 3

    #@0
    .line 82
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getMinimumWidth()I
    .registers 3

    #@0
    .line 77
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    .line 111
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 v0, 0x1

    #@14
    :goto_14
    return v0
.end method

.method public setAlpha(I)V
    .registers 4

    #@0
    .line 87
    iget v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->progress:F

    #@2
    const/high16 v1, 0x3f000000    # 0.5f

    #@4
    cmpg-float v0, v0, v1

    #@6
    const/4 v1, 0x0

    #@7
    if-gtz v0, :cond_14

    #@9
    .line 88
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@e
    .line 89
    iget-object p1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@13
    goto :goto_1e

    #@14
    .line 91
    :cond_14
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@19
    .line 92
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@1e
    .line 94
    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/material/internal/FadeThroughDrawable;->invalidateSelf()V

    #@21
    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    #@0
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3
    .line 61
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@8
    .line 62
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@d
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 99
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@5
    .line 100
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@a
    .line 101
    invoke-virtual {p0}, Lcom/google/android/material/internal/FadeThroughDrawable;->invalidateSelf()V

    #@d
    return-void
.end method

.method public setProgress(F)V
    .registers 5

    #@0
    .line 123
    iget v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->progress:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_2a

    #@6
    .line 124
    iput p1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->progress:F

    #@8
    .line 126
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->alphas:[F

    #@a
    invoke-static {p1, v0}, Lcom/google/android/material/internal/FadeThroughUtils;->calculateFadeOutAndInAlphas(F[F)V

    #@d
    .line 127
    iget-object p1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->alphas:[F

    #@11
    const/4 v1, 0x0

    #@12
    aget v0, v0, v1

    #@14
    const/high16 v1, 0x437f0000    # 255.0f

    #@16
    mul-float/2addr v0, v1

    #@17
    float-to-int v0, v0

    #@18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@1b
    .line 128
    iget-object p1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@1d
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->alphas:[F

    #@1f
    const/4 v2, 0x1

    #@20
    aget v0, v0, v2

    #@22
    mul-float/2addr v0, v1

    #@23
    float-to-int v0, v0

    #@24
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@27
    .line 130
    invoke-virtual {p0}, Lcom/google/android/material/internal/FadeThroughDrawable;->invalidateSelf()V

    #@2a
    :cond_2a
    return-void
.end method

.method public setState([I)Z
    .registers 4

    #@0
    .line 116
    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeOutDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@5
    move-result v0

    #@6
    .line 117
    iget-object v1, p0, Lcom/google/android/material/internal/FadeThroughDrawable;->fadeInDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@b
    move-result p1

    #@c
    if-nez v0, :cond_13

    #@e
    if-eqz p1, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 p1, 0x1

    #@14
    :goto_14
    return p1
.end method
