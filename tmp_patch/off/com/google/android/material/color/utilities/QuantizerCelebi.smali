.class public final Lcom/google/android/material/color/utilities/QuantizerCelebi;
.super Ljava/lang/Object;
.source "QuantizerCelebi.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static quantize([II)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 52
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/utilities/QuantizerWu;-><init>()V

    #@5
    .line 53
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWu;->quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;

    #@8
    move-result-object v0

    #@9
    .line 55
    iget-object v0, v0, Lcom/google/android/material/color/utilities/QuantizerResult;->colorToCount:Ljava/util/Map;

    #@b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    .line 57
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@12
    move-result v1

    #@13
    new-array v1, v1, [I

    #@15
    .line 58
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v0

    #@19
    const/4 v2, 0x0

    #@1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_30

    #@20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Ljava/lang/Integer;

    #@26
    add-int/lit8 v4, v2, 0x1

    #@28
    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v3

    #@2c
    aput v3, v1, v2

    #@2e
    move v2, v4

    #@2f
    goto :goto_1a

    #@30
    .line 62
    :cond_30
    invoke-static {p0, v1, p1}, Lcom/google/android/material/color/utilities/QuantizerWsmeans;->quantize([I[II)Ljava/util/Map;

    #@33
    move-result-object p0

    #@34
    return-object p0
.end method
