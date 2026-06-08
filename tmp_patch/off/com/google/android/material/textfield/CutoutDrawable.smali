.class Lcom/google/android/material/textfield/CutoutDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "CutoutDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;,
        Lcom/google/android/material/textfield/CutoutDrawable$ImplApi18;
    }
.end annotation


# instance fields
.field protected final cutoutBounds:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    #@0
    if-eqz p1, :cond_3

    #@2
    goto :goto_8

    #@3
    .line 50
    :cond_3
    new-instance p1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@5
    invoke-direct {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    #@8
    :goto_8
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@b
    .line 51
    new-instance p1, Landroid/graphics/RectF;

    #@d
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@10
    iput-object p1, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    #@12
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/textfield/CutoutDrawable$1;)V
    .registers 3

    #@0
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@3
    return-void
.end method

.method static create(Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/textfield/CutoutDrawable;
    .registers 2

    #@0
    .line 45
    new-instance v0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi18;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi18;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@5
    return-object v0
.end method


# virtual methods
.method hasCutout()Z
    .registers 2

    #@0
    .line 55
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    #@2
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    #@5
    move-result v0

    #@6
    xor-int/lit8 v0, v0, 0x1

    #@8
    return v0
.end method

.method removeCutout()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 76
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(FFFF)V

    #@4
    return-void
.end method

.method setCutout(FFFF)V
    .registers 6

    #@0
    .line 61
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    #@2
    iget v0, v0, Landroid/graphics/RectF;->left:F

    #@4
    cmpl-float v0, p1, v0

    #@6
    if-nez v0, :cond_20

    #@8
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    #@a
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@c
    cmpl-float v0, p2, v0

    #@e
    if-nez v0, :cond_20

    #@10
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    #@12
    iget v0, v0, Landroid/graphics/RectF;->right:F

    #@14
    cmpl-float v0, p3, v0

    #@16
    if-nez v0, :cond_20

    #@18
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    #@1a
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    #@1c
    cmpl-float v0, p4, v0

    #@1e
    if-eqz v0, :cond_28

    #@20
    .line 65
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    #@22
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    #@25
    .line 66
    invoke-virtual {p0}, Lcom/google/android/material/textfield/CutoutDrawable;->invalidateSelf()V

    #@28
    :cond_28
    return-void
.end method

.method setCutout(Landroid/graphics/RectF;)V
    .registers 5

    #@0
    .line 71
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v1, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v2, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(FFFF)V

    #@b
    return-void
.end method
