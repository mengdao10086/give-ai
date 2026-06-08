.class public final Lcom/google/android/material/shape/OffsetEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "OffsetEdgeTreatment.java"


# instance fields
.field private final offset:F

.field private final other:Lcom/google/android/material/shape/EdgeTreatment;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/EdgeTreatment;F)V
    .registers 3

    #@0
    .line 27
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->other:Lcom/google/android/material/shape/EdgeTreatment;

    #@5
    .line 29
    iput p2, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->offset:F

    #@7
    return-void
.end method


# virtual methods
.method forceIntersection()Z
    .registers 2

    #@0
    .line 40
    iget-object v0, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->other:Lcom/google/android/material/shape/EdgeTreatment;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .registers 7

    #@0
    .line 35
    iget-object v0, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->other:Lcom/google/android/material/shape/EdgeTreatment;

    #@2
    iget v1, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->offset:F

    #@4
    sub-float/2addr p2, v1

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    #@8
    return-void
.end method
