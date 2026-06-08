.class public Lcom/google/android/material/shape/CutCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "CutCornerTreatment.java"


# instance fields
.field size:F


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 26
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    #@3
    const/high16 v0, -0x40800000    # -1.0f

    #@5
    .line 24
    iput v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    #@7
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 40
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    #@3
    .line 41
    iput p1, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    #@5
    return-void
.end method


# virtual methods
.method public getCornerPath(Lcom/google/android/material/shape/ShapePath;FFF)V
    .registers 11

    #@0
    mul-float v0, p4, p3

    #@2
    const/high16 v1, 0x43340000    # 180.0f

    #@4
    sub-float v2, v1, p2

    #@6
    const/4 v3, 0x0

    #@7
    .line 47
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    #@a
    float-to-double v0, p2

    #@b
    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@e
    move-result-wide v0

    #@f
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@12
    move-result-wide v0

    #@13
    float-to-double v2, p4

    #@14
    mul-double/2addr v0, v2

    #@15
    float-to-double p3, p3

    #@16
    mul-double/2addr v0, p3

    #@17
    double-to-float v0, v0

    #@18
    const/high16 v1, 0x42b40000    # 90.0f

    #@1a
    sub-float/2addr v1, p2

    #@1b
    float-to-double v4, v1

    #@1c
    .line 52
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    #@1f
    move-result-wide v4

    #@20
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@23
    move-result-wide v4

    #@24
    mul-double/2addr v4, v2

    #@25
    mul-double/2addr v4, p3

    #@26
    double-to-float p2, v4

    #@27
    .line 48
    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    #@2a
    return-void
.end method
