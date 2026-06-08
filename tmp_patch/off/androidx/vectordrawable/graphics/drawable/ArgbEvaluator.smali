.class public Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;
.super Ljava/lang/Object;
.source "ArgbEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# static fields
.field private static final sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 33
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    #@2
    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;-><init>()V

    #@5
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;
    .registers 1

    #@0
    .line 43
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    #@2
    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    #@0
    .line 64
    check-cast p2, Ljava/lang/Integer;

    #@2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result p2

    #@6
    shr-int/lit8 v0, p2, 0x18

    #@8
    and-int/lit16 v0, v0, 0xff

    #@a
    int-to-float v0, v0

    #@b
    const/high16 v1, 0x437f0000    # 255.0f

    #@d
    div-float/2addr v0, v1

    #@e
    shr-int/lit8 v2, p2, 0x10

    #@10
    and-int/lit16 v2, v2, 0xff

    #@12
    int-to-float v2, v2

    #@13
    div-float/2addr v2, v1

    #@14
    shr-int/lit8 v3, p2, 0x8

    #@16
    and-int/lit16 v3, v3, 0xff

    #@18
    int-to-float v3, v3

    #@19
    div-float/2addr v3, v1

    #@1a
    and-int/lit16 p2, p2, 0xff

    #@1c
    int-to-float p2, p2

    #@1d
    div-float/2addr p2, v1

    #@1e
    .line 70
    check-cast p3, Ljava/lang/Integer;

    #@20
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result p3

    #@24
    shr-int/lit8 v4, p3, 0x18

    #@26
    and-int/lit16 v4, v4, 0xff

    #@28
    int-to-float v4, v4

    #@29
    div-float/2addr v4, v1

    #@2a
    shr-int/lit8 v5, p3, 0x10

    #@2c
    and-int/lit16 v5, v5, 0xff

    #@2e
    int-to-float v5, v5

    #@2f
    div-float/2addr v5, v1

    #@30
    shr-int/lit8 v6, p3, 0x8

    #@32
    and-int/lit16 v6, v6, 0xff

    #@34
    int-to-float v6, v6

    #@35
    div-float/2addr v6, v1

    #@36
    and-int/lit16 p3, p3, 0xff

    #@38
    int-to-float p3, p3

    #@39
    div-float/2addr p3, v1

    #@3a
    float-to-double v7, v2

    #@3b
    const-wide v9, 0x400199999999999aL    # 2.2

    #@40
    .line 77
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@43
    move-result-wide v7

    #@44
    double-to-float v2, v7

    #@45
    float-to-double v7, v3

    #@46
    .line 78
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@49
    move-result-wide v7

    #@4a
    double-to-float v3, v7

    #@4b
    float-to-double v7, p2

    #@4c
    .line 79
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@4f
    move-result-wide v7

    #@50
    double-to-float p2, v7

    #@51
    float-to-double v7, v5

    #@52
    .line 81
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@55
    move-result-wide v7

    #@56
    double-to-float v5, v7

    #@57
    float-to-double v6, v6

    #@58
    .line 82
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@5b
    move-result-wide v6

    #@5c
    double-to-float v6, v6

    #@5d
    float-to-double v7, p3

    #@5e
    .line 83
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@61
    move-result-wide v7

    #@62
    double-to-float p3, v7

    #@63
    sub-float/2addr v4, v0

    #@64
    mul-float/2addr v4, p1

    #@65
    add-float/2addr v0, v4

    #@66
    sub-float/2addr v5, v2

    #@67
    mul-float/2addr v5, p1

    #@68
    add-float/2addr v2, v5

    #@69
    sub-float/2addr v6, v3

    #@6a
    mul-float/2addr v6, p1

    #@6b
    add-float/2addr v3, v6

    #@6c
    sub-float/2addr p3, p2

    #@6d
    mul-float/2addr p1, p3

    #@6e
    add-float/2addr p2, p1

    #@6f
    mul-float/2addr v0, v1

    #@70
    float-to-double v4, v2

    #@71
    const-wide v6, 0x3fdd1745d1745d17L    # 0.45454545454545453

    #@76
    .line 93
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@79
    move-result-wide v4

    #@7a
    double-to-float p1, v4

    #@7b
    mul-float/2addr p1, v1

    #@7c
    float-to-double v2, v3

    #@7d
    .line 94
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@80
    move-result-wide v2

    #@81
    double-to-float p3, v2

    #@82
    mul-float/2addr p3, v1

    #@83
    float-to-double v2, p2

    #@84
    .line 95
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@87
    move-result-wide v2

    #@88
    double-to-float p2, v2

    #@89
    mul-float/2addr p2, v1

    #@8a
    .line 97
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@8d
    move-result v0

    #@8e
    shl-int/lit8 v0, v0, 0x18

    #@90
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@93
    move-result p1

    #@94
    shl-int/lit8 p1, p1, 0x10

    #@96
    or-int/2addr p1, v0

    #@97
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    #@9a
    move-result p3

    #@9b
    shl-int/lit8 p3, p3, 0x8

    #@9d
    or-int/2addr p1, p3

    #@9e
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@a1
    move-result p2

    #@a2
    or-int/2addr p1, p2

    #@a3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a6
    move-result-object p1

    #@a7
    return-object p1
.end method
