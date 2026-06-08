.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "TriangleEdgeTreatment.java"


# instance fields
.field private final inside:Z

.field private final size:F


# direct methods
.method public constructor <init>(FZ)V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    #@3
    .line 43
    iput p1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    #@5
    .line 44
    iput-boolean p2, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    #@7
    return-void
.end method


# virtual methods
.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .registers 8

    #@0
    .line 50
    iget-boolean v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_1a

    #@5
    .line 51
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    #@7
    mul-float/2addr v0, p3

    #@8
    sub-float v0, p2, v0

    #@a
    invoke-virtual {p4, v0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@d
    .line 52
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    #@f
    mul-float v2, v0, p3

    #@11
    mul-float/2addr v0, p3

    #@12
    add-float/2addr v0, p2

    #@13
    invoke-virtual {p4, p2, v2, v0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    #@16
    .line 53
    invoke-virtual {p4, p1, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@19
    goto :goto_2c

    #@1a
    .line 55
    :cond_1a
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    #@1c
    mul-float v2, v0, p3

    #@1e
    sub-float v2, p2, v2

    #@20
    neg-float v0, v0

    #@21
    mul-float/2addr v0, p3

    #@22
    invoke-virtual {p4, v2, v1, p2, v0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    #@25
    .line 56
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    #@27
    mul-float/2addr v0, p3

    #@28
    add-float/2addr p2, v0

    #@29
    invoke-virtual {p4, p2, v1, p1, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    #@2c
    :goto_2c
    return-void
.end method
