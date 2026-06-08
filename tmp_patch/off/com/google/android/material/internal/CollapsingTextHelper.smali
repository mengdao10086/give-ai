.class public final Lcom/google/android/material/internal/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final FADE_MODE_THRESHOLD_FRACTION_RELATIVE:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "CollapsingTextHelper"

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field private collapsedLetterSpacing:F

.field private collapsedShadowColor:Landroid/content/res/ColorStateList;

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextBlend:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTextWidth:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private collapsedTypefaceBold:Landroid/graphics/Typeface;

.field private collapsedTypefaceDefault:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentLetterSpacing:F

.field private currentOffsetY:I

.field private currentShadowColor:I

.field private currentShadowDx:F

.field private currentShadowDy:F

.field private currentShadowRadius:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private final expandedBounds:Landroid/graphics/Rect;

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field private expandedFraction:F

.field private expandedLetterSpacing:F

.field private expandedLineCount:I

.field private expandedShadowColor:Landroid/content/res/ColorStateList;

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextBlend:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private expandedTypefaceBold:Landroid/graphics/Typeface;

.field private expandedTypefaceDefault:Landroid/graphics/Typeface;

.field private fadeModeEnabled:Z

.field private fadeModeStartFraction:F

.field private fadeModeThresholdFraction:F

.field private hyphenationFrequency:I

.field private isRtl:Z

.field private isRtlTextDirectionHeuristicsEnabled:Z

.field private lineSpacingAdd:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

.field private text:Ljava/lang/CharSequence;

.field private textLayout:Landroid/text/StaticLayout;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;

.field private textToDrawCollapsed:Ljava/lang/CharSequence;

.field private texturePaint:Landroid/graphics/Paint;

.field private titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private final tmpPaint:Landroid/text/TextPaint;

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 76
    sput-boolean v0, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    #@3
    const/4 v0, 0x0

    #@4
    .line 86
    sput-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    #@0
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x10

    #@5
    .line 104
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    #@7
    .line 105
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    #@9
    const/high16 v0, 0x41700000    # 15.0f

    #@b
    .line 106
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@d
    .line 107
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@f
    .line 128
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@11
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@13
    const/4 v0, 0x1

    #@14
    .line 133
    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    #@16
    .line 175
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    #@18
    const/4 v0, 0x0

    #@19
    .line 176
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    #@1b
    const/high16 v0, 0x3f800000    # 1.0f

    #@1d
    .line 177
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    #@1f
    .line 178
    sget v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    #@21
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    #@23
    .line 182
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@25
    .line 184
    new-instance v0, Landroid/text/TextPaint;

    #@27
    const/16 v1, 0x81

    #@29
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    #@2c
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@2e
    .line 185
    new-instance v1, Landroid/text/TextPaint;

    #@30
    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    #@33
    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    #@35
    .line 187
    new-instance v0, Landroid/graphics/Rect;

    #@37
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3a
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@3c
    .line 188
    new-instance v0, Landroid/graphics/Rect;

    #@3e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@41
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@43
    .line 189
    new-instance v0, Landroid/graphics/RectF;

    #@45
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@48
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    #@4a
    .line 191
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeThresholdFraction()F

    #@4d
    move-result v0

    #@4e
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    #@50
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@53
    move-result-object p1

    #@54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@57
    move-result-object p1

    #@58
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@5b
    move-result-object p1

    #@5c
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    #@5f
    return-void
.end method

.method private static blendARGB(IIF)I
    .registers 8

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    sub-float/2addr v0, p2

    #@3
    .line 1275
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@6
    move-result v1

    #@7
    int-to-float v1, v1

    #@8
    mul-float/2addr v1, v0

    #@9
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@c
    move-result v2

    #@d
    int-to-float v2, v2

    #@e
    mul-float/2addr v2, p2

    #@f
    add-float/2addr v1, v2

    #@10
    .line 1276
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@13
    move-result v2

    #@14
    int-to-float v2, v2

    #@15
    mul-float/2addr v2, v0

    #@16
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    #@19
    move-result v3

    #@1a
    int-to-float v3, v3

    #@1b
    mul-float/2addr v3, p2

    #@1c
    add-float/2addr v2, v3

    #@1d
    .line 1277
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@20
    move-result v3

    #@21
    int-to-float v3, v3

    #@22
    mul-float/2addr v3, v0

    #@23
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    #@26
    move-result v4

    #@27
    int-to-float v4, v4

    #@28
    mul-float/2addr v4, p2

    #@29
    add-float/2addr v3, v4

    #@2a
    .line 1278
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@2d
    move-result p0

    #@2e
    int-to-float p0, p0

    #@2f
    mul-float/2addr p0, v0

    #@30
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    #@33
    move-result p1

    #@34
    int-to-float p1, p1

    #@35
    mul-float/2addr p1, p2

    #@36
    add-float/2addr p0, p1

    #@37
    .line 1279
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@3a
    move-result p1

    #@3b
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@3e
    move-result p2

    #@3f
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@42
    move-result v0

    #@43
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@46
    move-result p0

    #@47
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    #@4a
    move-result p0

    #@4b
    return p0
.end method

.method private calculateBaseOffsets(Z)V
    .registers 11

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    .line 721
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    #@5
    .line 722
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    #@7
    if-eqz v0, :cond_1c

    #@9
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@b
    if-eqz v1, :cond_1c

    #@d
    .line 723
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@f
    .line 724
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    #@12
    move-result v1

    #@13
    int-to-float v1, v1

    #@14
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@16
    invoke-static {v0, v2, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    #@1c
    .line 726
    :cond_1c
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    #@1e
    const/4 v1, 0x0

    #@1f
    if-eqz v0, :cond_2a

    #@21
    .line 727
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@23
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    #@26
    move-result v0

    #@27
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@29
    goto :goto_2c

    #@2a
    .line 729
    :cond_2a
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@2c
    .line 731
    :goto_2c
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    #@2e
    .line 734
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@30
    .line 732
    invoke-static {v0, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@33
    move-result v0

    #@34
    and-int/lit8 v2, v0, 0x70

    #@36
    const/16 v3, 0x50

    #@38
    const/16 v4, 0x30

    #@3a
    const/high16 v5, 0x40000000    # 2.0f

    #@3c
    if-eq v2, v4, :cond_68

    #@3e
    if-eq v2, v3, :cond_59

    #@40
    .line 745
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@42
    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    #@45
    move-result v2

    #@46
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@48
    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    #@4b
    move-result v6

    #@4c
    sub-float/2addr v2, v6

    #@4d
    div-float/2addr v2, v5

    #@4e
    .line 746
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@50
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    #@53
    move-result v6

    #@54
    int-to-float v6, v6

    #@55
    sub-float/2addr v6, v2

    #@56
    iput v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    #@58
    goto :goto_6f

    #@59
    .line 738
    :cond_59
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@5b
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@5d
    int-to-float v2, v2

    #@5e
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@60
    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    #@63
    move-result v6

    #@64
    add-float/2addr v2, v6

    #@65
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    #@67
    goto :goto_6f

    #@68
    .line 741
    :cond_68
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@6a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@6c
    int-to-float v2, v2

    #@6d
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    #@6f
    :goto_6f
    const v2, 0x800007

    #@72
    and-int/2addr v0, v2

    #@73
    const/4 v6, 0x5

    #@74
    const/4 v7, 0x1

    #@75
    if-eq v0, v7, :cond_8c

    #@77
    if-eq v0, v6, :cond_81

    #@79
    .line 759
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@7b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@7d
    int-to-float v0, v0

    #@7e
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    #@80
    goto :goto_99

    #@81
    .line 755
    :cond_81
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@83
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@85
    int-to-float v0, v0

    #@86
    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@88
    sub-float/2addr v0, v8

    #@89
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    #@8b
    goto :goto_99

    #@8c
    .line 752
    :cond_8c
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@8e
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    #@91
    move-result v0

    #@92
    int-to-float v0, v0

    #@93
    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@95
    div-float/2addr v8, v5

    #@96
    sub-float/2addr v0, v8

    #@97
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    #@99
    .line 763
    :goto_99
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    #@9c
    .line 764
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@9e
    if-eqz p1, :cond_a6

    #@a0
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    #@a3
    move-result p1

    #@a4
    int-to-float p1, p1

    #@a5
    goto :goto_a7

    #@a6
    :cond_a6
    move p1, v1

    #@a7
    .line 766
    :goto_a7
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@a9
    if-eqz v0, :cond_b5

    #@ab
    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    #@ad
    if-le v8, v7, :cond_b5

    #@af
    .line 767
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    #@b2
    move-result v0

    #@b3
    int-to-float v1, v0

    #@b4
    goto :goto_bf

    #@b5
    .line 768
    :cond_b5
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    #@b7
    if-eqz v0, :cond_bf

    #@b9
    .line 769
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@bb
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    #@be
    move-result v1

    #@bf
    .line 771
    :cond_bf
    :goto_bf
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@c1
    if-eqz v0, :cond_c8

    #@c3
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    #@c6
    move-result v0

    #@c7
    goto :goto_c9

    #@c8
    :cond_c8
    const/4 v0, 0x0

    #@c9
    :goto_c9
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLineCount:I

    #@cb
    .line 773
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    #@cd
    .line 776
    iget-boolean v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@cf
    .line 774
    invoke-static {v0, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@d2
    move-result v0

    #@d3
    and-int/lit8 v8, v0, 0x70

    #@d5
    if-eq v8, v4, :cond_f5

    #@d7
    if-eq v8, v3, :cond_e5

    #@d9
    div-float/2addr p1, v5

    #@da
    .line 787
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@dc
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    #@df
    move-result v3

    #@e0
    int-to-float v3, v3

    #@e1
    sub-float/2addr v3, p1

    #@e2
    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    #@e4
    goto :goto_fc

    #@e5
    .line 779
    :cond_e5
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@e7
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@e9
    int-to-float v3, v3

    #@ea
    sub-float/2addr v3, p1

    #@eb
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@ed
    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    #@f0
    move-result p1

    #@f1
    add-float/2addr v3, p1

    #@f2
    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    #@f4
    goto :goto_fc

    #@f5
    .line 782
    :cond_f5
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@f7
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@f9
    int-to-float p1, p1

    #@fa
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    #@fc
    :goto_fc
    and-int p1, v0, v2

    #@fe
    if-eq p1, v7, :cond_113

    #@100
    if-eq p1, v6, :cond_10a

    #@102
    .line 800
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@104
    iget p1, p1, Landroid/graphics/Rect;->left:I

    #@106
    int-to-float p1, p1

    #@107
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    #@109
    goto :goto_11e

    #@10a
    .line 796
    :cond_10a
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@10c
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@10e
    int-to-float p1, p1

    #@10f
    sub-float/2addr p1, v1

    #@110
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    #@112
    goto :goto_11e

    #@113
    .line 793
    :cond_113
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@115
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    #@118
    move-result p1

    #@119
    int-to-float p1, p1

    #@11a
    div-float/2addr v1, v5

    #@11b
    sub-float/2addr p1, v1

    #@11c
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    #@11e
    .line 805
    :goto_11e
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    #@121
    .line 807
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    #@123
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    #@126
    return-void
.end method

.method private calculateCurrentOffsets()V
    .registers 2

    #@0
    .line 603
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    #@5
    return-void
.end method

.method private calculateFadeModeTextAlpha(F)F
    .registers 6

    #@0
    .line 681
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    #@2
    cmpg-float v1, p1, v0

    #@4
    const/4 v2, 0x0

    #@5
    const/high16 v3, 0x3f800000    # 1.0f

    #@7
    if-gtz v1, :cond_10

    #@9
    .line 682
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    #@b
    invoke-static {v3, v2, v1, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    #@e
    move-result p1

    #@f
    return p1

    #@10
    .line 689
    :cond_10
    invoke-static {v2, v3, v0, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    #@13
    move-result p1

    #@14
    return p1
.end method

.method private calculateFadeModeThresholdFraction()F
    .registers 4

    #@0
    .line 336
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    sub-float/2addr v1, v0

    #@5
    const/high16 v2, 0x3f000000    # 0.5f

    #@7
    mul-float/2addr v1, v2

    #@8
    add-float/2addr v0, v1

    #@9
    return v0
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .registers 4

    #@0
    .line 947
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isDefaultIsRtl()Z

    #@3
    move-result v0

    #@4
    .line 948
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    #@6
    if-eqz v1, :cond_c

    #@8
    .line 949
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isTextDirectionHeuristicsIsRtl(Ljava/lang/CharSequence;Z)Z

    #@b
    move-result v0

    #@c
    :cond_c
    return v0
.end method

.method private calculateOffsets(F)V
    .registers 7

    #@0
    .line 607
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->interpolateBounds(F)V

    #@3
    .line 609
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    #@5
    const/4 v1, 0x0

    #@6
    const/high16 v2, 0x3f800000    # 1.0f

    #@8
    if-eqz v0, :cond_33

    #@a
    .line 610
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    #@c
    cmpg-float v0, p1, v0

    #@e
    if-gez v0, :cond_1d

    #@10
    .line 612
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    #@12
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    #@14
    .line 613
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    #@16
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    #@18
    .line 615
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    #@1b
    move v0, v1

    #@1c
    goto :goto_4f

    #@1d
    .line 618
    :cond_1d
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    #@1f
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    #@21
    .line 619
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    #@23
    const/4 v3, 0x0

    #@24
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    #@26
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v3

    #@2a
    int-to-float v3, v3

    #@2b
    sub-float/2addr v0, v3

    #@2c
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    #@2e
    .line 621
    invoke-direct {p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    #@31
    move v0, v2

    #@32
    goto :goto_4f

    #@33
    .line 625
    :cond_33
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    #@35
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    #@37
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    #@39
    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    #@3f
    .line 626
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    #@41
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    #@43
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    #@45
    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@48
    move-result v0

    #@49
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    #@4b
    .line 628
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    #@4e
    move v0, p1

    #@4f
    :goto_4f
    sub-float v3, v2, p1

    #@51
    .line 631
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@53
    .line 632
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@56
    move-result v3

    #@57
    sub-float v3, v2, v3

    #@59
    .line 631
    invoke-direct {p0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextBlend(F)V

    #@5c
    .line 633
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@5e
    invoke-static {v2, v1, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@61
    move-result v1

    #@62
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextBlend(F)V

    #@65
    .line 635
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@67
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@69
    if-eq v1, v2, :cond_7d

    #@6b
    .line 638
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@6d
    .line 640
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    #@70
    move-result v2

    #@71
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    #@74
    move-result v3

    #@75
    .line 639
    invoke-static {v2, v3, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(IIF)I

    #@78
    move-result v0

    #@79
    .line 638
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    #@7c
    goto :goto_86

    #@7d
    .line 642
    :cond_7d
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@7f
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    #@82
    move-result v1

    #@83
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    #@86
    .line 646
    :goto_86
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    #@88
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    #@8a
    cmpl-float v2, v0, v1

    #@8c
    if-eqz v2, :cond_9a

    #@8e
    .line 647
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@90
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@92
    .line 648
    invoke-static {v1, v0, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@95
    move-result v0

    #@96
    .line 647
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    #@99
    goto :goto_9f

    #@9a
    .line 654
    :cond_9a
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@9c
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    #@9f
    .line 659
    :goto_9f
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    #@a1
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    #@a3
    const/4 v2, 0x0

    #@a4
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@a7
    move-result v0

    #@a8
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    #@aa
    .line 660
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    #@ac
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    #@ae
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@b1
    move-result v0

    #@b2
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    #@b4
    .line 661
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    #@b6
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    #@b8
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@bb
    move-result v0

    #@bc
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    #@be
    .line 662
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    #@c0
    .line 664
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    #@c3
    move-result v0

    #@c4
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    #@c6
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    #@c9
    move-result v1

    #@ca
    .line 663
    invoke-static {v0, v1, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(IIF)I

    #@cd
    move-result v0

    #@ce
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    #@d0
    .line 665
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@d2
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    #@d4
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    #@d6
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    #@d8
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    #@db
    .line 668
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    #@dd
    if-eqz v0, :cond_f1

    #@df
    .line 669
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@e1
    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    #@e4
    move-result v0

    #@e5
    .line 672
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeTextAlpha(F)F

    #@e8
    move-result p1

    #@e9
    int-to-float v0, v0

    #@ea
    mul-float/2addr p1, v0

    #@eb
    float-to-int p1, p1

    #@ec
    .line 674
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@ee
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    #@f1
    .line 677
    :cond_f1
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@f3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@f6
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 979
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    #@4
    return-void
.end method

.method private calculateUsingTextSize(FZ)V
    .registers 13

    #@0
    .line 984
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 988
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@a
    move-result v0

    #@b
    int-to-float v0, v0

    #@c
    .line 989
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@11
    move-result v1

    #@12
    int-to-float v1, v1

    #@13
    const/high16 v2, 0x3f800000    # 1.0f

    #@15
    .line 996
    invoke-static {p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    #@18
    move-result v3

    #@19
    const/4 v4, 0x0

    #@1a
    if-eqz v3, :cond_25

    #@1c
    .line 997
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@1e
    .line 998
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    #@20
    .line 999
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    #@22
    .line 1000
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    #@24
    goto :goto_5c

    #@25
    .line 1003
    :cond_25
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@27
    .line 1004
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    #@29
    .line 1005
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    #@2b
    .line 1006
    invoke-static {p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_34

    #@31
    .line 1008
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    #@33
    goto :goto_43

    #@34
    .line 1011
    :cond_34
    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@36
    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@38
    iget-object v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    #@3a
    .line 1012
    invoke-static {v7, v8, p1, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@3d
    move-result p1

    #@3e
    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@40
    div-float/2addr p1, v7

    #@41
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    #@43
    .line 1016
    :goto_43
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@45
    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@47
    div-float/2addr p1, v7

    #@48
    mul-float v7, v1, p1

    #@4a
    if-eqz p2, :cond_51

    #@4c
    :cond_4c
    move v0, v1

    #@4d
    :goto_4d
    move p1, v3

    #@4e
    move p2, v5

    #@4f
    move-object v1, v6

    #@50
    goto :goto_5c

    #@51
    :cond_51
    cmpl-float p2, v7, v0

    #@53
    if-lez p2, :cond_4c

    #@55
    div-float/2addr v0, p1

    #@56
    .line 1033
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@59
    move-result p1

    #@5a
    move v0, p1

    #@5b
    goto :goto_4d

    #@5c
    :goto_5c
    cmpl-float v3, v0, v4

    #@5e
    const/4 v4, 0x1

    #@5f
    const/4 v5, 0x0

    #@60
    if-lez v3, :cond_b0

    #@62
    .line 1040
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    #@64
    cmpl-float v3, v3, p1

    #@66
    if-eqz v3, :cond_6a

    #@68
    move v3, v4

    #@69
    goto :goto_6b

    #@6a
    :cond_6a
    move v3, v5

    #@6b
    .line 1041
    :goto_6b
    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    #@6d
    cmpl-float v6, v6, p2

    #@6f
    if-eqz v6, :cond_73

    #@71
    move v6, v4

    #@72
    goto :goto_74

    #@73
    :cond_73
    move v6, v5

    #@74
    .line 1042
    :goto_74
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    #@76
    if-eq v7, v1, :cond_7a

    #@78
    move v7, v4

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    move v7, v5

    #@7b
    .line 1043
    :goto_7b
    iget-object v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@7d
    if-eqz v8, :cond_8a

    #@7f
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getWidth()I

    #@82
    move-result v8

    #@83
    int-to-float v8, v8

    #@84
    cmpl-float v8, v0, v8

    #@86
    if-eqz v8, :cond_8a

    #@88
    move v8, v4

    #@89
    goto :goto_8b

    #@8a
    :cond_8a
    move v8, v5

    #@8b
    :goto_8b
    if-nez v3, :cond_9a

    #@8d
    if-nez v6, :cond_9a

    #@8f
    if-nez v8, :cond_9a

    #@91
    if-nez v7, :cond_9a

    #@93
    .line 1044
    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    #@95
    if-eqz v3, :cond_98

    #@97
    goto :goto_9a

    #@98
    :cond_98
    move v3, v5

    #@99
    goto :goto_9b

    #@9a
    :cond_9a
    :goto_9a
    move v3, v4

    #@9b
    .line 1050
    :goto_9b
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    #@9d
    .line 1051
    iput p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    #@9f
    .line 1052
    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    #@a1
    .line 1053
    iput-boolean v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    #@a3
    .line 1055
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@a5
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    #@a7
    cmpl-float p2, p2, v2

    #@a9
    if-eqz p2, :cond_ac

    #@ab
    move v5, v4

    #@ac
    :cond_ac
    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setLinearText(Z)V

    #@af
    move v5, v3

    #@b0
    .line 1060
    :cond_b0
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    #@b2
    if-eqz p1, :cond_b6

    #@b4
    if-eqz v5, :cond_e9

    #@b6
    .line 1061
    :cond_b6
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@b8
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    #@ba
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    #@bd
    .line 1062
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@bf
    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    #@c1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@c4
    .line 1064
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@c6
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    #@c8
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    #@cb
    .line 1067
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    #@cd
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    #@d0
    move-result p1

    #@d1
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@d3
    .line 1068
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->shouldDrawMultiline()Z

    #@d6
    move-result p1

    #@d7
    if-eqz p1, :cond_db

    #@d9
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    #@db
    :cond_db
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@dd
    invoke-direct {p0, v4, v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->createStaticLayout(IFZ)Landroid/text/StaticLayout;

    #@e0
    move-result-object p1

    #@e1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@e3
    .line 1069
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    #@e6
    move-result-object p1

    #@e7
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    #@e9
    :cond_e9
    return-void
.end method

.method private clearTexture()V
    .registers 2

    #@0
    .line 1167
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 1168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@7
    const/4 v0, 0x0

    #@8
    .line 1169
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    #@a
    :cond_a
    return-void
.end method

.method private createStaticLayout(IFZ)Landroid/text/StaticLayout;
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_6

    #@3
    .line 1077
    :try_start_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getMultilineTextLayoutAlignment()Landroid/text/Layout$Alignment;

    #@9
    move-result-object v0

    #@a
    .line 1078
    :goto_a
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    #@c
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@e
    float-to-int p2, p2

    #@f
    .line 1079
    invoke-static {v1, v2, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@12
    move-result-object p2

    #@13
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@15
    .line 1080
    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@18
    move-result-object p2

    #@19
    .line 1081
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setIsRtl(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@1c
    move-result-object p2

    #@1d
    .line 1082
    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@20
    move-result-object p2

    #@21
    const/4 p3, 0x0

    #@22
    .line 1083
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setIncludePad(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@25
    move-result-object p2

    #@26
    .line 1084
    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setMaxLines(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@29
    move-result-object p1

    #@2a
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    #@2c
    iget p3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    #@2e
    .line 1085
    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setLineSpacing(FF)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@31
    move-result-object p1

    #@32
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    #@34
    .line 1086
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setHyphenationFrequency(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@37
    move-result-object p1

    #@38
    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    #@3a
    .line 1087
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@3d
    move-result-object p1

    #@3e
    .line 1088
    invoke-virtual {p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->build()Landroid/text/StaticLayout;

    #@41
    move-result-object p1
    :try_end_42
    .catch Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_3 .. :try_end_42} :catch_43

    #@42
    goto :goto_52

    #@43
    :catch_43
    move-exception p1

    #@44
    .line 1090
    invoke-virtual {p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;->getCause()Ljava/lang/Throwable;

    #@47
    move-result-object p2

    #@48
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@4b
    move-result-object p2

    #@4c
    const-string p3, "CollapsingTextHelper"

    #@4e
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    const/4 p1, 0x0

    #@52
    .line 1093
    :goto_52
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object p1

    #@56
    check-cast p1, Landroid/text/StaticLayout;

    #@58
    return-object p1
.end method

.method private drawMultilineTransition(Landroid/graphics/Canvas;FF)V
    .registers 17

    #@0
    move-object v0, p0

    #@1
    .line 885
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@3
    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    #@6
    move-result v1

    #@7
    .line 887
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@a
    .line 889
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@c
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    #@e
    int-to-float v4, v1

    #@f
    mul-float/2addr v3, v4

    #@10
    float-to-int v3, v3

    #@11
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    #@14
    .line 894
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@16
    const/16 v3, 0x1f

    #@18
    if-lt v2, v3, :cond_2f

    #@1a
    .line 895
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@1c
    iget v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    #@1e
    iget v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    #@20
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    #@22
    iget v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    #@24
    .line 899
    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    #@27
    move-result v9

    #@28
    invoke-static {v8, v9}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    #@2b
    move-result v8

    #@2c
    .line 895
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    #@2f
    .line 901
    :cond_2f
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@31
    move-object v12, p1

    #@32
    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    #@35
    .line 904
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@37
    iget v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    #@39
    mul-float/2addr v5, v4

    #@3a
    float-to-int v4, v5

    #@3b
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    #@3e
    .line 906
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@40
    if-lt v2, v3, :cond_57

    #@42
    .line 907
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@44
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    #@46
    iget v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    #@48
    iget v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    #@4a
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    #@4c
    .line 911
    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    #@4f
    move-result v8

    #@50
    invoke-static {v7, v8}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    #@53
    move-result v7

    #@54
    .line 907
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    #@57
    .line 913
    :cond_57
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@59
    const/4 v4, 0x0

    #@5a
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    #@5d
    move-result v2

    #@5e
    .line 914
    iget-object v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    #@60
    const/4 v7, 0x0

    #@61
    .line 917
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    #@64
    move-result v8

    #@65
    const/4 v9, 0x0

    #@66
    int-to-float v2, v2

    #@67
    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@69
    move-object v5, p1

    #@6a
    move v10, v2

    #@6b
    .line 914
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    #@6e
    .line 923
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@70
    if-lt v5, v3, :cond_7f

    #@72
    .line 924
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@74
    iget v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    #@76
    iget v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    #@78
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    #@7a
    iget v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    #@7c
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    #@7f
    .line 928
    :cond_7f
    iget-boolean v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    #@81
    if-nez v3, :cond_bc

    #@83
    .line 930
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    #@85
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    const-string v5, "\u2026"

    #@8f
    .line 931
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@92
    move-result v5

    #@93
    if-eqz v5, :cond_9f

    #@95
    .line 932
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@98
    move-result v5

    #@99
    add-int/lit8 v5, v5, -0x1

    #@9b
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9e
    move-result-object v3

    #@9f
    :cond_9f
    move-object v6, v3

    #@a0
    .line 935
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@a2
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    #@a5
    const/4 v7, 0x0

    #@a6
    .line 936
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@a8
    .line 939
    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    #@ab
    move-result v1

    #@ac
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@af
    move-result v3

    #@b0
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@b3
    move-result v8

    #@b4
    const/4 v9, 0x0

    #@b5
    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@b7
    move-object v5, p1

    #@b8
    move v10, v2

    #@b9
    .line 936
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    #@bc
    :cond_bc
    return-void
.end method

.method private ensureExpandedTexture()V
    .registers 4

    #@0
    .line 1112
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    #@2
    if-nez v0, :cond_4a

    #@4
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@6
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_4a

    #@c
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    #@e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_4a

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    .line 1116
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    #@19
    .line 1117
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@1b
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    #@1e
    move-result v0

    #@1f
    .line 1118
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@21
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    #@24
    move-result v1

    #@25
    if-lez v0, :cond_4a

    #@27
    if-gtz v1, :cond_2a

    #@29
    goto :goto_4a

    #@2a
    .line 1124
    :cond_2a
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@2c
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    #@32
    .line 1125
    new-instance v0, Landroid/graphics/Canvas;

    #@34
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    #@36
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@39
    .line 1126
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@3b
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    #@3e
    .line 1128
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    #@40
    if-nez v0, :cond_4a

    #@42
    .line 1130
    new-instance v0, Landroid/graphics/Paint;

    #@44
    const/4 v1, 0x3

    #@45
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@48
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    #@4a
    :cond_4a
    :goto_4a
    return-void
.end method

.method private getCollapsedTextLeftBound(II)F
    .registers 5

    #@0
    const/16 v0, 0x11

    #@2
    if-eq p2, v0, :cond_3c

    #@4
    and-int/lit8 v0, p2, 0x7

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_a

    #@9
    goto :goto_3c

    #@a
    :cond_a
    const p1, 0x800005

    #@d
    and-int v0, p2, p1

    #@f
    if-eq v0, p1, :cond_29

    #@11
    const/4 p1, 0x5

    #@12
    and-int/2addr p2, p1

    #@13
    if-ne p2, p1, :cond_16

    #@15
    goto :goto_29

    #@16
    .line 292
    :cond_16
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@18
    if-eqz p1, :cond_23

    #@1a
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@1c
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@1e
    int-to-float p1, p1

    #@1f
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@21
    sub-float/2addr p1, p2

    #@22
    goto :goto_28

    #@23
    :cond_23
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@25
    iget p1, p1, Landroid/graphics/Rect;->left:I

    #@27
    int-to-float p1, p1

    #@28
    :goto_28
    return p1

    #@29
    .line 290
    :cond_29
    :goto_29
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@2b
    if-eqz p1, :cond_33

    #@2d
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@2f
    iget p1, p1, Landroid/graphics/Rect;->left:I

    #@31
    int-to-float p1, p1

    #@32
    goto :goto_3b

    #@33
    :cond_33
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@35
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@37
    int-to-float p1, p1

    #@38
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@3a
    sub-float/2addr p1, p2

    #@3b
    :goto_3b
    return p1

    #@3c
    :cond_3c
    :goto_3c
    int-to-float p1, p1

    #@3d
    const/high16 p2, 0x40000000    # 2.0f

    #@3f
    div-float/2addr p1, p2

    #@40
    .line 287
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@42
    div-float/2addr v0, p2

    #@43
    sub-float/2addr p1, v0

    #@44
    return p1
.end method

.method private getCollapsedTextRightBound(Landroid/graphics/RectF;II)F
    .registers 6

    #@0
    const/16 v0, 0x11

    #@2
    if-eq p3, v0, :cond_36

    #@4
    and-int/lit8 v0, p3, 0x7

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_a

    #@9
    goto :goto_36

    #@a
    :cond_a
    const p2, 0x800005

    #@d
    and-int v0, p3, p2

    #@f
    if-eq v0, p2, :cond_26

    #@11
    const/4 p2, 0x5

    #@12
    and-int/2addr p3, p2

    #@13
    if-ne p3, p2, :cond_16

    #@15
    goto :goto_26

    #@16
    .line 304
    :cond_16
    iget-boolean p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@18
    if-eqz p2, :cond_20

    #@1a
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@1c
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@1e
    int-to-float p1, p1

    #@1f
    goto :goto_25

    #@20
    :cond_20
    iget p1, p1, Landroid/graphics/RectF;->left:F

    #@22
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@24
    add-float/2addr p1, p2

    #@25
    :goto_25
    return p1

    #@26
    .line 302
    :cond_26
    :goto_26
    iget-boolean p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@28
    if-eqz p2, :cond_30

    #@2a
    iget p1, p1, Landroid/graphics/RectF;->left:F

    #@2c
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@2e
    add-float/2addr p1, p2

    #@2f
    goto :goto_35

    #@30
    :cond_30
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@32
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@34
    int-to-float p1, p1

    #@35
    :goto_35
    return p1

    #@36
    :cond_36
    :goto_36
    int-to-float p1, p2

    #@37
    const/high16 p2, 0x40000000    # 2.0f

    #@39
    div-float/2addr p1, p2

    #@3a
    .line 299
    iget p3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    #@3c
    div-float/2addr p3, p2

    #@3d
    add-float/2addr p1, p3

    #@3e
    return p1
.end method

.method private getCurrentColor(Landroid/content/res/ColorStateList;)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 713
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 714
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@b
    move-result p1

    #@c
    return p1

    #@d
    .line 716
    :cond_d
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@10
    move-result p1

    #@11
    return p1
.end method

.method private getCurrentExpandedTextColor()I
    .registers 2

    #@0
    .line 700
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getMultilineTextLayoutAlignment()Landroid/text/Layout$Alignment;
    .registers 3

    #@0
    .line 1097
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    #@2
    .line 1100
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@4
    .line 1098
    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    and-int/lit8 v0, v0, 0x7

    #@a
    const/4 v1, 0x1

    #@b
    if-eq v0, v1, :cond_24

    #@d
    const/4 v1, 0x5

    #@e
    if-eq v0, v1, :cond_1a

    #@10
    .line 1107
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@12
    if-eqz v0, :cond_17

    #@14
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@16
    goto :goto_19

    #@17
    :cond_17
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@19
    :goto_19
    return-object v0

    #@1a
    .line 1105
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@1c
    if-eqz v0, :cond_21

    #@1e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@20
    goto :goto_23

    #@21
    :cond_21
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@23
    :goto_23
    return-object v0

    #@24
    .line 1103
    :cond_24
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@26
    return-object v0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .registers 3

    #@0
    .line 353
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    #@5
    .line 354
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    #@7
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@a
    .line 356
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    #@c
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    #@f
    return-void
.end method

.method private getTextPaintExpanded(Landroid/text/TextPaint;)V
    .registers 3

    #@0
    .line 345
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    #@5
    .line 346
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    #@7
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@a
    .line 348
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    #@c
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    #@f
    return-void
.end method

.method private interpolateBounds(F)V
    .registers 6

    #@0
    .line 815
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 816
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    #@6
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    #@8
    cmpg-float p1, p1, v1

    #@a
    if-gez p1, :cond_f

    #@c
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@e
    goto :goto_11

    #@f
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@11
    :goto_11
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@14
    goto :goto_5f

    #@15
    .line 818
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    #@17
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@19
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@1b
    int-to-float v1, v1

    #@1c
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@1e
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@20
    int-to-float v2, v2

    #@21
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    #@23
    .line 819
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/graphics/RectF;->left:F

    #@29
    .line 820
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    #@2b
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    #@2d
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    #@2f
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    #@31
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@34
    move-result v1

    #@35
    iput v1, v0, Landroid/graphics/RectF;->top:F

    #@37
    .line 821
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    #@39
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@3b
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@3d
    int-to-float v1, v1

    #@3e
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@40
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@42
    int-to-float v2, v2

    #@43
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    #@45
    .line 822
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@48
    move-result v1

    #@49
    iput v1, v0, Landroid/graphics/RectF;->right:F

    #@4b
    .line 823
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    #@4d
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@4f
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@51
    int-to-float v1, v1

    #@52
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@54
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@56
    int-to-float v2, v2

    #@57
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    #@59
    .line 824
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    #@5c
    move-result p1

    #@5d
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    #@5f
    :goto_5f
    return-void
.end method

.method private static isClose(FF)Z
    .registers 2

    #@0
    sub-float/2addr p0, p1

    #@1
    .line 1247
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@4
    move-result p0

    #@5
    const p1, 0x3727c5ac    # 1.0E-5f

    #@8
    cmpg-float p0, p0, p1

    #@a
    if-gez p0, :cond_e

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

.method private isDefaultIsRtl()Z
    .registers 3

    #@0
    .line 954
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_a

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    :goto_b
    return v1
.end method

.method private isTextDirectionHeuristicsIsRtl(Ljava/lang/CharSequence;Z)Z
    .registers 5

    #@0
    if-eqz p2, :cond_5

    #@2
    .line 959
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@4
    goto :goto_7

    #@5
    .line 960
    :cond_5
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@7
    :goto_7
    const/4 v0, 0x0

    #@8
    .line 961
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v1

    #@c
    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@f
    move-result p1

    #@10
    return p1
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .registers 4

    #@0
    if-eqz p3, :cond_6

    #@2
    .line 1285
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@5
    move-result p2

    #@6
    .line 1287
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    #@9
    move-result p0

    #@a
    return p0
.end method

.method private measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 811
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p1, p2, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    #@8
    move-result p1

    #@9
    return p1
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .registers 6

    #@0
    .line 1291
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    if-ne v0, p1, :cond_12

    #@4
    iget p1, p0, Landroid/graphics/Rect;->top:I

    #@6
    if-ne p1, p2, :cond_12

    #@8
    iget p1, p0, Landroid/graphics/Rect;->right:I

    #@a
    if-ne p1, p3, :cond_12

    #@c
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    #@e
    if-ne p0, p4, :cond_12

    #@10
    const/4 p0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    :goto_13
    return p0
.end method

.method private setCollapsedTextBlend(F)V
    .registers 2

    #@0
    .line 829
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    #@2
    .line 830
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@4
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@7
    return-void
.end method

.method private setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .registers 3

    #@0
    .line 485
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 486
    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    #@7
    .line 488
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    #@9
    if-eq v0, p1, :cond_29

    #@b
    .line 489
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    #@d
    .line 490
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@f
    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1a
    move-result-object v0

    #@1b
    .line 491
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@1e
    move-result-object p1

    #@1f
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    #@21
    if-nez p1, :cond_25

    #@23
    .line 494
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    #@25
    :cond_25
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    #@27
    const/4 p1, 0x1

    #@28
    return p1

    #@29
    :cond_29
    const/4 p1, 0x0

    #@2a
    return p1
.end method

.method private setExpandedTextBlend(F)V
    .registers 2

    #@0
    .line 834
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    #@2
    .line 835
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@4
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@7
    return-void
.end method

.method private setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .registers 3

    #@0
    .line 504
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 505
    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    #@7
    .line 507
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    #@9
    if-eq v0, p1, :cond_29

    #@b
    .line 508
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    #@d
    .line 509
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@f
    .line 511
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1a
    move-result-object v0

    #@1b
    .line 510
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@1e
    move-result-object p1

    #@1f
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    #@21
    if-nez p1, :cond_25

    #@23
    .line 513
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    #@25
    :cond_25
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    #@27
    const/4 p1, 0x1

    #@28
    return p1

    #@29
    :cond_29
    const/4 p1, 0x0

    #@2a
    return p1
.end method

.method private setInterpolatedTextSize(F)V
    .registers 3

    #@0
    .line 965
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    #@3
    .line 968
    sget-boolean p1, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    #@5
    if-eqz p1, :cond_11

    #@7
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    #@9
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    cmpl-float p1, p1, v0

    #@d
    if-eqz p1, :cond_11

    #@f
    const/4 p1, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    :goto_12
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    #@14
    if-eqz p1, :cond_19

    #@16
    .line 972
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->ensureExpandedTexture()V

    #@19
    .line 975
    :cond_19
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@1b
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@1e
    return-void
.end method

.method private shouldDrawMultiline()Z
    .registers 3

    #@0
    .line 881
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    #@2
    const/4 v1, 0x1

    #@3
    if-le v0, v1, :cond_12

    #@5
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@7
    if-eqz v0, :cond_d

    #@9
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    #@b
    if-eqz v0, :cond_12

    #@d
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    #@f
    if-nez v0, :cond_12

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v1, 0x0

    #@13
    :goto_13
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    #@0
    .line 839
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    move-result v0

    #@4
    .line 841
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    #@6
    if-eqz v1, :cond_7b

    #@8
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    #@a
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@d
    move-result v1

    #@e
    const/4 v2, 0x0

    #@f
    cmpl-float v1, v1, v2

    #@11
    if-lez v1, :cond_7b

    #@13
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    #@15
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@18
    move-result v1

    #@19
    cmpl-float v1, v1, v2

    #@1b
    if-lez v1, :cond_7b

    #@1d
    .line 842
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    #@1f
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    #@21
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    #@24
    .line 843
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    #@26
    .line 844
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    #@28
    .line 845
    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    #@2a
    const/4 v4, 0x0

    #@2b
    if-eqz v3, :cond_33

    #@2d
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    #@2f
    if-eqz v3, :cond_33

    #@31
    const/4 v3, 0x1

    #@32
    goto :goto_34

    #@33
    :cond_33
    move v3, v4

    #@34
    .line 857
    :goto_34
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    #@36
    const/high16 v6, 0x3f800000    # 1.0f

    #@38
    cmpl-float v6, v5, v6

    #@3a
    if-eqz v6, :cond_43

    #@3c
    iget-boolean v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    #@3e
    if-nez v6, :cond_43

    #@40
    .line 858
    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    #@43
    :cond_43
    if-eqz v3, :cond_50

    #@45
    .line 863
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    #@47
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    #@49
    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@4c
    .line 864
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@4f
    return-void

    #@50
    .line 868
    :cond_50
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->shouldDrawMultiline()Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_70

    #@56
    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    #@58
    if-eqz v3, :cond_62

    #@5a
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    #@5c
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    #@5e
    cmpl-float v3, v3, v5

    #@60
    if-lez v3, :cond_70

    #@62
    .line 870
    :cond_62
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    #@64
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@66
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    #@69
    move-result v3

    #@6a
    int-to-float v3, v3

    #@6b
    sub-float/2addr v1, v3

    #@6c
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->drawMultilineTransition(Landroid/graphics/Canvas;FF)V

    #@6f
    goto :goto_78

    #@70
    .line 872
    :cond_70
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@73
    .line 873
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@75
    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    #@78
    .line 876
    :goto_78
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@7b
    :cond_7b
    return-void
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;II)V
    .registers 6

    #@0
    .line 276
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    #@8
    .line 277
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextLeftBound(II)F

    #@b
    move-result v0

    #@c
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@e
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@10
    int-to-float v1, v1

    #@11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@14
    move-result v0

    #@15
    iput v0, p1, Landroid/graphics/RectF;->left:F

    #@17
    .line 278
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@19
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@1b
    int-to-float v0, v0

    #@1c
    iput v0, p1, Landroid/graphics/RectF;->top:F

    #@1e
    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextRightBound(Landroid/graphics/RectF;II)F

    #@21
    move-result p2

    #@22
    iget-object p3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@24
    iget p3, p3, Landroid/graphics/Rect;->right:I

    #@26
    int-to-float p3, p3

    #@27
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    #@2a
    move-result p2

    #@2b
    iput p2, p1, Landroid/graphics/RectF;->right:F

    #@2d
    .line 281
    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@2f
    iget p2, p2, Landroid/graphics/Rect;->top:I

    #@31
    int-to-float p2, p2

    #@32
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    #@35
    move-result p3

    #@36
    add-float/2addr p2, p3

    #@37
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    #@39
    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1255
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .registers 2

    #@0
    .line 379
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    #@2
    return v0
.end method

.method public getCollapsedTextHeight()F
    .registers 2

    #@0
    .line 321
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    #@5
    .line 323
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    #@7
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    #@a
    move-result v0

    #@b
    neg-float v0, v0

    #@c
    return v0
.end method

.method public getCollapsedTextSize()F
    .registers 2

    #@0
    .line 587
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@2
    return v0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 520
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_7

    #@5
    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@7
    :goto_7
    return-object v0
.end method

.method public getCurrentCollapsedTextColor()I
    .registers 2

    #@0
    .line 705
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getExpandedLineCount()I
    .registers 2

    #@0
    .line 1200
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLineCount:I

    #@2
    return v0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1251
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getExpandedTextFullHeight()F
    .registers 3

    #@0
    .line 315
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintExpanded(Landroid/text/TextPaint;)V

    #@5
    .line 317
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    #@7
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    #@a
    move-result v0

    #@b
    neg-float v0, v0

    #@c
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    #@e
    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    #@11
    move-result v1

    #@12
    add-float/2addr v0, v1

    #@13
    return v0
.end method

.method public getExpandedTextGravity()I
    .registers 2

    #@0
    .line 368
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    #@2
    return v0
.end method

.method public getExpandedTextHeight()F
    .registers 2

    #@0
    .line 309
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintExpanded(Landroid/text/TextPaint;)V

    #@5
    .line 311
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    #@7
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    #@a
    move-result v0

    #@b
    neg-float v0, v0

    #@c
    return v0
.end method

.method public getExpandedTextSize()F
    .registers 2

    #@0
    .line 591
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@2
    return v0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 524
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_7

    #@5
    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@7
    :goto_7
    return-object v0
.end method

.method public getExpansionFraction()F
    .registers 2

    #@0
    .line 583
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    #@2
    return v0
.end method

.method public getFadeModeThresholdFraction()F
    .registers 2

    #@0
    .line 579
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    #@2
    return v0
.end method

.method public getHyphenationFrequency()I
    .registers 2

    #@0
    .line 1230
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    #@2
    return v0
.end method

.method public getLineCount()I
    .registers 2

    #@0
    .line 1191
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getLineSpacingAdd()F
    .registers 2

    #@0
    .line 1210
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@2
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getSpacingAdd()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLineSpacingMultiplier()F
    .registers 2

    #@0
    .line 1220
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    #@2
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getSpacingMultiplier()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxLines()I
    .registers 2

    #@0
    .line 1182
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    #@2
    return v0
.end method

.method public getPositionInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    #@0
    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 1163
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleTextEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    #@0
    .line 458
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    return-object v0
.end method

.method public isRtlTextDirectionHeuristicsEnabled()Z
    .registers 2

    #@0
    .line 599
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    #@2
    return v0
.end method

.method public final isStateful()Z
    .registers 2

    #@0
    .line 574
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_14

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@c
    if-eqz v0, :cond_16

    #@e
    .line 575
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_16

    #@14
    :cond_14
    const/4 v0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    :goto_17
    return v0
.end method

.method public maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V
    .registers 4

    #@0
    .line 528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_30

    #@6
    .line 529
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    #@8
    if-eqz v0, :cond_10

    #@a
    .line 531
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    #@10
    .line 534
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    #@12
    if-eqz v0, :cond_1a

    #@14
    .line 536
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@17
    move-result-object p1

    #@18
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    #@1a
    .line 539
    :cond_1a
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    #@1c
    if-eqz p1, :cond_1f

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    #@21
    :goto_21
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    #@23
    .line 541
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    #@25
    if-eqz p1, :cond_28

    #@27
    goto :goto_2a

    #@28
    :cond_28
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    #@2a
    :goto_2a
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    #@2c
    const/4 p1, 0x1

    #@2d
    .line 542
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    #@30
    :cond_30
    return-void
.end method

.method public recalculate()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1135
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    #@4
    return-void
.end method

.method public recalculate(Z)V
    .registers 3

    #@0
    .line 1139
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_10

    #@8
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_12

    #@10
    :cond_10
    if-eqz p1, :cond_18

    #@12
    .line 1142
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateBaseOffsets(Z)V

    #@15
    .line 1143
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    #@18
    :cond_18
    return-void
.end method

.method public setCollapsedAndExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 239
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-ne v0, p1, :cond_8

    #@4
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@6
    if-eq v0, p1, :cond_f

    #@8
    .line 240
    :cond_8
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@a
    .line 241
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@c
    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@f
    :cond_f
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .registers 6

    #@0
    .line 265
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@2
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    .line 266
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    const/4 p1, 0x1

    #@e
    .line 267
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    #@10
    :cond_10
    return-void
.end method

.method public setCollapsedBounds(Landroid/graphics/Rect;)V
    .registers 5

    #@0
    .line 272
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    #@b
    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .registers 5

    #@0
    .line 383
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    #@2
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    #@b
    .line 385
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@e
    move-result-object p1

    #@f
    if-eqz p1, :cond_17

    #@11
    .line 386
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@14
    move-result-object p1

    #@15
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@17
    .line 388
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    #@1a
    move-result p1

    #@1b
    const/4 v1, 0x0

    #@1c
    cmpl-float p1, p1, v1

    #@1e
    if-eqz p1, :cond_26

    #@20
    .line 389
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    #@23
    move-result p1

    #@24
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@26
    .line 391
    :cond_26
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    #@28
    if-eqz p1, :cond_2e

    #@2a
    .line 392
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    #@2c
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    #@2e
    .line 394
    :cond_2e
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    #@30
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    #@32
    .line 395
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    #@34
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    #@36
    .line 396
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    #@38
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    #@3a
    .line 397
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    #@3c
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    #@3e
    .line 400
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    #@40
    if-eqz p1, :cond_45

    #@42
    .line 401
    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    #@45
    .line 403
    :cond_45
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    #@47
    new-instance v1, Lcom/google/android/material/internal/CollapsingTextHelper$1;

    #@49
    invoke-direct {v1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$1;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    #@4c
    .line 411
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    #@4f
    move-result-object v2

    #@50
    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    #@53
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    #@55
    .line 412
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5a
    move-result-object p1

    #@5b
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    #@5d
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    #@60
    .line 414
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@63
    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 225
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 226
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 227
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@9
    :cond_9
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .registers 3

    #@0
    .line 372
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 373
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    #@6
    .line 374
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@9
    :cond_9
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .registers 3

    #@0
    .line 218
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 219
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    #@8
    .line 220
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@b
    :cond_b
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    #@0
    .line 462
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@9
    :cond_9
    return-void
.end method

.method public setCurrentOffsetY(I)V
    .registers 2

    #@0
    .line 327
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    #@2
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .registers 6

    #@0
    .line 254
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@2
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    .line 255
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    const/4 p1, 0x1

    #@e
    .line 256
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    #@10
    :cond_10
    return-void
.end method

.method public setExpandedBounds(Landroid/graphics/Rect;)V
    .registers 5

    #@0
    .line 261
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    #@b
    return-void
.end method

.method public setExpandedLetterSpacing(F)V
    .registers 3

    #@0
    .line 247
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 248
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    #@8
    .line 249
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@b
    :cond_b
    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .registers 5

    #@0
    .line 418
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    #@2
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    #@b
    .line 419
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@e
    move-result-object p1

    #@f
    if-eqz p1, :cond_17

    #@11
    .line 420
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@14
    move-result-object p1

    #@15
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@17
    .line 422
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    #@1a
    move-result p1

    #@1b
    const/4 v1, 0x0

    #@1c
    cmpl-float p1, p1, v1

    #@1e
    if-eqz p1, :cond_26

    #@20
    .line 423
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    #@23
    move-result p1

    #@24
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@26
    .line 425
    :cond_26
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    #@28
    if-eqz p1, :cond_2e

    #@2a
    .line 426
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    #@2c
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    #@2e
    .line 428
    :cond_2e
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    #@30
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    #@32
    .line 429
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    #@34
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    #@36
    .line 430
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    #@38
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    #@3a
    .line 431
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    #@3c
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    #@3e
    .line 434
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    #@40
    if-eqz p1, :cond_45

    #@42
    .line 435
    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    #@45
    .line 437
    :cond_45
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    #@47
    new-instance v1, Lcom/google/android/material/internal/CollapsingTextHelper$2;

    #@49
    invoke-direct {v1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$2;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    #@4c
    .line 445
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    #@4f
    move-result-object v2

    #@50
    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    #@53
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    #@55
    .line 446
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    #@57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5a
    move-result-object p1

    #@5b
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    #@5d
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    #@60
    .line 448
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@63
    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 232
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 233
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@9
    :cond_9
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .registers 3

    #@0
    .line 361
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 362
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    #@6
    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@9
    :cond_9
    return-void
.end method

.method public setExpandedTextSize(F)V
    .registers 3

    #@0
    .line 211
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 212
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    #@8
    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@b
    :cond_b
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    #@0
    .line 468
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 469
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@9
    :cond_9
    return-void
.end method

.method public setExpansionFraction(F)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    .line 554
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    #@6
    move-result p1

    #@7
    .line 556
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    #@9
    cmpl-float v0, p1, v0

    #@b
    if-eqz v0, :cond_12

    #@d
    .line 557
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    #@f
    .line 558
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    #@12
    :cond_12
    return-void
.end method

.method public setFadeModeEnabled(Z)V
    .registers 2

    #@0
    .line 341
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    #@2
    return-void
.end method

.method public setFadeModeStartFraction(F)V
    .registers 2

    #@0
    .line 331
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    #@2
    .line 332
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeThresholdFraction()F

    #@5
    move-result p1

    #@6
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    #@8
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .registers 2

    #@0
    .line 1225
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    #@2
    return-void
.end method

.method public setLineSpacingAdd(F)V
    .registers 2

    #@0
    .line 1205
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    #@2
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .registers 2

    #@0
    .line 1215
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    #@2
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3

    #@0
    .line 1174
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    #@2
    if-eq p1, v0, :cond_c

    #@4
    .line 1175
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    #@6
    .line 1176
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    #@9
    .line 1177
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@c
    :cond_c
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    #@0
    .line 201
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@5
    return-void
.end method

.method public setRtlTextDirectionHeuristicsEnabled(Z)V
    .registers 2

    #@0
    .line 595
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    #@2
    return-void
.end method

.method public final setState([I)Z
    .registers 2

    #@0
    .line 563
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    #@2
    .line 565
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isStateful()Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_d

    #@8
    .line 566
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@b
    const/4 p1, 0x1

    #@c
    return p1

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    return p1
.end method

.method public setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)V
    .registers 3

    #@0
    .line 1236
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    #@2
    if-eq v0, p1, :cond_a

    #@4
    .line 1237
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    #@6
    const/4 p1, 0x1

    #@7
    .line 1238
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    #@a
    :cond_a
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    if-eqz p1, :cond_a

    #@2
    .line 1153
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    #@4
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_15

    #@a
    .line 1154
    :cond_a
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    #@c
    const/4 p1, 0x0

    #@d
    .line 1155
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    #@f
    .line 1156
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    #@12
    .line 1157
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@15
    :cond_15
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    #@0
    .line 196
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    .line 197
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@5
    return-void
.end method

.method public setTitleTextEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 2

    #@0
    .line 452
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    .line 453
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@5
    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .registers 3

    #@0
    .line 474
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    #@3
    move-result v0

    #@4
    .line 475
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    #@7
    move-result p1

    #@8
    if-nez v0, :cond_c

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 477
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@f
    :cond_f
    return-void
.end method
