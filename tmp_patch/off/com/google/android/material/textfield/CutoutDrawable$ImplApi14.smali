.class Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;
.super Lcom/google/android/material/textfield/CutoutDrawable;
.source "CutoutDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/CutoutDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImplApi14"
.end annotation


# instance fields
.field private cutoutPaint:Landroid/graphics/Paint;

.field private savedLayer:I


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 110
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/textfield/CutoutDrawable$1;)V

    #@4
    return-void
.end method

.method private getCutoutPaint()Landroid/graphics/Paint;
    .registers 4

    #@0
    .line 127
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_23

    #@4
    .line 128
    new-instance v0, Landroid/graphics/Paint;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    #@c
    .line 129
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@11
    .line 130
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    #@13
    const/4 v1, -0x1

    #@14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@17
    .line 131
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    #@19
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    #@1b
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@1d
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@23
    .line 133
    :cond_23
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    #@25
    return-object v0
.end method

.method private postDraw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 162
    invoke-virtual {p0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_f

    #@a
    .line 163
    iget v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->savedLayer:I

    #@c
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@f
    :cond_f
    return-void
.end method

.method private preDraw(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 139
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_18

    #@a
    .line 140
    check-cast v0, Landroid/view/View;

    #@c
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    #@f
    move-result p1

    #@10
    const/4 v1, 0x2

    #@11
    if-eq p1, v1, :cond_1b

    #@13
    const/4 p1, 0x0

    #@14
    .line 143
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@17
    goto :goto_1b

    #@18
    .line 147
    :cond_18
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->saveCanvasLayer(Landroid/graphics/Canvas;)V

    #@1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method private saveCanvasLayer(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    #@5
    move-result v0

    #@6
    int-to-float v3, v0

    #@7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    #@a
    move-result v0

    #@b
    int-to-float v4, v0

    #@c
    const/4 v5, 0x0

    #@d
    move-object v0, p1

    #@e
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    #@11
    move-result p1

    #@12
    iput p1, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->savedLayer:I

    #@14
    return-void
.end method

.method private useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z
    .registers 2

    #@0
    .line 168
    instance-of p1, p1, Landroid/view/View;

    #@2
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->preDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 116
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->draw(Landroid/graphics/Canvas;)V

    #@6
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->postDraw(Landroid/graphics/Canvas;)V

    #@9
    return-void
.end method

.method protected drawStrokeShape(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    .line 122
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    #@3
    .line 123
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutBounds:Landroid/graphics/RectF;

    #@5
    invoke-direct {p0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->getCutoutPaint()Landroid/graphics/Paint;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@c
    return-void
.end method
