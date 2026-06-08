.class public Landroidx/viewpager/widget/PagerTabStrip;
.super Landroidx/viewpager/widget/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 83
    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    .line 87
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 68
    new-instance p2, Landroid/graphics/Paint;

    #@5
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@a
    .line 69
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    #@11
    const/16 v0, 0xff

    #@13
    .line 71
    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    #@15
    const/4 v0, 0x0

    #@16
    .line 73
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    #@18
    .line 74
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@1a
    .line 89
    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTextColor:I

    #@1c
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    #@1e
    .line 90
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@21
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@24
    move-result-object p2

    #@25
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@28
    move-result-object p2

    #@29
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    #@2b
    const/high16 v1, 0x40400000    # 3.0f

    #@2d
    mul-float/2addr v1, p2

    #@2e
    const/high16 v2, 0x3f000000    # 0.5f

    #@30
    add-float/2addr v1, v2

    #@31
    float-to-int v1, v1

    #@32
    .line 95
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    #@34
    const/high16 v1, 0x40c00000    # 6.0f

    #@36
    mul-float/2addr v1, p2

    #@37
    add-float/2addr v1, v2

    #@38
    float-to-int v1, v1

    #@39
    .line 96
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    #@3b
    const/high16 v1, 0x42800000    # 64.0f

    #@3d
    mul-float/2addr v1, p2

    #@3e
    float-to-int v1, v1

    #@3f
    .line 97
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    #@41
    const/high16 v1, 0x41800000    # 16.0f

    #@43
    mul-float/2addr v1, p2

    #@44
    add-float/2addr v1, v2

    #@45
    float-to-int v1, v1

    #@46
    .line 98
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@48
    const/high16 v1, 0x3f800000    # 1.0f

    #@4a
    mul-float/2addr v1, p2

    #@4b
    add-float/2addr v1, v2

    #@4c
    float-to-int v1, v1

    #@4d
    .line 99
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    #@4f
    const/high16 v1, 0x42000000    # 32.0f

    #@51
    mul-float/2addr p2, v1

    #@52
    add-float/2addr p2, v2

    #@53
    float-to-int p2, p2

    #@54
    .line 100
    iput p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    #@56
    .line 101
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@5d
    move-result p1

    #@5e
    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    #@60
    .line 104
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    #@63
    move-result p1

    #@64
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingTop()I

    #@67
    move-result p2

    #@68
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    #@6b
    move-result v1

    #@6c
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingBottom()I

    #@6f
    move-result v2

    #@70
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/viewpager/widget/PagerTabStrip;->setPadding(IIII)V

    #@73
    .line 105
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getTextSpacing()I

    #@76
    move-result p1

    #@77
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerTabStrip;->setTextSpacing(I)V

    #@7a
    .line 107
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->setWillNotDraw(Z)V

    #@7d
    .line 109
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    #@7f
    const/4 p2, 0x1

    #@80
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    #@83
    .line 110
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    #@85
    new-instance v0, Landroidx/viewpager/widget/PagerTabStrip$1;

    #@87
    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTabStrip$1;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    #@8a
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@8d
    .line 117
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    #@8f
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    #@92
    .line 118
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    #@94
    new-instance v0, Landroidx/viewpager/widget/PagerTabStrip$2;

    #@96
    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTabStrip$2;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    #@99
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@9c
    .line 125
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    #@9f
    move-result-object p1

    #@a0
    if-nez p1, :cond_a4

    #@a2
    .line 126
    iput-boolean p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    #@a4
    :cond_a4
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .registers 2

    #@0
    .line 218
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    #@2
    return v0
.end method

.method getMinHeight()I
    .registers 3

    #@0
    .line 223
    invoke-super {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getTabIndicatorColor()I
    .registers 2

    #@0
    .line 155
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    #@2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    #@0
    .line 265
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 267
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    #@6
    move-result v0

    #@7
    .line 269
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@9
    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    #@c
    move-result v1

    #@d
    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@f
    sub-int/2addr v1, v2

    #@10
    .line 270
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@12
    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    #@15
    move-result v2

    #@16
    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@18
    add-int/2addr v2, v3

    #@19
    .line 271
    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    #@1b
    sub-int v3, v0, v3

    #@1d
    .line 273
    iget-object v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@1f
    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    #@21
    shl-int/lit8 v5, v5, 0x18

    #@23
    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    #@25
    const v7, 0xffffff

    #@28
    and-int/2addr v6, v7

    #@29
    or-int/2addr v5, v6

    #@2a
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    #@2d
    int-to-float v9, v1

    #@2e
    int-to-float v10, v3

    #@2f
    int-to-float v11, v2

    #@30
    int-to-float v5, v0

    #@31
    .line 274
    iget-object v13, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@33
    move-object v8, p1

    #@34
    move v12, v5

    #@35
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@38
    .line 276
    iget-boolean v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    #@3a
    if-eqz v1, :cond_60

    #@3c
    .line 277
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@3e
    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    #@40
    and-int/2addr v2, v7

    #@41
    const/high16 v3, -0x1000000

    #@43
    or-int/2addr v2, v3

    #@44
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@47
    .line 278
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    #@4a
    move-result v1

    #@4b
    int-to-float v2, v1

    #@4c
    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    #@4e
    sub-int/2addr v0, v1

    #@4f
    int-to-float v3, v0

    #@50
    .line 279
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getWidth()I

    #@53
    move-result v0

    #@54
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    #@57
    move-result v1

    #@58
    sub-int/2addr v0, v1

    #@59
    int-to-float v4, v0

    #@5a
    iget-object v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@5c
    move-object v1, p1

    #@5d
    .line 278
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@60
    :cond_60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_c

    #@7
    .line 229
    iget-boolean v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    #@9
    if-eqz v2, :cond_c

    #@b
    return v1

    #@c
    .line 235
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@f
    move-result v2

    #@10
    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@13
    move-result p1

    #@14
    const/4 v3, 0x1

    #@15
    if-eqz v0, :cond_72

    #@17
    if-eq v0, v3, :cond_3c

    #@19
    const/4 v1, 0x2

    #@1a
    if-eq v0, v1, :cond_1d

    #@1c
    goto :goto_78

    #@1d
    .line 245
    :cond_1d
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    #@1f
    sub-float/2addr v2, v0

    #@20
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@23
    move-result v0

    #@24
    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    #@26
    int-to-float v1, v1

    #@27
    cmpl-float v0, v0, v1

    #@29
    if-gtz v0, :cond_39

    #@2b
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    #@2d
    sub-float/2addr p1, v0

    #@2e
    .line 246
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@31
    move-result p1

    #@32
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    #@34
    int-to-float v0, v0

    #@35
    cmpl-float p1, p1, v0

    #@37
    if-lez p1, :cond_78

    #@39
    .line 247
    :cond_39
    iput-boolean v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    #@3b
    goto :goto_78

    #@3c
    .line 252
    :cond_3c
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@3e
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    #@41
    move-result p1

    #@42
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@44
    sub-int/2addr p1, v0

    #@45
    int-to-float p1, p1

    #@46
    cmpg-float p1, v2, p1

    #@48
    if-gez p1, :cond_57

    #@4a
    .line 253
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@4c
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@4e
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    #@51
    move-result v0

    #@52
    sub-int/2addr v0, v3

    #@53
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    #@56
    goto :goto_78

    #@57
    .line 254
    :cond_57
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@59
    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    #@5c
    move-result p1

    #@5d
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@5f
    add-int/2addr p1, v0

    #@60
    int-to-float p1, p1

    #@61
    cmpl-float p1, v2, p1

    #@63
    if-lez p1, :cond_78

    #@65
    .line 255
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@67
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@69
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    #@6c
    move-result v0

    #@6d
    add-int/2addr v0, v3

    #@6e
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    #@71
    goto :goto_78

    #@72
    .line 239
    :cond_72
    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    #@74
    .line 240
    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    #@76
    .line 241
    iput-boolean v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    #@78
    :cond_78
    :goto_78
    return v3
.end method

.method public setBackgroundColor(I)V
    .registers 3

    #@0
    .line 184
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundColor(I)V

    #@3
    .line 185
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@5
    if-nez v0, :cond_11

    #@7
    const/high16 v0, -0x1000000

    #@9
    and-int/2addr p1, v0

    #@a
    if-nez p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    .line 186
    :goto_f
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    #@11
    :cond_11
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 176
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 177
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@5
    if-nez v0, :cond_e

    #@7
    if-nez p1, :cond_b

    #@9
    const/4 p1, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 178
    :goto_c
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    #@e
    :cond_e
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    #@0
    .line 192
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundResource(I)V

    #@3
    .line 193
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@5
    if-nez v0, :cond_e

    #@7
    if-nez p1, :cond_b

    #@9
    const/4 p1, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 194
    :goto_c
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    #@e
    :cond_e
    return-void
.end method

.method public setDrawFullUnderline(Z)V
    .registers 2

    #@0
    .line 205
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    #@2
    const/4 p1, 0x1

    #@3
    .line 206
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    #@5
    .line 207
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    #@8
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    #@0
    .line 160
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    #@2
    if-ge p4, v0, :cond_5

    #@4
    move p4, v0

    #@5
    .line 163
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/viewpager/widget/PagerTitleStrip;->setPadding(IIII)V

    #@8
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .registers 3

    #@0
    .line 136
    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    #@2
    .line 137
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@7
    .line 138
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    #@a
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .registers 3

    #@0
    .line 147
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerTabStrip;->setTabIndicatorColor(I)V

    #@b
    return-void
.end method

.method public setTextSpacing(I)V
    .registers 3

    #@0
    .line 168
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    #@2
    if-ge p1, v0, :cond_5

    #@4
    move p1, v0

    #@5
    .line 171
    :cond_5
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSpacing(I)V

    #@8
    return-void
.end method

.method updateTextPositions(IFZ)V
    .registers 9

    #@0
    .line 285
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    #@2
    .line 286
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    #@5
    move-result v1

    #@6
    .line 287
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@8
    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    #@b
    move-result v2

    #@c
    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@e
    sub-int/2addr v2, v3

    #@f
    .line 288
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@11
    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    #@14
    move-result v3

    #@15
    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@17
    add-int/2addr v3, v4

    #@18
    .line 289
    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    #@1a
    sub-int v4, v1, v4

    #@1c
    .line 291
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@1f
    .line 293
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@22
    const/high16 p1, 0x3f000000    # 0.5f

    #@24
    sub-float/2addr p2, p1

    #@25
    .line 294
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@28
    move-result p1

    #@29
    const/high16 p2, 0x40000000    # 2.0f

    #@2b
    mul-float/2addr p1, p2

    #@2c
    const/high16 p2, 0x437f0000    # 255.0f

    #@2e
    mul-float/2addr p1, p2

    #@2f
    float-to-int p1, p1

    #@30
    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    #@32
    .line 296
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@34
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    #@37
    move-result p1

    #@38
    iget p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@3a
    sub-int/2addr p1, p2

    #@3b
    .line 297
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    #@3d
    invoke-virtual {p2}, Landroid/widget/TextView;->getRight()I

    #@40
    move-result p2

    #@41
    iget p3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    #@43
    add-int/2addr p2, p3

    #@44
    .line 298
    invoke-virtual {v0, p1, v4, p2, v1}, Landroid/graphics/Rect;->union(IIII)V

    #@47
    .line 300
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    #@4a
    return-void
.end method
