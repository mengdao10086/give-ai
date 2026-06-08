.class public Landroidx/constraintlayout/core/widgets/Placeholder;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "Placeholder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 4

    #@0
    .line 76
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@3
    .line 78
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    #@5
    if-lez p1, :cond_2b

    #@7
    .line 79
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9
    const/4 p2, 0x0

    #@a
    aget-object p1, p1, p2

    #@c
    .line 80
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAllConstraints()V

    #@f
    .line 81
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@11
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@13
    invoke-virtual {p1, p2, p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@16
    .line 82
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@18
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1a
    invoke-virtual {p1, p2, p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@1d
    .line 83
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1f
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@21
    invoke-virtual {p1, p2, p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@24
    .line 84
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@26
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@28
    invoke-virtual {p1, p2, p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@2b
    :cond_2b
    return-void
.end method

.method public measure(IIII)V
    .registers 10

    #@0
    .line 33
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    .line 34
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingRight()I

    #@7
    move-result v1

    #@8
    .line 35
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingTop()I

    #@b
    move-result v2

    #@c
    .line 36
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingBottom()I

    #@f
    move-result v3

    #@10
    add-int/2addr v0, v1

    #@11
    const/4 v1, 0x0

    #@12
    add-int/2addr v0, v1

    #@13
    add-int/2addr v2, v3

    #@14
    add-int/2addr v2, v1

    #@15
    .line 41
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    #@17
    if-lez v3, :cond_2b

    #@19
    .line 43
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b
    aget-object v3, v3, v1

    #@1d
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@20
    move-result v3

    #@21
    add-int/2addr v0, v3

    #@22
    .line 44
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@24
    aget-object v3, v3, v1

    #@26
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@29
    move-result v3

    #@2a
    add-int/2addr v2, v3

    #@2b
    .line 46
    :cond_2b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getMinWidth()I

    #@2e
    move-result v3

    #@2f
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@32
    move-result v0

    #@33
    .line 47
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getMinHeight()I

    #@36
    move-result v3

    #@37
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v2

    #@3b
    const/high16 v3, -0x80000000

    #@3d
    const/high16 v4, 0x40000000    # 2.0f

    #@3f
    if-ne p1, v4, :cond_42

    #@41
    goto :goto_4e

    #@42
    :cond_42
    if-ne p1, v3, :cond_49

    #@44
    .line 55
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@47
    move-result p2

    #@48
    goto :goto_4e

    #@49
    :cond_49
    if-nez p1, :cond_4d

    #@4b
    move p2, v0

    #@4c
    goto :goto_4e

    #@4d
    :cond_4d
    move p2, v1

    #@4e
    :goto_4e
    if-ne p3, v4, :cond_51

    #@50
    goto :goto_5d

    #@51
    :cond_51
    if-ne p3, v3, :cond_58

    #@53
    .line 63
    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    #@56
    move-result p4

    #@57
    goto :goto_5d

    #@58
    :cond_58
    if-nez p3, :cond_5c

    #@5a
    move p4, v2

    #@5b
    goto :goto_5d

    #@5c
    :cond_5c
    move p4, v1

    #@5d
    .line 68
    :goto_5d
    invoke-virtual {p0, p2, p4}, Landroidx/constraintlayout/core/widgets/Placeholder;->setMeasure(II)V

    #@60
    .line 69
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/Placeholder;->setWidth(I)V

    #@63
    .line 70
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/widgets/Placeholder;->setHeight(I)V

    #@66
    .line 71
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    #@68
    if-lez p1, :cond_6b

    #@6a
    const/4 v1, 0x1

    #@6b
    :cond_6b
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Placeholder;->needsCallbackFromSolver(Z)V

    #@6e
    return-void
.end method
