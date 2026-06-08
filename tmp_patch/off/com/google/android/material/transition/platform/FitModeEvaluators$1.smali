.class Lcom/google/android/material/transition/platform/FitModeEvaluators$1;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V
    .registers 5

    #@0
    .line 74
    iget v0, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    #@2
    iget p3, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    #@4
    sub-float/2addr v0, p3

    #@5
    .line 75
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@8
    move-result p3

    #@9
    .line 76
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    #@b
    mul-float/2addr p3, p2

    #@c
    sub-float/2addr v0, p3

    #@d
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    #@f
    return-void
.end method

.method public evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;
    .registers 14

    #@0
    const/4 v5, 0x1

    #@1
    move v0, p4

    #@2
    move v1, p6

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p1

    #@6
    .line 47
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    #@9
    move-result v0

    #@a
    div-float p2, v0, p4

    #@c
    div-float p3, v0, p6

    #@e
    mul-float/2addr p5, p2

    #@f
    mul-float/2addr p7, p3

    #@10
    .line 58
    new-instance v1, Lcom/google/android/material/transition/platform/FitModeResult;

    #@12
    move-object p1, v1

    #@13
    move p4, v0

    #@14
    move p6, v0

    #@15
    invoke-direct/range {p1 .. p7}, Lcom/google/android/material/transition/platform/FitModeResult;-><init>(FFFFFF)V

    #@18
    return-object v1
.end method

.method public shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z
    .registers 3

    #@0
    .line 69
    iget v0, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    #@2
    iget p1, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    #@4
    cmpl-float p1, v0, p1

    #@6
    if-lez p1, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    return p1
.end method
