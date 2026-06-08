.class public Landroidx/constraintlayout/core/PriorityGoalRow;
.super Landroidx/constraintlayout/core/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

.field mCache:Landroidx/constraintlayout/core/Cache;

.field private numGoals:I

.field private sortArray:[Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .registers 4

    #@0
    .line 154
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    #@3
    const/16 v0, 0x80

    #@5
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->TABLE_SIZE:I

    #@7
    new-array v1, v0, [Landroidx/constraintlayout/core/SolverVariable;

    #@9
    .line 30
    iput-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@b
    new-array v0, v0, [Landroidx/constraintlayout/core/SolverVariable;

    #@d
    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    #@f
    const/4 v0, 0x0

    #@10
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@12
    .line 33
    new-instance v0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@14
    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/PriorityGoalRow;)V

    #@17
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@19
    .line 155
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mCache:Landroidx/constraintlayout/core/Cache;

    #@1b
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 2

    #@0
    .line 25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    #@3
    return-void
.end method

.method private final addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 7

    #@0
    .line 197
    iget v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@2
    const/4 v1, 0x1

    #@3
    add-int/2addr v0, v1

    #@4
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@6
    array-length v3, v2

    #@7
    if-le v0, v3, :cond_1f

    #@9
    .line 198
    array-length v0, v2

    #@a
    mul-int/lit8 v0, v0, 0x2

    #@c
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    #@12
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@14
    .line 199
    array-length v2, v0

    #@15
    mul-int/lit8 v2, v2, 0x2

    #@17
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    #@1d
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    #@1f
    .line 201
    :cond_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@21
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@23
    aput-object p1, v0, v2

    #@25
    add-int/2addr v2, v1

    #@26
    .line 202
    iput v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@28
    if-le v2, v1, :cond_5d

    #@2a
    sub-int/2addr v2, v1

    #@2b
    .line 204
    aget-object v0, v0, v2

    #@2d
    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2f
    iget v2, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@31
    if-le v0, v2, :cond_5d

    #@33
    const/4 v0, 0x0

    #@34
    move v2, v0

    #@35
    .line 205
    :goto_35
    iget v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@37
    if-ge v2, v3, :cond_44

    #@39
    .line 206
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    #@3b
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@3d
    aget-object v4, v4, v2

    #@3f
    aput-object v4, v3, v2

    #@41
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_35

    #@44
    .line 208
    :cond_44
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    #@46
    new-instance v4, Landroidx/constraintlayout/core/PriorityGoalRow$1;

    #@48
    invoke-direct {v4, p0}, Landroidx/constraintlayout/core/PriorityGoalRow$1;-><init>(Landroidx/constraintlayout/core/PriorityGoalRow;)V

    #@4b
    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@4e
    .line 214
    :goto_4e
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@50
    if-ge v0, v2, :cond_5d

    #@52
    .line 215
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@54
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    #@56
    aget-object v3, v3, v0

    #@58
    aput-object v3, v2, v0

    #@5a
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_4e

    #@5d
    .line 219
    :cond_5d
    iput-boolean v1, p1, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    #@5f
    .line 220
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@62
    return-void
.end method

.method private final removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 224
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@4
    if-ge v1, v2, :cond_26

    #@6
    .line 225
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@8
    aget-object v2, v2, v1

    #@a
    if-ne v2, p1, :cond_23

    #@c
    .line 226
    :goto_c
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@e
    add-int/lit8 v3, v2, -0x1

    #@10
    if-ge v1, v3, :cond_1c

    #@12
    .line 227
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@14
    add-int/lit8 v3, v1, 0x1

    #@16
    aget-object v4, v2, v3

    #@18
    aput-object v4, v2, v1

    #@1a
    move v1, v3

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    .line 229
    iput v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@20
    .line 230
    iput-boolean v0, p1, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    #@22
    return-void

    #@23
    :cond_23
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_2

    #@26
    :cond_26
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 5

    #@0
    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    #@5
    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->reset()V

    #@a
    .line 192
    iget-object v0, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@c
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@e
    const/high16 v2, 0x3f800000    # 1.0f

    #@10
    aput v2, v0, v1

    #@12
    .line 193
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    #@15
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 147
    iput v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@3
    const/4 v0, 0x0

    #@4
    .line 148
    iput v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    #@6
    return-void
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;
    .registers 7

    #@0
    const/4 p1, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    move v1, p1

    #@3
    .line 168
    :goto_3
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@5
    if-ge v0, v2, :cond_32

    #@7
    .line 169
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@9
    aget-object v2, v2, v0

    #@b
    .line 170
    iget v3, v2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@d
    aget-boolean v3, p2, v3

    #@f
    if-eqz v3, :cond_12

    #@11
    goto :goto_2f

    #@12
    .line 173
    :cond_12
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@14
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    #@17
    if-ne v1, p1, :cond_22

    #@19
    .line 175
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@1b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2f

    #@21
    goto :goto_2e

    #@22
    .line 178
    :cond_22
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@24
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@26
    aget-object v3, v3, v1

    #@28
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroidx/constraintlayout/core/SolverVariable;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2f

    #@2e
    :goto_2e
    move v1, v0

    #@2f
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_3

    #@32
    :cond_32
    if-ne v1, p1, :cond_36

    #@34
    const/4 p1, 0x0

    #@35
    return-object p1

    #@36
    .line 185
    :cond_36
    iget-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@38
    aget-object p1, p1, v1

    #@3a
    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 160
    iget v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, " goal -> ("

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ") : "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    const/4 v1, 0x0

    #@18
    .line 261
    :goto_18
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    #@1a
    if-ge v1, v2, :cond_41

    #@1c
    .line 262
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    #@1e
    aget-object v2, v2, v1

    #@20
    .line 263
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@22
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    #@25
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string v2, " "

    #@36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_18

    #@41
    :cond_41
    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V
    .registers 9

    #@0
    .line 238
    iget-object p1, p2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 243
    :cond_5
    iget-object p3, p2, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@7
    .line 244
    invoke-interface {p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_c
    if-ge v1, v0, :cond_31

    #@e
    .line 246
    invoke-interface {p3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@11
    move-result-object v2

    #@12
    .line 247
    invoke-interface {p3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    #@15
    move-result v3

    #@16
    .line 248
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@18
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    #@1b
    .line 249
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    #@1d
    invoke-virtual {v4, p1, v3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;F)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_26

    #@23
    .line 250
    invoke-direct {p0, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    #@26
    .line 252
    :cond_26
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    #@28
    iget v4, p2, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@2a
    mul-float/2addr v4, v3

    #@2b
    add-float/2addr v2, v4

    #@2c
    iput v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_c

    #@31
    .line 254
    :cond_31
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    #@34
    return-void
.end method
