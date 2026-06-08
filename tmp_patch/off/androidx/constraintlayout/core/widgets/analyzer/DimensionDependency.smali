.class Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;
.super Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
.source "DimensionDependency.java"


# instance fields
.field public wrapValue:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .registers 2

    #@0
    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    #@3
    .line 25
    instance-of p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@5
    if-eqz p1, :cond_c

    #@7
    .line 26
    sget-object p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    #@9
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    #@b
    goto :goto_10

    #@c
    .line 28
    :cond_c
    sget-object p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    #@e
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    #@10
    :goto_10
    return-void
.end method


# virtual methods
.method public resolve(I)V
    .registers 3

    #@0
    .line 33
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@8
    .line 37
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@a
    .line 38
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    #@c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object p1

    #@10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_20

    #@16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@1c
    .line 39
    invoke-interface {v0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;->update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    #@1f
    goto :goto_10

    #@20
    :cond_20
    return-void
.end method
