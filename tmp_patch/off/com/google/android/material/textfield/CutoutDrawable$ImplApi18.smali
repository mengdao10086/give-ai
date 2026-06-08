.class Lcom/google/android/material/textfield/CutoutDrawable$ImplApi18;
.super Lcom/google/android/material/textfield/CutoutDrawable;
.source "CutoutDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/CutoutDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImplApi18"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 82
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/textfield/CutoutDrawable$1;)V

    #@4
    return-void
.end method


# virtual methods
.method protected drawStrokeShape(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 87
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi18;->cutoutBounds:Landroid/graphics/RectF;

    #@2
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_c

    #@8
    .line 88
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    #@b
    goto :goto_1a

    #@c
    .line 91
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@f
    .line 93
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi18;->cutoutBounds:Landroid/graphics/RectF;

    #@11
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/RectF;)Z

    #@14
    .line 97
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    #@17
    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@1a
    :goto_1a
    return-void
.end method
