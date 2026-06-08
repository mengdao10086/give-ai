.class public Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 3

    #@0
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    #@a
    .line 53
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@c
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@11
    .line 71
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@13
    return-void
.end method

.method private measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z
    .registers 8

    #@0
    .line 443
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@2
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@5
    move-result-object v1

    #@6
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@8
    .line 444
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@a
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@10
    .line 445
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@12
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@15
    move-result v1

    #@16
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    #@18
    .line 446
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@1a
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@1d
    move-result v1

    #@1e
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    #@20
    .line 447
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@22
    const/4 v1, 0x0

    #@23
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    #@25
    .line 448
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@27
    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@29
    .line 450
    iget-object p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@2b
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2d
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2f
    const/4 v2, 0x1

    #@30
    if-ne p3, v0, :cond_34

    #@32
    move p3, v2

    #@33
    goto :goto_35

    #@34
    :cond_34
    move p3, v1

    #@35
    .line 451
    :goto_35
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@37
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@39
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3b
    if-ne v0, v3, :cond_3f

    #@3d
    move v0, v2

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move v0, v1

    #@40
    :goto_40
    const/4 v3, 0x0

    #@41
    if-eqz p3, :cond_4b

    #@43
    .line 452
    iget p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@45
    cmpl-float p3, p3, v3

    #@47
    if-lez p3, :cond_4b

    #@49
    move p3, v2

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    move p3, v1

    #@4c
    :goto_4c
    if-eqz v0, :cond_56

    #@4e
    .line 453
    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@50
    cmpl-float v0, v0, v3

    #@52
    if-lez v0, :cond_56

    #@54
    move v0, v2

    #@55
    goto :goto_57

    #@56
    :cond_56
    move v0, v1

    #@57
    :goto_57
    const/4 v3, 0x4

    #@58
    if-eqz p3, :cond_66

    #@5a
    .line 456
    iget-object p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@5c
    aget p3, p3, v1

    #@5e
    if-ne p3, v3, :cond_66

    #@60
    .line 457
    iget-object p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@62
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@64
    iput-object v1, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@66
    :cond_66
    if-eqz v0, :cond_74

    #@68
    .line 461
    iget-object p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@6a
    aget p3, p3, v2

    #@6c
    if-ne p3, v3, :cond_74

    #@6e
    .line 462
    iget-object p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@70
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@72
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@74
    .line 466
    :cond_74
    iget-object p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@76
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    #@79
    .line 467
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@7b
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    #@7d
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@80
    .line 468
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@82
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    #@84
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@87
    .line 469
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@89
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    #@8b
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    #@8e
    .line 470
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@90
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    #@92
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    #@95
    .line 471
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@97
    sget p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@99
    iput p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@9b
    .line 472
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@9d
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    #@9f
    return p1
.end method

.method private measureChildren(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 13

    #@0
    .line 75
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x40

    #@8
    .line 76
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@b
    move-result v1

    #@c
    .line 77
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    move v4, v3

    #@12
    :goto_12
    if-ge v4, v0, :cond_c4

    #@14
    .line 79
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1c
    .line 80
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    #@1e
    if-eqz v6, :cond_22

    #@20
    goto/16 :goto_c0

    #@22
    .line 83
    :cond_22
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    #@24
    if-eqz v6, :cond_28

    #@26
    goto/16 :goto_c0

    #@28
    .line 86
    :cond_28
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_30

    #@2e
    goto/16 :goto_c0

    #@30
    :cond_30
    if-eqz v1, :cond_4c

    #@32
    .line 90
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@34
    if-eqz v6, :cond_4c

    #@36
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@38
    if-eqz v6, :cond_4c

    #@3a
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@3c
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@3e
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@40
    if-eqz v6, :cond_4c

    #@42
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@44
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@46
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@48
    if-eqz v6, :cond_4c

    #@4a
    goto/16 :goto_c0

    #@4c
    .line 96
    :cond_4c
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4f
    move-result-object v6

    #@50
    const/4 v7, 0x1

    #@51
    .line 97
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@54
    move-result-object v8

    #@55
    .line 99
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@57
    if-ne v6, v9, :cond_67

    #@59
    iget v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@5b
    if-eq v9, v7, :cond_67

    #@5d
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@5f
    if-ne v8, v9, :cond_67

    #@61
    iget v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@63
    if-eq v9, v7, :cond_67

    #@65
    move v9, v7

    #@66
    goto :goto_68

    #@67
    :cond_67
    move v9, v3

    #@68
    :goto_68
    if-nez v9, :cond_aa

    #@6a
    .line 104
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@6d
    move-result v10

    #@6e
    if-eqz v10, :cond_aa

    #@70
    instance-of v10, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@72
    if-nez v10, :cond_aa

    #@74
    .line 106
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@76
    if-ne v6, v10, :cond_87

    #@78
    iget v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@7a
    if-nez v10, :cond_87

    #@7c
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@7e
    if-eq v8, v10, :cond_87

    #@80
    .line 109
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@83
    move-result v10

    #@84
    if-nez v10, :cond_87

    #@86
    move v9, v7

    #@87
    .line 113
    :cond_87
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@89
    if-ne v8, v10, :cond_9a

    #@8b
    iget v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@8d
    if-nez v10, :cond_9a

    #@8f
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@91
    if-eq v6, v10, :cond_9a

    #@93
    .line 116
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@96
    move-result v10

    #@97
    if-nez v10, :cond_9a

    #@99
    move v9, v7

    #@9a
    .line 121
    :cond_9a
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9c
    if-eq v6, v10, :cond_a2

    #@9e
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a0
    if-ne v8, v6, :cond_aa

    #@a2
    :cond_a2
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@a4
    const/4 v8, 0x0

    #@a5
    cmpl-float v6, v6, v8

    #@a7
    if-lez v6, :cond_aa

    #@a9
    goto :goto_ab

    #@aa
    :cond_aa
    move v7, v9

    #@ab
    :goto_ab
    if-eqz v7, :cond_ae

    #@ad
    goto :goto_c0

    #@ae
    .line 134
    :cond_ae
    sget v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@b0
    invoke-direct {p0, v2, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    #@b3
    .line 135
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@b5
    if-eqz v5, :cond_c0

    #@b7
    .line 136
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@b9
    iget-wide v6, v5, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    #@bb
    const-wide/16 v8, 0x1

    #@bd
    add-long/2addr v6, v8

    #@be
    iput-wide v6, v5, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    #@c0
    :cond_c0
    :goto_c0
    add-int/lit8 v4, v4, 0x1

    #@c2
    goto/16 :goto_12

    #@c4
    .line 139
    :cond_c4
    invoke-interface {v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    #@c7
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V
    .registers 8

    #@0
    .line 148
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinWidth()I

    #@3
    move-result p2

    #@4
    .line 149
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinHeight()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    .line 150
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    #@c
    .line 151
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    #@f
    .line 152
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    #@12
    .line 153
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    #@15
    .line 154
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    #@18
    .line 155
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    #@1b
    .line 159
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@1d
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setPass(I)V

    #@20
    .line 160
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@22
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->layout()V

    #@25
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .registers 34

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move/from16 v2, p2

    #@6
    move/from16 v3, p5

    #@8
    move/from16 v4, p7

    #@a
    .line 186
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@d
    move-result-object v5

    #@e
    .line 189
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v6

    #@14
    .line 190
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@17
    move-result v7

    #@18
    .line 191
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@1b
    move-result v8

    #@1c
    const/16 v9, 0x80

    #@1e
    .line 193
    invoke-static {v2, v9}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    #@21
    move-result v9

    #@22
    const/4 v10, 0x0

    #@23
    if-nez v9, :cond_30

    #@25
    const/16 v12, 0x40

    #@27
    .line 194
    invoke-static {v2, v12}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_2e

    #@2d
    goto :goto_30

    #@2e
    :cond_2e
    move v2, v10

    #@2f
    goto :goto_31

    #@30
    :cond_30
    :goto_30
    const/4 v2, 0x1

    #@31
    :goto_31
    if-eqz v2, :cond_8c

    #@33
    move v12, v10

    #@34
    :goto_34
    if-ge v12, v6, :cond_8c

    #@36
    .line 198
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v13

    #@3c
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3e
    .line 199
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@41
    move-result-object v14

    #@42
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@44
    if-ne v14, v15, :cond_48

    #@46
    const/4 v14, 0x1

    #@47
    goto :goto_49

    #@48
    :cond_48
    move v14, v10

    #@49
    .line 200
    :goto_49
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4c
    move-result-object v15

    #@4d
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4f
    if-ne v15, v11, :cond_53

    #@51
    const/4 v11, 0x1

    #@52
    goto :goto_54

    #@53
    :cond_53
    move v11, v10

    #@54
    :goto_54
    if-eqz v14, :cond_63

    #@56
    if-eqz v11, :cond_63

    #@58
    .line 201
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@5b
    move-result v11

    #@5c
    const/4 v14, 0x0

    #@5d
    cmpl-float v11, v11, v14

    #@5f
    if-lez v11, :cond_63

    #@61
    const/4 v11, 0x1

    #@62
    goto :goto_64

    #@63
    :cond_63
    move v11, v10

    #@64
    .line 202
    :goto_64
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@67
    move-result v14

    #@68
    if-eqz v14, :cond_6e

    #@6a
    if-eqz v11, :cond_6e

    #@6c
    :cond_6c
    :goto_6c
    move v2, v10

    #@6d
    goto :goto_8c

    #@6e
    .line 206
    :cond_6e
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@71
    move-result v14

    #@72
    if-eqz v14, :cond_77

    #@74
    if-eqz v11, :cond_77

    #@76
    goto :goto_6c

    #@77
    .line 210
    :cond_77
    instance-of v11, v13, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@79
    if-eqz v11, :cond_7c

    #@7b
    goto :goto_6c

    #@7c
    .line 214
    :cond_7c
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@7f
    move-result v11

    #@80
    if-nez v11, :cond_6c

    #@82
    .line 215
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@85
    move-result v11

    #@86
    if-eqz v11, :cond_89

    #@88
    goto :goto_6c

    #@89
    :cond_89
    add-int/lit8 v12, v12, 0x1

    #@8b
    goto :goto_34

    #@8c
    :cond_8c
    :goto_8c
    const-wide/16 v11, 0x1

    #@8e
    if-eqz v2, :cond_9b

    #@90
    .line 222
    sget-object v13, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@92
    if-eqz v13, :cond_9b

    #@94
    .line 223
    sget-object v13, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@96
    iget-wide v14, v13, Landroidx/constraintlayout/core/Metrics;->measures:J

    #@98
    add-long/2addr v14, v11

    #@99
    iput-wide v14, v13, Landroidx/constraintlayout/core/Metrics;->measures:J

    #@9b
    :cond_9b
    const/high16 v13, 0x40000000    # 2.0f

    #@9d
    if-ne v3, v13, :cond_a1

    #@9f
    if-eq v4, v13, :cond_a3

    #@a1
    :cond_a1
    if-eqz v9, :cond_a5

    #@a3
    :cond_a3
    const/4 v14, 0x1

    #@a4
    goto :goto_a6

    #@a5
    :cond_a5
    move v14, v10

    #@a6
    :goto_a6
    and-int/2addr v2, v14

    #@a7
    const/4 v14, 0x2

    #@a8
    if-eqz v2, :cond_10e

    #@aa
    .line 236
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    #@ad
    move-result v15

    #@ae
    move/from16 v11, p6

    #@b0
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    #@b3
    move-result v11

    #@b4
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    #@b7
    move-result v12

    #@b8
    move/from16 v15, p8

    #@ba
    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    #@bd
    move-result v12

    #@be
    if-ne v3, v13, :cond_cc

    #@c0
    .line 239
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@c3
    move-result v15

    #@c4
    if-eq v15, v11, :cond_cc

    #@c6
    .line 240
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    #@c9
    .line 241
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    #@cc
    :cond_cc
    if-ne v4, v13, :cond_da

    #@ce
    .line 243
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@d1
    move-result v11

    #@d2
    if-eq v11, v12, :cond_da

    #@d4
    .line 244
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    #@d7
    .line 245
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    #@da
    :cond_da
    if-ne v3, v13, :cond_e4

    #@dc
    if-ne v4, v13, :cond_e4

    #@de
    .line 248
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    #@e1
    move-result v9

    #@e2
    move v12, v14

    #@e3
    goto :goto_fe

    #@e4
    .line 251
    :cond_e4
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    #@e7
    move-result v11

    #@e8
    if-ne v3, v13, :cond_f1

    #@ea
    .line 253
    invoke-virtual {v1, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    #@ed
    move-result v12

    #@ee
    and-int/2addr v11, v12

    #@ef
    const/4 v12, 0x1

    #@f0
    goto :goto_f2

    #@f1
    :cond_f1
    move v12, v10

    #@f2
    :goto_f2
    if-ne v4, v13, :cond_fd

    #@f4
    const/4 v15, 0x1

    #@f5
    .line 257
    invoke-virtual {v1, v9, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    #@f8
    move-result v9

    #@f9
    and-int/2addr v9, v11

    #@fa
    add-int/lit8 v12, v12, 0x1

    #@fc
    goto :goto_fe

    #@fd
    :cond_fd
    move v9, v11

    #@fe
    :goto_fe
    if-eqz v9, :cond_110

    #@100
    if-ne v3, v13, :cond_104

    #@102
    const/4 v15, 0x1

    #@103
    goto :goto_105

    #@104
    :cond_104
    move v15, v10

    #@105
    :goto_105
    if-ne v4, v13, :cond_109

    #@107
    const/4 v3, 0x1

    #@108
    goto :goto_10a

    #@109
    :cond_109
    move v3, v10

    #@10a
    .line 262
    :goto_10a
    invoke-virtual {v1, v15, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    #@10d
    goto :goto_110

    #@10e
    :cond_10e
    move v9, v10

    #@10f
    move v12, v9

    #@110
    :cond_110
    :goto_110
    if-eqz v9, :cond_114

    #@112
    if-eq v12, v14, :cond_327

    #@114
    .line 276
    :cond_114
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    #@117
    move-result v3

    #@118
    if-lez v6, :cond_11d

    #@11a
    .line 278
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@11d
    .line 284
    :cond_11d
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@120
    .line 287
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    #@122
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@125
    move-result v4

    #@126
    if-lez v6, :cond_13a

    #@128
    const-string v6, "First pass"

    #@12a
    const/4 v9, 0x0

    #@12b
    move-object/from16 p2, p0

    #@12d
    move-object/from16 p3, p1

    #@12f
    move-object/from16 p4, v6

    #@131
    move/from16 p5, v9

    #@133
    move/from16 p6, v7

    #@135
    move/from16 p7, v8

    #@137
    .line 291
    invoke-direct/range {p2 .. p7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    #@13a
    :cond_13a
    if-lez v4, :cond_323

    #@13c
    .line 300
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@13f
    move-result-object v6

    #@140
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@142
    if-ne v6, v9, :cond_146

    #@144
    const/4 v15, 0x1

    #@145
    goto :goto_147

    #@146
    :cond_146
    move v15, v10

    #@147
    .line 302
    :goto_147
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@14a
    move-result-object v6

    #@14b
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@14d
    if-ne v6, v9, :cond_151

    #@14f
    const/4 v6, 0x1

    #@150
    goto :goto_152

    #@151
    :cond_151
    move v6, v10

    #@152
    .line 304
    :goto_152
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@155
    move-result v9

    #@156
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@158
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinWidth()I

    #@15b
    move-result v11

    #@15c
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    #@15f
    move-result v9

    #@160
    .line 305
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@163
    move-result v11

    #@164
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@166
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinHeight()I

    #@169
    move-result v12

    #@16a
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    #@16d
    move-result v11

    #@16e
    move v12, v10

    #@16f
    move v13, v12

    #@170
    :goto_170
    if-ge v12, v4, :cond_213

    #@172
    .line 311
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    #@174
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@177
    move-result-object v10

    #@178
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17a
    .line 312
    instance-of v14, v10, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@17c
    if-nez v14, :cond_186

    #@17e
    move/from16 p8, v3

    #@180
    move/from16 v19, v7

    #@182
    move/from16 v18, v8

    #@184
    goto/16 :goto_207

    #@186
    .line 315
    :cond_186
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@189
    move-result v14

    #@18a
    move/from16 p8, v3

    #@18c
    .line 316
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@18f
    move-result v3

    #@190
    move/from16 v18, v8

    #@192
    .line 317
    sget v8, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    #@194
    invoke-direct {v0, v5, v10, v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    #@197
    move-result v8

    #@198
    or-int/2addr v8, v13

    #@199
    .line 318
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@19b
    if-eqz v13, :cond_1ac

    #@19d
    .line 319
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@19f
    move/from16 v19, v7

    #@1a1
    move/from16 p2, v8

    #@1a3
    iget-wide v7, v13, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    #@1a5
    const-wide/16 v16, 0x1

    #@1a7
    add-long v7, v7, v16

    #@1a9
    iput-wide v7, v13, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    #@1ab
    goto :goto_1b0

    #@1ac
    :cond_1ac
    move/from16 v19, v7

    #@1ae
    move/from16 p2, v8

    #@1b0
    .line 321
    :goto_1b0
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@1b3
    move-result v7

    #@1b4
    .line 322
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@1b7
    move-result v8

    #@1b8
    if-eq v7, v14, :cond_1db

    #@1ba
    .line 324
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@1bd
    if-eqz v15, :cond_1d9

    #@1bf
    .line 325
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    #@1c2
    move-result v7

    #@1c3
    if-le v7, v9, :cond_1d9

    #@1c5
    .line 326
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    #@1c8
    move-result v7

    #@1c9
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1cb
    .line 327
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ce
    move-result-object v13

    #@1cf
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@1d2
    move-result v13

    #@1d3
    add-int/2addr v7, v13

    #@1d4
    .line 328
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    #@1d7
    move-result v7

    #@1d8
    move v9, v7

    #@1d9
    :cond_1d9
    const/4 v7, 0x1

    #@1da
    goto :goto_1dd

    #@1db
    :cond_1db
    move/from16 v7, p2

    #@1dd
    :goto_1dd
    if-eq v8, v3, :cond_1ff

    #@1df
    .line 333
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@1e2
    if-eqz v6, :cond_1fe

    #@1e4
    .line 334
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    #@1e7
    move-result v3

    #@1e8
    if-le v3, v11, :cond_1fe

    #@1ea
    .line 335
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    #@1ed
    move-result v3

    #@1ee
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1f0
    .line 336
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f3
    move-result-object v7

    #@1f4
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@1f7
    move-result v7

    #@1f8
    add-int/2addr v3, v7

    #@1f9
    .line 337
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    #@1fc
    move-result v3

    #@1fd
    move v11, v3

    #@1fe
    :cond_1fe
    const/4 v7, 0x1

    #@1ff
    .line 341
    :cond_1ff
    check-cast v10, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@201
    .line 342
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needSolverPass()Z

    #@204
    move-result v3

    #@205
    or-int v13, v7, v3

    #@207
    :goto_207
    add-int/lit8 v12, v12, 0x1

    #@209
    move/from16 v3, p8

    #@20b
    move/from16 v8, v18

    #@20d
    move/from16 v7, v19

    #@20f
    const/4 v10, 0x0

    #@210
    const/4 v14, 0x2

    #@211
    goto/16 :goto_170

    #@213
    :cond_213
    move/from16 p8, v3

    #@215
    move/from16 v19, v7

    #@217
    move/from16 v18, v8

    #@219
    move v7, v14

    #@21a
    const/4 v3, 0x0

    #@21b
    :goto_21b
    if-ge v3, v7, :cond_320

    #@21d
    const/4 v8, 0x0

    #@21e
    :goto_21e
    if-ge v8, v4, :cond_2f9

    #@220
    .line 349
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    #@222
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@225
    move-result-object v10

    #@226
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@228
    .line 350
    instance-of v12, v10, Landroidx/constraintlayout/core/widgets/Helper;

    #@22a
    if-eqz v12, :cond_230

    #@22c
    instance-of v12, v10, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@22e
    if-eqz v12, :cond_255

    #@230
    :cond_230
    instance-of v12, v10, Landroidx/constraintlayout/core/widgets/Guideline;

    #@232
    if-eqz v12, :cond_235

    #@234
    goto :goto_255

    #@235
    .line 353
    :cond_235
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@238
    move-result v12

    #@239
    const/16 v14, 0x8

    #@23b
    if-ne v12, v14, :cond_23e

    #@23d
    goto :goto_255

    #@23e
    :cond_23e
    if-eqz v2, :cond_251

    #@240
    .line 356
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@242
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@244
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@246
    if-eqz v12, :cond_251

    #@248
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@24a
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@24c
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@24e
    if-eqz v12, :cond_251

    #@250
    goto :goto_255

    #@251
    .line 360
    :cond_251
    instance-of v12, v10, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@253
    if-eqz v12, :cond_25f

    #@255
    :cond_255
    :goto_255
    move/from16 v21, v2

    #@257
    move/from16 v22, v4

    #@259
    move-object/from16 v20, v5

    #@25b
    const-wide/16 v16, 0x1

    #@25d
    goto/16 :goto_2ee

    #@25f
    .line 364
    :cond_25f
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@262
    move-result v12

    #@263
    .line 365
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@266
    move-result v14

    #@267
    .line 366
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    #@26a
    move-result v7

    #@26b
    .line 368
    sget v20, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    #@26d
    move/from16 v21, v2

    #@26f
    const/4 v2, 0x1

    #@270
    if-ne v3, v2, :cond_274

    #@272
    .line 370
    sget v20, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    #@274
    :cond_274
    move/from16 v2, v20

    #@276
    .line 372
    invoke-direct {v0, v5, v10, v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    #@279
    move-result v2

    #@27a
    or-int/2addr v2, v13

    #@27b
    .line 380
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@27d
    if-eqz v13, :cond_28e

    #@27f
    .line 381
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@281
    move/from16 v22, v4

    #@283
    move-object/from16 v20, v5

    #@285
    iget-wide v4, v13, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    #@287
    const-wide/16 v16, 0x1

    #@289
    add-long v4, v4, v16

    #@28b
    iput-wide v4, v13, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    #@28d
    goto :goto_294

    #@28e
    :cond_28e
    move/from16 v22, v4

    #@290
    move-object/from16 v20, v5

    #@292
    const-wide/16 v16, 0x1

    #@294
    .line 384
    :goto_294
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@297
    move-result v4

    #@298
    .line 385
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@29b
    move-result v5

    #@29c
    if-eq v4, v12, :cond_2bd

    #@29e
    .line 388
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@2a1
    if-eqz v15, :cond_2bc

    #@2a3
    .line 389
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    #@2a6
    move-result v2

    #@2a7
    if-le v2, v9, :cond_2bc

    #@2a9
    .line 390
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    #@2ac
    move-result v2

    #@2ad
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2af
    .line 391
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2b2
    move-result-object v4

    #@2b3
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@2b6
    move-result v4

    #@2b7
    add-int/2addr v2, v4

    #@2b8
    .line 392
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    #@2bb
    move-result v9

    #@2bc
    :cond_2bc
    const/4 v2, 0x1

    #@2bd
    :cond_2bd
    if-eq v5, v14, :cond_2df

    #@2bf
    .line 400
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@2c2
    if-eqz v6, :cond_2de

    #@2c4
    .line 401
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    #@2c7
    move-result v2

    #@2c8
    if-le v2, v11, :cond_2de

    #@2ca
    .line 402
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    #@2cd
    move-result v2

    #@2ce
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2d0
    .line 403
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2d3
    move-result-object v4

    #@2d4
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@2d7
    move-result v4

    #@2d8
    add-int/2addr v2, v4

    #@2d9
    .line 404
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    #@2dc
    move-result v2

    #@2dd
    move v11, v2

    #@2de
    :cond_2de
    const/4 v2, 0x1

    #@2df
    .line 411
    :cond_2df
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    #@2e2
    move-result v4

    #@2e3
    if-eqz v4, :cond_2ed

    #@2e5
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    #@2e8
    move-result v4

    #@2e9
    if-eq v7, v4, :cond_2ed

    #@2eb
    const/4 v13, 0x1

    #@2ec
    goto :goto_2ee

    #@2ed
    :cond_2ed
    move v13, v2

    #@2ee
    :goto_2ee
    add-int/lit8 v8, v8, 0x1

    #@2f0
    move-object/from16 v5, v20

    #@2f2
    move/from16 v2, v21

    #@2f4
    move/from16 v4, v22

    #@2f6
    const/4 v7, 0x2

    #@2f7
    goto/16 :goto_21e

    #@2f9
    :cond_2f9
    move/from16 v21, v2

    #@2fb
    move/from16 v22, v4

    #@2fd
    move-object/from16 v20, v5

    #@2ff
    const-wide/16 v16, 0x1

    #@301
    if-eqz v13, :cond_320

    #@303
    const-string v2, "intermediate pass"

    #@305
    add-int/lit8 v3, v3, 0x1

    #@307
    move-object/from16 p2, p0

    #@309
    move-object/from16 p3, p1

    #@30b
    move-object/from16 p4, v2

    #@30d
    move/from16 p5, v3

    #@30f
    move/from16 p6, v19

    #@311
    move/from16 p7, v18

    #@313
    .line 419
    invoke-direct/range {p2 .. p7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    #@316
    move-object/from16 v5, v20

    #@318
    move/from16 v2, v21

    #@31a
    move/from16 v4, v22

    #@31c
    const/4 v7, 0x2

    #@31d
    const/4 v13, 0x0

    #@31e
    goto/16 :goto_21b

    #@320
    :cond_320
    move/from16 v2, p8

    #@322
    goto :goto_324

    #@323
    :cond_323
    move v2, v3

    #@324
    .line 426
    :goto_324
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    #@327
    :cond_327
    const-wide/16 v1, 0x0

    #@329
    return-wide v1
.end method

.method public updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 7

    #@0
    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 57
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_c
    if-ge v1, v0, :cond_2e

    #@e
    .line 59
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    .line 60
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@19
    move-result-object v3

    #@1a
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1c
    if-eq v3, v4, :cond_26

    #@1e
    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@21
    move-result-object v3

    #@22
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@24
    if-ne v3, v4, :cond_2b

    #@26
    .line 62
    :cond_26
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_c

    #@2e
    .line 65
    :cond_2e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    #@31
    return-void
.end method
