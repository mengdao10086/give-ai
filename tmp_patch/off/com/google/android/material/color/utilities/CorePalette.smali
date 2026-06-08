.class public final Lcom/google/android/material/color/utilities/CorePalette;
.super Ljava/lang/Object;
.source "CorePalette.java"


# instance fields
.field public a1:Lcom/google/android/material/color/utilities/TonalPalette;

.field public a2:Lcom/google/android/material/color/utilities/TonalPalette;

.field public a3:Lcom/google/android/material/color/utilities/TonalPalette;

.field public error:Lcom/google/android/material/color/utilities/TonalPalette;

.field public n1:Lcom/google/android/material/color/utilities/TonalPalette;

.field public n2:Lcom/google/android/material/color/utilities/TonalPalette;


# direct methods
.method private constructor <init>(IZ)V
    .registers 13

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    #@6
    move-result-object p1

    #@7
    .line 61
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    #@a
    move-result-wide v0

    #@b
    .line 62
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    #@e
    move-result-wide v2

    #@f
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    #@11
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    #@13
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    #@15
    if-eqz p2, :cond_4e

    #@17
    .line 64
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@1a
    move-result-object p1

    #@1b
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@1d
    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    #@1f
    div-double p1, v2, p1

    #@21
    .line 65
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@24
    move-result-object p1

    #@25
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@27
    add-double/2addr v8, v0

    #@28
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    #@2a
    div-double p1, v2, p1

    #@2c
    .line 66
    invoke-static {v8, v9, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@2f
    move-result-object p1

    #@30
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@32
    const-wide/high16 p1, 0x4028000000000000L    # 12.0

    #@34
    div-double p1, v2, p1

    #@36
    .line 67
    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(DD)D

    #@39
    move-result-wide p1

    #@3a
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@3d
    move-result-object p1

    #@3e
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@40
    const-wide/high16 p1, 0x4018000000000000L    # 6.0

    #@42
    div-double/2addr v2, p1

    #@43
    .line 68
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    #@46
    move-result-wide p1

    #@47
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@4a
    move-result-object p1

    #@4b
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@4d
    goto :goto_77

    #@4e
    :cond_4e
    const-wide/high16 p1, 0x4048000000000000L    # 48.0

    #@50
    .line 70
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@53
    move-result-wide p1

    #@54
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@57
    move-result-object p1

    #@58
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@5a
    const-wide/high16 p1, 0x4030000000000000L    # 16.0

    #@5c
    .line 71
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@5f
    move-result-object p1

    #@60
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@62
    add-double/2addr v8, v0

    #@63
    const-wide/high16 p1, 0x4038000000000000L    # 24.0

    #@65
    .line 72
    invoke-static {v8, v9, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@68
    move-result-object p1

    #@69
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@6b
    .line 73
    invoke-static {v0, v1, v6, v7}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@6e
    move-result-object p1

    #@6f
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@71
    .line 74
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@74
    move-result-object p1

    #@75
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@77
    :goto_77
    const-wide/high16 p1, 0x4039000000000000L    # 25.0

    #@79
    const-wide/high16 v0, 0x4055000000000000L    # 84.0

    #@7b
    .line 76
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@7e
    move-result-object p1

    #@7f
    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@81
    return-void
.end method

.method public static contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;
    .registers 3

    #@0
    .line 56
    new-instance v0, Lcom/google/android/material/color/utilities/CorePalette;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/utilities/CorePalette;-><init>(IZ)V

    #@6
    return-object v0
.end method

.method public static of(I)Lcom/google/android/material/color/utilities/CorePalette;
    .registers 3

    #@0
    .line 47
    new-instance v0, Lcom/google/android/material/color/utilities/CorePalette;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/utilities/CorePalette;-><init>(IZ)V

    #@6
    return-object v0
.end method
