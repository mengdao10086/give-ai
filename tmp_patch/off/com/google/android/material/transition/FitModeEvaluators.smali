.class Lcom/google/android/material/transition/FitModeEvaluators;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"


# static fields
.field private static final HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

.field private static final WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 29
    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    #@7
    .line 75
    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$2;

    #@9
    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$2;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    #@e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/FitModeEvaluator;
    .registers 4

    #@0
    if-eqz p0, :cond_23

    #@2
    const/4 p1, 0x1

    #@3
    if-eq p0, p1, :cond_20

    #@5
    const/4 p1, 0x2

    #@6
    if-ne p0, p1, :cond_b

    #@8
    .line 130
    sget-object p0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    #@a
    return-object p0

    #@b
    .line 132
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance p2, Ljava/lang/StringBuilder;

    #@f
    const-string p3, "Invalid fit mode: "

    #@11
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object p0

    #@18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw p1

    #@20
    .line 128
    :cond_20
    sget-object p0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    #@22
    return-object p0

    #@23
    .line 126
    :cond_23
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/FitModeEvaluators;->shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@26
    move-result p0

    #@27
    if-eqz p0, :cond_2c

    #@29
    sget-object p0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    #@2b
    goto :goto_2e

    #@2c
    :cond_2c
    sget-object p0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    #@2e
    :goto_2e
    return-object p0
.end method

.method private static shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 7

    #@0
    .line 138
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    #@3
    move-result v0

    #@4
    .line 139
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    #@7
    move-result p1

    #@8
    .line 140
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    #@b
    move-result v1

    #@c
    .line 141
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    #@f
    move-result p2

    #@10
    mul-float v2, p2, v0

    #@12
    div-float/2addr v2, v1

    #@13
    mul-float/2addr v1, p1

    #@14
    div-float/2addr v1, v0

    #@15
    const/4 v0, 0x1

    #@16
    const/4 v3, 0x0

    #@17
    if-eqz p0, :cond_1e

    #@19
    cmpl-float p0, v2, p1

    #@1b
    if-ltz p0, :cond_23

    #@1d
    goto :goto_24

    #@1e
    :cond_1e
    cmpl-float p0, v1, p2

    #@20
    if-ltz p0, :cond_23

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v0, v3

    #@24
    :goto_24
    return v0
.end method
