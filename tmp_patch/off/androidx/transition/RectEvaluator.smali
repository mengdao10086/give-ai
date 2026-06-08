.class Landroidx/transition/RectEvaluator;
.super Ljava/lang/Object;
.source "RectEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private mRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Landroidx/transition/RectEvaluator;->mRect:Landroid/graphics/Rect;

    #@5
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9

    #@0
    .line 75
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p3, Landroid/graphics/Rect;->left:I

    #@4
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@6
    sub-int/2addr v1, v2

    #@7
    int-to-float v1, v1

    #@8
    mul-float/2addr v1, p1

    #@9
    float-to-int v1, v1

    #@a
    add-int/2addr v0, v1

    #@b
    .line 76
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@d
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@f
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@11
    sub-int/2addr v2, v3

    #@12
    int-to-float v2, v2

    #@13
    mul-float/2addr v2, p1

    #@14
    float-to-int v2, v2

    #@15
    add-int/2addr v1, v2

    #@16
    .line 77
    iget v2, p2, Landroid/graphics/Rect;->right:I

    #@18
    iget v3, p3, Landroid/graphics/Rect;->right:I

    #@1a
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@1c
    sub-int/2addr v3, v4

    #@1d
    int-to-float v3, v3

    #@1e
    mul-float/2addr v3, p1

    #@1f
    float-to-int v3, v3

    #@20
    add-int/2addr v2, v3

    #@21
    .line 78
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    #@23
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    #@25
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    #@27
    sub-int/2addr p3, p2

    #@28
    int-to-float p2, p3

    #@29
    mul-float/2addr p2, p1

    #@2a
    float-to-int p1, p2

    #@2b
    add-int/2addr v3, p1

    #@2c
    .line 79
    iget-object p1, p0, Landroidx/transition/RectEvaluator;->mRect:Landroid/graphics/Rect;

    #@2e
    if-nez p1, :cond_36

    #@30
    .line 80
    new-instance p1, Landroid/graphics/Rect;

    #@32
    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    #@35
    return-object p1

    #@36
    .line 82
    :cond_36
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@39
    .line 83
    iget-object p1, p0, Landroidx/transition/RectEvaluator;->mRect:Landroid/graphics/Rect;

    #@3b
    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    #@0
    .line 25
    check-cast p2, Landroid/graphics/Rect;

    #@2
    check-cast p3, Landroid/graphics/Rect;

    #@4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method
