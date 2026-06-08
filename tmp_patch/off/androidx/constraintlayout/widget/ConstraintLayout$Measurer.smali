.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "l"
        }
    .end annotation

    #@0
    .line 637
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 638
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@7
    return-void
.end method

.method private isSimilarSpec(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lastMeasureSpec",
            "spec",
            "widgetSize"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, p2, :cond_4

    #@3
    return v0

    #@4
    .line 909
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v1

    #@8
    .line 910
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    .line 911
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@e
    move-result p1

    #@f
    .line 912
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@12
    move-result p2

    #@13
    const/high16 v2, 0x40000000    # 2.0f

    #@15
    if-ne p1, v2, :cond_20

    #@17
    const/high16 p1, -0x80000000

    #@19
    if-eq v1, p1, :cond_1d

    #@1b
    if-nez v1, :cond_20

    #@1d
    :cond_1d
    if-ne p3, p2, :cond_20

    #@1f
    return v0

    #@20
    :cond_20
    const/4 p1, 0x0

    #@21
    return p1
.end method


# virtual methods
.method public captureLayoutInfo(IIIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthSpec",
            "heightSpec",
            "top",
            "bottom",
            "width",
            "height"
        }
    .end annotation

    #@0
    .line 629
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    #@2
    .line 630
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    #@4
    .line 631
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    #@6
    .line 632
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    #@8
    .line 633
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    #@a
    .line 634
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    #@c
    return-void
.end method

.method public final didMeasures()V
    .registers 6

    #@0
    .line 923
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_1e

    #@a
    .line 925
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@c
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v3

    #@10
    .line 926
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    #@12
    if-eqz v4, :cond_1b

    #@14
    .line 927
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    #@16
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@18
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@1b
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_8

    #@1e
    .line 931
    :cond_1e
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@20
    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v0

    #@28
    if-lez v0, :cond_40

    #@2a
    :goto_2a
    if-ge v1, v0, :cond_40

    #@2c
    .line 934
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@2e
    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@38
    .line 935
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@3a
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@3d
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_2a

    #@40
    :cond_40
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widget",
            "measure"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v2, p2

    #@6
    if-nez v1, :cond_9

    #@8
    return-void

    #@9
    .line 648
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@c
    move-result v3

    #@d
    const/16 v4, 0x8

    #@f
    const/4 v5, 0x0

    #@10
    if-ne v3, v4, :cond_1f

    #@12
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInPlaceholder()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1f

    #@18
    .line 649
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    #@1a
    .line 650
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    #@1c
    .line 651
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    #@1e
    return-void

    #@1f
    .line 654
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@22
    move-result-object v3

    #@23
    if-nez v3, :cond_26

    #@25
    return-void

    #@26
    .line 665
    :cond_26
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28
    .line 666
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2a
    .line 668
    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    #@2c
    .line 669
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    #@2e
    .line 674
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    #@30
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    #@32
    add-int/2addr v8, v9

    #@33
    .line 675
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    #@35
    .line 677
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    #@38
    move-result-object v10

    #@39
    check-cast v10, Landroid/view/View;

    #@3b
    .line 679
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    #@3d
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    #@40
    move-result v12

    #@41
    aget v11, v11, v12

    #@43
    const/4 v12, 0x4

    #@44
    const/4 v13, 0x3

    #@45
    const/4 v14, 0x2

    #@46
    const/4 v5, -0x2

    #@47
    const/4 v15, 0x1

    #@48
    if-eq v11, v15, :cond_b4

    #@4a
    if-eq v11, v14, :cond_ad

    #@4c
    if-eq v11, v13, :cond_a0

    #@4e
    if-eq v11, v12, :cond_53

    #@50
    const/4 v6, 0x0

    #@51
    goto/16 :goto_ba

    #@53
    .line 695
    :cond_53
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    #@55
    invoke-static {v6, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@58
    move-result v6

    #@59
    .line 696
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@5b
    if-ne v9, v15, :cond_5f

    #@5d
    move v9, v15

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    const/4 v9, 0x0

    #@60
    .line 697
    :goto_60
    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@62
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    #@64
    if-eq v11, v12, :cond_6c

    #@66
    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@68
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    #@6a
    if-ne v11, v12, :cond_ba

    #@6c
    .line 703
    :cond_6c
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    #@6f
    move-result v11

    #@70
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@73
    move-result v12

    #@74
    if-ne v11, v12, :cond_78

    #@76
    move v11, v15

    #@77
    goto :goto_79

    #@78
    :cond_78
    const/4 v11, 0x0

    #@79
    .line 704
    :goto_79
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@7b
    sget v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    #@7d
    if-eq v12, v13, :cond_92

    #@7f
    if-eqz v9, :cond_92

    #@81
    if-eqz v9, :cond_85

    #@83
    if-nez v11, :cond_92

    #@85
    :cond_85
    instance-of v9, v10, Landroidx/constraintlayout/widget/Placeholder;

    #@87
    if-nez v9, :cond_92

    #@89
    .line 708
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    #@8c
    move-result v9

    #@8d
    if-eqz v9, :cond_90

    #@8f
    goto :goto_92

    #@90
    :cond_90
    const/4 v9, 0x0

    #@91
    goto :goto_93

    #@92
    :cond_92
    :goto_92
    move v9, v15

    #@93
    :goto_93
    if-eqz v9, :cond_ba

    #@95
    .line 710
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@98
    move-result v6

    #@99
    const/high16 v9, 0x40000000    # 2.0f

    #@9b
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@9e
    move-result v6

    #@9f
    goto :goto_ba

    #@a0
    .line 690
    :cond_a0
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    #@a2
    .line 691
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalMargin()I

    #@a5
    move-result v11

    #@a6
    add-int/2addr v9, v11

    #@a7
    const/4 v11, -0x1

    #@a8
    .line 690
    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@ab
    move-result v6

    #@ac
    goto :goto_ba

    #@ad
    .line 685
    :cond_ad
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    #@af
    invoke-static {v6, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@b2
    move-result v6

    #@b3
    goto :goto_ba

    #@b4
    :cond_b4
    const/high16 v9, 0x40000000    # 2.0f

    #@b6
    .line 681
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@b9
    move-result v6

    #@ba
    .line 717
    :cond_ba
    :goto_ba
    sget-object v9, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    #@bc
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    #@bf
    move-result v11

    #@c0
    aget v9, v9, v11

    #@c2
    if-eq v9, v15, :cond_130

    #@c4
    if-eq v9, v14, :cond_129

    #@c6
    const/4 v7, 0x3

    #@c7
    if-eq v9, v7, :cond_11c

    #@c9
    const/4 v7, 0x4

    #@ca
    if-eq v9, v7, :cond_cf

    #@cc
    const/4 v5, 0x0

    #@cd
    goto/16 :goto_137

    #@cf
    .line 734
    :cond_cf
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    #@d1
    invoke-static {v7, v8, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@d4
    move-result v5

    #@d5
    .line 736
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@d7
    if-ne v7, v15, :cond_db

    #@d9
    move v7, v15

    #@da
    goto :goto_dc

    #@db
    :cond_db
    const/4 v7, 0x0

    #@dc
    .line 737
    :goto_dc
    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@de
    sget v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    #@e0
    if-eq v8, v9, :cond_e8

    #@e2
    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@e4
    sget v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    #@e6
    if-ne v8, v9, :cond_137

    #@e8
    .line 743
    :cond_e8
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    #@eb
    move-result v8

    #@ec
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@ef
    move-result v9

    #@f0
    if-ne v8, v9, :cond_f4

    #@f2
    move v8, v15

    #@f3
    goto :goto_f5

    #@f4
    :cond_f4
    const/4 v8, 0x0

    #@f5
    .line 744
    :goto_f5
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@f7
    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    #@f9
    if-eq v9, v11, :cond_10e

    #@fb
    if-eqz v7, :cond_10e

    #@fd
    if-eqz v7, :cond_101

    #@ff
    if-nez v8, :cond_10e

    #@101
    :cond_101
    instance-of v7, v10, Landroidx/constraintlayout/widget/Placeholder;

    #@103
    if-nez v7, :cond_10e

    #@105
    .line 748
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    #@108
    move-result v7

    #@109
    if-eqz v7, :cond_10c

    #@10b
    goto :goto_10e

    #@10c
    :cond_10c
    const/4 v7, 0x0

    #@10d
    goto :goto_10f

    #@10e
    :cond_10e
    :goto_10e
    move v7, v15

    #@10f
    :goto_10f
    if-eqz v7, :cond_137

    #@111
    .line 750
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@114
    move-result v5

    #@115
    const/high16 v7, 0x40000000    # 2.0f

    #@117
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@11a
    move-result v5

    #@11b
    goto :goto_137

    #@11c
    .line 729
    :cond_11c
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    #@11e
    .line 730
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalMargin()I

    #@121
    move-result v7

    #@122
    add-int/2addr v8, v7

    #@123
    const/4 v7, -0x1

    #@124
    .line 729
    invoke-static {v5, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@127
    move-result v5

    #@128
    goto :goto_137

    #@129
    .line 723
    :cond_129
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    #@12b
    invoke-static {v7, v8, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@12e
    move-result v5

    #@12f
    goto :goto_137

    #@130
    :cond_130
    const/high16 v5, 0x40000000    # 2.0f

    #@132
    .line 719
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@135
    move-result v7

    #@136
    move v5, v7

    #@137
    .line 757
    :cond_137
    :goto_137
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@13a
    move-result-object v7

    #@13b
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@13d
    if-eqz v7, :cond_1b9

    #@13f
    .line 758
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@141
    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I
    invoke-static {v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    #@144
    move-result v8

    #@145
    const/16 v9, 0x100

    #@147
    invoke-static {v8, v9}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    #@14a
    move-result v8

    #@14b
    if-eqz v8, :cond_1b9

    #@14d
    .line 759
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    #@150
    move-result v8

    #@151
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@154
    move-result v9

    #@155
    if-ne v8, v9, :cond_1b9

    #@157
    .line 762
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    #@15a
    move-result v8

    #@15b
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@15e
    move-result v9

    #@15f
    if-ge v8, v9, :cond_1b9

    #@161
    .line 763
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    #@164
    move-result v8

    #@165
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@168
    move-result v9

    #@169
    if-ne v8, v9, :cond_1b9

    #@16b
    .line 764
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    #@16e
    move-result v8

    #@16f
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@172
    move-result v7

    #@173
    if-ge v8, v7, :cond_1b9

    #@175
    .line 765
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    #@178
    move-result v7

    #@179
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    #@17c
    move-result v8

    #@17d
    if-ne v7, v8, :cond_1b9

    #@17f
    .line 766
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@182
    move-result v7

    #@183
    if-nez v7, :cond_1b9

    #@185
    .line 768
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastHorizontalMeasureSpec()I

    #@188
    move-result v7

    #@189
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@18c
    move-result v8

    #@18d
    invoke-direct {v0, v7, v6, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    #@190
    move-result v7

    #@191
    if-eqz v7, :cond_1a3

    #@193
    .line 769
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastVerticalMeasureSpec()I

    #@196
    move-result v7

    #@197
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@19a
    move-result v8

    #@19b
    invoke-direct {v0, v7, v5, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    #@19e
    move-result v7

    #@19f
    if-eqz v7, :cond_1a3

    #@1a1
    move v7, v15

    #@1a2
    goto :goto_1a4

    #@1a3
    :cond_1a3
    const/4 v7, 0x0

    #@1a4
    :goto_1a4
    if-eqz v7, :cond_1b9

    #@1a6
    .line 771
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@1a9
    move-result v3

    #@1aa
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    #@1ac
    .line 772
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@1af
    move-result v3

    #@1b0
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    #@1b2
    .line 773
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    #@1b5
    move-result v1

    #@1b6
    iput v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    #@1b8
    return-void

    #@1b9
    .line 783
    :cond_1b9
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1bb
    if-ne v3, v7, :cond_1bf

    #@1bd
    move v7, v15

    #@1be
    goto :goto_1c0

    #@1bf
    :cond_1bf
    const/4 v7, 0x0

    #@1c0
    .line 784
    :goto_1c0
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1c2
    if-ne v4, v8, :cond_1c6

    #@1c4
    move v8, v15

    #@1c5
    goto :goto_1c7

    #@1c6
    :cond_1c6
    const/4 v8, 0x0

    #@1c7
    .line 786
    :goto_1c7
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1c9
    if-eq v4, v9, :cond_1d2

    #@1cb
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1cd
    if-ne v4, v9, :cond_1d0

    #@1cf
    goto :goto_1d2

    #@1d0
    :cond_1d0
    const/4 v4, 0x0

    #@1d1
    goto :goto_1d3

    #@1d2
    :cond_1d2
    :goto_1d2
    move v4, v15

    #@1d3
    .line 788
    :goto_1d3
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1d5
    if-eq v3, v9, :cond_1de

    #@1d7
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1d9
    if-ne v3, v9, :cond_1dc

    #@1db
    goto :goto_1de

    #@1dc
    :cond_1dc
    const/4 v3, 0x0

    #@1dd
    goto :goto_1df

    #@1de
    :cond_1de
    :goto_1de
    move v3, v15

    #@1df
    :goto_1df
    const/4 v9, 0x0

    #@1e0
    if-eqz v7, :cond_1ea

    #@1e2
    .line 790
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@1e4
    cmpl-float v11, v11, v9

    #@1e6
    if-lez v11, :cond_1ea

    #@1e8
    move v11, v15

    #@1e9
    goto :goto_1eb

    #@1ea
    :cond_1ea
    const/4 v11, 0x0

    #@1eb
    :goto_1eb
    if-eqz v8, :cond_1f5

    #@1ed
    .line 791
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@1ef
    cmpl-float v9, v12, v9

    #@1f1
    if-lez v9, :cond_1f5

    #@1f3
    move v9, v15

    #@1f4
    goto :goto_1f6

    #@1f5
    :cond_1f5
    const/4 v9, 0x0

    #@1f6
    :goto_1f6
    if-nez v10, :cond_1f9

    #@1f8
    return-void

    #@1f9
    .line 796
    :cond_1f9
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1fc
    move-result-object v12

    #@1fd
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@1ff
    .line 802
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@201
    sget v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    #@203
    if-eq v13, v14, :cond_21e

    #@205
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@207
    sget v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    #@209
    if-eq v13, v14, :cond_21e

    #@20b
    if-eqz v7, :cond_21e

    #@20d
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@20f
    if-nez v7, :cond_21e

    #@211
    if-eqz v8, :cond_21e

    #@213
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@215
    if-eqz v7, :cond_218

    #@217
    goto :goto_21e

    #@218
    :cond_218
    const/4 v0, -0x1

    #@219
    const/4 v13, 0x0

    #@21a
    const/4 v14, 0x0

    #@21b
    const/4 v15, 0x0

    #@21c
    goto/16 :goto_2c1

    #@21e
    .line 807
    :cond_21e
    :goto_21e
    instance-of v7, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    #@220
    if-eqz v7, :cond_230

    #@222
    instance-of v7, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@224
    if-eqz v7, :cond_230

    #@226
    .line 808
    move-object v7, v1

    #@227
    check-cast v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@229
    .line 809
    move-object v8, v10

    #@22a
    check-cast v8, Landroidx/constraintlayout/widget/VirtualLayout;

    #@22c
    invoke-virtual {v8, v7, v6, v5}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    #@22f
    goto :goto_233

    #@230
    .line 811
    :cond_230
    invoke-virtual {v10, v6, v5}, Landroid/view/View;->measure(II)V

    #@233
    .line 813
    :goto_233
    invoke-virtual {v1, v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    #@236
    .line 815
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    #@239
    move-result v7

    #@23a
    .line 816
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    #@23d
    move-result v8

    #@23e
    .line 817
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    #@241
    move-result v13

    #@242
    .line 827
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@244
    if-lez v14, :cond_24d

    #@246
    .line 828
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@248
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    #@24b
    move-result v14

    #@24c
    goto :goto_24e

    #@24d
    :cond_24d
    move v14, v7

    #@24e
    .line 830
    :goto_24e
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@250
    if-lez v15, :cond_258

    #@252
    .line 831
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@254
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    #@257
    move-result v14

    #@258
    .line 833
    :cond_258
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@25a
    if-lez v15, :cond_265

    #@25c
    .line 834
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@25e
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    #@261
    move-result v15

    #@262
    move/from16 v16, v5

    #@264
    goto :goto_268

    #@265
    :cond_265
    move/from16 v16, v5

    #@267
    move v15, v8

    #@268
    .line 836
    :goto_268
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@26a
    if-lez v5, :cond_272

    #@26c
    .line 837
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@26e
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    #@271
    move-result v15

    #@272
    .line 840
    :cond_272
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@274
    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I
    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    #@277
    move-result v5

    #@278
    const/4 v0, 0x1

    #@279
    invoke-static {v5, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    #@27c
    move-result v5

    #@27d
    if-nez v5, :cond_296

    #@27f
    const/high16 v0, 0x3f000000    # 0.5f

    #@281
    if-eqz v11, :cond_28c

    #@283
    if-eqz v4, :cond_28c

    #@285
    .line 843
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@287
    int-to-float v4, v15

    #@288
    mul-float/2addr v4, v3

    #@289
    add-float/2addr v4, v0

    #@28a
    float-to-int v14, v4

    #@28b
    goto :goto_296

    #@28c
    :cond_28c
    if-eqz v9, :cond_296

    #@28e
    if-eqz v3, :cond_296

    #@290
    .line 846
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@292
    int-to-float v4, v14

    #@293
    div-float/2addr v4, v3

    #@294
    add-float/2addr v4, v0

    #@295
    float-to-int v15, v4

    #@296
    :cond_296
    :goto_296
    if-ne v7, v14, :cond_29d

    #@298
    if-eq v8, v15, :cond_29b

    #@29a
    goto :goto_29d

    #@29b
    :cond_29b
    :goto_29b
    const/4 v0, -0x1

    #@29c
    goto :goto_2c1

    #@29d
    :cond_29d
    :goto_29d
    const/high16 v0, 0x40000000    # 2.0f

    #@29f
    if-eq v7, v14, :cond_2a5

    #@2a1
    .line 853
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2a4
    move-result v6

    #@2a5
    :cond_2a5
    if-eq v8, v15, :cond_2ac

    #@2a7
    .line 856
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2aa
    move-result v5

    #@2ab
    goto :goto_2ae

    #@2ac
    :cond_2ac
    move/from16 v5, v16

    #@2ae
    .line 858
    :goto_2ae
    invoke-virtual {v10, v6, v5}, Landroid/view/View;->measure(II)V

    #@2b1
    .line 860
    invoke-virtual {v1, v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    #@2b4
    .line 861
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    #@2b7
    move-result v14

    #@2b8
    .line 862
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    #@2bb
    move-result v15

    #@2bc
    .line 863
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    #@2bf
    move-result v13

    #@2c0
    goto :goto_29b

    #@2c1
    :goto_2c1
    if-eq v13, v0, :cond_2c5

    #@2c3
    const/4 v0, 0x1

    #@2c4
    goto :goto_2c6

    #@2c5
    :cond_2c5
    const/4 v0, 0x0

    #@2c6
    .line 874
    :goto_2c6
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    #@2c8
    if-ne v14, v3, :cond_2d1

    #@2ca
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    #@2cc
    if-eq v15, v3, :cond_2cf

    #@2ce
    goto :goto_2d1

    #@2cf
    :cond_2cf
    const/4 v5, 0x0

    #@2d0
    goto :goto_2d2

    #@2d1
    :cond_2d1
    :goto_2d1
    const/4 v5, 0x1

    #@2d2
    :goto_2d2
    iput-boolean v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    #@2d4
    .line 876
    iget-boolean v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    #@2d6
    if-eqz v3, :cond_2d9

    #@2d8
    const/4 v0, 0x1

    #@2d9
    :cond_2d9
    if-eqz v0, :cond_2e7

    #@2db
    const/4 v3, -0x1

    #@2dc
    if-eq v13, v3, :cond_2e7

    #@2de
    .line 879
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    #@2e1
    move-result v1

    #@2e2
    if-eq v1, v13, :cond_2e7

    #@2e4
    const/4 v1, 0x1

    #@2e5
    .line 880
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    #@2e7
    .line 882
    :cond_2e7
    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    #@2e9
    .line 883
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    #@2eb
    .line 884
    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    #@2ed
    .line 885
    iput v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    #@2ef
    return-void
.end method
