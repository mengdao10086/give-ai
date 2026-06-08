.class public Lcom/google/android/material/animation/ArgbEvaluatorCompat;
.super Ljava/lang/Object;
.source "ArgbEvaluatorCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 29
    new-instance v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;
    .registers 1

    #@0
    .line 40
    sget-object v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    #@2
    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 15

    #@0
    .line 58
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result p2

    #@4
    shr-int/lit8 v0, p2, 0x18

    #@6
    and-int/lit16 v0, v0, 0xff

    #@8
    int-to-float v0, v0

    #@9
    const/high16 v1, 0x437f0000    # 255.0f

    #@b
    div-float/2addr v0, v1

    #@c
    shr-int/lit8 v2, p2, 0x10

    #@e
    and-int/lit16 v2, v2, 0xff

    #@10
    int-to-float v2, v2

    #@11
    div-float/2addr v2, v1

    #@12
    shr-int/lit8 v3, p2, 0x8

    #@14
    and-int/lit16 v3, v3, 0xff

    #@16
    int-to-float v3, v3

    #@17
    div-float/2addr v3, v1

    #@18
    and-int/lit16 p2, p2, 0xff

    #@1a
    int-to-float p2, p2

    #@1b
    div-float/2addr p2, v1

    #@1c
    .line 64
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@1f
    move-result p3

    #@20
    shr-int/lit8 v4, p3, 0x18

    #@22
    and-int/lit16 v4, v4, 0xff

    #@24
    int-to-float v4, v4

    #@25
    div-float/2addr v4, v1

    #@26
    shr-int/lit8 v5, p3, 0x10

    #@28
    and-int/lit16 v5, v5, 0xff

    #@2a
    int-to-float v5, v5

    #@2b
    div-float/2addr v5, v1

    #@2c
    shr-int/lit8 v6, p3, 0x8

    #@2e
    and-int/lit16 v6, v6, 0xff

    #@30
    int-to-float v6, v6

    #@31
    div-float/2addr v6, v1

    #@32
    and-int/lit16 p3, p3, 0xff

    #@34
    int-to-float p3, p3

    #@35
    div-float/2addr p3, v1

    #@36
    float-to-double v7, v2

    #@37
    const-wide v9, 0x400199999999999aL    # 2.2

    #@3c
    .line 71
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@3f
    move-result-wide v7

    #@40
    double-to-float v2, v7

    #@41
    float-to-double v7, v3

    #@42
    .line 72
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@45
    move-result-wide v7

    #@46
    double-to-float v3, v7

    #@47
    float-to-double v7, p2

    #@48
    .line 73
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@4b
    move-result-wide v7

    #@4c
    double-to-float p2, v7

    #@4d
    float-to-double v7, v5

    #@4e
    .line 75
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@51
    move-result-wide v7

    #@52
    double-to-float v5, v7

    #@53
    float-to-double v6, v6

    #@54
    .line 76
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@57
    move-result-wide v6

    #@58
    double-to-float v6, v6

    #@59
    float-to-double v7, p3

    #@5a
    .line 77
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@5d
    move-result-wide v7

    #@5e
    double-to-float p3, v7

    #@5f
    sub-float/2addr v4, v0

    #@60
    mul-float/2addr v4, p1

    #@61
    add-float/2addr v0, v4

    #@62
    sub-float/2addr v5, v2

    #@63
    mul-float/2addr v5, p1

    #@64
    add-float/2addr v2, v5

    #@65
    sub-float/2addr v6, v3

    #@66
    mul-float/2addr v6, p1

    #@67
    add-float/2addr v3, v6

    #@68
    sub-float/2addr p3, p2

    #@69
    mul-float/2addr p1, p3

    #@6a
    add-float/2addr p2, p1

    #@6b
    mul-float/2addr v0, v1

    #@6c
    float-to-double v4, v2

    #@6d
    const-wide v6, 0x3fdd1745d1745d17L    # 0.45454545454545453

    #@72
    .line 87
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@75
    move-result-wide v4

    #@76
    double-to-float p1, v4

    #@77
    mul-float/2addr p1, v1

    #@78
    float-to-double v2, v3

    #@79
    .line 88
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@7c
    move-result-wide v2

    #@7d
    double-to-float p3, v2

    #@7e
    mul-float/2addr p3, v1

    #@7f
    float-to-double v2, p2

    #@80
    .line 89
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@83
    move-result-wide v2

    #@84
    double-to-float p2, v2

    #@85
    mul-float/2addr p2, v1

    #@86
    .line 91
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@89
    move-result v0

    #@8a
    shl-int/lit8 v0, v0, 0x18

    #@8c
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@8f
    move-result p1

    #@90
    shl-int/lit8 p1, p1, 0x10

    #@92
    or-int/2addr p1, v0

    #@93
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    #@96
    move-result p3

    #@97
    shl-int/lit8 p3, p3, 0x8

    #@99
    or-int/2addr p1, p3

    #@9a
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@9d
    move-result p2

    #@9e
    or-int/2addr p1, p2

    #@9f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2
    move-result-object p1

    #@a3
    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    #@0
    .line 28
    check-cast p2, Ljava/lang/Integer;

    #@2
    check-cast p3, Ljava/lang/Integer;

    #@4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method
