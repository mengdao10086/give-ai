.class public Landroidx/constraintlayout/core/GoalRow;
.super Landroidx/constraintlayout/core/ArrayRow;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .registers 2

    #@0
    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    #@3
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 3

    #@0
    .line 27
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/SolverVariable;)V

    #@3
    .line 30
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    iput v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@9
    return-void
.end method
