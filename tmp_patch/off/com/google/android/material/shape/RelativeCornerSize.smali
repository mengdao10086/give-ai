.class public final Lcom/google/android/material/shape/RelativeCornerSize;
.super Ljava/lang/Object;
.source "RelativeCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final percent:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    #@0
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput p1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    #@5
    return-void
.end method

.method public static createFromCornerSize(Landroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/RelativeCornerSize;
    .registers 3

    #@0
    .line 45
    instance-of v0, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 46
    check-cast p1, Lcom/google/android/material/shape/RelativeCornerSize;

    #@6
    goto :goto_16

    #@7
    .line 47
    :cond_7
    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    #@9
    invoke-interface {p1, p0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@c
    move-result p1

    #@d
    invoke-static {p0}, Lcom/google/android/material/shape/RelativeCornerSize;->getMaxCornerSize(Landroid/graphics/RectF;)F

    #@10
    move-result p0

    #@11
    div-float/2addr p1, p0

    #@12
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    #@15
    move-object p1, v0

    #@16
    :goto_16
    return-object p1
.end method

.method private static getMaxCornerSize(Landroid/graphics/RectF;)F
    .registers 2

    #@0
    .line 51
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    #@7
    move-result p0

    #@8
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    #@b
    move-result p0

    #@c
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 78
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 81
    :cond_a
    check-cast p1, Lcom/google/android/material/shape/RelativeCornerSize;

    #@c
    .line 82
    iget v1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    #@e
    iget p1, p1, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    #@10
    cmpl-float p1, v1, p1

    #@12
    if-nez p1, :cond_15

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v0, v2

    #@16
    :goto_16
    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .registers 3

    #@0
    .line 70
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    #@2
    invoke-static {p1}, Lcom/google/android/material/shape/RelativeCornerSize;->getMaxCornerSize(Landroid/graphics/RectF;)F

    #@5
    move-result p1

    #@6
    mul-float/2addr v0, p1

    #@7
    return v0
.end method

.method public getRelativePercent()F
    .registers 2

    #@0
    .line 65
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 87
    iget v1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    #@5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    .line 88
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    return v0
.end method
