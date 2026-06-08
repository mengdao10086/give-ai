.class public Lcom/google/android/material/animation/MatrixEvaluator;
.super Ljava/lang/Object;
.source "MatrixEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempEndValues:[F

.field private final tempMatrix:Landroid/graphics/Matrix;

.field private final tempStartValues:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x9

    #@5
    new-array v1, v0, [F

    #@7
    .line 27
    iput-object v1, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    #@9
    new-array v0, v0, [F

    #@b
    .line 28
    iput-object v0, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    #@d
    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    #@f
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@12
    iput-object v0, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    #@14
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 6

    #@0
    .line 34
    iget-object v0, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    #@2
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    #@5
    .line 35
    iget-object p2, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    #@7
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    #@a
    const/4 p2, 0x0

    #@b
    :goto_b
    const/16 p3, 0x9

    #@d
    if-ge p2, p3, :cond_1f

    #@f
    .line 37
    iget-object p3, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    #@11
    aget v0, p3, p2

    #@13
    iget-object v1, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    #@15
    aget v1, v1, p2

    #@17
    sub-float/2addr v0, v1

    #@18
    mul-float/2addr v0, p1

    #@19
    add-float/2addr v1, v0

    #@1a
    .line 38
    aput v1, p3, p2

    #@1c
    add-int/lit8 p2, p2, 0x1

    #@1e
    goto :goto_b

    #@1f
    .line 40
    :cond_1f
    iget-object p1, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    #@21
    iget-object p2, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    #@23
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    #@26
    .line 41
    iget-object p1, p0, Lcom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    #@28
    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    #@0
    .line 26
    check-cast p2, Landroid/graphics/Matrix;

    #@2
    check-cast p3, Landroid/graphics/Matrix;

    #@4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/animation/MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method
