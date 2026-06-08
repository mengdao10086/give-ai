.class Lcom/google/android/material/transition/platform/FadeModeEvaluators$4;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/platform/FadeModeResult;
    .registers 7

    #@0
    sub-float v0, p3, p2

    #@2
    mul-float/2addr v0, p4

    #@3
    add-float/2addr v0, p2

    #@4
    const/16 p4, 0xff

    #@6
    const/4 v1, 0x0

    #@7
    .line 75
    invoke-static {p4, v1, p2, v0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    #@a
    move-result p2

    #@b
    .line 76
    invoke-static {v1, p4, v0, p3, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    #@e
    move-result p1

    #@f
    .line 77
    invoke-static {p2, p1}, Lcom/google/android/material/transition/platform/FadeModeResult;->startOnTop(II)Lcom/google/android/material/transition/platform/FadeModeResult;

    #@12
    move-result-object p1

    #@13
    return-object p1
.end method
