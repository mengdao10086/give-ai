.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mStacked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    #@0
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, -0x1

    #@4
    .line 50
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    #@6
    .line 54
    sget-object v0, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    #@8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 55
    sget-object v3, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    #@e
    const/4 v6, 0x0

    #@f
    const/4 v7, 0x0

    #@10
    move-object v1, p0

    #@11
    move-object v2, p1

    #@12
    move-object v4, p2

    #@13
    move-object v5, v0

    #@14
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@17
    .line 57
    sget p1, Landroidx/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    #@19
    const/4 p2, 0x1

    #@1a
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d
    move-result p1

    #@1e
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    #@20
    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@23
    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getOrientation()I

    #@26
    move-result p1

    #@27
    if-ne p1, p2, :cond_2e

    #@29
    .line 63
    iget-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    #@2b
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    #@2e
    :cond_2e
    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .registers 4

    #@0
    .line 156
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    :goto_4
    if-ge p1, v0, :cond_14

    #@6
    .line 157
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_11

    #@10
    return p1

    #@11
    :cond_11
    add-int/lit8 p1, p1, 0x1

    #@13
    goto :goto_4

    #@14
    :cond_14
    const/4 p1, -0x1

    #@15
    return p1
.end method

.method private isStacked()Z
    .registers 2

    #@0
    .line 186
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    #@2
    return v0
.end method

.method private setStacked(Z)V
    .registers 3

    #@0
    .line 165
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    #@2
    if-eq v0, p1, :cond_3d

    #@4
    if-eqz p1, :cond_a

    #@6
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    #@8
    if-eqz v0, :cond_3d

    #@a
    .line 166
    :cond_a
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    #@c
    .line 168
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setOrientation(I)V

    #@f
    if-eqz p1, :cond_15

    #@11
    const v0, 0x800005

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/16 v0, 0x50

    #@17
    .line 169
    :goto_17
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->setGravity(I)V

    #@1a
    .line 171
    sget v0, Landroidx/appcompat/R$id;->spacer:I

    #@1c
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_2b

    #@22
    if-eqz p1, :cond_27

    #@24
    const/16 p1, 0x8

    #@26
    goto :goto_28

    #@27
    :cond_27
    const/4 p1, 0x4

    #@28
    .line 173
    :goto_28
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    #@2b
    .line 178
    :cond_2b
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    #@2e
    move-result p1

    #@2f
    add-int/lit8 p1, p1, -0x2

    #@31
    :goto_31
    if-ltz p1, :cond_3d

    #@33
    .line 180
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    #@3a
    add-int/lit8 p1, p1, -0x1

    #@3c
    goto :goto_31

    #@3d
    :cond_3d
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 9

    #@0
    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v0

    #@4
    .line 81
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_18

    #@9
    .line 82
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    #@b
    if-le v0, v1, :cond_16

    #@d
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_16

    #@13
    .line 84
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    #@16
    .line 87
    :cond_16
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    #@18
    .line 96
    :cond_18
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    #@1b
    move-result v1

    #@1c
    const/4 v3, 0x1

    #@1d
    if-nez v1, :cond_2f

    #@1f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@22
    move-result v1

    #@23
    const/high16 v4, 0x40000000    # 2.0f

    #@25
    if-ne v1, v4, :cond_2f

    #@27
    const/high16 v1, -0x80000000

    #@29
    .line 97
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2c
    move-result v0

    #@2d
    move v1, v3

    #@2e
    goto :goto_31

    #@2f
    :cond_2f
    move v0, p1

    #@30
    move v1, v2

    #@31
    .line 105
    :goto_31
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@34
    .line 107
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    #@36
    if-eqz v0, :cond_52

    #@38
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_52

    #@3e
    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    #@41
    move-result v0

    #@42
    const/high16 v4, -0x1000000

    #@44
    and-int/2addr v0, v4

    #@45
    const/high16 v4, 0x1000000

    #@47
    if-ne v0, v4, :cond_4b

    #@49
    move v0, v3

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    move v0, v2

    #@4c
    :goto_4c
    if-eqz v0, :cond_52

    #@4e
    .line 115
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    #@51
    move v1, v3

    #@52
    :cond_52
    if-eqz v1, :cond_57

    #@54
    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@57
    .line 128
    :cond_57
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    #@5a
    move-result v0

    #@5b
    if-ltz v0, :cond_a4

    #@5d
    .line 130
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@60
    move-result-object v1

    #@61
    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@64
    move-result-object v4

    #@65
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@67
    .line 132
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingTop()I

    #@6a
    move-result v5

    #@6b
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@6e
    move-result v1

    #@6f
    add-int/2addr v5, v1

    #@70
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@72
    add-int/2addr v5, v1

    #@73
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@75
    add-int/2addr v5, v1

    #@76
    add-int/2addr v5, v2

    #@77
    .line 134
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_9e

    #@7d
    add-int/2addr v0, v3

    #@7e
    .line 135
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    #@81
    move-result v0

    #@82
    if-ltz v0, :cond_9c

    #@84
    .line 137
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    #@8b
    move-result v0

    #@8c
    .line 138
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@93
    move-result-object v1

    #@94
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@96
    const/high16 v2, 0x41800000    # 16.0f

    #@98
    mul-float/2addr v1, v2

    #@99
    float-to-int v1, v1

    #@9a
    add-int/2addr v0, v1

    #@9b
    add-int/2addr v5, v0

    #@9c
    :cond_9c
    move v2, v5

    #@9d
    goto :goto_a4

    #@9e
    .line 141
    :cond_9e
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingBottom()I

    #@a1
    move-result v0

    #@a2
    add-int v2, v5, v0

    #@a4
    .line 145
    :cond_a4
    :goto_a4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@a7
    move-result v0

    #@a8
    if-eq v0, v2, :cond_b2

    #@aa
    .line 146
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setMinimumHeight(I)V

    #@ad
    if-nez p2, :cond_b2

    #@af
    .line 150
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@b2
    :cond_b2
    return-void
.end method

.method public setAllowStacking(Z)V
    .registers 3

    #@0
    .line 68
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    #@2
    if-eq v0, p1, :cond_15

    #@4
    .line 69
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    #@6
    if-nez p1, :cond_12

    #@8
    .line 70
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_12

    #@e
    const/4 p1, 0x0

    #@f
    .line 71
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    #@12
    .line 73
    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->requestLayout()V

    #@15
    :cond_15
    return-void
.end method
