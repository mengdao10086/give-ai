.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 p3, 0x0

    #@4
    .line 59
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    #@6
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    #@0
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    const/4 p3, 0x0

    #@4
    .line 67
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    #@6
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-void
.end method

.method private static getMeasuredDimension(III)I
    .registers 4

    #@0
    const/high16 v0, -0x80000000

    #@2
    if-eq p1, v0, :cond_a

    #@4
    const/high16 v0, 0x40000000    # 2.0f

    #@6
    if-eq p1, v0, :cond_9

    #@8
    return p2

    #@9
    :cond_9
    return p0

    #@a
    .line 182
    :cond_a
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    #@d
    move-result p0

    #@e
    return p0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3
    move-result-object p1

    #@4
    sget-object v0, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@a
    move-result-object p1

    #@b
    .line 74
    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    #@d
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@10
    move-result p2

    #@11
    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    #@13
    .line 75
    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    #@15
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@18
    move-result p2

    #@19
    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    #@1b
    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .registers 2

    #@0
    .line 88
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    #@2
    return v0
.end method

.method protected getLineSpacing()I
    .registers 2

    #@0
    .line 80
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    #@2
    return v0
.end method

.method protected getRowCount()I
    .registers 2

    #@0
    .line 248
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    #@2
    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .registers 3

    #@0
    .line 253
    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    .line 254
    instance-of v0, p1, Ljava/lang/Integer;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 p1, -0x1

    #@b
    return p1

    #@c
    .line 257
    :cond_c
    check-cast p1, Ljava/lang/Integer;

    #@e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result p1

    #@12
    return p1
.end method

.method public isSingleLine()Z
    .registers 2

    #@0
    .line 97
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    #@2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    #@0
    .line 190
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    #@3
    move-result p1

    #@4
    const/4 p3, 0x0

    #@5
    if-nez p1, :cond_a

    #@7
    .line 192
    iput p3, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    #@9
    return-void

    #@a
    :cond_a
    const/4 p1, 0x1

    #@b
    .line 195
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    #@d
    .line 197
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@10
    move-result p5

    #@11
    if-ne p5, p1, :cond_15

    #@13
    move p5, p1

    #@14
    goto :goto_16

    #@15
    :cond_15
    move p5, p3

    #@16
    :goto_16
    if-eqz p5, :cond_1d

    #@18
    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    #@1b
    move-result v0

    #@1c
    goto :goto_21

    #@1d
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    #@20
    move-result v0

    #@21
    :goto_21
    if-eqz p5, :cond_28

    #@23
    .line 199
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    #@26
    move-result v1

    #@27
    goto :goto_2c

    #@28
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    #@2b
    move-result v1

    #@2c
    .line 201
    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    #@2f
    move-result v2

    #@30
    sub-int/2addr p4, p2

    #@31
    sub-int/2addr p4, v1

    #@32
    move v1, p3

    #@33
    move v3, v0

    #@34
    move p2, v2

    #@35
    .line 207
    :goto_35
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    #@38
    move-result v4

    #@39
    if-ge v1, v4, :cond_b1

    #@3b
    .line 208
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    #@3e
    move-result-object v4

    #@3f
    .line 210
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@42
    move-result v5

    #@43
    const/16 v6, 0x8

    #@45
    if-ne v5, v6, :cond_52

    #@47
    .line 211
    sget v5, Lcom/google/android/material/R$id;->row_index_key:I

    #@49
    const/4 v6, -0x1

    #@4a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@51
    goto :goto_ae

    #@52
    .line 215
    :cond_52
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@55
    move-result-object v5

    #@56
    .line 218
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    #@58
    if-eqz v6, :cond_65

    #@5a
    .line 219
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    #@5c
    .line 220
    invoke-static {v5}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@5f
    move-result v6

    #@60
    .line 221
    invoke-static {v5}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@63
    move-result v5

    #@64
    goto :goto_67

    #@65
    :cond_65
    move v5, p3

    #@66
    move v6, v5

    #@67
    :goto_67
    add-int v7, v3, v6

    #@69
    .line 224
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@6c
    move-result v8

    #@6d
    add-int/2addr v7, v8

    #@6e
    .line 226
    iget-boolean v8, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    #@70
    if-nez v8, :cond_7d

    #@72
    if-le v7, p4, :cond_7d

    #@74
    .line 228
    iget p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    #@76
    add-int/2addr p2, v2

    #@77
    .line 229
    iget v2, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    #@79
    add-int/2addr v2, p1

    #@7a
    iput v2, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    #@7c
    move v3, v0

    #@7d
    .line 231
    :cond_7d
    sget v2, Lcom/google/android/material/R$id;->row_index_key:I

    #@7f
    iget v7, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    #@81
    sub-int/2addr v7, p1

    #@82
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v4, v2, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@89
    add-int v2, v3, v6

    #@8b
    .line 233
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@8e
    move-result v7

    #@8f
    add-int/2addr v7, v2

    #@90
    .line 234
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@93
    move-result v8

    #@94
    add-int/2addr v8, p2

    #@95
    if-eqz p5, :cond_a0

    #@97
    sub-int v2, p4, v7

    #@99
    sub-int v7, p4, v3

    #@9b
    sub-int/2addr v7, v6

    #@9c
    .line 237
    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    #@9f
    goto :goto_a3

    #@a0
    .line 240
    :cond_a0
    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    #@a3
    :goto_a3
    add-int/2addr v6, v5

    #@a4
    .line 243
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@a7
    move-result v2

    #@a8
    add-int/2addr v6, v2

    #@a9
    iget v2, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    #@ab
    add-int/2addr v6, v2

    #@ac
    add-int/2addr v3, v6

    #@ad
    move v2, v8

    #@ae
    :goto_ae
    add-int/lit8 v1, v1, 0x1

    #@b0
    goto :goto_35

    #@b1
    :cond_b1
    return-void
.end method

.method protected onMeasure(II)V
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@5
    move-result v1

    #@6
    .line 108
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result v2

    #@a
    .line 110
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@d
    move-result v3

    #@e
    .line 111
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@11
    move-result v4

    #@12
    const/high16 v5, -0x80000000

    #@14
    if-eq v2, v5, :cond_1f

    #@16
    const/high16 v5, 0x40000000    # 2.0f

    #@18
    if-ne v2, v5, :cond_1b

    #@1a
    goto :goto_1f

    #@1b
    :cond_1b
    const v5, 0x7fffffff

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    :goto_1f
    move v5, v1

    #@20
    .line 118
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    #@23
    move-result v6

    #@24
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    #@27
    move-result v7

    #@28
    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    #@2b
    move-result v8

    #@2c
    sub-int/2addr v5, v8

    #@2d
    move v9, v7

    #@2e
    const/4 v10, 0x0

    #@2f
    const/4 v11, 0x0

    #@30
    .line 124
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    #@33
    move-result v12

    #@34
    if-ge v10, v12, :cond_af

    #@36
    .line 125
    invoke-virtual {v0, v10}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    #@39
    move-result-object v12

    #@3a
    .line 127
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    #@3d
    move-result v13

    #@3e
    const/16 v14, 0x8

    #@40
    if-ne v13, v14, :cond_49

    #@42
    move/from16 v13, p1

    #@44
    move/from16 v14, p2

    #@46
    const/16 v16, 0x0

    #@48
    goto :goto_ac

    #@49
    :cond_49
    move/from16 v13, p1

    #@4b
    move/from16 v14, p2

    #@4d
    .line 130
    invoke-virtual {v0, v12, v13, v14}, Lcom/google/android/material/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    #@50
    .line 132
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@53
    move-result-object v15

    #@54
    .line 135
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    #@56
    if-eqz v8, :cond_65

    #@58
    .line 136
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    #@5a
    .line 137
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@5c
    const/16 v16, 0x0

    #@5e
    add-int/lit8 v8, v8, 0x0

    #@60
    .line 138
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@62
    add-int/lit8 v15, v15, 0x0

    #@64
    goto :goto_6a

    #@65
    :cond_65
    const/16 v16, 0x0

    #@67
    move/from16 v8, v16

    #@69
    move v15, v8

    #@6a
    :goto_6a
    add-int v17, v6, v8

    #@6c
    .line 141
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    #@6f
    move-result v18

    #@70
    move/from16 v19, v6

    #@72
    add-int v6, v17, v18

    #@74
    if-le v6, v5, :cond_84

    #@76
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    #@79
    move-result v6

    #@7a
    if-nez v6, :cond_84

    #@7c
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    #@7f
    move-result v6

    #@80
    .line 148
    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    #@82
    add-int/2addr v9, v7

    #@83
    goto :goto_86

    #@84
    :cond_84
    move/from16 v6, v19

    #@86
    :goto_86
    add-int v7, v6, v8

    #@88
    .line 151
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    #@8b
    move-result v17

    #@8c
    add-int v7, v7, v17

    #@8e
    .line 152
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    #@91
    move-result v17

    #@92
    add-int v17, v9, v17

    #@94
    if-le v7, v11, :cond_97

    #@96
    move v11, v7

    #@97
    :cond_97
    add-int/2addr v8, v15

    #@98
    .line 159
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    #@9b
    move-result v7

    #@9c
    add-int/2addr v8, v7

    #@9d
    iget v7, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    #@9f
    add-int/2addr v8, v7

    #@a0
    add-int/2addr v6, v8

    #@a1
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    #@a4
    move-result v7

    #@a5
    add-int/lit8 v7, v7, -0x1

    #@a7
    if-ne v10, v7, :cond_aa

    #@a9
    add-int/2addr v11, v15

    #@aa
    :cond_aa
    move/from16 v7, v17

    #@ac
    :goto_ac
    add-int/lit8 v10, v10, 0x1

    #@ae
    goto :goto_30

    #@af
    .line 169
    :cond_af
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    #@b2
    move-result v5

    #@b3
    add-int/2addr v11, v5

    #@b4
    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingBottom()I

    #@b7
    move-result v5

    #@b8
    add-int/2addr v7, v5

    #@b9
    .line 172
    invoke-static {v1, v2, v11}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    #@bc
    move-result v1

    #@bd
    .line 173
    invoke-static {v3, v4, v7}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    #@c0
    move-result v2

    #@c1
    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/FlowLayout;->setMeasuredDimension(II)V

    #@c4
    return-void
.end method

.method protected setItemSpacing(I)V
    .registers 2

    #@0
    .line 92
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    #@2
    return-void
.end method

.method protected setLineSpacing(I)V
    .registers 2

    #@0
    .line 84
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    #@2
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    #@0
    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    #@2
    return-void
.end method
