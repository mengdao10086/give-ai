.class Lcom/google/android/material/transition/FitModeResult;
.super Ljava/lang/Object;
.source "FitModeResult.java"


# instance fields
.field final currentEndHeight:F

.field final currentEndWidth:F

.field final currentStartHeight:F

.field final currentStartWidth:F

.field final endScale:F

.field final startScale:F


# direct methods
.method constructor <init>(FFFFFF)V
    .registers 7

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput p1, p0, Lcom/google/android/material/transition/FitModeResult;->startScale:F

    #@5
    .line 35
    iput p2, p0, Lcom/google/android/material/transition/FitModeResult;->endScale:F

    #@7
    .line 36
    iput p3, p0, Lcom/google/android/material/transition/FitModeResult;->currentStartWidth:F

    #@9
    .line 37
    iput p4, p0, Lcom/google/android/material/transition/FitModeResult;->currentStartHeight:F

    #@b
    .line 38
    iput p5, p0, Lcom/google/android/material/transition/FitModeResult;->currentEndWidth:F

    #@d
    .line 39
    iput p6, p0, Lcom/google/android/material/transition/FitModeResult;->currentEndHeight:F

    #@f
    return-void
.end method
