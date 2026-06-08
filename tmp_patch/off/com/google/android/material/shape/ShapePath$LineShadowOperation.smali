.class Lcom/google/android/material/shape/ShapePath$LineShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineShadowOperation"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .registers 4

    #@0
    .line 426
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    #@3
    .line 427
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@5
    .line 428
    iput p2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    #@7
    .line 429
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    #@9
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 10

    #@0
    .line 438
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@2
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    #@8
    sub-float/2addr v0, v1

    #@9
    .line 439
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@b
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@e
    move-result v1

    #@f
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    #@11
    sub-float/2addr v1, v2

    #@12
    .line 440
    new-instance v2, Landroid/graphics/RectF;

    #@14
    float-to-double v3, v0

    #@15
    float-to-double v0, v1

    #@16
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    #@19
    move-result-wide v0

    #@1a
    double-to-float v0, v0

    #@1b
    const/4 v1, 0x0

    #@1c
    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@1f
    .line 442
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@21
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@24
    .line 443
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@26
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    #@28
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@2d
    .line 444
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@2f
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    #@32
    move-result v0

    #@33
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    #@36
    .line 445
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    #@38
    invoke-virtual {p2, p4, p1, v2, p3}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    #@3b
    return-void
.end method

.method getAngle()F
    .registers 4

    #@0
    .line 449
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@2
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    #@8
    sub-float/2addr v0, v1

    #@9
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    #@b
    # getter for: Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F
    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    #@e
    move-result v1

    #@f
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    #@11
    sub-float/2addr v1, v2

    #@12
    div-float/2addr v0, v1

    #@13
    float-to-double v0, v0

    #@14
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    #@17
    move-result-wide v0

    #@18
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    #@1b
    move-result-wide v0

    #@1c
    double-to-float v0, v0

    #@1d
    return v0
.end method
