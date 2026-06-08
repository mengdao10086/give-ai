.class public Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "HorizontalWidgetRun.java"


# static fields
.field private static tempDimensions:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 37
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@5
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 3

    #@0
    .line 40
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@3
    .line 41
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    #@7
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    #@9
    .line 42
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    #@d
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    #@f
    const/4 p1, 0x0

    #@10
    .line 43
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->orientation:I

    #@12
    return-void
.end method

.method private computeInsetRatio([IIIIIFI)V
    .registers 10

    #@0
    sub-int/2addr p3, p2

    #@1
    sub-int/2addr p5, p4

    #@2
    const/4 p2, -0x1

    #@3
    const/4 p4, 0x0

    #@4
    const/high16 v0, 0x3f000000    # 0.5f

    #@6
    const/4 v1, 0x1

    #@7
    if-eq p7, p2, :cond_20

    #@9
    if-eqz p7, :cond_17

    #@b
    if-eq p7, v1, :cond_e

    #@d
    goto :goto_35

    #@e
    :cond_e
    int-to-float p2, p3

    #@f
    mul-float/2addr p2, p6

    #@10
    add-float/2addr p2, v0

    #@11
    float-to-int p2, p2

    #@12
    .line 302
    aput p3, p1, p4

    #@14
    .line 303
    aput p2, p1, v1

    #@16
    goto :goto_35

    #@17
    :cond_17
    int-to-float p2, p5

    #@18
    mul-float/2addr p2, p6

    #@19
    add-float/2addr p2, v0

    #@1a
    float-to-int p2, p2

    #@1b
    .line 296
    aput p2, p1, p4

    #@1d
    .line 297
    aput p5, p1, v1

    #@1f
    goto :goto_35

    #@20
    :cond_20
    int-to-float p2, p5

    #@21
    mul-float/2addr p2, p6

    #@22
    add-float/2addr p2, v0

    #@23
    float-to-int p2, p2

    #@24
    int-to-float p7, p3

    #@25
    div-float/2addr p7, p6

    #@26
    add-float/2addr p7, v0

    #@27
    float-to-int p6, p7

    #@28
    if-gt p2, p3, :cond_2f

    #@2a
    .line 286
    aput p2, p1, p4

    #@2c
    .line 287
    aput p5, p1, v1

    #@2e
    goto :goto_35

    #@2f
    :cond_2f
    if-gt p6, p5, :cond_35

    #@31
    .line 289
    aput p3, p1, p4

    #@33
    .line 290
    aput p6, p1, v1

    #@35
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method apply()V
    .registers 6

    #@0
    .line 83
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@11
    .line 86
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@13
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@15
    if-nez v0, :cond_94

    #@17
    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@19
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1f
    .line 88
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@21
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@23
    if-eq v0, v1, :cond_d6

    #@25
    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@27
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@29
    if-ne v0, v1, :cond_82

    #@2b
    .line 90
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@30
    move-result-object v0

    #@31
    if-eqz v0, :cond_82

    #@33
    .line 92
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@36
    move-result-object v1

    #@37
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@39
    if-eq v1, v2, :cond_43

    #@3b
    .line 93
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3e
    move-result-object v1

    #@3f
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@41
    if-ne v1, v2, :cond_82

    #@43
    .line 94
    :cond_43
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@46
    move-result v1

    #@47
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@49
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@4e
    move-result v2

    #@4f
    sub-int/2addr v1, v2

    #@50
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@52
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@54
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@57
    move-result v2

    #@58
    sub-int/2addr v1, v2

    #@59
    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5b
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@5d
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5f
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@61
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@63
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@66
    move-result v4

    #@67
    invoke-virtual {p0, v2, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@6a
    .line 96
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@6c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@6e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@70
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@72
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@74
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@77
    move-result v3

    #@78
    neg-int v3, v3

    #@79
    invoke-virtual {p0, v2, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@7c
    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@7e
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@81
    return-void

    #@82
    .line 101
    :cond_82
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@84
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@86
    if-ne v0, v1, :cond_d6

    #@88
    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@8a
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@8f
    move-result v1

    #@90
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@93
    goto :goto_d6

    #@94
    .line 106
    :cond_94
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@96
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@98
    if-ne v0, v1, :cond_d6

    #@9a
    .line 107
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9f
    move-result-object v0

    #@a0
    if-eqz v0, :cond_d6

    #@a2
    .line 109
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a5
    move-result-object v1

    #@a6
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a8
    if-eq v1, v2, :cond_b2

    #@aa
    .line 110
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ad
    move-result-object v1

    #@ae
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b0
    if-ne v1, v2, :cond_d6

    #@b2
    .line 111
    :cond_b2
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b4
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@b6
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b8
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ba
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@bc
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@bf
    move-result v3

    #@c0
    invoke-virtual {p0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@c3
    .line 112
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@c5
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@c7
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@c9
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@cb
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@cd
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@d0
    move-result v2

    #@d1
    neg-int v2, v2

    #@d2
    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@d5
    return-void

    #@d6
    .line 127
    :cond_d6
    :goto_d6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@d8
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@da
    const/4 v1, 0x0

    #@db
    const/4 v2, 0x1

    #@dc
    if-eqz v0, :cond_202

    #@de
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e0
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    #@e2
    if-eqz v0, :cond_202

    #@e4
    .line 128
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e8
    aget-object v0, v0, v1

    #@ea
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ec
    if-eqz v0, :cond_160

    #@ee
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f0
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f2
    aget-object v0, v0, v2

    #@f4
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f6
    if-eqz v0, :cond_160

    #@f8
    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@fa
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@fd
    move-result v0

    #@fe
    if-eqz v0, :cond_11f

    #@100
    .line 130
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@102
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@104
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@106
    aget-object v1, v3, v1

    #@108
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@10b
    move-result v1

    #@10c
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@10e
    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@110
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@112
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@114
    aget-object v1, v1, v2

    #@116
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@119
    move-result v1

    #@11a
    neg-int v1, v1

    #@11b
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@11d
    goto/16 :goto_43c

    #@11f
    .line 133
    :cond_11f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@121
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@123
    aget-object v0, v0, v1

    #@125
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@128
    move-result-object v0

    #@129
    if-eqz v0, :cond_13a

    #@12b
    .line 135
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@12d
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12f
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@131
    aget-object v1, v4, v1

    #@133
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@136
    move-result v1

    #@137
    invoke-virtual {p0, v3, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@13a
    .line 137
    :cond_13a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@13c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@13e
    aget-object v0, v0, v2

    #@140
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@143
    move-result-object v0

    #@144
    if-eqz v0, :cond_156

    #@146
    .line 139
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@148
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14a
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14c
    aget-object v3, v3, v2

    #@14e
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@151
    move-result v3

    #@152
    neg-int v3, v3

    #@153
    invoke-virtual {p0, v1, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@156
    .line 141
    :cond_156
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@158
    iput-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    #@15a
    .line 142
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@15c
    iput-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    #@15e
    goto/16 :goto_43c

    #@160
    .line 144
    :cond_160
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@162
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@164
    aget-object v0, v0, v1

    #@166
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@168
    if-eqz v0, :cond_192

    #@16a
    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16e
    aget-object v0, v0, v1

    #@170
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@173
    move-result-object v0

    #@174
    if-eqz v0, :cond_43c

    #@176
    .line 147
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@178
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17a
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17c
    aget-object v1, v3, v1

    #@17e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@181
    move-result v1

    #@182
    invoke-virtual {p0, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@185
    .line 148
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@187
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@189
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@18b
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@18d
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@190
    goto/16 :goto_43c

    #@192
    .line 150
    :cond_192
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@194
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@196
    aget-object v0, v0, v2

    #@198
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19a
    if-eqz v0, :cond_1c6

    #@19c
    .line 151
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@19e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a0
    aget-object v0, v0, v2

    #@1a2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1a5
    move-result-object v0

    #@1a6
    if-eqz v0, :cond_43c

    #@1a8
    .line 153
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1aa
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1ac
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ae
    aget-object v2, v3, v2

    #@1b0
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@1b3
    move-result v2

    #@1b4
    neg-int v2, v2

    #@1b5
    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@1b8
    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1ba
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1bc
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@1be
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@1c0
    neg-int v2, v2

    #@1c1
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@1c4
    goto/16 :goto_43c

    #@1c6
    .line 158
    :cond_1c6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1c8
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Helper;

    #@1ca
    if-nez v0, :cond_43c

    #@1cc
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1ce
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d1
    move-result-object v0

    #@1d2
    if-eqz v0, :cond_43c

    #@1d4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d6
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1d8
    .line 159
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1db
    move-result-object v0

    #@1dc
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1de
    if-nez v0, :cond_43c

    #@1e0
    .line 160
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1e2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1e5
    move-result-object v0

    #@1e6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@1e8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1ea
    .line 161
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1ec
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1ee
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    #@1f1
    move-result v2

    #@1f2
    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@1f5
    .line 162
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1f7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1f9
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@1fb
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@1fd
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@200
    goto/16 :goto_43c

    #@202
    .line 166
    :cond_202
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@204
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@206
    if-ne v0, v3, :cond_351

    #@208
    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@20a
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@20c
    const/4 v3, 0x2

    #@20d
    if-eq v0, v3, :cond_320

    #@20f
    const/4 v3, 0x3

    #@210
    if-eq v0, v3, :cond_214

    #@212
    goto/16 :goto_351

    #@214
    .line 169
    :cond_214
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@216
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@218
    if-ne v0, v3, :cond_2c9

    #@21a
    .line 172
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@21c
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@21e
    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@220
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@222
    .line 174
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@224
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@226
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@228
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@22a
    .line 175
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@22c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@22e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@230
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@232
    .line 176
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@234
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@236
    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@238
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@23b
    move-result v0

    #@23c
    if-eqz v0, :cond_296

    #@23e
    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@240
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    #@242
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@244
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@246
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@248
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24b
    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@24d
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@24f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@251
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    #@253
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@255
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@258
    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@25a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@25c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@25e
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@260
    .line 182
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@262
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    #@264
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@266
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@268
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@26a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26d
    .line 183
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@26f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    #@271
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@273
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@275
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@277
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27a
    .line 184
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@27c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@27e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@280
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@282
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@284
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@287
    .line 185
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@289
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@28b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@28d
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@28f
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@291
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@294
    goto/16 :goto_351

    #@296
    .line 186
    :cond_296
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@298
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@29b
    move-result v0

    #@29c
    if-eqz v0, :cond_2ba

    #@29e
    .line 187
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2a0
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@2a2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2a4
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    #@2a6
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2a8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2ab
    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2ad
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    #@2af
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2b1
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@2b3
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2b5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b8
    goto/16 :goto_351

    #@2ba
    .line 190
    :cond_2ba
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2bc
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@2be
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2c0
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    #@2c2
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2c4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c7
    goto/16 :goto_351

    #@2c9
    .line 195
    :cond_2c9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2cb
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@2cd
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2cf
    .line 196
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2d1
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    #@2d3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d6
    .line 197
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@2d8
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2da
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2dd
    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2df
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@2e1
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2e3
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@2e5
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2e7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2ea
    .line 199
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2ec
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@2ee
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2f0
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@2f2
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2f4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f7
    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2f9
    iput-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->delegateToWidgetRun:Z

    #@2fb
    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2fd
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    #@2ff
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@301
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@304
    .line 202
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@306
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    #@308
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@30a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30d
    .line 203
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@30f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@311
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@313
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@316
    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@318
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@31a
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@31c
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31f
    goto :goto_351

    #@320
    .line 209
    :cond_320
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@322
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@325
    move-result-object v0

    #@326
    if-nez v0, :cond_329

    #@328
    goto :goto_351

    #@329
    .line 213
    :cond_329
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@32b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@32d
    .line 214
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@32f
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    #@331
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@334
    .line 215
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@336
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@338
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33b
    .line 216
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@33d
    iput-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->delegateToWidgetRun:Z

    #@33f
    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@341
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    #@343
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@345
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@348
    .line 218
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@34a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    #@34c
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@34e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@351
    .line 228
    :cond_351
    :goto_351
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@353
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@355
    aget-object v0, v0, v1

    #@357
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@359
    if-eqz v0, :cond_3b0

    #@35b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@35d
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@35f
    aget-object v0, v0, v2

    #@361
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@363
    if-eqz v0, :cond_3b0

    #@365
    .line 230
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@367
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@36a
    move-result v0

    #@36b
    if-eqz v0, :cond_38c

    #@36d
    .line 231
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@36f
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@371
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@373
    aget-object v1, v3, v1

    #@375
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@378
    move-result v1

    #@379
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@37b
    .line 232
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@37d
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@37f
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@381
    aget-object v1, v1, v2

    #@383
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@386
    move-result v1

    #@387
    neg-int v1, v1

    #@388
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@38a
    goto/16 :goto_43c

    #@38c
    .line 234
    :cond_38c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@38e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@390
    aget-object v0, v0, v1

    #@392
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@395
    move-result-object v0

    #@396
    .line 235
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@398
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@39a
    aget-object v1, v1, v2

    #@39c
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@39f
    move-result-object v1

    #@3a0
    if-eqz v0, :cond_3a5

    #@3a2
    .line 245
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    #@3a5
    :cond_3a5
    if-eqz v1, :cond_3aa

    #@3a7
    .line 248
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    #@3aa
    .line 251
    :cond_3aa
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    #@3ac
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->mRunType:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    #@3ae
    goto/16 :goto_43c

    #@3b0
    .line 253
    :cond_3b0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3b2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3b4
    aget-object v0, v0, v1

    #@3b6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3b8
    if-eqz v0, :cond_3df

    #@3ba
    .line 254
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3bc
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3be
    aget-object v0, v0, v1

    #@3c0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3c3
    move-result-object v0

    #@3c4
    if-eqz v0, :cond_43c

    #@3c6
    .line 256
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3c8
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3ca
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3cc
    aget-object v1, v4, v1

    #@3ce
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@3d1
    move-result v1

    #@3d2
    invoke-virtual {p0, v3, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@3d5
    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3d7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3d9
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@3db
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    #@3de
    goto :goto_43c

    #@3df
    .line 259
    :cond_3df
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3e1
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3e3
    aget-object v0, v0, v2

    #@3e5
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3e7
    if-eqz v0, :cond_410

    #@3e9
    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3eb
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3ed
    aget-object v0, v0, v2

    #@3ef
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3f2
    move-result-object v0

    #@3f3
    if-eqz v0, :cond_43c

    #@3f5
    .line 262
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3f7
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3f9
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3fb
    aget-object v2, v3, v2

    #@3fd
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@400
    move-result v2

    #@401
    neg-int v2, v2

    #@402
    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@405
    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@407
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@409
    const/4 v2, -0x1

    #@40a
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@40c
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    #@40f
    goto :goto_43c

    #@410
    .line 267
    :cond_410
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@412
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Helper;

    #@414
    if-nez v0, :cond_43c

    #@416
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@418
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@41b
    move-result-object v0

    #@41c
    if-eqz v0, :cond_43c

    #@41e
    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@420
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@423
    move-result-object v0

    #@424
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@426
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@428
    .line 269
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@42a
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@42c
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    #@42f
    move-result v3

    #@430
    invoke-virtual {p0, v1, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    #@433
    .line 270
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@435
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@437
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@439
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    #@43c
    :cond_43c
    :goto_43c
    return-void
.end method

.method public applyToWidget()V
    .registers 3

    #@0
    .line 561
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 562
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@a
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@c
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    #@f
    :cond_f
    return-void
.end method

.method clear()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    #@3
    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    #@8
    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    #@d
    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->clear()V

    #@12
    const/4 v0, 0x0

    #@13
    .line 57
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    #@15
    return-void
.end method

.method reset()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    #@3
    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    #@8
    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@a
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@c
    .line 65
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    #@11
    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@13
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@15
    .line 67
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@17
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@19
    return-void
.end method

.method supportsWrapComputation()Z
    .registers 4

    #@0
    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4
    const/4 v2, 0x1

    #@5
    if-ne v0, v1, :cond_10

    #@7
    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@b
    if-nez v0, :cond_e

    #@d
    return v2

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    :cond_10
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "HorizontalRun "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .registers 18

    #@0
    move-object/from16 v8, p0

    #@2
    .line 312
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType:[I

    #@4
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->mRunType:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    #@6
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->ordinal()I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    const/4 v1, 0x2

    #@d
    const/4 v2, 0x3

    #@e
    const/4 v9, 0x1

    #@f
    const/4 v10, 0x0

    #@10
    if-eq v0, v9, :cond_2b

    #@12
    if-eq v0, v1, :cond_25

    #@14
    if-eq v0, v2, :cond_17

    #@16
    goto :goto_30

    #@17
    .line 322
    :cond_17
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@19
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1b
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f
    move-object/from16 v3, p1

    #@21
    invoke-virtual {v8, v3, v0, v1, v10}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->updateRunCenter(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@24
    return-void

    #@25
    :cond_25
    move-object/from16 v3, p1

    #@27
    .line 318
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->updateRunEnd(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    #@2a
    goto :goto_30

    #@2b
    :cond_2b
    move-object/from16 v3, p1

    #@2d
    .line 314
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->updateRunStart(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    #@30
    .line 328
    :goto_30
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@32
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@34
    const/high16 v11, 0x3f000000    # 0.5f

    #@36
    if-nez v0, :cond_351

    #@38
    .line 329
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3a
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3c
    if-ne v0, v3, :cond_351

    #@3e
    .line 330
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@40
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@42
    if-eq v0, v1, :cond_32e

    #@44
    if-eq v0, v2, :cond_48

    #@46
    goto/16 :goto_351

    #@48
    .line 332
    :cond_48
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@4a
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@4c
    const/4 v1, -0x1

    #@4d
    if-eqz v0, :cond_9e

    #@4f
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@51
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@53
    if-ne v0, v2, :cond_56

    #@55
    goto :goto_9e

    #@56
    .line 457
    :cond_56
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@58
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatioSide()I

    #@5b
    move-result v0

    #@5c
    if-eq v0, v1, :cond_85

    #@5e
    if-eqz v0, :cond_74

    #@60
    if-eq v0, v9, :cond_64

    #@62
    move v0, v10

    #@63
    goto :goto_97

    #@64
    .line 464
    :cond_64
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@66
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@68
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@6a
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@6c
    int-to-float v0, v0

    #@6d
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@72
    move-result v1

    #@73
    goto :goto_94

    #@74
    .line 460
    :cond_74
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@76
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@78
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@7a
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@7c
    int-to-float v0, v0

    #@7d
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@82
    move-result v1

    #@83
    div-float/2addr v0, v1

    #@84
    goto :goto_95

    #@85
    .line 468
    :cond_85
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@87
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@89
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@8b
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@8d
    int-to-float v0, v0

    #@8e
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@90
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@93
    move-result v1

    #@94
    :goto_94
    mul-float/2addr v0, v1

    #@95
    :goto_95
    add-float/2addr v0, v11

    #@96
    float-to-int v0, v0

    #@97
    .line 473
    :goto_97
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@99
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@9c
    goto/16 :goto_351

    #@9e
    .line 334
    :cond_9e
    :goto_9e
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a0
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@a2
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@a4
    .line 335
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@a8
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@aa
    .line 336
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ac
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ae
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b0
    if-eqz v0, :cond_b4

    #@b2
    move v0, v9

    #@b3
    goto :goto_b5

    #@b4
    :cond_b4
    move v0, v10

    #@b5
    .line 337
    :goto_b5
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b7
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b9
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@bb
    if-eqz v2, :cond_bf

    #@bd
    move v2, v9

    #@be
    goto :goto_c0

    #@bf
    :cond_bf
    move v2, v10

    #@c0
    .line 338
    :goto_c0
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c2
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c4
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c6
    if-eqz v3, :cond_ca

    #@c8
    move v3, v9

    #@c9
    goto :goto_cb

    #@ca
    :cond_ca
    move v3, v10

    #@cb
    .line 339
    :goto_cb
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@cd
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@cf
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d1
    if-eqz v4, :cond_d5

    #@d3
    move v4, v9

    #@d4
    goto :goto_d6

    #@d5
    :cond_d5
    move v4, v10

    #@d6
    .line 341
    :goto_d6
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d8
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatioSide()I

    #@db
    move-result v14

    #@dc
    if-eqz v0, :cond_22c

    #@de
    if-eqz v2, :cond_22c

    #@e0
    if-eqz v3, :cond_22c

    #@e2
    if-eqz v4, :cond_22c

    #@e4
    .line 344
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@e9
    move-result v15

    #@ea
    .line 345
    iget-boolean v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@ec
    if-eqz v0, :cond_14f

    #@ee
    iget-boolean v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@f0
    if-eqz v0, :cond_14f

    #@f2
    .line 346
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@f4
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@f6
    if-eqz v0, :cond_14e

    #@f8
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@fa
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@fc
    if-nez v0, :cond_ff

    #@fe
    goto :goto_14e

    #@ff
    .line 349
    :cond_ff
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@101
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@103
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@106
    move-result-object v0

    #@107
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@109
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@10b
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@10d
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@10f
    add-int v2, v0, v1

    #@111
    .line 350
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@113
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@115
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@118
    move-result-object v0

    #@119
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@11b
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@11d
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@11f
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@121
    sub-int v3, v0, v1

    #@123
    .line 351
    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@125
    iget v1, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@127
    add-int v4, v0, v1

    #@129
    .line 352
    iget v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@12b
    iget v1, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@12d
    sub-int v5, v0, v1

    #@12f
    .line 353
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@131
    move-object/from16 v0, p0

    #@133
    move v6, v15

    #@134
    move v7, v14

    #@135
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    #@138
    .line 354
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@13a
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@13c
    aget v1, v1, v10

    #@13e
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@141
    .line 355
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@143
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@145
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@147
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@149
    aget v1, v1, v9

    #@14b
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@14e
    :cond_14e
    :goto_14e
    return-void

    #@14f
    .line 358
    :cond_14f
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@151
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@153
    if-eqz v0, :cond_1b5

    #@155
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@157
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@159
    if-eqz v0, :cond_1b5

    #@15b
    .line 359
    iget-boolean v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@15d
    if-eqz v0, :cond_1b4

    #@15f
    iget-boolean v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@161
    if-nez v0, :cond_164

    #@163
    goto :goto_1b4

    #@164
    .line 362
    :cond_164
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@166
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@168
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@16a
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@16c
    add-int v2, v0, v1

    #@16e
    .line 363
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@170
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@172
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@174
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@176
    sub-int v3, v0, v1

    #@178
    .line 364
    iget-object v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@17a
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17d
    move-result-object v0

    #@17e
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@180
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@182
    iget v1, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@184
    add-int v4, v0, v1

    #@186
    .line 365
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@188
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18b
    move-result-object v0

    #@18c
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@18e
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@190
    iget v1, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@192
    sub-int v5, v0, v1

    #@194
    .line 366
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@196
    move-object/from16 v0, p0

    #@198
    move v6, v15

    #@199
    move v7, v14

    #@19a
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    #@19d
    .line 367
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@19f
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@1a1
    aget v1, v1, v10

    #@1a3
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@1a6
    .line 368
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1a8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@1aa
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@1ac
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@1ae
    aget v1, v1, v9

    #@1b0
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@1b3
    goto :goto_1b5

    #@1b4
    :cond_1b4
    :goto_1b4
    return-void

    #@1b5
    .line 370
    :cond_1b5
    :goto_1b5
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1b7
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@1b9
    if-eqz v0, :cond_22b

    #@1bb
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1bd
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@1bf
    if-eqz v0, :cond_22b

    #@1c1
    iget-boolean v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@1c3
    if-eqz v0, :cond_22b

    #@1c5
    iget-boolean v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@1c7
    if-nez v0, :cond_1ca

    #@1c9
    goto :goto_22b

    #@1ca
    .line 375
    :cond_1ca
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1cc
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@1ce
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d1
    move-result-object v0

    #@1d2
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1d4
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@1d6
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1d8
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@1da
    add-int v2, v0, v1

    #@1dc
    .line 376
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1de
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@1e0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e3
    move-result-object v0

    #@1e4
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1e6
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@1e8
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1ea
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@1ec
    sub-int v3, v0, v1

    #@1ee
    .line 377
    iget-object v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@1f0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f3
    move-result-object v0

    #@1f4
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1f6
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@1f8
    iget v1, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@1fa
    add-int v4, v0, v1

    #@1fc
    .line 378
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@1fe
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@201
    move-result-object v0

    #@202
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@204
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@206
    iget v1, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@208
    sub-int v5, v0, v1

    #@20a
    .line 379
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@20c
    move-object/from16 v0, p0

    #@20e
    move v6, v15

    #@20f
    move v7, v14

    #@210
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    #@213
    .line 380
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@215
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@217
    aget v1, v1, v10

    #@219
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@21c
    .line 381
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@21e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@220
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@222
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    #@224
    aget v1, v1, v9

    #@226
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@229
    goto/16 :goto_351

    #@22b
    :cond_22b
    :goto_22b
    return-void

    #@22c
    :cond_22c
    if-eqz v0, :cond_2b5

    #@22e
    if-eqz v3, :cond_2b5

    #@230
    .line 383
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@232
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@234
    if-eqz v0, :cond_2b4

    #@236
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@238
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@23a
    if-nez v0, :cond_23e

    #@23c
    goto/16 :goto_2b4

    #@23e
    .line 386
    :cond_23e
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@240
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@243
    move-result v0

    #@244
    .line 387
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@246
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@248
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24b
    move-result-object v2

    #@24c
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@24e
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@250
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@252
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@254
    add-int/2addr v2, v3

    #@255
    .line 388
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@257
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@259
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25c
    move-result-object v3

    #@25d
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@25f
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@261
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@263
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@265
    sub-int/2addr v3, v4

    #@266
    if-eq v14, v1, :cond_291

    #@268
    if-eqz v14, :cond_291

    #@26a
    if-eq v14, v9, :cond_26e

    #@26c
    goto/16 :goto_351

    #@26e
    :cond_26e
    sub-int/2addr v3, v2

    #@26f
    .line 406
    invoke-virtual {v8, v3, v10}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    #@272
    move-result v1

    #@273
    int-to-float v2, v1

    #@274
    div-float/2addr v2, v0

    #@275
    add-float/2addr v2, v11

    #@276
    float-to-int v2, v2

    #@277
    .line 408
    invoke-virtual {v8, v2, v9}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    #@27a
    move-result v3

    #@27b
    if-eq v2, v3, :cond_281

    #@27d
    int-to-float v1, v3

    #@27e
    mul-float/2addr v1, v0

    #@27f
    add-float/2addr v1, v11

    #@280
    float-to-int v1, v1

    #@281
    .line 412
    :cond_281
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@283
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@286
    .line 413
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@288
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@28a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@28c
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@28f
    goto/16 :goto_351

    #@291
    :cond_291
    sub-int/2addr v3, v2

    #@292
    .line 394
    invoke-virtual {v8, v3, v10}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    #@295
    move-result v1

    #@296
    int-to-float v2, v1

    #@297
    mul-float/2addr v2, v0

    #@298
    add-float/2addr v2, v11

    #@299
    float-to-int v2, v2

    #@29a
    .line 396
    invoke-virtual {v8, v2, v9}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    #@29d
    move-result v3

    #@29e
    if-eq v2, v3, :cond_2a4

    #@2a0
    int-to-float v1, v3

    #@2a1
    div-float/2addr v1, v0

    #@2a2
    add-float/2addr v1, v11

    #@2a3
    float-to-int v1, v1

    #@2a4
    .line 400
    :cond_2a4
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2a6
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@2a9
    .line 401
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2ab
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@2ad
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2af
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@2b2
    goto/16 :goto_351

    #@2b4
    :cond_2b4
    :goto_2b4
    return-void

    #@2b5
    :cond_2b5
    if-eqz v2, :cond_351

    #@2b7
    if-eqz v4, :cond_351

    #@2b9
    .line 419
    iget-boolean v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@2bb
    if-eqz v0, :cond_32d

    #@2bd
    iget-boolean v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@2bf
    if-nez v0, :cond_2c2

    #@2c1
    goto :goto_32d

    #@2c2
    .line 422
    :cond_2c2
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2c4
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@2c7
    move-result v0

    #@2c8
    .line 423
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@2ca
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2cd
    move-result-object v2

    #@2ce
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2d0
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@2d2
    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@2d4
    add-int/2addr v2, v3

    #@2d5
    .line 424
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@2d7
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2da
    move-result-object v3

    #@2db
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2dd
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@2df
    iget v4, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@2e1
    sub-int/2addr v3, v4

    #@2e2
    if-eq v14, v1, :cond_30b

    #@2e4
    if-eqz v14, :cond_2e9

    #@2e6
    if-eq v14, v9, :cond_30b

    #@2e8
    goto :goto_351

    #@2e9
    :cond_2e9
    sub-int/2addr v3, v2

    #@2ea
    .line 442
    invoke-virtual {v8, v3, v9}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    #@2ed
    move-result v1

    #@2ee
    int-to-float v2, v1

    #@2ef
    mul-float/2addr v2, v0

    #@2f0
    add-float/2addr v2, v11

    #@2f1
    float-to-int v2, v2

    #@2f2
    .line 444
    invoke-virtual {v8, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    #@2f5
    move-result v3

    #@2f6
    if-eq v2, v3, :cond_2fc

    #@2f8
    int-to-float v1, v3

    #@2f9
    div-float/2addr v1, v0

    #@2fa
    add-float/2addr v1, v11

    #@2fb
    float-to-int v1, v1

    #@2fc
    .line 448
    :cond_2fc
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@2fe
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@301
    .line 449
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@303
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@305
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@307
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@30a
    goto :goto_351

    #@30b
    :cond_30b
    sub-int/2addr v3, v2

    #@30c
    .line 430
    invoke-virtual {v8, v3, v9}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    #@30f
    move-result v1

    #@310
    int-to-float v2, v1

    #@311
    div-float/2addr v2, v0

    #@312
    add-float/2addr v2, v11

    #@313
    float-to-int v2, v2

    #@314
    .line 432
    invoke-virtual {v8, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    #@317
    move-result v3

    #@318
    if-eq v2, v3, :cond_31e

    #@31a
    int-to-float v1, v3

    #@31b
    mul-float/2addr v1, v0

    #@31c
    add-float/2addr v1, v11

    #@31d
    float-to-int v1, v1

    #@31e
    .line 436
    :cond_31e
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@320
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@323
    .line 437
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@325
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@327
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@329
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@32c
    goto :goto_351

    #@32d
    :cond_32d
    :goto_32d
    return-void

    #@32e
    .line 478
    :cond_32e
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@330
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@333
    move-result-object v0

    #@334
    if-eqz v0, :cond_351

    #@336
    .line 480
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@338
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@33a
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@33c
    if-eqz v1, :cond_351

    #@33e
    .line 481
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@340
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@342
    .line 482
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@344
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@346
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@348
    int-to-float v0, v0

    #@349
    mul-float/2addr v0, v1

    #@34a
    add-float/2addr v0, v11

    #@34b
    float-to-int v0, v0

    #@34c
    .line 484
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@34e
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@351
    .line 494
    :cond_351
    :goto_351
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@353
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@355
    if-eqz v0, :cond_47b

    #@357
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@359
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    #@35b
    if-nez v0, :cond_35f

    #@35d
    goto/16 :goto_47b

    #@35f
    .line 498
    :cond_35f
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@361
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@363
    if-eqz v0, :cond_372

    #@365
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@367
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@369
    if-eqz v0, :cond_372

    #@36b
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@36d
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@36f
    if-eqz v0, :cond_372

    #@371
    return-void

    #@372
    .line 502
    :cond_372
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@374
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@376
    if-nez v0, :cond_3c0

    #@378
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@37a
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@37c
    if-ne v0, v1, :cond_3c0

    #@37e
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@380
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@382
    if-nez v0, :cond_3c0

    #@384
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@386
    .line 505
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@389
    move-result v0

    #@38a
    if-nez v0, :cond_3c0

    #@38c
    .line 507
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@38e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@390
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@393
    move-result-object v0

    #@394
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@396
    .line 508
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@398
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@39a
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@39d
    move-result-object v1

    #@39e
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3a0
    .line 509
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@3a2
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3a4
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@3a6
    add-int/2addr v0, v2

    #@3a7
    .line 510
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@3a9
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3ab
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@3ad
    add-int/2addr v1, v2

    #@3ae
    sub-int v2, v1, v0

    #@3b0
    .line 513
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3b2
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@3b5
    .line 514
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3b7
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@3ba
    .line 515
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@3bc
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@3bf
    return-void

    #@3c0
    .line 519
    :cond_3c0
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@3c2
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@3c4
    if-nez v0, :cond_426

    #@3c6
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3c8
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3ca
    if-ne v0, v1, :cond_426

    #@3cc
    iget v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->matchConstraintsType:I

    #@3ce
    if-ne v0, v9, :cond_426

    #@3d0
    .line 522
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3d2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@3d4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3d7
    move-result v0

    #@3d8
    if-lez v0, :cond_426

    #@3da
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3dc
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@3de
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3e1
    move-result v0

    #@3e2
    if-lez v0, :cond_426

    #@3e4
    .line 523
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3e6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@3e8
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3eb
    move-result-object v0

    #@3ec
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3ee
    .line 524
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3f0
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@3f2
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f5
    move-result-object v1

    #@3f6
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3f8
    .line 525
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@3fa
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3fc
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@3fe
    add-int/2addr v0, v2

    #@3ff
    .line 526
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@401
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@403
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@405
    add-int/2addr v1, v2

    #@406
    sub-int/2addr v1, v0

    #@407
    .line 528
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@409
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    #@40b
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@40e
    move-result v0

    #@40f
    .line 529
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@411
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@413
    .line 530
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@415
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@417
    .line 531
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@41a
    move-result v0

    #@41b
    if-lez v1, :cond_421

    #@41d
    .line 533
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@420
    move-result v0

    #@421
    .line 535
    :cond_421
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@423
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    #@426
    .line 539
    :cond_426
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@428
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    #@42a
    if-nez v0, :cond_42d

    #@42c
    return-void

    #@42d
    .line 543
    :cond_42d
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@42f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@431
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@434
    move-result-object v0

    #@435
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@437
    .line 544
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@439
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@43b
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43e
    move-result-object v1

    #@43f
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@441
    .line 545
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@443
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@445
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@447
    add-int/2addr v2, v3

    #@448
    .line 546
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@44a
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@44c
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@44e
    add-int/2addr v3, v4

    #@44f
    .line 547
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@451
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    #@454
    move-result v4

    #@455
    if-ne v0, v1, :cond_45c

    #@457
    .line 549
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@459
    .line 550
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@45b
    move v4, v11

    #@45c
    :cond_45c
    sub-int/2addr v3, v2

    #@45d
    .line 555
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@45f
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@461
    sub-int/2addr v3, v0

    #@462
    .line 556
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@464
    int-to-float v1, v2

    #@465
    add-float/2addr v1, v11

    #@466
    int-to-float v2, v3

    #@467
    mul-float/2addr v2, v4

    #@468
    add-float/2addr v1, v2

    #@469
    float-to-int v1, v1

    #@46a
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@46d
    .line 557
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@46f
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@471
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@473
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    #@475
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    #@477
    add-int/2addr v1, v2

    #@478
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    #@47b
    :cond_47b
    :goto_47b
    return-void
.end method
