.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Landroidx/cardview/widget/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const v2, 0x1010031

    #@7
    aput v2, v0, v1

    #@9
    .line 81
    sput-object v0, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    #@b
    .line 86
    new-instance v0, Landroidx/cardview/widget/CardViewApi21Impl;

    #@d
    invoke-direct {v0}, Landroidx/cardview/widget/CardViewApi21Impl;-><init>()V

    #@10
    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@12
    .line 92
    invoke-interface {v0}, Landroidx/cardview/widget/CardViewImpl;->initStatic()V

    #@15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 113
    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 117
    sget v0, Landroidx/cardview/R$attr;->cardViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    #@0
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 108
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@a
    .line 110
    new-instance v1, Landroid/graphics/Rect;

    #@c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v1, p0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    #@11
    .line 447
    new-instance v3, Landroidx/cardview/widget/CardView$1;

    #@13
    invoke-direct {v3, p0}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/cardview/widget/CardView;)V

    #@16
    iput-object v3, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@18
    .line 123
    sget-object v1, Landroidx/cardview/R$styleable;->CardView:[I

    #@1a
    sget v2, Landroidx/cardview/R$style;->CardView:I

    #@1c
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1f
    move-result-object p2

    #@20
    .line 126
    sget p3, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    #@22
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@25
    move-result p3

    #@26
    const/4 v1, 0x0

    #@27
    if-eqz p3, :cond_31

    #@29
    .line 127
    sget p3, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    #@2b
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@2e
    move-result-object p3

    #@2f
    :goto_2f
    move-object v5, p3

    #@30
    goto :goto_6b

    #@31
    .line 130
    :cond_31
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    #@34
    move-result-object p3

    #@35
    sget-object v2, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    #@37
    invoke-virtual {p3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@3a
    move-result-object p3

    #@3b
    .line 131
    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@3e
    move-result v2

    #@3f
    .line 132
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    #@42
    const/4 p3, 0x3

    #@43
    new-array p3, p3, [F

    #@45
    .line 136
    invoke-static {v2, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    #@48
    const/4 v2, 0x2

    #@49
    aget p3, p3, v2

    #@4b
    const/high16 v2, 0x3f000000    # 0.5f

    #@4d
    cmpl-float p3, p3, v2

    #@4f
    if-lez p3, :cond_5c

    #@51
    .line 138
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    #@54
    move-result-object p3

    #@55
    sget v2, Landroidx/cardview/R$color;->cardview_light_background:I

    #@57
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    #@5a
    move-result p3

    #@5b
    goto :goto_66

    #@5c
    .line 139
    :cond_5c
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    #@5f
    move-result-object p3

    #@60
    sget v2, Landroidx/cardview/R$color;->cardview_dark_background:I

    #@62
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    #@65
    move-result p3

    #@66
    .line 137
    :goto_66
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@69
    move-result-object p3

    #@6a
    goto :goto_2f

    #@6b
    .line 141
    :goto_6b
    sget p3, Landroidx/cardview/R$styleable;->CardView_cardCornerRadius:I

    #@6d
    const/4 v2, 0x0

    #@6e
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@71
    move-result v6

    #@72
    .line 142
    sget p3, Landroidx/cardview/R$styleable;->CardView_cardElevation:I

    #@74
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@77
    move-result v7

    #@78
    .line 143
    sget p3, Landroidx/cardview/R$styleable;->CardView_cardMaxElevation:I

    #@7a
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@7d
    move-result p3

    #@7e
    .line 144
    sget v2, Landroidx/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    #@80
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@83
    move-result v2

    #@84
    iput-boolean v2, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    #@86
    .line 145
    sget v2, Landroidx/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    #@88
    const/4 v4, 0x1

    #@89
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@8c
    move-result v2

    #@8d
    iput-boolean v2, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    #@8f
    .line 146
    sget v2, Landroidx/cardview/R$styleable;->CardView_contentPadding:I

    #@91
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@94
    move-result v2

    #@95
    .line 147
    sget v4, Landroidx/cardview/R$styleable;->CardView_contentPaddingLeft:I

    #@97
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@9a
    move-result v4

    #@9b
    iput v4, v0, Landroid/graphics/Rect;->left:I

    #@9d
    .line 149
    sget v4, Landroidx/cardview/R$styleable;->CardView_contentPaddingTop:I

    #@9f
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@a2
    move-result v4

    #@a3
    iput v4, v0, Landroid/graphics/Rect;->top:I

    #@a5
    .line 151
    sget v4, Landroidx/cardview/R$styleable;->CardView_contentPaddingRight:I

    #@a7
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@aa
    move-result v4

    #@ab
    iput v4, v0, Landroid/graphics/Rect;->right:I

    #@ad
    .line 153
    sget v4, Landroidx/cardview/R$styleable;->CardView_contentPaddingBottom:I

    #@af
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@b2
    move-result v2

    #@b3
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@b5
    cmpl-float v0, v7, p3

    #@b7
    if-lez v0, :cond_bb

    #@b9
    move v8, v7

    #@ba
    goto :goto_bc

    #@bb
    :cond_bb
    move v8, p3

    #@bc
    .line 158
    :goto_bc
    sget p3, Landroidx/cardview/R$styleable;->CardView_android_minWidth:I

    #@be
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@c1
    move-result p3

    #@c2
    iput p3, p0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    #@c4
    .line 159
    sget p3, Landroidx/cardview/R$styleable;->CardView_android_minHeight:I

    #@c6
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@c9
    move-result p3

    #@ca
    iput p3, p0, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    #@cc
    .line 160
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@cf
    .line 162
    sget-object v2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@d1
    move-object v4, p1

    #@d2
    invoke-interface/range {v2 .. v8}, Landroidx/cardview/widget/CardViewImpl;->initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    #@d5
    return-void
.end method

.method static synthetic access$001(Landroidx/cardview/widget/CardView;IIII)V
    .registers 5

    #@0
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    #@3
    return-void
.end method

.method static synthetic access$101(Landroidx/cardview/widget/CardView;I)V
    .registers 2

    #@0
    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    #@3
    return-void
.end method

.method static synthetic access$201(Landroidx/cardview/widget/CardView;I)V
    .registers 2

    #@0
    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    #@3
    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 303
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCardElevation()F
    .registers 3

    #@0
    .line 387
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->getElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getContentPaddingBottom()I
    .registers 2

    #@0
    .line 343
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4
    return v0
.end method

.method public getContentPaddingLeft()I
    .registers 2

    #@0
    .line 313
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    return v0
.end method

.method public getContentPaddingRight()I
    .registers 2

    #@0
    .line 323
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@4
    return v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    #@0
    .line 333
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@4
    return v0
.end method

.method public getMaxCardElevation()F
    .registers 3

    #@0
    .line 413
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPreventCornerOverlap()Z
    .registers 2

    #@0
    .line 424
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    #@2
    return v0
.end method

.method public getRadius()F
    .registers 3

    #@0
    .line 364
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    #@0
    .line 183
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    #@2
    return v0
.end method

.method protected onMeasure(II)V
    .registers 9

    #@0
    .line 232
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    instance-of v1, v0, Landroidx/cardview/widget/CardViewApi21Impl;

    #@4
    if-nez v1, :cond_50

    #@6
    .line 233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result v1

    #@a
    const/high16 v2, 0x40000000    # 2.0f

    #@c
    const/high16 v3, -0x80000000

    #@e
    if-eq v1, v3, :cond_13

    #@10
    if-eq v1, v2, :cond_13

    #@12
    goto :goto_2b

    #@13
    .line 237
    :cond_13
    iget-object v4, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@15
    invoke-interface {v0, v4}, Landroidx/cardview/widget/CardViewImpl;->getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F

    #@18
    move-result v4

    #@19
    float-to-double v4, v4

    #@1a
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@1d
    move-result-wide v4

    #@1e
    double-to-int v4, v4

    #@1f
    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@22
    move-result p1

    #@23
    .line 238
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    #@26
    move-result p1

    #@27
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2a
    move-result p1

    #@2b
    .line 246
    :goto_2b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@2e
    move-result v1

    #@2f
    if-eq v1, v3, :cond_34

    #@31
    if-eq v1, v2, :cond_34

    #@33
    goto :goto_4c

    #@34
    .line 250
    :cond_34
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@36
    invoke-interface {v0, v2}, Landroidx/cardview/widget/CardViewImpl;->getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F

    #@39
    move-result v0

    #@3a
    float-to-double v2, v0

    #@3b
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@3e
    move-result-wide v2

    #@3f
    double-to-int v0, v2

    #@40
    .line 252
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@43
    move-result p2

    #@44
    .line 251
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    #@47
    move-result p2

    #@48
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4b
    move-result p2

    #@4c
    .line 258
    :goto_4c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@4f
    goto :goto_53

    #@50
    .line 260
    :cond_50
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@53
    :goto_53
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 4

    #@0
    .line 283
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@7
    move-result-object p1

    #@8
    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    #@b
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    #@0
    .line 293
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setCardElevation(F)V
    .registers 4

    #@0
    .line 376
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    #@7
    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 6

    #@0
    .line 226
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@5
    .line 227
    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@7
    iget-object p2, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@9
    invoke-interface {p1, p2}, Landroidx/cardview/widget/CardViewImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    #@c
    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 4

    #@0
    .line 402
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    #@7
    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2

    #@0
    .line 272
    iput p1, p0, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    #@2
    .line 273
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    #@5
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2

    #@0
    .line 266
    iput p1, p0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    #@2
    .line 267
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    #@5
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    #@0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5

    #@0
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 3

    #@0
    .line 441
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    #@2
    if-eq p1, v0, :cond_d

    #@4
    .line 442
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    #@6
    .line 443
    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@8
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@a
    invoke-interface {p1, v0}, Landroidx/cardview/widget/CardViewImpl;->onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V

    #@d
    :cond_d
    return-void
.end method

.method public setRadius(F)V
    .registers 4

    #@0
    .line 354
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@2
    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@4
    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V

    #@7
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    #@0
    .line 203
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    #@2
    if-eq v0, p1, :cond_d

    #@4
    .line 204
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    #@6
    .line 205
    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    #@8
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    #@a
    invoke-interface {p1, v0}, Landroidx/cardview/widget/CardViewImpl;->onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V

    #@d
    :cond_d
    return-void
.end method
