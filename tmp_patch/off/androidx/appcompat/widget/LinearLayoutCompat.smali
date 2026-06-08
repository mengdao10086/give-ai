.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.widget.LinearLayoutCompat"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 153
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 157
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    #@0
    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 v0, 0x1

    #@4
    .line 104
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    #@6
    const/4 v1, -0x1

    #@7
    .line 113
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    #@9
    const/4 v2, 0x0

    #@a
    .line 120
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    #@c
    const v3, 0x800033

    #@f
    .line 124
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@11
    .line 164
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    #@13
    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@16
    move-result-object v3

    #@17
    .line 166
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    #@19
    .line 168
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    #@1c
    move-result-object v8

    #@1d
    const/4 v10, 0x0

    #@1e
    move-object v4, p0

    #@1f
    move-object v5, p1

    #@20
    move-object v7, p2

    #@21
    move v9, p3

    #@22
    .line 166
    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@25
    .line 170
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    #@27
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@2a
    move-result p1

    #@2b
    if-ltz p1, :cond_30

    #@2d
    .line 172
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    #@30
    .line 175
    :cond_30
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    #@32
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@35
    move-result p1

    #@36
    if-ltz p1, :cond_3b

    #@38
    .line 177
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    #@3b
    .line 180
    :cond_3b
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    #@3d
    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@40
    move-result p1

    #@41
    if-nez p1, :cond_46

    #@43
    .line 182
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    #@46
    .line 185
    :cond_46
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    #@48
    const/high16 p2, -0x40800000    # -1.0f

    #@4a
    invoke-virtual {v3, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    #@4d
    move-result p1

    #@4e
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    #@50
    .line 187
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    #@52
    .line 188
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@55
    move-result p1

    #@56
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    #@58
    .line 190
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    #@5a
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@5d
    move-result p1

    #@5e
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    #@60
    .line 192
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    #@62
    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@65
    move-result-object p1

    #@66
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    #@69
    .line 193
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    #@6b
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@6e
    move-result p1

    #@6f
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    #@71
    .line 194
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    #@73
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@76
    move-result p1

    #@77
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    #@79
    .line 196
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@7c
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 13

    #@0
    .line 1341
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_b
    if-ge v1, p1, :cond_3a

    #@d
    .line 1344
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    .line 1345
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v2

    #@15
    const/16 v4, 0x8

    #@17
    if-eq v2, v4, :cond_37

    #@19
    .line 1346
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object v2

    #@1d
    move-object v8, v2

    #@1e
    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@20
    .line 1348
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@22
    const/4 v4, -0x1

    #@23
    if-ne v2, v4, :cond_37

    #@25
    .line 1351
    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@27
    .line 1352
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@2a
    move-result v2

    #@2b
    iput v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@2d
    const/4 v5, 0x0

    #@2e
    const/4 v7, 0x0

    #@2f
    move-object v2, p0

    #@30
    move v4, p2

    #@31
    move v6, v0

    #@32
    .line 1355
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@35
    .line 1356
    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@37
    :cond_37
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_b

    #@3a
    :cond_3a
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 13

    #@0
    .line 919
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_b
    if-ge v1, p1, :cond_3a

    #@d
    .line 922
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    .line 923
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v2

    #@15
    const/16 v4, 0x8

    #@17
    if-eq v2, v4, :cond_37

    #@19
    .line 924
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object v2

    #@1d
    move-object v8, v2

    #@1e
    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@20
    .line 926
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@22
    const/4 v4, -0x1

    #@23
    if-ne v2, v4, :cond_37

    #@25
    .line 929
    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@27
    .line 930
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@2a
    move-result v2

    #@2b
    iput v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@2d
    const/4 v5, 0x0

    #@2e
    const/4 v7, 0x0

    #@2f
    move-object v2, p0

    #@30
    move v4, v0

    #@31
    move v6, p2

    #@32
    .line 933
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@35
    .line 934
    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@37
    :cond_37
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_b

    #@3a
    :cond_3a
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    #@0
    add-int/2addr p4, p2

    #@1
    add-int/2addr p5, p3

    #@2
    .line 1669
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    #@5
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    #@0
    .line 1781
    instance-of p1, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@2
    return p1
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    .line 342
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    #@3
    move-result v0

    #@4
    .line 343
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v0, :cond_3f

    #@b
    .line 345
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@e
    move-result-object v3

    #@f
    if-eqz v3, :cond_3c

    #@11
    .line 347
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v4

    #@15
    const/16 v5, 0x8

    #@17
    if-eq v4, v5, :cond_3c

    #@19
    .line 348
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_3c

    #@1f
    .line 349
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@25
    if-eqz v1, :cond_2f

    #@27
    .line 352
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    #@2a
    move-result v3

    #@2b
    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@2d
    add-int/2addr v3, v4

    #@2e
    goto :goto_39

    #@2f
    .line 354
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@32
    move-result v3

    #@33
    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@35
    sub-int/2addr v3, v4

    #@36
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@38
    sub-int/2addr v3, v4

    #@39
    .line 356
    :goto_39
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    #@3c
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_9

    #@3f
    .line 361
    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_7d

    #@45
    add-int/lit8 v0, v0, -0x1

    #@47
    .line 362
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@4a
    move-result-object v0

    #@4b
    if-nez v0, :cond_60

    #@4d
    if-eqz v1, :cond_54

    #@4f
    .line 366
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@52
    move-result v0

    #@53
    goto :goto_7a

    #@54
    .line 368
    :cond_54
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    #@57
    move-result v0

    #@58
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    #@5b
    move-result v1

    #@5c
    sub-int/2addr v0, v1

    #@5d
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@5f
    goto :goto_71

    #@60
    .line 371
    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@63
    move-result-object v2

    #@64
    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@66
    if-eqz v1, :cond_73

    #@68
    .line 373
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@6b
    move-result v0

    #@6c
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@6e
    sub-int/2addr v0, v1

    #@6f
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@71
    :goto_71
    sub-int/2addr v0, v1

    #@72
    goto :goto_7a

    #@73
    .line 375
    :cond_73
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@76
    move-result v0

    #@77
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@79
    add-int/2addr v0, v1

    #@7a
    .line 378
    :goto_7a
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    #@7d
    :cond_7d
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_31

    #@7
    .line 317
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_2e

    #@d
    .line 319
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@10
    move-result v3

    #@11
    const/16 v4, 0x8

    #@13
    if-eq v3, v4, :cond_2e

    #@15
    .line 320
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2e

    #@1b
    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@21
    .line 322
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@24
    move-result v2

    #@25
    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@27
    sub-int/2addr v2, v3

    #@28
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    #@2a
    sub-int/2addr v2, v3

    #@2b
    .line 323
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    #@2e
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_5

    #@31
    .line 328
    :cond_31
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_5c

    #@37
    add-int/lit8 v0, v0, -0x1

    #@39
    .line 329
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@3c
    move-result-object v0

    #@3d
    if-nez v0, :cond_4c

    #@3f
    .line 332
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    #@42
    move-result v0

    #@43
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@46
    move-result v1

    #@47
    sub-int/2addr v0, v1

    #@48
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    #@4a
    sub-int/2addr v0, v1

    #@4b
    goto :goto_59

    #@4c
    .line 334
    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@52
    .line 335
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@55
    move-result v0

    #@56
    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@58
    add-int/2addr v0, v1

    #@59
    .line 337
    :goto_59
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    #@5c
    :cond_5c
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    #@0
    .line 383
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@5
    move-result v1

    #@6
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    #@8
    add-int/2addr v1, v2

    #@9
    .line 384
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    #@c
    move-result v2

    #@d
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    #@10
    move-result v3

    #@11
    sub-int/2addr v2, v3

    #@12
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    #@14
    sub-int/2addr v2, v3

    #@15
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    #@17
    add-int/2addr v3, p2

    #@18
    .line 383
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 385
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@20
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    #@0
    .line 389
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@5
    move-result v1

    #@6
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    #@8
    add-int/2addr v1, v2

    #@9
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@b
    add-int/2addr v2, p2

    #@c
    .line 390
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    #@f
    move-result v3

    #@10
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@13
    move-result v4

    #@14
    sub-int/2addr v3, v4

    #@15
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    #@17
    sub-int/2addr v3, v4

    #@18
    .line 389
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 391
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@20
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    #@0
    .line 1764
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    #@2
    const/4 v1, -0x2

    #@3
    if-nez v0, :cond_b

    #@5
    .line 1765
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@7
    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    #@a
    return-object v0

    #@b
    :cond_b
    const/4 v2, 0x1

    #@c
    if-ne v0, v2, :cond_15

    #@e
    .line 1767
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@10
    const/4 v2, -0x1

    #@11
    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    #@14
    return-object v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    #@0
    .line 1751
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    #@0
    .line 1774
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public getBaseline()I
    .registers 6

    #@0
    .line 445
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    #@2
    if-gez v0, :cond_9

    #@4
    .line 446
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 449
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    #@c
    move-result v0

    #@d
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    #@f
    if-le v0, v1, :cond_77

    #@11
    .line 454
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@18
    move-result v1

    #@19
    const/4 v2, -0x1

    #@1a
    if-ne v1, v2, :cond_29

    #@1c
    .line 458
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    #@1e
    if-nez v0, :cond_21

    #@20
    return v2

    #@21
    .line 464
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    #@23
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    #@25
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 474
    :cond_29
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    #@2b
    .line 476
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    #@2d
    const/4 v4, 0x1

    #@2e
    if-ne v3, v4, :cond_6c

    #@30
    .line 477
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@32
    and-int/lit8 v3, v3, 0x70

    #@34
    const/16 v4, 0x30

    #@36
    if-eq v3, v4, :cond_6c

    #@38
    const/16 v4, 0x10

    #@3a
    if-eq v3, v4, :cond_53

    #@3c
    const/16 v4, 0x50

    #@3e
    if-eq v3, v4, :cond_41

    #@40
    goto :goto_6c

    #@41
    .line 481
    :cond_41
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    #@44
    move-result v2

    #@45
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    #@48
    move-result v3

    #@49
    sub-int/2addr v2, v3

    #@4a
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@4d
    move-result v3

    #@4e
    sub-int/2addr v2, v3

    #@4f
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@51
    sub-int/2addr v2, v3

    #@52
    goto :goto_6c

    #@53
    .line 485
    :cond_53
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    #@56
    move-result v3

    #@57
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    #@5a
    move-result v4

    #@5b
    sub-int/2addr v3, v4

    #@5c
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@5f
    move-result v4

    #@60
    sub-int/2addr v3, v4

    #@61
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@64
    move-result v4

    #@65
    sub-int/2addr v3, v4

    #@66
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@68
    sub-int/2addr v3, v4

    #@69
    div-int/lit8 v3, v3, 0x2

    #@6b
    add-int/2addr v2, v3

    #@6c
    .line 492
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@72
    .line 493
    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@74
    add-int/2addr v2, v0

    #@75
    add-int/2addr v2, v1

    #@76
    return v2

    #@77
    .line 450
    :cond_77
    new-instance v0, Ljava/lang/RuntimeException;

    #@79
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    #@7b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    #@0
    .line 503
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    #@2
    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 240
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    #@0
    .line 288
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    #@2
    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    #@0
    .line 298
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@2
    return v0
.end method

.method public getGravity()I
    .registers 2

    #@0
    .line 1730
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@2
    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public getOrientation()I
    .registers 2

    #@0
    .line 1695
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    #@2
    return v0
.end method

.method public getShowDividers()I
    .registers 2

    #@0
    .line 230
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    #@2
    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 2

    #@0
    .line 528
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method getVirtualChildCount()I
    .registers 2

    #@0
    .line 541
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getWeightSum()F
    .registers 2

    #@0
    .line 553
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    #@2
    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-nez p1, :cond_b

    #@4
    .line 591
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    #@6
    and-int/2addr p1, v1

    #@7
    if-eqz p1, :cond_a

    #@9
    move v0, v1

    #@a
    :cond_a
    return v0

    #@b
    .line 592
    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    #@e
    move-result v2

    #@f
    if-ne p1, v2, :cond_19

    #@11
    .line 593
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    #@13
    and-int/lit8 p1, p1, 0x4

    #@15
    if-eqz p1, :cond_18

    #@17
    move v0, v1

    #@18
    :cond_18
    return v0

    #@19
    .line 594
    :cond_19
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    #@1b
    and-int/lit8 v2, v2, 0x2

    #@1d
    if-eqz v2, :cond_33

    #@1f
    sub-int/2addr p1, v1

    #@20
    :goto_20
    if-ltz p1, :cond_33

    #@22
    .line 597
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@29
    move-result v2

    #@2a
    const/16 v3, 0x8

    #@2c
    if-eq v2, v3, :cond_30

    #@2e
    move v0, v1

    #@2f
    goto :goto_33

    #@30
    :cond_30
    add-int/lit8 p1, p1, -0x1

    #@32
    goto :goto_20

    #@33
    :cond_33
    :goto_33
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    #@0
    .line 402
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    #@2
    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    #@0
    .line 426
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    #@2
    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 29

    #@0
    move-object/from16 v6, p0

    #@2
    .line 1545
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    .line 1546
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@9
    move-result v7

    #@a
    sub-int v1, p4, p2

    #@c
    .line 1553
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@f
    move-result v2

    #@10
    sub-int v8, v1, v2

    #@12
    sub-int/2addr v1, v7

    #@13
    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@16
    move-result v2

    #@17
    sub-int v9, v1, v2

    #@19
    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    #@1c
    move-result v10

    #@1d
    .line 1560
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@1f
    const v2, 0x800007

    #@22
    and-int/2addr v2, v1

    #@23
    and-int/lit8 v11, v1, 0x70

    #@25
    .line 1563
    iget-boolean v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    #@27
    .line 1565
    iget-object v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    #@29
    .line 1566
    iget-object v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    #@2b
    .line 1568
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@2e
    move-result v1

    #@2f
    .line 1569
    invoke-static {v2, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@32
    move-result v1

    #@33
    const/4 v15, 0x2

    #@34
    const/4 v5, 0x1

    #@35
    if-eq v1, v5, :cond_4b

    #@37
    const/4 v2, 0x5

    #@38
    if-eq v1, v2, :cond_3f

    #@3a
    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@3d
    move-result v1

    #@3e
    goto :goto_56

    #@3f
    .line 1572
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@42
    move-result v1

    #@43
    add-int v1, v1, p3

    #@45
    sub-int v1, v1, p1

    #@47
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@49
    sub-int/2addr v1, v2

    #@4a
    goto :goto_56

    #@4b
    .line 1577
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@4e
    move-result v1

    #@4f
    sub-int v2, p3, p1

    #@51
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@53
    sub-int/2addr v2, v3

    #@54
    div-int/2addr v2, v15

    #@55
    add-int/2addr v1, v2

    #@56
    :goto_56
    const/4 v2, 0x0

    #@57
    if-eqz v0, :cond_60

    #@59
    add-int/lit8 v0, v10, -0x1

    #@5b
    move/from16 v16, v0

    #@5d
    const/16 v17, -0x1

    #@5f
    goto :goto_64

    #@60
    :cond_60
    move/from16 v16, v2

    #@62
    move/from16 v17, v5

    #@64
    :goto_64
    move v3, v2

    #@65
    :goto_65
    if-ge v3, v10, :cond_149

    #@67
    mul-int v0, v17, v3

    #@69
    add-int v2, v16, v0

    #@6b
    .line 1596
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@6e
    move-result-object v0

    #@6f
    if-nez v0, :cond_80

    #@71
    .line 1599
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    #@74
    move-result v0

    #@75
    add-int/2addr v1, v0

    #@76
    move/from16 v21, v5

    #@78
    move/from16 v22, v7

    #@7a
    move/from16 v19, v10

    #@7c
    move/from16 v20, v11

    #@7e
    goto/16 :goto_13a

    #@80
    .line 1600
    :cond_80
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@83
    move-result v5

    #@84
    const/16 v15, 0x8

    #@86
    if-eq v5, v15, :cond_130

    #@88
    .line 1601
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@8b
    move-result v15

    #@8c
    .line 1602
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@8f
    move-result v5

    #@90
    .line 1606
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@93
    move-result-object v18

    #@94
    move-object/from16 v4, v18

    #@96
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@98
    move/from16 v18, v3

    #@9a
    if-eqz v12, :cond_a8

    #@9c
    .line 1608
    iget v3, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@9e
    move/from16 v19, v10

    #@a0
    const/4 v10, -0x1

    #@a1
    if-eq v3, v10, :cond_aa

    #@a3
    .line 1609
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@a6
    move-result v10

    #@a7
    goto :goto_ab

    #@a8
    :cond_a8
    move/from16 v19, v10

    #@aa
    :cond_aa
    const/4 v10, -0x1

    #@ab
    .line 1612
    :goto_ab
    iget v3, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    #@ad
    if-gez v3, :cond_b0

    #@af
    move v3, v11

    #@b0
    :cond_b0
    and-int/lit8 v3, v3, 0x70

    #@b2
    move/from16 v20, v11

    #@b4
    const/16 v11, 0x10

    #@b6
    if-eq v3, v11, :cond_eb

    #@b8
    const/16 v11, 0x30

    #@ba
    if-eq v3, v11, :cond_d9

    #@bc
    const/16 v11, 0x50

    #@be
    if-eq v3, v11, :cond_c3

    #@c0
    move v3, v7

    #@c1
    const/4 v11, -0x1

    #@c2
    goto :goto_e8

    #@c3
    :cond_c3
    sub-int v3, v8, v5

    #@c5
    .line 1642
    iget v11, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@c7
    sub-int/2addr v3, v11

    #@c8
    const/4 v11, -0x1

    #@c9
    if-eq v10, v11, :cond_e8

    #@cb
    .line 1644
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@ce
    move-result v21

    #@cf
    sub-int v21, v21, v10

    #@d1
    const/4 v10, 0x2

    #@d2
    .line 1645
    aget v22, v14, v10

    #@d4
    sub-int v22, v22, v21

    #@d6
    sub-int v3, v3, v22

    #@d8
    goto :goto_e8

    #@d9
    :cond_d9
    const/4 v11, -0x1

    #@da
    .line 1619
    iget v3, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@dc
    add-int/2addr v3, v7

    #@dd
    if-eq v10, v11, :cond_e8

    #@df
    const/16 v21, 0x1

    #@e1
    .line 1621
    aget v22, v13, v21

    #@e3
    sub-int v22, v22, v10

    #@e5
    add-int v3, v3, v22

    #@e7
    goto :goto_f9

    #@e8
    :cond_e8
    :goto_e8
    const/16 v21, 0x1

    #@ea
    goto :goto_f9

    #@eb
    :cond_eb
    const/4 v11, -0x1

    #@ec
    const/16 v21, 0x1

    #@ee
    sub-int v3, v9, v5

    #@f0
    const/4 v10, 0x2

    #@f1
    .line 1637
    div-int/2addr v3, v10

    #@f2
    add-int/2addr v3, v7

    #@f3
    iget v10, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@f5
    add-int/2addr v3, v10

    #@f6
    iget v10, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@f8
    sub-int/2addr v3, v10

    #@f9
    .line 1653
    :goto_f9
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@fc
    move-result v10

    #@fd
    if-eqz v10, :cond_102

    #@ff
    .line 1654
    iget v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@101
    add-int/2addr v1, v10

    #@102
    .line 1657
    :cond_102
    iget v10, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@104
    add-int/2addr v10, v1

    #@105
    .line 1658
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    #@108
    move-result v1

    #@109
    add-int v22, v10, v1

    #@10b
    move-object/from16 p1, v0

    #@10d
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, p1

    #@111
    move v11, v2

    #@112
    move/from16 v2, v22

    #@114
    move/from16 v22, v7

    #@116
    const/16 v23, -0x1

    #@118
    move-object v7, v4

    #@119
    move v4, v15

    #@11a
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    #@11d
    .line 1660
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@11f
    add-int/2addr v15, v0

    #@120
    move-object/from16 v0, p1

    #@122
    .line 1661
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@125
    move-result v1

    #@126
    add-int/2addr v15, v1

    #@127
    add-int/2addr v10, v15

    #@128
    .line 1663
    invoke-virtual {v6, v0, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    #@12b
    move-result v0

    #@12c
    add-int v3, v18, v0

    #@12e
    move v1, v10

    #@12f
    goto :goto_13c

    #@130
    :cond_130
    move/from16 v18, v3

    #@132
    move/from16 v22, v7

    #@134
    move/from16 v19, v10

    #@136
    move/from16 v20, v11

    #@138
    const/16 v21, 0x1

    #@13a
    :goto_13a
    const/16 v23, -0x1

    #@13c
    :goto_13c
    add-int/lit8 v3, v3, 0x1

    #@13e
    move/from16 v10, v19

    #@140
    move/from16 v11, v20

    #@142
    move/from16 v5, v21

    #@144
    move/from16 v7, v22

    #@146
    const/4 v15, 0x2

    #@147
    goto/16 :goto_65

    #@149
    :cond_149
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 22

    #@0
    move-object/from16 v6, p0

    #@2
    .line 1450
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@5
    move-result v7

    #@6
    sub-int v0, p3, p1

    #@8
    .line 1457
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    #@b
    move-result v1

    #@c
    sub-int v8, v0, v1

    #@e
    sub-int/2addr v0, v7

    #@f
    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    #@12
    move-result v1

    #@13
    sub-int v9, v0, v1

    #@15
    .line 1462
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    #@18
    move-result v10

    #@19
    .line 1464
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@1b
    and-int/lit8 v1, v0, 0x70

    #@1d
    const v2, 0x800007

    #@20
    and-int v11, v0, v2

    #@22
    const/16 v0, 0x10

    #@24
    if-eq v1, v0, :cond_3b

    #@26
    const/16 v0, 0x50

    #@28
    if-eq v1, v0, :cond_2f

    #@2a
    .line 1480
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@2d
    move-result v0

    #@2e
    goto :goto_47

    #@2f
    .line 1470
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@32
    move-result v0

    #@33
    add-int v0, v0, p4

    #@35
    sub-int v0, v0, p2

    #@37
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@39
    sub-int/2addr v0, v1

    #@3a
    goto :goto_47

    #@3b
    .line 1475
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@3e
    move-result v0

    #@3f
    sub-int v1, p4, p2

    #@41
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@43
    sub-int/2addr v1, v2

    #@44
    div-int/lit8 v1, v1, 0x2

    #@46
    add-int/2addr v0, v1

    #@47
    :goto_47
    const/4 v1, 0x0

    #@48
    move v12, v1

    #@49
    :goto_49
    if-ge v12, v10, :cond_cb

    #@4b
    .line 1485
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@4e
    move-result-object v13

    #@4f
    const/4 v14, 0x1

    #@50
    if-nez v13, :cond_59

    #@52
    .line 1487
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    #@55
    move-result v1

    #@56
    add-int/2addr v0, v1

    #@57
    goto/16 :goto_c7

    #@59
    .line 1488
    :cond_59
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x8

    #@5f
    if-eq v1, v2, :cond_c7

    #@61
    .line 1489
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@64
    move-result v4

    #@65
    .line 1490
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@68
    move-result v15

    #@69
    .line 1493
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6c
    move-result-object v1

    #@6d
    move-object v5, v1

    #@6e
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@70
    .line 1495
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    #@72
    if-gez v1, :cond_75

    #@74
    move v1, v11

    #@75
    .line 1499
    :cond_75
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@78
    move-result v2

    #@79
    .line 1500
    invoke-static {v1, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7c
    move-result v1

    #@7d
    and-int/lit8 v1, v1, 0x7

    #@7f
    if-eq v1, v14, :cond_8d

    #@81
    const/4 v2, 0x5

    #@82
    if-eq v1, v2, :cond_88

    #@84
    .line 1514
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@86
    add-int/2addr v1, v7

    #@87
    goto :goto_98

    #@88
    :cond_88
    sub-int v1, v8, v4

    #@8a
    .line 1509
    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@8c
    goto :goto_97

    #@8d
    :cond_8d
    sub-int v1, v9, v4

    #@8f
    .line 1504
    div-int/lit8 v1, v1, 0x2

    #@91
    add-int/2addr v1, v7

    #@92
    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@94
    add-int/2addr v1, v2

    #@95
    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@97
    :goto_97
    sub-int/2addr v1, v2

    #@98
    :goto_98
    move v2, v1

    #@99
    .line 1518
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_a2

    #@9f
    .line 1519
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    #@a1
    add-int/2addr v0, v1

    #@a2
    .line 1522
    :cond_a2
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@a4
    add-int v16, v0, v1

    #@a6
    .line 1523
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    #@a9
    move-result v0

    #@aa
    add-int v3, v16, v0

    #@ac
    move-object/from16 v0, p0

    #@ae
    move-object v1, v13

    #@af
    move-object v14, v5

    #@b0
    move v5, v15

    #@b1
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    #@b4
    .line 1525
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@b6
    add-int/2addr v15, v0

    #@b7
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@ba
    move-result v0

    #@bb
    add-int/2addr v15, v0

    #@bc
    add-int v16, v16, v15

    #@be
    .line 1527
    invoke-virtual {v6, v13, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    #@c1
    move-result v0

    #@c2
    add-int/2addr v12, v0

    #@c3
    move/from16 v0, v16

    #@c5
    const/4 v1, 0x1

    #@c6
    goto :goto_c8

    #@c7
    :cond_c7
    :goto_c7
    move v1, v14

    #@c8
    :goto_c8
    add-int/2addr v12, v1

    #@c9
    goto/16 :goto_49

    #@cb
    :cond_cb
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    #@0
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move v2, p3

    #@3
    move v3, p4

    #@4
    move v4, p5

    #@5
    move v5, p6

    #@6
    .line 1401
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@9
    return-void
.end method

.method measureHorizontal(II)V
    .registers 41

    #@0
    move-object/from16 v7, p0

    #@2
    move/from16 v8, p1

    #@4
    move/from16 v9, p2

    #@6
    const/4 v10, 0x0

    #@7
    .line 952
    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@9
    .line 960
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    #@c
    move-result v11

    #@d
    .line 962
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@10
    move-result v12

    #@11
    .line 963
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@14
    move-result v13

    #@15
    .line 968
    iget-object v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    #@17
    const/4 v14, 0x4

    #@18
    if-eqz v0, :cond_1e

    #@1a
    iget-object v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    #@1c
    if-nez v0, :cond_26

    #@1e
    :cond_1e
    new-array v0, v14, [I

    #@20
    .line 969
    iput-object v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    #@22
    new-array v0, v14, [I

    #@24
    .line 970
    iput-object v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    #@26
    .line 973
    :cond_26
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    #@28
    .line 974
    iget-object v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    #@2a
    const/16 v16, 0x3

    #@2c
    const/4 v5, -0x1

    #@2d
    .line 976
    aput v5, v15, v16

    #@2f
    const/16 v17, 0x2

    #@31
    aput v5, v15, v17

    #@33
    const/16 v18, 0x1

    #@35
    aput v5, v15, v18

    #@37
    aput v5, v15, v10

    #@39
    .line 977
    aput v5, v6, v16

    #@3b
    aput v5, v6, v17

    #@3d
    aput v5, v6, v18

    #@3f
    aput v5, v6, v10

    #@41
    .line 979
    iget-boolean v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    #@43
    .line 980
    iget-boolean v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    #@45
    const/high16 v2, 0x40000000    # 2.0f

    #@47
    if-ne v12, v2, :cond_4c

    #@49
    move/from16 v19, v18

    #@4b
    goto :goto_4e

    #@4c
    :cond_4c
    move/from16 v19, v10

    #@4e
    :goto_4e
    const/16 v20, 0x0

    #@50
    move v1, v10

    #@51
    move v14, v1

    #@52
    move/from16 v21, v14

    #@54
    move/from16 v22, v21

    #@56
    move/from16 v23, v22

    #@58
    move/from16 v24, v23

    #@5a
    move/from16 v25, v24

    #@5c
    move/from16 v27, v25

    #@5e
    move/from16 v26, v18

    #@60
    move/from16 v0, v20

    #@62
    :goto_62
    move-object/from16 v28, v6

    #@64
    const/16 v5, 0x8

    #@66
    if-ge v1, v11, :cond_20a

    #@68
    .line 988
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@6b
    move-result-object v6

    #@6c
    if-nez v6, :cond_82

    #@6e
    .line 991
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@70
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    #@73
    move-result v6

    #@74
    add-int/2addr v5, v6

    #@75
    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@77
    :goto_77
    move/from16 v32, v3

    #@79
    move/from16 v36, v4

    #@7b
    move/from16 v37, v2

    #@7d
    move v2, v1

    #@7e
    move/from16 v1, v37

    #@80
    goto/16 :goto_1f7

    #@82
    .line 995
    :cond_82
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@85
    move-result v10

    #@86
    if-ne v10, v5, :cond_8e

    #@88
    .line 996
    invoke-virtual {v7, v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    #@8b
    move-result v5

    #@8c
    add-int/2addr v1, v5

    #@8d
    goto :goto_77

    #@8e
    .line 1000
    :cond_8e
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_9b

    #@94
    .line 1001
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@96
    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@98
    add-int/2addr v5, v10

    #@99
    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@9b
    .line 1005
    :cond_9b
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9e
    move-result-object v5

    #@9f
    move-object v10, v5

    #@a0
    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@a2
    .line 1007
    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@a4
    add-float v31, v0, v5

    #@a6
    if-ne v12, v2, :cond_f1

    #@a8
    .line 1009
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@aa
    if-nez v0, :cond_f1

    #@ac
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@ae
    cmpl-float v0, v0, v20

    #@b0
    if-lez v0, :cond_f1

    #@b2
    if-eqz v19, :cond_bf

    #@b4
    .line 1014
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@b6
    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@b8
    iget v2, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@ba
    add-int/2addr v5, v2

    #@bb
    add-int/2addr v0, v5

    #@bc
    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@be
    goto :goto_cd

    #@bf
    .line 1016
    :cond_bf
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@c1
    .line 1017
    iget v2, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@c3
    add-int/2addr v2, v0

    #@c4
    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@c6
    add-int/2addr v2, v5

    #@c7
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@ca
    move-result v0

    #@cb
    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@cd
    :goto_cd
    if-eqz v4, :cond_e2

    #@cf
    const/4 v0, 0x0

    #@d0
    .line 1027
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d3
    move-result v2

    #@d4
    .line 1028
    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    #@d7
    move/from16 v34, v1

    #@d9
    move/from16 v32, v3

    #@db
    move/from16 v36, v4

    #@dd
    move-object v3, v6

    #@de
    const/16 v30, -0x2

    #@e0
    goto/16 :goto_16d

    #@e2
    :cond_e2
    move/from16 v34, v1

    #@e4
    move/from16 v32, v3

    #@e6
    move/from16 v36, v4

    #@e8
    move-object v3, v6

    #@e9
    move/from16 v24, v18

    #@eb
    const/high16 v1, 0x40000000    # 2.0f

    #@ed
    const/16 v30, -0x2

    #@ef
    goto/16 :goto_16f

    #@f1
    .line 1035
    :cond_f1
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@f3
    if-nez v0, :cond_100

    #@f5
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@f7
    cmpl-float v0, v0, v20

    #@f9
    if-lez v0, :cond_100

    #@fb
    const/4 v5, -0x2

    #@fc
    .line 1041
    iput v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@fe
    const/4 v2, 0x0

    #@ff
    goto :goto_103

    #@100
    :cond_100
    const/4 v5, -0x2

    #@101
    const/high16 v2, -0x80000000

    #@103
    :goto_103
    cmpl-float v0, v31, v20

    #@105
    if-nez v0, :cond_10c

    #@107
    .line 1049
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@109
    move/from16 v29, v0

    #@10b
    goto :goto_10e

    #@10c
    :cond_10c
    const/16 v29, 0x0

    #@10e
    :goto_10e
    const/16 v33, 0x0

    #@110
    move-object/from16 v0, p0

    #@112
    move/from16 v34, v1

    #@114
    move-object v1, v6

    #@115
    move/from16 v35, v2

    #@117
    move/from16 v2, v34

    #@119
    move/from16 v32, v3

    #@11b
    move/from16 v3, p1

    #@11d
    move/from16 v36, v4

    #@11f
    move/from16 v4, v29

    #@121
    move/from16 v29, v5

    #@123
    const/4 v9, -0x1

    #@124
    move/from16 v5, p2

    #@126
    move/from16 v30, v29

    #@128
    const/high16 v9, -0x80000000

    #@12a
    move-object/from16 v29, v6

    #@12c
    move/from16 v6, v33

    #@12e
    .line 1048
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@131
    move/from16 v0, v35

    #@133
    if-eq v0, v9, :cond_137

    #@135
    .line 1053
    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@137
    .line 1056
    :cond_137
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    #@13a
    move-result v0

    #@13b
    if-eqz v19, :cond_150

    #@13d
    .line 1058
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@13f
    iget v2, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@141
    add-int/2addr v2, v0

    #@142
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@144
    add-int/2addr v2, v3

    #@145
    move-object/from16 v3, v29

    #@147
    .line 1059
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@14a
    move-result v4

    #@14b
    add-int/2addr v2, v4

    #@14c
    add-int/2addr v1, v2

    #@14d
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@14f
    goto :goto_167

    #@150
    :cond_150
    move-object/from16 v3, v29

    #@152
    .line 1061
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@154
    add-int v2, v1, v0

    #@156
    .line 1062
    iget v4, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@158
    add-int/2addr v2, v4

    #@159
    iget v4, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@15b
    add-int/2addr v2, v4

    #@15c
    .line 1063
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@15f
    move-result v4

    #@160
    add-int/2addr v2, v4

    #@161
    .line 1062
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@164
    move-result v1

    #@165
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@167
    :goto_167
    if-eqz v32, :cond_16d

    #@169
    .line 1067
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    #@16c
    move-result v14

    #@16d
    :cond_16d
    :goto_16d
    const/high16 v1, 0x40000000    # 2.0f

    #@16f
    :goto_16f
    if-eq v13, v1, :cond_17b

    #@171
    .line 1072
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@173
    const/4 v2, -0x1

    #@174
    if-ne v0, v2, :cond_17b

    #@176
    move/from16 v0, v18

    #@178
    move/from16 v27, v0

    #@17a
    goto :goto_17c

    #@17b
    :cond_17b
    const/4 v0, 0x0

    #@17c
    .line 1080
    :goto_17c
    iget v2, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@17e
    iget v4, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@180
    add-int/2addr v2, v4

    #@181
    .line 1081
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@184
    move-result v4

    #@185
    add-int/2addr v4, v2

    #@186
    .line 1082
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    #@189
    move-result v5

    #@18a
    move/from16 v6, v25

    #@18c
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    #@18f
    move-result v25

    #@190
    if-eqz v36, :cond_1bc

    #@192
    .line 1085
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    #@195
    move-result v5

    #@196
    const/4 v6, -0x1

    #@197
    if-eq v5, v6, :cond_1bc

    #@199
    .line 1089
    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    #@19b
    if-gez v6, :cond_1a0

    #@19d
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@19f
    goto :goto_1a2

    #@1a0
    :cond_1a0
    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    #@1a2
    :goto_1a2
    and-int/lit8 v6, v6, 0x70

    #@1a4
    const/4 v9, 0x4

    #@1a5
    shr-int/2addr v6, v9

    #@1a6
    and-int/lit8 v6, v6, -0x2

    #@1a8
    shr-int/lit8 v6, v6, 0x1

    #@1aa
    .line 1094
    aget v9, v15, v6

    #@1ac
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    #@1af
    move-result v9

    #@1b0
    aput v9, v15, v6

    #@1b2
    .line 1095
    aget v9, v28, v6

    #@1b4
    sub-int v5, v4, v5

    #@1b6
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    #@1b9
    move-result v5

    #@1ba
    aput v5, v28, v6

    #@1bc
    :cond_1bc
    move/from16 v5, v21

    #@1be
    .line 1099
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    #@1c1
    move-result v21

    #@1c2
    if-eqz v26, :cond_1cc

    #@1c4
    .line 1101
    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@1c6
    const/4 v6, -0x1

    #@1c7
    if-ne v5, v6, :cond_1cc

    #@1c9
    move/from16 v26, v18

    #@1cb
    goto :goto_1ce

    #@1cc
    :cond_1cc
    const/16 v26, 0x0

    #@1ce
    .line 1102
    :goto_1ce
    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@1d0
    cmpl-float v5, v5, v20

    #@1d2
    if-lez v5, :cond_1df

    #@1d4
    if-eqz v0, :cond_1d7

    #@1d6
    goto :goto_1d8

    #@1d7
    :cond_1d7
    move v2, v4

    #@1d8
    :goto_1d8
    move/from16 v10, v23

    #@1da
    .line 1107
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    #@1dd
    move-result v23

    #@1de
    goto :goto_1ed

    #@1df
    :cond_1df
    move/from16 v10, v23

    #@1e1
    if-eqz v0, :cond_1e4

    #@1e3
    goto :goto_1e5

    #@1e4
    :cond_1e4
    move v2, v4

    #@1e5
    :goto_1e5
    move/from16 v4, v22

    #@1e7
    .line 1110
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@1ea
    move-result v22

    #@1eb
    move/from16 v23, v10

    #@1ed
    :goto_1ed
    move/from16 v10, v34

    #@1ef
    .line 1114
    invoke-virtual {v7, v3, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    #@1f2
    move-result v0

    #@1f3
    add-int/2addr v0, v10

    #@1f4
    move v2, v0

    #@1f5
    move/from16 v0, v31

    #@1f7
    :goto_1f7
    add-int/lit8 v2, v2, 0x1

    #@1f9
    move/from16 v9, p2

    #@1fb
    move-object/from16 v6, v28

    #@1fd
    move/from16 v3, v32

    #@1ff
    move/from16 v4, v36

    #@201
    const/4 v5, -0x1

    #@202
    const/4 v10, 0x0

    #@203
    move/from16 v37, v2

    #@205
    move v2, v1

    #@206
    move/from16 v1, v37

    #@208
    goto/16 :goto_62

    #@20a
    :cond_20a
    move v1, v2

    #@20b
    move/from16 v32, v3

    #@20d
    move/from16 v36, v4

    #@20f
    move/from16 v2, v21

    #@211
    move/from16 v4, v22

    #@213
    move/from16 v10, v23

    #@215
    move/from16 v6, v25

    #@217
    const/high16 v9, -0x80000000

    #@219
    const/16 v30, -0x2

    #@21b
    .line 1117
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@21d
    if-lez v3, :cond_22c

    #@21f
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@222
    move-result v3

    #@223
    if-eqz v3, :cond_22c

    #@225
    .line 1118
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@227
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@229
    add-int/2addr v3, v1

    #@22a
    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@22c
    .line 1123
    :cond_22c
    aget v1, v15, v18

    #@22e
    const/4 v3, -0x1

    #@22f
    if-ne v1, v3, :cond_244

    #@231
    const/16 v21, 0x0

    #@233
    aget v5, v15, v21

    #@235
    if-ne v5, v3, :cond_244

    #@237
    aget v5, v15, v17

    #@239
    if-ne v5, v3, :cond_244

    #@23b
    aget v5, v15, v16

    #@23d
    if-eq v5, v3, :cond_240

    #@23f
    goto :goto_244

    #@240
    :cond_240
    move v1, v2

    #@241
    move/from16 v23, v6

    #@243
    goto :goto_273

    #@244
    .line 1127
    :cond_244
    :goto_244
    aget v3, v15, v16

    #@246
    const/4 v5, 0x0

    #@247
    aget v9, v15, v5

    #@249
    aget v5, v15, v17

    #@24b
    .line 1129
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    #@24e
    move-result v1

    #@24f
    .line 1128
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    #@252
    move-result v1

    #@253
    .line 1127
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@256
    move-result v1

    #@257
    .line 1130
    aget v3, v28, v16

    #@259
    const/4 v5, 0x0

    #@25a
    aget v9, v28, v5

    #@25c
    aget v5, v28, v18

    #@25e
    move/from16 v23, v6

    #@260
    aget v6, v28, v17

    #@262
    .line 1132
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@265
    move-result v5

    #@266
    .line 1131
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    #@269
    move-result v5

    #@26a
    .line 1130
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@26d
    move-result v3

    #@26e
    add-int/2addr v1, v3

    #@26f
    .line 1133
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@272
    move-result v1

    #@273
    :goto_273
    if-eqz v32, :cond_2d6

    #@275
    const/high16 v2, -0x80000000

    #@277
    if-eq v12, v2, :cond_27b

    #@279
    if-nez v12, :cond_2d6

    #@27b
    :cond_27b
    const/4 v2, 0x0

    #@27c
    .line 1138
    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@27e
    const/4 v2, 0x0

    #@27f
    :goto_27f
    if-ge v2, v11, :cond_2d6

    #@281
    .line 1141
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@284
    move-result-object v3

    #@285
    if-nez v3, :cond_291

    #@287
    .line 1144
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@289
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    #@28c
    move-result v5

    #@28d
    add-int/2addr v3, v5

    #@28e
    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@290
    goto :goto_29e

    #@291
    .line 1148
    :cond_291
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@294
    move-result v5

    #@295
    const/16 v6, 0x8

    #@297
    if-ne v5, v6, :cond_2a1

    #@299
    .line 1149
    invoke-virtual {v7, v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    #@29c
    move-result v3

    #@29d
    add-int/2addr v2, v3

    #@29e
    :goto_29e
    move/from16 v21, v1

    #@2a0
    goto :goto_2d1

    #@2a1
    .line 1154
    :cond_2a1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2a4
    move-result-object v5

    #@2a5
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@2a7
    if-eqz v19, :cond_2ba

    #@2a9
    .line 1156
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@2ab
    iget v9, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@2ad
    add-int/2addr v9, v14

    #@2ae
    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@2b0
    add-int/2addr v9, v5

    #@2b1
    .line 1157
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@2b4
    move-result v3

    #@2b5
    add-int/2addr v9, v3

    #@2b6
    add-int/2addr v6, v9

    #@2b7
    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@2b9
    goto :goto_29e

    #@2ba
    .line 1159
    :cond_2ba
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@2bc
    add-int v9, v6, v14

    #@2be
    move/from16 v21, v1

    #@2c0
    .line 1160
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@2c2
    add-int/2addr v9, v1

    #@2c3
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@2c5
    add-int/2addr v9, v1

    #@2c6
    .line 1161
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@2c9
    move-result v1

    #@2ca
    add-int/2addr v9, v1

    #@2cb
    .line 1160
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    #@2ce
    move-result v1

    #@2cf
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@2d1
    :goto_2d1
    add-int/lit8 v2, v2, 0x1

    #@2d3
    move/from16 v1, v21

    #@2d5
    goto :goto_27f

    #@2d6
    :cond_2d6
    move/from16 v21, v1

    #@2d8
    .line 1167
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@2da
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@2dd
    move-result v2

    #@2de
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    #@2e1
    move-result v3

    #@2e2
    add-int/2addr v2, v3

    #@2e3
    add-int/2addr v1, v2

    #@2e4
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@2e6
    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    #@2e9
    move-result v2

    #@2ea
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@2ed
    move-result v1

    #@2ee
    const/4 v2, 0x0

    #@2ef
    .line 1175
    invoke-static {v1, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    #@2f2
    move-result v1

    #@2f3
    const v2, 0xffffff

    #@2f6
    and-int/2addr v2, v1

    #@2f7
    .line 1181
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@2f9
    sub-int/2addr v2, v3

    #@2fa
    if-nez v24, :cond_347

    #@2fc
    if-eqz v2, :cond_303

    #@2fe
    cmpl-float v5, v0, v20

    #@300
    if-lez v5, :cond_303

    #@302
    goto :goto_347

    #@303
    .line 1293
    :cond_303
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    #@306
    move-result v0

    #@307
    if-eqz v32, :cond_33f

    #@309
    const/high16 v2, 0x40000000    # 2.0f

    #@30b
    if-eq v12, v2, :cond_33f

    #@30d
    const/4 v10, 0x0

    #@30e
    :goto_30e
    if-ge v10, v11, :cond_33f

    #@310
    .line 1299
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@313
    move-result-object v2

    #@314
    if-eqz v2, :cond_33c

    #@316
    .line 1301
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@319
    move-result v4

    #@31a
    const/16 v5, 0x8

    #@31c
    if-ne v4, v5, :cond_31f

    #@31e
    goto :goto_33c

    #@31f
    .line 1306
    :cond_31f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@322
    move-result-object v4

    #@323
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@325
    .line 1308
    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@327
    cmpl-float v4, v4, v20

    #@329
    if-lez v4, :cond_33c

    #@32b
    const/high16 v4, 0x40000000    # 2.0f

    #@32d
    .line 1311
    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@330
    move-result v5

    #@331
    .line 1312
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@334
    move-result v6

    #@335
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@338
    move-result v6

    #@339
    .line 1310
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    #@33c
    :cond_33c
    :goto_33c
    add-int/lit8 v10, v10, 0x1

    #@33e
    goto :goto_30e

    #@33f
    :cond_33f
    move/from16 v2, p2

    #@341
    move/from16 v25, v11

    #@343
    move/from16 v3, v21

    #@345
    goto/16 :goto_4e3

    #@347
    .line 1183
    :cond_347
    :goto_347
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    #@349
    cmpl-float v6, v5, v20

    #@34b
    if-lez v6, :cond_34e

    #@34d
    move v0, v5

    #@34e
    :cond_34e
    const/4 v5, -0x1

    #@34f
    .line 1185
    aput v5, v15, v16

    #@351
    aput v5, v15, v17

    #@353
    aput v5, v15, v18

    #@355
    const/4 v6, 0x0

    #@356
    aput v5, v15, v6

    #@358
    .line 1186
    aput v5, v28, v16

    #@35a
    aput v5, v28, v17

    #@35c
    aput v5, v28, v18

    #@35e
    aput v5, v28, v6

    #@360
    .line 1189
    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@362
    move v6, v4

    #@363
    move v4, v5

    #@364
    move/from16 v9, v23

    #@366
    const/4 v10, 0x0

    #@367
    :goto_367
    if-ge v10, v11, :cond_48c

    #@369
    .line 1192
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@36c
    move-result-object v14

    #@36d
    if-eqz v14, :cond_47d

    #@36f
    .line 1194
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    #@372
    move-result v5

    #@373
    const/16 v3, 0x8

    #@375
    if-ne v5, v3, :cond_379

    #@377
    goto/16 :goto_47d

    #@379
    .line 1199
    :cond_379
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@37c
    move-result-object v5

    #@37d
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@37f
    .line 1201
    iget v3, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@381
    cmpl-float v23, v3, v20

    #@383
    if-lez v23, :cond_3e1

    #@385
    int-to-float v8, v2

    #@386
    mul-float/2addr v8, v3

    #@387
    div-float/2addr v8, v0

    #@388
    float-to-int v8, v8

    #@389
    sub-float/2addr v0, v3

    #@38a
    sub-int/2addr v2, v8

    #@38b
    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@38e
    move-result v3

    #@38f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@392
    move-result v23

    #@393
    add-int v3, v3, v23

    #@395
    move/from16 v23, v0

    #@397
    iget v0, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@399
    add-int/2addr v3, v0

    #@39a
    iget v0, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@39c
    add-int/2addr v3, v0

    #@39d
    iget v0, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@39f
    move/from16 v24, v2

    #@3a1
    move/from16 v25, v11

    #@3a3
    const/4 v11, -0x1

    #@3a4
    move/from16 v2, p2

    #@3a6
    .line 1208
    invoke-static {v2, v3, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    #@3a9
    move-result v0

    #@3aa
    .line 1215
    iget v3, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@3ac
    if-nez v3, :cond_3bf

    #@3ae
    const/high16 v3, 0x40000000    # 2.0f

    #@3b0
    if-eq v12, v3, :cond_3b3

    #@3b2
    goto :goto_3c1

    #@3b3
    :cond_3b3
    if-lez v8, :cond_3b6

    #@3b5
    goto :goto_3b7

    #@3b6
    :cond_3b6
    const/4 v8, 0x0

    #@3b7
    .line 1228
    :goto_3b7
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3ba
    move-result v8

    #@3bb
    invoke-virtual {v14, v8, v0}, Landroid/view/View;->measure(II)V

    #@3be
    goto :goto_3d1

    #@3bf
    :cond_3bf
    const/high16 v3, 0x40000000    # 2.0f

    #@3c1
    .line 1218
    :goto_3c1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@3c4
    move-result v29

    #@3c5
    add-int v8, v29, v8

    #@3c7
    if-gez v8, :cond_3ca

    #@3c9
    const/4 v8, 0x0

    #@3ca
    .line 1224
    :cond_3ca
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3cd
    move-result v8

    #@3ce
    .line 1223
    invoke-virtual {v14, v8, v0}, Landroid/view/View;->measure(II)V

    #@3d1
    .line 1235
    :goto_3d1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    #@3d4
    move-result v0

    #@3d5
    const/high16 v3, -0x1000000

    #@3d7
    and-int/2addr v0, v3

    #@3d8
    .line 1234
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    #@3db
    move-result v9

    #@3dc
    move/from16 v0, v23

    #@3de
    move/from16 v3, v24

    #@3e0
    goto :goto_3e7

    #@3e1
    :cond_3e1
    move v3, v2

    #@3e2
    move/from16 v25, v11

    #@3e4
    const/4 v11, -0x1

    #@3e5
    move/from16 v2, p2

    #@3e7
    :goto_3e7
    if-eqz v19, :cond_404

    #@3e9
    .line 1239
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@3eb
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@3ee
    move-result v23

    #@3ef
    iget v11, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@3f1
    add-int v23, v23, v11

    #@3f3
    iget v11, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@3f5
    add-int v23, v23, v11

    #@3f7
    .line 1240
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@3fa
    move-result v11

    #@3fb
    add-int v23, v23, v11

    #@3fd
    add-int v8, v8, v23

    #@3ff
    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@401
    move/from16 v23, v0

    #@403
    goto :goto_41e

    #@404
    .line 1242
    :cond_404
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@406
    .line 1243
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    #@409
    move-result v11

    #@40a
    add-int/2addr v11, v8

    #@40b
    move/from16 v23, v0

    #@40d
    iget v0, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@40f
    add-int/2addr v11, v0

    #@410
    iget v0, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@412
    add-int/2addr v11, v0

    #@413
    .line 1244
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@416
    move-result v0

    #@417
    add-int/2addr v11, v0

    #@418
    .line 1243
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    #@41b
    move-result v0

    #@41c
    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@41e
    :goto_41e
    const/high16 v0, 0x40000000    # 2.0f

    #@420
    if-eq v13, v0, :cond_42a

    #@422
    .line 1247
    iget v0, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@424
    const/4 v8, -0x1

    #@425
    if-ne v0, v8, :cond_42a

    #@427
    move/from16 v0, v18

    #@429
    goto :goto_42b

    #@42a
    :cond_42a
    const/4 v0, 0x0

    #@42b
    .line 1250
    :goto_42b
    iget v8, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@42d
    iget v11, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@42f
    add-int/2addr v8, v11

    #@430
    .line 1251
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@433
    move-result v11

    #@434
    add-int/2addr v11, v8

    #@435
    .line 1252
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    #@438
    move-result v4

    #@439
    if-eqz v0, :cond_43c

    #@43b
    goto :goto_43d

    #@43c
    :cond_43c
    move v8, v11

    #@43d
    .line 1253
    :goto_43d
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    #@440
    move-result v0

    #@441
    if-eqz v26, :cond_44b

    #@443
    .line 1256
    iget v6, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@445
    const/4 v8, -0x1

    #@446
    if-ne v6, v8, :cond_44c

    #@448
    move/from16 v6, v18

    #@44a
    goto :goto_44d

    #@44b
    :cond_44b
    const/4 v8, -0x1

    #@44c
    :cond_44c
    const/4 v6, 0x0

    #@44d
    :goto_44d
    if-eqz v36, :cond_477

    #@44f
    .line 1259
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    #@452
    move-result v14

    #@453
    if-eq v14, v8, :cond_477

    #@455
    .line 1262
    iget v8, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    #@457
    if-gez v8, :cond_45c

    #@459
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@45b
    goto :goto_45e

    #@45c
    :cond_45c
    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    #@45e
    :goto_45e
    and-int/lit8 v5, v5, 0x70

    #@460
    const/4 v8, 0x4

    #@461
    shr-int/2addr v5, v8

    #@462
    and-int/lit8 v5, v5, -0x2

    #@464
    shr-int/lit8 v5, v5, 0x1

    #@466
    .line 1267
    aget v8, v15, v5

    #@468
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    #@46b
    move-result v8

    #@46c
    aput v8, v15, v5

    #@46e
    .line 1268
    aget v8, v28, v5

    #@470
    sub-int/2addr v11, v14

    #@471
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    #@474
    move-result v8

    #@475
    aput v8, v28, v5

    #@477
    :cond_477
    move/from16 v26, v6

    #@479
    move v6, v0

    #@47a
    move/from16 v0, v23

    #@47c
    goto :goto_482

    #@47d
    :cond_47d
    :goto_47d
    move v3, v2

    #@47e
    move/from16 v25, v11

    #@480
    move/from16 v2, p2

    #@482
    :goto_482
    add-int/lit8 v10, v10, 0x1

    #@484
    move/from16 v8, p1

    #@486
    move v2, v3

    #@487
    move/from16 v11, v25

    #@489
    const/4 v5, -0x1

    #@48a
    goto/16 :goto_367

    #@48c
    :cond_48c
    move/from16 v2, p2

    #@48e
    move/from16 v25, v11

    #@490
    .line 1275
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@492
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@495
    move-result v3

    #@496
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    #@499
    move-result v5

    #@49a
    add-int/2addr v3, v5

    #@49b
    add-int/2addr v0, v3

    #@49c
    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@49e
    .line 1280
    aget v0, v15, v18

    #@4a0
    const/4 v3, -0x1

    #@4a1
    if-ne v0, v3, :cond_4b3

    #@4a3
    const/4 v5, 0x0

    #@4a4
    aget v8, v15, v5

    #@4a6
    if-ne v8, v3, :cond_4b3

    #@4a8
    aget v5, v15, v17

    #@4aa
    if-ne v5, v3, :cond_4b3

    #@4ac
    aget v5, v15, v16

    #@4ae
    if-eq v5, v3, :cond_4b1

    #@4b0
    goto :goto_4b3

    #@4b1
    :cond_4b1
    move v0, v4

    #@4b2
    goto :goto_4df

    #@4b3
    .line 1284
    :cond_4b3
    :goto_4b3
    aget v3, v15, v16

    #@4b5
    const/4 v5, 0x0

    #@4b6
    aget v8, v15, v5

    #@4b8
    aget v10, v15, v17

    #@4ba
    .line 1286
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    #@4bd
    move-result v0

    #@4be
    .line 1285
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@4c1
    move-result v0

    #@4c2
    .line 1284
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@4c5
    move-result v0

    #@4c6
    .line 1287
    aget v3, v28, v16

    #@4c8
    aget v5, v28, v5

    #@4ca
    aget v8, v28, v18

    #@4cc
    aget v10, v28, v17

    #@4ce
    .line 1289
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    #@4d1
    move-result v8

    #@4d2
    .line 1288
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    #@4d5
    move-result v5

    #@4d6
    .line 1287
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@4d9
    move-result v3

    #@4da
    add-int/2addr v0, v3

    #@4db
    .line 1290
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    #@4de
    move-result v0

    #@4df
    :goto_4df
    move v3, v0

    #@4e0
    move v0, v6

    #@4e1
    move/from16 v23, v9

    #@4e3
    :goto_4e3
    if-nez v26, :cond_4ea

    #@4e5
    const/high16 v4, 0x40000000    # 2.0f

    #@4e7
    if-eq v13, v4, :cond_4ea

    #@4e9
    goto :goto_4eb

    #@4ea
    :cond_4ea
    move v0, v3

    #@4eb
    .line 1323
    :goto_4eb
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@4ee
    move-result v3

    #@4ef
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@4f2
    move-result v4

    #@4f3
    add-int/2addr v3, v4

    #@4f4
    add-int/2addr v0, v3

    #@4f5
    .line 1326
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    #@4f8
    move-result v3

    #@4f9
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@4fc
    move-result v0

    #@4fd
    const/high16 v3, -0x1000000

    #@4ff
    and-int v3, v23, v3

    #@501
    or-int/2addr v1, v3

    #@502
    shl-int/lit8 v3, v23, 0x10

    #@504
    .line 1329
    invoke-static {v0, v2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    #@507
    move-result v0

    #@508
    .line 1328
    invoke-virtual {v7, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    #@50b
    if-eqz v27, :cond_514

    #@50d
    move/from16 v0, p1

    #@50f
    move/from16 v1, v25

    #@511
    .line 1333
    invoke-direct {v7, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    #@514
    :cond_514
    return-void
.end method

.method measureNullChild(I)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method measureVertical(II)V
    .registers 36

    #@0
    move-object/from16 v7, p0

    #@2
    move/from16 v8, p1

    #@4
    move/from16 v9, p2

    #@6
    const/4 v10, 0x0

    #@7
    .line 619
    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@9
    .line 627
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    #@c
    move-result v11

    #@d
    .line 629
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@10
    move-result v12

    #@11
    .line 630
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@14
    move-result v13

    #@15
    .line 635
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    #@17
    .line 636
    iget-boolean v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    #@19
    const/16 v16, 0x1

    #@1b
    const/16 v17, 0x0

    #@1d
    move v1, v10

    #@1e
    move v2, v1

    #@1f
    move v3, v2

    #@20
    move v4, v3

    #@21
    move v5, v4

    #@22
    move v6, v5

    #@23
    move/from16 v18, v6

    #@25
    move/from16 v20, v18

    #@27
    move/from16 v19, v16

    #@29
    move/from16 v0, v17

    #@2b
    :goto_2b
    const/16 v10, 0x8

    #@2d
    move/from16 v22, v4

    #@2f
    if-ge v6, v11, :cond_19f

    #@31
    .line 642
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@34
    move-result-object v4

    #@35
    if-nez v4, :cond_48

    #@37
    .line 645
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@39
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    #@3c
    move-result v10

    #@3d
    add-int/2addr v4, v10

    #@3e
    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@40
    move/from16 v23, v11

    #@42
    move/from16 v24, v13

    #@44
    move/from16 v4, v22

    #@46
    goto/16 :goto_193

    #@48
    :cond_48
    move/from16 v24, v1

    #@4a
    .line 649
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@4d
    move-result v1

    #@4e
    if-ne v1, v10, :cond_5f

    #@50
    .line 650
    invoke-virtual {v7, v4, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    #@53
    move-result v1

    #@54
    add-int/2addr v6, v1

    #@55
    move/from16 v23, v11

    #@57
    move/from16 v4, v22

    #@59
    move/from16 v1, v24

    #@5b
    move/from16 v24, v13

    #@5d
    goto/16 :goto_193

    #@5f
    .line 654
    :cond_5f
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_6c

    #@65
    .line 655
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@67
    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    #@69
    add-int/2addr v1, v10

    #@6a
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@6c
    .line 658
    :cond_6c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6f
    move-result-object v1

    #@70
    move-object v10, v1

    #@71
    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@73
    .line 660
    iget v1, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@75
    add-float v25, v0, v1

    #@77
    const/high16 v1, 0x40000000    # 2.0f

    #@79
    if-ne v13, v1, :cond_a8

    #@7b
    .line 662
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@7d
    if-nez v0, :cond_a8

    #@7f
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@81
    cmpl-float v0, v0, v17

    #@83
    if-lez v0, :cond_a8

    #@85
    .line 666
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@87
    .line 667
    iget v1, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@89
    add-int/2addr v1, v0

    #@8a
    move/from16 v26, v2

    #@8c
    iget v2, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@8e
    add-int/2addr v1, v2

    #@8f
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@92
    move-result v0

    #@93
    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@95
    move v0, v3

    #@96
    move-object v3, v4

    #@97
    move/from16 v31, v5

    #@99
    move/from16 v23, v11

    #@9b
    move/from16 v18, v16

    #@9d
    move/from16 v8, v24

    #@9f
    move/from16 v29, v26

    #@a1
    move v11, v6

    #@a2
    move/from16 v24, v13

    #@a4
    move/from16 v13, v22

    #@a6
    goto/16 :goto_11a

    #@a8
    :cond_a8
    move/from16 v26, v2

    #@aa
    .line 672
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@ac
    if-nez v0, :cond_b9

    #@ae
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@b0
    cmpl-float v0, v0, v17

    #@b2
    if-lez v0, :cond_b9

    #@b4
    const/4 v0, -0x2

    #@b5
    .line 678
    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@b7
    const/4 v2, 0x0

    #@b8
    goto :goto_bb

    #@b9
    :cond_b9
    const/high16 v2, -0x80000000

    #@bb
    :goto_bb
    const/16 v27, 0x0

    #@bd
    cmpl-float v0, v25, v17

    #@bf
    if-nez v0, :cond_c6

    #@c1
    .line 687
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@c3
    move/from16 v28, v0

    #@c5
    goto :goto_c8

    #@c6
    :cond_c6
    const/16 v28, 0x0

    #@c8
    :goto_c8
    move-object/from16 v0, p0

    #@ca
    move/from16 v8, v24

    #@cc
    const/high16 v23, 0x40000000    # 2.0f

    #@ce
    move-object v1, v4

    #@cf
    move/from16 v30, v2

    #@d1
    move/from16 v29, v26

    #@d3
    move v2, v6

    #@d4
    move v9, v3

    #@d5
    move/from16 v3, p1

    #@d7
    move/from16 v24, v13

    #@d9
    move/from16 v13, v22

    #@db
    move-object/from16 v22, v4

    #@dd
    move/from16 v32, v23

    #@df
    move/from16 v23, v11

    #@e1
    move/from16 v11, v32

    #@e3
    move/from16 v4, v27

    #@e5
    move/from16 v31, v5

    #@e7
    move/from16 v5, p2

    #@e9
    move v11, v6

    #@ea
    move/from16 v6, v28

    #@ec
    .line 685
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@ef
    move/from16 v0, v30

    #@f1
    const/high16 v1, -0x80000000

    #@f3
    if-eq v0, v1, :cond_f7

    #@f5
    .line 690
    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@f7
    .line 693
    :cond_f7
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    #@fa
    move-result v0

    #@fb
    .line 694
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@fd
    add-int v2, v1, v0

    #@ff
    .line 695
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@101
    add-int/2addr v2, v3

    #@102
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@104
    add-int/2addr v2, v3

    #@105
    move-object/from16 v3, v22

    #@107
    .line 696
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@10a
    move-result v4

    #@10b
    add-int/2addr v2, v4

    #@10c
    .line 695
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@10f
    move-result v1

    #@110
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@112
    if-eqz v15, :cond_119

    #@114
    .line 699
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    #@117
    move-result v0

    #@118
    goto :goto_11a

    #@119
    :cond_119
    move v0, v9

    #@11a
    :goto_11a
    if-ltz v14, :cond_124

    #@11c
    add-int/lit8 v6, v11, 0x1

    #@11e
    if-ne v14, v6, :cond_124

    #@120
    .line 708
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@122
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    #@124
    :cond_124
    if-ge v11, v14, :cond_135

    #@126
    .line 714
    iget v1, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@128
    cmpl-float v1, v1, v17

    #@12a
    if-gtz v1, :cond_12d

    #@12c
    goto :goto_135

    #@12d
    .line 715
    :cond_12d
    new-instance v0, Ljava/lang/RuntimeException;

    #@12f
    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    #@131
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@134
    throw v0

    #@135
    :cond_135
    :goto_135
    const/high16 v1, 0x40000000    # 2.0f

    #@137
    if-eq v12, v1, :cond_143

    #@139
    .line 722
    iget v1, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@13b
    const/4 v2, -0x1

    #@13c
    if-ne v1, v2, :cond_143

    #@13e
    move/from16 v1, v16

    #@140
    move/from16 v20, v1

    #@142
    goto :goto_144

    #@143
    :cond_143
    const/4 v1, 0x0

    #@144
    .line 731
    :goto_144
    iget v2, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@146
    iget v4, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@148
    add-int/2addr v2, v4

    #@149
    .line 732
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@14c
    move-result v4

    #@14d
    add-int/2addr v4, v2

    #@14e
    move/from16 v5, v29

    #@150
    .line 733
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    #@153
    move-result v5

    #@154
    .line 735
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    #@157
    move-result v6

    #@158
    .line 734
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    #@15b
    move-result v6

    #@15c
    if-eqz v19, :cond_166

    #@15e
    .line 737
    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@160
    const/4 v9, -0x1

    #@161
    if-ne v8, v9, :cond_166

    #@163
    move/from16 v19, v16

    #@165
    goto :goto_168

    #@166
    :cond_166
    const/16 v19, 0x0

    #@168
    .line 738
    :goto_168
    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@16a
    cmpl-float v8, v8, v17

    #@16c
    if-lez v8, :cond_179

    #@16e
    if-eqz v1, :cond_171

    #@170
    goto :goto_172

    #@171
    :cond_171
    move v2, v4

    #@172
    .line 743
    :goto_172
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    #@175
    move-result v4

    #@176
    move/from16 v1, v31

    #@178
    goto :goto_184

    #@179
    :cond_179
    if-eqz v1, :cond_17c

    #@17b
    goto :goto_17d

    #@17c
    :cond_17c
    move v2, v4

    #@17d
    :goto_17d
    move/from16 v1, v31

    #@17f
    .line 746
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@182
    move-result v1

    #@183
    move v4, v13

    #@184
    .line 750
    :goto_184
    invoke-virtual {v7, v3, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    #@187
    move-result v2

    #@188
    add-int/2addr v2, v11

    #@189
    move v3, v0

    #@18a
    move/from16 v0, v25

    #@18c
    move/from16 v32, v5

    #@18e
    move v5, v1

    #@18f
    move v1, v6

    #@190
    move v6, v2

    #@191
    move/from16 v2, v32

    #@193
    :goto_193
    add-int/lit8 v6, v6, 0x1

    #@195
    move/from16 v8, p1

    #@197
    move/from16 v9, p2

    #@199
    move/from16 v11, v23

    #@19b
    move/from16 v13, v24

    #@19d
    goto/16 :goto_2b

    #@19f
    :cond_19f
    move v8, v1

    #@1a0
    move v9, v3

    #@1a1
    move v1, v5

    #@1a2
    move/from16 v23, v11

    #@1a4
    move/from16 v24, v13

    #@1a6
    move/from16 v13, v22

    #@1a8
    move v5, v2

    #@1a9
    .line 753
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@1ab
    if-lez v2, :cond_1bd

    #@1ad
    move/from16 v2, v23

    #@1af
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    #@1b2
    move-result v3

    #@1b3
    if-eqz v3, :cond_1bf

    #@1b5
    .line 754
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@1b7
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    #@1b9
    add-int/2addr v3, v4

    #@1ba
    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@1bc
    goto :goto_1bf

    #@1bd
    :cond_1bd
    move/from16 v2, v23

    #@1bf
    :cond_1bf
    :goto_1bf
    move/from16 v3, v24

    #@1c1
    if-eqz v15, :cond_20e

    #@1c3
    const/high16 v4, -0x80000000

    #@1c5
    if-eq v3, v4, :cond_1c9

    #@1c7
    if-nez v3, :cond_20e

    #@1c9
    :cond_1c9
    const/4 v4, 0x0

    #@1ca
    .line 759
    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@1cc
    const/4 v4, 0x0

    #@1cd
    :goto_1cd
    if-ge v4, v2, :cond_20e

    #@1cf
    .line 762
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@1d2
    move-result-object v6

    #@1d3
    if-nez v6, :cond_1df

    #@1d5
    .line 765
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@1d7
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    #@1da
    move-result v11

    #@1db
    add-int/2addr v6, v11

    #@1dc
    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@1de
    goto :goto_209

    #@1df
    .line 769
    :cond_1df
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@1e2
    move-result v11

    #@1e3
    if-ne v11, v10, :cond_1eb

    #@1e5
    .line 770
    invoke-virtual {v7, v6, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    #@1e8
    move-result v6

    #@1e9
    add-int/2addr v4, v6

    #@1ea
    goto :goto_209

    #@1eb
    .line 775
    :cond_1eb
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1ee
    move-result-object v11

    #@1ef
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@1f1
    .line 777
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@1f3
    add-int v21, v14, v9

    #@1f5
    .line 778
    iget v10, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@1f7
    add-int v21, v21, v10

    #@1f9
    iget v10, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@1fb
    add-int v21, v21, v10

    #@1fd
    .line 779
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@200
    move-result v6

    #@201
    add-int v6, v21, v6

    #@203
    .line 778
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    #@206
    move-result v6

    #@207
    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@209
    :goto_209
    add-int/lit8 v4, v4, 0x1

    #@20b
    const/16 v10, 0x8

    #@20d
    goto :goto_1cd

    #@20e
    .line 784
    :cond_20e
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@210
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@213
    move-result v6

    #@214
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@217
    move-result v10

    #@218
    add-int/2addr v6, v10

    #@219
    add-int/2addr v4, v6

    #@21a
    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@21c
    .line 789
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    #@21f
    move-result v6

    #@220
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    #@223
    move-result v4

    #@224
    move/from16 v6, p2

    #@226
    move v10, v9

    #@227
    const/4 v9, 0x0

    #@228
    .line 792
    invoke-static {v4, v6, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    #@22b
    move-result v4

    #@22c
    const v9, 0xffffff

    #@22f
    and-int/2addr v9, v4

    #@230
    .line 798
    iget v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@232
    sub-int/2addr v9, v11

    #@233
    if-nez v18, :cond_27d

    #@235
    if-eqz v9, :cond_23c

    #@237
    cmpl-float v11, v0, v17

    #@239
    if-lez v11, :cond_23c

    #@23b
    goto :goto_27d

    #@23c
    .line 871
    :cond_23c
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    #@23f
    move-result v0

    #@240
    if-eqz v15, :cond_278

    #@242
    const/high16 v1, 0x40000000    # 2.0f

    #@244
    if-eq v3, v1, :cond_278

    #@246
    const/4 v1, 0x0

    #@247
    :goto_247
    if-ge v1, v2, :cond_278

    #@249
    .line 879
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@24c
    move-result-object v3

    #@24d
    if-eqz v3, :cond_275

    #@24f
    .line 881
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@252
    move-result v9

    #@253
    const/16 v11, 0x8

    #@255
    if-ne v9, v11, :cond_258

    #@257
    goto :goto_275

    #@258
    .line 886
    :cond_258
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@25b
    move-result-object v9

    #@25c
    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@25e
    .line 888
    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@260
    cmpl-float v9, v9, v17

    #@262
    if-lez v9, :cond_275

    #@264
    .line 891
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@267
    move-result v9

    #@268
    const/high16 v11, 0x40000000    # 2.0f

    #@26a
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@26d
    move-result v9

    #@26e
    .line 893
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@271
    move-result v13

    #@272
    .line 890
    invoke-virtual {v3, v9, v13}, Landroid/view/View;->measure(II)V

    #@275
    :cond_275
    :goto_275
    add-int/lit8 v1, v1, 0x1

    #@277
    goto :goto_247

    #@278
    :cond_278
    move/from16 v11, p1

    #@27a
    move v1, v8

    #@27b
    goto/16 :goto_371

    #@27d
    .line 800
    :cond_27d
    :goto_27d
    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    #@27f
    cmpl-float v11, v10, v17

    #@281
    if-lez v11, :cond_284

    #@283
    move v0, v10

    #@284
    :cond_284
    const/4 v10, 0x0

    #@285
    .line 802
    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@287
    move v11, v9

    #@288
    move v9, v1

    #@289
    move v1, v8

    #@28a
    move v8, v10

    #@28b
    :goto_28b
    if-ge v8, v2, :cond_360

    #@28d
    .line 805
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    #@290
    move-result-object v13

    #@291
    .line 807
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@294
    move-result v14

    #@295
    const/16 v15, 0x8

    #@297
    if-ne v14, v15, :cond_29f

    #@299
    move/from16 v21, v11

    #@29b
    move/from16 v11, p1

    #@29d
    goto/16 :goto_359

    #@29f
    .line 811
    :cond_29f
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2a2
    move-result-object v14

    #@2a3
    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@2a5
    .line 813
    iget v10, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    #@2a7
    cmpl-float v18, v10, v17

    #@2a9
    if-lez v18, :cond_301

    #@2ab
    int-to-float v15, v11

    #@2ac
    mul-float/2addr v15, v10

    #@2ad
    div-float/2addr v15, v0

    #@2ae
    float-to-int v15, v15

    #@2af
    sub-float/2addr v0, v10

    #@2b0
    sub-int/2addr v11, v15

    #@2b1
    .line 821
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@2b4
    move-result v10

    #@2b5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    #@2b8
    move-result v18

    #@2b9
    add-int v10, v10, v18

    #@2bb
    move/from16 v18, v0

    #@2bd
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@2bf
    add-int/2addr v10, v0

    #@2c0
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@2c2
    add-int/2addr v10, v0

    #@2c3
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@2c5
    move/from16 v21, v11

    #@2c7
    move/from16 v11, p1

    #@2c9
    .line 820
    invoke-static {v11, v10, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    #@2cc
    move-result v0

    #@2cd
    .line 826
    iget v10, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@2cf
    if-nez v10, :cond_2e2

    #@2d1
    const/high16 v10, 0x40000000    # 2.0f

    #@2d3
    if-eq v3, v10, :cond_2d6

    #@2d5
    goto :goto_2e4

    #@2d6
    :cond_2d6
    if-lez v15, :cond_2d9

    #@2d8
    goto :goto_2da

    #@2d9
    :cond_2d9
    const/4 v15, 0x0

    #@2da
    .line 840
    :goto_2da
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2dd
    move-result v15

    #@2de
    .line 839
    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    #@2e1
    goto :goto_2f4

    #@2e2
    :cond_2e2
    const/high16 v10, 0x40000000    # 2.0f

    #@2e4
    .line 829
    :goto_2e4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@2e7
    move-result v23

    #@2e8
    add-int v15, v23, v15

    #@2ea
    if-gez v15, :cond_2ed

    #@2ec
    const/4 v15, 0x0

    #@2ed
    .line 835
    :cond_2ed
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2f0
    move-result v15

    #@2f1
    .line 834
    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    #@2f4
    .line 846
    :goto_2f4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    #@2f7
    move-result v0

    #@2f8
    and-int/lit16 v0, v0, -0x100

    #@2fa
    .line 845
    invoke-static {v1, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    #@2fd
    move-result v1

    #@2fe
    move/from16 v0, v18

    #@300
    goto :goto_306

    #@301
    :cond_301
    move v10, v11

    #@302
    move/from16 v11, p1

    #@304
    move/from16 v21, v10

    #@306
    .line 850
    :goto_306
    iget v10, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@308
    iget v15, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@30a
    add-int/2addr v10, v15

    #@30b
    .line 851
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@30e
    move-result v15

    #@30f
    add-int/2addr v15, v10

    #@310
    .line 852
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    #@313
    move-result v5

    #@314
    move/from16 v18, v0

    #@316
    const/high16 v0, 0x40000000    # 2.0f

    #@318
    if-eq v12, v0, :cond_324

    #@31a
    .line 854
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@31c
    move/from16 v23, v1

    #@31e
    const/4 v1, -0x1

    #@31f
    if-ne v0, v1, :cond_327

    #@321
    move/from16 v0, v16

    #@323
    goto :goto_328

    #@324
    :cond_324
    move/from16 v23, v1

    #@326
    const/4 v1, -0x1

    #@327
    :cond_327
    const/4 v0, 0x0

    #@328
    :goto_328
    if-eqz v0, :cond_32b

    #@32a
    goto :goto_32c

    #@32b
    :cond_32b
    move v10, v15

    #@32c
    .line 857
    :goto_32c
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    #@32f
    move-result v0

    #@330
    if-eqz v19, :cond_339

    #@332
    .line 860
    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@334
    if-ne v9, v1, :cond_339

    #@336
    move/from16 v9, v16

    #@338
    goto :goto_33a

    #@339
    :cond_339
    const/4 v9, 0x0

    #@33a
    .line 862
    :goto_33a
    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@33c
    .line 863
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@33f
    move-result v15

    #@340
    add-int/2addr v15, v10

    #@341
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@343
    add-int/2addr v15, v1

    #@344
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@346
    add-int/2addr v15, v1

    #@347
    .line 864
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    #@34a
    move-result v1

    #@34b
    add-int/2addr v15, v1

    #@34c
    .line 863
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    #@34f
    move-result v1

    #@350
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@352
    move/from16 v19, v9

    #@354
    move/from16 v1, v23

    #@356
    move v9, v0

    #@357
    move/from16 v0, v18

    #@359
    :goto_359
    add-int/lit8 v8, v8, 0x1

    #@35b
    move/from16 v11, v21

    #@35d
    const/4 v10, 0x0

    #@35e
    goto/16 :goto_28b

    #@360
    :cond_360
    move/from16 v11, p1

    #@362
    .line 868
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@364
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    #@367
    move-result v3

    #@368
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    #@36b
    move-result v8

    #@36c
    add-int/2addr v3, v8

    #@36d
    add-int/2addr v0, v3

    #@36e
    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    #@370
    move v0, v9

    #@371
    :goto_371
    if-nez v19, :cond_378

    #@373
    const/high16 v3, 0x40000000    # 2.0f

    #@375
    if-eq v12, v3, :cond_378

    #@377
    goto :goto_379

    #@378
    :cond_378
    move v0, v5

    #@379
    .line 904
    :goto_379
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    #@37c
    move-result v3

    #@37d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    #@380
    move-result v5

    #@381
    add-int/2addr v3, v5

    #@382
    add-int/2addr v0, v3

    #@383
    .line 907
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    #@386
    move-result v3

    #@387
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@38a
    move-result v0

    #@38b
    .line 909
    invoke-static {v0, v11, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    #@38e
    move-result v0

    #@38f
    invoke-virtual {v7, v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    #@392
    if-eqz v20, :cond_397

    #@394
    .line 913
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    #@397
    :cond_397
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    .line 303
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 307
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_e

    #@a
    .line 308
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    #@d
    goto :goto_11

    #@e
    .line 310
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    #@11
    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 1786
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    #@5
    .line 1787
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@8
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    #@0
    .line 1792
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    #@5
    .line 1793
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    #@0
    .line 1430
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p1, v0, :cond_9

    #@5
    .line 1431
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    #@8
    goto :goto_c

    #@9
    .line 1433
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    #@c
    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    #@0
    .line 574
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_9

    #@5
    .line 575
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    #@8
    goto :goto_c

    #@9
    .line 577
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    #@c
    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    #@0
    .line 413
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    #@2
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 4

    #@0
    if-ltz p1, :cond_b

    #@2
    .line 511
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_b

    #@8
    .line 515
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    #@a
    return-void

    #@b
    .line 512
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    const-string v1, "base aligned child index out of range (0, "

    #@11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    .line 513
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, ")"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 251
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 254
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    #@7
    const/4 v0, 0x0

    #@8
    if-eqz p1, :cond_17

    #@a
    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@10
    .line 257
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    #@16
    goto :goto_1b

    #@17
    .line 259
    :cond_17
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    #@19
    .line 260
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    #@1b
    :goto_1b
    if-nez p1, :cond_1e

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 262
    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    #@21
    .line 263
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    #@24
    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2

    #@0
    .line 276
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    #@2
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    #@0
    .line 1707
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@2
    if-eq v0, p1, :cond_19

    #@4
    const v0, 0x800007

    #@7
    and-int/2addr v0, p1

    #@8
    if-nez v0, :cond_e

    #@a
    const v0, 0x800003

    #@d
    or-int/2addr p1, v0

    #@e
    :cond_e
    and-int/lit8 v0, p1, 0x70

    #@10
    if-nez v0, :cond_14

    #@12
    or-int/lit8 p1, p1, 0x30

    #@14
    .line 1716
    :cond_14
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@16
    .line 1717
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    #@19
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4

    #@0
    const v0, 0x800007

    #@3
    and-int/2addr p1, v0

    #@4
    .line 1735
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@6
    and-int/2addr v0, v1

    #@7
    if-eq v0, p1, :cond_13

    #@9
    const v0, -0x800008

    #@c
    and-int/2addr v0, v1

    #@d
    or-int/2addr p1, v0

    #@e
    .line 1736
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@10
    .line 1737
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    #@13
    :cond_13
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2

    #@0
    .line 440
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    #@2
    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    #@0
    .line 1678
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1679
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    #@6
    .line 1680
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    #@9
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    #@0
    .line 207
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    #@2
    if-eq p1, v0, :cond_7

    #@4
    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    #@7
    .line 210
    :cond_7
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    #@9
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4

    #@0
    and-int/lit8 p1, p1, 0x70

    #@2
    .line 1743
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@4
    and-int/lit8 v1, v0, 0x70

    #@6
    if-eq v1, p1, :cond_10

    #@8
    and-int/lit8 v0, v0, -0x71

    #@a
    or-int/2addr p1, v0

    #@b
    .line 1744
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    #@d
    .line 1745
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    #@10
    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 569
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@4
    move-result p1

    #@5
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    #@7
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
