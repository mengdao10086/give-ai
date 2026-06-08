.class public Landroidx/constraintlayout/core/widgets/analyzer/Grouping;
.super Ljava/lang/Object;
.source "Grouping.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_GROUPING:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ">;",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ")",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_5

    #@2
    .line 369
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    #@4
    goto :goto_7

    #@5
    .line 371
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    #@7
    :goto_7
    const/4 v1, 0x0

    #@8
    const/4 v2, -0x1

    #@9
    if-eq v0, v2, :cond_31

    #@b
    if-eqz p3, :cond_11

    #@d
    .line 377
    iget v3, p3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    #@f
    if-eq v0, v3, :cond_31

    #@11
    :cond_11
    move v3, v1

    #@12
    .line 382
    :goto_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v4

    #@16
    if-ge v3, v4, :cond_34

    #@18
    .line 383
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@1e
    .line 384
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getId()I

    #@21
    move-result v5

    #@22
    if-ne v5, v0, :cond_2e

    #@24
    if-eqz p3, :cond_2c

    #@26
    .line 389
    invoke-virtual {p3, p1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@29
    .line 390
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2c
    :cond_2c
    move-object p3, v4

    #@2d
    goto :goto_34

    #@2e
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_12

    #@31
    :cond_31
    if-eq v0, v2, :cond_34

    #@33
    return-object p3

    #@34
    :cond_34
    :goto_34
    if-nez p3, :cond_65

    #@36
    .line 400
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@38
    if-eqz v0, :cond_5b

    #@3a
    .line 401
    move-object v0, p0

    #@3b
    check-cast v0, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@3d
    .line 402
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/HelperWidget;->findGroupInDependents(I)I

    #@40
    move-result v0

    #@41
    if-eq v0, v2, :cond_5b

    #@43
    move v2, v1

    #@44
    .line 404
    :goto_44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v3

    #@48
    if-ge v2, v3, :cond_5b

    #@4a
    .line 405
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@50
    .line 406
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getId()I

    #@53
    move-result v4

    #@54
    if-ne v4, v0, :cond_58

    #@56
    move-object p3, v3

    #@57
    goto :goto_5b

    #@58
    :cond_58
    add-int/lit8 v2, v2, 0x1

    #@5a
    goto :goto_44

    #@5b
    :cond_5b
    :goto_5b
    if-nez p3, :cond_62

    #@5d
    .line 414
    new-instance p3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@5f
    invoke-direct {p3, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;-><init>(I)V

    #@62
    .line 419
    :cond_62
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    .line 421
    :cond_65
    invoke-virtual {p3, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_ad

    #@6b
    .line 422
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@6d
    if-eqz v0, :cond_80

    #@6f
    .line 423
    move-object v0, p0

    #@70
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@72
    .line 424
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getAnchor()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@79
    move-result v0

    #@7a
    if-nez v0, :cond_7d

    #@7c
    const/4 v1, 0x1

    #@7d
    :cond_7d
    invoke-virtual {v2, v1, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@80
    :cond_80
    if-nez p1, :cond_93

    #@82
    .line 427
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getId()I

    #@85
    move-result v0

    #@86
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    #@88
    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8a
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@8d
    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8f
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@92
    goto :goto_a8

    #@93
    .line 434
    :cond_93
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getId()I

    #@96
    move-result v0

    #@97
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    #@99
    .line 438
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9b
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@9e
    .line 439
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@a3
    .line 440
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@a8
    .line 442
    :goto_a8
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@aa
    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@ad
    :cond_ad
    return-object p3
.end method

.method private static findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ">;I)",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;"
        }
    .end annotation

    #@0
    .line 356
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_15

    #@7
    .line 358
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@d
    .line 359
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    #@f
    if-ne p1, v3, :cond_12

    #@11
    return-object v2

    #@12
    :cond_12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_5

    #@15
    :cond_15
    const/4 p0, 0x0

    #@16
    return-object p0
.end method

.method public static simpleSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z
    .registers 18

    #@0
    move-object/from16 v0, p0

    #@2
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x0

    #@b
    move v4, v3

    #@c
    :goto_c
    if-ge v4, v2, :cond_33

    #@e
    .line 75
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@17
    move-result-object v6

    #@18
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1b
    move-result-object v7

    #@1c
    .line 77
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@23
    move-result-object v9

    #@24
    .line 76
    invoke-static {v6, v7, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    #@27
    move-result v6

    #@28
    if-nez v6, :cond_2b

    #@2a
    return v3

    #@2b
    .line 83
    :cond_2b
    instance-of v5, v5, Landroidx/constraintlayout/core/widgets/Flow;

    #@2d
    if-eqz v5, :cond_30

    #@2f
    return v3

    #@30
    :cond_30
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_c

    #@33
    .line 87
    :cond_33
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@35
    if-eqz v4, :cond_40

    #@37
    .line 88
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@39
    iget-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->grouping:J

    #@3b
    const-wide/16 v7, 0x1

    #@3d
    add-long/2addr v5, v7

    #@3e
    iput-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->grouping:J

    #@40
    :cond_40
    move v5, v3

    #@41
    const/4 v6, 0x0

    #@42
    const/4 v7, 0x0

    #@43
    const/4 v8, 0x0

    #@44
    const/4 v9, 0x0

    #@45
    const/4 v10, 0x0

    #@46
    const/4 v11, 0x0

    #@47
    :goto_47
    if-ge v5, v2, :cond_121

    #@49
    .line 91
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v13

    #@4d
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@4f
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@52
    move-result-object v14

    #@53
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@56
    move-result-object v15

    #@57
    .line 93
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@5e
    move-result-object v12

    #@5f
    .line 92
    invoke-static {v14, v15, v4, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    #@62
    move-result v4

    #@63
    if-nez v4, :cond_6f

    #@65
    .line 94
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@67
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@69
    move-object/from16 v14, p1

    #@6b
    invoke-static {v3, v13, v14, v4, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@6e
    goto :goto_71

    #@6f
    :cond_6f
    move-object/from16 v14, p1

    #@71
    .line 96
    :goto_71
    instance-of v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    #@73
    if-eqz v4, :cond_99

    #@75
    .line 97
    move-object v12, v13

    #@76
    check-cast v12, Landroidx/constraintlayout/core/widgets/Guideline;

    #@78
    .line 98
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@7b
    move-result v15

    #@7c
    if-nez v15, :cond_88

    #@7e
    if-nez v8, :cond_85

    #@80
    .line 100
    new-instance v8, Ljava/util/ArrayList;

    #@82
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@85
    .line 102
    :cond_85
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@88
    .line 104
    :cond_88
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@8b
    move-result v15

    #@8c
    const/4 v3, 0x1

    #@8d
    if-ne v15, v3, :cond_99

    #@8f
    if-nez v6, :cond_96

    #@91
    .line 106
    new-instance v6, Ljava/util/ArrayList;

    #@93
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@96
    .line 108
    :cond_96
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@99
    .line 111
    :cond_99
    instance-of v3, v13, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@9b
    if-eqz v3, :cond_dd

    #@9d
    .line 112
    instance-of v3, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    #@9f
    if-eqz v3, :cond_c6

    #@a1
    .line 113
    move-object v3, v13

    #@a2
    check-cast v3, Landroidx/constraintlayout/core/widgets/Barrier;

    #@a4
    .line 114
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    #@a7
    move-result v12

    #@a8
    if-nez v12, :cond_b4

    #@aa
    if-nez v7, :cond_b1

    #@ac
    .line 116
    new-instance v7, Ljava/util/ArrayList;

    #@ae
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@b1
    .line 118
    :cond_b1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b4
    .line 120
    :cond_b4
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    #@b7
    move-result v12

    #@b8
    const/4 v15, 0x1

    #@b9
    if-ne v12, v15, :cond_dd

    #@bb
    if-nez v9, :cond_c2

    #@bd
    .line 122
    new-instance v9, Ljava/util/ArrayList;

    #@bf
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@c2
    .line 124
    :cond_c2
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c5
    goto :goto_dd

    #@c6
    .line 127
    :cond_c6
    move-object v3, v13

    #@c7
    check-cast v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@c9
    if-nez v7, :cond_d0

    #@cb
    .line 129
    new-instance v7, Ljava/util/ArrayList;

    #@cd
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@d0
    .line 131
    :cond_d0
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d3
    if-nez v9, :cond_da

    #@d5
    .line 133
    new-instance v9, Ljava/util/ArrayList;

    #@d7
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@da
    .line 135
    :cond_da
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dd
    .line 138
    :cond_dd
    :goto_dd
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@df
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e1
    if-nez v3, :cond_f9

    #@e3
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e5
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e7
    if-nez v3, :cond_f9

    #@e9
    if-nez v4, :cond_f9

    #@eb
    instance-of v3, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    #@ed
    if-nez v3, :cond_f9

    #@ef
    if-nez v10, :cond_f6

    #@f1
    .line 141
    new-instance v10, Ljava/util/ArrayList;

    #@f3
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@f6
    .line 143
    :cond_f6
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f9
    .line 145
    :cond_f9
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@fb
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@fd
    if-nez v3, :cond_11c

    #@ff
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@101
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@103
    if-nez v3, :cond_11c

    #@105
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@107
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@109
    if-nez v3, :cond_11c

    #@10b
    if-nez v4, :cond_11c

    #@10d
    instance-of v3, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    #@10f
    if-nez v3, :cond_11c

    #@111
    if-nez v11, :cond_119

    #@113
    .line 149
    new-instance v3, Ljava/util/ArrayList;

    #@115
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@118
    move-object v11, v3

    #@119
    .line 151
    :cond_119
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11c
    :cond_11c
    add-int/lit8 v5, v5, 0x1

    #@11e
    const/4 v3, 0x0

    #@11f
    goto/16 :goto_47

    #@121
    .line 154
    :cond_121
    new-instance v3, Ljava/util/ArrayList;

    #@123
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@126
    if-eqz v6, :cond_13e

    #@128
    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@12b
    move-result-object v4

    #@12c
    :goto_12c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@12f
    move-result v5

    #@130
    if-eqz v5, :cond_13e

    #@132
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@135
    move-result-object v5

    #@136
    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    #@138
    const/4 v6, 0x0

    #@139
    const/4 v12, 0x0

    #@13a
    .line 161
    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@13d
    goto :goto_12c

    #@13e
    :cond_13e
    const/4 v6, 0x0

    #@13f
    const/4 v12, 0x0

    #@140
    if-eqz v7, :cond_15f

    #@142
    .line 165
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@145
    move-result-object v4

    #@146
    :goto_146
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@149
    move-result v5

    #@14a
    if-eqz v5, :cond_15f

    #@14c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14f
    move-result-object v5

    #@150
    check-cast v5, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@152
    .line 166
    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@155
    move-result-object v7

    #@156
    .line 167
    invoke-virtual {v5, v3, v12, v7}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(Ljava/util/ArrayList;ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@159
    .line 168
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    #@15c
    const/4 v6, 0x0

    #@15d
    const/4 v12, 0x0

    #@15e
    goto :goto_146

    #@15f
    .line 172
    :cond_15f
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@161
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@164
    move-result-object v4

    #@165
    .line 173
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@168
    move-result-object v5

    #@169
    if-eqz v5, :cond_187

    #@16b
    .line 174
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@16e
    move-result-object v4

    #@16f
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@172
    move-result-object v4

    #@173
    :goto_173
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@176
    move-result v5

    #@177
    if-eqz v5, :cond_187

    #@179
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17c
    move-result-object v5

    #@17d
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17f
    .line 175
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@181
    const/4 v6, 0x0

    #@182
    const/4 v7, 0x0

    #@183
    invoke-static {v5, v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@186
    goto :goto_173

    #@187
    .line 179
    :cond_187
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@189
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18c
    move-result-object v4

    #@18d
    .line 180
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@190
    move-result-object v5

    #@191
    if-eqz v5, :cond_1af

    #@193
    .line 181
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@196
    move-result-object v4

    #@197
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@19a
    move-result-object v4

    #@19b
    :goto_19b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@19e
    move-result v5

    #@19f
    if-eqz v5, :cond_1af

    #@1a1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a4
    move-result-object v5

    #@1a5
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a7
    .line 182
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1a9
    const/4 v6, 0x0

    #@1aa
    const/4 v7, 0x0

    #@1ab
    invoke-static {v5, v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@1ae
    goto :goto_19b

    #@1af
    .line 186
    :cond_1af
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1b1
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1b4
    move-result-object v4

    #@1b5
    .line 187
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@1b8
    move-result-object v5

    #@1b9
    if-eqz v5, :cond_1d7

    #@1bb
    .line 188
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@1be
    move-result-object v4

    #@1bf
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@1c2
    move-result-object v4

    #@1c3
    :goto_1c3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1c6
    move-result v5

    #@1c7
    if-eqz v5, :cond_1d7

    #@1c9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cc
    move-result-object v5

    #@1cd
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1cf
    .line 189
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d1
    const/4 v6, 0x0

    #@1d2
    const/4 v7, 0x0

    #@1d3
    invoke-static {v5, v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@1d6
    goto :goto_1c3

    #@1d7
    :cond_1d7
    const/4 v6, 0x0

    #@1d8
    const/4 v7, 0x0

    #@1d9
    if-eqz v10, :cond_1ef

    #@1db
    .line 194
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1de
    move-result-object v4

    #@1df
    :goto_1df
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1e2
    move-result v5

    #@1e3
    if-eqz v5, :cond_1ef

    #@1e5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e8
    move-result-object v5

    #@1e9
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1eb
    .line 195
    invoke-static {v5, v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@1ee
    goto :goto_1df

    #@1ef
    :cond_1ef
    if-eqz v8, :cond_206

    #@1f1
    .line 204
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1f4
    move-result-object v4

    #@1f5
    :goto_1f5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1f8
    move-result v5

    #@1f9
    if-eqz v5, :cond_206

    #@1fb
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1fe
    move-result-object v5

    #@1ff
    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    #@201
    const/4 v7, 0x1

    #@202
    .line 205
    invoke-static {v5, v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@205
    goto :goto_1f5

    #@206
    :cond_206
    const/4 v7, 0x1

    #@207
    if-eqz v9, :cond_226

    #@209
    .line 209
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@20c
    move-result-object v4

    #@20d
    :goto_20d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@210
    move-result v5

    #@211
    if-eqz v5, :cond_226

    #@213
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@216
    move-result-object v5

    #@217
    check-cast v5, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@219
    .line 210
    invoke-static {v5, v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@21c
    move-result-object v8

    #@21d
    .line 211
    invoke-virtual {v5, v3, v7, v8}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(Ljava/util/ArrayList;ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@220
    .line 212
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    #@223
    const/4 v6, 0x0

    #@224
    const/4 v7, 0x1

    #@225
    goto :goto_20d

    #@226
    .line 216
    :cond_226
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@228
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22b
    move-result-object v4

    #@22c
    .line 217
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@22f
    move-result-object v5

    #@230
    if-eqz v5, :cond_24e

    #@232
    .line 218
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@235
    move-result-object v4

    #@236
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@239
    move-result-object v4

    #@23a
    :goto_23a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@23d
    move-result v5

    #@23e
    if-eqz v5, :cond_24e

    #@240
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@243
    move-result-object v5

    #@244
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@246
    .line 219
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@248
    const/4 v6, 0x1

    #@249
    const/4 v7, 0x0

    #@24a
    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@24d
    goto :goto_23a

    #@24e
    .line 223
    :cond_24e
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@250
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@253
    move-result-object v4

    #@254
    .line 224
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@257
    move-result-object v5

    #@258
    if-eqz v5, :cond_276

    #@25a
    .line 225
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@25d
    move-result-object v4

    #@25e
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@261
    move-result-object v4

    #@262
    :goto_262
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@265
    move-result v5

    #@266
    if-eqz v5, :cond_276

    #@268
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26b
    move-result-object v5

    #@26c
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26e
    .line 226
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@270
    const/4 v6, 0x1

    #@271
    const/4 v7, 0x0

    #@272
    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@275
    goto :goto_262

    #@276
    .line 230
    :cond_276
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@278
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@27b
    move-result-object v4

    #@27c
    .line 231
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@27f
    move-result-object v5

    #@280
    if-eqz v5, :cond_29e

    #@282
    .line 232
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@285
    move-result-object v4

    #@286
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@289
    move-result-object v4

    #@28a
    :goto_28a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@28d
    move-result v5

    #@28e
    if-eqz v5, :cond_29e

    #@290
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@293
    move-result-object v5

    #@294
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@296
    .line 233
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@298
    const/4 v6, 0x1

    #@299
    const/4 v7, 0x0

    #@29a
    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@29d
    goto :goto_28a

    #@29e
    .line 237
    :cond_29e
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2a0
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2a3
    move-result-object v4

    #@2a4
    .line 238
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@2a7
    move-result-object v5

    #@2a8
    if-eqz v5, :cond_2c6

    #@2aa
    .line 239
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@2ad
    move-result-object v4

    #@2ae
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@2b1
    move-result-object v4

    #@2b2
    :goto_2b2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2b5
    move-result v5

    #@2b6
    if-eqz v5, :cond_2c6

    #@2b8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2bb
    move-result-object v5

    #@2bc
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2be
    .line 240
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2c0
    const/4 v6, 0x0

    #@2c1
    const/4 v7, 0x1

    #@2c2
    invoke-static {v5, v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@2c5
    goto :goto_2b2

    #@2c6
    :cond_2c6
    const/4 v6, 0x0

    #@2c7
    const/4 v7, 0x1

    #@2c8
    if-eqz v11, :cond_2de

    #@2ca
    .line 245
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2cd
    move-result-object v4

    #@2ce
    :goto_2ce
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2d1
    move-result v5

    #@2d2
    if-eqz v5, :cond_2de

    #@2d4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d7
    move-result-object v5

    #@2d8
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2da
    .line 246
    invoke-static {v5, v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@2dd
    goto :goto_2ce

    #@2de
    :cond_2de
    const/4 v4, 0x0

    #@2df
    :goto_2df
    if-ge v4, v2, :cond_30b

    #@2e1
    .line 252
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e4
    move-result-object v5

    #@2e5
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2e7
    .line 253
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->oppositeDimensionsTied()Z

    #@2ea
    move-result v7

    #@2eb
    if-eqz v7, :cond_308

    #@2ed
    .line 254
    iget v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    #@2ef
    invoke-static {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@2f2
    move-result-object v7

    #@2f3
    .line 255
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    #@2f5
    invoke-static {v3, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@2f8
    move-result-object v5

    #@2f9
    if-eqz v7, :cond_308

    #@2fb
    if-eqz v5, :cond_308

    #@2fd
    const/4 v8, 0x0

    #@2fe
    .line 260
    invoke-virtual {v7, v8, v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    #@301
    const/4 v8, 0x2

    #@302
    .line 261
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->setOrientation(I)V

    #@305
    .line 262
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@308
    :cond_308
    add-int/lit8 v4, v4, 0x1

    #@30a
    goto :goto_2df

    #@30b
    .line 270
    :cond_30b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@30e
    move-result v1

    #@30f
    const/4 v2, 0x1

    #@310
    if-gt v1, v2, :cond_314

    #@312
    const/4 v1, 0x0

    #@313
    return v1

    #@314
    .line 297
    :cond_314
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@317
    move-result-object v1

    #@318
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@31a
    if-ne v1, v2, :cond_356

    #@31c
    .line 300
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@31f
    move-result-object v1

    #@320
    move-object v2, v6

    #@321
    const/4 v12, 0x0

    #@322
    :cond_322
    :goto_322
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@325
    move-result v4

    #@326
    if-eqz v4, :cond_347

    #@328
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32b
    move-result-object v4

    #@32c
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@32e
    .line 301
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getOrientation()I

    #@331
    move-result v5

    #@332
    const/4 v7, 0x1

    #@333
    if-ne v5, v7, :cond_336

    #@335
    goto :goto_322

    #@336
    :cond_336
    const/4 v5, 0x0

    #@337
    .line 304
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    #@33a
    .line 305
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getSystem()Landroidx/constraintlayout/core/LinearSystem;

    #@33d
    move-result-object v7

    #@33e
    invoke-virtual {v4, v7, v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    #@341
    move-result v7

    #@342
    if-le v7, v12, :cond_322

    #@344
    move-object v2, v4

    #@345
    move v12, v7

    #@346
    goto :goto_322

    #@347
    :cond_347
    if-eqz v2, :cond_356

    #@349
    .line 318
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@34b
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@34e
    .line 319
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    #@351
    const/4 v1, 0x1

    #@352
    .line 320
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    #@355
    goto :goto_357

    #@356
    :cond_356
    move-object v2, v6

    #@357
    .line 325
    :goto_357
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@35a
    move-result-object v1

    #@35b
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@35d
    if-ne v1, v4, :cond_39b

    #@35f
    .line 328
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@362
    move-result-object v1

    #@363
    move-object v3, v6

    #@364
    const/4 v12, 0x0

    #@365
    :cond_365
    :goto_365
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@368
    move-result v4

    #@369
    if-eqz v4, :cond_38a

    #@36b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36e
    move-result-object v4

    #@36f
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@371
    .line 329
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getOrientation()I

    #@374
    move-result v5

    #@375
    if-nez v5, :cond_378

    #@377
    goto :goto_365

    #@378
    :cond_378
    const/4 v5, 0x0

    #@379
    .line 332
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    #@37c
    .line 333
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getSystem()Landroidx/constraintlayout/core/LinearSystem;

    #@37f
    move-result-object v7

    #@380
    const/4 v8, 0x1

    #@381
    invoke-virtual {v4, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    #@384
    move-result v7

    #@385
    if-le v7, v12, :cond_365

    #@387
    move-object v3, v4

    #@388
    move v12, v7

    #@389
    goto :goto_365

    #@38a
    :cond_38a
    const/4 v5, 0x0

    #@38b
    const/4 v8, 0x1

    #@38c
    if-eqz v3, :cond_39d

    #@38e
    .line 346
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@390
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@393
    .line 347
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    #@396
    .line 348
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    #@399
    move-object v4, v3

    #@39a
    goto :goto_39e

    #@39b
    :cond_39b
    const/4 v5, 0x0

    #@39c
    const/4 v8, 0x1

    #@39d
    :cond_39d
    move-object v4, v6

    #@39e
    :goto_39e
    if-nez v2, :cond_3a5

    #@3a0
    if-eqz v4, :cond_3a3

    #@3a2
    goto :goto_3a5

    #@3a3
    :cond_3a3
    move v3, v5

    #@3a4
    goto :goto_3a6

    #@3a5
    :cond_3a5
    :goto_3a5
    move v3, v8

    #@3a6
    :goto_3a6
    return v3
.end method

.method public static validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z
    .registers 7

    #@0
    .line 48
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eq p2, v0, :cond_15

    #@6
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@8
    if-eq p2, v0, :cond_15

    #@a
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@c
    if-ne p2, v0, :cond_13

    #@e
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@10
    if-eq p0, p2, :cond_13

    #@12
    goto :goto_15

    #@13
    :cond_13
    move p0, v1

    #@14
    goto :goto_16

    #@15
    :cond_15
    :goto_15
    move p0, v2

    #@16
    .line 50
    :goto_16
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@18
    if-eq p3, p2, :cond_29

    #@1a
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1c
    if-eq p3, p2, :cond_29

    #@1e
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@20
    if-ne p3, p2, :cond_27

    #@22
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@24
    if-eq p1, p2, :cond_27

    #@26
    goto :goto_29

    #@27
    :cond_27
    move p1, v1

    #@28
    goto :goto_2a

    #@29
    :cond_29
    :goto_29
    move p1, v2

    #@2a
    :goto_2a
    if-nez p0, :cond_30

    #@2c
    if-eqz p1, :cond_2f

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    return v1

    #@30
    :cond_30
    :goto_30
    return v2
.end method
