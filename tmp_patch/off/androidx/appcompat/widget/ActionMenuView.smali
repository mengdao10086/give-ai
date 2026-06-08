.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;,
        Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 79
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 p2, 0x0

    #@4
    .line 84
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    #@7
    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v0

    #@f
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@11
    const/high16 v1, 0x42600000    # 56.0f

    #@13
    mul-float/2addr v1, v0

    #@14
    float-to-int v1, v1

    #@15
    .line 86
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    #@17
    const/high16 v1, 0x40800000    # 4.0f

    #@19
    mul-float/2addr v0, v1

    #@1a
    float-to-int v0, v0

    #@1b
    .line 87
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    #@1d
    .line 88
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    #@1f
    .line 89
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    #@21
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 10

    #@0
    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@6
    .line 409
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v1

    #@a
    sub-int/2addr v1, p4

    #@b
    .line 411
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@e
    move-result p3

    #@f
    .line 412
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@12
    move-result p3

    #@13
    .line 414
    instance-of p4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@15
    if-eqz p4, :cond_1b

    #@17
    .line 415
    move-object p4, p0

    #@18
    check-cast p4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    const/4 p4, 0x0

    #@1c
    :goto_1c
    const/4 v1, 0x1

    #@1d
    const/4 v2, 0x0

    #@1e
    if-eqz p4, :cond_28

    #@20
    .line 416
    invoke-virtual {p4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    #@23
    move-result p4

    #@24
    if-eqz p4, :cond_28

    #@26
    move p4, v1

    #@27
    goto :goto_29

    #@28
    :cond_28
    move p4, v2

    #@29
    :goto_29
    if-lez p2, :cond_4c

    #@2b
    const/4 v3, 0x2

    #@2c
    if-eqz p4, :cond_30

    #@2e
    if-lt p2, v3, :cond_4c

    #@30
    :cond_30
    mul-int/2addr p2, p1

    #@31
    const/high16 v4, -0x80000000

    #@33
    .line 420
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@36
    move-result p2

    #@37
    .line 422
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    #@3a
    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@3d
    move-result p2

    #@3e
    .line 425
    div-int v4, p2, p1

    #@40
    .line 426
    rem-int/2addr p2, p1

    #@41
    if-eqz p2, :cond_45

    #@43
    add-int/lit8 v4, v4, 0x1

    #@45
    :cond_45
    if-eqz p4, :cond_4a

    #@47
    if-ge v4, v3, :cond_4a

    #@49
    goto :goto_4d

    #@4a
    :cond_4a
    move v3, v4

    #@4b
    goto :goto_4d

    #@4c
    :cond_4c
    move v3, v2

    #@4d
    .line 430
    :goto_4d
    iget-boolean p2, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@4f
    if-nez p2, :cond_54

    #@51
    if-eqz p4, :cond_54

    #@53
    goto :goto_55

    #@54
    :cond_54
    move v1, v2

    #@55
    .line 431
    :goto_55
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    #@57
    .line 433
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@59
    mul-int/2addr p1, v3

    #@5a
    const/high16 p2, 0x40000000    # 2.0f

    #@5c
    .line 435
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5f
    move-result p1

    #@60
    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    #@63
    return v3
.end method

.method private onMeasureExactFormat(II)V
    .registers 32

    #@0
    move-object/from16 v0, p0

    #@2
    .line 181
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@5
    move-result v1

    #@6
    .line 182
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v2

    #@a
    .line 183
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@d
    move-result v3

    #@e
    .line 185
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    #@11
    move-result v4

    #@12
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    #@15
    move-result v5

    #@16
    add-int/2addr v4, v5

    #@17
    .line 186
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    #@1a
    move-result v5

    #@1b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    #@1e
    move-result v6

    #@1f
    add-int/2addr v5, v6

    #@20
    const/4 v6, -0x2

    #@21
    move/from16 v7, p2

    #@23
    .line 188
    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    #@26
    move-result v6

    #@27
    sub-int/2addr v2, v4

    #@28
    .line 194
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    #@2a
    div-int v7, v2, v4

    #@2c
    .line 195
    rem-int v8, v2, v4

    #@2e
    const/4 v9, 0x0

    #@2f
    if-nez v7, :cond_35

    #@31
    .line 199
    invoke-virtual {v0, v2, v9}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    #@34
    return-void

    #@35
    .line 203
    :cond_35
    div-int/2addr v8, v7

    #@36
    add-int/2addr v4, v8

    #@37
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    #@3a
    move-result v8

    #@3b
    move v10, v9

    #@3c
    move v12, v10

    #@3d
    move v13, v12

    #@3e
    move v14, v13

    #@3f
    move v15, v14

    #@40
    move/from16 v16, v15

    #@42
    const-wide/16 v17, 0x0

    #@44
    :goto_44
    if-ge v12, v8, :cond_c3

    #@46
    .line 217
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@49
    move-result-object v11

    #@4a
    .line 218
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    #@4d
    move-result v9

    #@4e
    move/from16 v19, v3

    #@50
    const/16 v3, 0x8

    #@52
    if-ne v9, v3, :cond_56

    #@54
    goto/16 :goto_bd

    #@56
    .line 220
    :cond_56
    instance-of v3, v11, Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@58
    add-int/lit8 v14, v14, 0x1

    #@5a
    if-eqz v3, :cond_65

    #@5c
    .line 226
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    #@5e
    move/from16 v20, v14

    #@60
    const/4 v14, 0x0

    #@61
    invoke-virtual {v11, v9, v14, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    #@64
    goto :goto_68

    #@65
    :cond_65
    move/from16 v20, v14

    #@67
    const/4 v14, 0x0

    #@68
    .line 229
    :goto_68
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6b
    move-result-object v9

    #@6c
    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@6e
    .line 230
    iput-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@70
    .line 231
    iput v14, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    #@72
    .line 232
    iput v14, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@74
    .line 233
    iput-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    #@76
    .line 234
    iput v14, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@78
    .line 235
    iput v14, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@7a
    if-eqz v3, :cond_87

    #@7c
    .line 236
    move-object v3, v11

    #@7d
    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@7f
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    #@82
    move-result v3

    #@83
    if-eqz v3, :cond_87

    #@85
    const/4 v3, 0x1

    #@86
    goto :goto_88

    #@87
    :cond_87
    const/4 v3, 0x0

    #@88
    :goto_88
    iput-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@8a
    .line 239
    iget-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@8c
    if-eqz v3, :cond_90

    #@8e
    const/4 v3, 0x1

    #@8f
    goto :goto_91

    #@90
    :cond_90
    move v3, v7

    #@91
    .line 241
    :goto_91
    invoke-static {v11, v4, v3, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    #@94
    move-result v3

    #@95
    .line 244
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    #@98
    move-result v15

    #@99
    .line 245
    iget-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    #@9b
    if-eqz v14, :cond_9f

    #@9d
    add-int/lit8 v16, v16, 0x1

    #@9f
    .line 246
    :cond_9f
    iget-boolean v9, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@a1
    if-eqz v9, :cond_a4

    #@a3
    const/4 v13, 0x1

    #@a4
    :cond_a4
    sub-int/2addr v7, v3

    #@a5
    .line 249
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    #@a8
    move-result v9

    #@a9
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    #@ac
    move-result v10

    #@ad
    const/4 v9, 0x1

    #@ae
    if-ne v3, v9, :cond_ba

    #@b0
    shl-int v3, v9, v12

    #@b2
    move v11, v10

    #@b3
    int-to-long v9, v3

    #@b4
    or-long v9, v17, v9

    #@b6
    move-wide/from16 v17, v9

    #@b8
    move v10, v11

    #@b9
    goto :goto_bb

    #@ba
    :cond_ba
    move v11, v10

    #@bb
    :goto_bb
    move/from16 v14, v20

    #@bd
    :goto_bd
    add-int/lit8 v12, v12, 0x1

    #@bf
    move/from16 v3, v19

    #@c1
    const/4 v9, 0x0

    #@c2
    goto :goto_44

    #@c3
    :cond_c3
    move/from16 v19, v3

    #@c5
    const/4 v3, 0x2

    #@c6
    if-eqz v13, :cond_cc

    #@c8
    if-ne v14, v3, :cond_cc

    #@ca
    const/4 v5, 0x1

    #@cb
    goto :goto_cd

    #@cc
    :cond_cc
    const/4 v5, 0x0

    #@cd
    :goto_cd
    const/4 v9, 0x0

    #@ce
    :goto_ce
    if-lez v16, :cond_177

    #@d0
    if-lez v7, :cond_177

    #@d2
    const v20, 0x7fffffff

    #@d5
    move/from16 v12, v20

    #@d7
    const/4 v3, 0x0

    #@d8
    const/4 v11, 0x0

    #@d9
    const-wide/16 v20, 0x0

    #@db
    :goto_db
    if-ge v11, v8, :cond_116

    #@dd
    .line 266
    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@e0
    move-result-object v24

    #@e1
    .line 267
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e4
    move-result-object v24

    #@e5
    move/from16 v25, v9

    #@e7
    move-object/from16 v9, v24

    #@e9
    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@eb
    move/from16 v24, v10

    #@ed
    .line 270
    iget-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    #@ef
    if-nez v10, :cond_f2

    #@f1
    goto :goto_10f

    #@f2
    .line 273
    :cond_f2
    iget v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@f4
    if-ge v10, v12, :cond_101

    #@f6
    .line 274
    iget v3, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@f8
    const-wide/16 v22, 0x1

    #@fa
    shl-long v9, v22, v11

    #@fc
    move v12, v3

    #@fd
    move-wide/from16 v20, v9

    #@ff
    const/4 v3, 0x1

    #@100
    goto :goto_10f

    #@101
    :cond_101
    const-wide/16 v22, 0x1

    #@103
    .line 277
    iget v9, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@105
    if-ne v9, v12, :cond_10f

    #@107
    shl-long v9, v22, v11

    #@109
    or-long v9, v20, v9

    #@10b
    add-int/lit8 v3, v3, 0x1

    #@10d
    move-wide/from16 v20, v9

    #@10f
    :cond_10f
    :goto_10f
    add-int/lit8 v11, v11, 0x1

    #@111
    move/from16 v10, v24

    #@113
    move/from16 v9, v25

    #@115
    goto :goto_db

    #@116
    :cond_116
    move/from16 v25, v9

    #@118
    move/from16 v24, v10

    #@11a
    or-long v17, v17, v20

    #@11c
    if-le v3, v7, :cond_122

    #@11e
    move v11, v1

    #@11f
    move/from16 v26, v2

    #@121
    goto :goto_17e

    #@122
    :cond_122
    add-int/lit8 v12, v12, 0x1

    #@124
    const/4 v3, 0x0

    #@125
    :goto_125
    if-ge v3, v8, :cond_171

    #@127
    .line 292
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@12a
    move-result-object v9

    #@12b
    .line 293
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12e
    move-result-object v10

    #@12f
    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@131
    move/from16 v26, v2

    #@133
    const/4 v11, 0x1

    #@134
    shl-int v2, v11, v3

    #@136
    move v11, v1

    #@137
    int-to-long v1, v2

    #@138
    and-long v22, v20, v1

    #@13a
    const-wide/16 v27, 0x0

    #@13c
    cmp-long v22, v22, v27

    #@13e
    if-nez v22, :cond_149

    #@140
    .line 296
    iget v9, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@142
    if-ne v9, v12, :cond_146

    #@144
    or-long v17, v17, v1

    #@146
    :cond_146
    move/from16 v27, v5

    #@148
    goto :goto_169

    #@149
    :cond_149
    if-eqz v5, :cond_15d

    #@14b
    .line 300
    iget-boolean v1, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@14d
    if-eqz v1, :cond_15d

    #@14f
    const/4 v1, 0x1

    #@150
    if-ne v7, v1, :cond_15d

    #@152
    .line 302
    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    #@154
    add-int v1, v2, v4

    #@156
    move/from16 v27, v5

    #@158
    const/4 v5, 0x0

    #@159
    invoke-virtual {v9, v1, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    #@15c
    goto :goto_15f

    #@15d
    :cond_15d
    move/from16 v27, v5

    #@15f
    .line 304
    :goto_15f
    iget v1, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@161
    const/4 v2, 0x1

    #@162
    add-int/2addr v1, v2

    #@163
    iput v1, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@165
    .line 305
    iput-boolean v2, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@167
    add-int/lit8 v7, v7, -0x1

    #@169
    :goto_169
    add-int/lit8 v3, v3, 0x1

    #@16b
    move v1, v11

    #@16c
    move/from16 v2, v26

    #@16e
    move/from16 v5, v27

    #@170
    goto :goto_125

    #@171
    :cond_171
    move/from16 v10, v24

    #@173
    const/4 v3, 0x2

    #@174
    const/4 v9, 0x1

    #@175
    goto/16 :goto_ce

    #@177
    :cond_177
    move v11, v1

    #@178
    move/from16 v26, v2

    #@17a
    move/from16 v25, v9

    #@17c
    move/from16 v24, v10

    #@17e
    :goto_17e
    const/4 v1, 0x1

    #@17f
    if-nez v13, :cond_185

    #@181
    if-ne v14, v1, :cond_185

    #@183
    move v2, v1

    #@184
    goto :goto_186

    #@185
    :cond_185
    const/4 v2, 0x0

    #@186
    :goto_186
    if-lez v7, :cond_23b

    #@188
    const-wide/16 v9, 0x0

    #@18a
    cmp-long v3, v17, v9

    #@18c
    if-eqz v3, :cond_23b

    #@18e
    sub-int/2addr v14, v1

    #@18f
    if-lt v7, v14, :cond_195

    #@191
    if-nez v2, :cond_195

    #@193
    if-le v15, v1, :cond_23b

    #@195
    .line 318
    :cond_195
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    #@198
    move-result v1

    #@199
    int-to-float v1, v1

    #@19a
    if-nez v2, :cond_1d6

    #@19c
    const-wide/16 v2, 0x1

    #@19e
    and-long v2, v17, v2

    #@1a0
    const-wide/16 v9, 0x0

    #@1a2
    cmp-long v2, v2, v9

    #@1a4
    const/high16 v3, 0x3f000000    # 0.5f

    #@1a6
    const/4 v14, 0x0

    #@1a7
    if-eqz v2, :cond_1b8

    #@1a9
    .line 323
    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@1ac
    move-result-object v2

    #@1ad
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b0
    move-result-object v2

    #@1b1
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@1b3
    .line 324
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@1b5
    if-nez v2, :cond_1b8

    #@1b7
    sub-float/2addr v1, v3

    #@1b8
    :cond_1b8
    add-int/lit8 v2, v8, -0x1

    #@1ba
    const/4 v5, 0x1

    #@1bb
    shl-int v9, v5, v2

    #@1bd
    int-to-long v9, v9

    #@1be
    and-long v9, v17, v9

    #@1c0
    const-wide/16 v12, 0x0

    #@1c2
    cmp-long v5, v9, v12

    #@1c4
    if-eqz v5, :cond_1d7

    #@1c6
    .line 327
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@1c9
    move-result-object v2

    #@1ca
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1cd
    move-result-object v2

    #@1ce
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@1d0
    .line 328
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@1d2
    if-nez v2, :cond_1d7

    #@1d4
    sub-float/2addr v1, v3

    #@1d5
    goto :goto_1d7

    #@1d6
    :cond_1d6
    const/4 v14, 0x0

    #@1d7
    :cond_1d7
    :goto_1d7
    const/4 v2, 0x0

    #@1d8
    cmpl-float v2, v1, v2

    #@1da
    if-lez v2, :cond_1e1

    #@1dc
    mul-int/2addr v7, v4

    #@1dd
    int-to-float v2, v7

    #@1de
    div-float/2addr v2, v1

    #@1df
    float-to-int v1, v2

    #@1e0
    goto :goto_1e2

    #@1e1
    :cond_1e1
    move v1, v14

    #@1e2
    :goto_1e2
    move v2, v14

    #@1e3
    move/from16 v9, v25

    #@1e5
    :goto_1e5
    if-ge v2, v8, :cond_23e

    #@1e7
    const/4 v3, 0x1

    #@1e8
    shl-int v5, v3, v2

    #@1ea
    int-to-long v12, v5

    #@1eb
    and-long v12, v17, v12

    #@1ed
    const-wide/16 v15, 0x0

    #@1ef
    cmp-long v3, v12, v15

    #@1f1
    if-nez v3, :cond_1f6

    #@1f3
    const/4 v3, 0x1

    #@1f4
    const/4 v7, 0x2

    #@1f5
    goto :goto_238

    #@1f6
    .line 338
    :cond_1f6
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@1f9
    move-result-object v3

    #@1fa
    .line 339
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1fd
    move-result-object v5

    #@1fe
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@200
    .line 340
    instance-of v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@202
    if-eqz v3, :cond_219

    #@204
    .line 342
    iput v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    #@206
    const/4 v3, 0x1

    #@207
    .line 343
    iput-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@209
    if-nez v2, :cond_215

    #@20b
    .line 344
    iget-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@20d
    if-nez v3, :cond_215

    #@20f
    neg-int v3, v1

    #@210
    const/4 v7, 0x2

    #@211
    .line 347
    div-int/2addr v3, v7

    #@212
    iput v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@214
    goto :goto_216

    #@215
    :cond_215
    const/4 v7, 0x2

    #@216
    :goto_216
    const/4 v3, 0x1

    #@217
    const/4 v9, 0x1

    #@218
    goto :goto_238

    #@219
    :cond_219
    const/4 v7, 0x2

    #@21a
    .line 350
    iget-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@21c
    if-eqz v3, :cond_229

    #@21e
    .line 351
    iput v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    #@220
    const/4 v3, 0x1

    #@221
    .line 352
    iput-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@223
    neg-int v9, v1

    #@224
    .line 353
    div-int/2addr v9, v7

    #@225
    iput v9, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@227
    move v9, v3

    #@228
    goto :goto_238

    #@229
    :cond_229
    const/4 v3, 0x1

    #@22a
    if-eqz v2, :cond_230

    #@22c
    .line 360
    div-int/lit8 v10, v1, 0x2

    #@22e
    iput v10, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@230
    :cond_230
    add-int/lit8 v10, v8, -0x1

    #@232
    if-eq v2, v10, :cond_238

    #@234
    .line 363
    div-int/lit8 v10, v1, 0x2

    #@236
    iput v10, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@238
    :cond_238
    :goto_238
    add-int/lit8 v2, v2, 0x1

    #@23a
    goto :goto_1e5

    #@23b
    :cond_23b
    const/4 v14, 0x0

    #@23c
    move/from16 v9, v25

    #@23e
    :cond_23e
    const/high16 v1, 0x40000000    # 2.0f

    #@240
    if-eqz v9, :cond_264

    #@242
    move v9, v14

    #@243
    :goto_243
    if-ge v9, v8, :cond_264

    #@245
    .line 374
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@248
    move-result-object v2

    #@249
    .line 375
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@24c
    move-result-object v3

    #@24d
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@24f
    .line 377
    iget-boolean v5, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@251
    if-nez v5, :cond_254

    #@253
    goto :goto_261

    #@254
    .line 379
    :cond_254
    iget v5, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@256
    mul-int/2addr v5, v4

    #@257
    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    #@259
    add-int/2addr v5, v3

    #@25a
    .line 380
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@25d
    move-result v3

    #@25e
    invoke-virtual {v2, v3, v6}, Landroid/view/View;->measure(II)V

    #@261
    :goto_261
    add-int/lit8 v9, v9, 0x1

    #@263
    goto :goto_243

    #@264
    :cond_264
    if-eq v11, v1, :cond_269

    #@266
    move/from16 v3, v24

    #@268
    goto :goto_26b

    #@269
    :cond_269
    move/from16 v3, v19

    #@26b
    :goto_26b
    move/from16 v2, v26

    #@26d
    .line 389
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    #@270
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    #@0
    .line 610
    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@2
    return p1
.end method

.method public dismissPopupMenus()V
    .registers 2

    #@0
    .line 723
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 724
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@7
    :cond_7
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .registers 3

    #@0
    .line 583
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    #@6
    const/16 v1, 0x10

    #@8
    .line 585
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    #@a
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    #@0
    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .registers 4

    #@0
    .line 591
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .registers 3

    #@0
    if-eqz p1, :cond_1c

    #@2
    .line 597
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 598
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@8
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@a
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    #@d
    goto :goto_13

    #@e
    .line 599
    :cond_e
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@10
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@13
    .line 600
    :goto_13
    iget p1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    #@15
    if-gtz p1, :cond_1b

    #@17
    const/16 p1, 0x10

    #@19
    .line 601
    iput p1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    #@1b
    :cond_1b
    return-object v0

    #@1c
    .line 605
    :cond_1c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@1f
    move-result-object p1

    #@20
    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    #@0
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    #@0
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .registers 3

    #@0
    .line 616
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 617
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@7
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    #@0
    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    if-nez v0, :cond_3f

    #@4
    .line 652
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 653
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    #@a
    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@f
    .line 654
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    #@11
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    #@14
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    #@17
    .line 655
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    #@19
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    #@1c
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 656
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    #@22
    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@24
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@26
    if-eqz v1, :cond_29

    #@28
    goto :goto_2e

    #@29
    .line 658
    :cond_29
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    #@2b
    invoke-direct {v1}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    #@2e
    .line 657
    :goto_2e
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@31
    .line 659
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@33
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@35
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    #@37
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@3a
    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@3c
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    #@3f
    .line 663
    :cond_3f
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@41
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 565
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@3
    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    #@0
    .line 116
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    #@2
    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    add-int/lit8 v1, p1, -0x1

    #@6
    .line 736
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    .line 737
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v2

    #@e
    .line 739
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    #@11
    move-result v3

    #@12
    if-ge p1, v3, :cond_1f

    #@14
    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    #@16
    if-eqz v3, :cond_1f

    #@18
    .line 740
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    #@1a
    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    #@1d
    move-result v1

    #@1e
    or-int/2addr v0, v1

    #@1f
    :cond_1f
    if-lez p1, :cond_2c

    #@21
    .line 742
    instance-of p1, v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    #@23
    if-eqz p1, :cond_2c

    #@25
    .line 743
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    #@27
    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    #@2a
    move-result p1

    #@2b
    or-int/2addr v0, p1

    #@2c
    :cond_2c
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    #@0
    .line 700
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    #@0
    .line 639
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 4

    #@0
    .line 625
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@6
    move-result p1

    #@7
    return p1
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    #@0
    .line 716
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    #@0
    .line 710
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    #@0
    .line 572
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    #@2
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    .line 131
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 133
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@5
    if-eqz p1, :cond_1d

    #@7
    const/4 v0, 0x0

    #@8
    .line 134
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    #@b
    .line 136
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@d
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@10
    move-result p1

    #@11
    if-eqz p1, :cond_1d

    #@13
    .line 137
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@15
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@18
    .line 138
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@1a
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@1d
    :cond_1d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    #@0
    .line 544
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    #@3
    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    #@6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    .line 442
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    #@4
    if-nez v1, :cond_a

    #@6
    .line 443
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    #@9
    return-void

    #@a
    .line 447
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    #@d
    move-result v1

    #@e
    sub-int v2, p5, p3

    #@10
    .line 448
    div-int/lit8 v2, v2, 0x2

    #@12
    .line 449
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    #@15
    move-result v3

    #@16
    sub-int v4, p4, p2

    #@18
    .line 452
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    #@1b
    move-result v5

    #@1c
    sub-int v5, v4, v5

    #@1e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    #@21
    move-result v6

    #@22
    sub-int/2addr v5, v6

    #@23
    .line 454
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@26
    move-result v6

    #@27
    const/4 v8, 0x0

    #@28
    const/4 v9, 0x0

    #@29
    const/4 v10, 0x0

    #@2a
    :goto_2a
    const/16 v11, 0x8

    #@2c
    const/4 v12, 0x1

    #@2d
    if-ge v8, v1, :cond_8d

    #@2f
    .line 456
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@32
    move-result-object v13

    #@33
    .line 457
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@36
    move-result v14

    #@37
    if-ne v14, v11, :cond_3a

    #@39
    goto :goto_8a

    #@3a
    .line 461
    :cond_3a
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3d
    move-result-object v11

    #@3e
    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@40
    .line 462
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@42
    if-eqz v14, :cond_7a

    #@44
    .line 463
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@47
    move-result v9

    #@48
    .line 464
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    #@4b
    move-result v14

    #@4c
    if-eqz v14, :cond_4f

    #@4e
    add-int/2addr v9, v3

    #@4f
    .line 467
    :cond_4f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@52
    move-result v14

    #@53
    if-eqz v6, :cond_5f

    #@55
    .line 471
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    #@58
    move-result v15

    #@59
    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@5b
    add-int/2addr v15, v11

    #@5c
    add-int v11, v15, v9

    #@5e
    goto :goto_6f

    #@5f
    .line 474
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    #@62
    move-result v15

    #@63
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    #@66
    move-result v16

    #@67
    sub-int v15, v15, v16

    #@69
    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@6b
    sub-int v11, v15, v11

    #@6d
    sub-int v15, v11, v9

    #@6f
    .line 477
    :goto_6f
    div-int/lit8 v16, v14, 0x2

    #@71
    sub-int v7, v2, v16

    #@73
    add-int/2addr v14, v7

    #@74
    .line 479
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    #@77
    sub-int/2addr v5, v9

    #@78
    move v9, v12

    #@79
    goto :goto_8a

    #@7a
    .line 484
    :cond_7a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@7d
    move-result v7

    #@7e
    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@80
    add-int/2addr v7, v12

    #@81
    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@83
    add-int/2addr v7, v11

    #@84
    sub-int/2addr v5, v7

    #@85
    .line 486
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    #@88
    add-int/lit8 v10, v10, 0x1

    #@8a
    :goto_8a
    add-int/lit8 v8, v8, 0x1

    #@8c
    goto :goto_2a

    #@8d
    :cond_8d
    if-ne v1, v12, :cond_ac

    #@8f
    if-nez v9, :cond_ac

    #@91
    const/4 v3, 0x0

    #@92
    .line 494
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@95
    move-result-object v1

    #@96
    .line 495
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@99
    move-result v3

    #@9a
    .line 496
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@9d
    move-result v5

    #@9e
    .line 497
    div-int/lit8 v4, v4, 0x2

    #@a0
    .line 498
    div-int/lit8 v6, v3, 0x2

    #@a2
    sub-int/2addr v4, v6

    #@a3
    .line 499
    div-int/lit8 v6, v5, 0x2

    #@a5
    sub-int/2addr v2, v6

    #@a6
    add-int/2addr v3, v4

    #@a7
    add-int/2addr v5, v2

    #@a8
    .line 500
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    #@ab
    return-void

    #@ac
    :cond_ac
    xor-int/lit8 v3, v9, 0x1

    #@ae
    sub-int/2addr v10, v3

    #@af
    if-lez v10, :cond_b4

    #@b1
    .line 505
    div-int v3, v5, v10

    #@b3
    goto :goto_b5

    #@b4
    :cond_b4
    const/4 v3, 0x0

    #@b5
    :goto_b5
    const/4 v4, 0x0

    #@b6
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@b9
    move-result v3

    #@ba
    if-eqz v6, :cond_fa

    #@bc
    .line 508
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    #@bf
    move-result v5

    #@c0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    #@c3
    move-result v6

    #@c4
    sub-int/2addr v5, v6

    #@c5
    move v7, v4

    #@c6
    :goto_c6
    if-ge v7, v1, :cond_133

    #@c8
    .line 510
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@cb
    move-result-object v4

    #@cc
    .line 511
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@cf
    move-result-object v6

    #@d0
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@d2
    .line 512
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@d5
    move-result v8

    #@d6
    if-eq v8, v11, :cond_f7

    #@d8
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@da
    if-eqz v8, :cond_dd

    #@dc
    goto :goto_f7

    #@dd
    .line 516
    :cond_dd
    iget v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@df
    sub-int/2addr v5, v8

    #@e0
    .line 517
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@e3
    move-result v8

    #@e4
    .line 518
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@e7
    move-result v9

    #@e8
    .line 519
    div-int/lit8 v10, v9, 0x2

    #@ea
    sub-int v10, v2, v10

    #@ec
    sub-int v12, v5, v8

    #@ee
    add-int/2addr v9, v10

    #@ef
    .line 520
    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    #@f2
    .line 521
    iget v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@f4
    add-int/2addr v8, v4

    #@f5
    add-int/2addr v8, v3

    #@f6
    sub-int/2addr v5, v8

    #@f7
    :cond_f7
    :goto_f7
    add-int/lit8 v7, v7, 0x1

    #@f9
    goto :goto_c6

    #@fa
    .line 524
    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    #@fd
    move-result v5

    #@fe
    move v7, v4

    #@ff
    :goto_ff
    if-ge v7, v1, :cond_133

    #@101
    .line 526
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@104
    move-result-object v4

    #@105
    .line 527
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@108
    move-result-object v6

    #@109
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@10b
    .line 528
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@10e
    move-result v8

    #@10f
    if-eq v8, v11, :cond_130

    #@111
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@113
    if-eqz v8, :cond_116

    #@115
    goto :goto_130

    #@116
    .line 532
    :cond_116
    iget v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@118
    add-int/2addr v5, v8

    #@119
    .line 533
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@11c
    move-result v8

    #@11d
    .line 534
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@120
    move-result v9

    #@121
    .line 535
    div-int/lit8 v10, v9, 0x2

    #@123
    sub-int v10, v2, v10

    #@125
    add-int v12, v5, v8

    #@127
    add-int/2addr v9, v10

    #@128
    .line 536
    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    #@12b
    .line 537
    iget v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@12d
    add-int/2addr v8, v4

    #@12e
    add-int/2addr v8, v3

    #@12f
    add-int/2addr v5, v8

    #@130
    :cond_130
    :goto_130
    add-int/lit8 v7, v7, 0x1

    #@132
    goto :goto_ff

    #@133
    :cond_133
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    #@0
    .line 150
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    #@2
    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@5
    move-result v1

    #@6
    const/high16 v2, 0x40000000    # 2.0f

    #@8
    const/4 v3, 0x1

    #@9
    const/4 v4, 0x0

    #@a
    if-ne v1, v2, :cond_e

    #@c
    move v1, v3

    #@d
    goto :goto_f

    #@e
    :cond_e
    move v1, v4

    #@f
    :goto_f
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    #@11
    if-eq v0, v1, :cond_15

    #@13
    .line 154
    iput v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    #@15
    .line 159
    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@18
    move-result v0

    #@19
    .line 160
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    #@1b
    if-eqz v1, :cond_2a

    #@1d
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1f
    if-eqz v1, :cond_2a

    #@21
    iget v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    #@23
    if-eq v0, v2, :cond_2a

    #@25
    .line 161
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    #@27
    .line 162
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@2a
    .line 165
    :cond_2a
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    #@2d
    move-result v0

    #@2e
    .line 166
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    #@30
    if-eqz v1, :cond_38

    #@32
    if-lez v0, :cond_38

    #@34
    .line 167
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasureExactFormat(II)V

    #@37
    goto :goto_4f

    #@38
    :cond_38
    move v1, v4

    #@39
    :goto_39
    if-ge v1, v0, :cond_4c

    #@3b
    .line 171
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@3e
    move-result-object v2

    #@3f
    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    #@45
    .line 173
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@47
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@49
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_39

    #@4c
    .line 175
    :cond_4c
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    #@4f
    :goto_4f
    return-void
.end method

.method public peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 2

    #@0
    .line 682
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3

    #@0
    .line 756
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@5
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 3

    #@0
    .line 672
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    #@2
    .line 673
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    #@4
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2

    #@0
    .line 144
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    #@2
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 554
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@3
    .line 555
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    #@8
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    #@0
    .line 578
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    #@2
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    #@0
    .line 100
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    #@2
    if-eq v0, p1, :cond_1a

    #@4
    .line 101
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    #@6
    if-nez p1, :cond_f

    #@8
    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    #@e
    goto :goto_1a

    #@f
    .line 105
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@11
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@18
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    #@1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .registers 2

    #@0
    .line 125
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    .line 126
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    #@5
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    #@0
    .line 691
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method
