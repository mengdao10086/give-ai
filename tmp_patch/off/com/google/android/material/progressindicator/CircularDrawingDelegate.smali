.class final Lcom/google/android/material/progressindicator/CircularDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;
.source "CircularDrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/DrawingDelegate<",
        "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private adjustedRadius:F

.field private arcDirectionFactor:I

.field private displayedCornerRadius:F

.field private displayedTrackThickness:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .registers 2

    #@0
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    #@3
    const/4 p1, 0x1

    #@4
    .line 34
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    #@6
    return-void
.end method

.method private drawRoundedEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .registers 8

    #@0
    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 194
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->rotate(F)V

    #@6
    .line 196
    new-instance p5, Landroid/graphics/RectF;

    #@8
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    #@a
    const/high16 v1, 0x40000000    # 2.0f

    #@c
    div-float/2addr p3, v1

    #@d
    sub-float v1, v0, p3

    #@f
    add-float/2addr v0, p3

    #@10
    neg-float p3, p4

    #@11
    invoke-direct {p5, v1, p4, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@14
    .line 202
    invoke-virtual {p1, p5, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@17
    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@1a
    return-void
.end method

.method private getSize()I
    .registers 3

    #@0
    .line 188
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    #@6
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@8
    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@a
    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    #@c
    mul-int/lit8 v1, v1, 0x2

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method


# virtual methods
.method public adjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .registers 11

    #@0
    .line 70
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getPreferredWidth()I

    #@8
    move-result v1

    #@9
    int-to-float v1, v1

    #@a
    div-float/2addr v0, v1

    #@b
    .line 71
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@e
    move-result v1

    #@f
    int-to-float v1, v1

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getPreferredHeight()I

    #@13
    move-result v2

    #@14
    int-to-float v2, v2

    #@15
    div-float/2addr v1, v2

    #@16
    .line 74
    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@18
    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@1a
    iget v2, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    #@1c
    int-to-float v2, v2

    #@1d
    const/high16 v3, 0x40000000    # 2.0f

    #@1f
    div-float/2addr v2, v3

    #@20
    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@22
    check-cast v4, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@24
    iget v4, v4, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    #@26
    int-to-float v4, v4

    #@27
    add-float/2addr v2, v4

    #@28
    mul-float v4, v2, v0

    #@2a
    mul-float v5, v2, v1

    #@2c
    .line 79
    iget v6, p2, Landroid/graphics/Rect;->left:I

    #@2e
    int-to-float v6, v6

    #@2f
    add-float/2addr v4, v6

    #@30
    iget p2, p2, Landroid/graphics/Rect;->top:I

    #@32
    int-to-float p2, p2

    #@33
    add-float/2addr v5, p2

    #@34
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@37
    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@3a
    const/high16 p2, -0x3d4c0000    # -90.0f

    #@3c
    .line 84
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    #@3f
    neg-float p2, v2

    #@40
    .line 88
    invoke-virtual {p1, p2, p2, v2, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    #@43
    .line 93
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@45
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@47
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    #@49
    const/4 p2, 0x1

    #@4a
    if-nez p1, :cond_4e

    #@4c
    move p1, p2

    #@4d
    goto :goto_4f

    #@4e
    :cond_4e
    const/4 p1, -0x1

    #@4f
    :goto_4f
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    #@51
    .line 94
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@53
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@55
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    #@57
    int-to-float p1, p1

    #@58
    mul-float/2addr p1, p3

    #@59
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    #@5b
    .line 95
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@5d
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@5f
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackCornerRadius:I

    #@61
    int-to-float p1, p1

    #@62
    mul-float/2addr p1, p3

    #@63
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    #@65
    .line 96
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@67
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@69
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    #@6b
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@6d
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@6f
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    #@71
    sub-int/2addr p1, v0

    #@72
    int-to-float p1, p1

    #@73
    div-float/2addr p1, v3

    #@74
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    #@76
    .line 97
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@78
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    #@7b
    move-result p1

    #@7c
    const/high16 v0, 0x3f800000    # 1.0f

    #@7e
    const/4 v1, 0x2

    #@7f
    if-eqz p1, :cond_89

    #@81
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@83
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@85
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->showAnimationBehavior:I

    #@87
    if-eq p1, v1, :cond_99

    #@89
    :cond_89
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@8b
    .line 99
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    #@8e
    move-result p1

    #@8f
    if-eqz p1, :cond_a9

    #@91
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@93
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@95
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    #@97
    if-ne p1, p2, :cond_a9

    #@99
    .line 104
    :cond_99
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    #@9b
    sub-float/2addr v0, p3

    #@9c
    iget-object p2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@9e
    check-cast p2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@a0
    iget p2, p2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    #@a2
    int-to-float p2, p2

    #@a3
    mul-float/2addr v0, p2

    #@a4
    div-float/2addr v0, v3

    #@a5
    add-float/2addr p1, v0

    #@a6
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    #@a8
    goto :goto_d8

    #@a9
    .line 105
    :cond_a9
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@ab
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    #@ae
    move-result p1

    #@af
    if-eqz p1, :cond_b9

    #@b1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@b3
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@b5
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->showAnimationBehavior:I

    #@b7
    if-eq p1, p2, :cond_c9

    #@b9
    :cond_b9
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@bb
    .line 107
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    #@be
    move-result p1

    #@bf
    if-eqz p1, :cond_d8

    #@c1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@c3
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@c5
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    #@c7
    if-ne p1, v1, :cond_d8

    #@c9
    .line 112
    :cond_c9
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    #@cb
    sub-float/2addr v0, p3

    #@cc
    iget-object p2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@ce
    check-cast p2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@d0
    iget p2, p2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    #@d2
    int-to-float p2, p2

    #@d3
    mul-float/2addr v0, p2

    #@d4
    div-float/2addr v0, v3

    #@d5
    sub-float/2addr p1, v0

    #@d6
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    #@d8
    :cond_d8
    :goto_d8
    return-void
.end method

.method fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .registers 17

    #@0
    move-object v6, p0

    #@1
    move-object v7, p2

    #@2
    cmpl-float v0, p3, p4

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 140
    :cond_7
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@9
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@c
    .line 141
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    #@e
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@11
    const/4 v0, 0x1

    #@12
    .line 142
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@15
    move/from16 v0, p5

    #@17
    .line 143
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@1a
    .line 144
    iget v0, v6, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    #@1c
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@1f
    const/high16 v8, 0x43b40000    # 360.0f

    #@21
    mul-float v0, p3, v8

    #@23
    .line 147
    iget v1, v6, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    #@25
    int-to-float v2, v1

    #@26
    mul-float v9, v0, v2

    #@28
    cmpl-float v0, p4, p3

    #@2a
    if-ltz v0, :cond_2f

    #@2c
    sub-float v0, p4, p3

    #@2e
    goto :goto_33

    #@2f
    :cond_2f
    const/high16 v0, 0x3f800000    # 1.0f

    #@31
    add-float/2addr v0, p4

    #@32
    sub-float/2addr v0, p3

    #@33
    :goto_33
    mul-float/2addr v0, v8

    #@34
    int-to-float v1, v1

    #@35
    mul-float/2addr v0, v1

    #@36
    move v10, v0

    #@37
    .line 154
    new-instance v1, Landroid/graphics/RectF;

    #@39
    iget v0, v6, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    #@3b
    neg-float v2, v0

    #@3c
    neg-float v3, v0

    #@3d
    invoke-direct {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@40
    const/4 v4, 0x0

    #@41
    move-object v0, p1

    #@42
    move v2, v9

    #@43
    move v3, v10

    #@44
    move-object v5, p2

    #@45
    .line 155
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@48
    .line 158
    iget v0, v6, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    #@4a
    const/4 v1, 0x0

    #@4b
    cmpl-float v0, v0, v1

    #@4d
    if-lez v0, :cond_70

    #@4f
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@52
    move-result v0

    #@53
    cmpg-float v0, v0, v8

    #@55
    if-gez v0, :cond_70

    #@57
    .line 159
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@59
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@5c
    .line 160
    iget v3, v6, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    #@5e
    iget v4, v6, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    #@60
    move-object v0, p0

    #@61
    move-object v1, p1

    #@62
    move-object v2, p2

    #@63
    move v5, v9

    #@64
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    #@67
    .line 161
    iget v3, v6, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    #@69
    iget v4, v6, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    #@6b
    add-float v5, v9, v10

    #@6d
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    #@70
    :cond_70
    return-void
.end method

.method fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 10

    #@0
    .line 174
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackColor:I

    #@6
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@8
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    #@f
    move-result v0

    #@10
    .line 177
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@12
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@15
    .line 178
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    #@17
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@1a
    const/4 v1, 0x1

    #@1b
    .line 179
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@1e
    .line 180
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@21
    .line 181
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    #@23
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@26
    .line 183
    new-instance v2, Landroid/graphics/RectF;

    #@28
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    #@2a
    neg-float v1, v0

    #@2b
    neg-float v3, v0

    #@2c
    invoke-direct {v2, v1, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@2f
    const/4 v3, 0x0

    #@30
    const/high16 v4, 0x43b40000    # 360.0f

    #@32
    const/4 v5, 0x0

    #@33
    move-object v1, p1

    #@34
    move-object v6, p2

    #@35
    .line 184
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@38
    return-void
.end method

.method public getPreferredHeight()I
    .registers 2

    #@0
    .line 51
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPreferredWidth()I
    .registers 2

    #@0
    .line 46
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    #@3
    move-result v0

    #@4
    return v0
.end method
