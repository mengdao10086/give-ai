.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "MotionTelltales.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionTelltales"


# instance fields
.field mInvertMatrix:Landroid/graphics/Matrix;

.field mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPaintTelltales:Landroid/graphics/Paint;

.field mTailColor:I

.field mTailScale:F

.field mVelocityMode:I

.field velocity:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 55
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    #@3
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    #@a
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [F

    #@d
    .line 49
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    #@f
    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    #@11
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@14
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    #@16
    const/4 v0, 0x0

    #@17
    .line 51
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    #@19
    const v0, -0xff01

    #@1c
    .line 52
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    #@1e
    const/high16 v0, 0x3e800000    # 0.25f

    #@20
    .line 53
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    #@22
    const/4 v0, 0x0

    #@23
    .line 56
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    #@a
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [F

    #@d
    .line 49
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    #@f
    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    #@11
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@14
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    #@16
    const/4 v0, 0x0

    #@17
    .line 51
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    #@19
    const v0, -0xff01

    #@1c
    .line 52
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    #@1e
    const/high16 v0, 0x3e800000    # 0.25f

    #@20
    .line 53
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    #@22
    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    #@0
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 47
    new-instance p3, Landroid/graphics/Paint;

    #@5
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    #@a
    const/4 p3, 0x2

    #@b
    new-array p3, p3, [F

    #@d
    .line 49
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    #@f
    .line 50
    new-instance p3, Landroid/graphics/Matrix;

    #@11
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    #@14
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    #@16
    const/4 p3, 0x0

    #@17
    .line 51
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    #@19
    const p3, -0xff01

    #@1c
    .line 52
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    #@1e
    const/high16 p3, 0x3e800000    # 0.25f

    #@20
    .line 53
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    #@22
    .line 66
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@25
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_3f

    #@2
    .line 71
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    #@4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object p1

    #@8
    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@b
    move-result p2

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    if-ge v0, p2, :cond_3c

    #@f
    .line 74
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@12
    move-result v1

    #@13
    .line 75
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailColor:I

    #@15
    if-ne v1, v2, :cond_20

    #@17
    .line 76
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    #@19
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    #@1f
    goto :goto_39

    #@20
    .line 77
    :cond_20
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_velocityMode:I

    #@22
    if-ne v1, v2, :cond_2d

    #@24
    .line 78
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    #@26
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    #@2c
    goto :goto_39

    #@2d
    .line 79
    :cond_2d
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailScale:I

    #@2f
    if-ne v1, v2, :cond_39

    #@31
    .line 80
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    #@33
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@36
    move-result v1

    #@37
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    #@39
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_d

    #@3c
    .line 83
    :cond_3c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@3f
    .line 85
    :cond_3f
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    #@41
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    #@43
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@46
    .line 86
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    #@48
    const/high16 p2, 0x40a00000    # 5.0f

    #@4a
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@4d
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    #@0
    .line 91
    invoke-super {p0}, Landroidx/constraintlayout/utils/widget/MockView;->onAttachedToWindow()V

    #@3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    move-object/from16 v6, p0

    #@2
    .line 107
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    #@5
    .line 108
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getMatrix()Landroid/graphics/Matrix;

    #@8
    move-result-object v0

    #@9
    .line 109
    iget-object v1, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@e
    .line 110
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@10
    if-nez v0, :cond_1f

    #@12
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getParent()Landroid/view/ViewParent;

    #@15
    move-result-object v0

    #@16
    .line 112
    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@18
    if-eqz v1, :cond_1e

    #@1a
    .line 113
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1c
    iput-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1e
    :cond_1e
    return-void

    #@1f
    .line 117
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getWidth()I

    #@22
    move-result v7

    #@23
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getHeight()I

    #@26
    move-result v8

    #@27
    const/4 v9, 0x5

    #@28
    new-array v10, v9, [F

    #@2a
    .line 119
    fill-array-data v10, :array_76

    #@2d
    const/4 v11, 0x0

    #@2e
    move v12, v11

    #@2f
    :goto_2f
    if-ge v12, v9, :cond_75

    #@31
    .line 121
    aget v13, v10, v12

    #@33
    move v14, v11

    #@34
    :goto_34
    if-ge v14, v9, :cond_72

    #@36
    .line 123
    aget v15, v10, v14

    #@38
    .line 124
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3a
    iget-object v4, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    #@3c
    iget v5, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    #@3e
    move-object/from16 v1, p0

    #@40
    move v2, v15

    #@41
    move v3, v13

    #@42
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewVelocity(Landroid/view/View;FF[FI)V

    #@45
    .line 125
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    #@47
    iget-object v1, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    #@49
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    #@4c
    int-to-float v0, v7

    #@4d
    mul-float v17, v0, v15

    #@4f
    int-to-float v0, v8

    #@50
    mul-float v18, v0, v13

    #@52
    .line 129
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    #@54
    aget v1, v0, v11

    #@56
    iget v2, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    #@58
    mul-float/2addr v1, v2

    #@59
    sub-float v19, v17, v1

    #@5b
    const/4 v1, 0x1

    #@5c
    .line 130
    aget v1, v0, v1

    #@5e
    mul-float/2addr v1, v2

    #@5f
    sub-float v20, v18, v1

    #@61
    .line 131
    iget-object v1, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    #@63
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    #@66
    .line 132
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    #@68
    move-object/from16 v16, p1

    #@6a
    move-object/from16 v21, v0

    #@6c
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@6f
    add-int/lit8 v14, v14, 0x1

    #@71
    goto :goto_34

    #@72
    :cond_72
    add-int/lit8 v12, v12, 0x1

    #@74
    goto :goto_2f

    #@75
    :cond_75
    return-void

    #@76
    :array_76
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    #@0
    .line 101
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/utils/widget/MockView;->onLayout(ZIIII)V

    #@3
    .line 102
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->postInvalidate()V

    #@6
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    #@0
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mText:Ljava/lang/String;

    #@6
    .line 96
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->requestLayout()V

    #@9
    return-void
.end method
