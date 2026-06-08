.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 55
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 13

    #@0
    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    .line 217
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_b
    if-ge v1, p1, :cond_3a

    #@d
    .line 221
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v2

    #@15
    const/16 v4, 0x8

    #@17
    if-eq v2, v4, :cond_37

    #@19
    .line 223
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object v2

    #@1d
    move-object v8, v2

    #@1e
    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@20
    .line 224
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    #@22
    const/4 v4, -0x1

    #@23
    if-ne v2, v4, :cond_37

    #@25
    .line 227
    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    #@27
    .line 228
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
    .line 231
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@35
    .line 232
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

.method private static resolveMinimumHeight(Landroid/view/View;)I
    .registers 4

    #@0
    .line 248
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_7

    #@6
    return v0

    #@7
    .line 253
    :cond_7
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@9
    const/4 v1, 0x0

    #@a
    if-eqz v0, :cond_1e

    #@c
    .line 254
    check-cast p0, Landroid/view/ViewGroup;

    #@e
    .line 255
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@11
    move-result v0

    #@12
    const/4 v2, 0x1

    #@13
    if-ne v0, v2, :cond_1e

    #@15
    .line 256
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object p0

    #@19
    invoke-static {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    #@1c
    move-result p0

    #@1d
    return p0

    #@1e
    :cond_1e
    return v1
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    #@0
    add-int/2addr p4, p2

    #@1
    add-int/2addr p5, p3

    #@2
    .line 348
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    #@5
    return-void
.end method

.method private tryOnMeasure(II)Z
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    move/from16 v2, p2

    #@6
    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    #@9
    move-result v3

    #@a
    const/4 v4, 0x0

    #@b
    const/4 v5, 0x0

    #@c
    move-object v6, v4

    #@d
    move-object v7, v6

    #@e
    move v8, v5

    #@f
    :goto_f
    const/16 v9, 0x8

    #@11
    if-ge v8, v3, :cond_3f

    #@13
    .line 77
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v10

    #@17
    .line 78
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    #@1a
    move-result v11

    #@1b
    if-ne v11, v9, :cond_1e

    #@1d
    goto :goto_3c

    #@1e
    .line 82
    :cond_1e
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    #@21
    move-result v9

    #@22
    .line 83
    sget v11, Landroidx/appcompat/R$id;->topPanel:I

    #@24
    if-ne v9, v11, :cond_28

    #@26
    move-object v4, v10

    #@27
    goto :goto_3c

    #@28
    .line 85
    :cond_28
    sget v11, Landroidx/appcompat/R$id;->buttonPanel:I

    #@2a
    if-ne v9, v11, :cond_2e

    #@2c
    move-object v6, v10

    #@2d
    goto :goto_3c

    #@2e
    .line 87
    :cond_2e
    sget v11, Landroidx/appcompat/R$id;->contentPanel:I

    #@30
    if-eq v9, v11, :cond_38

    #@32
    sget v11, Landroidx/appcompat/R$id;->customPanel:I

    #@34
    if-ne v9, v11, :cond_37

    #@36
    goto :goto_38

    #@37
    :cond_37
    return v5

    #@38
    :cond_38
    :goto_38
    if-eqz v7, :cond_3b

    #@3a
    return v5

    #@3b
    :cond_3b
    move-object v7, v10

    #@3c
    :goto_3c
    add-int/lit8 v8, v8, 0x1

    #@3e
    goto :goto_f

    #@3f
    .line 99
    :cond_3f
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@42
    move-result v8

    #@43
    .line 100
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@46
    move-result v10

    #@47
    .line 101
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4a
    move-result v11

    #@4b
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    #@4e
    move-result v12

    #@4f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingBottom()I

    #@52
    move-result v13

    #@53
    add-int/2addr v12, v13

    #@54
    if-eqz v4, :cond_67

    #@56
    .line 107
    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    #@59
    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@5c
    move-result v13

    #@5d
    add-int/2addr v12, v13

    #@5e
    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@61
    move-result v4

    #@62
    invoke-static {v5, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    #@65
    move-result v4

    #@66
    goto :goto_68

    #@67
    :cond_67
    move v4, v5

    #@68
    :goto_68
    if-eqz v6, :cond_80

    #@6a
    .line 116
    invoke-virtual {v6, v1, v5}, Landroid/view/View;->measure(II)V

    #@6d
    .line 117
    invoke-static {v6}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    #@70
    move-result v13

    #@71
    .line 118
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@74
    move-result v14

    #@75
    sub-int/2addr v14, v13

    #@76
    add-int/2addr v12, v13

    #@77
    .line 121
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    #@7a
    move-result v15

    #@7b
    invoke-static {v4, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    #@7e
    move-result v4

    #@7f
    goto :goto_82

    #@80
    :cond_80
    move v13, v5

    #@81
    move v14, v13

    #@82
    :goto_82
    if-eqz v7, :cond_a3

    #@84
    if-nez v8, :cond_88

    #@86
    move v15, v5

    #@87
    goto :goto_92

    #@88
    :cond_88
    sub-int v15, v10, v12

    #@8a
    .line 131
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    #@8d
    move-result v15

    #@8e
    .line 130
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@91
    move-result v15

    #@92
    .line 134
    :goto_92
    invoke-virtual {v7, v1, v15}, Landroid/view/View;->measure(II)V

    #@95
    .line 135
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    #@98
    move-result v15

    #@99
    add-int/2addr v12, v15

    #@9a
    .line 138
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    #@9d
    move-result v5

    #@9e
    invoke-static {v4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    #@a1
    move-result v4

    #@a2
    goto :goto_a4

    #@a3
    :cond_a3
    const/4 v15, 0x0

    #@a4
    :goto_a4
    sub-int/2addr v10, v12

    #@a5
    const/high16 v5, 0x40000000    # 2.0f

    #@a7
    if-eqz v6, :cond_c6

    #@a9
    sub-int/2addr v12, v13

    #@aa
    .line 149
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    #@ad
    move-result v14

    #@ae
    if-lez v14, :cond_b2

    #@b0
    sub-int/2addr v10, v14

    #@b1
    add-int/2addr v13, v14

    #@b2
    .line 155
    :cond_b2
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@b5
    move-result v13

    #@b6
    .line 157
    invoke-virtual {v6, v1, v13}, Landroid/view/View;->measure(II)V

    #@b9
    .line 159
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@bc
    move-result v13

    #@bd
    add-int/2addr v12, v13

    #@be
    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    #@c1
    move-result v6

    #@c2
    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    #@c5
    move-result v4

    #@c6
    :cond_c6
    if-eqz v7, :cond_e0

    #@c8
    if-lez v10, :cond_e0

    #@ca
    sub-int/2addr v12, v15

    #@cb
    add-int/2addr v15, v10

    #@cc
    .line 175
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@cf
    move-result v6

    #@d0
    .line 177
    invoke-virtual {v7, v1, v6}, Landroid/view/View;->measure(II)V

    #@d3
    .line 179
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    #@d6
    move-result v6

    #@d7
    add-int/2addr v12, v6

    #@d8
    .line 180
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    #@db
    move-result v6

    #@dc
    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    #@df
    move-result v4

    #@e0
    :cond_e0
    const/4 v6, 0x0

    #@e1
    const/4 v7, 0x0

    #@e2
    :goto_e2
    if-ge v6, v3, :cond_f9

    #@e4
    .line 186
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@e7
    move-result-object v8

    #@e8
    .line 187
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    #@eb
    move-result v10

    #@ec
    if-eq v10, v9, :cond_f6

    #@ee
    .line 188
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@f1
    move-result v8

    #@f2
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@f5
    move-result v7

    #@f6
    :cond_f6
    add-int/lit8 v6, v6, 0x1

    #@f8
    goto :goto_e2

    #@f9
    .line 192
    :cond_f9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    #@fc
    move-result v6

    #@fd
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    #@100
    move-result v8

    #@101
    add-int/2addr v6, v8

    #@102
    add-int/2addr v7, v6

    #@103
    .line 194
    invoke-static {v7, v1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    #@106
    move-result v1

    #@107
    const/4 v4, 0x0

    #@108
    .line 196
    invoke-static {v12, v2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    #@10b
    move-result v4

    #@10c
    .line 198
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    #@10f
    if-eq v11, v5, :cond_114

    #@111
    .line 203
    invoke-direct {v0, v3, v2}, Landroidx/appcompat/widget/AlertDialogLayout;->forceUniformWidth(II)V

    #@114
    :cond_114
    const/4 v1, 0x1

    #@115
    return v1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 23

    #@0
    move-object/from16 v6, p0

    #@2
    .line 265
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    #@5
    move-result v7

    #@6
    sub-int v0, p4, p2

    #@8
    .line 269
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    #@b
    move-result v1

    #@c
    sub-int v8, v0, v1

    #@e
    sub-int/2addr v0, v7

    #@f
    .line 272
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    #@12
    move-result v1

    #@13
    sub-int v9, v0, v1

    #@15
    .line 274
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredHeight()I

    #@18
    move-result v0

    #@19
    .line 275
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    #@1c
    move-result v10

    #@1d
    .line 276
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getGravity()I

    #@20
    move-result v1

    #@21
    and-int/lit8 v2, v1, 0x70

    #@23
    const v3, 0x800007

    #@26
    and-int v11, v1, v3

    #@28
    const/16 v1, 0x10

    #@2a
    if-eq v2, v1, :cond_40

    #@2c
    const/16 v1, 0x50

    #@2e
    if-eq v2, v1, :cond_35

    #@30
    .line 294
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    #@33
    move-result v0

    #@34
    goto :goto_4b

    #@35
    .line 284
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    #@38
    move-result v1

    #@39
    add-int v1, v1, p5

    #@3b
    sub-int v1, v1, p3

    #@3d
    sub-int v0, v1, v0

    #@3f
    goto :goto_4b

    #@40
    .line 289
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    #@43
    move-result v1

    #@44
    sub-int v2, p5, p3

    #@46
    sub-int/2addr v2, v0

    #@47
    div-int/lit8 v2, v2, 0x2

    #@49
    add-int v0, v1, v2

    #@4b
    .line 298
    :goto_4b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    #@4e
    move-result-object v1

    #@4f
    const/4 v2, 0x0

    #@50
    if-nez v1, :cond_54

    #@52
    move v12, v2

    #@53
    goto :goto_59

    #@54
    .line 300
    :cond_54
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@57
    move-result v1

    #@58
    move v12, v1

    #@59
    :goto_59
    move v13, v2

    #@5a
    :goto_5a
    if-ge v13, v10, :cond_bf

    #@5c
    .line 303
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@5f
    move-result-object v1

    #@60
    if-eqz v1, :cond_bc

    #@62
    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@65
    move-result v2

    #@66
    const/16 v3, 0x8

    #@68
    if-eq v2, v3, :cond_bc

    #@6a
    .line 305
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@6d
    move-result v4

    #@6e
    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@71
    move-result v14

    #@72
    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@75
    move-result-object v2

    #@76
    move-object v15, v2

    #@77
    check-cast v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@79
    .line 311
    iget v2, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    #@7b
    if-gez v2, :cond_7e

    #@7d
    move v2, v11

    #@7e
    .line 315
    :cond_7e
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@81
    move-result v3

    #@82
    .line 316
    invoke-static {v2, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@85
    move-result v2

    #@86
    and-int/lit8 v2, v2, 0x7

    #@88
    const/4 v3, 0x1

    #@89
    if-eq v2, v3, :cond_97

    #@8b
    const/4 v3, 0x5

    #@8c
    if-eq v2, v3, :cond_92

    #@8e
    .line 332
    iget v2, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@90
    add-int/2addr v2, v7

    #@91
    goto :goto_a2

    #@92
    :cond_92
    sub-int v2, v8, v4

    #@94
    .line 327
    iget v3, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@96
    goto :goto_a1

    #@97
    :cond_97
    sub-int v2, v9, v4

    #@99
    .line 322
    div-int/lit8 v2, v2, 0x2

    #@9b
    add-int/2addr v2, v7

    #@9c
    iget v3, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    #@9e
    add-int/2addr v2, v3

    #@9f
    iget v3, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    #@a1
    :goto_a1
    sub-int/2addr v2, v3

    #@a2
    .line 336
    :goto_a2
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    #@a5
    move-result v3

    #@a6
    if-eqz v3, :cond_a9

    #@a8
    add-int/2addr v0, v12

    #@a9
    .line 340
    :cond_a9
    iget v3, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    #@ab
    add-int v16, v0, v3

    #@ad
    move-object/from16 v0, p0

    #@af
    move/from16 v3, v16

    #@b1
    move v5, v14

    #@b2
    .line 341
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    #@b5
    .line 342
    iget v0, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    #@b7
    add-int/2addr v14, v0

    #@b8
    add-int v16, v16, v14

    #@ba
    move/from16 v0, v16

    #@bc
    :cond_bc
    add-int/lit8 v13, v13, 0x1

    #@be
    goto :goto_5a

    #@bf
    :cond_bf
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    #@0
    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 66
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    #@9
    :cond_9
    return-void
.end method
