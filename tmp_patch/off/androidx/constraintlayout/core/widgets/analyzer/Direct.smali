.class public Landroidx/constraintlayout/core/widgets/analyzer/Direct;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field private static final APPLY_MATCH_PARENT:Z = false

.field private static final DEBUG:Z = false

.field private static final EARLY_TERMINATION:Z = true

.field private static hcount:I

.field private static measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private static vcount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 46
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@7
    const/4 v0, 0x0

    #@8
    .line 49
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    #@a
    .line 50
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    #@c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .registers 7

    #@0
    .line 763
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3
    move-result-object p0

    #@4
    .line 764
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@7
    move-result-object v0

    #@8
    .line 765
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_15

    #@e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v1, 0x0

    #@16
    :goto_16
    if-eqz v1, :cond_1e

    #@18
    .line 766
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1b
    move-result-object v2

    #@1c
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1e
    :cond_1e
    if-eqz v1, :cond_26

    #@20
    .line 767
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@23
    move-result-object v1

    #@24
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@26
    .line 768
    :cond_26
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28
    const/4 v2, 0x0

    #@29
    const/4 v3, 0x0

    #@2a
    const/4 v4, 0x1

    #@2b
    if-eq p0, v1, :cond_60

    #@2d
    .line 769
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_60

    #@33
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@35
    if-eq p0, v1, :cond_60

    #@37
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@39
    if-ne p0, v1, :cond_4b

    #@3b
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@3d
    if-nez v1, :cond_4b

    #@3f
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@41
    cmpl-float v1, v1, v2

    #@43
    if-nez v1, :cond_4b

    #@45
    .line 775
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_60

    #@4b
    :cond_4b
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4d
    if-ne p0, v1, :cond_5e

    #@4f
    iget p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@51
    if-ne p0, v4, :cond_5e

    #@53
    .line 778
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@56
    move-result p0

    #@57
    invoke-virtual {p1, v3, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasResolvedTargets(II)Z

    #@5a
    move-result p0

    #@5b
    if-eqz p0, :cond_5e

    #@5d
    goto :goto_60

    #@5e
    :cond_5e
    move p0, v3

    #@5f
    goto :goto_61

    #@60
    :cond_60
    :goto_60
    move p0, v4

    #@61
    .line 779
    :goto_61
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@63
    if-eq v0, v1, :cond_98

    #@65
    .line 780
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    #@68
    move-result v1

    #@69
    if-nez v1, :cond_98

    #@6b
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@6d
    if-eq v0, v1, :cond_98

    #@6f
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@71
    if-ne v0, v1, :cond_83

    #@73
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@75
    if-nez v1, :cond_83

    #@77
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@79
    cmpl-float v1, v1, v2

    #@7b
    if-nez v1, :cond_83

    #@7d
    .line 786
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    #@80
    move-result v1

    #@81
    if-nez v1, :cond_98

    #@83
    :cond_83
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@85
    if-ne v0, v1, :cond_96

    #@87
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@89
    if-ne v0, v4, :cond_96

    #@8b
    .line 789
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@8e
    move-result v0

    #@8f
    invoke-virtual {p1, v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasResolvedTargets(II)Z

    #@92
    move-result v0

    #@93
    if-eqz v0, :cond_96

    #@95
    goto :goto_98

    #@96
    :cond_96
    move v0, v3

    #@97
    goto :goto_99

    #@98
    :cond_98
    :goto_98
    move v0, v4

    #@99
    .line 790
    :goto_99
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@9b
    cmpl-float p1, p1, v2

    #@9d
    if-lez p1, :cond_a4

    #@9f
    if-nez p0, :cond_a3

    #@a1
    if-eqz v0, :cond_a4

    #@a3
    :cond_a3
    return v4

    #@a4
    :cond_a4
    if-eqz p0, :cond_a9

    #@a6
    if-eqz v0, :cond_a9

    #@a8
    move v3, v4

    #@a9
    :cond_a9
    return v3
.end method

.method private static horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V
    .registers 20

    #@0
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p2

    #@4
    move/from16 v2, p3

    #@6
    .line 310
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isHorizontalSolvingPassDone()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_d

    #@c
    return-void

    #@d
    .line 316
    :cond_d
    sget v3, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    #@f
    const/4 v4, 0x1

    #@10
    add-int/2addr v3, v4

    #@11
    sput v3, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    #@13
    .line 321
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@15
    if-nez v3, :cond_2f

    #@17
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2f

    #@1d
    add-int/lit8 v3, p0, 0x1

    #@1f
    invoke-static {v3, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2f

    #@25
    .line 322
    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@27
    invoke-direct {v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@2a
    .line 323
    sget v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@2c
    invoke-static {v3, v0, v1, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@2f
    .line 326
    :cond_2f
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@31
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@34
    move-result-object v3

    #@35
    .line 327
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@37
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3a
    move-result-object v5

    #@3b
    .line 328
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@3e
    move-result v6

    #@3f
    .line 329
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@42
    move-result v7

    #@43
    .line 331
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@46
    move-result-object v8

    #@47
    const/4 v9, 0x0

    #@48
    const/16 v10, 0x8

    #@4a
    if-eqz v8, :cond_141

    #@4c
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_141

    #@52
    .line 332
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v3

    #@5a
    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v8

    #@5e
    if-eqz v8, :cond_141

    #@60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v8

    #@64
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@66
    .line 333
    iget-object v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@68
    add-int/lit8 v13, p0, 0x1

    #@6a
    .line 336
    invoke-static {v13, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@6d
    move-result v14

    #@6e
    .line 337
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@71
    move-result v15

    #@72
    if-eqz v15, :cond_80

    #@74
    if-eqz v14, :cond_80

    #@76
    .line 338
    new-instance v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@78
    invoke-direct {v15}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@7b
    .line 339
    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@7d
    invoke-static {v13, v12, v1, v15, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@80
    .line 342
    :cond_80
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@82
    if-ne v8, v11, :cond_94

    #@84
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@86
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@88
    if-eqz v11, :cond_94

    #@8a
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8c
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8e
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@91
    move-result v11

    #@92
    if-nez v11, :cond_a8

    #@94
    :cond_94
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@96
    if-ne v8, v11, :cond_aa

    #@98
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9a
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9c
    if-eqz v11, :cond_aa

    #@9e
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a0
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a2
    .line 343
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@a5
    move-result v11

    #@a6
    if-eqz v11, :cond_aa

    #@a8
    :cond_a8
    move v11, v4

    #@a9
    goto :goto_ab

    #@aa
    :cond_aa
    const/4 v11, 0x0

    #@ab
    .line 344
    :goto_ab
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ae
    move-result-object v15

    #@af
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b1
    if-ne v15, v4, :cond_f0

    #@b3
    if-eqz v14, :cond_b6

    #@b5
    goto :goto_f0

    #@b6
    .line 369
    :cond_b6
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b9
    move-result-object v4

    #@ba
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@bc
    if-ne v4, v8, :cond_f6

    #@be
    iget v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@c0
    if-ltz v4, :cond_f6

    #@c2
    iget v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@c4
    if-ltz v4, :cond_f6

    #@c6
    .line 371
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@c9
    move-result v4

    #@ca
    if-eq v4, v10, :cond_d8

    #@cc
    iget v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@ce
    if-nez v4, :cond_f6

    #@d0
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@d3
    move-result v4

    #@d4
    cmpl-float v4, v4, v9

    #@d6
    if-nez v4, :cond_f6

    #@d8
    .line 372
    :cond_d8
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@db
    move-result v4

    #@dc
    if-nez v4, :cond_f6

    #@de
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    #@e1
    move-result v4

    #@e2
    if-nez v4, :cond_f6

    #@e4
    if-eqz v11, :cond_f6

    #@e6
    .line 373
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@e9
    move-result v4

    #@ea
    if-nez v4, :cond_f6

    #@ec
    .line 374
    invoke-static {v13, v0, v1, v12, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    #@ef
    goto :goto_f6

    #@f0
    .line 346
    :cond_f0
    :goto_f0
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@f3
    move-result v4

    #@f4
    if-eqz v4, :cond_f9

    #@f6
    :cond_f6
    :goto_f6
    const/4 v4, 0x1

    #@f7
    goto/16 :goto_5a

    #@f9
    .line 353
    :cond_f9
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@fb
    if-ne v8, v4, :cond_116

    #@fd
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ff
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@101
    if-nez v4, :cond_116

    #@103
    .line 354
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@105
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@108
    move-result v4

    #@109
    add-int/2addr v4, v6

    #@10a
    .line 355
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@10d
    move-result v8

    #@10e
    add-int/2addr v8, v4

    #@10f
    .line 356
    invoke-virtual {v12, v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@112
    .line 357
    invoke-static {v13, v12, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@115
    goto :goto_f6

    #@116
    .line 358
    :cond_116
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@118
    if-ne v8, v4, :cond_135

    #@11a
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11c
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11e
    if-nez v4, :cond_135

    #@120
    .line 359
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@122
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@125
    move-result v4

    #@126
    sub-int v4, v6, v4

    #@128
    .line 360
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@12b
    move-result v8

    #@12c
    sub-int v8, v4, v8

    #@12e
    .line 361
    invoke-virtual {v12, v8, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@131
    .line 362
    invoke-static {v13, v12, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@134
    goto :goto_f6

    #@135
    :cond_135
    if-eqz v11, :cond_f6

    #@137
    .line 363
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@13a
    move-result v4

    #@13b
    if-nez v4, :cond_f6

    #@13d
    .line 364
    invoke-static {v13, v1, v12, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    #@140
    goto :goto_f6

    #@141
    .line 379
    :cond_141
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@143
    if-eqz v3, :cond_146

    #@145
    return-void

    #@146
    .line 382
    :cond_146
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@149
    move-result-object v3

    #@14a
    if-eqz v3, :cond_245

    #@14c
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@14f
    move-result v3

    #@150
    if-eqz v3, :cond_245

    #@152
    .line 383
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@155
    move-result-object v3

    #@156
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@159
    move-result-object v3

    #@15a
    :cond_15a
    :goto_15a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@15d
    move-result v4

    #@15e
    if-eqz v4, :cond_245

    #@160
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@163
    move-result-object v4

    #@164
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@166
    .line 384
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@168
    const/4 v6, 0x1

    #@169
    add-int/lit8 v8, p0, 0x1

    #@16b
    .line 385
    invoke-static {v8, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@16e
    move-result v11

    #@16f
    .line 386
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@172
    move-result v12

    #@173
    if-eqz v12, :cond_181

    #@175
    if-eqz v11, :cond_181

    #@177
    .line 387
    new-instance v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@179
    invoke-direct {v12}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@17c
    .line 388
    sget v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@17e
    invoke-static {v8, v5, v1, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@181
    .line 393
    :cond_181
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@183
    if-ne v4, v12, :cond_195

    #@185
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@187
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@189
    if-eqz v12, :cond_195

    #@18b
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18d
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18f
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@192
    move-result v12

    #@193
    if-nez v12, :cond_1a9

    #@195
    :cond_195
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@197
    if-ne v4, v12, :cond_1ab

    #@199
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19b
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19d
    if-eqz v12, :cond_1ab

    #@19f
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a1
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a3
    .line 394
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@1a6
    move-result v12

    #@1a7
    if-eqz v12, :cond_1ab

    #@1a9
    :cond_1a9
    move v12, v6

    #@1aa
    goto :goto_1ac

    #@1ab
    :cond_1ab
    const/4 v12, 0x0

    #@1ac
    .line 395
    :goto_1ac
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1af
    move-result-object v13

    #@1b0
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1b2
    if-ne v13, v14, :cond_1f2

    #@1b4
    if-eqz v11, :cond_1b7

    #@1b6
    goto :goto_1f2

    #@1b7
    .line 417
    :cond_1b7
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1ba
    move-result-object v4

    #@1bb
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1bd
    if-ne v4, v11, :cond_15a

    #@1bf
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@1c1
    if-ltz v4, :cond_15a

    #@1c3
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@1c5
    if-ltz v4, :cond_15a

    #@1c7
    .line 419
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@1ca
    move-result v4

    #@1cb
    if-eq v4, v10, :cond_1d9

    #@1cd
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@1cf
    if-nez v4, :cond_15a

    #@1d1
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@1d4
    move-result v4

    #@1d5
    cmpl-float v4, v4, v9

    #@1d7
    if-nez v4, :cond_15a

    #@1d9
    .line 420
    :cond_1d9
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@1dc
    move-result v4

    #@1dd
    if-nez v4, :cond_15a

    #@1df
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    #@1e2
    move-result v4

    #@1e3
    if-nez v4, :cond_15a

    #@1e5
    if-eqz v12, :cond_15a

    #@1e7
    .line 421
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@1ea
    move-result v4

    #@1eb
    if-nez v4, :cond_15a

    #@1ed
    .line 422
    invoke-static {v8, v0, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    #@1f0
    goto/16 :goto_15a

    #@1f2
    .line 397
    :cond_1f2
    :goto_1f2
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@1f5
    move-result v11

    #@1f6
    if-eqz v11, :cond_1fa

    #@1f8
    goto/16 :goto_15a

    #@1fa
    .line 404
    :cond_1fa
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1fc
    if-ne v4, v11, :cond_218

    #@1fe
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@200
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@202
    if-nez v11, :cond_218

    #@204
    .line 405
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@206
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@209
    move-result v4

    #@20a
    add-int/2addr v4, v7

    #@20b
    .line 406
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@20e
    move-result v11

    #@20f
    add-int/2addr v11, v4

    #@210
    .line 407
    invoke-virtual {v5, v4, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@213
    .line 408
    invoke-static {v8, v5, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@216
    goto/16 :goto_15a

    #@218
    .line 409
    :cond_218
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21a
    if-ne v4, v11, :cond_238

    #@21c
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21e
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@220
    if-nez v4, :cond_238

    #@222
    .line 410
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@224
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@227
    move-result v4

    #@228
    sub-int v4, v7, v4

    #@22a
    .line 411
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@22d
    move-result v11

    #@22e
    sub-int v11, v4, v11

    #@230
    .line 412
    invoke-virtual {v5, v11, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@233
    .line 413
    invoke-static {v8, v5, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@236
    goto/16 :goto_15a

    #@238
    :cond_238
    if-eqz v12, :cond_15a

    #@23a
    .line 414
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@23d
    move-result v4

    #@23e
    if-nez v4, :cond_15a

    #@240
    .line 415
    invoke-static {v8, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    #@243
    goto/16 :goto_15a

    #@245
    .line 427
    :cond_245
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->markHorizontalSolvingPassDone()V

    #@248
    return-void
.end method

.method public static ls(I)Ljava/lang/String;
    .registers 4

    #@0
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    :goto_6
    if-ge v1, p0, :cond_10

    #@8
    const-string v2, "  "

    #@a
    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_6

    #@10
    .line 297
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    const-string v2, "+-("

    #@14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    const-string v1, ") "

    #@1d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p0

    #@21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p0

    #@25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p0

    #@2c
    return-object p0
.end method

.method private static solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V
    .registers 6

    #@0
    .line 278
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    if-nez p3, :cond_e

    #@8
    add-int/lit8 p0, p0, 0x1

    #@a
    .line 280
    invoke-static {p0, p1, p2, p4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@d
    goto :goto_13

    #@e
    :cond_e
    add-int/lit8 p0, p0, 0x1

    #@10
    .line 282
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method public static solveChain(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;ZZZ)Z
    .registers 28

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p7, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-nez p2, :cond_d

    #@6
    .line 826
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_14

    #@c
    return v0

    #@d
    .line 830
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_14

    #@13
    return v0

    #@14
    .line 835
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@17
    move-result v1

    #@18
    .line 837
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getFirst()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b
    move-result-object v2

    #@1c
    .line 838
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getLast()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1f
    move-result-object v3

    #@20
    .line 839
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@23
    move-result-object v4

    #@24
    .line 840
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@27
    move-result-object v5

    #@28
    .line 841
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getHead()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2b
    move-result-object v6

    #@2c
    .line 847
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2e
    aget-object v7, v7, p3

    #@30
    .line 848
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@32
    add-int/lit8 v8, p3, 0x1

    #@34
    aget-object v3, v3, v8

    #@36
    .line 849
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@38
    if-eqz v9, :cond_238

    #@3a
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3c
    if-nez v9, :cond_40

    #@3e
    goto/16 :goto_238

    #@40
    .line 852
    :cond_40
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@42
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_238

    #@48
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4a
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@4d
    move-result v9

    #@4e
    if-nez v9, :cond_52

    #@50
    goto/16 :goto_238

    #@52
    :cond_52
    if-eqz v4, :cond_238

    #@54
    if-nez v5, :cond_58

    #@56
    goto/16 :goto_238

    #@58
    .line 860
    :cond_58
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5a
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@5d
    move-result v7

    #@5e
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@60
    aget-object v9, v9, p3

    #@62
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@65
    move-result v9

    #@66
    add-int/2addr v7, v9

    #@67
    .line 861
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@69
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@6c
    move-result v3

    #@6d
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6f
    aget-object v9, v9, v8

    #@71
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@74
    move-result v9

    #@75
    sub-int/2addr v3, v9

    #@76
    sub-int v9, v3, v7

    #@78
    if-gtz v9, :cond_7b

    #@7a
    return v0

    #@7b
    .line 868
    :cond_7b
    new-instance v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@7d
    invoke-direct {v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@80
    move v11, v0

    #@81
    move v12, v11

    #@82
    move v14, v12

    #@83
    move v15, v14

    #@84
    move-object v13, v2

    #@85
    :goto_85
    const/16 v17, 0x0

    #@87
    const/4 v0, 0x1

    #@88
    if-nez v11, :cond_10a

    #@8a
    .line 874
    invoke-static {v0, v13}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@8d
    move-result v18

    #@8e
    if-nez v18, :cond_93

    #@90
    const/16 v16, 0x0

    #@92
    return v16

    #@93
    :cond_93
    const/16 v16, 0x0

    #@95
    .line 878
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@97
    aget-object v0, v0, p2

    #@99
    move-object/from16 v18, v2

    #@9b
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9d
    if-ne v0, v2, :cond_a0

    #@9f
    return v16

    #@a0
    .line 882
    :cond_a0
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@a3
    move-result v0

    #@a4
    if-eqz v0, :cond_b3

    #@a6
    .line 883
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@a9
    move-result-object v0

    #@aa
    sget v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@ac
    move/from16 v19, v11

    #@ae
    const/4 v11, 0x1

    #@af
    invoke-static {v11, v13, v0, v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@b2
    goto :goto_b5

    #@b3
    :cond_b3
    move/from16 v19, v11

    #@b5
    .line 886
    :goto_b5
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b7
    aget-object v0, v0, p3

    #@b9
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@bc
    move-result v0

    #@bd
    add-int/2addr v15, v0

    #@be
    if-nez p2, :cond_c5

    #@c0
    .line 888
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@c3
    move-result v0

    #@c4
    goto :goto_c9

    #@c5
    .line 890
    :cond_c5
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@c8
    move-result v0

    #@c9
    :goto_c9
    add-int/2addr v15, v0

    #@ca
    .line 892
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@cc
    aget-object v0, v0, v8

    #@ce
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@d1
    move-result v0

    #@d2
    add-int/2addr v15, v0

    #@d3
    add-int/lit8 v14, v14, 0x1

    #@d5
    .line 895
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@d8
    move-result v0

    #@d9
    const/16 v2, 0x8

    #@db
    if-eq v0, v2, :cond_df

    #@dd
    add-int/lit8 v12, v12, 0x1

    #@df
    .line 901
    :cond_df
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e1
    aget-object v0, v0, v8

    #@e3
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e5
    if-eqz v0, :cond_fe

    #@e7
    .line 903
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e9
    .line 904
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@eb
    aget-object v2, v2, p3

    #@ed
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ef
    if-eqz v2, :cond_fe

    #@f1
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f3
    aget-object v2, v2, p3

    #@f5
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f7
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f9
    if-eq v2, v13, :cond_fc

    #@fb
    goto :goto_fe

    #@fc
    :cond_fc
    move-object/from16 v17, v0

    #@fe
    :cond_fe
    :goto_fe
    if-eqz v17, :cond_105

    #@100
    move-object/from16 v13, v17

    #@102
    move/from16 v11, v19

    #@104
    goto :goto_106

    #@105
    :cond_105
    const/4 v11, 0x1

    #@106
    :goto_106
    move-object/from16 v2, v18

    #@108
    goto/16 :goto_85

    #@10a
    :cond_10a
    move-object/from16 v18, v2

    #@10c
    if-nez v12, :cond_110

    #@10e
    const/4 v0, 0x0

    #@10f
    return v0

    #@110
    :cond_110
    const/4 v0, 0x0

    #@111
    if-eq v12, v14, :cond_114

    #@113
    return v0

    #@114
    :cond_114
    if-ge v9, v15, :cond_117

    #@116
    return v0

    #@117
    :cond_117
    sub-int/2addr v9, v15

    #@118
    const/4 v0, 0x2

    #@119
    if-eqz p5, :cond_120

    #@11b
    add-int/lit8 v2, v12, 0x1

    #@11d
    .line 932
    div-int/2addr v9, v2

    #@11e
    :cond_11e
    const/4 v2, 0x1

    #@11f
    goto :goto_127

    #@120
    :cond_120
    if-eqz p6, :cond_11e

    #@122
    if-le v12, v0, :cond_11e

    #@124
    .line 935
    div-int/2addr v9, v12

    #@125
    const/4 v2, 0x1

    #@126
    sub-int/2addr v9, v2

    #@127
    :goto_127
    if-ne v12, v2, :cond_158

    #@129
    if-nez p2, :cond_130

    #@12b
    .line 942
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    #@12e
    move-result v0

    #@12f
    goto :goto_134

    #@130
    .line 944
    :cond_130
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    #@133
    move-result v0

    #@134
    :goto_134
    const/high16 v2, 0x3f000000    # 0.5f

    #@136
    int-to-float v3, v7

    #@137
    add-float/2addr v3, v2

    #@138
    int-to-float v2, v9

    #@139
    mul-float/2addr v2, v0

    #@13a
    add-float/2addr v3, v2

    #@13b
    float-to-int v0, v3

    #@13c
    if-nez p2, :cond_147

    #@13e
    .line 948
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@141
    move-result v2

    #@142
    add-int/2addr v2, v0

    #@143
    invoke-virtual {v4, v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@146
    goto :goto_14f

    #@147
    .line 950
    :cond_147
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@14a
    move-result v2

    #@14b
    add-int/2addr v2, v0

    #@14c
    invoke-virtual {v4, v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@14f
    .line 952
    :goto_14f
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@152
    move-result-object v0

    #@153
    const/4 v2, 0x1

    #@154
    invoke-static {v2, v4, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@157
    return v2

    #@158
    :cond_158
    if-eqz p5, :cond_1ec

    #@15a
    add-int/2addr v7, v9

    #@15b
    move-object/from16 v0, v18

    #@15d
    const/4 v3, 0x0

    #@15e
    :goto_15e
    if-nez v3, :cond_237

    #@160
    .line 962
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@163
    move-result v4

    #@164
    const/16 v5, 0x8

    #@166
    if-ne v4, v5, :cond_183

    #@168
    if-nez p2, :cond_175

    #@16a
    .line 964
    invoke-virtual {v0, v7, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@16d
    .line 965
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@170
    move-result-object v4

    #@171
    invoke-static {v2, v0, v4, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@174
    goto :goto_17f

    #@175
    .line 967
    :cond_175
    invoke-virtual {v0, v7, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@178
    .line 968
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@17b
    move-result-object v4

    #@17c
    invoke-static {v2, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@17f
    :goto_17f
    move-object/from16 v2, p1

    #@181
    const/4 v4, 0x0

    #@182
    goto :goto_1c3

    #@183
    .line 971
    :cond_183
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@185
    aget-object v2, v2, p3

    #@187
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@18a
    move-result v2

    #@18b
    add-int/2addr v7, v2

    #@18c
    if-nez p2, :cond_1a3

    #@18e
    .line 973
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@191
    move-result v2

    #@192
    add-int/2addr v2, v7

    #@193
    invoke-virtual {v0, v7, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@196
    .line 974
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@199
    move-result-object v2

    #@19a
    const/4 v4, 0x1

    #@19b
    invoke-static {v4, v0, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@19e
    .line 975
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@1a1
    move-result v2

    #@1a2
    goto :goto_1b7

    #@1a3
    :cond_1a3
    const/4 v4, 0x1

    #@1a4
    .line 977
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@1a7
    move-result v2

    #@1a8
    add-int/2addr v2, v7

    #@1a9
    invoke-virtual {v0, v7, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@1ac
    .line 978
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@1af
    move-result-object v2

    #@1b0
    invoke-static {v4, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@1b3
    .line 979
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@1b6
    move-result v2

    #@1b7
    :goto_1b7
    add-int/2addr v7, v2

    #@1b8
    .line 981
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ba
    aget-object v2, v2, v8

    #@1bc
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@1bf
    move-result v2

    #@1c0
    add-int/2addr v7, v2

    #@1c1
    add-int/2addr v7, v9

    #@1c2
    goto :goto_17f

    #@1c3
    .line 985
    :goto_1c3
    invoke-virtual {v0, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@1c6
    .line 988
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c8
    aget-object v4, v4, v8

    #@1ca
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1cc
    if-eqz v4, :cond_1e2

    #@1ce
    .line 990
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d0
    .line 991
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d2
    aget-object v6, v6, p3

    #@1d4
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d6
    if-eqz v6, :cond_1e2

    #@1d8
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1da
    aget-object v6, v6, p3

    #@1dc
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1de
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1e0
    if-eq v6, v0, :cond_1e4

    #@1e2
    :cond_1e2
    move-object/from16 v4, v17

    #@1e4
    :cond_1e4
    if-eqz v4, :cond_1e8

    #@1e6
    move-object v0, v4

    #@1e7
    goto :goto_1e9

    #@1e8
    :cond_1e8
    const/4 v3, 0x1

    #@1e9
    :goto_1e9
    const/4 v2, 0x1

    #@1ea
    goto/16 :goto_15e

    #@1ec
    :cond_1ec
    if-eqz p6, :cond_236

    #@1ee
    if-ne v12, v0, :cond_234

    #@1f0
    if-nez p2, :cond_213

    #@1f2
    .line 1007
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@1f5
    move-result v0

    #@1f6
    add-int/2addr v0, v7

    #@1f7
    invoke-virtual {v4, v7, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@1fa
    .line 1008
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@1fd
    move-result v0

    #@1fe
    sub-int v0, v3, v0

    #@200
    invoke-virtual {v5, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@203
    .line 1009
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@206
    move-result-object v0

    #@207
    const/4 v2, 0x1

    #@208
    invoke-static {v2, v4, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@20b
    .line 1010
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@20e
    move-result-object v0

    #@20f
    invoke-static {v2, v5, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@212
    goto :goto_233

    #@213
    :cond_213
    const/4 v2, 0x1

    #@214
    .line 1012
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@217
    move-result v0

    #@218
    add-int/2addr v0, v7

    #@219
    invoke-virtual {v4, v7, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@21c
    .line 1013
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@21f
    move-result v0

    #@220
    sub-int v0, v3, v0

    #@222
    invoke-virtual {v5, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@225
    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@228
    move-result-object v0

    #@229
    invoke-static {v2, v4, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@22c
    .line 1015
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@22f
    move-result-object v0

    #@230
    invoke-static {v2, v5, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@233
    :goto_233
    return v2

    #@234
    :cond_234
    const/4 v0, 0x0

    #@235
    return v0

    #@236
    :cond_236
    const/4 v2, 0x1

    #@237
    :cond_237
    return v2

    #@238
    :cond_238
    :goto_238
    return v0
.end method

.method private static solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 10

    #@0
    .line 598
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    #@3
    move-result v0

    #@4
    .line 599
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@b
    move-result v1

    #@c
    .line 600
    iget-object v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@13
    move-result v2

    #@14
    .line 601
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@19
    move-result v3

    #@1a
    add-int/2addr v3, v1

    #@1b
    .line 602
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@20
    move-result v4

    #@21
    sub-int v4, v2, v4

    #@23
    const/high16 v5, 0x3f000000    # 0.5f

    #@25
    if-ne v1, v2, :cond_29

    #@27
    move v0, v5

    #@28
    goto :goto_2b

    #@29
    :cond_29
    move v1, v3

    #@2a
    move v2, v4

    #@2b
    .line 608
    :goto_2b
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@2e
    move-result v3

    #@2f
    sub-int v4, v2, v1

    #@31
    sub-int/2addr v4, v3

    #@32
    if-le v1, v2, :cond_37

    #@34
    sub-int v4, v1, v2

    #@36
    sub-int/2addr v4, v3

    #@37
    :cond_37
    if-lez v4, :cond_3d

    #@39
    int-to-float v4, v4

    #@3a
    mul-float/2addr v0, v4

    #@3b
    add-float/2addr v0, v5

    #@3c
    goto :goto_3f

    #@3d
    :cond_3d
    int-to-float v4, v4

    #@3e
    mul-float/2addr v0, v4

    #@3f
    :goto_3f
    float-to-int v0, v0

    #@40
    add-int/2addr v0, v1

    #@41
    add-int v4, v0, v3

    #@43
    if-le v1, v2, :cond_47

    #@45
    sub-int v4, v0, v3

    #@47
    .line 625
    :cond_47
    invoke-virtual {p2, v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@4a
    add-int/lit8 p0, p0, 0x1

    #@4c
    .line 626
    invoke-static {p0, p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@4f
    return-void
.end method

.method private static solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 12

    #@0
    .line 682
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    #@3
    move-result v0

    #@4
    .line 683
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@b
    move-result v1

    #@c
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    .line 684
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@1a
    move-result v2

    #@1b
    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@20
    move-result v3

    #@21
    sub-int/2addr v2, v3

    #@22
    if-lt v2, v1, :cond_77

    #@24
    .line 686
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@27
    move-result v3

    #@28
    .line 687
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@2b
    move-result v4

    #@2c
    const/16 v5, 0x8

    #@2e
    const/high16 v6, 0x3f000000    # 0.5f

    #@30
    if-eq v4, v5, :cond_67

    #@32
    .line 688
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@34
    const/4 v5, 0x2

    #@35
    if-ne v4, v5, :cond_51

    #@37
    .line 690
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@39
    if-eqz v3, :cond_40

    #@3b
    .line 691
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@3e
    move-result p1

    #@3f
    goto :goto_48

    #@40
    .line 693
    :cond_40
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@43
    move-result-object p1

    #@44
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@47
    move-result p1

    #@48
    .line 695
    :goto_48
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    #@4b
    move-result v3

    #@4c
    mul-float/2addr v3, v6

    #@4d
    int-to-float p1, p1

    #@4e
    mul-float/2addr v3, p1

    #@4f
    float-to-int v3, v3

    #@50
    goto :goto_57

    #@51
    .line 696
    :cond_51
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@53
    if-nez p1, :cond_57

    #@55
    sub-int v3, v2, v1

    #@57
    .line 699
    :cond_57
    :goto_57
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@59
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    #@5c
    move-result v3

    #@5d
    .line 700
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@5f
    if-lez p1, :cond_67

    #@61
    .line 701
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@63
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    #@66
    move-result v3

    #@67
    :cond_67
    sub-int/2addr v2, v1

    #@68
    sub-int/2addr v2, v3

    #@69
    int-to-float p1, v2

    #@6a
    mul-float/2addr v0, p1

    #@6b
    add-float/2addr v0, v6

    #@6c
    float-to-int p1, v0

    #@6d
    add-int/2addr v1, p1

    #@6e
    add-int/2addr v3, v1

    #@6f
    .line 708
    invoke-virtual {p3, v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    #@72
    add-int/lit8 p0, p0, 0x1

    #@74
    .line 709
    invoke-static {p0, p3, p2, p4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@77
    :cond_77
    return-void
.end method

.method private static solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 9

    #@0
    .line 640
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    #@3
    move-result v0

    #@4
    .line 641
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@b
    move-result v1

    #@c
    .line 642
    iget-object v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@13
    move-result v2

    #@14
    .line 643
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@19
    move-result v3

    #@1a
    add-int/2addr v3, v1

    #@1b
    .line 644
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@20
    move-result v4

    #@21
    sub-int v4, v2, v4

    #@23
    const/high16 v5, 0x3f000000    # 0.5f

    #@25
    if-ne v1, v2, :cond_29

    #@27
    move v0, v5

    #@28
    goto :goto_2b

    #@29
    :cond_29
    move v1, v3

    #@2a
    move v2, v4

    #@2b
    .line 650
    :goto_2b
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@2e
    move-result v3

    #@2f
    sub-int v4, v2, v1

    #@31
    sub-int/2addr v4, v3

    #@32
    if-le v1, v2, :cond_37

    #@34
    sub-int v4, v1, v2

    #@36
    sub-int/2addr v4, v3

    #@37
    :cond_37
    if-lez v4, :cond_3d

    #@39
    int-to-float v4, v4

    #@3a
    mul-float/2addr v0, v4

    #@3b
    add-float/2addr v0, v5

    #@3c
    goto :goto_3f

    #@3d
    :cond_3d
    int-to-float v4, v4

    #@3e
    mul-float/2addr v0, v4

    #@3f
    :goto_3f
    float-to-int v0, v0

    #@40
    add-int v4, v1, v0

    #@42
    add-int v5, v4, v3

    #@44
    if-le v1, v2, :cond_4a

    #@46
    sub-int v4, v1, v0

    #@48
    sub-int v5, v4, v3

    #@4a
    .line 667
    :cond_4a
    invoke-virtual {p2, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@4d
    add-int/lit8 p0, p0, 0x1

    #@4f
    .line 668
    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@52
    return-void
.end method

.method private static solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 11

    #@0
    .line 723
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    #@3
    move-result v0

    #@4
    .line 724
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@b
    move-result v1

    #@c
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    .line 725
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@1a
    move-result v2

    #@1b
    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@20
    move-result v3

    #@21
    sub-int/2addr v2, v3

    #@22
    if-lt v2, v1, :cond_74

    #@24
    .line 727
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@27
    move-result v3

    #@28
    .line 728
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@2b
    move-result v4

    #@2c
    const/16 v5, 0x8

    #@2e
    const/high16 v6, 0x3f000000    # 0.5f

    #@30
    if-eq v4, v5, :cond_64

    #@32
    .line 729
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@34
    const/4 v5, 0x2

    #@35
    if-ne v4, v5, :cond_4e

    #@37
    .line 731
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@39
    if-eqz v3, :cond_40

    #@3b
    .line 732
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@3e
    move-result p1

    #@3f
    goto :goto_48

    #@40
    .line 734
    :cond_40
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@43
    move-result-object p1

    #@44
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@47
    move-result p1

    #@48
    :goto_48
    mul-float v3, v0, v6

    #@4a
    int-to-float p1, p1

    #@4b
    mul-float/2addr v3, p1

    #@4c
    float-to-int v3, v3

    #@4d
    goto :goto_54

    #@4e
    .line 737
    :cond_4e
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@50
    if-nez p1, :cond_54

    #@52
    sub-int v3, v2, v1

    #@54
    .line 740
    :cond_54
    :goto_54
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@56
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    #@59
    move-result v3

    #@5a
    .line 741
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@5c
    if-lez p1, :cond_64

    #@5e
    .line 742
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@60
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    #@63
    move-result v3

    #@64
    :cond_64
    sub-int/2addr v2, v1

    #@65
    sub-int/2addr v2, v3

    #@66
    int-to-float p1, v2

    #@67
    mul-float/2addr v0, p1

    #@68
    add-float/2addr v0, v6

    #@69
    float-to-int p1, v0

    #@6a
    add-int/2addr v1, p1

    #@6b
    add-int/2addr v3, v1

    #@6c
    .line 749
    invoke-virtual {p3, v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@6f
    add-int/lit8 p0, p0, 0x1

    #@71
    .line 750
    invoke-static {p0, p3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@74
    :cond_74
    return-void
.end method

.method public static solvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .registers 15

    #@0
    .line 59
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3
    move-result-object v0

    #@4
    .line 60
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    .line 61
    sput v2, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    #@b
    .line 62
    sput v2, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    #@d
    .line 68
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetFinalResolution()V

    #@10
    .line 69
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@13
    move-result-object v3

    #@14
    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    move v5, v2

    #@19
    :goto_19
    if-ge v5, v4, :cond_27

    #@1b
    .line 75
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@21
    .line 76
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    #@24
    add-int/lit8 v5, v5, 0x1

    #@26
    goto :goto_19

    #@27
    .line 79
    :cond_27
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@2a
    move-result v5

    #@2b
    .line 86
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2d
    if-ne v0, v6, :cond_37

    #@2f
    .line 87
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@32
    move-result v0

    #@33
    invoke-virtual {p0, v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalHorizontal(II)V

    #@36
    goto :goto_3a

    #@37
    .line 89
    :cond_37
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalLeft(I)V

    #@3a
    :goto_3a
    move v0, v2

    #@3b
    move v6, v0

    #@3c
    move v7, v6

    #@3d
    :goto_3d
    const/high16 v8, 0x3f000000    # 0.5f

    #@3f
    const/4 v9, -0x1

    #@40
    const/4 v10, 0x1

    #@41
    if-ge v0, v4, :cond_a3

    #@43
    .line 100
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v11

    #@47
    check-cast v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@49
    .line 101
    instance-of v12, v11, Landroidx/constraintlayout/core/widgets/Guideline;

    #@4b
    if-eqz v12, :cond_93

    #@4d
    .line 102
    check-cast v11, Landroidx/constraintlayout/core/widgets/Guideline;

    #@4f
    .line 103
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@52
    move-result v12

    #@53
    if-ne v12, v10, :cond_a0

    #@55
    .line 104
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    #@58
    move-result v6

    #@59
    if-eq v6, v9, :cond_63

    #@5b
    .line 105
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    #@5e
    move-result v6

    #@5f
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    #@62
    goto :goto_91

    #@63
    .line 106
    :cond_63
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    #@66
    move-result v6

    #@67
    if-eq v6, v9, :cond_7c

    #@69
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    #@6c
    move-result v6

    #@6d
    if-eqz v6, :cond_7c

    #@6f
    .line 107
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@72
    move-result v6

    #@73
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    #@76
    move-result v8

    #@77
    sub-int/2addr v6, v8

    #@78
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    #@7b
    goto :goto_91

    #@7c
    .line 108
    :cond_7c
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_91

    #@82
    .line 109
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    #@85
    move-result v6

    #@86
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@89
    move-result v9

    #@8a
    int-to-float v9, v9

    #@8b
    mul-float/2addr v6, v9

    #@8c
    add-float/2addr v6, v8

    #@8d
    float-to-int v6, v6

    #@8e
    .line 110
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    #@91
    :cond_91
    :goto_91
    move v6, v10

    #@92
    goto :goto_a0

    #@93
    .line 114
    :cond_93
    instance-of v8, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    #@95
    if-eqz v8, :cond_a0

    #@97
    .line 115
    check-cast v11, Landroidx/constraintlayout/core/widgets/Barrier;

    #@99
    .line 116
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    #@9c
    move-result v8

    #@9d
    if-nez v8, :cond_a0

    #@9f
    move v7, v10

    #@a0
    :cond_a0
    :goto_a0
    add-int/lit8 v0, v0, 0x1

    #@a2
    goto :goto_3d

    #@a3
    :cond_a3
    if-eqz v6, :cond_c0

    #@a5
    move v0, v2

    #@a6
    :goto_a6
    if-ge v0, v4, :cond_c0

    #@a8
    .line 126
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ab
    move-result-object v6

    #@ac
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ae
    .line 127
    instance-of v11, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    #@b0
    if-eqz v11, :cond_bd

    #@b2
    .line 128
    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    #@b4
    .line 129
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@b7
    move-result v11

    #@b8
    if-ne v11, v10, :cond_bd

    #@ba
    .line 130
    invoke-static {v2, v6, p1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@bd
    :cond_bd
    add-int/lit8 v0, v0, 0x1

    #@bf
    goto :goto_a6

    #@c0
    .line 144
    :cond_c0
    invoke-static {v2, p0, p1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@c3
    if-eqz v7, :cond_e0

    #@c5
    move v0, v2

    #@c6
    :goto_c6
    if-ge v0, v4, :cond_e0

    #@c8
    .line 152
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@cb
    move-result-object v6

    #@cc
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ce
    .line 153
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    #@d0
    if-eqz v7, :cond_dd

    #@d2
    .line 154
    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    #@d4
    .line 155
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    #@d7
    move-result v7

    #@d8
    if-nez v7, :cond_dd

    #@da
    .line 156
    invoke-static {v2, v6, p1, v2, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    #@dd
    :cond_dd
    add-int/lit8 v0, v0, 0x1

    #@df
    goto :goto_c6

    #@e0
    .line 170
    :cond_e0
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@e2
    if-ne v1, v0, :cond_ec

    #@e4
    .line 171
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@e7
    move-result v0

    #@e8
    invoke-virtual {p0, v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalVertical(II)V

    #@eb
    goto :goto_ef

    #@ec
    .line 173
    :cond_ec
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalTop(I)V

    #@ef
    :goto_ef
    move v0, v2

    #@f0
    move v1, v0

    #@f1
    move v6, v1

    #@f2
    :goto_f2
    if-ge v0, v4, :cond_154

    #@f4
    .line 180
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f7
    move-result-object v7

    #@f8
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@fa
    .line 181
    instance-of v11, v7, Landroidx/constraintlayout/core/widgets/Guideline;

    #@fc
    if-eqz v11, :cond_144

    #@fe
    .line 182
    check-cast v7, Landroidx/constraintlayout/core/widgets/Guideline;

    #@100
    .line 183
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@103
    move-result v11

    #@104
    if-nez v11, :cond_151

    #@106
    .line 184
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    #@109
    move-result v1

    #@10a
    if-eq v1, v9, :cond_114

    #@10c
    .line 185
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    #@10f
    move-result v1

    #@110
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    #@113
    goto :goto_142

    #@114
    .line 186
    :cond_114
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    #@117
    move-result v1

    #@118
    if-eq v1, v9, :cond_12d

    #@11a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    #@11d
    move-result v1

    #@11e
    if-eqz v1, :cond_12d

    #@120
    .line 187
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@123
    move-result v1

    #@124
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    #@127
    move-result v11

    #@128
    sub-int/2addr v1, v11

    #@129
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    #@12c
    goto :goto_142

    #@12d
    .line 188
    :cond_12d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    #@130
    move-result v1

    #@131
    if-eqz v1, :cond_142

    #@133
    .line 189
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    #@136
    move-result v1

    #@137
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@13a
    move-result v11

    #@13b
    int-to-float v11, v11

    #@13c
    mul-float/2addr v1, v11

    #@13d
    add-float/2addr v1, v8

    #@13e
    float-to-int v1, v1

    #@13f
    .line 190
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    #@142
    :cond_142
    :goto_142
    move v1, v10

    #@143
    goto :goto_151

    #@144
    .line 194
    :cond_144
    instance-of v11, v7, Landroidx/constraintlayout/core/widgets/Barrier;

    #@146
    if-eqz v11, :cond_151

    #@148
    .line 195
    check-cast v7, Landroidx/constraintlayout/core/widgets/Barrier;

    #@14a
    .line 196
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    #@14d
    move-result v7

    #@14e
    if-ne v7, v10, :cond_151

    #@150
    move v6, v10

    #@151
    :cond_151
    :goto_151
    add-int/lit8 v0, v0, 0x1

    #@153
    goto :goto_f2

    #@154
    :cond_154
    if-eqz v1, :cond_171

    #@156
    move v0, v2

    #@157
    :goto_157
    if-ge v0, v4, :cond_171

    #@159
    .line 206
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15c
    move-result-object v1

    #@15d
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@15f
    .line 207
    instance-of v7, v1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@161
    if-eqz v7, :cond_16e

    #@163
    .line 208
    check-cast v1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@165
    .line 209
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@168
    move-result v7

    #@169
    if-nez v7, :cond_16e

    #@16b
    .line 210
    invoke-static {v10, v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@16e
    :cond_16e
    add-int/lit8 v0, v0, 0x1

    #@170
    goto :goto_157

    #@171
    .line 224
    :cond_171
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@174
    if-eqz v6, :cond_191

    #@176
    move p0, v2

    #@177
    :goto_177
    if-ge p0, v4, :cond_191

    #@179
    .line 232
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17c
    move-result-object v0

    #@17d
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17f
    .line 233
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    #@181
    if-eqz v1, :cond_18e

    #@183
    .line 234
    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    #@185
    .line 235
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    #@188
    move-result v1

    #@189
    if-ne v1, v10, :cond_18e

    #@18b
    .line 236
    invoke-static {v2, v0, p1, v10, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    #@18e
    :cond_18e
    add-int/lit8 p0, p0, 0x1

    #@190
    goto :goto_177

    #@191
    :cond_191
    move p0, v2

    #@192
    :goto_192
    if-ge p0, v4, :cond_1cb

    #@194
    .line 247
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@197
    move-result-object v0

    #@198
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@19a
    .line 248
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@19d
    move-result v1

    #@19e
    if-eqz v1, :cond_1c8

    #@1a0
    invoke-static {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@1a3
    move-result v1

    #@1a4
    if-eqz v1, :cond_1c8

    #@1a6
    .line 249
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@1a8
    sget v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@1aa
    invoke-static {v2, v0, p1, v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@1ad
    .line 250
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@1af
    if-eqz v1, :cond_1c2

    #@1b1
    .line 251
    move-object v1, v0

    #@1b2
    check-cast v1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@1b4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@1b7
    move-result v1

    #@1b8
    if-nez v1, :cond_1be

    #@1ba
    .line 252
    invoke-static {v2, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@1bd
    goto :goto_1c8

    #@1be
    .line 254
    :cond_1be
    invoke-static {v2, v0, p1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@1c1
    goto :goto_1c8

    #@1c2
    .line 257
    :cond_1c2
    invoke-static {v2, v0, p1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    #@1c5
    .line 258
    invoke-static {v2, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@1c8
    :cond_1c8
    :goto_1c8
    add-int/lit8 p0, p0, 0x1

    #@1ca
    goto :goto_192

    #@1cb
    :cond_1cb
    return-void
.end method

.method private static verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .registers 19

    #@0
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p2

    #@4
    .line 439
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isVerticalSolvingPassDone()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_b

    #@a
    return-void

    #@b
    .line 445
    :cond_b
    sget v2, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    #@d
    const/4 v3, 0x1

    #@e
    add-int/2addr v2, v3

    #@f
    sput v2, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    #@11
    .line 450
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@13
    if-nez v2, :cond_2d

    #@15
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2d

    #@1b
    add-int/lit8 v2, p0, 0x1

    #@1d
    invoke-static {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2d

    #@23
    .line 451
    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@25
    invoke-direct {v4}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@28
    .line 452
    sget v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@2a
    invoke-static {v2, v0, v1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@2d
    .line 455
    :cond_2d
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2f
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@32
    move-result-object v2

    #@33
    .line 456
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@35
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@38
    move-result-object v4

    #@39
    .line 457
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@3c
    move-result v5

    #@3d
    .line 458
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@40
    move-result v6

    #@41
    .line 460
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@44
    move-result-object v7

    #@45
    const/4 v8, 0x0

    #@46
    const/16 v9, 0x8

    #@48
    if-eqz v7, :cond_142

    #@4a
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@4d
    move-result v7

    #@4e
    if-eqz v7, :cond_142

    #@50
    .line 461
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v2

    #@58
    :cond_58
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v7

    #@5c
    if-eqz v7, :cond_142

    #@5e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v7

    #@62
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@64
    .line 462
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@66
    add-int/lit8 v12, p0, 0x1

    #@68
    .line 465
    invoke-static {v12, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@6b
    move-result v13

    #@6c
    .line 466
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@6f
    move-result v14

    #@70
    if-eqz v14, :cond_7e

    #@72
    if-eqz v13, :cond_7e

    #@74
    .line 467
    new-instance v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@76
    invoke-direct {v14}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@79
    .line 468
    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@7b
    invoke-static {v12, v11, v1, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@7e
    .line 471
    :cond_7e
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@80
    if-ne v7, v14, :cond_92

    #@82
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@84
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@86
    if-eqz v14, :cond_92

    #@88
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8a
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8c
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@8f
    move-result v14

    #@90
    if-nez v14, :cond_a6

    #@92
    :cond_92
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@94
    if-ne v7, v14, :cond_a8

    #@96
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@98
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9a
    if-eqz v14, :cond_a8

    #@9c
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9e
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a0
    .line 472
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@a3
    move-result v14

    #@a4
    if-eqz v14, :cond_a8

    #@a6
    :cond_a6
    move v14, v3

    #@a7
    goto :goto_a9

    #@a8
    :cond_a8
    const/4 v14, 0x0

    #@a9
    .line 473
    :goto_a9
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ac
    move-result-object v15

    #@ad
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@af
    if-ne v15, v10, :cond_ef

    #@b1
    if-eqz v13, :cond_b4

    #@b3
    goto :goto_ef

    #@b4
    .line 498
    :cond_b4
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b7
    move-result-object v7

    #@b8
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ba
    if-ne v7, v10, :cond_58

    #@bc
    iget v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@be
    if-ltz v7, :cond_58

    #@c0
    iget v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@c2
    if-ltz v7, :cond_58

    #@c4
    .line 500
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@c7
    move-result v7

    #@c8
    if-eq v7, v9, :cond_d6

    #@ca
    iget v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@cc
    if-nez v7, :cond_58

    #@ce
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@d1
    move-result v7

    #@d2
    cmpl-float v7, v7, v8

    #@d4
    if-nez v7, :cond_58

    #@d6
    .line 501
    :cond_d6
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@d9
    move-result v7

    #@da
    if-nez v7, :cond_58

    #@dc
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    #@df
    move-result v7

    #@e0
    if-nez v7, :cond_58

    #@e2
    if-eqz v14, :cond_58

    #@e4
    .line 502
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@e7
    move-result v7

    #@e8
    if-nez v7, :cond_58

    #@ea
    .line 503
    invoke-static {v12, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@ed
    goto/16 :goto_58

    #@ef
    .line 475
    :cond_ef
    :goto_ef
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@f2
    move-result v10

    #@f3
    if-eqz v10, :cond_f7

    #@f5
    goto/16 :goto_58

    #@f7
    .line 482
    :cond_f7
    iget-object v10, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f9
    if-ne v7, v10, :cond_115

    #@fb
    iget-object v10, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@fd
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ff
    if-nez v10, :cond_115

    #@101
    .line 483
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@103
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@106
    move-result v7

    #@107
    add-int/2addr v7, v5

    #@108
    .line 484
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@10b
    move-result v10

    #@10c
    add-int/2addr v10, v7

    #@10d
    .line 485
    invoke-virtual {v11, v7, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@110
    .line 486
    invoke-static {v12, v11, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@113
    goto/16 :goto_58

    #@115
    .line 487
    :cond_115
    iget-object v10, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@117
    if-ne v7, v10, :cond_135

    #@119
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11b
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11d
    if-nez v7, :cond_135

    #@11f
    .line 488
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@121
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@124
    move-result v7

    #@125
    sub-int v7, v5, v7

    #@127
    .line 489
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@12a
    move-result v10

    #@12b
    sub-int v10, v7, v10

    #@12d
    .line 490
    invoke-virtual {v11, v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@130
    .line 491
    invoke-static {v12, v11, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@133
    goto/16 :goto_58

    #@135
    :cond_135
    if-eqz v14, :cond_58

    #@137
    .line 492
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@13a
    move-result v7

    #@13b
    if-nez v7, :cond_58

    #@13d
    .line 493
    invoke-static {v12, v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@140
    goto/16 :goto_58

    #@142
    .line 508
    :cond_142
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@144
    if-eqz v2, :cond_147

    #@146
    return-void

    #@147
    .line 511
    :cond_147
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@14a
    move-result-object v2

    #@14b
    if-eqz v2, :cond_245

    #@14d
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@150
    move-result v2

    #@151
    if-eqz v2, :cond_245

    #@153
    .line 512
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@156
    move-result-object v2

    #@157
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@15a
    move-result-object v2

    #@15b
    :cond_15b
    :goto_15b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15e
    move-result v4

    #@15f
    if-eqz v4, :cond_245

    #@161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@164
    move-result-object v4

    #@165
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@167
    .line 513
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@169
    add-int/lit8 v7, p0, 0x1

    #@16b
    .line 514
    invoke-static {v7, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@16e
    move-result v10

    #@16f
    .line 515
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@172
    move-result v11

    #@173
    if-eqz v11, :cond_181

    #@175
    if-eqz v10, :cond_181

    #@177
    .line 516
    new-instance v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@179
    invoke-direct {v11}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@17c
    .line 517
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@17e
    invoke-static {v7, v5, v1, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@181
    .line 522
    :cond_181
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@183
    if-ne v4, v11, :cond_195

    #@185
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@187
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@189
    if-eqz v11, :cond_195

    #@18b
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18d
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18f
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@192
    move-result v11

    #@193
    if-nez v11, :cond_1a9

    #@195
    :cond_195
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@197
    if-ne v4, v11, :cond_1ab

    #@199
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19b
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19d
    if-eqz v11, :cond_1ab

    #@19f
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a1
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a3
    .line 523
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@1a6
    move-result v11

    #@1a7
    if-eqz v11, :cond_1ab

    #@1a9
    :cond_1a9
    move v11, v3

    #@1aa
    goto :goto_1ac

    #@1ab
    :cond_1ab
    const/4 v11, 0x0

    #@1ac
    .line 524
    :goto_1ac
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1af
    move-result-object v12

    #@1b0
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1b2
    if-ne v12, v13, :cond_1f2

    #@1b4
    if-eqz v10, :cond_1b7

    #@1b6
    goto :goto_1f2

    #@1b7
    .line 546
    :cond_1b7
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1ba
    move-result-object v4

    #@1bb
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1bd
    if-ne v4, v10, :cond_15b

    #@1bf
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@1c1
    if-ltz v4, :cond_15b

    #@1c3
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@1c5
    if-ltz v4, :cond_15b

    #@1c7
    .line 548
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@1ca
    move-result v4

    #@1cb
    if-eq v4, v9, :cond_1d9

    #@1cd
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@1cf
    if-nez v4, :cond_15b

    #@1d1
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@1d4
    move-result v4

    #@1d5
    cmpl-float v4, v4, v8

    #@1d7
    if-nez v4, :cond_15b

    #@1d9
    .line 549
    :cond_1d9
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@1dc
    move-result v4

    #@1dd
    if-nez v4, :cond_15b

    #@1df
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    #@1e2
    move-result v4

    #@1e3
    if-nez v4, :cond_15b

    #@1e5
    if-eqz v11, :cond_15b

    #@1e7
    .line 550
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@1ea
    move-result v4

    #@1eb
    if-nez v4, :cond_15b

    #@1ed
    .line 551
    invoke-static {v7, v0, v1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@1f0
    goto/16 :goto_15b

    #@1f2
    .line 526
    :cond_1f2
    :goto_1f2
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@1f5
    move-result v10

    #@1f6
    if-eqz v10, :cond_1fa

    #@1f8
    goto/16 :goto_15b

    #@1fa
    .line 533
    :cond_1fa
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1fc
    if-ne v4, v10, :cond_218

    #@1fe
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@200
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@202
    if-nez v10, :cond_218

    #@204
    .line 534
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@206
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@209
    move-result v4

    #@20a
    add-int/2addr v4, v6

    #@20b
    .line 535
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@20e
    move-result v10

    #@20f
    add-int/2addr v10, v4

    #@210
    .line 536
    invoke-virtual {v5, v4, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@213
    .line 537
    invoke-static {v7, v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@216
    goto/16 :goto_15b

    #@218
    .line 538
    :cond_218
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21a
    if-ne v4, v10, :cond_238

    #@21c
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21e
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@220
    if-nez v4, :cond_238

    #@222
    .line 539
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@224
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@227
    move-result v4

    #@228
    sub-int v4, v6, v4

    #@22a
    .line 540
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@22d
    move-result v10

    #@22e
    sub-int v10, v4, v10

    #@230
    .line 541
    invoke-virtual {v5, v10, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    #@233
    .line 542
    invoke-static {v7, v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@236
    goto/16 :goto_15b

    #@238
    :cond_238
    if-eqz v11, :cond_15b

    #@23a
    .line 543
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@23d
    move-result v4

    #@23e
    if-nez v4, :cond_15b

    #@240
    .line 544
    invoke-static {v7, v1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@243
    goto/16 :goto_15b

    #@245
    .line 557
    :cond_245
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@247
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@24a
    move-result-object v2

    #@24b
    .line 558
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@24e
    move-result-object v4

    #@24f
    if-eqz v4, :cond_2aa

    #@251
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@254
    move-result v4

    #@255
    if-eqz v4, :cond_2aa

    #@257
    .line 559
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@25a
    move-result v4

    #@25b
    .line 560
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@25e
    move-result-object v2

    #@25f
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@262
    move-result-object v2

    #@263
    :cond_263
    :goto_263
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@266
    move-result v5

    #@267
    if-eqz v5, :cond_2aa

    #@269
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26c
    move-result-object v5

    #@26d
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26f
    .line 561
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@271
    add-int/lit8 v7, p0, 0x1

    #@273
    .line 562
    invoke-static {v7, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@276
    move-result v8

    #@277
    .line 563
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@27a
    move-result v9

    #@27b
    if-eqz v9, :cond_289

    #@27d
    if-eqz v8, :cond_289

    #@27f
    .line 564
    new-instance v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@281
    invoke-direct {v9}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@284
    .line 565
    sget v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@286
    invoke-static {v7, v6, v1, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@289
    .line 567
    :cond_289
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28c
    move-result-object v9

    #@28d
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28f
    if-ne v9, v10, :cond_293

    #@291
    if-eqz v8, :cond_263

    #@293
    .line 569
    :cond_293
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@296
    move-result v8

    #@297
    if-eqz v8, :cond_29a

    #@299
    goto :goto_263

    #@29a
    .line 576
    :cond_29a
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@29c
    if-ne v5, v8, :cond_263

    #@29e
    .line 577
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@2a1
    move-result v5

    #@2a2
    add-int/2addr v5, v4

    #@2a3
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalBaseline(I)V

    #@2a6
    .line 578
    invoke-static {v7, v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@2a9
    goto :goto_263

    #@2aa
    .line 583
    :cond_2aa
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->markVerticalSolvingPassDone()V

    #@2ad
    return-void
.end method
