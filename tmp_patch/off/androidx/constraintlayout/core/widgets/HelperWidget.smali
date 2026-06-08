.class public Landroidx/constraintlayout/core/widgets/HelperWidget;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "HelperWidget.java"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/Helper;


# instance fields
.field public mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mWidgetsCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 29
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    #@3
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6
    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8
    const/4 v0, 0x0

    #@9
    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@b
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 5

    #@0
    if-eq p1, p0, :cond_23

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_23

    #@5
    .line 47
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b
    array-length v2, v1

    #@c
    if-le v0, v2, :cond_19

    #@e
    .line 48
    array-length v0, v1

    #@f
    mul-int/lit8 v0, v0, 0x2

    #@11
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@19
    .line 50
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b
    iget v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@1d
    aput-object p1, v0, v1

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    .line 51
    iput v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@23
    :cond_23
    :goto_23
    return-void
.end method

.method public addDependents(Ljava/util/ArrayList;ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ">;I",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 74
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@4
    if-ge v1, v2, :cond_10

    #@6
    .line 75
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8
    aget-object v2, v2, v1

    #@a
    .line 76
    invoke-virtual {p3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_2

    #@10
    .line 78
    :cond_10
    :goto_10
    iget v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@12
    if-ge v0, v1, :cond_1e

    #@14
    .line 79
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    aget-object v1, v1, v0

    #@18
    .line 80
    invoke-static {v1, p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_10

    #@1e
    :cond_1e
    return-void
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 56
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    #@3
    .line 57
    check-cast p1, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@5
    const/4 v0, 0x0

    #@6
    .line 58
    iput v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@8
    .line 59
    iget v1, p1, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@a
    :goto_a
    if-ge v0, v1, :cond_1c

    #@c
    .line 61
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    return-void
.end method

.method public findGroupInDependents(I)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 85
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@3
    const/4 v2, -0x1

    #@4
    if-ge v0, v1, :cond_20

    #@6
    .line 86
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8
    aget-object v1, v1, v0

    #@a
    if-nez p1, :cond_13

    #@c
    .line 87
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    #@e
    if-eq v3, v2, :cond_13

    #@10
    .line 88
    iget p1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    #@12
    return p1

    #@13
    :cond_13
    const/4 v3, 0x1

    #@14
    if-ne p1, v3, :cond_1d

    #@16
    .line 90
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    #@18
    if-eq v3, v2, :cond_1d

    #@1a
    .line 91
    iget p1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    #@1c
    return p1

    #@1d
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_1

    #@20
    :cond_20
    return v2
.end method

.method public removeAllIds()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 69
    iput v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    #@3
    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@9
    return-void
.end method

.method public updateConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 2

    #@0
    return-void
.end method
