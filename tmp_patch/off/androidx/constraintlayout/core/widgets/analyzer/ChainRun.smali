.class public Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "ChainRun.java"


# instance fields
.field private chainStyle:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .registers 3

    #@0
    .line 36
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@3
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    #@5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@a
    .line 37
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@c
    .line 38
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->build()V

    #@f
    return-void
.end method

.method private build()V
    .registers 6

    #@0
    .line 78
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    .line 79
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@4
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7
    move-result-object v1

    #@8
    :goto_8
    move-object v4, v1

    #@9
    move-object v1, v0

    #@a
    move-object v0, v4

    #@b
    if-eqz v0, :cond_14

    #@d
    .line 82
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@f
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12
    move-result-object v1

    #@13
    goto :goto_8

    #@14
    .line 84
    :cond_14
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@18
    iget v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@1a
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 86
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@23
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@26
    move-result-object v0

    #@27
    :goto_27
    if-eqz v0, :cond_3b

    #@29
    .line 89
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@2b
    iget v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@2d
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 90
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@36
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@39
    move-result-object v0

    #@3a
    goto :goto_27

    #@3b
    .line 92
    :cond_3b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v0

    #@41
    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v1

    #@45
    const/4 v2, 0x1

    #@46
    if-eqz v1, :cond_60

    #@48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@4e
    .line 93
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@50
    if-nez v3, :cond_57

    #@52
    .line 94
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@54
    iput-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    #@56
    goto :goto_41

    #@57
    .line 95
    :cond_57
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@59
    if-ne v3, v2, :cond_41

    #@5b
    .line 96
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5d
    iput-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    #@5f
    goto :goto_41

    #@60
    .line 99
    :cond_60
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@62
    if-nez v0, :cond_74

    #@64
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@66
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@6c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_74

    #@72
    move v0, v2

    #@73
    goto :goto_75

    #@74
    :cond_74
    const/4 v0, 0x0

    #@75
    :goto_75
    if-eqz v0, :cond_90

    #@77
    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7c
    move-result v0

    #@7d
    if-le v0, v2, :cond_90

    #@7f
    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@84
    move-result v1

    #@85
    sub-int/2addr v1, v2

    #@86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@89
    move-result-object v0

    #@8a
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@8c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8e
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@90
    .line 103
    :cond_90
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@92
    if-nez v0, :cond_9b

    #@94
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@96
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalChainStyle()I

    #@99
    move-result v0

    #@9a
    goto :goto_a1

    #@9b
    :cond_9b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalChainStyle()I

    #@a0
    move-result v0

    #@a1
    :goto_a1
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    #@a3
    return-void
.end method

.method private getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 491
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_21

    #@9
    .line 492
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@11
    .line 493
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@13
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@16
    move-result v2

    #@17
    const/16 v3, 0x8

    #@19
    if-eq v2, v3, :cond_1e

    #@1b
    .line 494
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d
    return-object v0

    #@1e
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_1

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    return-object v0
.end method

.method private getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 5

    #@0
    .line 501
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_22

    #@a
    .line 502
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@12
    .line 503
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@17
    move-result v2

    #@18
    const/16 v3, 0x8

    #@1a
    if-eq v2, v3, :cond_1f

    #@1c
    .line 504
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1e
    return-object v0

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_8

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    return-object v0
.end method


# virtual methods
.method apply()V
    .registers 6

    #@0
    .line 513
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@12
    .line 514
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    #@15
    goto :goto_6

    #@16
    .line 516
    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    const/4 v1, 0x1

    #@1d
    if-ge v0, v1, :cond_20

    #@1f
    return-void

    #@20
    .line 522
    :cond_20
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@22
    const/4 v3, 0x0

    #@23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@29
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2b
    .line 523
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@2d
    sub-int/2addr v0, v1

    #@2e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@34
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@36
    .line 525
    iget v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@38
    if-nez v4, :cond_76

    #@3a
    .line 526
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3c
    .line 527
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3e
    .line 528
    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@41
    move-result-object v2

    #@42
    .line 529
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@45
    move-result v1

    #@46
    .line 530
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@49
    move-result-object v4

    #@4a
    if-eqz v4, :cond_52

    #@4c
    .line 532
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@51
    move-result v1

    #@52
    :cond_52
    if-eqz v2, :cond_59

    #@54
    .line 535
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@56
    invoke-virtual {p0, v4, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@59
    .line 537
    :cond_59
    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5c
    move-result-object v1

    #@5d
    .line 538
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@60
    move-result v0

    #@61
    .line 539
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@64
    move-result-object v2

    #@65
    if-eqz v2, :cond_6d

    #@67
    .line 541
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@69
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@6c
    move-result v0

    #@6d
    :cond_6d
    if-eqz v1, :cond_b1

    #@6f
    .line 544
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@71
    neg-int v0, v0

    #@72
    invoke-virtual {p0, v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@75
    goto :goto_b1

    #@76
    .line 547
    :cond_76
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@78
    .line 548
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7a
    .line 549
    invoke-virtual {p0, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@7d
    move-result-object v3

    #@7e
    .line 550
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@81
    move-result v2

    #@82
    .line 551
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@85
    move-result-object v4

    #@86
    if-eqz v4, :cond_8e

    #@88
    .line 553
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8a
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@8d
    move-result v2

    #@8e
    :cond_8e
    if-eqz v3, :cond_95

    #@90
    .line 556
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@92
    invoke-virtual {p0, v4, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@95
    .line 558
    :cond_95
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@98
    move-result-object v1

    #@99
    .line 559
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@9c
    move-result v0

    #@9d
    .line 560
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a0
    move-result-object v2

    #@a1
    if-eqz v2, :cond_a9

    #@a3
    .line 562
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@a8
    move-result v0

    #@a9
    :cond_a9
    if-eqz v1, :cond_b1

    #@ab
    .line 565
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@ad
    neg-int v0, v0

    #@ae
    invoke-virtual {p0, v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@b1
    .line 568
    :cond_b1
    :goto_b1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b3
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@b5
    .line 569
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b7
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@b9
    return-void
.end method

.method public applyToWidget()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 484
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 485
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@11
    .line 486
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    :cond_17
    return-void
.end method

.method clear()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 109
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    #@3
    .line 110
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_19

    #@f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@15
    .line 111
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    #@18
    goto :goto_9

    #@19
    :cond_19
    return-void
.end method

.method public getWrapDimension()J
    .registers 8

    #@0
    .line 66
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const-wide/16 v1, 0x0

    #@8
    const/4 v3, 0x0

    #@9
    :goto_9
    if-ge v3, v0, :cond_27

    #@b
    .line 69
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@13
    .line 70
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@15
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@17
    int-to-long v5, v5

    #@18
    add-long/2addr v1, v5

    #@19
    .line 71
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    #@1c
    move-result-wide v5

    #@1d
    add-long/2addr v1, v5

    #@1e
    .line 72
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@20
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@22
    int-to-long v4, v4

    #@23
    add-long/2addr v1, v4

    #@24
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_9

    #@27
    :cond_27
    return-wide v1
.end method

.method reset()V
    .registers 3

    #@0
    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2
    const/4 v1, 0x0

    #@3
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@5
    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@7
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@9
    return-void
.end method

.method supportsWrapComputation()Z
    .registers 5

    #@0
    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_1c

    #@a
    .line 57
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@12
    .line 58
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_19

    #@18
    return v1

    #@19
    :cond_19
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_8

    #@1c
    :cond_1c
    const/4 v0, 0x1

    #@1d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "ChainRun "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 44
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@9
    if-nez v1, :cond_e

    #@b
    const-string v1, "horizontal : "

    #@d
    goto :goto_10

    #@e
    :cond_e
    const-string v1, "vertical : "

    #@10
    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 45
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_33

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@25
    const-string v3, "<"

    #@27
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    const-string v2, "> "

    #@2f
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    goto :goto_19

    #@33
    .line 50
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .registers 24

    #@0
    move-object/from16 v0, p0

    #@2
    .line 123
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@4
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@6
    if-eqz v1, :cond_40f

    #@8
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@a
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@c
    if-nez v1, :cond_10

    #@e
    goto/16 :goto_40f

    #@10
    .line 127
    :cond_10
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@15
    move-result-object v1

    #@16
    .line 129
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@18
    if-eqz v2, :cond_21

    #@1a
    .line 130
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@1c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@1f
    move-result v1

    #@20
    goto :goto_22

    #@21
    :cond_21
    const/4 v1, 0x0

    #@22
    .line 132
    :goto_22
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@24
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@26
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@28
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@2a
    sub-int/2addr v2, v4

    #@2b
    .line 137
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v4

    #@31
    const/4 v5, 0x0

    #@32
    :goto_32
    const/4 v6, -0x1

    #@33
    const/16 v7, 0x8

    #@35
    if-ge v5, v4, :cond_4a

    #@37
    .line 141
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v8

    #@3d
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@3f
    .line 142
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@41
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@44
    move-result v8

    #@45
    if-ne v8, v7, :cond_4b

    #@47
    add-int/lit8 v5, v5, 0x1

    #@49
    goto :goto_32

    #@4a
    :cond_4a
    move v5, v6

    #@4b
    :cond_4b
    add-int/lit8 v8, v4, -0x1

    #@4d
    move v9, v8

    #@4e
    :goto_4e
    if-ltz v9, :cond_64

    #@50
    .line 151
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v10

    #@56
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@58
    .line 152
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5a
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@5d
    move-result v10

    #@5e
    if-ne v10, v7, :cond_63

    #@60
    add-int/lit8 v9, v9, -0x1

    #@62
    goto :goto_4e

    #@63
    :cond_63
    move v6, v9

    #@64
    :cond_64
    const/4 v9, 0x0

    #@65
    :goto_65
    const/4 v11, 0x2

    #@66
    const/4 v12, 0x1

    #@67
    if-ge v9, v11, :cond_104

    #@69
    const/4 v13, 0x0

    #@6a
    const/4 v14, 0x0

    #@6b
    const/4 v15, 0x0

    #@6c
    const/16 v16, 0x0

    #@6e
    const/16 v17, 0x0

    #@70
    :goto_70
    if-ge v13, v4, :cond_f6

    #@72
    .line 160
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v3

    #@78
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@7a
    .line 161
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7c
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@7f
    move-result v11

    #@80
    if-ne v11, v7, :cond_84

    #@82
    goto/16 :goto_ef

    #@84
    :cond_84
    add-int/lit8 v16, v16, 0x1

    #@86
    if-lez v13, :cond_8f

    #@88
    if-lt v13, v5, :cond_8f

    #@8a
    .line 166
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@8c
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@8e
    add-int/2addr v14, v11

    #@8f
    .line 168
    :cond_8f
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@91
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@93
    .line 169
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@95
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@97
    if-eq v7, v10, :cond_9b

    #@99
    move v7, v12

    #@9a
    goto :goto_9c

    #@9b
    :cond_9b
    const/4 v7, 0x0

    #@9c
    :goto_9c
    if-eqz v7, :cond_bc

    #@9e
    .line 171
    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@a0
    if-nez v10, :cond_ad

    #@a2
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a4
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@a6
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@a8
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@aa
    if-nez v10, :cond_ad

    #@ac
    return-void

    #@ad
    .line 174
    :cond_ad
    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@af
    if-ne v10, v12, :cond_d0

    #@b1
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b3
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@b5
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@b7
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@b9
    if-nez v10, :cond_d0

    #@bb
    return-void

    #@bc
    .line 177
    :cond_bc
    iget v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    #@be
    if-ne v10, v12, :cond_c9

    #@c0
    if-nez v9, :cond_c9

    #@c2
    .line 179
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@c4
    iget v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    #@c6
    add-int/lit8 v15, v15, 0x1

    #@c8
    goto :goto_cf

    #@c9
    .line 181
    :cond_c9
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@cb
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@cd
    if-eqz v10, :cond_d0

    #@cf
    :goto_cf
    move v7, v12

    #@d0
    :cond_d0
    if-nez v7, :cond_e4

    #@d2
    add-int/lit8 v15, v15, 0x1

    #@d4
    .line 186
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d6
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@d8
    iget v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@da
    aget v7, v7, v10

    #@dc
    const/4 v10, 0x0

    #@dd
    cmpl-float v11, v7, v10

    #@df
    if-ltz v11, :cond_e5

    #@e1
    add-float v17, v17, v7

    #@e3
    goto :goto_e5

    #@e4
    :cond_e4
    add-int/2addr v14, v11

    #@e5
    :cond_e5
    :goto_e5
    if-ge v13, v8, :cond_ef

    #@e7
    if-ge v13, v6, :cond_ef

    #@e9
    .line 194
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@eb
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@ed
    neg-int v3, v3

    #@ee
    add-int/2addr v14, v3

    #@ef
    :cond_ef
    :goto_ef
    add-int/lit8 v13, v13, 0x1

    #@f1
    const/16 v7, 0x8

    #@f3
    const/4 v11, 0x2

    #@f4
    goto/16 :goto_70

    #@f6
    :cond_f6
    if-lt v14, v2, :cond_101

    #@f8
    if-nez v15, :cond_fb

    #@fa
    goto :goto_101

    #@fb
    :cond_fb
    add-int/lit8 v9, v9, 0x1

    #@fd
    const/16 v7, 0x8

    #@ff
    goto/16 :goto_65

    #@101
    :cond_101
    :goto_101
    move/from16 v3, v16

    #@103
    goto :goto_109

    #@104
    :cond_104
    const/4 v3, 0x0

    #@105
    const/4 v14, 0x0

    #@106
    const/4 v15, 0x0

    #@107
    const/16 v17, 0x0

    #@109
    .line 207
    :goto_109
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@10b
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@10d
    if-eqz v1, :cond_113

    #@10f
    .line 209
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@111
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@113
    :cond_113
    const/high16 v9, 0x3f000000    # 0.5f

    #@115
    if-le v14, v2, :cond_12a

    #@117
    const/high16 v10, 0x40000000    # 2.0f

    #@119
    if-eqz v1, :cond_123

    #@11b
    sub-int v11, v14, v2

    #@11d
    int-to-float v11, v11

    #@11e
    div-float/2addr v11, v10

    #@11f
    add-float/2addr v11, v9

    #@120
    float-to-int v10, v11

    #@121
    add-int/2addr v7, v10

    #@122
    goto :goto_12a

    #@123
    :cond_123
    sub-int v11, v14, v2

    #@125
    int-to-float v11, v11

    #@126
    div-float/2addr v11, v10

    #@127
    add-float/2addr v11, v9

    #@128
    float-to-int v10, v11

    #@129
    sub-int/2addr v7, v10

    #@12a
    :cond_12a
    :goto_12a
    if-lez v15, :cond_212

    #@12c
    sub-int v10, v2, v14

    #@12e
    int-to-float v10, v10

    #@12f
    int-to-float v11, v15

    #@130
    div-float v11, v10, v11

    #@132
    add-float/2addr v11, v9

    #@133
    float-to-int v11, v11

    #@134
    const/4 v13, 0x0

    #@135
    const/16 v16, 0x0

    #@137
    :goto_137
    if-ge v13, v4, :cond_1c7

    #@139
    .line 224
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@13b
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13e
    move-result-object v12

    #@13f
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@141
    .line 225
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@143
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@146
    move-result v9

    #@147
    move/from16 v18, v11

    #@149
    const/16 v11, 0x8

    #@14b
    if-ne v9, v11, :cond_14e

    #@14d
    goto :goto_1b2

    #@14e
    .line 228
    :cond_14e
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@150
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@152
    if-ne v9, v11, :cond_1b2

    #@154
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@156
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@158
    if-nez v9, :cond_1b2

    #@15a
    const/4 v9, 0x0

    #@15b
    cmpl-float v11, v17, v9

    #@15d
    if-lez v11, :cond_16f

    #@15f
    .line 231
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@161
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@163
    iget v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@165
    aget v9, v11, v9

    #@167
    mul-float/2addr v9, v10

    #@168
    div-float v9, v9, v17

    #@16a
    const/high16 v11, 0x3f000000    # 0.5f

    #@16c
    add-float/2addr v9, v11

    #@16d
    float-to-int v9, v9

    #@16e
    goto :goto_171

    #@16f
    :cond_16f
    move/from16 v9, v18

    #@171
    .line 237
    :goto_171
    iget v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@173
    if-nez v11, :cond_180

    #@175
    .line 238
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@177
    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@179
    move/from16 v19, v10

    #@17b
    .line 239
    iget-object v10, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17d
    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@17f
    goto :goto_18a

    #@180
    :cond_180
    move/from16 v19, v10

    #@182
    .line 241
    iget-object v10, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@184
    iget v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@186
    .line 242
    iget-object v10, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@188
    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@18a
    :goto_18a
    move/from16 v20, v14

    #@18c
    .line 244
    iget v14, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    #@18e
    move/from16 v21, v7

    #@190
    const/4 v7, 0x1

    #@191
    if-ne v14, v7, :cond_19c

    #@193
    .line 245
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@195
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    #@197
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    #@19a
    move-result v7

    #@19b
    goto :goto_19d

    #@19c
    :cond_19c
    move v7, v9

    #@19d
    .line 247
    :goto_19d
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    #@1a0
    move-result v7

    #@1a1
    if-lez v11, :cond_1a7

    #@1a3
    .line 249
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    #@1a6
    move-result v7

    #@1a7
    :cond_1a7
    if-eq v7, v9, :cond_1ac

    #@1a9
    add-int/lit8 v16, v16, 0x1

    #@1ab
    move v9, v7

    #@1ac
    .line 255
    :cond_1ac
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@1ae
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@1b1
    goto :goto_1b8

    #@1b2
    :cond_1b2
    :goto_1b2
    move/from16 v21, v7

    #@1b4
    move/from16 v19, v10

    #@1b6
    move/from16 v20, v14

    #@1b8
    :goto_1b8
    add-int/lit8 v13, v13, 0x1

    #@1ba
    move/from16 v11, v18

    #@1bc
    move/from16 v10, v19

    #@1be
    move/from16 v14, v20

    #@1c0
    move/from16 v7, v21

    #@1c2
    const/high16 v9, 0x3f000000    # 0.5f

    #@1c4
    const/4 v12, 0x1

    #@1c5
    goto/16 :goto_137

    #@1c7
    :cond_1c7
    move/from16 v21, v7

    #@1c9
    move/from16 v20, v14

    #@1cb
    if-lez v16, :cond_203

    #@1cd
    sub-int v15, v15, v16

    #@1cf
    const/4 v7, 0x0

    #@1d0
    const/4 v9, 0x0

    #@1d1
    :goto_1d1
    if-ge v7, v4, :cond_201

    #@1d3
    .line 263
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@1d5
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d8
    move-result-object v10

    #@1d9
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@1db
    .line 264
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1dd
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@1e0
    move-result v11

    #@1e1
    const/16 v12, 0x8

    #@1e3
    if-ne v11, v12, :cond_1e6

    #@1e5
    goto :goto_1fe

    #@1e6
    :cond_1e6
    if-lez v7, :cond_1ef

    #@1e8
    if-lt v7, v5, :cond_1ef

    #@1ea
    .line 268
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1ec
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@1ee
    add-int/2addr v9, v11

    #@1ef
    .line 270
    :cond_1ef
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@1f1
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@1f3
    add-int/2addr v9, v11

    #@1f4
    if-ge v7, v8, :cond_1fe

    #@1f6
    if-ge v7, v6, :cond_1fe

    #@1f8
    .line 272
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1fa
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@1fc
    neg-int v10, v10

    #@1fd
    add-int/2addr v9, v10

    #@1fe
    :cond_1fe
    :goto_1fe
    add-int/lit8 v7, v7, 0x1

    #@200
    goto :goto_1d1

    #@201
    :cond_201
    move v14, v9

    #@202
    goto :goto_205

    #@203
    :cond_203
    move/from16 v14, v20

    #@205
    .line 276
    :goto_205
    iget v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    #@207
    const/4 v9, 0x2

    #@208
    if-ne v7, v9, :cond_210

    #@20a
    if-nez v16, :cond_210

    #@20c
    const/4 v7, 0x0

    #@20d
    .line 277
    iput v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    #@20f
    goto :goto_218

    #@210
    :cond_210
    const/4 v7, 0x0

    #@211
    goto :goto_218

    #@212
    :cond_212
    move/from16 v21, v7

    #@214
    move/from16 v20, v14

    #@216
    const/4 v7, 0x0

    #@217
    const/4 v9, 0x2

    #@218
    :goto_218
    if-le v14, v2, :cond_21c

    #@21a
    .line 282
    iput v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    #@21c
    :cond_21c
    if-lez v3, :cond_224

    #@21e
    if-nez v15, :cond_224

    #@220
    if-ne v5, v6, :cond_224

    #@222
    .line 287
    iput v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    #@224
    .line 290
    :cond_224
    iget v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    #@226
    const/4 v10, 0x1

    #@227
    if-ne v9, v10, :cond_2c7

    #@229
    if-le v3, v10, :cond_22f

    #@22b
    sub-int/2addr v2, v14

    #@22c
    sub-int/2addr v3, v10

    #@22d
    .line 293
    div-int/2addr v2, v3

    #@22e
    goto :goto_236

    #@22f
    :cond_22f
    if-ne v3, v10, :cond_235

    #@231
    sub-int/2addr v2, v14

    #@232
    const/4 v3, 0x2

    #@233
    .line 295
    div-int/2addr v2, v3

    #@234
    goto :goto_236

    #@235
    :cond_235
    move v2, v7

    #@236
    :goto_236
    if-lez v15, :cond_239

    #@238
    move v2, v7

    #@239
    :cond_239
    move v3, v7

    #@23a
    move/from16 v7, v21

    #@23c
    :goto_23c
    if-ge v3, v4, :cond_40f

    #@23e
    if-eqz v1, :cond_245

    #@240
    add-int/lit8 v9, v3, 0x1

    #@242
    sub-int v9, v4, v9

    #@244
    goto :goto_246

    #@245
    :cond_245
    move v9, v3

    #@246
    .line 305
    :goto_246
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@248
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24b
    move-result-object v9

    #@24c
    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@24e
    .line 306
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@250
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@253
    move-result v10

    #@254
    const/16 v11, 0x8

    #@256
    if-ne v10, v11, :cond_263

    #@258
    .line 307
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@25a
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@25d
    .line 308
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@25f
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@262
    goto :goto_2c3

    #@263
    :cond_263
    if-lez v3, :cond_26a

    #@265
    if-eqz v1, :cond_269

    #@267
    sub-int/2addr v7, v2

    #@268
    goto :goto_26a

    #@269
    :cond_269
    add-int/2addr v7, v2

    #@26a
    :cond_26a
    :goto_26a
    if-lez v3, :cond_27b

    #@26c
    if-lt v3, v5, :cond_27b

    #@26e
    if-eqz v1, :cond_276

    #@270
    .line 320
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@272
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@274
    sub-int/2addr v7, v10

    #@275
    goto :goto_27b

    #@276
    .line 322
    :cond_276
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@278
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@27a
    add-int/2addr v7, v10

    #@27b
    :cond_27b
    :goto_27b
    if-eqz v1, :cond_283

    #@27d
    .line 327
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@27f
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@282
    goto :goto_288

    #@283
    .line 329
    :cond_283
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@285
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@288
    .line 332
    :goto_288
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@28a
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@28c
    .line 333
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28e
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@290
    if-ne v11, v12, :cond_29b

    #@292
    iget v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    #@294
    const/4 v12, 0x1

    #@295
    if-ne v11, v12, :cond_29b

    #@297
    .line 335
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@299
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    #@29b
    :cond_29b
    if-eqz v1, :cond_29f

    #@29d
    sub-int/2addr v7, v10

    #@29e
    goto :goto_2a0

    #@29f
    :cond_29f
    add-int/2addr v7, v10

    #@2a0
    :goto_2a0
    if-eqz v1, :cond_2a8

    #@2a2
    .line 344
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2a4
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@2a7
    goto :goto_2ad

    #@2a8
    .line 346
    :cond_2a8
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2aa
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@2ad
    :goto_2ad
    const/4 v10, 0x1

    #@2ae
    .line 348
    iput-boolean v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    #@2b0
    if-ge v3, v8, :cond_2c3

    #@2b2
    if-ge v3, v6, :cond_2c3

    #@2b4
    if-eqz v1, :cond_2bd

    #@2b6
    .line 351
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2b8
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@2ba
    neg-int v9, v9

    #@2bb
    sub-int/2addr v7, v9

    #@2bc
    goto :goto_2c3

    #@2bd
    .line 353
    :cond_2bd
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2bf
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@2c1
    neg-int v9, v9

    #@2c2
    add-int/2addr v7, v9

    #@2c3
    :cond_2c3
    :goto_2c3
    add-int/lit8 v3, v3, 0x1

    #@2c5
    goto/16 :goto_23c

    #@2c7
    :cond_2c7
    if-nez v9, :cond_35d

    #@2c9
    sub-int/2addr v2, v14

    #@2ca
    const/4 v9, 0x1

    #@2cb
    add-int/2addr v3, v9

    #@2cc
    .line 358
    div-int/2addr v2, v3

    #@2cd
    if-lez v15, :cond_2d0

    #@2cf
    move v2, v7

    #@2d0
    :cond_2d0
    move v3, v7

    #@2d1
    move/from16 v7, v21

    #@2d3
    :goto_2d3
    if-ge v3, v4, :cond_40f

    #@2d5
    if-eqz v1, :cond_2dc

    #@2d7
    add-int/lit8 v9, v3, 0x1

    #@2d9
    sub-int v9, v4, v9

    #@2db
    goto :goto_2dd

    #@2dc
    :cond_2dc
    move v9, v3

    #@2dd
    .line 367
    :goto_2dd
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@2df
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e2
    move-result-object v9

    #@2e3
    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@2e5
    .line 368
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2e7
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@2ea
    move-result v10

    #@2eb
    const/16 v11, 0x8

    #@2ed
    if-ne v10, v11, :cond_2fa

    #@2ef
    .line 369
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2f1
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@2f4
    .line 370
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2f6
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@2f9
    goto :goto_359

    #@2fa
    :cond_2fa
    if-eqz v1, :cond_2fe

    #@2fc
    sub-int/2addr v7, v2

    #@2fd
    goto :goto_2ff

    #@2fe
    :cond_2fe
    add-int/2addr v7, v2

    #@2ff
    :goto_2ff
    if-lez v3, :cond_310

    #@301
    if-lt v3, v5, :cond_310

    #@303
    if-eqz v1, :cond_30b

    #@305
    .line 380
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@307
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@309
    sub-int/2addr v7, v10

    #@30a
    goto :goto_310

    #@30b
    .line 382
    :cond_30b
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@30d
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@30f
    add-int/2addr v7, v10

    #@310
    :cond_310
    :goto_310
    if-eqz v1, :cond_318

    #@312
    .line 387
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@314
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@317
    goto :goto_31d

    #@318
    .line 389
    :cond_318
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@31a
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@31d
    .line 392
    :goto_31d
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@31f
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@321
    .line 393
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@323
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@325
    if-ne v11, v12, :cond_334

    #@327
    iget v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    #@329
    const/4 v12, 0x1

    #@32a
    if-ne v11, v12, :cond_334

    #@32c
    .line 395
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@32e
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    #@330
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@333
    move-result v10

    #@334
    :cond_334
    if-eqz v1, :cond_338

    #@336
    sub-int/2addr v7, v10

    #@337
    goto :goto_339

    #@338
    :cond_338
    add-int/2addr v7, v10

    #@339
    :goto_339
    if-eqz v1, :cond_341

    #@33b
    .line 405
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@33d
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@340
    goto :goto_346

    #@341
    .line 407
    :cond_341
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@343
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@346
    :goto_346
    if-ge v3, v8, :cond_359

    #@348
    if-ge v3, v6, :cond_359

    #@34a
    if-eqz v1, :cond_353

    #@34c
    .line 411
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@34e
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@350
    neg-int v9, v9

    #@351
    sub-int/2addr v7, v9

    #@352
    goto :goto_359

    #@353
    .line 413
    :cond_353
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@355
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@357
    neg-int v9, v9

    #@358
    add-int/2addr v7, v9

    #@359
    :cond_359
    :goto_359
    add-int/lit8 v3, v3, 0x1

    #@35b
    goto/16 :goto_2d3

    #@35d
    :cond_35d
    const/4 v3, 0x2

    #@35e
    if-ne v9, v3, :cond_40f

    #@360
    .line 418
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@362
    if-nez v3, :cond_36b

    #@364
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@366
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    #@369
    move-result v3

    #@36a
    goto :goto_371

    #@36b
    :cond_36b
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@36d
    .line 419
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    #@370
    move-result v3

    #@371
    :goto_371
    if-eqz v1, :cond_377

    #@373
    const/high16 v9, 0x3f800000    # 1.0f

    #@375
    sub-float v3, v9, v3

    #@377
    :cond_377
    sub-int/2addr v2, v14

    #@378
    int-to-float v2, v2

    #@379
    mul-float/2addr v2, v3

    #@37a
    const/high16 v3, 0x3f000000    # 0.5f

    #@37c
    add-float/2addr v2, v3

    #@37d
    float-to-int v2, v2

    #@37e
    if-ltz v2, :cond_382

    #@380
    if-lez v15, :cond_383

    #@382
    :cond_382
    move v2, v7

    #@383
    :cond_383
    if-eqz v1, :cond_388

    #@385
    sub-int v2, v21, v2

    #@387
    goto :goto_38a

    #@388
    :cond_388
    add-int v2, v21, v2

    #@38a
    :goto_38a
    move v3, v7

    #@38b
    :goto_38b
    if-ge v3, v4, :cond_40f

    #@38d
    if-eqz v1, :cond_394

    #@38f
    add-int/lit8 v7, v3, 0x1

    #@391
    sub-int v7, v4, v7

    #@393
    goto :goto_395

    #@394
    :cond_394
    move v7, v3

    #@395
    .line 437
    :goto_395
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@397
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39a
    move-result-object v7

    #@39b
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@39d
    .line 438
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@39f
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@3a2
    move-result v9

    #@3a3
    const/16 v10, 0x8

    #@3a5
    if-ne v9, v10, :cond_3b3

    #@3a7
    .line 439
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3a9
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@3ac
    .line 440
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3ae
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@3b1
    const/4 v12, 0x1

    #@3b2
    goto :goto_40b

    #@3b3
    :cond_3b3
    if-lez v3, :cond_3c4

    #@3b5
    if-lt v3, v5, :cond_3c4

    #@3b7
    if-eqz v1, :cond_3bf

    #@3b9
    .line 445
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3bb
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@3bd
    sub-int/2addr v2, v9

    #@3be
    goto :goto_3c4

    #@3bf
    .line 447
    :cond_3bf
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3c1
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@3c3
    add-int/2addr v2, v9

    #@3c4
    :cond_3c4
    :goto_3c4
    if-eqz v1, :cond_3cc

    #@3c6
    .line 451
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3c8
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@3cb
    goto :goto_3d1

    #@3cc
    .line 453
    :cond_3cc
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3ce
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@3d1
    .line 456
    :goto_3d1
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@3d3
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@3d5
    .line 457
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3d7
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3d9
    if-ne v11, v12, :cond_3e5

    #@3db
    iget v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    #@3dd
    const/4 v12, 0x1

    #@3de
    if-ne v11, v12, :cond_3e6

    #@3e0
    .line 459
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@3e2
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    #@3e4
    goto :goto_3e6

    #@3e5
    :cond_3e5
    const/4 v12, 0x1

    #@3e6
    :cond_3e6
    :goto_3e6
    if-eqz v1, :cond_3ea

    #@3e8
    sub-int/2addr v2, v9

    #@3e9
    goto :goto_3eb

    #@3ea
    :cond_3ea
    add-int/2addr v2, v9

    #@3eb
    :goto_3eb
    if-eqz v1, :cond_3f3

    #@3ed
    .line 468
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3ef
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@3f2
    goto :goto_3f8

    #@3f3
    .line 470
    :cond_3f3
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3f5
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@3f8
    :goto_3f8
    if-ge v3, v8, :cond_40b

    #@3fa
    if-ge v3, v6, :cond_40b

    #@3fc
    if-eqz v1, :cond_405

    #@3fe
    .line 474
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@400
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@402
    neg-int v7, v7

    #@403
    sub-int/2addr v2, v7

    #@404
    goto :goto_40b

    #@405
    .line 476
    :cond_405
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@407
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@409
    neg-int v7, v7

    #@40a
    add-int/2addr v2, v7

    #@40b
    :cond_40b
    :goto_40b
    add-int/lit8 v3, v3, 0x1

    #@40d
    goto/16 :goto_38b

    #@40f
    :cond_40f
    :goto_40f
    return-void
.end method
