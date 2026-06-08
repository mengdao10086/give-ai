.class public Landroidx/constraintlayout/utils/widget/MockView;
.super Landroid/view/View;
.source "MockView.java"


# instance fields
.field private mDiagonalsColor:I

.field private mDrawDiagonals:Z

.field private mDrawLabel:Z

.field private mMargin:I

.field private mPaintDiagonals:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mPaintTextBackground:Landroid/graphics/Paint;

.field protected mText:Ljava/lang/String;

.field private mTextBackgroundColor:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@3
    .line 39
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@a
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    #@c
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    #@11
    .line 41
    new-instance v0, Landroid/graphics/Paint;

    #@13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    #@18
    const/4 v0, 0x1

    #@19
    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    #@1b
    .line 43
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    #@1d
    const/4 v0, 0x0

    #@1e
    .line 44
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    #@20
    .line 45
    new-instance v1, Landroid/graphics/Rect;

    #@22
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@25
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@27
    const/4 v1, 0x0

    #@28
    const/16 v2, 0xff

    #@2a
    .line 46
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    #@2d
    move-result v1

    #@2e
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    #@30
    const/16 v1, 0xc8

    #@32
    .line 47
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    #@35
    move-result v1

    #@36
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    #@38
    const/16 v1, 0x32

    #@3a
    .line 48
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    #@3d
    move-result v1

    #@3e
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    #@40
    const/4 v1, 0x4

    #@41
    .line 49
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@43
    .line 53
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
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
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 39
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@a
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    #@c
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    #@11
    .line 41
    new-instance v0, Landroid/graphics/Paint;

    #@13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    #@18
    const/4 v0, 0x1

    #@19
    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    #@1b
    .line 43
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    #@1d
    const/4 v0, 0x0

    #@1e
    .line 44
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    #@20
    .line 45
    new-instance v0, Landroid/graphics/Rect;

    #@22
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@25
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@27
    const/4 v0, 0x0

    #@28
    const/16 v1, 0xff

    #@2a
    .line 46
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    #@30
    const/16 v0, 0xc8

    #@32
    .line 47
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    #@38
    const/16 v0, 0x32

    #@3a
    .line 48
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    #@40
    const/4 v0, 0x4

    #@41
    .line 49
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@43
    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
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
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 39
    new-instance p3, Landroid/graphics/Paint;

    #@5
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@a
    .line 40
    new-instance p3, Landroid/graphics/Paint;

    #@c
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    #@f
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    #@11
    .line 41
    new-instance p3, Landroid/graphics/Paint;

    #@13
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    #@16
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    #@18
    const/4 p3, 0x1

    #@19
    .line 42
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    #@1b
    .line 43
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    #@1d
    const/4 p3, 0x0

    #@1e
    .line 44
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    #@20
    .line 45
    new-instance p3, Landroid/graphics/Rect;

    #@22
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@25
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@27
    const/4 p3, 0x0

    #@28
    const/16 v0, 0xff

    #@2a
    .line 46
    invoke-static {v0, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    #@2d
    move-result p3

    #@2e
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    #@30
    const/16 p3, 0xc8

    #@32
    .line 47
    invoke-static {v0, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    #@35
    move-result p3

    #@36
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    #@38
    const/16 p3, 0x32

    #@3a
    .line 48
    invoke-static {v0, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    #@3d
    move-result p3

    #@3e
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    #@40
    const/4 p3, 0x4

    #@41
    .line 49
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@43
    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@46
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
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
    if-eqz p2, :cond_64

    #@2
    .line 68
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MockView:[I

    #@4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object p2

    #@8
    .line 69
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    :goto_d
    if-ge v1, v0, :cond_61

    #@f
    .line 71
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@12
    move-result v2

    #@13
    .line 72
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_label:I

    #@15
    if-ne v2, v3, :cond_1e

    #@17
    .line 73
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    #@1d
    goto :goto_5e

    #@1e
    .line 74
    :cond_1e
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_showDiagonals:I

    #@20
    if-ne v2, v3, :cond_2b

    #@22
    .line 75
    iget-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    #@24
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@27
    move-result v2

    #@28
    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    #@2a
    goto :goto_5e

    #@2b
    .line 76
    :cond_2b
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_diagonalsColor:I

    #@2d
    if-ne v2, v3, :cond_38

    #@2f
    .line 77
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    #@31
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    #@34
    move-result v2

    #@35
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    #@37
    goto :goto_5e

    #@38
    .line 78
    :cond_38
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_labelBackgroundColor:I

    #@3a
    if-ne v2, v3, :cond_45

    #@3c
    .line 79
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    #@3e
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    #@41
    move-result v2

    #@42
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    #@44
    goto :goto_5e

    #@45
    .line 80
    :cond_45
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_labelColor:I

    #@47
    if-ne v2, v3, :cond_52

    #@49
    .line 81
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    #@4b
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    #@4e
    move-result v2

    #@4f
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    #@51
    goto :goto_5e

    #@52
    .line 82
    :cond_52
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_showLabel:I

    #@54
    if-ne v2, v3, :cond_5e

    #@56
    .line 83
    iget-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    #@58
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5b
    move-result v2

    #@5c
    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    #@5e
    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_d

    #@61
    .line 86
    :cond_61
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@64
    .line 88
    :cond_64
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    #@66
    if-nez p2, :cond_76

    #@68
    .line 90
    :try_start_68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6b
    move-result-object p1

    #@6c
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MockView;->getId()I

    #@6f
    move-result p2

    #@70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@73
    move-result-object p1

    #@74
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_76

    #@76
    .line 94
    :catch_76
    :cond_76
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@78
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    #@7a
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@7d
    .line 95
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@7f
    const/4 p2, 0x1

    #@80
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@83
    .line 96
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    #@85
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    #@87
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@8a
    .line 97
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    #@8c
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@8f
    .line 98
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    #@91
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    #@93
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@96
    .line 99
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@98
    int-to-float p1, p1

    #@99
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MockView;->getResources()Landroid/content/res/Resources;

    #@9c
    move-result-object p2

    #@9d
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@a0
    move-result-object p2

    #@a1
    iget p2, p2, Landroid/util/DisplayMetrics;->xdpi:F

    #@a3
    const/high16 v0, 0x43200000    # 160.0f

    #@a5
    div-float/2addr p2, v0

    #@a6
    mul-float/2addr p1, p2

    #@a7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@aa
    move-result p1

    #@ab
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@ad
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    .line 104
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 105
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MockView;->getWidth()I

    #@6
    move-result v0

    #@7
    .line 106
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MockView;->getHeight()I

    #@a
    move-result v1

    #@b
    .line 107
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    #@d
    if-eqz v2, :cond_44

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    int-to-float v11, v0

    #@16
    int-to-float v12, v1

    #@17
    .line 110
    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@19
    move-object v2, p1

    #@1a
    move v5, v11

    #@1b
    move v6, v12

    #@1c
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@1f
    const/4 v6, 0x0

    #@20
    const/4 v9, 0x0

    #@21
    .line 111
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@23
    move-object v5, p1

    #@24
    move v7, v12

    #@25
    move v8, v11

    #@26
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@29
    const/4 v7, 0x0

    #@2a
    .line 112
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@2c
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@2f
    .line 113
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@31
    move v6, v11

    #@32
    move v9, v12

    #@33
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@36
    const/4 v8, 0x0

    #@37
    .line 114
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@39
    move v7, v12

    #@3a
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@3d
    const/4 v6, 0x0

    #@3e
    const/4 v9, 0x0

    #@3f
    .line 115
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    #@41
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@44
    .line 117
    :cond_44
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    #@46
    if-eqz v2, :cond_a8

    #@48
    iget-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    #@4a
    if-eqz v3, :cond_a8

    #@4c
    .line 118
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    #@4e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@51
    move-result v4

    #@52
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@54
    const/4 v6, 0x0

    #@55
    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@58
    .line 119
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@5a
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@5d
    move-result v2

    #@5e
    sub-int/2addr v0, v2

    #@5f
    int-to-float v0, v0

    #@60
    const/high16 v2, 0x40000000    # 2.0f

    #@62
    div-float/2addr v0, v2

    #@63
    .line 120
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@65
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@68
    move-result v3

    #@69
    sub-int/2addr v1, v3

    #@6a
    int-to-float v1, v1

    #@6b
    div-float/2addr v1, v2

    #@6c
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@6e
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@71
    move-result v2

    #@72
    int-to-float v2, v2

    #@73
    add-float/2addr v1, v2

    #@74
    .line 121
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@76
    float-to-int v3, v0

    #@77
    float-to-int v4, v1

    #@78
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@7b
    .line 122
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@7d
    iget v3, v2, Landroid/graphics/Rect;->left:I

    #@7f
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@81
    sub-int/2addr v3, v4

    #@82
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@84
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@86
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@88
    sub-int/2addr v4, v5

    #@89
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@8b
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@8d
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@8f
    add-int/2addr v5, v6

    #@90
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@92
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@94
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    #@96
    add-int/2addr v6, v7

    #@97
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    #@9a
    .line 124
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    #@9c
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    #@9e
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@a1
    .line 125
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    #@a3
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    #@a5
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@a8
    :cond_a8
    return-void
.end method
