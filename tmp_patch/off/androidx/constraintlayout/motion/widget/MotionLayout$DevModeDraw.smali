.class Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevModeDraw"
.end annotation


# static fields
.field private static final DEBUG_PATH_TICKS_PER_MS:I = 0x10


# instance fields
.field final DIAMOND_SIZE:I

.field final GRAPH_COLOR:I

.field final KEYFRAME_COLOR:I

.field final RED_COLOR:I

.field final SHADOW_COLOR:I

.field mBounds:Landroid/graphics/Rect;

.field mDashPathEffect:Landroid/graphics/DashPathEffect;

.field mFillPaint:Landroid/graphics/Paint;

.field mKeyFrameCount:I

.field mKeyFramePoints:[F

.field mPaint:Landroid/graphics/Paint;

.field mPaintGraph:Landroid/graphics/Paint;

.field mPaintKeyframes:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field mPathMode:[I

.field mPoints:[F

.field mPresentationMode:Z

.field private mRectangle:[F

.field mShadowTranslate:I

.field mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    #@0
    .line 3133
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/16 v0, -0x55cd

    #@7
    .line 3122
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->RED_COLOR:I

    #@9
    const v1, -0x1f8a66

    #@c
    .line 3123
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->KEYFRAME_COLOR:I

    #@e
    const v2, -0xcc5600

    #@11
    .line 3124
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->GRAPH_COLOR:I

    #@13
    const/high16 v3, 0x77000000

    #@15
    .line 3125
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->SHADOW_COLOR:I

    #@17
    const/16 v3, 0xa

    #@19
    .line 3126
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->DIAMOND_SIZE:I

    #@1b
    .line 3129
    new-instance v3, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@20
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    #@22
    const/4 v3, 0x0

    #@23
    .line 3130
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPresentationMode:Z

    #@25
    const/4 v3, 0x1

    #@26
    .line 3131
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mShadowTranslate:I

    #@28
    .line 3134
    new-instance v4, Landroid/graphics/Paint;

    #@2a
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #@2d
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@2f
    .line 3135
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@32
    .line 3136
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@34
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@37
    .line 3137
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@39
    const/high16 v4, 0x40000000    # 2.0f

    #@3b
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@3e
    .line 3138
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@40
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@42
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@45
    .line 3140
    new-instance v0, Landroid/graphics/Paint;

    #@47
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@4a
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@4c
    .line 3141
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@4f
    .line 3142
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@54
    .line 3143
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@56
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@59
    .line 3144
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@5b
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@5d
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@60
    .line 3146
    new-instance v0, Landroid/graphics/Paint;

    #@62
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@65
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@67
    .line 3147
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@6a
    .line 3148
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@6c
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@6f
    .line 3149
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@71
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@74
    .line 3150
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@76
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@78
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@7b
    .line 3152
    new-instance v0, Landroid/graphics/Paint;

    #@7d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@80
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@82
    .line 3153
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@85
    .line 3154
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@87
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@8a
    .line 3155
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@8c
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@8f
    move-result-object p1

    #@90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@93
    move-result-object p1

    #@94
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@97
    move-result-object p1

    #@98
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    #@9a
    const/high16 v1, 0x41400000    # 12.0f

    #@9c
    mul-float/2addr p1, v1

    #@9d
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    #@a0
    const/16 p1, 0x8

    #@a2
    new-array p1, p1, [F

    #@a4
    .line 3156
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    #@a6
    .line 3157
    new-instance p1, Landroid/graphics/Paint;

    #@a8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@ab
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    #@ad
    .line 3158
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@b0
    .line 3159
    new-instance p1, Landroid/graphics/DashPathEffect;

    #@b2
    const/4 v0, 0x2

    #@b3
    new-array v0, v0, [F

    #@b5
    fill-array-data v0, :array_e8

    #@b8
    const/4 v1, 0x0

    #@b9
    invoke-direct {p1, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    #@bc
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    #@be
    .line 3160
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@c0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    #@c3
    const/16 p1, 0x64

    #@c5
    new-array p1, p1, [F

    #@c7
    .line 3161
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    #@c9
    const/16 p1, 0x32

    #@cb
    new-array p1, p1, [I

    #@cd
    .line 3162
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    #@cf
    .line 3164
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPresentationMode:Z

    #@d1
    if-eqz p1, :cond_e7

    #@d3
    .line 3165
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@d5
    const/high16 v0, 0x41000000    # 8.0f

    #@d7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@da
    .line 3166
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    #@dc
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@df
    .line 3167
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@e1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@e4
    const/4 p1, 0x4

    #@e5
    .line 3168
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mShadowTranslate:I

    #@e7
    :cond_e7
    return-void

    #@e8
    :array_e8
    .array-data 4
        0x40800000    # 4.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private drawBasicPath(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    .line 3242
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    #@7
    return-void
.end method

.method private drawPathAsConfigured(Landroid/graphics/Canvas;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    move v2, v1

    #@3
    .line 3318
    :goto_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    #@5
    if-ge v0, v3, :cond_15

    #@7
    .line 3319
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    #@9
    aget v3, v3, v0

    #@b
    const/4 v4, 0x1

    #@c
    if-ne v3, v4, :cond_f

    #@e
    move v1, v4

    #@f
    :cond_f
    if-nez v3, :cond_12

    #@11
    move v2, v4

    #@12
    :cond_12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_3

    #@15
    :cond_15
    if-eqz v1, :cond_1a

    #@17
    .line 3327
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathRelative(Landroid/graphics/Canvas;)V

    #@1a
    :cond_1a
    if-eqz v2, :cond_1f

    #@1c
    .line 3330
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathCartesian(Landroid/graphics/Canvas;)V

    #@1f
    :cond_1f
    return-void
.end method

.method private drawPathCartesian(Landroid/graphics/Canvas;)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    .line 3360
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@4
    const/4 v2, 0x0

    #@5
    aget v2, v1, v2

    #@7
    const/4 v3, 0x1

    #@8
    .line 3361
    aget v4, v1, v3

    #@a
    .line 3362
    array-length v5, v1

    #@b
    add-int/lit8 v5, v5, -0x2

    #@d
    aget v5, v1, v5

    #@f
    .line 3363
    array-length v6, v1

    #@10
    sub-int/2addr v6, v3

    #@11
    aget v1, v1, v6

    #@13
    .line 3365
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    #@16
    move-result v7

    #@17
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    #@1a
    move-result v8

    #@1b
    .line 3366
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    #@1e
    move-result v9

    #@1f
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    #@22
    move-result v10

    #@23
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@25
    move-object/from16 v6, p1

    #@27
    .line 3365
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@2a
    .line 3367
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    #@2d
    move-result v13

    #@2e
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    #@31
    move-result v14

    #@32
    .line 3368
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    #@35
    move-result v15

    #@36
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    #@39
    move-result v16

    #@3a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@3c
    move-object/from16 v12, p1

    #@3e
    move-object/from16 v17, v1

    #@40
    .line 3367
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@43
    return-void
.end method

.method private drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "x",
            "y"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v7, p1

    #@4
    .line 3372
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@6
    const/4 v2, 0x0

    #@7
    aget v2, v1, v2

    #@9
    const/4 v3, 0x1

    #@a
    .line 3373
    aget v8, v1, v3

    #@c
    .line 3374
    array-length v4, v1

    #@d
    add-int/lit8 v4, v4, -0x2

    #@f
    aget v4, v1, v4

    #@11
    .line 3375
    array-length v5, v1

    #@12
    sub-int/2addr v5, v3

    #@13
    aget v9, v1, v5

    #@15
    .line 3376
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    #@18
    move-result v1

    #@19
    .line 3377
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    #@1c
    move-result v10

    #@1d
    .line 3378
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    #@20
    move-result v3

    #@21
    sub-float v3, p2, v3

    #@23
    .line 3379
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    #@26
    move-result v5

    #@27
    sub-float v11, v5, p3

    #@29
    .line 3381
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    const-string v12, ""

    #@2d
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@30
    const/high16 v13, 0x42c80000    # 100.0f

    #@32
    mul-float v6, v3, v13

    #@34
    sub-float v14, v4, v2

    #@36
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    #@39
    move-result v14

    #@3a
    div-float/2addr v6, v14

    #@3b
    float-to-double v14, v6

    #@3c
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    #@3e
    add-double v14, v14, v16

    #@40
    double-to-int v6, v14

    #@41
    int-to-float v6, v6

    #@42
    div-float/2addr v6, v13

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    .line 3382
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@4d
    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    #@50
    const/high16 v14, 0x40000000    # 2.0f

    #@52
    div-float/2addr v3, v14

    #@53
    .line 3383
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    #@55
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@58
    move-result v6

    #@59
    div-int/lit8 v6, v6, 0x2

    #@5b
    int-to-float v6, v6

    #@5c
    sub-float/2addr v3, v6

    #@5d
    add-float/2addr v3, v1

    #@5e
    const/high16 v1, 0x41a00000    # 20.0f

    #@60
    sub-float v1, p3, v1

    #@62
    .line 3384
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@64
    invoke-virtual {v7, v5, v3, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@67
    .line 3386
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    #@6a
    move-result v4

    #@6b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@6d
    move-object/from16 v1, p1

    #@6f
    move/from16 v2, p2

    #@71
    move/from16 v3, p3

    #@73
    move/from16 v5, p3

    #@75
    .line 3385
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@78
    .line 3389
    new-instance v1, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7d
    mul-float v2, v11, v13

    #@7f
    sub-float v3, v9, v8

    #@81
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@84
    move-result v3

    #@85
    div-float/2addr v2, v3

    #@86
    float-to-double v2, v2

    #@87
    add-double v2, v2, v16

    #@89
    double-to-int v2, v2

    #@8a
    int-to-float v2, v2

    #@8b
    div-float/2addr v2, v13

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    .line 3390
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@96
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    #@99
    div-float/2addr v11, v14

    #@9a
    .line 3391
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    #@9c
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@9f
    move-result v2

    #@a0
    div-int/lit8 v2, v2, 0x2

    #@a2
    int-to-float v2, v2

    #@a3
    sub-float/2addr v11, v2

    #@a4
    const/high16 v2, 0x40a00000    # 5.0f

    #@a6
    add-float v2, p2, v2

    #@a8
    sub-float/2addr v10, v11

    #@a9
    .line 3392
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@ab
    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@ae
    .line 3394
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    #@b1
    move-result v5

    #@b2
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@b4
    move-object/from16 v1, p1

    #@b6
    move/from16 v2, p2

    #@b8
    move/from16 v3, p3

    #@ba
    move/from16 v4, p2

    #@bc
    .line 3393
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@bf
    return-void
.end method

.method private drawPathRelative(Landroid/graphics/Canvas;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    .line 3311
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@2
    const/4 v1, 0x0

    #@3
    aget v3, v0, v1

    #@5
    const/4 v1, 0x1

    #@6
    aget v4, v0, v1

    #@8
    array-length v2, v0

    #@9
    add-int/lit8 v2, v2, -0x2

    #@b
    aget v5, v0, v2

    #@d
    array-length v2, v0

    #@e
    sub-int/2addr v2, v1

    #@f
    aget v6, v0, v2

    #@11
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@13
    move-object v2, p1

    #@14
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@17
    return-void
.end method

.method private drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "x",
            "y"
        }
    .end annotation

    #@0
    .line 3335
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@2
    const/4 v1, 0x0

    #@3
    aget v1, v0, v1

    #@5
    const/4 v2, 0x1

    #@6
    .line 3336
    aget v3, v0, v2

    #@8
    .line 3337
    array-length v4, v0

    #@9
    add-int/lit8 v4, v4, -0x2

    #@b
    aget v4, v0, v4

    #@d
    .line 3338
    array-length v5, v0

    #@e
    sub-int/2addr v5, v2

    #@f
    aget v0, v0, v5

    #@11
    sub-float v2, v1, v4

    #@13
    float-to-double v5, v2

    #@14
    sub-float v2, v3, v0

    #@16
    float-to-double v7, v2

    #@17
    .line 3339
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    #@1a
    move-result-wide v5

    #@1b
    double-to-float v2, v5

    #@1c
    sub-float v5, p2, v1

    #@1e
    sub-float/2addr v4, v1

    #@1f
    mul-float/2addr v5, v4

    #@20
    sub-float v6, p3, v3

    #@22
    sub-float/2addr v0, v3

    #@23
    mul-float/2addr v6, v0

    #@24
    add-float/2addr v5, v6

    #@25
    mul-float v6, v2, v2

    #@27
    div-float/2addr v5, v6

    #@28
    mul-float/2addr v4, v5

    #@29
    add-float v9, v1, v4

    #@2b
    mul-float/2addr v5, v0

    #@2c
    add-float v10, v3, v5

    #@2e
    .line 3344
    new-instance v5, Landroid/graphics/Path;

    #@30
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    #@33
    .line 3345
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    #@36
    .line 3346
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@39
    sub-float v0, v9, p2

    #@3b
    float-to-double v0, v0

    #@3c
    sub-float v3, v10, p3

    #@3e
    float-to-double v3, v3

    #@3f
    .line 3347
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    #@42
    move-result-wide v0

    #@43
    double-to-float v0, v0

    #@44
    .line 3348
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    const-string v3, ""

    #@48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4b
    const/high16 v3, 0x42c80000    # 100.0f

    #@4d
    mul-float v4, v0, v3

    #@4f
    div-float/2addr v4, v2

    #@50
    float-to-int v2, v4

    #@51
    int-to-float v2, v2

    #@52
    div-float/2addr v2, v3

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 3349
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@5d
    invoke-virtual {p0, v4, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    #@60
    const/high16 v1, 0x40000000    # 2.0f

    #@62
    div-float/2addr v0, v1

    #@63
    .line 3350
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    #@65
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@68
    move-result v1

    #@69
    div-int/lit8 v1, v1, 0x2

    #@6b
    int-to-float v1, v1

    #@6c
    sub-float v6, v0, v1

    #@6e
    const/high16 v7, -0x3e600000    # -20.0f

    #@70
    .line 3351
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@72
    move-object v3, p1

    #@73
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    #@76
    .line 3352
    iget-object v11, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@78
    move-object v6, p1

    #@79
    move v7, p2

    #@7a
    move v8, p3

    #@7b
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@7e
    return-void
.end method

.method private drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "x",
            "y",
            "viewWidth",
            "viewHeight"
        }
    .end annotation

    #@0
    move-object v0, p0

    #@1
    move-object/from16 v7, p1

    #@3
    .line 3407
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    const-string v8, ""

    #@7
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    div-int/lit8 v2, p4, 0x2

    #@c
    int-to-float v2, v2

    #@d
    sub-float v2, p2, v2

    #@f
    const/high16 v9, 0x42c80000    # 100.0f

    #@11
    mul-float/2addr v2, v9

    #@12
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@14
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@17
    move-result v3

    #@18
    sub-int v3, v3, p4

    #@1a
    int-to-float v3, v3

    #@1b
    div-float/2addr v2, v3

    #@1c
    float-to-double v2, v2

    #@1d
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@1f
    add-double/2addr v2, v10

    #@20
    double-to-int v2, v2

    #@21
    int-to-float v2, v2

    #@22
    div-float/2addr v2, v9

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 3408
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@2d
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    #@30
    const/high16 v12, 0x40000000    # 2.0f

    #@32
    div-float v2, p2, v12

    #@34
    .line 3409
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    #@36
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@39
    move-result v3

    #@3a
    div-int/lit8 v3, v3, 0x2

    #@3c
    int-to-float v3, v3

    #@3d
    sub-float/2addr v2, v3

    #@3e
    const/4 v13, 0x0

    #@3f
    add-float/2addr v2, v13

    #@40
    const/high16 v3, 0x41a00000    # 20.0f

    #@42
    sub-float v3, p3, v3

    #@44
    .line 3410
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@46
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@49
    const/high16 v14, 0x3f800000    # 1.0f

    #@4b
    .line 3412
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    #@4e
    move-result v4

    #@4f
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@51
    move-object/from16 v1, p1

    #@53
    move/from16 v2, p2

    #@55
    move/from16 v3, p3

    #@57
    move/from16 v5, p3

    #@59
    .line 3411
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@5c
    .line 3415
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@61
    div-int/lit8 v2, p5, 0x2

    #@63
    int-to-float v2, v2

    #@64
    sub-float v2, p3, v2

    #@66
    mul-float/2addr v2, v9

    #@67
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@69
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@6c
    move-result v3

    #@6d
    sub-int v3, v3, p5

    #@6f
    int-to-float v3, v3

    #@70
    div-float/2addr v2, v3

    #@71
    float-to-double v2, v2

    #@72
    add-double/2addr v2, v10

    #@73
    double-to-int v2, v2

    #@74
    int-to-float v2, v2

    #@75
    div-float/2addr v2, v9

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    .line 3416
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@80
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    #@83
    div-float v2, p3, v12

    #@85
    .line 3417
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    #@87
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@8a
    move-result v3

    #@8b
    div-int/lit8 v3, v3, 0x2

    #@8d
    int-to-float v3, v3

    #@8e
    sub-float/2addr v2, v3

    #@8f
    const/high16 v3, 0x40a00000    # 5.0f

    #@91
    add-float v3, p2, v3

    #@93
    sub-float v2, v13, v2

    #@95
    .line 3418
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@97
    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@9a
    .line 3420
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    #@9d
    move-result v5

    #@9e
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@a0
    move-object/from16 v1, p1

    #@a2
    move/from16 v2, p2

    #@a4
    move/from16 v3, p3

    #@a6
    move/from16 v4, p2

    #@a8
    .line 3419
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@ab
    return-void
.end method

.method private drawRectangle(Landroid/graphics/Canvas;Landroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "motionController"
        }
    .end annotation

    #@0
    .line 3424
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    #@5
    const/4 v0, 0x0

    #@6
    move v1, v0

    #@7
    :goto_7
    const/16 v2, 0x32

    #@9
    if-gt v1, v2, :cond_4e

    #@b
    int-to-float v3, v1

    #@c
    int-to-float v2, v2

    #@d
    div-float/2addr v3, v2

    #@e
    .line 3428
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    #@10
    invoke-virtual {p2, v3, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->buildRect(F[FI)V

    #@13
    .line 3429
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@15
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    #@17
    aget v4, v3, v0

    #@19
    const/4 v5, 0x1

    #@1a
    aget v3, v3, v5

    #@1c
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    #@1f
    .line 3430
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@21
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    #@23
    const/4 v4, 0x2

    #@24
    aget v4, v3, v4

    #@26
    const/4 v5, 0x3

    #@27
    aget v3, v3, v5

    #@29
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    #@2c
    .line 3431
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@2e
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    #@30
    const/4 v4, 0x4

    #@31
    aget v4, v3, v4

    #@33
    const/4 v5, 0x5

    #@34
    aget v3, v3, v5

    #@36
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    #@39
    .line 3432
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@3b
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    #@3d
    const/4 v4, 0x6

    #@3e
    aget v4, v3, v4

    #@40
    const/4 v5, 0x7

    #@41
    aget v3, v3, v5

    #@43
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    #@46
    .line 3433
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@48
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    #@4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_7

    #@4e
    .line 3435
    :cond_4e
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@50
    const/high16 v0, 0x44000000    # 512.0f

    #@52
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@55
    const/high16 p2, 0x40000000    # 2.0f

    #@57
    .line 3436
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    #@5a
    .line 3437
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@5c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@5e
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@61
    const/high16 p2, -0x40000000    # -2.0f

    #@63
    .line 3439
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    #@66
    .line 3440
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@68
    const/high16 v0, -0x10000

    #@6a
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@6d
    .line 3441
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@6f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@71
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@74
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "mode",
            "keyFrames",
            "motionController"
        }
    .end annotation

    #@0
    move-object/from16 v6, p0

    #@2
    move-object/from16 v7, p1

    #@4
    move/from16 v8, p2

    #@6
    move-object/from16 v9, p4

    #@8
    .line 3248
    iget-object v0, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@a
    const/4 v10, 0x0

    #@b
    if-eqz v0, :cond_1c

    #@d
    .line 3249
    iget-object v0, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@f
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@12
    move-result v0

    #@13
    .line 3250
    iget-object v1, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@18
    move-result v1

    #@19
    move v11, v0

    #@1a
    move v12, v1

    #@1b
    goto :goto_1e

    #@1c
    :cond_1c
    move v11, v10

    #@1d
    move v12, v11

    #@1e
    :goto_1e
    const/4 v13, 0x1

    #@1f
    move v14, v13

    #@20
    :goto_20
    add-int/lit8 v0, p3, -0x1

    #@22
    const/4 v15, 0x2

    #@23
    if-ge v14, v0, :cond_d5

    #@25
    const/4 v0, 0x4

    #@26
    if-ne v8, v0, :cond_32

    #@28
    .line 3253
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    #@2a
    add-int/lit8 v2, v14, -0x1

    #@2c
    aget v1, v1, v2

    #@2e
    if-nez v1, :cond_32

    #@30
    goto/16 :goto_d1

    #@32
    .line 3258
    :cond_32
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    #@34
    mul-int/lit8 v2, v14, 0x2

    #@36
    aget v5, v1, v2

    #@38
    add-int/2addr v2, v13

    #@39
    .line 3259
    aget v4, v1, v2

    #@3b
    .line 3260
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@3d
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    #@40
    .line 3261
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@42
    const/high16 v2, 0x41200000    # 10.0f

    #@44
    add-float v3, v4, v2

    #@46
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    #@49
    .line 3262
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@4b
    add-float v3, v5, v2

    #@4d
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    #@50
    .line 3263
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@52
    sub-float v3, v4, v2

    #@54
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    #@57
    .line 3264
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@59
    sub-float v2, v5, v2

    #@5b
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    #@5e
    .line 3265
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@60
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    #@63
    add-int/lit8 v1, v14, -0x1

    #@65
    .line 3267
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@68
    const/16 v16, 0x0

    #@6a
    if-ne v8, v0, :cond_a3

    #@6c
    .line 3272
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    #@6e
    aget v0, v0, v1

    #@70
    if-ne v0, v13, :cond_7e

    #@72
    sub-float v0, v5, v16

    #@74
    sub-float v1, v4, v16

    #@76
    .line 3273
    invoke-direct {v6, v7, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V

    #@79
    :cond_79
    :goto_79
    move/from16 v17, v4

    #@7b
    move/from16 v18, v5

    #@7d
    goto :goto_9b

    #@7e
    :cond_7e
    if-nez v0, :cond_88

    #@80
    sub-float v0, v5, v16

    #@82
    sub-float v1, v4, v16

    #@84
    .line 3275
    invoke-direct {v6, v7, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V

    #@87
    goto :goto_79

    #@88
    :cond_88
    if-ne v0, v15, :cond_79

    #@8a
    sub-float v2, v5, v16

    #@8c
    sub-float v3, v4, v16

    #@8e
    move-object/from16 v0, p0

    #@90
    move-object/from16 v1, p1

    #@92
    move/from16 v17, v4

    #@94
    move v4, v11

    #@95
    move/from16 v18, v5

    #@97
    move v5, v12

    #@98
    .line 3277
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V

    #@9b
    .line 3280
    :goto_9b
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@9d
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    #@9f
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@a2
    goto :goto_a7

    #@a3
    :cond_a3
    move/from16 v17, v4

    #@a5
    move/from16 v18, v5

    #@a7
    :goto_a7
    if-ne v8, v15, :cond_b0

    #@a9
    sub-float v5, v18, v16

    #@ab
    sub-float v4, v17, v16

    #@ad
    .line 3283
    invoke-direct {v6, v7, v5, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V

    #@b0
    :cond_b0
    const/4 v0, 0x3

    #@b1
    if-ne v8, v0, :cond_ba

    #@b3
    sub-float v5, v18, v16

    #@b5
    sub-float v4, v17, v16

    #@b7
    .line 3286
    invoke-direct {v6, v7, v5, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V

    #@ba
    :cond_ba
    const/4 v0, 0x6

    #@bb
    if-ne v8, v0, :cond_ca

    #@bd
    sub-float v2, v18, v16

    #@bf
    sub-float v3, v17, v16

    #@c1
    move-object/from16 v0, p0

    #@c3
    move-object/from16 v1, p1

    #@c5
    move v4, v11

    #@c6
    move v5, v12

    #@c7
    .line 3289
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V

    #@ca
    .line 3294
    :cond_ca
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@cc
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    #@ce
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@d1
    :goto_d1
    add-int/lit8 v14, v14, 0x1

    #@d3
    goto/16 :goto_20

    #@d5
    .line 3297
    :cond_d5
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@d7
    array-length v1, v0

    #@d8
    if-le v1, v13, :cond_f4

    #@da
    .line 3299
    aget v1, v0, v10

    #@dc
    aget v0, v0, v13

    #@de
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@e0
    const/high16 v3, 0x41000000    # 8.0f

    #@e2
    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@e5
    .line 3300
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@e7
    array-length v1, v0

    #@e8
    sub-int/2addr v1, v15

    #@e9
    aget v1, v0, v1

    #@eb
    array-length v2, v0

    #@ec
    sub-int/2addr v2, v13

    #@ed
    aget v0, v0, v2

    #@ef
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@f1
    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@f4
    :cond_f4
    return-void
.end method

.method private drawTranslation(Landroid/graphics/Canvas;FFFF)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    #@0
    move-object v0, p0

    #@1
    .line 3306
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move/from16 v3, p3

    #@7
    move/from16 v4, p4

    #@9
    move/from16 v5, p5

    #@b
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@e
    .line 3307
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@10
    move-object v7, p1

    #@11
    move v8, p2

    #@12
    move/from16 v9, p3

    #@14
    move/from16 v10, p4

    #@16
    move/from16 v11, p5

    #@18
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@1b
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "frameArrayList",
            "duration",
            "debugPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;II)V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_10c

    #@2
    .line 3175
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    goto/16 :goto_10c

    #@a
    .line 3178
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@d
    .line 3179
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_6b

    #@15
    and-int/lit8 v0, p4, 0x1

    #@17
    const/4 v1, 0x2

    #@18
    if-ne v0, v1, :cond_6b

    #@1a
    .line 3180
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@21
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2b
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    #@2e
    move-result v2

    #@2f
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string v1, ":"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3f
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@42
    move-result v1

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 3181
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@4d
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@50
    move-result v1

    #@51
    add-int/lit8 v1, v1, -0x1e

    #@53
    int-to-float v1, v1

    #@54
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    #@56
    const/high16 v3, 0x41200000    # 10.0f

    #@58
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@5b
    .line 3182
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@5d
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@60
    move-result v1

    #@61
    add-int/lit8 v1, v1, -0x1d

    #@63
    int-to-float v1, v1

    #@64
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@66
    const/high16 v3, 0x41300000    # 11.0f

    #@68
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@6b
    .line 3184
    :cond_6b
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6e
    move-result-object p2

    #@6f
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object p2

    #@73
    :cond_73
    :goto_73
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v0

    #@77
    if-eqz v0, :cond_109

    #@79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    #@7f
    .line 3185
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getDrawPath()I

    #@82
    move-result v1

    #@83
    const/4 v2, 0x1

    #@84
    if-lez p4, :cond_89

    #@86
    if-nez v1, :cond_89

    #@88
    move v1, v2

    #@89
    :cond_89
    if-nez v1, :cond_8c

    #@8b
    goto :goto_73

    #@8c
    .line 3193
    :cond_8c
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    #@8e
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    #@90
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->buildKeyFrames([F[I)I

    #@93
    move-result v3

    #@94
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    #@96
    if-lt v1, v2, :cond_73

    #@98
    .line 3197
    div-int/lit8 v2, p3, 0x10

    #@9a
    .line 3198
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@9c
    if-eqz v3, :cond_a3

    #@9e
    array-length v3, v3

    #@9f
    mul-int/lit8 v4, v2, 0x2

    #@a1
    if-eq v3, v4, :cond_b0

    #@a3
    :cond_a3
    mul-int/lit8 v3, v2, 0x2

    #@a5
    .line 3199
    new-array v3, v3, [F

    #@a7
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@a9
    .line 3200
    new-instance v3, Landroid/graphics/Path;

    #@ab
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    #@ae
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    #@b0
    .line 3203
    :cond_b0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mShadowTranslate:I

    #@b2
    int-to-float v4, v3

    #@b3
    int-to-float v3, v3

    #@b4
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@b7
    .line 3205
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@b9
    const/high16 v4, 0x77000000

    #@bb
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@be
    .line 3206
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    #@c0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@c3
    .line 3207
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@c5
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@c8
    .line 3208
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@ca
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@cd
    .line 3209
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    #@cf
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->buildPath([FI)V

    #@d2
    .line 3210
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    #@d4
    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    #@d7
    .line 3211
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    #@d9
    const/16 v3, -0x55cd

    #@db
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@de
    .line 3212
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    #@e0
    const v3, -0x1f8a66

    #@e3
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@e6
    .line 3213
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    #@e8
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@eb
    .line 3214
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    #@ed
    const v3, -0xcc5600

    #@f0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@f3
    .line 3216
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mShadowTranslate:I

    #@f5
    neg-int v3, v2

    #@f6
    int-to-float v3, v3

    #@f7
    neg-int v2, v2

    #@f8
    int-to-float v2, v2

    #@f9
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@fc
    .line 3217
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    #@fe
    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    #@101
    const/4 v2, 0x5

    #@102
    if-ne v1, v2, :cond_73

    #@104
    .line 3219
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawRectangle(Landroid/graphics/Canvas;Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@107
    goto/16 :goto_73

    #@109
    .line 3224
    :cond_109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@10c
    :cond_10c
    :goto_10c
    return-void
.end method

.method public drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "mode",
            "keyFrames",
            "motionController"
        }
    .end annotation

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p2, v0, :cond_6

    #@3
    .line 3229
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathAsConfigured(Landroid/graphics/Canvas;)V

    #@6
    :cond_6
    const/4 v0, 0x2

    #@7
    if-ne p2, v0, :cond_c

    #@9
    .line 3232
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathRelative(Landroid/graphics/Canvas;)V

    #@c
    :cond_c
    const/4 v0, 0x3

    #@d
    if-ne p2, v0, :cond_12

    #@f
    .line 3235
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathCartesian(Landroid/graphics/Canvas;)V

    #@12
    .line 3237
    :cond_12
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawBasicPath(Landroid/graphics/Canvas;)V

    #@15
    .line 3238
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawTicks(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    #@18
    return-void
.end method

.method getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "paint"
        }
    .end annotation

    #@0
    .line 3356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@a
    return-void
.end method
