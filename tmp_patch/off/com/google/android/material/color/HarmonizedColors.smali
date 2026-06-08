.class public Lcom/google/android/material/color/HarmonizedColors;
.super Ljava/lang/Object;
.source "HarmonizedColors.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HarmonizedColors"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addHarmonizedColorAttributesToReplacementMap(Ljava/util/Map;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/TypedArray;",
            "I)V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_3

    #@2
    goto :goto_4

    #@3
    :cond_3
    move-object p2, p1

    #@4
    :goto_4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    .line 184
    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_38

    #@c
    .line 185
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_35

    #@12
    .line 187
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_35

    #@18
    .line 188
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getType(I)I

    #@1b
    move-result v3

    #@1c
    invoke-static {v3}, Lcom/google/android/material/color/ResourcesLoaderUtils;->isColorResource(I)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_35

    #@22
    .line 189
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@25
    move-result v3

    #@26
    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v3, p3}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    #@2d
    move-result v3

    #@2e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v3

    #@32
    .line 190
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    :cond_35
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_6

    #@38
    :cond_38
    return-void
.end method

.method public static applyToContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)V
    .registers 4

    #@0
    .line 68
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 72
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/material/color/HarmonizedColors;->createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    .line 73
    invoke-virtual {p1, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getThemeOverlayResourceId(I)I

    #@f
    move-result p1

    #@10
    .line 75
    invoke-static {p0, v0}, Lcom/google/android/material/color/ResourcesLoaderUtils;->addResourcesLoaderToContext(Landroid/content/Context;Ljava/util/Map;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1b

    #@16
    if-eqz p1, :cond_1b

    #@18
    .line 77
    invoke-static {p0, p1}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    #@1b
    :cond_1b
    return-void
.end method

.method private static createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/color/HarmonizedColorsOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 132
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 134
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributeToHarmonizeWith()I

    #@8
    move-result v1

    #@9
    sget-object v2, Lcom/google/android/material/color/HarmonizedColors;->TAG:Ljava/lang/String;

    #@b
    invoke-static {p0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    #@e
    move-result v1

    #@f
    .line 137
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorResourceIds()[I

    #@12
    move-result-object v2

    #@13
    array-length v3, v2

    #@14
    const/4 v4, 0x0

    #@15
    :goto_15
    if-ge v4, v3, :cond_2f

    #@17
    aget v5, v2, v4

    #@19
    .line 140
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@1c
    move-result v6

    #@1d
    .line 139
    invoke-static {v6, v1}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    #@20
    move-result v6

    #@21
    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v5

    #@25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v6

    #@29
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    add-int/lit8 v4, v4, 0x1

    #@2e
    goto :goto_15

    #@2f
    .line 144
    :cond_2f
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@32
    move-result-object p1

    #@33
    if-eqz p1, :cond_5c

    #@35
    .line 146
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getAttributes()[I

    #@38
    move-result-object v2

    #@39
    .line 147
    array-length v3, v2

    #@3a
    if-lez v3, :cond_5c

    #@3c
    .line 151
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    #@3f
    move-result p1

    #@40
    .line 152
    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@43
    move-result-object v3

    #@44
    if-eqz p1, :cond_50

    #@46
    .line 156
    new-instance v4, Landroid/view/ContextThemeWrapper;

    #@48
    invoke-direct {v4, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@4b
    invoke-virtual {v4, v2}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@4e
    move-result-object p0

    #@4f
    goto :goto_51

    #@50
    :cond_50
    const/4 p0, 0x0

    #@51
    .line 158
    :goto_51
    invoke-static {v0, v3, p0, v1}, Lcom/google/android/material/color/HarmonizedColors;->addHarmonizedColorAttributesToReplacementMap(Ljava/util/Map;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;I)V

    #@54
    .line 164
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@57
    if-eqz p0, :cond_5c

    #@59
    .line 166
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@5c
    :cond_5c
    return-object v0
.end method

.method public static isHarmonizedColorAvailable()Z
    .registers 2

    #@0
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Landroid/content/Context;
    .registers 4

    #@0
    .line 96
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-object p0

    #@7
    .line 101
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/material/color/HarmonizedColors;->createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    .line 104
    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_HarmonizedColors_Empty:I

    #@d
    .line 105
    invoke-virtual {p1, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getThemeOverlayResourceId(I)I

    #@10
    move-result p1

    #@11
    .line 106
    new-instance v1, Landroid/view/ContextThemeWrapper;

    #@13
    invoke-direct {v1, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@16
    .line 109
    new-instance p1, Landroid/content/res/Configuration;

    #@18
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    #@1b
    invoke-virtual {v1, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    #@1e
    .line 111
    invoke-static {v1, v0}, Lcom/google/android/material/color/ResourcesLoaderUtils;->addResourcesLoaderToContext(Landroid/content/Context;Ljava/util/Map;)Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_25

    #@24
    move-object p0, v1

    #@25
    :cond_25
    return-object p0
.end method
