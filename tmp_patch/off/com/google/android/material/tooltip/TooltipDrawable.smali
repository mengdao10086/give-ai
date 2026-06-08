.class public Lcom/google/android/material/tooltip/TooltipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "TooltipDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# static fields
.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I


# instance fields
.field private arrowSize:I

.field private final attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final context:Landroid/content/Context;

.field private final displayFrame:Landroid/graphics/Rect;

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private labelOpacity:F

.field private layoutMargin:I

.field private locationOnScreenX:I

.field private minHeight:I

.field private minWidth:I

.field private padding:I

.field private text:Ljava/lang/CharSequence;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

.field private final tooltipPivotX:F

.field private tooltipPivotY:F

.field private tooltipScaleX:F

.field private tooltipScaleY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 69
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    #@2
    sput v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    #@4
    .line 70
    sget v0, Lcom/google/android/material/R$attr;->tooltipStyle:I

    #@6
    sput v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    #@8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    #@0
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 74
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    #@5
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    #@8
    iput-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    #@a
    .line 76
    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    #@c
    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    #@f
    iput-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@11
    .line 80
    new-instance p3, Lcom/google/android/material/tooltip/TooltipDrawable$1;

    #@13
    invoke-direct {p3, p0}, Lcom/google/android/material/tooltip/TooltipDrawable$1;-><init>(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    #@16
    iput-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@18
    .line 98
    new-instance p3, Landroid/graphics/Rect;

    #@1a
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    #@1f
    const/high16 p3, 0x3f800000    # 1.0f

    #@21
    .line 107
    iput p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    #@23
    .line 108
    iput p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    #@25
    const/high16 p4, 0x3f000000    # 0.5f

    #@27
    .line 109
    iput p4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotX:F

    #@29
    .line 110
    iput p4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    #@2b
    .line 111
    iput p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    #@2d
    .line 144
    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@2f
    .line 145
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@32
    move-result-object p3

    #@33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3a
    move-result-object p1

    #@3b
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    #@3d
    iput p1, p3, Landroid/text/TextPaint;->density:F

    #@3f
    .line 146
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@42
    move-result-object p1

    #@43
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@45
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/tooltip/TooltipDrawable;Landroid/view/View;)V
    .registers 2

    #@0
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->updateLocationOnScreen(Landroid/view/View;)V

    #@3
    return-void
.end method

.method private calculatePointerOffset()F
    .registers 3

    #@0
    .line 470
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v1

    #@8
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@a
    sub-int/2addr v0, v1

    #@b
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    #@d
    sub-int/2addr v0, v1

    #@e
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    #@10
    sub-int/2addr v0, v1

    #@11
    if-gez v0, :cond_26

    #@13
    .line 471
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    #@15
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@17
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@1a
    move-result-object v1

    #@1b
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@1d
    sub-int/2addr v0, v1

    #@1e
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    #@20
    sub-int/2addr v0, v1

    #@21
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    #@23
    sub-int/2addr v0, v1

    #@24
    :goto_24
    int-to-float v0, v0

    #@25
    goto :goto_4c

    #@26
    .line 472
    :cond_26
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    #@28
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@2a
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@2d
    move-result-object v1

    #@2e
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@30
    sub-int/2addr v0, v1

    #@31
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    #@33
    sub-int/2addr v0, v1

    #@34
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    #@36
    add-int/2addr v0, v1

    #@37
    if-lez v0, :cond_4b

    #@39
    .line 473
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    #@3b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@3d
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@40
    move-result-object v1

    #@41
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@43
    sub-int/2addr v0, v1

    #@44
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    #@46
    sub-int/2addr v0, v1

    #@47
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    #@49
    add-int/2addr v0, v1

    #@4a
    goto :goto_24

    #@4b
    :cond_4b
    const/4 v0, 0x0

    #@4c
    :goto_4c
    return v0
.end method

.method private calculateTextCenterFromBaseline()F
    .registers 3

    #@0
    .line 530
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    #@8
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    #@b
    .line 531
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    #@d
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    #@f
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    #@11
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    #@13
    add-float/2addr v0, v1

    #@14
    const/high16 v1, 0x40000000    # 2.0f

    #@16
    div-float/2addr v0, v1

    #@17
    return v0
.end method

.method private calculateTextOriginAndAlignment(Landroid/graphics/Rect;)F
    .registers 3

    #@0
    .line 514
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    #@3
    move-result p1

    #@4
    int-to-float p1, p1

    #@5
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculateTextCenterFromBaseline()F

    #@8
    move-result v0

    #@9
    sub-float/2addr p1, v0

    #@a
    return p1
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 4

    #@0
    .line 135
    sget v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    #@2
    sget v1, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 4

    #@0
    .line 130
    sget v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    #@2
    sget v1, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    #@4
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 5

    #@0
    .line 120
    new-instance v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/tooltip/TooltipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 121
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/tooltip/TooltipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    #@8
    return-object v0
.end method

.method private createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 8

    #@0
    .line 479
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculatePointerOffset()F

    #@3
    move-result v0

    #@4
    neg-float v0, v0

    #@5
    .line 481
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v1

    #@d
    int-to-double v1, v1

    #@e
    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    #@10
    int-to-double v3, v3

    #@11
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    #@13
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    #@16
    move-result-wide v5

    #@17
    mul-double/2addr v3, v5

    #@18
    sub-double/2addr v1, v3

    #@19
    double-to-float v1, v1

    #@1a
    const/high16 v2, 0x40000000    # 2.0f

    #@1c
    div-float/2addr v1, v2

    #@1d
    neg-float v2, v1

    #@1e
    .line 482
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    #@21
    move-result v0

    #@22
    .line 483
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@25
    move-result v0

    #@26
    .line 484
    new-instance v1, Lcom/google/android/material/shape/OffsetEdgeTreatment;

    #@28
    new-instance v2, Lcom/google/android/material/shape/MarkerEdgeTreatment;

    #@2a
    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    #@2c
    int-to-float v3, v3

    #@2d
    invoke-direct {v2, v3}, Lcom/google/android/material/shape/MarkerEdgeTreatment;-><init>(F)V

    #@30
    invoke-direct {v1, v2, v0}, Lcom/google/android/material/shape/OffsetEdgeTreatment;-><init>(Lcom/google/android/material/shape/EdgeTreatment;F)V

    #@33
    return-object v1
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .registers 13

    #@0
    .line 488
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 493
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@8
    move-result-object v0

    #@9
    .line 494
    invoke-direct {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;)F

    #@c
    move-result v1

    #@d
    float-to-int v1, v1

    #@e
    .line 496
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@10
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@13
    move-result-object v2

    #@14
    if-eqz v2, :cond_38

    #@16
    .line 497
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@18
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getState()[I

    #@1f
    move-result-object v3

    #@20
    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    #@22
    .line 498
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@24
    iget-object v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@26
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    #@29
    .line 499
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2b
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@2e
    move-result-object v2

    #@2f
    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    #@31
    const/high16 v4, 0x437f0000    # 255.0f

    #@33
    mul-float/2addr v3, v4

    #@34
    float-to-int v3, v3

    #@35
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    #@38
    .line 502
    :cond_38
    iget-object v5, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    #@3a
    const/4 v6, 0x0

    #@3b
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    #@3e
    move-result v7

    #@3f
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    #@42
    move-result v0

    #@43
    int-to-float v8, v0

    #@44
    int-to-float v9, v1

    #@45
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@47
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@4a
    move-result-object v10

    #@4b
    move-object v4, p1

    #@4c
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    #@4f
    return-void
.end method

.method private getTextWidth()F
    .registers 3

    #@0
    .line 506
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 509
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    #@f
    move-result v0

    #@10
    return v0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .registers 11

    #@0
    .line 151
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@2
    sget-object v2, Lcom/google/android/material/R$styleable;->Tooltip:[I

    #@4
    const/4 v6, 0x0

    #@5
    new-array v5, v6, [I

    #@7
    move-object v1, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    .line 152
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@d
    move-result-object p1

    #@e
    .line 155
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object p2

    #@14
    sget p3, Lcom/google/android/material/R$dimen;->mtrl_tooltip_arrowSize:I

    #@16
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@19
    move-result p2

    #@1a
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    #@1c
    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@1f
    move-result-object p2

    #@20
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@23
    move-result-object p2

    #@24
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;

    #@27
    move-result-object p3

    #@28
    invoke-virtual {p2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@2b
    move-result-object p2

    #@2c
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2f
    move-result-object p2

    #@30
    .line 156
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@33
    .line 159
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_text:I

    #@35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@38
    move-result-object p2

    #@39
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    #@3c
    .line 160
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@3e
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_android_textAppearance:I

    #@40
    invoke-static {p2, p1, p3}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    #@43
    move-result-object p2

    #@44
    if-eqz p2, :cond_59

    #@46
    .line 162
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    #@48
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@4b
    move-result p3

    #@4c
    if-eqz p3, :cond_59

    #@4e
    .line 163
    iget-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@50
    sget v0, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    #@52
    .line 164
    invoke-static {p3, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@55
    move-result-object p3

    #@56
    .line 163
    invoke-virtual {p2, p3}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@59
    .line 166
    :cond_59
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    #@5c
    .line 168
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@5e
    sget p3, Lcom/google/android/material/R$attr;->colorOnBackground:I

    #@60
    .line 170
    const-class v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@62
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    .line 169
    invoke-static {p2, p3, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    #@69
    move-result p2

    #@6a
    .line 171
    iget-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@6c
    const v1, 0x1010031

    #@6f
    .line 173
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    .line 172
    invoke-static {p3, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    #@76
    move-result p3

    #@77
    const/16 v1, 0xe5

    #@79
    .line 177
    invoke-static {p3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@7c
    move-result p3

    #@7d
    const/16 v1, 0x99

    #@7f
    .line 178
    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@82
    move-result p2

    #@83
    .line 176
    invoke-static {p3, p2}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    #@86
    move-result p2

    #@87
    .line 179
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_backgroundTint:I

    #@89
    .line 181
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@8c
    move-result p2

    #@8d
    .line 180
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@90
    move-result-object p2

    #@91
    .line 179
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@94
    .line 183
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@96
    sget p3, Lcom/google/android/material/R$attr;->colorSurface:I

    #@98
    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    .line 185
    invoke-static {p2, p3, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    #@9f
    move-result p2

    #@a0
    .line 184
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@a3
    move-result-object p2

    #@a4
    .line 183
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@a7
    .line 188
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_padding:I

    #@a9
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@ac
    move-result p2

    #@ad
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    #@af
    .line 189
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_minWidth:I

    #@b1
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@b4
    move-result p2

    #@b5
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    #@b7
    .line 190
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_minHeight:I

    #@b9
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@bc
    move-result p2

    #@bd
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    #@bf
    .line 191
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_layout_margin:I

    #@c1
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@c4
    move-result p2

    #@c5
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    #@c7
    .line 193
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@ca
    return-void
.end method

.method private updateLocationOnScreen(Landroid/view/View;)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 463
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@6
    const/4 v1, 0x0

    #@7
    aget v0, v0, v1

    #@9
    .line 464
    iput v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    #@b
    .line 465
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@10
    return-void
.end method


# virtual methods
.method public detachView(Landroid/view/View;)V
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 396
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@5
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@8
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    #@0
    .line 411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 415
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculatePointerOffset()F

    #@6
    move-result v0

    #@7
    .line 419
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    #@9
    int-to-double v1, v1

    #@a
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    #@c
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    #@f
    move-result-wide v3

    #@10
    mul-double/2addr v1, v3

    #@11
    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    #@13
    int-to-double v3, v3

    #@14
    sub-double/2addr v1, v3

    #@15
    neg-double v1, v1

    #@16
    double-to-float v1, v1

    #@17
    .line 423
    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    #@19
    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    #@1b
    .line 426
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@1e
    move-result-object v4

    #@1f
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@21
    int-to-float v4, v4

    #@22
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@29
    move-result v5

    #@2a
    int-to-float v5, v5

    #@2b
    const/high16 v6, 0x3f000000    # 0.5f

    #@2d
    mul-float/2addr v5, v6

    #@2e
    add-float/2addr v4, v5

    #@2f
    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@32
    move-result-object v5

    #@33
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@35
    int-to-float v5, v5

    #@36
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@3d
    move-result v6

    #@3e
    int-to-float v6, v6

    #@3f
    iget v7, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    #@41
    mul-float/2addr v6, v7

    #@42
    add-float/2addr v5, v6

    #@43
    .line 423
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    #@46
    .line 429
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@49
    .line 432
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    #@4c
    .line 435
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->drawText(Landroid/graphics/Canvas;)V

    #@4f
    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@52
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 3

    #@0
    .line 406
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    #@9
    move-result v0

    #@a
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    #@c
    int-to-float v1, v1

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@10
    move-result v0

    #@11
    float-to-int v0, v0

    #@12
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    #@0
    .line 401
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    #@2
    mul-int/lit8 v0, v0, 0x2

    #@4
    int-to-float v0, v0

    #@5
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getTextWidth()F

    #@8
    move-result v1

    #@9
    add-float/2addr v0, v1

    #@a
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    #@c
    int-to-float v1, v1

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@10
    move-result v0

    #@11
    float-to-int v0, v0

    #@12
    return v0
.end method

.method public getLayoutMargin()I
    .registers 2

    #@0
    .line 335
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    #@2
    return v0
.end method

.method public getMinHeight()I
    .registers 2

    #@0
    .line 291
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    #@2
    return v0
.end method

.method public getMinWidth()I
    .registers 2

    #@0
    .line 269
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    #@2
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 203
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    #@0
    .line 239
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextPadding()I
    .registers 2

    #@0
    .line 313
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    #@2
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 442
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@6
    move-result-object p1

    #@7
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@a
    move-result-object p1

    #@b
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@16
    move-result-object p1

    #@17
    .line 446
    invoke-virtual {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@1a
    return-void
.end method

.method public onStateChange([I)Z
    .registers 2

    #@0
    .line 453
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public onTextSizeChange()V
    .registers 1

    #@0
    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    #@3
    return-void
.end method

.method public setLayoutMargin(I)V
    .registers 2

    #@0
    .line 346
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    #@2
    .line 347
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setMinHeight(I)V
    .registers 2

    #@0
    .line 302
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    #@2
    .line 303
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setMinWidth(I)V
    .registers 2

    #@0
    .line 280
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    #@2
    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setRelativeToView(Landroid/view/View;)V
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 382
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->updateLocationOnScreen(Landroid/view/View;)V

    #@6
    .line 384
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@8
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@b
    return-void
.end method

.method public setRevealFraction(F)V
    .registers 5

    #@0
    const v0, 0x3f99999a    # 1.2f

    #@3
    .line 365
    iput v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    #@5
    .line 366
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    #@7
    .line 367
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    #@9
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    const v1, 0x3e428f5c    # 0.19f

    #@e
    const/4 v2, 0x0

    #@f
    .line 368
    invoke-static {v2, v0, v1, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    #@12
    move-result p1

    #@13
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    #@15
    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    #@18
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 225
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    .line 226
    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    #@a
    .line 227
    iget-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@c
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    #@10
    .line 228
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    #@13
    :cond_13
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 4

    #@0
    .line 259
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    #@7
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .registers 4

    #@0
    .line 249
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    #@2
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    #@a
    return-void
.end method

.method public setTextPadding(I)V
    .registers 2

    #@0
    .line 324
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    #@2
    .line 325
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setTextResource(I)V
    .registers 3

    #@0
    .line 214
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    #@d
    return-void
.end method
