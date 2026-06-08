.class public Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field public static final ARROW_DIRECTION_END:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_RIGHT:I = 0x1

.field public static final ARROW_DIRECTION_START:I = 0x2

.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private mArrowHeadLength:F

.field private mArrowShaftLength:F

.field private mBarGap:F

.field private mBarLength:F

.field private mDirection:I

.field private mMaxCutForBarSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private mSpin:Z

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide v0, 0x4046800000000000L    # 45.0

    #@5
    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v0

    #@9
    double-to-float v0, v0

    #@a
    sput v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    #@c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    #@0
    .line 128
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 97
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    .line 113
    new-instance v1, Landroid/graphics/Path;

    #@c
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@f
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@11
    const/4 v1, 0x0

    #@12
    .line 117
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    #@14
    const/4 v2, 0x2

    #@15
    .line 123
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    #@17
    .line 129
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@19
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1c
    .line 130
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@1e
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@21
    .line 131
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    #@23
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@26
    const/4 v2, 0x1

    #@27
    .line 132
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@2a
    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@2d
    move-result-object p1

    #@2e
    sget-object v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle:[I

    #@30
    sget v3, Landroidx/appcompat/R$attr;->drawerArrowStyle:I

    #@32
    sget v4, Landroidx/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    #@34
    const/4 v5, 0x0

    #@35
    invoke-virtual {p1, v5, v0, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@38
    move-result-object p1

    #@39
    .line 138
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_color:I

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@3e
    move-result v0

    #@3f
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    #@42
    .line 139
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    #@44
    const/4 v3, 0x0

    #@45
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@48
    move-result v0

    #@49
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    #@4c
    .line 140
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    #@4e
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@51
    move-result v0

    #@52
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    #@55
    .line 142
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    #@57
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@5a
    move-result v0

    #@5b
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5e
    move-result v0

    #@5f
    int-to-float v0, v0

    #@60
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    #@63
    .line 144
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    #@65
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@68
    move-result v0

    #@69
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    #@6b
    .line 146
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    #@6d
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@70
    move-result v0

    #@71
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@74
    move-result v0

    #@75
    int-to-float v0, v0

    #@76
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    #@78
    .line 148
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    #@7a
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@7d
    move-result v0

    #@7e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@81
    move-result v0

    #@82
    int-to-float v0, v0

    #@83
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    #@85
    .line 150
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    #@87
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@8a
    move-result v0

    #@8b
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    #@8d
    .line 151
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@90
    return-void
.end method

.method private static lerp(FFF)F
    .registers 3

    #@0
    sub-float/2addr p1, p0

    #@1
    mul-float/2addr p1, p2

    #@2
    add-float/2addr p0, p1

    #@3
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    .line 326
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v2

    #@8
    .line 329
    iget v3, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    #@a
    const/4 v4, 0x0

    #@b
    const/4 v5, 0x1

    #@c
    if-eqz v3, :cond_21

    #@e
    if-eq v3, v5, :cond_20

    #@10
    const/4 v6, 0x3

    #@11
    if-eq v3, v6, :cond_1a

    #@13
    .line 342
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@16
    move-result v3

    #@17
    if-ne v3, v5, :cond_21

    #@19
    goto :goto_20

    #@1a
    .line 337
    :cond_1a
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_21

    #@20
    :cond_20
    :goto_20
    move v4, v5

    #@21
    .line 349
    :cond_21
    iget v3, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    #@23
    mul-float/2addr v3, v3

    #@24
    const/high16 v6, 0x40000000    # 2.0f

    #@26
    mul-float/2addr v3, v6

    #@27
    float-to-double v7, v3

    #@28
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    #@2b
    move-result-wide v7

    #@2c
    double-to-float v3, v7

    #@2d
    .line 350
    iget v7, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    #@2f
    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@31
    invoke-static {v7, v3, v8}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    #@34
    move-result v3

    #@35
    .line 351
    iget v7, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    #@37
    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    #@39
    iget v9, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@3b
    invoke-static {v7, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    #@3e
    move-result v7

    #@3f
    .line 353
    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    #@41
    iget v9, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@43
    const/4 v10, 0x0

    #@44
    invoke-static {v10, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    #@47
    move-result v8

    #@48
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    #@4b
    move-result v8

    #@4c
    int-to-float v8, v8

    #@4d
    .line 355
    sget v9, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    #@4f
    iget v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@51
    invoke-static {v10, v9, v11}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    #@54
    move-result v9

    #@55
    if-eqz v4, :cond_59

    #@57
    move v11, v10

    #@58
    goto :goto_5b

    #@59
    :cond_59
    const/high16 v11, -0x3ccc0000    # -180.0f

    #@5b
    :goto_5b
    const/high16 v12, 0x43340000    # 180.0f

    #@5d
    if-eqz v4, :cond_61

    #@5f
    move v13, v12

    #@60
    goto :goto_62

    #@61
    :cond_61
    move v13, v10

    #@62
    .line 359
    :goto_62
    iget v14, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@64
    .line 358
    invoke-static {v11, v13, v14}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    #@67
    move-result v11

    #@68
    float-to-double v13, v3

    #@69
    move v15, v11

    #@6a
    float-to-double v10, v9

    #@6b
    .line 361
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    #@6e
    move-result-wide v16

    #@6f
    mul-double v16, v16, v13

    #@71
    move v9, v4

    #@72
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    #@75
    move-result-wide v3

    #@76
    long-to-float v3, v3

    #@77
    .line 362
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    #@7a
    move-result-wide v10

    #@7b
    mul-double/2addr v13, v10

    #@7c
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    #@7f
    move-result-wide v10

    #@80
    long-to-float v4, v10

    #@81
    .line 364
    iget-object v10, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@83
    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    #@86
    .line 365
    iget v10, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    #@88
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@8a
    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@8d
    move-result v11

    #@8e
    add-float/2addr v10, v11

    #@8f
    iget v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    #@91
    neg-float v11, v11

    #@92
    iget v13, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@94
    invoke-static {v10, v11, v13}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    #@97
    move-result v10

    #@98
    neg-float v11, v7

    #@99
    div-float/2addr v11, v6

    #@9a
    .line 370
    iget-object v13, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@9c
    add-float v14, v11, v8

    #@9e
    const/4 v5, 0x0

    #@9f
    invoke-virtual {v13, v14, v5}, Landroid/graphics/Path;->moveTo(FF)V

    #@a2
    .line 371
    iget-object v13, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@a4
    mul-float/2addr v8, v6

    #@a5
    sub-float/2addr v7, v8

    #@a6
    invoke-virtual {v13, v7, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    #@a9
    .line 374
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@ab
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Path;->moveTo(FF)V

    #@ae
    .line 375
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@b0
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    #@b3
    .line 378
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@b5
    neg-float v7, v10

    #@b6
    invoke-virtual {v5, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    #@b9
    .line 379
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@bb
    neg-float v4, v4

    #@bc
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    #@bf
    .line 381
    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@c1
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    #@c4
    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@c7
    .line 387
    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@c9
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@cc
    move-result v3

    #@cd
    .line 388
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@d0
    move-result v4

    #@d1
    int-to-float v4, v4

    #@d2
    const/high16 v5, 0x40400000    # 3.0f

    #@d4
    mul-float/2addr v5, v3

    #@d5
    sub-float/2addr v4, v5

    #@d6
    iget v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    #@d8
    mul-float/2addr v6, v5

    #@d9
    sub-float/2addr v4, v6

    #@da
    float-to-int v4, v4

    #@db
    .line 389
    div-int/lit8 v4, v4, 0x4

    #@dd
    mul-int/lit8 v4, v4, 0x2

    #@df
    int-to-float v4, v4

    #@e0
    const/high16 v6, 0x3fc00000    # 1.5f

    #@e2
    mul-float/2addr v3, v6

    #@e3
    add-float/2addr v3, v5

    #@e4
    add-float/2addr v4, v3

    #@e5
    .line 392
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    #@e8
    move-result v2

    #@e9
    int-to-float v2, v2

    #@ea
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@ed
    .line 393
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    #@ef
    if-eqz v2, :cond_100

    #@f1
    .line 394
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    #@f3
    xor-int/2addr v2, v9

    #@f4
    if-eqz v2, :cond_f8

    #@f6
    const/4 v5, -0x1

    #@f7
    goto :goto_f9

    #@f8
    :cond_f8
    const/4 v5, 0x1

    #@f9
    :goto_f9
    int-to-float v2, v5

    #@fa
    mul-float v11, v15, v2

    #@fc
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    #@ff
    goto :goto_105

    #@100
    :cond_100
    if-eqz v9, :cond_105

    #@102
    .line 396
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    #@105
    .line 398
    :cond_105
    :goto_105
    iget-object v2, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    #@107
    iget-object v3, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@109
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@10c
    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@10f
    return-void
.end method

.method public getArrowHeadLength()F
    .registers 2

    #@0
    .line 171
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    #@2
    return v0
.end method

.method public getArrowShaftLength()F
    .registers 2

    #@0
    .line 190
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    #@2
    return v0
.end method

.method public getBarLength()F
    .registers 2

    #@0
    .line 197
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    #@2
    return v0
.end method

.method public getBarThickness()F
    .registers 2

    #@0
    .line 247
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getColor()I
    .registers 2

    #@0
    .line 227
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDirection()I
    .registers 2

    #@0
    .line 311
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    #@2
    return v0
.end method

.method public getGapSize()F
    .registers 2

    #@0
    .line 256
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    #@2
    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    #@0
    .line 419
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    #@0
    .line 424
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .registers 2

    #@0
    .line 458
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method public getProgress()F
    .registers 2

    #@0
    .line 437
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@2
    return v0
.end method

.method public isSpinEnabled()Z
    .registers 2

    #@0
    .line 289
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    #@2
    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 405
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@5
    move-result v0

    #@6
    if-eq p1, v0, :cond_10

    #@8
    .line 406
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@d
    .line 407
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@10
    :cond_10
    return-void
.end method

.method public setArrowHeadLength(F)V
    .registers 3

    #@0
    .line 160
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 161
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    #@8
    .line 162
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@b
    :cond_b
    return-void
.end method

.method public setArrowShaftLength(F)V
    .registers 3

    #@0
    .line 180
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 181
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    #@8
    .line 182
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@b
    :cond_b
    return-void
.end method

.method public setBarLength(F)V
    .registers 3

    #@0
    .line 206
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 207
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    #@8
    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@b
    :cond_b
    return-void
.end method

.method public setBarThickness(F)V
    .registers 6

    #@0
    .line 236
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@5
    move-result v0

    #@6
    cmpl-float v0, v0, p1

    #@8
    if-eqz v0, :cond_21

    #@a
    .line 237
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@c
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@f
    const/high16 v0, 0x40000000    # 2.0f

    #@11
    div-float/2addr p1, v0

    #@12
    float-to-double v0, p1

    #@13
    .line 238
    sget p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    #@15
    float-to-double v2, p1

    #@16
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@19
    move-result-wide v2

    #@1a
    mul-double/2addr v0, v2

    #@1b
    double-to-float p1, v0

    #@1c
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    #@1e
    .line 239
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@21
    :cond_21
    return-void
.end method

.method public setColor(I)V
    .registers 3

    #@0
    .line 216
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@5
    move-result v0

    #@6
    if-eq p1, v0, :cond_10

    #@8
    .line 217
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@d
    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@10
    :cond_10
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 413
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    .line 414
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@8
    return-void
.end method

.method public setDirection(I)V
    .registers 3

    #@0
    .line 277
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 278
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    #@6
    .line 279
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@9
    :cond_9
    return-void
.end method

.method public setGapSize(F)V
    .registers 3

    #@0
    .line 267
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 268
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    #@8
    .line 269
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@b
    :cond_b
    return-void
.end method

.method public setProgress(F)V
    .registers 3

    #@0
    .line 448
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 449
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    #@8
    .line 450
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@b
    :cond_b
    return-void
.end method

.method public setSpinEnabled(Z)V
    .registers 3

    #@0
    .line 300
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 301
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    #@6
    .line 302
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@9
    :cond_9
    return-void
.end method

.method public setVerticalMirror(Z)V
    .registers 3

    #@0
    .line 318
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 319
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    #@6
    .line 320
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    #@9
    :cond_9
    return-void
.end method
