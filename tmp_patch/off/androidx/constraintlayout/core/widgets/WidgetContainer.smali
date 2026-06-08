.class public Landroidx/constraintlayout/core/widgets/WidgetContainer;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field public mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    #@3
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@a
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    #@0
    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(II)V

    #@3
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    #@5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@a
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    #@0
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(IIII)V

    #@3
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    #@5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@a
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 3

    #@0
    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 73
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_14

    #@b
    .line 74
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    #@11
    .line 75
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->remove(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@14
    .line 77
    :cond_14
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@17
    return-void
.end method

.method public varargs add([Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 5

    #@0
    .line 86
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    :goto_2
    if-ge v1, v0, :cond_c

    #@4
    .line 88
    aget-object v2, p1, v1

    #@6
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    goto :goto_2

    #@c
    :cond_c
    return-void
.end method

.method public getChildren()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    #@0
    .line 108
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getRootConstraintContainer()Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .registers 5

    #@0
    .line 118
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3
    move-result-object v0

    #@4
    .line 120
    instance-of v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@6
    if-eqz v1, :cond_c

    #@8
    .line 121
    move-object v1, p0

    #@9
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v1, 0x0

    #@d
    :goto_d
    if-eqz v0, :cond_1c

    #@f
    .line 125
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12
    move-result-object v2

    #@13
    .line 126
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@15
    if-eqz v3, :cond_1a

    #@17
    .line 127
    move-object v1, v0

    #@18
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@1a
    :cond_1a
    move-object v0, v2

    #@1b
    goto :goto_d

    #@1c
    :cond_1c
    return-object v1
.end method

.method public layout()V
    .registers 5

    #@0
    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 161
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_20

    #@c
    .line 163
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    .line 164
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    #@16
    if-eqz v3, :cond_1d

    #@18
    .line 165
    check-cast v2, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    #@1a
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->layout()V

    #@1d
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_a

    #@20
    :cond_20
    return-void
.end method

.method public remove(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 3

    #@0
    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 99
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    #@8
    return-void
.end method

.method public removeAllChildren()V
    .registers 2

    #@0
    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    return-void
.end method

.method public reset()V
    .registers 2

    #@0
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 63
    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    #@8
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V
    .registers 5

    #@0
    .line 172
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V

    #@3
    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_1a

    #@c
    .line 175
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    .line 176
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method public setOffset(II)V
    .registers 6

    #@0
    .line 146
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setOffset(II)V

    #@3
    .line 147
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result p1

    #@9
    const/4 p2, 0x0

    #@a
    :goto_a
    if-ge p2, p1, :cond_22

    #@c
    .line 149
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    .line 150
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getRootX()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getRootY()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setOffset(II)V

    #@1f
    add-int/lit8 p2, p2, 0x1

    #@21
    goto :goto_a

    #@22
    :cond_22
    return-void
.end method
