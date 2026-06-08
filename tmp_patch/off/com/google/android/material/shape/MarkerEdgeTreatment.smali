.class public final Lcom/google/android/material/shape/MarkerEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "MarkerEdgeTreatment.java"


# instance fields
.field private final radius:F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    #@0
    .line 32
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    #@3
    const v0, 0x3a83126f    # 0.001f

    #@6
    sub-float/2addr p1, v0

    #@7
    .line 33
    iput p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@9
    return-void
.end method


# virtual methods
.method forceIntersection()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .registers 13

    #@0
    .line 39
    iget p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@2
    float-to-double v0, p1

    #@3
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    #@5
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@8
    move-result-wide v4

    #@9
    mul-double/2addr v0, v4

    #@a
    div-double/2addr v0, v2

    #@b
    double-to-float p1, v0

    #@c
    .line 40
    iget p3, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@e
    float-to-double v0, p3

    #@f
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@12
    move-result-wide v0

    #@13
    float-to-double v4, p1

    #@14
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@17
    move-result-wide v4

    #@18
    sub-double/2addr v0, v4

    #@19
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@1c
    move-result-wide v0

    #@1d
    double-to-float p3, v0

    #@1e
    sub-float v0, p2, p1

    #@20
    .line 41
    iget v1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@22
    float-to-double v4, v1

    #@23
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@26
    move-result-wide v6

    #@27
    mul-double/2addr v4, v6

    #@28
    iget v1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@2a
    float-to-double v6, v1

    #@2b
    sub-double/2addr v4, v6

    #@2c
    neg-double v4, v4

    #@2d
    double-to-float v1, v4

    #@2e
    add-float/2addr v1, p3

    #@2f
    invoke-virtual {p4, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    #@32
    .line 42
    iget v0, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@34
    float-to-double v0, v0

    #@35
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@38
    move-result-wide v4

    #@39
    mul-double/2addr v0, v4

    #@3a
    iget v4, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@3c
    float-to-double v4, v4

    #@3d
    sub-double/2addr v0, v4

    #@3e
    neg-double v0, v0

    #@3f
    double-to-float v0, v0

    #@40
    invoke-virtual {p4, p2, v0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@43
    add-float/2addr p2, p1

    #@44
    .line 43
    iget p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@46
    float-to-double v0, p1

    #@47
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@4a
    move-result-wide v2

    #@4b
    mul-double/2addr v0, v2

    #@4c
    iget p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    #@4e
    float-to-double v2, p1

    #@4f
    sub-double/2addr v0, v2

    #@50
    neg-double v0, v0

    #@51
    double-to-float p1, v0

    #@52
    add-float/2addr p1, p3

    #@53
    invoke-virtual {p4, p2, p1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@56
    return-void
.end method
