.class Lcom/google/android/material/transition/platform/TransitionUtils$1;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endBounds:Landroid/graphics/RectF;

.field final synthetic val$endFraction:F

.field final synthetic val$fraction:F

.field final synthetic val$startBounds:Landroid/graphics/RectF;

.field final synthetic val$startFraction:F


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .registers 6

    #@0
    .line 251
    iput-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$startBounds:Landroid/graphics/RectF;

    #@2
    iput-object p2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$endBounds:Landroid/graphics/RectF;

    #@4
    iput p3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$startFraction:F

    #@6
    iput p4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$endFraction:F

    #@8
    iput p5, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$fraction:F

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .registers 6

    #@0
    .line 256
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$startBounds:Landroid/graphics/RectF;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@5
    move-result p1

    #@6
    .line 257
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$endBounds:Landroid/graphics/RectF;

    #@8
    invoke-interface {p2, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@b
    move-result p2

    #@c
    .line 258
    iget v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$startFraction:F

    #@e
    iget v1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$endFraction:F

    #@10
    iget v2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$fraction:F

    #@12
    .line 259
    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    #@15
    move-result p1

    #@16
    .line 261
    new-instance p2, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@18
    invoke-direct {p2, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    #@1b
    return-object p2
.end method
