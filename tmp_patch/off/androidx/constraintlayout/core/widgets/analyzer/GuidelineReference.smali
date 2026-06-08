.class Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "GuidelineReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 3

    #@0
    .line 25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@3
    .line 26
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->clear()V

    #@8
    .line 27
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->clear()V

    #@d
    .line 28
    check-cast p1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@12
    move-result p1

    #@13
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->orientation:I

    #@15
    return-void
.end method

.method private addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V
    .registers 3

    #@0
    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 49
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    return-void
.end method


# virtual methods
.method apply()V
    .registers 6

    #@0
    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@4
    .line 70
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    #@7
    move-result v1

    #@8
    .line 71
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    #@b
    move-result v2

    #@c
    .line 72
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    #@f
    .line 73
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@12
    move-result v0

    #@13
    const/4 v3, -0x1

    #@14
    const/4 v4, 0x1

    #@15
    if-ne v0, v4, :cond_98

    #@17
    if-eq v1, v3, :cond_3c

    #@19
    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@1d
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1f
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@21
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@23
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@25
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 76
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@2e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@30
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@32
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@34
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    .line 77
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@39
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@3b
    goto :goto_84

    #@3c
    :cond_3c
    if-eq v2, v3, :cond_62

    #@3e
    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@40
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@42
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@44
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@46
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@48
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@4a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4d
    .line 80
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@4f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@51
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@53
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@55
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@57
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5e
    neg-int v1, v2

    #@5f
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@61
    goto :goto_84

    #@62
    .line 83
    :cond_62
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@64
    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    #@66
    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@68
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@6a
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6c
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6e
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@70
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@75
    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@77
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@79
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@7b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@7d
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@7f
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@84
    .line 88
    :goto_84
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@86
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@88
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@8a
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    #@8d
    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@91
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@93
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    #@96
    goto/16 :goto_117

    #@98
    :cond_98
    if-eq v1, v3, :cond_bd

    #@9a
    .line 92
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@9c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@9e
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a0
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a2
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@a4
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@a6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a9
    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ab
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ad
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@af
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b1
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@b3
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b8
    .line 94
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@ba
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@bc
    goto :goto_105

    #@bd
    :cond_bd
    if-eq v2, v3, :cond_e3

    #@bf
    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@c1
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@c3
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c5
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c7
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@c9
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@cb
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ce
    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d0
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@d4
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@d6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@d8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@da
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@dd
    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@df
    neg-int v1, v2

    #@e0
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@e2
    goto :goto_105

    #@e3
    .line 100
    :cond_e3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@e5
    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    #@e7
    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@e9
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@eb
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ed
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ef
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@f1
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@f3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f6
    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@fa
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@fc
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@fe
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@100
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@105
    .line 105
    :goto_105
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@107
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@109
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@10b
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    #@10e
    .line 106
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@110
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@112
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@114
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    #@117
    :goto_117
    return-void
.end method

.method public applyToWidget()V
    .registers 3

    #@0
    .line 112
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@4
    .line 113
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_15

    #@b
    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@f
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@11
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    #@14
    goto :goto_1e

    #@15
    .line 116
    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@19
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@1b
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    #@1e
    :goto_1e
    return-void
.end method

.method clear()V
    .registers 2

    #@0
    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    #@5
    return-void
.end method

.method reset()V
    .registers 3

    #@0
    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2
    const/4 v1, 0x0

    #@3
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@5
    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@7
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@9
    return-void
.end method

.method supportsWrapComputation()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .registers 3

    #@0
    .line 54
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@4
    if-nez p1, :cond_7

    #@6
    return-void

    #@7
    .line 57
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@9
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@b
    if-eqz p1, :cond_e

    #@d
    return-void

    #@e
    .line 61
    :cond_e
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@10
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@12
    const/4 v0, 0x0

    #@13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@19
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@1d
    .line 63
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@1f
    int-to-float p1, p1

    #@20
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    #@23
    move-result v0

    #@24
    mul-float/2addr p1, v0

    #@25
    const/high16 v0, 0x3f000000    # 0.5f

    #@27
    add-float/2addr p1, v0

    #@28
    float-to-int p1, p1

    #@29
    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2b
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@2e
    return-void
.end method
