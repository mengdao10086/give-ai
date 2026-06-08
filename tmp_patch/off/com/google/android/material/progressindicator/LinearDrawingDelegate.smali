.class final Lcom/google/android/material/progressindicator/LinearDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;
.source "LinearDrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/DrawingDelegate<",
        "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private displayedCornerRadius:F

.field private displayedTrackThickness:F

.field private trackLength:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .registers 2

    #@0
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    #@3
    const/high16 p1, 0x43960000    # 300.0f

    #@5
    .line 34
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    #@7
    return-void
.end method


# virtual methods
.method public adjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .registers 10

    #@0
    .line 66
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    #@7
    .line 67
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@9
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@b
    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    #@d
    int-to-float v0, v0

    #@e
    .line 70
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@10
    int-to-float v1, v1

    #@11
    .line 71
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@14
    move-result v2

    #@15
    int-to-float v2, v2

    #@16
    const/high16 v3, 0x40000000    # 2.0f

    #@18
    div-float/2addr v2, v3

    #@19
    add-float/2addr v1, v2

    #@1a
    iget v2, p2, Landroid/graphics/Rect;->top:I

    #@1c
    int-to-float v2, v2

    #@1d
    .line 72
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@20
    move-result v4

    #@21
    int-to-float v4, v4

    #@22
    div-float/2addr v4, v3

    #@23
    add-float/2addr v2, v4

    #@24
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@27
    move-result p2

    #@28
    iget-object v4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2a
    check-cast v4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@2c
    iget v4, v4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    #@2e
    sub-int/2addr p2, v4

    #@2f
    int-to-float p2, p2

    #@30
    div-float/2addr p2, v3

    #@31
    const/4 v4, 0x0

    #@32
    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    #@35
    move-result p2

    #@36
    add-float/2addr v2, p2

    #@37
    .line 70
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@3a
    .line 75
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@3c
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@3e
    iget-boolean p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    #@40
    const/high16 v1, -0x40800000    # -1.0f

    #@42
    const/high16 v2, 0x3f800000    # 1.0f

    #@44
    if-eqz p2, :cond_49

    #@46
    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    #@49
    .line 79
    :cond_49
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@4b
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    #@4e
    move-result p2

    #@4f
    if-eqz p2, :cond_5a

    #@51
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@53
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@55
    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->showAnimationBehavior:I

    #@57
    const/4 v5, 0x1

    #@58
    if-eq p2, v5, :cond_6b

    #@5a
    :cond_5a
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@5c
    .line 80
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    #@5f
    move-result p2

    #@60
    if-eqz p2, :cond_6e

    #@62
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@64
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@66
    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hideAnimationBehavior:I

    #@68
    const/4 v5, 0x2

    #@69
    if-ne p2, v5, :cond_6e

    #@6b
    .line 82
    :cond_6b
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@6e
    .line 85
    :cond_6e
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@70
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    #@73
    move-result p2

    #@74
    if-nez p2, :cond_7e

    #@76
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@78
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    #@7b
    move-result p2

    #@7c
    if-eqz p2, :cond_8c

    #@7e
    .line 86
    :cond_7e
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@80
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@82
    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    #@84
    int-to-float p2, p2

    #@85
    sub-float v1, p3, v2

    #@87
    mul-float/2addr p2, v1

    #@88
    div-float/2addr p2, v3

    #@89
    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    #@8c
    .line 91
    :cond_8c
    iget p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    #@8e
    neg-float v1, p2

    #@8f
    div-float/2addr v1, v3

    #@90
    neg-float v2, v0

    #@91
    div-float/2addr v2, v3

    #@92
    div-float/2addr p2, v3

    #@93
    div-float/2addr v0, v3

    #@94
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    #@97
    .line 94
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@99
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@9b
    iget p1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    #@9d
    int-to-float p1, p1

    #@9e
    mul-float/2addr p1, p3

    #@9f
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    #@a1
    .line 95
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@a3
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@a5
    iget p1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackCornerRadius:I

    #@a7
    int-to-float p1, p1

    #@a8
    mul-float/2addr p1, p3

    #@a9
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    #@ab
    return-void
.end method

.method public fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .registers 11

    #@0
    cmpl-float v0, p3, p4

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 122
    :cond_5
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    #@7
    neg-float v1, v0

    #@8
    const/high16 v2, 0x40000000    # 2.0f

    #@a
    div-float/2addr v1, v2

    #@b
    iget v3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    #@d
    mul-float v4, v3, v2

    #@f
    sub-float v4, v0, v4

    #@11
    mul-float/2addr p3, v4

    #@12
    add-float/2addr v1, p3

    #@13
    neg-float p3, v0

    #@14
    div-float/2addr p3, v2

    #@15
    mul-float v4, v3, v2

    #@17
    sub-float/2addr v0, v4

    #@18
    mul-float/2addr p4, v0

    #@19
    add-float/2addr p3, p4

    #@1a
    mul-float/2addr v3, v2

    #@1b
    add-float/2addr p3, v3

    #@1c
    .line 131
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@1e
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@21
    const/4 p4, 0x1

    #@22
    .line 132
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@25
    .line 133
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    #@28
    .line 135
    new-instance p4, Landroid/graphics/RectF;

    #@2a
    iget p5, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    #@2c
    neg-float v0, p5

    #@2d
    div-float/2addr v0, v2

    #@2e
    div-float/2addr p5, v2

    #@2f
    invoke-direct {p4, v1, v0, p3, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@32
    .line 141
    iget p3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    #@34
    invoke-virtual {p1, p4, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@37
    return-void
.end method

.method fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9

    #@0
    .line 152
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    #@6
    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@8
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    #@f
    move-result v0

    #@10
    .line 155
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@12
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@15
    const/4 v1, 0x1

    #@16
    .line 156
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@19
    .line 157
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@1c
    .line 159
    new-instance v0, Landroid/graphics/RectF;

    #@1e
    iget v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    #@20
    neg-float v2, v1

    #@21
    const/high16 v3, 0x40000000    # 2.0f

    #@23
    div-float/2addr v2, v3

    #@24
    iget v4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    #@26
    neg-float v5, v4

    #@27
    div-float/2addr v5, v3

    #@28
    div-float/2addr v1, v3

    #@29
    div-float/2addr v4, v3

    #@2a
    invoke-direct {v0, v2, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@2d
    .line 165
    iget v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    #@2f
    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@32
    return-void
.end method

.method public getPreferredHeight()I
    .registers 2

    #@0
    .line 50
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    #@6
    return v0
.end method

.method public getPreferredWidth()I
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    return v0
.end method
