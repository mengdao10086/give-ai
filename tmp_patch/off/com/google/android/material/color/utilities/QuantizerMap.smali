.class public final Lcom/google/android/material/color/utilities/QuantizerMap;
.super Ljava/lang/Object;
.source "QuantizerMap.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/Quantizer;


# instance fields
.field colorToCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getColorToCount()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 48
    iget-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;
    .registers 8

    #@0
    .line 37
    new-instance p2, Ljava/util/HashMap;

    #@2
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 38
    array-length v0, p1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_2c

    #@9
    aget v2, p1, v1

    #@b
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Ljava/lang/Integer;

    #@15
    const/4 v4, 0x1

    #@16
    if-nez v3, :cond_19

    #@18
    goto :goto_1e

    #@19
    .line 40
    :cond_19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v3

    #@1d
    add-int/2addr v4, v3

    #@1e
    .line 41
    :goto_1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_7

    #@2c
    .line 43
    :cond_2c
    iput-object p2, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/Map;

    #@2e
    .line 44
    new-instance p1, Lcom/google/android/material/color/utilities/QuantizerResult;

    #@30
    invoke-direct {p1, p2}, Lcom/google/android/material/color/utilities/QuantizerResult;-><init>(Ljava/util/Map;)V

    #@33
    return-object p1
.end method
