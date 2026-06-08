.class public Landroidx/viewpager/widget/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/PagerTitleStrip$PageListener;,
        Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

.field mPager:Landroidx/viewpager/widget/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/viewpager/widget/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [I

    #@3
    .line 73
    fill-array-data v0, :array_14

    #@6
    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->ATTRS:[I

    #@8
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [I

    #@b
    const/4 v1, 0x0

    #@c
    const v2, 0x101038c

    #@f
    aput v2, v0, v1

    #@11
    .line 80
    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->TEXT_ATTRS:[I

    #@13
    return-void

    #@14
    :array_14
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 109
    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    #@0
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, -0x1

    #@4
    .line 61
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@6
    const/high16 v0, -0x40800000    # -1.0f

    #@8
    .line 62
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@a
    .line 69
    new-instance v0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    #@c
    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;-><init>(Landroidx/viewpager/widget/PagerTitleStrip;)V

    #@f
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    #@11
    .line 115
    new-instance v0, Landroid/widget/TextView;

    #@13
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@16
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@18
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@1b
    .line 116
    new-instance v0, Landroid/widget/TextView;

    #@1d
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@20
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@22
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@25
    .line 117
    new-instance v0, Landroid/widget/TextView;

    #@27
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@2a
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@2c
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@2f
    .line 119
    sget-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->ATTRS:[I

    #@31
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@34
    move-result-object p2

    #@35
    const/4 v0, 0x0

    #@36
    .line 120
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_4b

    #@3c
    .line 122
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@3e
    invoke-static {v2, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@41
    .line 123
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@43
    invoke-static {v2, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@46
    .line 124
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@48
    invoke-static {v2, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@4b
    :cond_4b
    const/4 v2, 0x1

    #@4c
    .line 126
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_56

    #@52
    int-to-float v2, v2

    #@53
    .line 128
    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSize(IF)V

    #@56
    :cond_56
    const/4 v2, 0x2

    #@57
    .line 130
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_70

    #@5d
    .line 131
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@60
    move-result v2

    #@61
    .line 132
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@63
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@66
    .line 133
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@68
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@6b
    .line 134
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@6d
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@70
    :cond_70
    const/4 v2, 0x3

    #@71
    const/16 v3, 0x50

    #@73
    .line 136
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@76
    move-result v2

    #@77
    iput v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    #@79
    .line 137
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@7c
    .line 139
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@7e
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@81
    move-result-object p2

    #@82
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@85
    move-result p2

    #@86
    iput p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    #@88
    const p2, 0x3f19999a    # 0.6f

    #@8b
    .line 140
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    #@8e
    .line 142
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@90
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@92
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@95
    .line 143
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@97
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@99
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@9c
    .line 144
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@9e
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@a0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@a3
    if-eqz v1, :cond_b2

    #@a5
    .line 148
    sget-object p2, Landroidx/viewpager/widget/PagerTitleStrip;->TEXT_ATTRS:[I

    #@a7
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@aa
    move-result-object p2

    #@ab
    .line 149
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ae
    move-result v0

    #@af
    .line 150
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@b2
    :cond_b2
    if-eqz v0, :cond_c4

    #@b4
    .line 154
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@b6
    invoke-static {p2}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@b9
    .line 155
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@bb
    invoke-static {p2}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@be
    .line 156
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@c0
    invoke-static {p2}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@c3
    goto :goto_d3

    #@c4
    .line 158
    :cond_c4
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@c6
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    #@c9
    .line 159
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@cb
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    #@ce
    .line 160
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@d0
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    #@d3
    .line 163
    :goto_d3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d6
    move-result-object p1

    #@d7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@da
    move-result-object p1

    #@db
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    #@dd
    const/high16 p2, 0x41800000    # 16.0f

    #@df
    mul-float/2addr p1, p2

    #@e0
    float-to-int p1, p1

    #@e1
    .line 164
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    #@e3
    return-void
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .registers 3

    #@0
    .line 105
    new-instance v0, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;

    #@2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    #@9
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@c
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .registers 2

    #@0
    .line 464
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 466
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@9
    move-result v0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0
.end method

.method public getTextSpacing()I
    .registers 2

    #@0
    .line 181
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    #@0
    .line 239
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 241
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    #@6
    move-result-object v0

    #@7
    .line 242
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    #@9
    if-eqz v1, :cond_2d

    #@b
    .line 247
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    #@d
    .line 248
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    #@10
    move-result-object v1

    #@11
    .line 250
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    #@13
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@16
    .line 251
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    #@18
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    #@1b
    .line 252
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@1d
    .line 253
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@1f
    if-eqz v0, :cond_28

    #@21
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroidx/viewpager/widget/PagerAdapter;

    #@27
    goto :goto_29

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    :goto_29
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    #@2c
    return-void

    #@2d
    .line 243
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2f
    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    #@0
    .line 258
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 259
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@5
    if-eqz v0, :cond_1d

    #@7
    .line 260
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    #@f
    .line 261
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@11
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    #@14
    .line 262
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@16
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    #@18
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    #@1b
    .line 263
    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@1d
    :cond_1d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 456
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@2
    if-eqz p1, :cond_13

    #@4
    .line 457
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@6
    const/4 p2, 0x0

    #@7
    cmpl-float p3, p1, p2

    #@9
    if-ltz p3, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    move p1, p2

    #@d
    .line 458
    :goto_d
    iget p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@f
    const/4 p3, 0x1

    #@10
    invoke-virtual {p0, p2, p1, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@13
    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    #@0
    .line 420
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    if-ne v0, v1, :cond_5d

    #@8
    .line 425
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    #@f
    move-result v2

    #@10
    add-int/2addr v0, v2

    #@11
    const/4 v2, -0x2

    #@12
    .line 426
    invoke-static {p2, v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->getChildMeasureSpec(III)I

    #@15
    move-result v3

    #@16
    .line 429
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@19
    move-result v4

    #@1a
    int-to-float v5, v4

    #@1b
    const v6, 0x3e4ccccd    # 0.2f

    #@1e
    mul-float/2addr v5, v6

    #@1f
    float-to-int v5, v5

    #@20
    .line 431
    invoke-static {p1, v5, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->getChildMeasureSpec(III)I

    #@23
    move-result p1

    #@24
    .line 434
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@26
    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->measure(II)V

    #@29
    .line 435
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@2b
    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->measure(II)V

    #@2e
    .line 436
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@30
    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->measure(II)V

    #@33
    .line 439
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@36
    move-result p1

    #@37
    if-ne p1, v1, :cond_3e

    #@39
    .line 441
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3c
    move-result p1

    #@3d
    goto :goto_4d

    #@3e
    .line 443
    :cond_3e
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@40
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@43
    move-result p1

    #@44
    .line 444
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    #@47
    move-result v1

    #@48
    add-int/2addr p1, v0

    #@49
    .line 445
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@4c
    move-result p1

    #@4d
    .line 448
    :goto_4d
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@4f
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    #@52
    move-result v0

    #@53
    shl-int/lit8 v0, v0, 0x10

    #@55
    .line 449
    invoke-static {p1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    #@58
    move-result p1

    #@59
    .line 451
    invoke-virtual {p0, v4, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setMeasuredDimension(II)V

    #@5c
    return-void

    #@5d
    .line 422
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@5f
    const-string p2, "Must measure with an exact width"

    #@61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@64
    throw p1
.end method

.method public requestLayout()V
    .registers 2

    #@0
    .line 308
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 309
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@7
    :cond_7
    return-void
.end method

.method public setGravity(I)V
    .registers 2

    #@0
    .line 233
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    #@2
    .line 234
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    #@5
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .registers 4

    #@0
    const/high16 v0, 0x437f0000    # 255.0f

    #@2
    mul-float/2addr p1, v0

    #@3
    float-to-int p1, p1

    #@4
    and-int/lit16 p1, p1, 0xff

    #@6
    .line 190
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    #@8
    shl-int/lit8 p1, p1, 0x18

    #@a
    .line 191
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    #@c
    const v1, 0xffffff

    #@f
    and-int/2addr v0, v1

    #@10
    or-int/2addr p1, v0

    #@11
    .line 192
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@16
    .line 193
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@1b
    return-void
.end method

.method public setTextColor(I)V
    .registers 4

    #@0
    .line 203
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    #@2
    .line 204
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@7
    .line 205
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    #@9
    shl-int/lit8 p1, p1, 0x18

    #@b
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    #@d
    const v1, 0xffffff

    #@10
    and-int/2addr v0, v1

    #@11
    or-int/2addr p1, v0

    #@12
    .line 206
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@17
    .line 207
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@1c
    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    #@0
    .line 221
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@5
    .line 222
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@a
    .line 223
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@f
    return-void
.end method

.method public setTextSpacing(I)V
    .registers 2

    #@0
    .line 173
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    #@2
    .line 174
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    #@5
    return-void
.end method

.method updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 4

    #@0
    if-eqz p1, :cond_a

    #@2
    .line 315
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    #@4
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@7
    const/4 p1, 0x0

    #@8
    .line 316
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@a
    :cond_a
    if-eqz p2, :cond_18

    #@c
    .line 319
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    #@e
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@11
    .line 320
    new-instance p1, Ljava/lang/ref/WeakReference;

    #@13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@16
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@18
    .line 322
    :cond_18
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@1a
    if-eqz p1, :cond_2d

    #@1c
    const/4 v0, -0x1

    #@1d
    .line 323
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@1f
    const/high16 v0, -0x40800000    # -1.0f

    #@21
    .line 324
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@23
    .line 325
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    #@26
    move-result p1

    #@27
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    #@2a
    .line 326
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    #@2d
    :cond_2d
    return-void
.end method

.method updateText(ILandroidx/viewpager/widget/PagerAdapter;)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p2, :cond_8

    #@3
    .line 268
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@6
    move-result v1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move v1, v0

    #@9
    :goto_9
    const/4 v2, 0x1

    #@a
    .line 269
    iput-boolean v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    #@c
    const/4 v3, 0x0

    #@d
    if-lt p1, v2, :cond_18

    #@f
    if-eqz p2, :cond_18

    #@11
    add-int/lit8 v2, p1, -0x1

    #@13
    .line 273
    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@16
    move-result-object v2

    #@17
    goto :goto_19

    #@18
    :cond_18
    move-object v2, v3

    #@19
    .line 275
    :goto_19
    iget-object v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@1b
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1e
    .line 277
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@20
    if-eqz p2, :cond_29

    #@22
    if-ge p1, v1, :cond_29

    #@24
    .line 278
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@27
    move-result-object v4

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move-object v4, v3

    #@2a
    .line 277
    :goto_2a
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2d
    add-int/lit8 v2, p1, 0x1

    #@2f
    if-ge v2, v1, :cond_37

    #@31
    if-eqz p2, :cond_37

    #@33
    .line 282
    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@36
    move-result-object v3

    #@37
    .line 284
    :cond_37
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@39
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3c
    .line 287
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getWidth()I

    #@3f
    move-result p2

    #@40
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingLeft()I

    #@43
    move-result v1

    #@44
    sub-int/2addr p2, v1

    #@45
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingRight()I

    #@48
    move-result v1

    #@49
    sub-int/2addr p2, v1

    #@4a
    int-to-float p2, p2

    #@4b
    const v1, 0x3f4ccccd    # 0.8f

    #@4e
    mul-float/2addr p2, v1

    #@4f
    float-to-int p2, p2

    #@50
    .line 288
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    #@53
    move-result p2

    #@54
    const/high16 v1, -0x80000000

    #@56
    .line 289
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@59
    move-result p2

    #@5a
    .line 290
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getHeight()I

    #@5d
    move-result v2

    #@5e
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    #@61
    move-result v3

    #@62
    sub-int/2addr v2, v3

    #@63
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    #@66
    move-result v3

    #@67
    sub-int/2addr v2, v3

    #@68
    .line 291
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@6b
    move-result v2

    #@6c
    .line 292
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6f
    move-result v1

    #@70
    .line 293
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@72
    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    #@75
    .line 294
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@77
    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    #@7a
    .line 295
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@7c
    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    #@7f
    .line 297
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@81
    .line 299
    iget-boolean p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    #@83
    if-nez p2, :cond_8a

    #@85
    .line 300
    iget p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@87
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@8a
    .line 303
    :cond_8a
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    #@8c
    return-void
.end method

.method updateTextPositions(IFZ)V
    .registers 21

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    move/from16 v2, p2

    #@6
    .line 331
    iget v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@8
    if-eq v1, v3, :cond_14

    #@a
    .line 332
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    #@c
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0, v1, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    #@13
    goto :goto_1d

    #@14
    :cond_14
    if-nez p3, :cond_1d

    #@16
    .line 333
    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@18
    cmpl-float v1, v2, v1

    #@1a
    if-nez v1, :cond_1d

    #@1c
    return-void

    #@1d
    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    #@1e
    .line 337
    iput-boolean v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    #@20
    .line 339
    iget-object v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@22
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@25
    move-result v1

    #@26
    .line 340
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@28
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@2b
    move-result v3

    #@2c
    .line 341
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@2e
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@31
    move-result v4

    #@32
    .line 342
    div-int/lit8 v5, v3, 0x2

    #@34
    .line 344
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getWidth()I

    #@37
    move-result v6

    #@38
    .line 345
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getHeight()I

    #@3b
    move-result v7

    #@3c
    .line 346
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingLeft()I

    #@3f
    move-result v8

    #@40
    .line 347
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingRight()I

    #@43
    move-result v9

    #@44
    .line 348
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    #@47
    move-result v10

    #@48
    .line 349
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    #@4b
    move-result v11

    #@4c
    add-int v12, v8, v5

    #@4e
    add-int v13, v9, v5

    #@50
    sub-int v12, v6, v12

    #@52
    sub-int/2addr v12, v13

    #@53
    const/high16 v14, 0x3f000000    # 0.5f

    #@55
    add-float/2addr v14, v2

    #@56
    const/high16 v15, 0x3f800000    # 1.0f

    #@58
    cmpl-float v16, v14, v15

    #@5a
    if-lez v16, :cond_5d

    #@5c
    sub-float/2addr v14, v15

    #@5d
    :cond_5d
    sub-int v13, v6, v13

    #@5f
    int-to-float v12, v12

    #@60
    mul-float/2addr v12, v14

    #@61
    float-to-int v12, v12

    #@62
    sub-int/2addr v13, v12

    #@63
    sub-int/2addr v13, v5

    #@64
    add-int/2addr v3, v13

    #@65
    .line 362
    iget-object v5, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@67
    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    #@6a
    move-result v5

    #@6b
    .line 363
    iget-object v12, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@6d
    invoke-virtual {v12}, Landroid/widget/TextView;->getBaseline()I

    #@70
    move-result v12

    #@71
    .line 364
    iget-object v14, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@73
    invoke-virtual {v14}, Landroid/widget/TextView;->getBaseline()I

    #@76
    move-result v14

    #@77
    .line 365
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    #@7a
    move-result v15

    #@7b
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    #@7e
    move-result v15

    #@7f
    sub-int v5, v15, v5

    #@81
    sub-int v12, v15, v12

    #@83
    sub-int/2addr v15, v14

    #@84
    .line 369
    iget-object v14, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@86
    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@89
    move-result v14

    #@8a
    add-int/2addr v14, v5

    #@8b
    .line 370
    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@8d
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@90
    move-result v2

    #@91
    add-int/2addr v2, v12

    #@92
    move/from16 p1, v4

    #@94
    .line 371
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@96
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@99
    move-result v4

    #@9a
    add-int/2addr v4, v15

    #@9b
    .line 372
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    #@9e
    move-result v2

    #@9f
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@a2
    move-result v2

    #@a3
    .line 375
    iget v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    #@a5
    and-int/lit8 v4, v4, 0x70

    #@a7
    const/16 v14, 0x10

    #@a9
    if-eq v4, v14, :cond_b6

    #@ab
    const/16 v14, 0x50

    #@ad
    if-eq v4, v14, :cond_b3

    #@af
    add-int/2addr v5, v10

    #@b0
    add-int/2addr v12, v10

    #@b1
    add-int/2addr v10, v15

    #@b2
    goto :goto_bf

    #@b3
    :cond_b3
    sub-int/2addr v7, v11

    #@b4
    sub-int/2addr v7, v2

    #@b5
    goto :goto_bb

    #@b6
    :cond_b6
    sub-int/2addr v7, v10

    #@b7
    sub-int/2addr v7, v11

    #@b8
    sub-int/2addr v7, v2

    #@b9
    .line 389
    div-int/lit8 v7, v7, 0x2

    #@bb
    :goto_bb
    add-int/2addr v5, v7

    #@bc
    add-int/2addr v12, v7

    #@bd
    add-int v10, v7, v15

    #@bf
    .line 402
    :goto_bf
    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@c1
    .line 403
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@c4
    move-result v4

    #@c5
    add-int/2addr v4, v12

    #@c6
    .line 402
    invoke-virtual {v2, v13, v12, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@c9
    .line 405
    iget v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    #@cb
    sub-int/2addr v13, v2

    #@cc
    sub-int/2addr v13, v1

    #@cd
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    #@d0
    move-result v2

    #@d1
    .line 406
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@d3
    add-int/2addr v1, v2

    #@d4
    .line 407
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@d7
    move-result v7

    #@d8
    add-int/2addr v7, v5

    #@d9
    .line 406
    invoke-virtual {v4, v2, v5, v1, v7}, Landroid/widget/TextView;->layout(IIII)V

    #@dc
    sub-int/2addr v6, v9

    #@dd
    sub-int v6, v6, p1

    #@df
    .line 409
    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    #@e1
    add-int/2addr v3, v1

    #@e2
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    #@e5
    move-result v1

    #@e6
    .line 411
    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@e8
    add-int v4, v1, p1

    #@ea
    .line 412
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@ed
    move-result v3

    #@ee
    add-int/2addr v3, v10

    #@ef
    .line 411
    invoke-virtual {v2, v1, v10, v4, v3}, Landroid/widget/TextView;->layout(IIII)V

    #@f2
    move/from16 v1, p2

    #@f4
    .line 414
    iput v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@f6
    const/4 v1, 0x0

    #@f7
    .line 415
    iput-boolean v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    #@f9
    return-void
.end method
