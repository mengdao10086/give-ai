.class Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field row:Landroidx/constraintlayout/core/PriorityGoalRow;

.field final synthetic this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

.field variable:Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/PriorityGoalRow;)V
    .registers 3

    #@0
    .line 39
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    iput-object p2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->row:Landroidx/constraintlayout/core/PriorityGoalRow;

    #@7
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    const/16 v1, 0x9

    #@3
    if-ge v0, v1, :cond_2d

    #@5
    .line 82
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@7
    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@9
    aget v2, v1, v0

    #@b
    iget-object v3, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@d
    aget v3, v3, v0

    #@f
    add-float/2addr v2, v3

    #@10
    aput v2, v1, v0

    #@12
    .line 83
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@14
    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@16
    aget v1, v1, v0

    #@18
    .line 84
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@1b
    move-result v1

    #@1c
    const v2, 0x38d1b717    # 1.0E-4f

    #@1f
    cmpg-float v1, v1, v2

    #@21
    if-gez v1, :cond_2a

    #@23
    .line 85
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@25
    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@27
    const/4 v2, 0x0

    #@28
    aput v2, v1, v0

    #@2a
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_1

    #@2d
    :cond_2d
    return-void
.end method

.method public addToGoal(Landroidx/constraintlayout/core/SolverVariable;F)Z
    .registers 12

    #@0
    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    #@4
    const v1, 0x38d1b717    # 1.0E-4f

    #@7
    const/16 v2, 0x9

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x1

    #@b
    const/4 v5, 0x0

    #@c
    if-eqz v0, :cond_42

    #@e
    move v0, v5

    #@f
    :goto_f
    if-ge v0, v2, :cond_38

    #@11
    .line 51
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@13
    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@15
    aget v7, v6, v0

    #@17
    iget-object v8, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@19
    aget v8, v8, v0

    #@1b
    mul-float/2addr v8, p2

    #@1c
    add-float/2addr v7, v8

    #@1d
    aput v7, v6, v0

    #@1f
    .line 52
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@21
    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@23
    aget v6, v6, v0

    #@25
    .line 53
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@28
    move-result v6

    #@29
    cmpg-float v6, v6, v1

    #@2b
    if-gez v6, :cond_34

    #@2d
    .line 54
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2f
    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@31
    aput v3, v6, v0

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v4, v5

    #@35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_f

    #@38
    :cond_38
    if-eqz v4, :cond_41

    #@3a
    .line 60
    iget-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    #@3c
    iget-object p2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@3e
    # invokes: Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    invoke-static {p1, p2}, Landroidx/constraintlayout/core/PriorityGoalRow;->access$000(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V

    #@41
    :cond_41
    return v5

    #@42
    :cond_42
    :goto_42
    if-ge v5, v2, :cond_66

    #@44
    .line 64
    iget-object v0, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@46
    aget v0, v0, v5

    #@48
    cmpl-float v6, v0, v3

    #@4a
    if-eqz v6, :cond_5d

    #@4c
    mul-float/2addr v0, p2

    #@4d
    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@50
    move-result v6

    #@51
    cmpg-float v6, v6, v1

    #@53
    if-gez v6, :cond_56

    #@55
    move v0, v3

    #@56
    .line 70
    :cond_56
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@58
    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@5a
    aput v0, v6, v5

    #@5c
    goto :goto_63

    #@5d
    .line 72
    :cond_5d
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@5f
    iget-object v0, v0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@61
    aput v3, v0, v5

    #@63
    :goto_63
    add-int/lit8 v5, v5, 0x1

    #@65
    goto :goto_42

    #@66
    :cond_66
    return v4
.end method

.method public init(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 2

    #@0
    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    return-void
.end method

.method public final isNegative()Z
    .registers 6

    #@0
    const/16 v0, 0x8

    #@2
    :goto_2
    const/4 v1, 0x0

    #@3
    if-ltz v0, :cond_1a

    #@5
    .line 92
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@7
    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@9
    aget v2, v2, v0

    #@b
    const/4 v3, 0x0

    #@c
    cmpl-float v4, v2, v3

    #@e
    if-lez v4, :cond_11

    #@10
    return v1

    #@11
    :cond_11
    cmpg-float v1, v2, v3

    #@13
    if-gez v1, :cond_17

    #@15
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    :cond_17
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_2

    #@1a
    :cond_1a
    return v1
.end method

.method public final isNull()Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    const/16 v2, 0x9

    #@4
    if-ge v1, v2, :cond_15

    #@6
    .line 121
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@8
    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@a
    aget v2, v2, v1

    #@c
    const/4 v3, 0x0

    #@d
    cmpl-float v2, v2, v3

    #@f
    if-eqz v2, :cond_12

    #@11
    return v0

    #@12
    :cond_12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_2

    #@15
    :cond_15
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method public final isSmallerThan(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 7

    #@0
    const/16 v0, 0x8

    #@2
    :goto_2
    const/4 v1, 0x0

    #@3
    if-ltz v0, :cond_1c

    #@5
    .line 105
    iget-object v2, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@7
    aget v2, v2, v0

    #@9
    .line 106
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@b
    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@d
    aget v3, v3, v0

    #@f
    cmpl-float v4, v3, v2

    #@11
    if-nez v4, :cond_16

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    goto :goto_2

    #@16
    :cond_16
    cmpg-float p1, v3, v2

    #@18
    if-gez p1, :cond_1c

    #@1a
    const/4 p1, 0x1

    #@1b
    return p1

    #@1c
    :cond_1c
    return v1
.end method

.method public reset()V
    .registers 3

    #@0
    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    iget-object v0, v0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    const-string v1, "[ "

    #@4
    if-eqz v0, :cond_2b

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    const/16 v2, 0x9

    #@9
    if-ge v0, v2, :cond_2b

    #@b
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@16
    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@18
    aget v2, v2, v0

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string v2, " "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_7

    #@2b
    .line 139
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string v1, "] "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method
