.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "RoundedCornerTreatment.java"


# instance fields
.field radius:F


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
    iput v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    #@7
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 36
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    #@3
    .line 37
    iput p1, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    #@5
    return-void
.end method


# virtual methods
.method public getCornerPath(Lcom/google/android/material/shape/ShapePath;FFF)V
    .registers 16

    #@0
    mul-float v0, p4, p3

    #@2
    const/high16 v1, 0x43340000    # 180.0f

    #@4
    sub-float v2, v1, p2

    #@6
    const/4 v3, 0x0

    #@7
    .line 43
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    #@a
    const/4 v5, 0x0

    #@b
    const/4 v6, 0x0

    #@c
    const/high16 v0, 0x40000000    # 2.0f

    #@e
    mul-float/2addr p4, v0

    #@f
    mul-float v8, p4, p3

    #@11
    const/high16 v9, 0x43340000    # 180.0f

    #@13
    move-object v4, p1

    #@14
    move v7, v8

    #@15
    move v10, p2

    #@16
    .line 44
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    #@19
    return-void
.end method
