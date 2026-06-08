.class public Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# static fields
.field private static final FORMULA_MULTIPLIER:F = 4.5f

.field private static final FORMULA_OFFSET:F = 2.0f

.field private static final OVERLAY_ACCENT_COLOR_ALPHA:I


# instance fields
.field private final colorSurface:I

.field private final displayDensity:F

.field private final elevationOverlayAccentColor:I

.field private final elevationOverlayColor:I

.field private final elevationOverlayEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    #@5
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@8
    move-result-wide v0

    #@9
    long-to-int v0, v0

    #@a
    sput v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->OVERLAY_ACCENT_COLOR_ALPHA:I

    #@c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    #@0
    .line 45
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayEnabled:I

    #@2
    const/4 v1, 0x0

    #@3
    .line 46
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    #@6
    move-result v3

    #@7
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayColor:I

    #@9
    .line 47
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@c
    move-result v4

    #@d
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayAccentColor:I

    #@f
    .line 48
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@12
    move-result v5

    #@13
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    #@15
    .line 49
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@18
    move-result v6

    #@19
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@20
    move-result-object p1

    #@21
    iget v7, p1, Landroid/util/DisplayMetrics;->density:F

    #@23
    move-object v2, p0

    #@24
    .line 45
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(ZIIIF)V

    #@27
    return-void
.end method

.method public constructor <init>(ZIIIF)V
    .registers 6

    #@0
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput-boolean p1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    #@5
    .line 60
    iput p2, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    #@7
    .line 61
    iput p3, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayAccentColor:I

    #@9
    .line 62
    iput p4, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    #@b
    .line 63
    iput p5, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    #@d
    return-void
.end method

.method private isThemeSurfaceColor(I)Z
    .registers 3

    #@0
    const/16 v0, 0xff

    #@2
    .line 193
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@5
    move-result p1

    #@6
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    #@8
    if-ne p1, v0, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method


# virtual methods
.method public calculateOverlayAlpha(F)I
    .registers 3

    #@0
    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    #@3
    move-result p1

    #@4
    const/high16 v0, 0x437f0000    # 255.0f

    #@6
    mul-float/2addr p1, v0

    #@7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@a
    move-result p1

    #@b
    return p1
.end method

.method public calculateOverlayAlphaFraction(F)F
    .registers 5

    #@0
    .line 158
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpg-float v2, v0, v1

    #@5
    if-lez v2, :cond_23

    #@7
    cmpg-float v2, p1, v1

    #@9
    if-gtz v2, :cond_c

    #@b
    goto :goto_23

    #@c
    :cond_c
    div-float/2addr p1, v0

    #@d
    float-to-double v0, p1

    #@e
    .line 163
    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    #@11
    move-result-wide v0

    #@12
    double-to-float p1, v0

    #@13
    const/high16 v0, 0x40900000    # 4.5f

    #@15
    mul-float/2addr p1, v0

    #@16
    const/high16 v0, 0x40000000    # 2.0f

    #@18
    add-float/2addr p1, v0

    #@19
    const/high16 v0, 0x42c80000    # 100.0f

    #@1b
    div-float/2addr p1, v0

    #@1c
    const/high16 v0, 0x3f800000    # 1.0f

    #@1e
    .line 164
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    #@21
    move-result p1

    #@22
    return p1

    #@23
    :cond_23
    :goto_23
    return v1
.end method

.method public compositeOverlay(IF)I
    .registers 5

    #@0
    .line 132
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    #@3
    move-result p2

    #@4
    .line 133
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@7
    move-result v0

    #@8
    const/16 v1, 0xff

    #@a
    .line 134
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@d
    move-result p1

    #@e
    .line 135
    iget v1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    #@10
    .line 136
    invoke-static {p1, v1, p2}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@13
    move-result p1

    #@14
    const/4 v1, 0x0

    #@15
    cmpl-float p2, p2, v1

    #@17
    if-lez p2, :cond_27

    #@19
    .line 137
    iget p2, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayAccentColor:I

    #@1b
    if-eqz p2, :cond_27

    #@1d
    .line 138
    sget v1, Lcom/google/android/material/elevation/ElevationOverlayProvider;->OVERLAY_ACCENT_COLOR_ALPHA:I

    #@1f
    .line 139
    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@22
    move-result p2

    #@23
    .line 140
    invoke-static {p1, p2}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    #@26
    move-result p1

    #@27
    .line 142
    :cond_27
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@2a
    move-result p1

    #@2b
    return p1
.end method

.method public compositeOverlay(IFLandroid/view/View;)I
    .registers 4

    #@0
    .line 120
    invoke-virtual {p0, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    #@3
    move-result p3

    #@4
    add-float/2addr p2, p3

    #@5
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    #@8
    move-result p1

    #@9
    return p1
.end method

.method public compositeOverlayIfNeeded(IF)I
    .registers 4

    #@0
    .line 109
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    invoke-direct {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeSurfaceColor(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_e

    #@a
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    #@d
    move-result p1

    #@e
    :cond_e
    return p1
.end method

.method public compositeOverlayIfNeeded(IFLandroid/view/View;)I
    .registers 4

    #@0
    .line 97
    invoke-virtual {p0, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    #@3
    move-result p3

    #@4
    add-float/2addr p2, p3

    #@5
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    #@8
    move-result p1

    #@9
    return p1
.end method

.method public compositeOverlayWithThemeSurfaceColorIfNeeded(F)I
    .registers 3

    #@0
    .line 85
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public compositeOverlayWithThemeSurfaceColorIfNeeded(FLandroid/view/View;)I
    .registers 3

    #@0
    .line 75
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    #@3
    move-result p2

    #@4
    add-float/2addr p1, p2

    #@5
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayWithThemeSurfaceColorIfNeeded(F)I

    #@8
    move-result p1

    #@9
    return p1
.end method

.method public getParentAbsoluteElevation(Landroid/view/View;)F
    .registers 2

    #@0
    .line 189
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public getThemeElevationOverlayColor()I
    .registers 2

    #@0
    .line 175
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    #@2
    return v0
.end method

.method public getThemeSurfaceColor()I
    .registers 2

    #@0
    .line 181
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    #@2
    return v0
.end method

.method public isThemeElevationOverlayEnabled()Z
    .registers 2

    #@0
    .line 169
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    #@2
    return v0
.end method
