.class public final Lcom/google/android/material/shape/AbsoluteCornerSize;
.super Ljava/lang/Object;
.source "AbsoluteCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    #@0
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput p1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    #@5
    return-void
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
    .line 49
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 52
    :cond_a
    check-cast p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@c
    .line 53
    iget v1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    #@e
    iget p1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

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

.method public getCornerSize()F
    .registers 2

    #@0
    .line 41
    iget v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    #@2
    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .registers 2

    #@0
    .line 34
    iget p1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    #@2
    return p1
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 58
    iget v1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    #@5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    return v0
.end method
