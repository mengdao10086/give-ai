.class Landroidx/constraintlayout/core/widgets/analyzer/BaselineDimensionDependency;
.super Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;
.source "BaselineDimensionDependency.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .registers 2

    #@0
    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    #@3
    return-void
.end method


# virtual methods
.method public update(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V
    .registers 3

    #@0
    .line 26
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BaselineDimensionDependency;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@2
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@4
    .line 27
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BaselineDimensionDependency;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    #@d
    move-result v0

    #@e
    iput v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@10
    const/4 p1, 0x1

    #@11
    .line 28
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BaselineDimensionDependency;->resolved:Z

    #@13
    return-void
.end method
