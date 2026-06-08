.class final Lcom/google/android/material/color/MaterialColorUtilitiesHelper;
.super Ljava/lang/Object;
.source "MaterialColorUtilitiesHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createColorResourcesIdsToColorValues(Lcom/google/android/material/color/utilities/Scheme;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/utilities/Scheme;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 33
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 35
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_primary:I

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getPrimary()I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 36
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_primary:I

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnPrimary()I

    #@1f
    move-result v2

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 37
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_primary_inverse:I

    #@29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getInversePrimary()I

    #@30
    move-result v2

    #@31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 38
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_primary_container:I

    #@3a
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getPrimaryContainer()I

    #@41
    move-result v2

    #@42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v2

    #@46
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 40
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_primary_container:I

    #@4b
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v1

    #@4f
    .line 42
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnPrimaryContainer()I

    #@52
    move-result v2

    #@53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v2

    #@57
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 43
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_secondary:I

    #@5c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getSecondary()I

    #@63
    move-result v2

    #@64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 44
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_secondary:I

    #@6d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnSecondary()I

    #@74
    move-result v2

    #@75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 45
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_secondary_container:I

    #@7e
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@81
    move-result-object v1

    #@82
    .line 47
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getSecondaryContainer()I

    #@85
    move-result v2

    #@86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@89
    move-result-object v2

    #@8a
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 48
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_secondary_container:I

    #@8f
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v1

    #@93
    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnSecondaryContainer()I

    #@96
    move-result v2

    #@97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9a
    move-result-object v2

    #@9b
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 51
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_tertiary:I

    #@a0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getTertiary()I

    #@a7
    move-result v2

    #@a8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 52
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_tertiary:I

    #@b1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnTertiary()I

    #@b8
    move-result v2

    #@b9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    .line 53
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_tertiary_container:I

    #@c2
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c5
    move-result-object v1

    #@c6
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getTertiaryContainer()I

    #@c9
    move-result v2

    #@ca
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cd
    move-result-object v2

    #@ce
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d1
    .line 55
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_tertiary_container:I

    #@d3
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d6
    move-result-object v1

    #@d7
    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnTertiaryContainer()I

    #@da
    move-result v2

    #@db
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@de
    move-result-object v2

    #@df
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    .line 58
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_background:I

    #@e4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e7
    move-result-object v1

    #@e8
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getBackground()I

    #@eb
    move-result v2

    #@ec
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ef
    move-result-object v2

    #@f0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f3
    .line 59
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_background:I

    #@f5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f8
    move-result-object v1

    #@f9
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnBackground()I

    #@fc
    move-result v2

    #@fd
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@100
    move-result-object v2

    #@101
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@104
    .line 60
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_surface:I

    #@106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getSurface()I

    #@10d
    move-result v2

    #@10e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@111
    move-result-object v2

    #@112
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    .line 61
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_surface:I

    #@117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11a
    move-result-object v1

    #@11b
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnSurface()I

    #@11e
    move-result v2

    #@11f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@122
    move-result-object v2

    #@123
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@126
    .line 62
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_surface_variant:I

    #@128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12b
    move-result-object v1

    #@12c
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getSurfaceVariant()I

    #@12f
    move-result v2

    #@130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@133
    move-result-object v2

    #@134
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    .line 63
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_surface_variant:I

    #@139
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13c
    move-result-object v1

    #@13d
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnSurfaceVariant()I

    #@140
    move-result v2

    #@141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@144
    move-result-object v2

    #@145
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@148
    .line 65
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_surface_inverse:I

    #@14a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14d
    move-result-object v1

    #@14e
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getInverseSurface()I

    #@151
    move-result v2

    #@152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@155
    move-result-object v2

    #@156
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@159
    .line 66
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_surface_inverse:I

    #@15b
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15e
    move-result-object v1

    #@15f
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getInverseOnSurface()I

    #@162
    move-result v2

    #@163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@166
    move-result-object v2

    #@167
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16a
    .line 68
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_surface_outline:I

    #@16c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16f
    move-result-object v1

    #@170
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOutline()I

    #@173
    move-result v2

    #@174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@177
    move-result-object v2

    #@178
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17b
    .line 69
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_error:I

    #@17d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@180
    move-result-object v1

    #@181
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getError()I

    #@184
    move-result v2

    #@185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@188
    move-result-object v2

    #@189
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18c
    .line 70
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_error:I

    #@18e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@191
    move-result-object v1

    #@192
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnError()I

    #@195
    move-result v2

    #@196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@199
    move-result-object v2

    #@19a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19d
    .line 71
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_error_container:I

    #@19f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a2
    move-result-object v1

    #@1a3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getErrorContainer()I

    #@1a6
    move-result v2

    #@1a7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1aa
    move-result-object v2

    #@1ab
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ae
    .line 72
    sget v1, Lcom/google/android/material/R$color;->material_personalized_color_on_error_container:I

    #@1b0
    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b3
    move-result-object v1

    #@1b4
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Scheme;->getOnErrorContainer()I

    #@1b7
    move-result p0

    #@1b8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bb
    move-result-object p0

    #@1bc
    .line 72
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bf
    return-object v0
.end method
