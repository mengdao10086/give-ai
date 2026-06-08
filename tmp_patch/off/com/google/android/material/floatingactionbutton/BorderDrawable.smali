.class Lcom/google/android/material/floatingactionbutton/BorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;
    }
.end annotation


# static fields
.field private static final DRAW_STROKE_WIDTH_MULTIPLE:F = 1.3333f


# instance fields
.field private borderTint:Landroid/content/res/ColorStateList;

.field borderWidth:F

.field private bottomInnerStrokeColor:I

.field private bottomOuterStrokeColor:I

.field private final boundsRectF:Landroid/graphics/RectF;

.field private currentBorderTintColor:I

.field private invalidateShader:Z

.field private final paint:Landroid/graphics/Paint;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final shapePath:Landroid/graphics/Path;

.field private final state:Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

.field private topInnerStrokeColor:I

.field private topOuterStrokeColor:I


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    #@0
    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 62
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@9
    .line 65
    new-instance v0, Landroid/graphics/Path;

    #@b
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@e
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Landroid/graphics/Path;

    #@10
    .line 66
    new-instance v0, Landroid/graphics/Rect;

    #@12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@15
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    #@17
    .line 67
    new-instance v0, Landroid/graphics/RectF;

    #@19
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    #@1e
    .line 68
    new-instance v0, Landroid/graphics/RectF;

    #@20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@23
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Landroid/graphics/RectF;

    #@25
    .line 69
    new-instance v0, Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    #@27
    const/4 v1, 0x0

    #@28
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;-><init>(Lcom/google/android/material/floatingactionbutton/BorderDrawable;Lcom/google/android/material/floatingactionbutton/BorderDrawable$1;)V

    #@2b
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->state:Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    #@2d
    const/4 v0, 0x1

    #@2e
    .line 78
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@30
    .line 84
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@32
    .line 85
    new-instance p1, Landroid/graphics/Paint;

    #@34
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@37
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    #@39
    .line 86
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@3b
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@3e
    return-void
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .registers 12

    #@0
    .line 223
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    #@2
    .line 224
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@5
    .line 226
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    #@7
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@a
    move-result v2

    #@b
    int-to-float v2, v2

    #@c
    div-float/2addr v1, v2

    #@d
    const/4 v2, 0x6

    #@e
    new-array v8, v2, [I

    #@10
    .line 229
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topOuterStrokeColor:I

    #@12
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@14
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@17
    move-result v3

    #@18
    const/4 v4, 0x0

    #@19
    aput v3, v8, v4

    #@1b
    .line 230
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    #@1d
    iget v5, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@1f
    invoke-static {v3, v5}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@22
    move-result v3

    #@23
    const/4 v5, 0x1

    #@24
    aput v3, v8, v5

    #@26
    .line 231
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    #@28
    .line 233
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@2b
    move-result v3

    #@2c
    iget v6, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@2e
    .line 232
    invoke-static {v3, v6}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@31
    move-result v3

    #@32
    const/4 v6, 0x2

    #@33
    aput v3, v8, v6

    #@35
    .line 234
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    #@37
    .line 236
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@3a
    move-result v3

    #@3b
    iget v7, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@3d
    .line 235
    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@40
    move-result v3

    #@41
    const/4 v7, 0x3

    #@42
    aput v3, v8, v7

    #@44
    .line 237
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    #@46
    iget v9, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@48
    invoke-static {v3, v9}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@4b
    move-result v3

    #@4c
    const/4 v9, 0x4

    #@4d
    aput v3, v8, v9

    #@4f
    .line 238
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomOuterStrokeColor:I

    #@51
    iget v10, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@53
    invoke-static {v3, v10}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@56
    move-result v3

    #@57
    const/4 v10, 0x5

    #@58
    aput v3, v8, v10

    #@5a
    new-array v2, v2, [F

    #@5c
    const/4 v3, 0x0

    #@5d
    aput v3, v2, v4

    #@5f
    aput v1, v2, v5

    #@61
    const/high16 v3, 0x3f000000    # 0.5f

    #@63
    aput v3, v2, v6

    #@65
    aput v3, v2, v7

    #@67
    const/high16 v3, 0x3f800000    # 1.0f

    #@69
    sub-float v1, v3, v1

    #@6b
    aput v1, v2, v9

    #@6d
    aput v3, v2, v10

    #@6f
    .line 248
    new-instance v1, Landroid/graphics/LinearGradient;

    #@71
    const/4 v4, 0x0

    #@72
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@74
    int-to-float v5, v3

    #@75
    const/4 v6, 0x0

    #@76
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@78
    int-to-float v7, v0

    #@79
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@7b
    move-object v3, v1

    #@7c
    move-object v9, v2

    #@7d
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@80
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 126
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@2
    if-eqz v0, :cond_10

    #@4
    .line 127
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    #@6
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@d
    const/4 v0, 0x0

    #@e
    .line 128
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@10
    .line 131
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    #@12
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@15
    move-result v0

    #@16
    const/high16 v1, 0x40000000    # 2.0f

    #@18
    div-float/2addr v0, v1

    #@19
    .line 132
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@1e
    .line 133
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    #@20
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@25
    .line 137
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@27
    .line 138
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {v2, v3}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@32
    move-result v2

    #@33
    .line 139
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    #@35
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    #@38
    move-result v3

    #@39
    div-float/2addr v3, v1

    #@3a
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@3d
    move-result v1

    #@3e
    .line 140
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@40
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_56

    #@4a
    .line 141
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    #@4c
    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    #@4f
    .line 142
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    #@51
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    #@53
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@56
    :cond_56
    return-void
.end method

.method protected getBoundsAsRectF()Landroid/graphics/RectF;
    .registers 3

    #@0
    .line 172
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Landroid/graphics/RectF;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@9
    .line 173
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Landroid/graphics/RectF;

    #@b
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    #@0
    .line 255
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->state:Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    #@2
    return-object v0
.end method

.method public getOpacity()I
    .registers 3

    #@0
    .line 193
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-lez v0, :cond_9

    #@7
    const/4 v0, -0x3

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, -0x2

    #@a
    :goto_a
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 7

    #@0
    .line 149
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_22

    #@c
    .line 150
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@e
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@19
    move-result v0

    #@1a
    .line 151
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    #@21
    return-void

    #@22
    .line 155
    :cond_22
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@27
    .line 156
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    #@29
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    #@2b
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@2e
    .line 157
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@30
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@32
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    #@34
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Landroid/graphics/Path;

    #@36
    const/high16 v4, 0x3f800000    # 1.0f

    #@38
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    #@3b
    .line 158
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Landroid/graphics/Path;

    #@3d
    invoke-static {p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->setOutlineToPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    #@40
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 4

    #@0
    .line 163
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_15

    #@c
    .line 164
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    #@e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@11
    move-result v0

    #@12
    .line 165
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@15
    :cond_15
    const/4 p1, 0x1

    #@16
    return p1
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 177
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    .line 203
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_10

    #@a
    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 198
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@3
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 4

    #@0
    .line 208
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_13

    #@4
    .line 209
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@9
    move-result p1

    #@a
    .line 210
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@c
    if-eq p1, v0, :cond_13

    #@e
    const/4 v0, 0x1

    #@f
    .line 211
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@11
    .line 212
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@13
    .line 215
    :cond_13
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@15
    if-eqz p1, :cond_1a

    #@17
    .line 216
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    #@1a
    .line 218
    :cond_1a
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@1c
    return p1
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 187
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@5
    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    #@8
    return-void
.end method

.method setBorderTint(Landroid/content/res/ColorStateList;)V
    .registers 4

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getState()[I

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    #@e
    .line 102
    :cond_e
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    #@10
    const/4 p1, 0x1

    #@11
    .line 103
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@13
    .line 104
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    #@16
    return-void
.end method

.method public setBorderWidth(F)V
    .registers 4

    #@0
    .line 90
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 91
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    #@8
    .line 92
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    #@a
    const v1, 0x3faaa993    # 1.3333f

    #@d
    mul-float/2addr p1, v1

    #@e
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@11
    const/4 p1, 0x1

    #@12
    .line 93
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    #@14
    .line 94
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    #@17
    :cond_17
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 109
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    #@8
    return-void
.end method

.method setGradientColors(IIII)V
    .registers 5

    #@0
    .line 118
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topOuterStrokeColor:I

    #@2
    .line 119
    iput p2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    #@4
    .line 120
    iput p3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomOuterStrokeColor:I

    #@6
    .line 121
    iput p4, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    #@8
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    #@0
    .line 181
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    #@5
    return-void
.end method
