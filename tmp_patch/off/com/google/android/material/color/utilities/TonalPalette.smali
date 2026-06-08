.class public final Lcom/google/android/material/color/utilities/TonalPalette;
.super Ljava/lang/Object;
.source "TonalPalette.java"


# instance fields
.field cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field chroma:D

.field hue:D


# direct methods
.method private constructor <init>(DD)V
    .registers 6

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    #@a
    .line 61
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    #@c
    .line 62
    iput-wide p3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    #@e
    return-void
.end method

.method public static final fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;
    .registers 5

    #@0
    .line 56
    new-instance v0, Lcom/google/android/material/color/utilities/TonalPalette;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    #@5
    return-object v0
.end method

.method public static final fromInt(I)Lcom/google/android/material/color/utilities/TonalPalette;
    .registers 5

    #@0
    .line 44
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    #@3
    move-result-object p0

    #@4
    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    #@7
    move-result-wide v0

    #@8
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    #@b
    move-result-wide v2

    #@c
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method


# virtual methods
.method public tone(I)I
    .registers 9

    #@0
    .line 74
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    if-nez v0, :cond_28

    #@e
    .line 76
    iget-wide v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    #@10
    iget-wide v3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    #@12
    int-to-double v5, p1

    #@13
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    #@1a
    move-result v0

    #@1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v0

    #@1f
    .line 77
    iget-object v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    #@21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object p1

    #@25
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 79
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result p1

    #@2c
    return p1
.end method
