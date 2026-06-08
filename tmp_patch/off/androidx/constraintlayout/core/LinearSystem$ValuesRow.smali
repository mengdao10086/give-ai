.class Landroidx/constraintlayout/core/LinearSystem$ValuesRow;
.super Landroidx/constraintlayout/core/ArrayRow;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/LinearSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesRow"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/core/LinearSystem;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V
    .registers 3

    #@0
    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;->this$0:Landroidx/constraintlayout/core/LinearSystem;

    #@2
    invoke-direct {p0}, Landroidx/constraintlayout/core/ArrayRow;-><init>()V

    #@5
    .line 90
    new-instance p1, Landroidx/constraintlayout/core/SolverVariableValues;

    #@7
    invoke-direct {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariableValues;-><init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V

    #@a
    iput-object p1, p0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@c
    return-void
.end method
