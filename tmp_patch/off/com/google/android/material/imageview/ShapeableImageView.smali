.class public Lcom/google/android/material/imageview/ShapeableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ShapeableImageView.java"

# interfaces
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final UNDEFINED_PADDING:I = -0x80000000


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private bottomContentPadding:I

.field private final clearPaint:Landroid/graphics/Paint;

.field private final destination:Landroid/graphics/RectF;

.field private endContentPadding:I

.field private hasAdjustedPaddingAfterLayoutDirectionResolved:Z

.field private leftContentPadding:I

.field private maskPath:Landroid/graphics/Path;

.field private final maskRect:Landroid/graphics/RectF;

.field private final path:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private rightContentPadding:I

.field private shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private startContentPadding:I

.field private strokeColor:Landroid/content/res/ColorStateList;

.field private strokeWidth:F

.field private topContentPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 60
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ShapeableImageView:I

    #@2
    sput v0, Lcom/google/android/material/imageview/ShapeableImageView;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 88
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    #@0
    .line 96
    sget v0, Lcom/google/android/material/imageview/ShapeableImageView;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 65
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@c
    move-result-object p1

    #@d
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@f
    .line 70
    new-instance p1, Landroid/graphics/Path;

    #@11
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@14
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    #@16
    const/4 p1, 0x0

    #@17
    .line 85
    iput-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    #@19
    .line 98
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    .line 100
    new-instance v2, Landroid/graphics/Paint;

    #@1f
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@22
    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->clearPaint:Landroid/graphics/Paint;

    #@24
    const/4 v3, 0x1

    #@25
    .line 101
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@28
    const/4 v4, -0x1

    #@29
    .line 102
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@2c
    .line 103
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    #@2e
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@30
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@33
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@36
    .line 104
    new-instance v2, Landroid/graphics/RectF;

    #@38
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@3b
    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    #@3d
    .line 105
    new-instance v2, Landroid/graphics/RectF;

    #@3f
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@42
    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    #@44
    .line 106
    new-instance v2, Landroid/graphics/Path;

    #@46
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    #@49
    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    #@4b
    .line 107
    sget-object v2, Lcom/google/android/material/R$styleable;->ShapeableImageView:[I

    #@4d
    .line 108
    invoke-virtual {v1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@50
    move-result-object v2

    #@51
    const/4 v4, 0x2

    #@52
    const/4 v5, 0x0

    #@53
    .line 111
    invoke-virtual {p0, v4, v5}, Lcom/google/android/material/imageview/ShapeableImageView;->setLayerType(ILandroid/graphics/Paint;)V

    #@56
    .line 113
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_strokeColor:I

    #@58
    .line 114
    invoke-static {v1, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@5b
    move-result-object v4

    #@5c
    iput-object v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    #@5e
    .line 117
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_strokeWidth:I

    #@60
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@63
    move-result v4

    #@64
    int-to-float v4, v4

    #@65
    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    #@67
    .line 120
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPadding:I

    #@69
    .line 121
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@6c
    move-result p1

    #@6d
    .line 122
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    #@6f
    .line 123
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    #@71
    .line 124
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    #@73
    .line 125
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    #@75
    .line 128
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingLeft:I

    #@77
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@7a
    move-result v4

    #@7b
    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    #@7d
    .line 130
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingTop:I

    #@7f
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@82
    move-result v4

    #@83
    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    #@85
    .line 132
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingRight:I

    #@87
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@8a
    move-result v4

    #@8b
    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    #@8d
    .line 134
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingBottom:I

    #@8f
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@92
    move-result p1

    #@93
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    #@95
    .line 138
    sget p1, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingStart:I

    #@97
    const/high16 v4, -0x80000000

    #@99
    invoke-virtual {v2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@9c
    move-result p1

    #@9d
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    #@9f
    .line 140
    sget p1, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingEnd:I

    #@a1
    invoke-virtual {v2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@a4
    move-result p1

    #@a5
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    #@a7
    .line 143
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@aa
    .line 145
    new-instance p1, Landroid/graphics/Paint;

    #@ac
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@af
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    #@b1
    .line 146
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@b3
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@b6
    .line 147
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@b9
    .line 149
    invoke-static {v1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@bc
    move-result-object p1

    #@bd
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@c0
    move-result-object p1

    #@c1
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@c3
    .line 151
    new-instance p1, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;

    #@c5
    invoke-direct {p1, p0}, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;-><init>(Lcom/google/android/material/imageview/ShapeableImageView;)V

    #@c8
    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@cb
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 1

    #@0
    .line 58
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 1

    #@0
    .line 58
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/shape/MaterialShapeDrawable;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    #@0
    .line 58
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/imageview/ShapeableImageView;)Landroid/graphics/RectF;
    .registers 1

    #@0
    .line 58
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    #@2
    return-object p0
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .registers 5

    #@0
    .line 481
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 485
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    #@7
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    #@9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@c
    .line 486
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    #@e
    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getDrawableState()[I

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    #@14
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1b
    move-result v0

    #@1c
    .line 489
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    #@1e
    const/4 v2, 0x0

    #@1f
    cmpl-float v1, v1, v2

    #@21
    if-lez v1, :cond_31

    #@23
    if-eqz v0, :cond_31

    #@25
    .line 490
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    #@27
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@2a
    .line 491
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    #@2c
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    #@2e
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@31
    :cond_31
    return-void
.end method

.method private isContentPaddingRelative()Z
    .registers 3

    #@0
    .line 252
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-ne v0, v1, :cond_d

    #@6
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    #@8
    if-eq v0, v1, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0
.end method

.method private isRtl()Z
    .registers 3

    #@0
    .line 342
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getLayoutDirection()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    :goto_9
    return v1
.end method

.method private updateShapeMask(II)V
    .registers 8

    #@0
    .line 469
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    #@2
    .line 470
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingLeft()I

    #@5
    move-result v1

    #@6
    int-to-float v1, v1

    #@7
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingTop()I

    #@a
    move-result v2

    #@b
    int-to-float v2, v2

    #@c
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingRight()I

    #@f
    move-result v3

    #@10
    sub-int v3, p1, v3

    #@12
    int-to-float v3, v3

    #@13
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingBottom()I

    #@16
    move-result v4

    #@17
    sub-int v4, p2, v4

    #@19
    int-to-float v4, v4

    #@1a
    .line 469
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@1d
    .line 471
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@1f
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@21
    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    #@23
    iget-object v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    #@25
    const/high16 v4, 0x3f800000    # 1.0f

    #@27
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    #@2a
    .line 473
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@2f
    .line 474
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    #@31
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    #@33
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    #@36
    .line 476
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    #@38
    int-to-float p1, p1

    #@39
    int-to-float p2, p2

    #@3a
    const/4 v1, 0x0

    #@3b
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    #@3e
    .line 477
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    #@40
    iget-object p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    #@42
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    #@44
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    #@47
    return-void
.end method


# virtual methods
.method public getContentPaddingBottom()I
    .registers 2

    #@0
    .line 262
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    #@2
    return v0
.end method

.method public final getContentPaddingEnd()I
    .registers 3

    #@0
    .line 273
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_7

    #@6
    return v0

    #@7
    .line 276
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_10

    #@d
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    #@f
    goto :goto_12

    #@10
    :cond_10
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    #@12
    :goto_12
    return v0
.end method

.method public getContentPaddingLeft()I
    .registers 3

    #@0
    .line 287
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isContentPaddingRelative()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1e

    #@6
    .line 288
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    #@9
    move-result v0

    #@a
    const/high16 v1, -0x80000000

    #@c
    if-eqz v0, :cond_13

    #@e
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    #@10
    if-eq v0, v1, :cond_13

    #@12
    return v0

    #@13
    .line 290
    :cond_13
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1e

    #@19
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    #@1b
    if-eq v0, v1, :cond_1e

    #@1d
    return v0

    #@1e
    .line 295
    :cond_1e
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    #@20
    return v0
.end method

.method public getContentPaddingRight()I
    .registers 3

    #@0
    .line 305
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isContentPaddingRelative()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1e

    #@6
    .line 306
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    #@9
    move-result v0

    #@a
    const/high16 v1, -0x80000000

    #@c
    if-eqz v0, :cond_13

    #@e
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    #@10
    if-eq v0, v1, :cond_13

    #@12
    return v0

    #@13
    .line 308
    :cond_13
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1e

    #@19
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    #@1b
    if-eq v0, v1, :cond_1e

    #@1d
    return v0

    #@1e
    .line 313
    :cond_1e
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    #@20
    return v0
.end method

.method public final getContentPaddingStart()I
    .registers 3

    #@0
    .line 324
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_7

    #@6
    return v0

    #@7
    .line 327
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_10

    #@d
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    #@f
    goto :goto_12

    #@10
    :cond_10
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    #@12
    :goto_12
    return v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    #@0
    .line 338
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    #@2
    return v0
.end method

.method public getPaddingBottom()I
    .registers 3

    #@0
    .line 391
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getPaddingEnd()I
    .registers 3

    #@0
    .line 402
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getPaddingLeft()I
    .registers 3

    #@0
    .line 413
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingLeft()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getPaddingRight()I
    .registers 3

    #@0
    .line 424
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingRight()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getPaddingStart()I
    .registers 3

    #@0
    .line 435
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getPaddingTop()I
    .registers 3

    #@0
    .line 446
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 465
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 517
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    #@0
    .line 559
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    #@2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    .line 188
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 189
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    #@5
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->clearPaint:Landroid/graphics/Paint;

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@a
    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->drawStroke(Landroid/graphics/Canvas;)V

    #@d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    #@0
    .line 157
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    #@3
    .line 158
    iget-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    #@5
    if-eqz p1, :cond_8

    #@7
    return-void

    #@8
    .line 162
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isLayoutDirectionResolved()Z

    #@b
    move-result p1

    #@c
    if-nez p1, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/4 p1, 0x1

    #@10
    .line 166
    iput-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    #@12
    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isPaddingRelative()Z

    #@15
    move-result p1

    #@16
    if-nez p1, :cond_33

    #@18
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isContentPaddingRelative()Z

    #@1b
    move-result p1

    #@1c
    if-eqz p1, :cond_1f

    #@1e
    goto :goto_33

    #@1f
    .line 180
    :cond_1f
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    #@22
    move-result p1

    #@23
    .line 181
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    #@26
    move-result p2

    #@27
    .line 182
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    #@2a
    move-result v0

    #@2b
    .line 183
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    #@2e
    move-result v1

    #@2f
    .line 179
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPadding(IIII)V

    #@32
    return-void

    #@33
    .line 172
    :cond_33
    :goto_33
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    #@36
    move-result p1

    #@37
    .line 173
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    #@3a
    move-result p2

    #@3b
    .line 174
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    #@3e
    move-result v0

    #@3f
    .line 175
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    #@42
    move-result v1

    #@43
    .line 171
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPaddingRelative(IIII)V

    #@46
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    #@3
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;->updateShapeMask(II)V

    #@6
    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 10

    #@0
    const/high16 v0, -0x80000000

    #@2
    .line 209
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    #@4
    .line 210
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    #@6
    .line 215
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    #@9
    move-result v0

    #@a
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    #@c
    sub-int/2addr v0, v1

    #@d
    add-int/2addr v0, p1

    #@e
    .line 216
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    #@11
    move-result v1

    #@12
    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    #@14
    sub-int/2addr v1, v2

    #@15
    add-int/2addr v1, p2

    #@16
    .line 217
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    #@19
    move-result v2

    #@1a
    iget v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    #@1c
    sub-int/2addr v2, v3

    #@1d
    add-int/2addr v2, p3

    #@1e
    .line 218
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    #@21
    move-result v3

    #@22
    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    #@24
    sub-int/2addr v3, v4

    #@25
    add-int/2addr v3, p4

    #@26
    .line 214
    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    #@29
    .line 220
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    #@2b
    .line 221
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    #@2d
    .line 222
    iput p3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    #@2f
    .line 223
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    #@31
    return-void
.end method

.method public setContentPaddingRelative(IIII)V
    .registers 10

    #@0
    .line 240
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    add-int/2addr v0, p1

    #@a
    .line 241
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    #@d
    move-result v1

    #@e
    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    #@10
    sub-int/2addr v1, v2

    #@11
    add-int/2addr v1, p2

    #@12
    .line 242
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    #@19
    move-result v3

    #@1a
    sub-int/2addr v2, v3

    #@1b
    add-int/2addr v2, p3

    #@1c
    .line 243
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    #@1f
    move-result v3

    #@20
    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    #@22
    sub-int/2addr v3, v4

    #@23
    add-int/2addr v3, p4

    #@24
    .line 239
    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPaddingRelative(IIII)V

    #@27
    .line 245
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2f

    #@2d
    move v0, p3

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move v0, p1

    #@30
    :goto_30
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    #@32
    .line 246
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    #@34
    .line 247
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    #@37
    move-result p2

    #@38
    if-eqz p2, :cond_3b

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    move p1, p3

    #@3c
    :goto_3c
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    #@3e
    .line 248
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    #@40
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    #@0
    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingLeft()I

    #@3
    move-result v0

    #@4
    add-int/2addr p1, v0

    #@5
    .line 359
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    #@8
    move-result v0

    #@9
    add-int/2addr p2, v0

    #@a
    .line 360
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingRight()I

    #@d
    move-result v0

    #@e
    add-int/2addr p3, v0

    #@f
    .line 361
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    #@12
    move-result v0

    #@13
    add-int/2addr p4, v0

    #@14
    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    #@17
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 6

    #@0
    .line 377
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    #@3
    move-result v0

    #@4
    add-int/2addr p1, v0

    #@5
    .line 378
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    #@8
    move-result v0

    #@9
    add-int/2addr p2, v0

    #@a
    .line 379
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    #@d
    move-result v0

    #@e
    add-int/2addr p3, v0

    #@f
    .line 380
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    #@12
    move-result v0

    #@13
    add-int/2addr p4, v0

    #@14
    .line 376
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setPaddingRelative(IIII)V

    #@17
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    #@0
    .line 451
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    .line 452
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 453
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@9
    .line 455
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getWidth()I

    #@c
    move-result p1

    #@d
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    #@10
    move-result v0

    #@11
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->updateShapeMask(II)V

    #@14
    .line 456
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    #@17
    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidateOutline()V

    #@1a
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 563
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    #@2
    .line 564
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    #@5
    return-void
.end method

.method public setStrokeColorResource(I)V
    .registers 3

    #@0
    .line 505
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@b
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    #@0
    .line 530
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 531
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    #@8
    .line 532
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    #@b
    :cond_b
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .registers 3

    #@0
    .line 546
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7
    move-result p1

    #@8
    int-to-float p1, p1

    #@9
    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    #@c
    return-void
.end method
