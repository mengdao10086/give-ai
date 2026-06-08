.class public final Lcom/google/android/material/shape/AdjustedCornerSize;
.super Ljava/lang/Object;
.source "AdjustedCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final adjustment:F

.field private final other:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>(FLcom/google/android/material/shape/CornerSize;)V
    .registers 4

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    :goto_3
    instance-of v0, p2, Lcom/google/android/material/shape/AdjustedCornerSize;

    #@5
    if-eqz v0, :cond_12

    #@7
    .line 40
    check-cast p2, Lcom/google/android/material/shape/AdjustedCornerSize;

    #@9
    iget-object p2, p2, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    #@b
    .line 41
    move-object v0, p2

    #@c
    check-cast v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    #@e
    iget v0, v0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    #@10
    add-float/2addr p1, v0

    #@11
    goto :goto_3

    #@12
    .line 44
    :cond_12
    iput-object p2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    #@14
    .line 45
    iput p1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    #@16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 58
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/shape/AdjustedCornerSize;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 61
    :cond_a
    check-cast p1, Lcom/google/android/material/shape/AdjustedCornerSize;

    #@c
    .line 62
    iget-object v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    #@e
    iget-object v3, p1, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    #@10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1f

    #@16
    iget v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    #@18
    iget p1, p1, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    #@1a
    cmpl-float p1, v1, p1

    #@1c
    if-nez p1, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v0, v2

    #@20
    :goto_20
    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .registers 3

    #@0
    .line 50
    iget-object v0, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@5
    move-result p1

    #@6
    iget v0, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    #@8
    add-float/2addr p1, v0

    #@9
    const/4 v0, 0x0

    #@a
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@d
    move-result p1

    #@e
    return p1
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    .line 67
    iget-object v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    #@6
    aput-object v2, v0, v1

    #@8
    iget v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    #@a
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    return v0
.end method
