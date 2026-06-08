.class public Lcom/google/android/material/animation/Positioning;
.super Ljava/lang/Object;
.source "Positioning.java"


# instance fields
.field public final gravity:I

.field public final xAdjustment:F

.field public final yAdjustment:F


# direct methods
.method public constructor <init>(IFF)V
    .registers 4

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput p1, p0, Lcom/google/android/material/animation/Positioning;->gravity:I

    #@5
    .line 36
    iput p2, p0, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    #@7
    .line 37
    iput p3, p0, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    #@9
    return-void
.end method
