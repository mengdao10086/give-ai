.class Lcom/google/android/material/transition/platform/FadeModeResult;
.super Ljava/lang/Object;
.source "FadeModeResult.java"


# instance fields
.field final endAlpha:I

.field final endOnTop:Z

.field final startAlpha:I


# direct methods
.method private constructor <init>(IIZ)V
    .registers 4

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput p1, p0, Lcom/google/android/material/transition/platform/FadeModeResult;->startAlpha:I

    #@5
    .line 39
    iput p2, p0, Lcom/google/android/material/transition/platform/FadeModeResult;->endAlpha:I

    #@7
    .line 40
    iput-boolean p3, p0, Lcom/google/android/material/transition/platform/FadeModeResult;->endOnTop:Z

    #@9
    return-void
.end method

.method static endOnTop(II)Lcom/google/android/material/transition/platform/FadeModeResult;
    .registers 4

    #@0
    .line 34
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeResult;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/transition/platform/FadeModeResult;-><init>(IIZ)V

    #@6
    return-object v0
.end method

.method static startOnTop(II)Lcom/google/android/material/transition/platform/FadeModeResult;
    .registers 4

    #@0
    .line 30
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeResult;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/transition/platform/FadeModeResult;-><init>(IIZ)V

    #@6
    return-object v0
.end method
