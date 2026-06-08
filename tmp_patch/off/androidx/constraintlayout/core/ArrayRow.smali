.class public Landroidx/constraintlayout/core/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroidx/constraintlayout/core/LinearSystem$Row;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroidx/constraintlayout/core/SolverVariable;

.field public variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

.field variablesToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 26
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@6
    const/4 v0, 0x0

    #@7
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@9
    const/4 v0, 0x0

    #@a
    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    #@c
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    #@13
    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@15
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .registers 4

    #@0
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 26
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@6
    const/4 v0, 0x0

    #@7
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@9
    const/4 v0, 0x0

    #@a
    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    #@c
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    #@13
    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@15
    .line 58
    new-instance v0, Landroidx/constraintlayout/core/ArrayLinkedVariables;

    #@17
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;-><init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V

    #@1a
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@1c
    return-void
.end method

.method private isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z
    .registers 3

    #@0
    .line 532
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@2
    const/4 p2, 0x1

    #@3
    if-gt p1, p2, :cond_6

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p2, 0x0

    #@7
    :goto_7
    return p2
.end method

.method private pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 12

    #@0
    .line 616
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x0

    #@8
    const/4 v3, 0x0

    #@9
    move v4, v1

    #@a
    :goto_a
    if-ge v3, v0, :cond_3b

    #@c
    .line 618
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@e
    invoke-interface {v5, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    #@11
    move-result v5

    #@12
    cmpg-float v6, v5, v1

    #@14
    if-gez v6, :cond_38

    #@16
    .line 622
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@18
    invoke-interface {v6, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@1b
    move-result-object v6

    #@1c
    if-eqz p1, :cond_24

    #@1e
    .line 623
    iget v7, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@20
    aget-boolean v7, p1, v7

    #@22
    if-nez v7, :cond_38

    #@24
    :cond_24
    if-eq v6, p2, :cond_38

    #@26
    .line 625
    iget-object v7, v6, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@28
    sget-object v8, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2a
    if-eq v7, v8, :cond_32

    #@2c
    iget-object v7, v6, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2e
    sget-object v8, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@30
    if-ne v7, v8, :cond_38

    #@32
    :cond_32
    cmpg-float v7, v5, v4

    #@34
    if-gez v7, :cond_38

    #@36
    move v4, v5

    #@37
    move-object v2, v6

    #@38
    :cond_38
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_a

    #@3b
    :cond_3b
    return-object v2
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 6

    #@0
    .line 349
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    const-string v1, "ep"

    #@4
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    #@7
    move-result-object v1

    #@8
    const/high16 v2, 0x3f800000    # 1.0f

    #@a
    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@d
    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@f
    const-string v1, "em"

    #@11
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    #@14
    move-result-object p1

    #@15
    const/high16 p2, -0x40800000    # -1.0f

    #@17
    invoke-interface {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@1a
    return-object p0
.end method

.method public addError(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 5

    #@0
    .line 691
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@2
    const/4 v1, 0x1

    #@3
    const/high16 v2, 0x3f800000    # 1.0f

    #@5
    if-ne v0, v1, :cond_8

    #@7
    goto :goto_2a

    #@8
    .line 693
    :cond_8
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_10

    #@d
    const/high16 v2, 0x447a0000    # 1000.0f

    #@f
    goto :goto_2a

    #@10
    .line 695
    :cond_10
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@12
    const/4 v1, 0x3

    #@13
    if-ne v0, v1, :cond_19

    #@15
    const v2, 0x49742400    # 1000000.0f

    #@18
    goto :goto_2a

    #@19
    .line 697
    :cond_19
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@1b
    const/4 v1, 0x4

    #@1c
    if-ne v0, v1, :cond_22

    #@1e
    const v2, 0x4e6e6b28    # 1.0E9f

    #@21
    goto :goto_2a

    #@22
    .line 699
    :cond_22
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@24
    const/4 v1, 0x5

    #@25
    if-ne v0, v1, :cond_2a

    #@27
    const v2, 0x5368d4a5    # 1.0E12f

    #@2a
    .line 702
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2c
    invoke-interface {v0, p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@2f
    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 4

    #@0
    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    int-to-float p2, p2

    #@3
    invoke-interface {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@6
    return-object p0
.end method

.method chooseSubject(Landroidx/constraintlayout/core/LinearSystem;)Z
    .registers 4

    #@0
    .line 432
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;->chooseSubjectInVariables(Landroidx/constraintlayout/core/LinearSystem;)Landroidx/constraintlayout/core/SolverVariable;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x1

    #@5
    if-nez p1, :cond_9

    #@7
    move p1, v0

    #@8
    goto :goto_d

    #@9
    .line 437
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    #@c
    const/4 p1, 0x0

    #@d
    .line 439
    :goto_d
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@f
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_17

    #@15
    .line 440
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@17
    :cond_17
    return p1
.end method

.method chooseSubjectInVariables(Landroidx/constraintlayout/core/LinearSystem;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 16

    #@0
    .line 464
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x0

    #@8
    const/4 v3, 0x0

    #@9
    move v7, v2

    #@a
    move v8, v7

    #@b
    move v4, v3

    #@c
    move v5, v4

    #@d
    move v6, v5

    #@e
    move-object v3, v1

    #@f
    :goto_f
    if-ge v4, v0, :cond_6a

    #@11
    .line 466
    iget-object v9, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@13
    invoke-interface {v9, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    #@16
    move-result v9

    #@17
    .line 467
    iget-object v10, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@19
    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@1c
    move-result-object v10

    #@1d
    .line 468
    iget-object v11, v10, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@1f
    sget-object v12, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@21
    const/4 v13, 0x1

    #@22
    if-ne v11, v12, :cond_43

    #@24
    if-nez v1, :cond_2e

    #@26
    .line 472
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    #@29
    move-result v1

    #@2a
    :goto_2a
    move v5, v1

    #@2b
    move v7, v9

    #@2c
    move-object v1, v10

    #@2d
    goto :goto_67

    #@2e
    :cond_2e
    cmpl-float v11, v7, v9

    #@30
    if-lez v11, :cond_37

    #@32
    .line 476
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    #@35
    move-result v1

    #@36
    goto :goto_2a

    #@37
    :cond_37
    if-nez v5, :cond_67

    #@39
    .line 477
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    #@3c
    move-result v11

    #@3d
    if-eqz v11, :cond_67

    #@3f
    move v7, v9

    #@40
    move-object v1, v10

    #@41
    move v5, v13

    #@42
    goto :goto_67

    #@43
    :cond_43
    if-nez v1, :cond_67

    #@45
    cmpg-float v11, v9, v2

    #@47
    if-gez v11, :cond_67

    #@49
    if-nez v3, :cond_53

    #@4b
    .line 487
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    #@4e
    move-result v3

    #@4f
    :goto_4f
    move v6, v3

    #@50
    move v8, v9

    #@51
    move-object v3, v10

    #@52
    goto :goto_67

    #@53
    :cond_53
    cmpl-float v11, v8, v9

    #@55
    if-lez v11, :cond_5c

    #@57
    .line 491
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    #@5a
    move-result v3

    #@5b
    goto :goto_4f

    #@5c
    :cond_5c
    if-nez v6, :cond_67

    #@5e
    .line 492
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    #@61
    move-result v11

    #@62
    if-eqz v11, :cond_67

    #@64
    move v8, v9

    #@65
    move-object v3, v10

    #@66
    move v6, v13

    #@67
    :cond_67
    :goto_67
    add-int/lit8 v4, v4, 0x1

    #@69
    goto :goto_f

    #@6a
    :cond_6a
    if-eqz v1, :cond_6d

    #@6c
    return-object v1

    #@6d
    :cond_6d
    return-object v3
.end method

.method public clear()V
    .registers 2

    #@0
    .line 665
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 666
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@8
    const/4 v0, 0x0

    #@9
    .line 667
    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@b
    return-void
.end method

.method createRowCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 13

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    if-ne p2, p5, :cond_16

    #@4
    .line 307
    iget-object p3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@6
    invoke-interface {p3, p1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@9
    .line 308
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@b
    invoke-interface {p1, p6, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@e
    .line 309
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@10
    const/high16 p3, -0x40000000    # -2.0f

    #@12
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@15
    return-object p0

    #@16
    :cond_16
    const/high16 v1, 0x3f000000    # 0.5f

    #@18
    cmpl-float v1, p4, v1

    #@1a
    const/high16 v2, -0x40800000    # -1.0f

    #@1c
    if-nez v1, :cond_3c

    #@1e
    .line 319
    iget-object p4, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@20
    invoke-interface {p4, p1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@23
    .line 320
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@25
    invoke-interface {p1, p2, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@28
    .line 321
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2a
    invoke-interface {p1, p5, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@2d
    .line 322
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2f
    invoke-interface {p1, p6, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@32
    if-gtz p3, :cond_36

    #@34
    if-lez p7, :cond_8a

    #@36
    :cond_36
    neg-int p1, p3

    #@37
    add-int/2addr p1, p7

    #@38
    int-to-float p1, p1

    #@39
    .line 324
    iput p1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@3b
    goto :goto_8a

    #@3c
    :cond_3c
    const/4 v1, 0x0

    #@3d
    cmpg-float v1, p4, v1

    #@3f
    if-gtz v1, :cond_4f

    #@41
    .line 328
    iget-object p4, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@43
    invoke-interface {p4, p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@46
    .line 329
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@48
    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@4b
    int-to-float p1, p3

    #@4c
    .line 330
    iput p1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@4e
    goto :goto_8a

    #@4f
    :cond_4f
    cmpl-float v1, p4, v0

    #@51
    if-ltz v1, :cond_62

    #@53
    .line 333
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@55
    invoke-interface {p1, p6, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@58
    .line 334
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@5a
    invoke-interface {p1, p5, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@5d
    neg-int p1, p7

    #@5e
    int-to-float p1, p1

    #@5f
    .line 335
    iput p1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@61
    goto :goto_8a

    #@62
    .line 337
    :cond_62
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@64
    sub-float v3, v0, p4

    #@66
    mul-float v4, v3, v0

    #@68
    invoke-interface {v1, p1, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@6b
    .line 338
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@6d
    mul-float v1, v3, v2

    #@6f
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@72
    .line 339
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@74
    mul-float/2addr v2, p4

    #@75
    invoke-interface {p1, p5, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@78
    .line 340
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@7a
    mul-float/2addr v0, p4

    #@7b
    invoke-interface {p1, p6, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@7e
    if-gtz p3, :cond_82

    #@80
    if-lez p7, :cond_8a

    #@82
    :cond_82
    neg-int p1, p3

    #@83
    int-to-float p1, p1

    #@84
    mul-float/2addr p1, v3

    #@85
    int-to-float p2, p7

    #@86
    mul-float/2addr p2, p4

    #@87
    add-float/2addr p1, p2

    #@88
    .line 342
    iput p1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@8a
    :cond_8a
    :goto_8a
    return-object p0
.end method

.method createRowDefinition(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 3

    #@0
    .line 139
    iput-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    int-to-float p2, p2

    #@3
    .line 140
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@5
    .line 141
    iput p2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@7
    const/4 p1, 0x1

    #@8
    .line 142
    iput-boolean p1, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@a
    return-object p0
.end method

.method createRowDimensionPercent(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .registers 6

    #@0
    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@7
    .line 357
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@9
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@c
    return-object p0
.end method

.method public createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .registers 8

    #@0
    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@7
    .line 376
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@9
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@e
    .line 377
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@10
    invoke-interface {p1, p3, p5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@13
    .line 378
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@15
    neg-float p2, p5

    #@16
    invoke-interface {p1, p4, p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@19
    return-object p0
.end method

.method public createRowEqualDimension(FFFLandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 15

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p2, v0

    #@3
    const/high16 v1, -0x40800000    # -1.0f

    #@5
    const/high16 v2, 0x3f800000    # 1.0f

    #@7
    if-eqz v0, :cond_32

    #@9
    cmpl-float v0, p1, p3

    #@b
    if-nez v0, :cond_e

    #@d
    goto :goto_32

    #@e
    :cond_e
    div-float/2addr p1, p2

    #@f
    div-float/2addr p3, p2

    #@10
    div-float/2addr p1, p3

    #@11
    neg-int p2, p5

    #@12
    sub-int/2addr p2, p7

    #@13
    int-to-float p2, p2

    #@14
    int-to-float p3, p9

    #@15
    mul-float/2addr p3, p1

    #@16
    add-float/2addr p2, p3

    #@17
    int-to-float p3, p11

    #@18
    mul-float/2addr p3, p1

    #@19
    add-float/2addr p2, p3

    #@1a
    .line 292
    iput p2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@1c
    .line 293
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@1e
    invoke-interface {p2, p4, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@21
    .line 294
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@23
    invoke-interface {p2, p6, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@26
    .line 295
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@28
    invoke-interface {p2, p10, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@2b
    .line 296
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2d
    neg-float p1, p1

    #@2e
    invoke-interface {p2, p8, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@31
    goto :goto_4d

    #@32
    :cond_32
    :goto_32
    neg-int p1, p5

    #@33
    sub-int/2addr p1, p7

    #@34
    add-int/2addr p1, p9

    #@35
    add-int/2addr p1, p11

    #@36
    int-to-float p1, p1

    #@37
    .line 280
    iput p1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@39
    .line 281
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@3b
    invoke-interface {p1, p4, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@3e
    .line 282
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@40
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@43
    .line 283
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@45
    invoke-interface {p1, p10, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@48
    .line 284
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@4a
    invoke-interface {p1, p8, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@4d
    :goto_4d
    return-object p0
.end method

.method public createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    .line 240
    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@3
    cmpl-float v1, p2, v0

    #@5
    const/high16 v2, -0x40800000    # -1.0f

    #@7
    const/high16 v3, 0x3f800000    # 1.0f

    #@9
    if-eqz v1, :cond_47

    #@b
    cmpl-float v1, p1, p3

    #@d
    if-nez v1, :cond_10

    #@f
    goto :goto_47

    #@10
    :cond_10
    cmpl-float v1, p1, v0

    #@12
    if-nez v1, :cond_1f

    #@14
    .line 250
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@16
    invoke-interface {p1, p4, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@19
    .line 251
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@1b
    invoke-interface {p1, p5, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@1e
    goto :goto_5b

    #@1f
    :cond_1f
    cmpl-float v0, p3, v0

    #@21
    if-nez v0, :cond_2e

    #@23
    .line 253
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@25
    invoke-interface {p1, p6, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@28
    .line 254
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2a
    invoke-interface {p1, p7, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@2d
    goto :goto_5b

    #@2e
    :cond_2e
    div-float/2addr p1, p2

    #@2f
    div-float/2addr p3, p2

    #@30
    div-float/2addr p1, p3

    #@31
    .line 262
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@33
    invoke-interface {p2, p4, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@36
    .line 263
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@38
    invoke-interface {p2, p5, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@3b
    .line 264
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@3d
    invoke-interface {p2, p7, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@40
    .line 265
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@42
    neg-float p1, p1

    #@43
    invoke-interface {p2, p6, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@46
    goto :goto_5b

    #@47
    .line 244
    :cond_47
    :goto_47
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@49
    invoke-interface {p1, p4, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@4c
    .line 245
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@4e
    invoke-interface {p1, p5, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@51
    .line 246
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@53
    invoke-interface {p1, p7, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@56
    .line 247
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@58
    invoke-interface {p1, p6, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@5b
    :goto_5b
    return-object p0
.end method

.method public createRowEquals(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 4

    #@0
    if-gez p2, :cond_f

    #@2
    mul-int/lit8 p2, p2, -0x1

    #@4
    int-to-float p2, p2

    #@5
    .line 148
    iput p2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@7
    .line 149
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@9
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@e
    goto :goto_19

    #@f
    :cond_f
    int-to-float p2, p2

    #@10
    .line 151
    iput p2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@12
    .line 152
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@14
    const/high16 v0, -0x40800000    # -1.0f

    #@16
    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@19
    :goto_19
    return-object p0
.end method

.method public createRowEquals(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p3, :cond_b

    #@3
    if-gez p3, :cond_8

    #@5
    mul-int/lit8 p3, p3, -0x1

    #@7
    const/4 v0, 0x1

    #@8
    :cond_8
    int-to-float p3, p3

    #@9
    .line 165
    iput p3, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@b
    :cond_b
    const/high16 p3, -0x40800000    # -1.0f

    #@d
    const/high16 v1, 0x3f800000    # 1.0f

    #@f
    if-nez v0, :cond_1c

    #@11
    .line 168
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@13
    invoke-interface {v0, p1, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@16
    .line 169
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@18
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@1b
    goto :goto_26

    #@1c
    .line 171
    :cond_1c
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@1e
    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@21
    .line 172
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@23
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@26
    :goto_26
    return-object p0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;
    .registers 4

    #@0
    int-to-float p2, p2

    #@1
    .line 207
    iput p2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@3
    .line 208
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@5
    const/high16 p3, -0x40800000    # -1.0f

    #@7
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@a
    return-object p0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p4, :cond_b

    #@3
    if-gez p4, :cond_8

    #@5
    mul-int/lit8 p4, p4, -0x1

    #@7
    const/4 v0, 0x1

    #@8
    :cond_8
    int-to-float p4, p4

    #@9
    .line 192
    iput p4, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@b
    :cond_b
    const/high16 p4, -0x40800000    # -1.0f

    #@d
    const/high16 v1, 0x3f800000    # 1.0f

    #@f
    if-nez v0, :cond_21

    #@11
    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@13
    invoke-interface {v0, p1, p4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@16
    .line 196
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@18
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@1b
    .line 197
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@1d
    invoke-interface {p1, p3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@20
    goto :goto_30

    #@21
    .line 199
    :cond_21
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@23
    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@26
    .line 200
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@28
    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@2b
    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2d
    invoke-interface {p1, p3, p4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@30
    :goto_30
    return-object p0
.end method

.method public createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p4, :cond_b

    #@3
    if-gez p4, :cond_8

    #@5
    mul-int/lit8 p4, p4, -0x1

    #@7
    const/4 v0, 0x1

    #@8
    :cond_8
    int-to-float p4, p4

    #@9
    .line 221
    iput p4, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@b
    :cond_b
    const/high16 p4, -0x40800000    # -1.0f

    #@d
    const/high16 v1, 0x3f800000    # 1.0f

    #@f
    if-nez v0, :cond_21

    #@11
    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@13
    invoke-interface {v0, p1, p4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@16
    .line 225
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@18
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@1b
    .line 226
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@1d
    invoke-interface {p1, p3, p4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@20
    goto :goto_30

    #@21
    .line 228
    :cond_21
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@23
    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@26
    .line 229
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@28
    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@2b
    .line 230
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2d
    invoke-interface {p1, p3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@30
    :goto_30
    return-object p0
.end method

.method public createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .registers 8

    #@0
    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    const/high16 v1, 0x3f000000    # 0.5f

    #@4
    invoke-interface {v0, p3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@7
    .line 394
    iget-object p3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@9
    invoke-interface {p3, p4, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@c
    .line 395
    iget-object p3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@e
    const/high16 p4, -0x41000000    # -0.5f

    #@10
    invoke-interface {p3, p1, p4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@13
    .line 396
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@15
    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@18
    neg-float p1, p5

    #@19
    .line 397
    iput p1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@1b
    return-object p0
.end method

.method ensurePositiveConstant()V
    .registers 3

    #@0
    .line 415
    iget v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpg-float v1, v0, v1

    #@5
    if-gez v1, :cond_11

    #@7
    const/high16 v1, -0x40800000    # -1.0f

    #@9
    mul-float/2addr v0, v1

    #@a
    .line 417
    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@c
    .line 418
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@e
    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->invert()V

    #@11
    :cond_11
    return-void
.end method

.method public getKey()Landroidx/constraintlayout/core/SolverVariable;
    .registers 2

    #@0
    .line 707
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    return-object v0
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    .line 660
    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/core/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method hasKeyVariable()Z
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    if-eqz v0, :cond_13

    #@4
    iget-object v0, v0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@6
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@8
    if-eq v0, v1, :cond_11

    #@a
    iget v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@c
    const/4 v1, 0x0

    #@d
    cmpg-float v0, v0, v1

    #@f
    if-ltz v0, :cond_13

    #@11
    :cond_11
    const/4 v0, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    :goto_14
    return v0
.end method

.method hasVariable(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 3

    #@0
    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->contains(Landroidx/constraintlayout/core/SolverVariable;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public initFromRow(Landroidx/constraintlayout/core/LinearSystem$Row;)V
    .registers 7

    #@0
    .line 676
    instance-of v0, p1, Landroidx/constraintlayout/core/ArrayRow;

    #@2
    if-eqz v0, :cond_2c

    #@4
    .line 677
    check-cast p1, Landroidx/constraintlayout/core/ArrayRow;

    #@6
    const/4 v0, 0x0

    #@7
    .line 678
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@9
    .line 679
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@b
    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    #@e
    const/4 v0, 0x0

    #@f
    .line 680
    :goto_f
    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@11
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@14
    move-result v1

    #@15
    if-ge v0, v1, :cond_2c

    #@17
    .line 681
    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@19
    invoke-interface {v1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@1c
    move-result-object v1

    #@1d
    .line 682
    iget-object v2, p1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@1f
    invoke-interface {v2, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    #@22
    move-result v2

    #@23
    .line 683
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@25
    const/4 v4, 0x1

    #@26
    invoke-interface {v3, v1, v2, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_f

    #@2c
    :cond_2c
    return-void
.end method

.method public isEmpty()Z
    .registers 3

    #@0
    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    if-nez v0, :cond_15

    #@4
    iget v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    if-nez v0, :cond_15

    #@b
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@d
    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_15

    #@13
    const/4 v0, 0x1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    :goto_16
    return v0
.end method

.method public pickPivot(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 655
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/core/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method pivot(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 5

    #@0
    .line 536
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 538
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@8
    invoke-interface {v2, v0, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@b
    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@d
    const/4 v2, -0x1

    #@e
    iput v2, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@10
    const/4 v0, 0x0

    #@11
    .line 540
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@13
    .line 543
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@15
    const/4 v2, 0x1

    #@16
    invoke-interface {v0, p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    #@19
    move-result v0

    #@1a
    mul-float/2addr v0, v1

    #@1b
    .line 544
    iput-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@1d
    const/high16 p1, 0x3f800000    # 1.0f

    #@1f
    cmpl-float p1, v0, p1

    #@21
    if-nez p1, :cond_24

    #@23
    return-void

    #@24
    .line 548
    :cond_24
    iget p1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@26
    div-float/2addr p1, v0

    #@27
    iput p1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@29
    .line 549
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2b
    invoke-interface {p1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->divideByAmount(F)V

    #@2e
    return-void
.end method

.method public reset()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 128
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@3
    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@5
    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    #@8
    const/4 v0, 0x0

    #@9
    .line 130
    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@b
    const/4 v0, 0x0

    #@c
    .line 131
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@e
    return-void
.end method

.method sizeInBytes()I
    .registers 3

    #@0
    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    const/4 v1, 0x4

    #@3
    if-eqz v0, :cond_7

    #@5
    move v0, v1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    add-int/2addr v0, v1

    #@9
    add-int/2addr v0, v1

    #@a
    .line 409
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@c
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->sizeInBytes()I

    #@f
    move-result v1

    #@10
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .registers 11

    #@0
    .line 76
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    if-nez v0, :cond_7

    #@4
    const-string v0, "0"

    #@6
    goto :goto_18

    #@7
    .line 79
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v1, ""

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 81
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string v1, " = "

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 83
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@2d
    const/4 v2, 0x0

    #@2e
    cmpl-float v1, v1, v2

    #@30
    const/4 v3, 0x0

    #@31
    const/4 v4, 0x1

    #@32
    if-eqz v1, :cond_49

    #@34
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    move v1, v4

    #@48
    goto :goto_4a

    #@49
    :cond_49
    move v1, v3

    #@4a
    .line 87
    :goto_4a
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@4c
    invoke-interface {v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@4f
    move-result v5

    #@50
    :goto_50
    if-ge v3, v5, :cond_ea

    #@52
    .line 89
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@54
    invoke-interface {v6, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@57
    move-result-object v6

    #@58
    if-nez v6, :cond_5c

    #@5a
    goto/16 :goto_e6

    #@5c
    .line 93
    :cond_5c
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@5e
    invoke-interface {v7, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    #@61
    move-result v7

    #@62
    cmpl-float v8, v7, v2

    #@64
    if-nez v8, :cond_68

    #@66
    goto/16 :goto_e6

    #@68
    .line 97
    :cond_68
    invoke-virtual {v6}, Landroidx/constraintlayout/core/SolverVariable;->toString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    const/high16 v9, -0x40800000    # -1.0f

    #@6e
    if-nez v1, :cond_88

    #@70
    cmpg-float v1, v7, v2

    #@72
    if-gez v1, :cond_b2

    #@74
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    const-string v1, "- "

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    goto :goto_b1

    #@88
    :cond_88
    if-lez v8, :cond_9e

    #@8a
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    const-string v1, " + "

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v0

    #@9d
    goto :goto_b2

    #@9e
    .line 107
    :cond_9e
    new-instance v1, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    const-string v1, " - "

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    :goto_b1
    mul-float/2addr v7, v9

    #@b2
    :cond_b2
    :goto_b2
    const/high16 v1, 0x3f800000    # 1.0f

    #@b4
    cmpl-float v1, v7, v1

    #@b6
    if-nez v1, :cond_ca

    #@b8
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v0

    #@c1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v0

    #@c5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v0

    #@c9
    goto :goto_e5

    #@ca
    .line 114
    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    const-string v1, " "

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v0

    #@e1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    :goto_e5
    move v1, v4

    #@e6
    :goto_e6
    add-int/lit8 v3, v3, 0x1

    #@e8
    goto/16 :goto_50

    #@ea
    :cond_ea
    if-nez v1, :cond_ff

    #@ec
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v0

    #@f5
    const-string v1, "0.0"

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v0

    #@fb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v0

    #@ff
    :cond_ff
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 71
    invoke-virtual {p0}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V
    .registers 7

    #@0
    if-eqz p2, :cond_30

    #@2
    .line 575
    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@4
    if-nez v0, :cond_7

    #@6
    goto :goto_30

    #@7
    .line 578
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@9
    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@c
    move-result v0

    #@d
    .line 579
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@f
    iget v2, p2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@11
    mul-float/2addr v2, v0

    #@12
    add-float/2addr v1, v2

    #@13
    iput v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@15
    .line 580
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@17
    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    #@1a
    if-eqz p3, :cond_1f

    #@1c
    .line 582
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@1f
    .line 584
    :cond_1f
    sget-boolean p2, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    #@21
    if-eqz p2, :cond_30

    #@23
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@25
    .line 585
    invoke-interface {p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@28
    move-result p2

    #@29
    if-nez p2, :cond_30

    #@2b
    const/4 p2, 0x1

    #@2c
    .line 586
    iput-boolean p2, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@2e
    .line 587
    iput-boolean p2, p1, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    #@30
    :cond_30
    :goto_30
    return-void
.end method

.method public updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V
    .registers 7

    #@0
    .line 561
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@2
    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->use(Landroidx/constraintlayout/core/ArrayRow;Z)F

    #@5
    move-result v0

    #@6
    .line 563
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@8
    iget v2, p2, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@a
    mul-float/2addr v2, v0

    #@b
    add-float/2addr v1, v2

    #@c
    iput v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@e
    if-eqz p3, :cond_15

    #@10
    .line 565
    iget-object p2, p2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@12
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@15
    .line 567
    :cond_15
    sget-boolean p2, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    #@17
    if-eqz p2, :cond_2a

    #@19
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@1b
    if-eqz p2, :cond_2a

    #@1d
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@1f
    .line 568
    invoke-interface {p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@22
    move-result p2

    #@23
    if-nez p2, :cond_2a

    #@25
    const/4 p2, 0x1

    #@26
    .line 569
    iput-boolean p2, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@28
    .line 570
    iput-boolean p2, p1, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    #@2a
    :cond_2a
    return-void
.end method

.method public updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V
    .registers 7

    #@0
    if-eqz p2, :cond_3d

    #@2
    .line 592
    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@4
    if-nez v0, :cond_7

    #@6
    goto :goto_3d

    #@7
    .line 595
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@9
    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@c
    move-result v0

    #@d
    .line 596
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@f
    iget v2, p2, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@11
    mul-float/2addr v2, v0

    #@12
    add-float/2addr v1, v2

    #@13
    iput v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    #@15
    .line 597
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@17
    invoke-interface {v1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    #@1a
    if-eqz p3, :cond_1f

    #@1c
    .line 599
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@1f
    .line 601
    :cond_1f
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@21
    iget-object v2, p1, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    #@23
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@25
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@27
    aget-object p2, v2, p2

    #@29
    invoke-interface {v1, p2, v0, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    #@2c
    .line 602
    sget-boolean p2, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    #@2e
    if-eqz p2, :cond_3d

    #@30
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@32
    .line 603
    invoke-interface {p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@35
    move-result p2

    #@36
    if-nez p2, :cond_3d

    #@38
    const/4 p2, 0x1

    #@39
    .line 604
    iput-boolean p2, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@3b
    .line 605
    iput-boolean p2, p1, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    #@3d
    :cond_3d
    :goto_3d
    return-void
.end method

.method public updateFromSystem(Landroidx/constraintlayout/core/LinearSystem;)V
    .registers 10

    #@0
    .line 712
    iget-object v0, p1, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@2
    array-length v0, v0

    #@3
    if-nez v0, :cond_6

    #@5
    return-void

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    const/4 v2, 0x1

    #@9
    if-nez v1, :cond_66

    #@b
    .line 718
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@d
    invoke-interface {v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@10
    move-result v3

    #@11
    move v4, v0

    #@12
    :goto_12
    if-ge v4, v3, :cond_2f

    #@14
    .line 720
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@16
    invoke-interface {v5, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@19
    move-result-object v5

    #@1a
    .line 721
    iget v6, v5, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@1c
    const/4 v7, -0x1

    #@1d
    if-ne v6, v7, :cond_27

    #@1f
    iget-boolean v6, v5, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@21
    if-nez v6, :cond_27

    #@23
    iget-boolean v6, v5, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@25
    if-eqz v6, :cond_2c

    #@27
    .line 722
    :cond_27
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    #@2e
    goto :goto_12

    #@2f
    .line 725
    :cond_2f
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v3

    #@35
    if-lez v3, :cond_64

    #@37
    move v4, v0

    #@38
    :goto_38
    if-ge v4, v3, :cond_5e

    #@3a
    .line 728
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, Landroidx/constraintlayout/core/SolverVariable;

    #@42
    .line 729
    iget-boolean v6, v5, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@44
    if-eqz v6, :cond_4a

    #@46
    .line 730
    invoke-virtual {p0, p1, v5, v2}, Landroidx/constraintlayout/core/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    #@49
    goto :goto_5b

    #@4a
    .line 731
    :cond_4a
    iget-boolean v6, v5, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@4c
    if-eqz v6, :cond_52

    #@4e
    .line 732
    invoke-virtual {p0, p1, v5, v2}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    #@51
    goto :goto_5b

    #@52
    .line 734
    :cond_52
    iget-object v6, p1, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    #@54
    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@56
    aget-object v5, v6, v5

    #@58
    invoke-virtual {p0, p1, v5, v2}, Landroidx/constraintlayout/core/ArrayRow;->updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V

    #@5b
    :goto_5b
    add-int/lit8 v4, v4, 0x1

    #@5d
    goto :goto_38

    #@5e
    .line 737
    :cond_5e
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@63
    goto :goto_8

    #@64
    :cond_64
    move v1, v2

    #@65
    goto :goto_8

    #@66
    .line 742
    :cond_66
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    #@68
    if-eqz v0, :cond_7a

    #@6a
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@6c
    if-eqz v0, :cond_7a

    #@6e
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@70
    .line 743
    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@73
    move-result v0

    #@74
    if-nez v0, :cond_7a

    #@76
    .line 744
    iput-boolean v2, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    #@78
    .line 745
    iput-boolean v2, p1, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    #@7a
    :cond_7a
    return-void
.end method
