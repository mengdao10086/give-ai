.class public Lcom/google/android/material/color/MaterialColors;
.super Ljava/lang/Object;
.source "MaterialColors.java"


# static fields
.field public static final ALPHA_DISABLED:F = 0.38f

.field public static final ALPHA_DISABLED_LOW:F = 0.12f

.field public static final ALPHA_FULL:F = 1.0f

.field public static final ALPHA_LOW:F = 0.32f

.field public static final ALPHA_MEDIUM:F = 0.54f

.field private static final TONE_ACCENT_CONTAINER_DARK:I = 0x1e

.field private static final TONE_ACCENT_CONTAINER_LIGHT:I = 0x5a

.field private static final TONE_ACCENT_DARK:I = 0x50

.field private static final TONE_ACCENT_LIGHT:I = 0x28

.field private static final TONE_ON_ACCENT_CONTAINER_DARK:I = 0x5a

.field private static final TONE_ON_ACCENT_CONTAINER_LIGHT:I = 0xa

.field private static final TONE_ON_ACCENT_DARK:I = 0x14

.field private static final TONE_ON_ACCENT_LIGHT:I = 0x64


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compositeARGBWithAlpha(II)I
    .registers 3

    #@0
    .line 233
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    mul-int/2addr v0, p1

    #@5
    div-int/lit16 v0, v0, 0xff

    #@7
    .line 234
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@a
    move-result p0

    #@b
    return p0
.end method

.method public static getColor(Landroid/content/Context;II)I
    .registers 3

    #@0
    .line 110
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 112
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    return p2
.end method

.method public static getColor(Landroid/content/Context;ILjava/lang/String;)I
    .registers 3

    #@0
    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    #@3
    move-result-object p1

    #@4
    .line 87
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static getColor(Landroid/view/View;I)I
    .registers 3

    #@0
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 76
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/view/View;I)Landroid/util/TypedValue;

    #@7
    move-result-object p0

    #@8
    .line 74
    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static getColor(Landroid/view/View;II)I
    .registers 3

    #@0
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method private static getColorRole(II)I
    .registers 4

    #@0
    .line 303
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    #@3
    move-result-object p0

    #@4
    int-to-double v0, p1

    #@5
    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/color/utilities/Hct;->setTone(D)V

    #@8
    .line 305
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static getColorRoles(IZ)Lcom/google/android/material/color/ColorRoles;
    .registers 6

    #@0
    const/16 v0, 0x5a

    #@2
    if-eqz p1, :cond_20

    #@4
    .line 289
    new-instance p1, Lcom/google/android/material/color/ColorRoles;

    #@6
    const/16 v1, 0x28

    #@8
    .line 290
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    #@b
    move-result v1

    #@c
    const/16 v2, 0x64

    #@e
    .line 291
    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    #@11
    move-result v2

    #@12
    .line 292
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    #@15
    move-result v0

    #@16
    const/16 v3, 0xa

    #@18
    .line 293
    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    #@1b
    move-result p0

    #@1c
    invoke-direct {p1, v1, v2, v0, p0}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    #@1f
    goto :goto_3b

    #@20
    .line 294
    :cond_20
    new-instance p1, Lcom/google/android/material/color/ColorRoles;

    #@22
    const/16 v1, 0x50

    #@24
    .line 295
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    #@27
    move-result v1

    #@28
    const/16 v2, 0x14

    #@2a
    .line 296
    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    #@2d
    move-result v2

    #@2e
    const/16 v3, 0x1e

    #@30
    .line 297
    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    #@33
    move-result v3

    #@34
    .line 298
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    #@37
    move-result p0

    #@38
    invoke-direct {p1, v1, v2, v3, p0}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    #@3b
    :goto_3b
    return-object p1
.end method

.method public static getColorRoles(Landroid/content/Context;I)Lcom/google/android/material/color/ColorRoles;
    .registers 4

    #@0
    .line 275
    sget v0, Lcom/google/android/material/R$attr;->isLightTheme:I

    #@2
    const/4 v1, 0x1

    #@3
    .line 277
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    #@6
    move-result p0

    #@7
    .line 275
    invoke-static {p1, p0}, Lcom/google/android/material/color/MaterialColors;->getColorRoles(IZ)Lcom/google/android/material/color/ColorRoles;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static getColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 128
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 130
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColorStateList(Landroid/content/Context;Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    #@9
    move-result-object p0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    :goto_c
    if-nez p0, :cond_f

    #@e
    goto :goto_10

    #@f
    :cond_f
    move-object p2, p0

    #@10
    :goto_10
    return-object p2
.end method

.method public static getColorStateListOrNull(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    #@0
    .line 142
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p1, :cond_8

    #@7
    return-object v0

    #@8
    .line 145
    :cond_8
    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    #@a
    if-eqz v1, :cond_13

    #@c
    .line 146
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    #@e
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@11
    move-result-object p0

    #@12
    return-object p0

    #@13
    .line 147
    :cond_13
    iget p0, p1, Landroid/util/TypedValue;->data:I

    #@15
    if-eqz p0, :cond_1e

    #@17
    .line 148
    iget p0, p1, Landroid/util/TypedValue;->data:I

    #@19
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    return-object v0
.end method

.method public static harmonize(II)I
    .registers 2

    #@0
    .line 264
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/Blend;->harmonize(II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static harmonizeWithPrimary(Landroid/content/Context;I)I
    .registers 4

    #@0
    .line 250
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    #@2
    const-class v1, Lcom/google/android/material/color/MaterialColors;

    #@4
    .line 252
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    #@b
    move-result p0

    #@c
    .line 250
    invoke-static {p1, p0}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    #@f
    move-result p0

    #@10
    return p0
.end method

.method public static isColorLight(I)Z
    .registers 5

    #@0
    if-eqz p0, :cond_e

    #@2
    .line 239
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    #@5
    move-result-wide v0

    #@6
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@8
    cmpl-double p0, v0, v2

    #@a
    if-lez p0, :cond_e

    #@c
    const/4 p0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p0, 0x0

    #@f
    :goto_f
    return p0
.end method

.method public static layer(II)I
    .registers 2

    #@0
    .line 219
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static layer(IIF)I
    .registers 4

    #@0
    .line 208
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    mul-float/2addr v0, p2

    #@6
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@9
    move-result p2

    #@a
    .line 209
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@d
    move-result p1

    #@e
    .line 210
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    #@11
    move-result p0

    #@12
    return p0
.end method

.method public static layer(Landroid/view/View;II)I
    .registers 4

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    .line 181
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/MaterialColors;->layer(Landroid/view/View;IIF)I

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static layer(Landroid/view/View;IIF)I
    .registers 4

    #@0
    .line 194
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@3
    move-result p1

    #@4
    .line 195
    invoke-static {p0, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@7
    move-result p0

    #@8
    .line 196
    invoke-static {p1, p0, p3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@b
    move-result p0

    #@c
    return p0
.end method

.method private static resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I
    .registers 3

    #@0
    .line 154
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 156
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    #@6
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 159
    :cond_b
    iget p0, p1, Landroid/util/TypedValue;->data:I

    #@d
    return p0
.end method

.method private static resolveColorStateList(Landroid/content/Context;Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 165
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 166
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    #@6
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 168
    :cond_b
    iget p0, p1, Landroid/util/TypedValue;->data:I

    #@d
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@10
    move-result-object p0

    #@11
    return-object p0
.end method
