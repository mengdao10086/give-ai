.class public Landroidx/constraintlayout/core/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/LinearSystem$Row;,
        Landroidx/constraintlayout/core/LinearSystem$ValuesRow;
    }
.end annotation


# static fields
.field public static ARRAY_ROW_CREATION:J = 0x0L

.field public static final DEBUG:Z = false

.field private static final DEBUG_CONSTRAINTS:Z = false

.field public static final FULL_DEBUG:Z = false

.field public static final MEASURE:Z = false

.field public static OPTIMIZED_ARRAY_ROW_CREATION:J = 0x0L

.field public static OPTIMIZED_ENGINE:Z = false

.field private static POOL_SIZE:I = 0x3e8

.field public static SIMPLIFY_SYNONYMS:Z = true

.field public static SKIP_COLUMNS:Z = true

.field public static USE_BASIC_SYNONYMS:Z = true

.field public static USE_DEPENDENCY_ORDERING:Z = false

.field public static USE_SYNONYMS:Z = true

.field public static sMetrics:Landroidx/constraintlayout/core/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field public hasSimpleDefinition:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/core/Cache;

.field private mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/core/ArrayRow;

.field private mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    #@6
    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@8
    const/4 v1, 0x0

    #@9
    .line 58
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    #@b
    const/16 v2, 0x20

    #@d
    .line 65
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@f
    .line 66
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@11
    .line 67
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@13
    .line 70
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    #@15
    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    #@17
    new-array v1, v2, [Z

    #@19
    .line 74
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 76
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@1e
    .line 77
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@20
    .line 78
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    #@22
    .line 82
    sget v1, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    #@24
    new-array v1, v1, [Landroidx/constraintlayout/core/SolverVariable;

    #@26
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@28
    .line 83
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    #@2a
    new-array v0, v2, [Landroidx/constraintlayout/core/ArrayRow;

    #@2c
    .line 95
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@2e
    .line 96
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->releaseRows()V

    #@31
    .line 97
    new-instance v0, Landroidx/constraintlayout/core/Cache;

    #@33
    invoke-direct {v0}, Landroidx/constraintlayout/core/Cache;-><init>()V

    #@36
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@38
    .line 98
    new-instance v1, Landroidx/constraintlayout/core/PriorityGoalRow;

    #@3a
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    #@3d
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@3f
    .line 99
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    #@41
    if-eqz v1, :cond_4b

    #@43
    .line 100
    new-instance v1, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    #@45
    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    #@48
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@4a
    goto :goto_52

    #@4b
    .line 102
    :cond_4b
    new-instance v1, Landroidx/constraintlayout/core/ArrayRow;

    #@4d
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    #@50
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@52
    :goto_52
    return-void
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 5

    #@0
    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@2
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    #@4
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    #@a
    if-nez v0, :cond_15

    #@c
    .line 372
    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    #@e
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    #@11
    .line 373
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    #@14
    goto :goto_1b

    #@15
    .line 375
    :cond_15
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    #@18
    .line 376
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    #@1b
    .line 378
    :goto_1b
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    #@1d
    sget p2, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    #@1f
    if-lt p1, p2, :cond_2f

    #@21
    mul-int/lit8 p2, p2, 0x2

    #@23
    .line 379
    sput p2, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    #@25
    .line 380
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@27
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@2a
    move-result-object p1

    #@2b
    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    #@2d
    iput-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@2f
    .line 382
    :cond_2f
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@31
    iget p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    #@33
    add-int/lit8 v1, p2, 0x1

    #@35
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    #@37
    aput-object v0, p1, p2

    #@39
    return-object v0
.end method

.method private addError(Landroidx/constraintlayout/core/ArrayRow;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 306
    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    #@4
    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .registers 9

    #@0
    .line 639
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    #@2
    if-eqz v0, :cond_10

    #@4
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 640
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@a
    iget p1, p1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@c
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    #@f
    goto :goto_27

    #@10
    .line 642
    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@12
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@14
    aput-object p1, v0, v1

    #@16
    .line 643
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@18
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@1a
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@1c
    .line 644
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@22
    .line 645
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@24
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    #@27
    .line 652
    :goto_27
    sget-boolean p1, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    #@29
    if-eqz p1, :cond_a3

    #@2b
    iget-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    #@2d
    if-eqz p1, :cond_a3

    #@2f
    const/4 p1, 0x0

    #@30
    move v0, p1

    #@31
    .line 654
    :goto_31
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@33
    if-ge v0, v1, :cond_a1

    #@35
    .line 655
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@37
    aget-object v1, v1, v0

    #@39
    if-nez v1, :cond_42

    #@3b
    .line 656
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    const-string v2, "WTF"

    #@3f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@42
    .line 658
    :cond_42
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@44
    aget-object v1, v1, v0

    #@46
    if-eqz v1, :cond_9e

    #@48
    iget-boolean v1, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@4a
    if-eqz v1, :cond_9e

    #@4c
    .line 659
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@4e
    aget-object v1, v1, v0

    #@50
    .line 660
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@52
    iget v3, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@54
    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    #@57
    .line 661
    sget-boolean v2, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    #@59
    if-eqz v2, :cond_63

    #@5b
    .line 662
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@5d
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@5f
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@62
    goto :goto_6a

    #@63
    .line 664
    :cond_63
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@65
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@67
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@6a
    .line 666
    :goto_6a
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@6c
    const/4 v2, 0x0

    #@6d
    aput-object v2, v1, v0

    #@6f
    add-int/lit8 v1, v0, 0x1

    #@71
    move v3, v1

    #@72
    .line 668
    :goto_72
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@74
    if-ge v1, v4, :cond_92

    #@76
    .line 669
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@78
    add-int/lit8 v4, v1, -0x1

    #@7a
    aget-object v5, v3, v1

    #@7c
    aput-object v5, v3, v4

    #@7e
    .line 670
    iget-object v3, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@80
    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@82
    if-ne v3, v1, :cond_8c

    #@84
    .line 671
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@86
    aget-object v3, v3, v4

    #@88
    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@8a
    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@8c
    :cond_8c
    add-int/lit8 v3, v1, 0x1

    #@8e
    move v6, v3

    #@8f
    move v3, v1

    #@90
    move v1, v6

    #@91
    goto :goto_72

    #@92
    :cond_92
    if-ge v3, v4, :cond_98

    #@94
    .line 676
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@96
    aput-object v2, v1, v3

    #@98
    :cond_98
    add-int/lit8 v4, v4, -0x1

    #@9a
    .line 678
    iput v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@9c
    add-int/lit8 v0, v0, -0x1

    #@9e
    :cond_9e
    add-int/lit8 v0, v0, 0x1

    #@a0
    goto :goto_31

    #@a1
    .line 682
    :cond_a1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    #@a3
    :cond_a3
    return-void
.end method

.method private addSingleError(Landroidx/constraintlayout/core/ArrayRow;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 310
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    #@4
    return-void
.end method

.method private computeValues()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1036
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@3
    if-ge v0, v1, :cond_12

    #@5
    .line 1037
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@7
    aget-object v1, v1, v0

    #@9
    .line 1038
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@b
    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@d
    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_1

    #@12
    :cond_12
    return-void
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .registers 4

    #@0
    .line 1430
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@3
    move-result-object p0

    #@4
    .line 1431
    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private createVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 8

    #@0
    .line 328
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 329
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->variables:J

    #@6
    const-wide/16 v3, 0x1

    #@8
    add-long/2addr v1, v3

    #@9
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->variables:J

    #@b
    .line 331
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@11
    if-lt v0, v1, :cond_16

    #@13
    .line 332
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    .line 334
    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    #@1a
    move-result-object p2

    #@1b
    .line 335
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    #@1e
    .line 336
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@24
    .line 337
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@2a
    .line 338
    iput v0, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2c
    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    #@2e
    if-nez v0, :cond_37

    #@30
    .line 340
    new-instance v0, Ljava/util/HashMap;

    #@32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@35
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    #@37
    .line 342
    :cond_37
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    #@39
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 343
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@3e
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@40
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@42
    aput-object p2, p1, v0

    #@44
    return-object p2
.end method

.method private displayRows()V
    .registers 5

    #@0
    .line 1048
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    #@3
    const-string v0, ""

    #@5
    const/4 v1, 0x0

    #@6
    .line 1050
    :goto_6
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@8
    const-string v3, "\n"

    #@a
    if-ge v1, v2, :cond_35

    #@c
    .line 1051
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@17
    aget-object v2, v2, v1

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_6

    #@35
    .line 1054
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 1055
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4e
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    return-void
.end method

.method private displaySolverVariables()V
    .registers 3

    #@0
    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "Display Rows ("

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "x"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ")\n"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 1155
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@25
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    return-void
.end method

.method private enforceBFS(Landroidx/constraintlayout/core/LinearSystem$Row;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    const/4 v2, 0x0

    #@3
    .line 879
    :goto_3
    iget v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@5
    const/4 v4, 0x0

    #@6
    if-ge v2, v3, :cond_24

    #@8
    .line 880
    iget-object v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@a
    aget-object v3, v3, v2

    #@c
    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@e
    .line 881
    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@10
    sget-object v6, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@12
    if-ne v3, v6, :cond_15

    #@14
    goto :goto_21

    #@15
    .line 884
    :cond_15
    iget-object v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@17
    aget-object v3, v3, v2

    #@19
    iget v3, v3, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@1b
    cmpg-float v3, v3, v4

    #@1d
    if-gez v3, :cond_21

    #@1f
    const/4 v2, 0x1

    #@20
    goto :goto_25

    #@21
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_3

    #@24
    :cond_24
    const/4 v2, 0x0

    #@25
    :goto_25
    if-eqz v2, :cond_10d

    #@27
    const/4 v2, 0x0

    #@28
    const/4 v3, 0x0

    #@29
    :cond_29
    :goto_29
    if-nez v2, :cond_10b

    #@2b
    .line 902
    sget-object v6, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2d
    const-wide/16 v7, 0x1

    #@2f
    if-eqz v6, :cond_36

    #@31
    .line 903
    iget-wide v9, v6, Landroidx/constraintlayout/core/Metrics;->bfs:J

    #@33
    add-long/2addr v9, v7

    #@34
    iput-wide v9, v6, Landroidx/constraintlayout/core/Metrics;->bfs:J

    #@36
    :cond_36
    add-int/lit8 v3, v3, 0x1

    #@38
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    #@3b
    const/4 v10, 0x0

    #@3c
    const/4 v11, -0x1

    #@3d
    const/4 v12, -0x1

    #@3e
    const/4 v13, 0x0

    #@3f
    .line 914
    :goto_3f
    iget v14, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@41
    if-ge v10, v14, :cond_d8

    #@43
    .line 915
    iget-object v14, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@45
    aget-object v14, v14, v10

    #@47
    .line 916
    iget-object v15, v14, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@49
    .line 917
    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@4b
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@4d
    if-ne v15, v1, :cond_51

    #@4f
    goto/16 :goto_d2

    #@51
    .line 922
    :cond_51
    iget-boolean v1, v14, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@53
    if-eqz v1, :cond_57

    #@55
    goto/16 :goto_d2

    #@57
    .line 925
    :cond_57
    iget v1, v14, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@59
    cmpg-float v1, v1, v4

    #@5b
    if-gez v1, :cond_d2

    #@5d
    .line 930
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->SKIP_COLUMNS:Z

    #@5f
    const/16 v15, 0x9

    #@61
    if-eqz v1, :cond_9e

    #@63
    .line 931
    iget-object v1, v14, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@65
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@68
    move-result v1

    #@69
    const/4 v5, 0x0

    #@6a
    :goto_6a
    if-ge v5, v1, :cond_d2

    #@6c
    .line 933
    iget-object v7, v14, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@6e
    invoke-interface {v7, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@71
    move-result-object v7

    #@72
    .line 934
    iget-object v8, v14, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@74
    invoke-interface {v8, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@77
    move-result v8

    #@78
    cmpg-float v16, v8, v4

    #@7a
    if-gtz v16, :cond_7d

    #@7c
    goto :goto_97

    #@7d
    :cond_7d
    const/4 v6, 0x0

    #@7e
    :goto_7e
    if-ge v6, v15, :cond_97

    #@80
    .line 942
    iget-object v15, v7, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    #@82
    aget v15, v15, v6

    #@84
    div-float/2addr v15, v8

    #@85
    cmpg-float v18, v15, v9

    #@87
    if-gez v18, :cond_8b

    #@89
    if-eq v6, v13, :cond_8d

    #@8b
    :cond_8b
    if-le v6, v13, :cond_92

    #@8d
    .line 946
    :cond_8d
    iget v12, v7, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@8f
    move v13, v6

    #@90
    move v11, v10

    #@91
    move v9, v15

    #@92
    :cond_92
    add-int/lit8 v6, v6, 0x1

    #@94
    const/16 v15, 0x9

    #@96
    goto :goto_7e

    #@97
    :cond_97
    :goto_97
    add-int/lit8 v5, v5, 0x1

    #@99
    const-wide/16 v7, 0x1

    #@9b
    const/16 v15, 0x9

    #@9d
    goto :goto_6a

    #@9e
    :cond_9e
    const/4 v1, 0x1

    #@9f
    .line 952
    :goto_9f
    iget v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@a1
    if-ge v1, v5, :cond_d2

    #@a3
    .line 953
    iget-object v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@a5
    iget-object v5, v5, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@a7
    aget-object v5, v5, v1

    #@a9
    .line 954
    iget-object v6, v14, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@ab
    invoke-interface {v6, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@ae
    move-result v6

    #@af
    cmpg-float v7, v6, v4

    #@b1
    if-gtz v7, :cond_b6

    #@b3
    const/16 v8, 0x9

    #@b5
    goto :goto_cf

    #@b6
    :cond_b6
    const/4 v7, 0x0

    #@b7
    const/16 v8, 0x9

    #@b9
    :goto_b9
    if-ge v7, v8, :cond_cf

    #@bb
    .line 962
    iget-object v15, v5, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    #@bd
    aget v15, v15, v7

    #@bf
    div-float/2addr v15, v6

    #@c0
    cmpg-float v17, v15, v9

    #@c2
    if-gez v17, :cond_c6

    #@c4
    if-eq v7, v13, :cond_c8

    #@c6
    :cond_c6
    if-le v7, v13, :cond_cc

    #@c8
    :cond_c8
    move v12, v1

    #@c9
    move v13, v7

    #@ca
    move v11, v10

    #@cb
    move v9, v15

    #@cc
    :cond_cc
    add-int/lit8 v7, v7, 0x1

    #@ce
    goto :goto_b9

    #@cf
    :cond_cf
    :goto_cf
    add-int/lit8 v1, v1, 0x1

    #@d1
    goto :goto_9f

    #@d2
    :cond_d2
    :goto_d2
    add-int/lit8 v10, v10, 0x1

    #@d4
    const-wide/16 v7, 0x1

    #@d6
    goto/16 :goto_3f

    #@d8
    :cond_d8
    const/4 v1, -0x1

    #@d9
    if-eq v11, v1, :cond_101

    #@db
    .line 977
    iget-object v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@dd
    aget-object v5, v5, v11

    #@df
    .line 982
    iget-object v6, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@e1
    iput v1, v6, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@e3
    .line 983
    sget-object v1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@e5
    if-eqz v1, :cond_ee

    #@e7
    .line 984
    iget-wide v6, v1, Landroidx/constraintlayout/core/Metrics;->pivots:J

    #@e9
    const-wide/16 v8, 0x1

    #@eb
    add-long/2addr v6, v8

    #@ec
    iput-wide v6, v1, Landroidx/constraintlayout/core/Metrics;->pivots:J

    #@ee
    .line 986
    :cond_ee
    iget-object v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@f0
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@f2
    aget-object v1, v1, v12

    #@f4
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    #@f7
    .line 987
    iget-object v1, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@f9
    iput v11, v1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@fb
    .line 988
    iget-object v1, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@fd
    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    #@100
    goto :goto_102

    #@101
    :cond_101
    const/4 v2, 0x1

    #@102
    .line 997
    :goto_102
    iget v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@104
    div-int/lit8 v1, v1, 0x2

    #@106
    if-le v3, v1, :cond_29

    #@108
    const/4 v2, 0x1

    #@109
    goto/16 :goto_29

    #@10b
    :cond_10b
    move v1, v3

    #@10c
    goto :goto_10e

    #@10d
    :cond_10d
    const/4 v1, 0x0

    #@10e
    :goto_10e
    return v1
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .registers 5

    #@0
    mul-int/lit8 p1, p1, 0x4

    #@2
    .line 1159
    div-int/lit16 v0, p1, 0x400

    #@4
    div-int/lit16 v1, v0, 0x400

    #@6
    const-string v2, ""

    #@8
    if-lez v1, :cond_1e

    #@a
    .line 1161
    new-instance p1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object p1

    #@13
    const-string v0, " Mb"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    return-object p1

    #@1e
    :cond_1e
    if-lez v0, :cond_34

    #@20
    .line 1165
    new-instance p1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object p1

    #@29
    const-string v0, " Kb"

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object p1

    #@2f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object p1

    #@33
    return-object p1

    #@34
    .line 1167
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object p1

    #@3d
    const-string v0, " bytes"

    #@3f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object p1

    #@47
    return-object p1
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_6

    #@3
    const-string p1, "LOW"

    #@5
    return-object p1

    #@6
    :cond_6
    const/4 v0, 0x2

    #@7
    if-ne p1, v0, :cond_c

    #@9
    const-string p1, "MEDIUM"

    #@b
    return-object p1

    #@c
    :cond_c
    const/4 v0, 0x3

    #@d
    if-ne p1, v0, :cond_12

    #@f
    const-string p1, "HIGH"

    #@11
    return-object p1

    #@12
    :cond_12
    const/4 v0, 0x4

    #@13
    if-ne p1, v0, :cond_18

    #@15
    const-string p1, "HIGHEST"

    #@17
    return-object p1

    #@18
    :cond_18
    const/4 v0, 0x5

    #@19
    if-ne p1, v0, :cond_1e

    #@1b
    const-string p1, "EQUALITY"

    #@1d
    return-object p1

    #@1e
    :cond_1e
    const/16 v0, 0x8

    #@20
    if-ne p1, v0, :cond_25

    #@22
    const-string p1, "FIXED"

    #@24
    return-object p1

    #@25
    :cond_25
    const/4 v0, 0x6

    #@26
    if-ne p1, v0, :cond_2b

    #@28
    const-string p1, "BARRIER"

    #@2a
    return-object p1

    #@2b
    :cond_2b
    const-string p1, "NONE"

    #@2d
    return-object p1
.end method

.method public static getMetrics()Landroidx/constraintlayout/core/Metrics;
    .registers 1

    #@0
    .line 111
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    return-object v0
.end method

.method private increaseTableSize()V
    .registers 6

    #@0
    .line 140
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@2
    mul-int/lit8 v0, v0, 0x2

    #@4
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@6
    .line 141
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@8
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Landroidx/constraintlayout/core/ArrayRow;

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@10
    .line 142
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@12
    iget-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@14
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@16
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    #@1c
    iput-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@1e
    .line 143
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@20
    new-array v1, v0, [Z

    #@22
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    #@24
    .line 144
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@26
    .line 145
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    #@28
    .line 146
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2a
    if-eqz v0, :cond_46

    #@2c
    .line 147
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    #@2e
    const-wide/16 v3, 0x1

    #@30
    add-long/2addr v1, v3

    #@31
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    #@33
    .line 148
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@35
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    #@37
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@39
    int-to-long v3, v3

    #@3a
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    #@3d
    move-result-wide v1

    #@3e
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    #@40
    .line 149
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@42
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    #@44
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->lastTableSize:J

    #@46
    :cond_46
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I
    .registers 15

    #@0
    .line 716
    sget-object p2, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    const-wide/16 v0, 0x1

    #@4
    if-eqz p2, :cond_b

    #@6
    .line 717
    iget-wide v2, p2, Landroidx/constraintlayout/core/Metrics;->optimize:J

    #@8
    add-long/2addr v2, v0

    #@9
    iput-wide v2, p2, Landroidx/constraintlayout/core/Metrics;->optimize:J

    #@b
    :cond_b
    const/4 p2, 0x0

    #@c
    move v2, p2

    #@d
    .line 721
    :goto_d
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@f
    if-ge v2, v3, :cond_18

    #@11
    .line 722
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    #@13
    aput-boolean p2, v3, v2

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_d

    #@18
    :cond_18
    move v2, p2

    #@19
    move v3, v2

    #@1a
    :cond_1a
    :goto_1a
    if-nez v2, :cond_b6

    #@1c
    .line 734
    sget-object v4, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@1e
    if-eqz v4, :cond_25

    #@20
    .line 735
    iget-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->iterations:J

    #@22
    add-long/2addr v5, v0

    #@23
    iput-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->iterations:J

    #@25
    :cond_25
    add-int/lit8 v3, v3, 0x1

    #@27
    .line 742
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@29
    mul-int/lit8 v4, v4, 0x2

    #@2b
    if-lt v3, v4, :cond_2e

    #@2d
    return v3

    #@2e
    .line 749
    :cond_2e
    invoke-interface {p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    #@31
    move-result-object v4

    #@32
    const/4 v5, 0x1

    #@33
    if-eqz v4, :cond_3f

    #@35
    .line 750
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    #@37
    invoke-interface {p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    #@3a
    move-result-object v6

    #@3b
    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@3d
    aput-boolean v5, v4, v6

    #@3f
    .line 752
    :cond_3f
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    #@41
    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/core/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;

    #@44
    move-result-object v4

    #@45
    if-eqz v4, :cond_56

    #@47
    .line 758
    iget-object v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    #@49
    iget v7, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@4b
    aget-boolean v6, v6, v7

    #@4d
    if-eqz v6, :cond_50

    #@4f
    return v3

    #@50
    .line 764
    :cond_50
    iget-object v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    #@52
    iget v7, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@54
    aput-boolean v5, v6, v7

    #@56
    :cond_56
    if-eqz v4, :cond_b3

    #@58
    const/4 v5, -0x1

    #@59
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    #@5c
    move v7, p2

    #@5d
    move v8, v5

    #@5e
    .line 785
    :goto_5e
    iget v9, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@60
    if-ge v7, v9, :cond_92

    #@62
    .line 786
    iget-object v9, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@64
    aget-object v9, v9, v7

    #@66
    .line 787
    iget-object v10, v9, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@68
    .line 788
    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@6a
    sget-object v11, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@6c
    if-ne v10, v11, :cond_6f

    #@6e
    goto :goto_8f

    #@6f
    .line 792
    :cond_6f
    iget-boolean v10, v9, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@71
    if-eqz v10, :cond_74

    #@73
    goto :goto_8f

    #@74
    .line 796
    :cond_74
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/core/ArrayRow;->hasVariable(Landroidx/constraintlayout/core/SolverVariable;)Z

    #@77
    move-result v10

    #@78
    if-eqz v10, :cond_8f

    #@7a
    .line 802
    iget-object v10, v9, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@7c
    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@7f
    move-result v10

    #@80
    const/4 v11, 0x0

    #@81
    cmpg-float v11, v10, v11

    #@83
    if-gez v11, :cond_8f

    #@85
    .line 804
    iget v9, v9, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@87
    neg-float v9, v9

    #@88
    div-float/2addr v9, v10

    #@89
    cmpg-float v10, v9, v6

    #@8b
    if-gez v10, :cond_8f

    #@8d
    move v8, v7

    #@8e
    move v6, v9

    #@8f
    :cond_8f
    :goto_8f
    add-int/lit8 v7, v7, 0x1

    #@91
    goto :goto_5e

    #@92
    :cond_92
    if-le v8, v5, :cond_1a

    #@94
    .line 819
    iget-object v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@96
    aget-object v6, v6, v8

    #@98
    .line 820
    iget-object v7, v6, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@9a
    iput v5, v7, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@9c
    .line 821
    sget-object v5, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@9e
    if-eqz v5, :cond_a5

    #@a0
    .line 822
    iget-wide v9, v5, Landroidx/constraintlayout/core/Metrics;->pivots:J

    #@a2
    add-long/2addr v9, v0

    #@a3
    iput-wide v9, v5, Landroidx/constraintlayout/core/Metrics;->pivots:J

    #@a5
    .line 824
    :cond_a5
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    #@a8
    .line 825
    iget-object v4, v6, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@aa
    iput v8, v4, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@ac
    .line 826
    iget-object v4, v6, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@ae
    invoke-virtual {v4, p0, v6}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    #@b1
    goto/16 :goto_1a

    #@b3
    :cond_b3
    move v2, v5

    #@b4
    goto/16 :goto_1a

    #@b6
    :cond_b6
    return v3
.end method

.method private releaseRows()V
    .registers 5

    #@0
    .line 157
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_1e

    #@6
    .line 158
    :goto_6
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@8
    if-ge v2, v0, :cond_36

    #@a
    .line 159
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@c
    aget-object v0, v0, v2

    #@e
    if-eqz v0, :cond_17

    #@10
    .line 161
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@12
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@14
    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@17
    .line 163
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@19
    aput-object v1, v0, v2

    #@1b
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_6

    #@1e
    .line 166
    :cond_1e
    :goto_1e
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@20
    if-ge v2, v0, :cond_36

    #@22
    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@24
    aget-object v0, v0, v2

    #@26
    if-eqz v0, :cond_2f

    #@28
    .line 169
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@2a
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@2c
    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@2f
    .line 171
    :cond_2f
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@31
    aput-object v1, v0, v2

    #@33
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_1e

    #@36
    :cond_36
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v2, p2

    #@6
    .line 1445
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@8
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@f
    move-result-object v5

    #@10
    .line 1446
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@12
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@19
    move-result-object v7

    #@1a
    .line 1447
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1c
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@23
    move-result-object v3

    #@24
    .line 1448
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@26
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@2d
    move-result-object v8

    #@2e
    .line 1450
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@30
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@37
    move-result-object v1

    #@38
    .line 1451
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3a
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@41
    move-result-object v9

    #@42
    .line 1452
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@44
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@4b
    move-result-object v12

    #@4c
    .line 1453
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@4e
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@55
    move-result-object v10

    #@56
    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@59
    move-result-object v2

    #@5a
    move/from16 v4, p3

    #@5c
    float-to-double v13, v4

    #@5d
    .line 1456
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    #@60
    move-result-wide v15

    #@61
    move/from16 v4, p4

    #@63
    move-object/from16 v17, v3

    #@65
    int-to-double v3, v4

    #@66
    move-object/from16 p1, v12

    #@68
    mul-double v11, v15, v3

    #@6a
    double-to-float v11, v11

    #@6b
    move-object v6, v2

    #@6c
    .line 1457
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    #@6f
    .line 1458
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@72
    .line 1459
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@75
    move-result-object v2

    #@76
    .line 1460
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    #@79
    move-result-wide v6

    #@7a
    mul-double/2addr v6, v3

    #@7b
    double-to-float v9, v6

    #@7c
    move-object v4, v2

    #@7d
    move-object/from16 v6, v17

    #@7f
    move-object v7, v1

    #@80
    move-object/from16 v8, p1

    #@82
    .line 1461
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/core/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    #@85
    .line 1462
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@88
    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 20

    #@0
    move-object v0, p0

    #@1
    move/from16 v1, p8

    #@3
    .line 1288
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@6
    move-result-object v10

    #@7
    move-object v2, v10

    #@8
    move-object v3, p1

    #@9
    move-object v4, p2

    #@a
    move v5, p3

    #@b
    move v6, p4

    #@c
    move-object/from16 v7, p5

    #@e
    move-object/from16 v8, p6

    #@10
    move/from16 v9, p7

    #@12
    .line 1289
    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/core/ArrayRow;->createRowCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@15
    const/16 v2, 0x8

    #@17
    if-eq v1, v2, :cond_1c

    #@19
    .line 1291
    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    #@1c
    .line 1293
    :cond_1c
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@1f
    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V
    .registers 9

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 556
    :cond_3
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@5
    const-wide/16 v1, 0x1

    #@7
    if-eqz v0, :cond_19

    #@9
    .line 557
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    #@b
    add-long/2addr v3, v1

    #@c
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    #@e
    .line 558
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@10
    if-eqz v0, :cond_19

    #@12
    .line 559
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@14
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    #@16
    add-long/2addr v3, v1

    #@17
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    #@19
    .line 562
    :cond_19
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@1b
    const/4 v3, 0x1

    #@1c
    add-int/2addr v0, v3

    #@1d
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    #@1f
    if-ge v0, v4, :cond_28

    #@21
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@23
    add-int/2addr v0, v3

    #@24
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@26
    if-lt v0, v4, :cond_2b

    #@28
    .line 563
    :cond_28
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    #@2b
    .line 571
    :cond_2b
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@2d
    const/4 v4, 0x0

    #@2e
    if-nez v0, :cond_a3

    #@30
    .line 573
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSystem(Landroidx/constraintlayout/core/LinearSystem;)V

    #@33
    .line 575
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->isEmpty()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3a

    #@39
    return-void

    #@3a
    .line 580
    :cond_3a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->ensurePositiveConstant()V

    #@3d
    .line 587
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/ArrayRow;->chooseSubject(Landroidx/constraintlayout/core/LinearSystem;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_9a

    #@43
    .line 589
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/core/SolverVariable;

    #@46
    move-result-object v0

    #@47
    .line 590
    iput-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@49
    .line 591
    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@4b
    .line 592
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@4e
    .line 593
    iget v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@50
    add-int/2addr v5, v3

    #@51
    if-ne v6, v5, :cond_9a

    #@53
    .line 595
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@55
    invoke-interface {v4, p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    #@58
    .line 596
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@5a
    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I

    #@5d
    .line 597
    iget v4, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@5f
    const/4 v5, -0x1

    #@60
    if-ne v4, v5, :cond_9b

    #@62
    .line 601
    iget-object v4, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@64
    if-ne v4, v0, :cond_78

    #@66
    .line 603
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/ArrayRow;->pickPivot(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    #@69
    move-result-object v0

    #@6a
    if-eqz v0, :cond_78

    #@6c
    .line 605
    sget-object v4, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@6e
    if-eqz v4, :cond_75

    #@70
    .line 606
    iget-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->pivots:J

    #@72
    add-long/2addr v5, v1

    #@73
    iput-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->pivots:J

    #@75
    .line 608
    :cond_75
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    #@78
    .line 611
    :cond_78
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@7a
    if-nez v0, :cond_81

    #@7c
    .line 612
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@7e
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    #@81
    .line 614
    :cond_81
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    #@83
    if-eqz v0, :cond_8d

    #@85
    .line 615
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@87
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@89
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@8c
    goto :goto_94

    #@8d
    .line 617
    :cond_8d
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@8f
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@91
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@94
    .line 619
    :goto_94
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@96
    sub-int/2addr v0, v3

    #@97
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@99
    goto :goto_9b

    #@9a
    :cond_9a
    move v3, v4

    #@9b
    .line 624
    :cond_9b
    :goto_9b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->hasKeyVariable()Z

    #@9e
    move-result v0

    #@9f
    if-nez v0, :cond_a2

    #@a1
    return-void

    #@a2
    :cond_a2
    move v4, v3

    #@a3
    :cond_a3
    if-nez v4, :cond_a8

    #@a5
    .line 634
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@a8
    :cond_a8
    return-void
.end method

.method public addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;
    .registers 8

    #@0
    .line 1336
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    #@2
    const/16 v1, 0x8

    #@4
    if-eqz v0, :cond_1a

    #@6
    if-ne p4, v1, :cond_1a

    #@8
    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@a
    if-eqz v0, :cond_1a

    #@c
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@e
    const/4 v2, -0x1

    #@f
    if-ne v0, v2, :cond_1a

    #@11
    .line 1340
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@13
    int-to-float p3, p3

    #@14
    add-float/2addr p2, p3

    #@15
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    #@18
    const/4 p1, 0x0

    #@19
    return-object p1

    #@1a
    .line 1362
    :cond_1a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@1d
    move-result-object v0

    #@1e
    .line 1363
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowEquals(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@21
    if-eq p4, v1, :cond_26

    #@23
    .line 1365
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    #@26
    .line 1367
    :cond_26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@29
    return-object v0
.end method

.method public addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V
    .registers 8

    #@0
    .line 1377
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v0, :cond_30

    #@6
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@8
    if-ne v0, v1, :cond_30

    #@a
    int-to-float p2, p2

    #@b
    .line 1381
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    #@e
    const/4 v0, 0x0

    #@f
    .line 1382
    :goto_f
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@11
    add-int/2addr v1, v2

    #@12
    if-ge v0, v1, :cond_2f

    #@14
    .line 1383
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@16
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@18
    aget-object v1, v1, v0

    #@1a
    if-eqz v1, :cond_2c

    #@1c
    .line 1384
    iget-boolean v3, v1, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@1e
    if-eqz v3, :cond_2c

    #@20
    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@22
    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@24
    if-ne v3, v4, :cond_2c

    #@26
    .line 1385
    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@28
    add-float/2addr v3, p2

    #@29
    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    #@2c
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_f

    #@2f
    :cond_2f
    return-void

    #@30
    .line 1393
    :cond_30
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@32
    .line 1394
    iget v3, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@34
    if-eq v3, v1, :cond_5b

    #@36
    .line 1395
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@38
    aget-object v0, v1, v0

    #@3a
    .line 1396
    iget-boolean v1, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@3c
    if-eqz v1, :cond_42

    #@3e
    int-to-float p1, p2

    #@3f
    .line 1397
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@41
    goto :goto_65

    #@42
    .line 1399
    :cond_42
    iget-object v1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@44
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@47
    move-result v1

    #@48
    if-nez v1, :cond_50

    #@4a
    .line 1400
    iput-boolean v2, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@4c
    int-to-float p1, p2

    #@4d
    .line 1401
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@4f
    goto :goto_65

    #@50
    .line 1403
    :cond_50
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@53
    move-result-object v0

    #@54
    .line 1404
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow;->createRowEquals(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@57
    .line 1405
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@5a
    goto :goto_65

    #@5b
    .line 1409
    :cond_5b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@5e
    move-result-object v0

    #@5f
    .line 1410
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@62
    .line 1411
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@65
    :goto_65
    return-void
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .registers 7

    #@0
    .line 1229
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@3
    move-result-object p4

    #@4
    .line 1230
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    .line 1231
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@b
    .line 1232
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@e
    .line 1233
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@11
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 8

    #@0
    .line 1214
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@3
    move-result-object v0

    #@4
    .line 1215
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    .line 1216
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@b
    .line 1217
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@e
    const/16 p1, 0x8

    #@10
    if-eq p4, p1, :cond_1f

    #@12
    .line 1219
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@14
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@17
    move-result p1

    #@18
    const/high16 p2, -0x40800000    # -1.0f

    #@1a
    mul-float/2addr p1, p2

    #@1b
    float-to-int p1, p1

    #@1c
    .line 1220
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    #@1f
    .line 1222
    :cond_1f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@22
    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .registers 7

    #@0
    .line 1262
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@3
    move-result-object p4

    #@4
    .line 1263
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    .line 1264
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@b
    .line 1265
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@e
    .line 1266
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@11
    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 8

    #@0
    .line 1247
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@3
    move-result-object v0

    #@4
    .line 1248
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    .line 1249
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@b
    .line 1250
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@e
    const/16 p1, 0x8

    #@10
    if-eq p4, p1, :cond_1f

    #@12
    .line 1252
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@14
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@17
    move-result p1

    #@18
    const/high16 p2, -0x40800000    # -1.0f

    #@1a
    mul-float/2addr p1, p2

    #@1b
    float-to-int p1, p1

    #@1c
    .line 1253
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    #@1f
    .line 1255
    :cond_1f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@22
    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V
    .registers 14

    #@0
    .line 1300
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@3
    move-result-object v6

    #@4
    move-object v0, v6

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    move v5, p5

    #@a
    .line 1301
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    #@d
    const/16 p1, 0x8

    #@f
    if-eq p6, p1, :cond_14

    #@11
    .line 1303
    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    #@14
    .line 1305
    :cond_14
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@17
    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 323
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    #@4
    move-result-object p3

    #@5
    .line 324
    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/core/ArrayRow;->addSingleError(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    #@8
    return-void
.end method

.method public addSynonym(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V
    .registers 6

    #@0
    .line 1309
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_29

    #@5
    if-nez p3, :cond_29

    #@7
    .line 1313
    iget-boolean p3, p2, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@9
    if-eqz p3, :cond_15

    #@b
    .line 1314
    iget p3, p2, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@d
    .line 1315
    iget-object p3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@f
    iget-object p3, p3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@11
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@13
    aget-object p2, p3, p2

    #@15
    .line 1317
    :cond_15
    iget-boolean p3, p1, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@17
    if-eqz p3, :cond_24

    #@19
    .line 1318
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@1b
    .line 1319
    iget-object p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@1d
    iget-object p2, p2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@1f
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@21
    aget-object p1, p2, p1

    #@23
    goto :goto_2e

    #@24
    :cond_24
    const/4 p3, 0x0

    #@25
    .line 1321
    invoke-virtual {p1, p0, p2, p3}, Landroidx/constraintlayout/core/SolverVariable;->setSynonym(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;F)V

    #@28
    goto :goto_2e

    #@29
    :cond_29
    const/16 v0, 0x8

    #@2b
    .line 1324
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@2e
    :goto_2e
    return-void
.end method

.method final cleanupRows()V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    .line 524
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@3
    if-ge v0, v1, :cond_56

    #@5
    .line 525
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@7
    aget-object v1, v1, v0

    #@9
    .line 526
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@b
    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x1

    #@10
    if-nez v2, :cond_14

    #@12
    .line 527
    iput-boolean v3, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@14
    .line 529
    :cond_14
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@16
    if-eqz v2, :cond_54

    #@18
    .line 530
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@1a
    iget v4, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@1c
    iput v4, v2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@1e
    .line 531
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@20
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@23
    move v2, v0

    #@24
    .line 532
    :goto_24
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@26
    add-int/lit8 v5, v4, -0x1

    #@28
    if-ge v2, v5, :cond_34

    #@2a
    .line 533
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@2c
    add-int/lit8 v5, v2, 0x1

    #@2e
    aget-object v6, v4, v5

    #@30
    aput-object v6, v4, v2

    #@32
    move v2, v5

    #@33
    goto :goto_24

    #@34
    .line 535
    :cond_34
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@36
    add-int/lit8 v5, v4, -0x1

    #@38
    const/4 v6, 0x0

    #@39
    aput-object v6, v2, v5

    #@3b
    add-int/lit8 v4, v4, -0x1

    #@3d
    .line 536
    iput v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@3f
    add-int/lit8 v0, v0, -0x1

    #@41
    .line 538
    sget-boolean v2, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    #@43
    if-eqz v2, :cond_4d

    #@45
    .line 539
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@47
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@49
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@4c
    goto :goto_54

    #@4d
    .line 541
    :cond_4d
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@4f
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@51
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@54
    :cond_54
    :goto_54
    add-int/2addr v0, v3

    #@55
    goto :goto_1

    #@56
    :cond_56
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 8

    #@0
    .line 348
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 349
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->errors:J

    #@6
    const-wide/16 v3, 0x1

    #@8
    add-long/2addr v1, v3

    #@9
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->errors:J

    #@b
    .line 351
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@11
    if-lt v0, v1, :cond_16

    #@13
    .line 352
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    #@16
    .line 354
    :cond_16
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@18
    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    #@1b
    move-result-object p2

    #@1c
    .line 355
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@22
    .line 356
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@28
    .line 357
    iput v0, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2a
    .line 358
    iput p1, p2, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@2c
    .line 359
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@2e
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@30
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@32
    aput-object p2, p1, v0

    #@34
    .line 360
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@36
    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/LinearSystem$Row;->addError(Landroidx/constraintlayout/core/SolverVariable;)V

    #@39
    return-object p2
.end method

.method public createExtraVariable()Landroidx/constraintlayout/core/SolverVariable;
    .registers 6

    #@0
    .line 291
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 292
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    #@6
    const-wide/16 v3, 0x1

    #@8
    add-long/2addr v1, v3

    #@9
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    #@b
    .line 294
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@11
    if-lt v0, v1, :cond_16

    #@13
    .line 295
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    #@16
    .line 297
    :cond_16
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    #@1c
    move-result-object v0

    #@1d
    .line 298
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@23
    .line 299
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@29
    .line 300
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2b
    .line 301
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@2d
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@2f
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@31
    aput-object v0, v1, v2

    #@33
    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return-object v0

    #@4
    .line 223
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@a
    if-lt v1, v2, :cond_f

    #@c
    .line 224
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    #@f
    .line 227
    :cond_f
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11
    if-eqz v1, :cond_5b

    #@13
    .line 228
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_25

    #@1b
    .line 230
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@1d
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@20
    .line 231
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    #@23
    move-result-object p1

    #@24
    move-object v0, p1

    #@25
    .line 233
    :cond_25
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@27
    const/4 v1, -0x1

    #@28
    if-eq p1, v1, :cond_3a

    #@2a
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2c
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@2e
    if-gt p1, v2, :cond_3a

    #@30
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@32
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@34
    iget v2, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@36
    aget-object p1, p1, v2

    #@38
    if-nez p1, :cond_5b

    #@3a
    .line 236
    :cond_3a
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@3c
    if-eq p1, v1, :cond_41

    #@3e
    .line 237
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    #@41
    .line 239
    :cond_41
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@43
    add-int/lit8 p1, p1, 0x1

    #@45
    iput p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@47
    .line 240
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@49
    add-int/lit8 v1, v1, 0x1

    #@4b
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@4d
    .line 241
    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@4f
    .line 242
    sget-object p1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@51
    iput-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@53
    .line 243
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@55
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@57
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@59
    aput-object v0, p1, v1

    #@5b
    :cond_5b
    return-object v0
.end method

.method public createRow()Landroidx/constraintlayout/core/ArrayRow;
    .registers 6

    #@0
    .line 254
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    #@2
    const-wide/16 v1, 0x1

    #@4
    if-eqz v0, :cond_23

    #@6
    .line 255
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@8
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@a
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    #@10
    if-nez v0, :cond_1f

    #@12
    .line 257
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    #@14
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@16
    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    #@19
    .line 258
    sget-wide v3, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    #@1b
    add-long/2addr v3, v1

    #@1c
    sput-wide v3, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    #@1e
    goto :goto_3f

    #@1f
    .line 260
    :cond_1f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->reset()V

    #@22
    goto :goto_3f

    #@23
    .line 263
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@25
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@27
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    #@2d
    if-nez v0, :cond_3c

    #@2f
    .line 265
    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    #@31
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@33
    invoke-direct {v0, v3}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    #@36
    .line 266
    sget-wide v3, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    #@38
    add-long/2addr v3, v1

    #@39
    sput-wide v3, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    #@3b
    goto :goto_3f

    #@3c
    .line 268
    :cond_3c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->reset()V

    #@3f
    .line 271
    :goto_3f
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable;->increaseErrorId()V

    #@42
    return-object v0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;
    .registers 6

    #@0
    .line 276
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 277
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    #@6
    const-wide/16 v3, 0x1

    #@8
    add-long/2addr v1, v3

    #@9
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    #@b
    .line 279
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@11
    if-lt v0, v1, :cond_16

    #@13
    .line 280
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    #@16
    .line 282
    :cond_16
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    #@1c
    move-result-object v0

    #@1d
    .line 283
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@23
    .line 284
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@29
    .line 285
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2b
    .line 286
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@2d
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@2f
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@31
    aput-object v0, v1, v2

    #@33
    return-object v0
.end method

.method public displayReadableRows()V
    .registers 10

    #@0
    .line 1059
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    #@3
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const-string v1, " num vars "

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string v1, "\n"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const/4 v2, 0x0

    #@1b
    move v3, v2

    #@1c
    .line 1061
    :goto_1c
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@1e
    add-int/lit8 v4, v4, 0x1

    #@20
    const-string v5, " = "

    #@22
    const-string v6, "] => "

    #@24
    if-ge v3, v4, :cond_62

    #@26
    .line 1062
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@28
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@2a
    aget-object v4, v4, v3

    #@2c
    if-eqz v4, :cond_5f

    #@2e
    .line 1063
    iget-boolean v7, v4, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@30
    if-eqz v7, :cond_5f

    #@32
    .line 1064
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string v7, " $["

    #@3d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    #@61
    goto :goto_1c

    #@62
    .line 1067
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    move v3, v2

    #@74
    .line 1068
    :goto_74
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@76
    add-int/lit8 v4, v4, 0x1

    #@78
    if-ge v3, v4, :cond_c8

    #@7a
    .line 1069
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@7c
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@7e
    aget-object v4, v4, v3

    #@80
    if-eqz v4, :cond_c5

    #@82
    .line 1070
    iget-boolean v7, v4, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@84
    if-eqz v7, :cond_c5

    #@86
    .line 1071
    iget-object v7, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@88
    iget-object v7, v7, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@8a
    iget v8, v4, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@8c
    aget-object v7, v7, v8

    #@8e
    .line 1072
    new-instance v8, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    const-string v8, " ~["

    #@99
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    const-string v7, " + "

    #@b3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@b9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v0

    #@c1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v0

    #@c5
    :cond_c5
    add-int/lit8 v3, v3, 0x1

    #@c7
    goto :goto_74

    #@c8
    .line 1075
    :cond_c8
    new-instance v3, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    const-string v3, "\n\n #  "

    #@d3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v0

    #@db
    .line 1076
    :goto_db
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@dd
    if-ge v2, v3, :cond_10e

    #@df
    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v0

    #@e8
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@ea
    aget-object v3, v3, v2

    #@ec
    invoke-virtual {v3}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v0

    #@f4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v0

    #@f8
    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v0

    #@101
    const-string v3, "\n #  "

    #@103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v0

    #@107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v0

    #@10b
    add-int/lit8 v2, v2, 0x1

    #@10d
    goto :goto_db

    #@10e
    .line 1080
    :cond_10e
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@110
    if-eqz v2, :cond_12f

    #@112
    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v0

    #@11b
    const-string v2, "Goal: "

    #@11d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v0

    #@121
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v0

    #@127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v0

    #@12b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v0

    #@12f
    .line 1083
    :cond_12f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@131
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@134
    return-void
.end method

.method displaySystemInformation()V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    move v2, v1

    #@3
    .line 1122
    :goto_3
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@5
    if-ge v1, v3, :cond_15

    #@7
    .line 1123
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@9
    aget-object v3, v3, v1

    #@b
    if-eqz v3, :cond_12

    #@d
    .line 1124
    invoke-virtual {v3}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    #@10
    move-result v3

    #@11
    add-int/2addr v2, v3

    #@12
    :cond_12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_3

    #@15
    :cond_15
    move v1, v0

    #@16
    move v3, v1

    #@17
    .line 1128
    :goto_17
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@19
    if-ge v1, v4, :cond_29

    #@1b
    .line 1129
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@1d
    aget-object v4, v4, v1

    #@1f
    if-eqz v4, :cond_26

    #@21
    .line 1130
    invoke-virtual {v4}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    #@24
    move-result v4

    #@25
    add-int/2addr v3, v4

    #@26
    :cond_26
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_17

    #@29
    .line 1134
    :cond_29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    const-string v5, "Linear System -> Table size: "

    #@2f
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@32
    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string v5, " ("

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    #@40
    mul-int/2addr v5, v5

    #@41
    .line 1135
    invoke-direct {p0, v5}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    const-string v5, ") -- row sizes: "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 1136
    invoke-direct {p0, v2}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    const-string v4, ", actual size: "

    #@59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    .line 1137
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    const-string v3, " rows: "

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    const-string v3, "/"

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    #@79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    const-string v4, " cols: "

    #@7f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    const-string v3, " 0 occupied cells, "

    #@95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    .line 1140
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v0

    #@a5
    .line 1134
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a8
    return-void
.end method

.method public displayVariablesReadableRows()V
    .registers 6

    #@0
    .line 1088
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    #@3
    const-string v0, ""

    #@5
    const/4 v1, 0x0

    #@6
    .line 1090
    :goto_6
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@8
    const-string v3, "\n"

    #@a
    if-ge v1, v2, :cond_45

    #@c
    .line 1091
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@e
    aget-object v2, v2, v1

    #@10
    iget-object v2, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@12
    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@14
    sget-object v4, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@16
    if-ne v2, v4, :cond_42

    #@18
    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@23
    aget-object v2, v2, v1

    #@25
    invoke-virtual {v2}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    :cond_42
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_6

    #@45
    .line 1096
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 1097
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5e
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/core/Metrics;)V
    .registers 2

    #@0
    .line 107
    sput-object p1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    return-void
.end method

.method public getCache()Landroidx/constraintlayout/core/Cache;
    .registers 2

    #@0
    .line 1171
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@2
    return-object v0
.end method

.method getGoal()Landroidx/constraintlayout/core/LinearSystem$Row;
    .registers 2

    #@0
    .line 394
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@2
    return-object v0
.end method

.method public getMemoryUsed()I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 1103
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@4
    if-ge v0, v2, :cond_14

    #@6
    .line 1104
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_11

    #@c
    .line 1105
    invoke-virtual {v2}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    #@f
    move-result v2

    #@10
    add-int/2addr v1, v2

    #@11
    :cond_11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_2

    #@14
    :cond_14
    return v1
.end method

.method public getNumEquations()I
    .registers 2

    #@0
    .line 1112
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@2
    return v0
.end method

.method public getNumVariables()I
    .registers 2

    #@0
    .line 1114
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@2
    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 409
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    .line 415
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_f

    #@8
    .line 417
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@a
    const/high16 v0, 0x3f000000    # 0.5f

    #@c
    add-float/2addr p1, v0

    #@d
    float-to-int p1, p1

    #@e
    return p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return p1
.end method

.method getRow(I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 3

    #@0
    .line 397
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@2
    aget-object p1, v0, p1

    #@4
    return-object p1
.end method

.method getValueFor(Ljava/lang/String;)F
    .registers 3

    #@0
    .line 401
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    #@5
    move-result-object p1

    #@6
    if-nez p1, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    return p1

    #@a
    .line 405
    :cond_a
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@c
    return p1
.end method

.method getVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 4

    #@0
    .line 430
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 431
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    #@b
    .line 433
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    #@13
    if-nez v0, :cond_19

    #@15
    .line 435
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    #@18
    move-result-object v0

    #@19
    :cond_19
    return-object v0
.end method

.method public minimize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 448
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    const-wide/16 v1, 0x1

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 449
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    #@8
    add-long/2addr v3, v1

    #@9
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    #@b
    .line 451
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@d
    invoke-interface {v0}, Landroidx/constraintlayout/core/LinearSystem$Row;->isEmpty()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_17

    #@13
    .line 455
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    #@16
    return-void

    #@17
    .line 461
    :cond_17
    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    #@19
    if-nez v0, :cond_26

    #@1b
    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    #@1d
    if-eqz v0, :cond_20

    #@1f
    goto :goto_26

    #@20
    .line 482
    :cond_20
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@22
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    #@25
    goto :goto_56

    #@26
    .line 462
    :cond_26
    :goto_26
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@28
    if-eqz v0, :cond_2f

    #@2a
    .line 463
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    #@2c
    add-long/2addr v3, v1

    #@2d
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    move v3, v0

    #@31
    .line 466
    :goto_31
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@33
    if-ge v3, v4, :cond_41

    #@35
    .line 467
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@37
    aget-object v4, v4, v3

    #@39
    .line 468
    iget-boolean v4, v4, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@3b
    if-nez v4, :cond_3e

    #@3d
    goto :goto_42

    #@3e
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_31

    #@41
    :cond_41
    const/4 v0, 0x1

    #@42
    :goto_42
    if-nez v0, :cond_4a

    #@44
    .line 474
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@46
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    #@49
    goto :goto_56

    #@4a
    .line 476
    :cond_4a
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@4c
    if-eqz v0, :cond_53

    #@4e
    .line 477
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    #@50
    add-long/2addr v3, v1

    #@51
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    #@53
    .line 479
    :cond_53
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    #@56
    :goto_56
    return-void
.end method

.method minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 494
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    if-eqz v0, :cond_25

    #@4
    .line 495
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    #@6
    const-wide/16 v3, 0x1

    #@8
    add-long/2addr v1, v3

    #@9
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    #@b
    .line 496
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@d
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    #@f
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@11
    int-to-long v3, v3

    #@12
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    #@15
    move-result-wide v1

    #@16
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    #@18
    .line 497
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@1a
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    #@1c
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@1e
    int-to-long v3, v3

    #@1f
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    #@22
    move-result-wide v1

    #@23
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    #@25
    .line 509
    :cond_25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->enforceBFS(Landroidx/constraintlayout/core/LinearSystem$Row;)I

    #@28
    const/4 v0, 0x0

    #@29
    .line 514
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I

    #@2c
    .line 519
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    #@2f
    return-void
.end method

.method public removeRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .registers 6

    #@0
    .line 687
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@2
    if-eqz v0, :cond_53

    #@4
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@6
    if-eqz v0, :cond_53

    #@8
    .line 688
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@a
    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@c
    const/4 v1, -0x1

    #@d
    if-eq v0, v1, :cond_33

    #@f
    .line 689
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@11
    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@13
    :goto_13
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@15
    add-int/lit8 v2, v1, -0x1

    #@17
    if-ge v0, v2, :cond_2f

    #@19
    .line 690
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@1b
    add-int/lit8 v2, v0, 0x1

    #@1d
    aget-object v1, v1, v2

    #@1f
    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@21
    .line 691
    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@23
    if-ne v3, v2, :cond_27

    #@25
    .line 692
    iput v0, v1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@27
    .line 694
    :cond_27
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@29
    aget-object v3, v1, v2

    #@2b
    aput-object v3, v1, v0

    #@2d
    move v0, v2

    #@2e
    goto :goto_13

    #@2f
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    #@31
    .line 696
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@33
    .line 698
    :cond_33
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@35
    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@37
    if-nez v0, :cond_40

    #@39
    .line 699
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@3b
    iget v1, p1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@3d
    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    #@40
    .line 701
    :cond_40
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    #@42
    if-eqz v0, :cond_4c

    #@44
    .line 702
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@46
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@48
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@4b
    goto :goto_53

    #@4c
    .line 704
    :cond_4c
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@4e
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    #@50
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@53
    :cond_53
    :goto_53
    return-void
.end method

.method public reset()V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 185
    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@4
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@6
    array-length v2, v2

    #@7
    if-ge v1, v2, :cond_17

    #@9
    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@b
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@d
    aget-object v2, v2, v1

    #@f
    if-eqz v2, :cond_14

    #@11
    .line 188
    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    #@14
    :cond_14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_2

    #@17
    .line 191
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@19
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    #@1b
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@1d
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    #@1f
    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/core/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    #@22
    .line 192
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    #@24
    .line 194
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@26
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@28
    const/4 v2, 0x0

    #@29
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@2c
    .line 195
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    #@2e
    if-eqz v1, :cond_33

    #@30
    .line 196
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    #@33
    .line 198
    :cond_33
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    #@35
    .line 199
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@37
    invoke-interface {v1}, Landroidx/constraintlayout/core/LinearSystem$Row;->clear()V

    #@3a
    const/4 v1, 0x1

    #@3b
    .line 200
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    #@3d
    move v1, v0

    #@3e
    .line 201
    :goto_3e
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@40
    if-ge v1, v2, :cond_4d

    #@42
    .line 202
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@44
    aget-object v2, v2, v1

    #@46
    if-eqz v2, :cond_4a

    #@48
    .line 203
    iput-boolean v0, v2, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    #@4a
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_3e

    #@4d
    .line 206
    :cond_4d
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->releaseRows()V

    #@50
    .line 207
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    #@52
    .line 208
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    #@54
    if-eqz v0, :cond_60

    #@56
    .line 209
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    #@58
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@5a
    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    #@5d
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@5f
    goto :goto_69

    #@60
    .line 211
    :cond_60
    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    #@62
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@64
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    #@67
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    #@69
    :goto_69
    return-void
.end method
