.class public Landroidx/constraintlayout/core/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/SolverVariable$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/SolverVariable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x9

.field public static final STRENGTH_BARRIER:I = 0x6

.field public static final STRENGTH_CENTERING:I = 0x7

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_FIXED:I = 0x8

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field private static final VAR_USE_HASH:Z = false

.field private static uniqueConstantId:I = 0x1

.field private static uniqueErrorId:I = 0x1

.field private static uniqueId:I = 0x1

.field private static uniqueSlackId:I = 0x1

.field private static uniqueUnrestrictedId:I = 0x1


# instance fields
.field public computedValue:F

.field definitionId:I

.field goalStrengthVector:[F

.field public id:I

.field public inGoal:Z

.field inRows:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field public isFinalValue:Z

.field isSynonym:Z

.field mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field synonym:I

.field synonymDelta:F

.field public usageInRowCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V
    .registers 6

    #@0
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 p2, -0x1

    #@4
    .line 53
    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@6
    .line 54
    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@8
    const/4 v0, 0x0

    #@9
    .line 55
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@b
    .line 57
    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@d
    const/16 v1, 0x9

    #@f
    new-array v2, v1, [F

    #@11
    .line 60
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    #@13
    new-array v1, v1, [F

    #@15
    .line 61
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@17
    const/16 v1, 0x10

    #@19
    new-array v1, v1, [Landroidx/constraintlayout/core/ArrayRow;

    #@1b
    .line 65
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@1d
    .line 66
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@1f
    .line 67
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@21
    .line 68
    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@23
    .line 69
    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@25
    const/4 p2, 0x0

    #@26
    .line 70
    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@28
    const/4 p2, 0x0

    #@29
    .line 172
    iput-object p2, p0, Landroidx/constraintlayout/core/SolverVariable;->inRows:Ljava/util/HashSet;

    #@2b
    .line 130
    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)V
    .registers 7

    #@0
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@6
    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@8
    const/4 v1, 0x0

    #@9
    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@b
    .line 57
    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@d
    const/16 v2, 0x9

    #@f
    new-array v3, v2, [F

    #@11
    .line 60
    iput-object v3, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    #@13
    new-array v2, v2, [F

    #@15
    .line 61
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@17
    const/16 v2, 0x10

    #@19
    new-array v2, v2, [Landroidx/constraintlayout/core/ArrayRow;

    #@1b
    .line 65
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@1d
    .line 66
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@1f
    .line 67
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@21
    .line 68
    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@23
    .line 69
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@25
    const/4 v0, 0x0

    #@26
    .line 70
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@28
    const/4 v0, 0x0

    #@29
    .line 172
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->inRows:Ljava/util/HashSet;

    #@2b
    .line 125
    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    #@2d
    .line 126
    iput-object p2, p0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2f
    return-void
.end method

.method private static getUniqueName(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p1, :cond_16

    #@2
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p0

    #@b
    sget p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    #@d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    .line 106
    :cond_16
    sget-object p1, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    #@18
    invoke-virtual {p0}, Landroidx/constraintlayout/core/SolverVariable$Type;->ordinal()I

    #@1b
    move-result v0

    #@1c
    aget p1, p1, v0

    #@1e
    const/4 v0, 0x1

    #@1f
    if-eq p1, v0, :cond_8b

    #@21
    const/4 v1, 0x2

    #@22
    if-eq p1, v1, :cond_76

    #@24
    const/4 v1, 0x3

    #@25
    if-eq p1, v1, :cond_61

    #@27
    const/4 v1, 0x4

    #@28
    if-eq p1, v1, :cond_4c

    #@2a
    const/4 v1, 0x5

    #@2b
    if-ne p1, v1, :cond_42

    #@2d
    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    #@2f
    const-string p1, "V"

    #@31
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    sget p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueId:I

    #@36
    add-int/2addr p1, v0

    #@37
    sput p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueId:I

    #@39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object p0

    #@3d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object p0

    #@41
    return-object p0

    #@42
    .line 116
    :cond_42
    new-instance p1, Ljava/lang/AssertionError;

    #@44
    invoke-virtual {p0}, Landroidx/constraintlayout/core/SolverVariable$Type;->name()Ljava/lang/String;

    #@47
    move-result-object p0

    #@48
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4b
    throw p1

    #@4c
    .line 111
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    #@4e
    const-string p1, "e"

    #@50
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@53
    sget p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    #@55
    add-int/2addr p1, v0

    #@56
    sput p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    #@58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p0

    #@5c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p0

    #@60
    return-object p0

    #@61
    .line 109
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    #@63
    const-string p1, "S"

    #@65
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@68
    sget p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueSlackId:I

    #@6a
    add-int/2addr p1, v0

    #@6b
    sput p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueSlackId:I

    #@6d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object p0

    #@71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object p0

    #@75
    return-object p0

    #@76
    .line 108
    :cond_76
    new-instance p0, Ljava/lang/StringBuilder;

    #@78
    const-string p1, "C"

    #@7a
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7d
    sget p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueConstantId:I

    #@7f
    add-int/2addr p1, v0

    #@80
    sput p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueConstantId:I

    #@82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object p0

    #@86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object p0

    #@8a
    return-object p0

    #@8b
    .line 107
    :cond_8b
    new-instance p0, Ljava/lang/StringBuilder;

    #@8d
    const-string p1, "U"

    #@8f
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@92
    sget p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueUnrestrictedId:I

    #@94
    add-int/2addr p1, v0

    #@95
    sput p1, Landroidx/constraintlayout/core/SolverVariable;->uniqueUnrestrictedId:I

    #@97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object p0

    #@9b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object p0

    #@9f
    return-object p0
.end method

.method static increaseErrorId()V
    .registers 1

    #@0
    .line 99
    sget v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    #@6
    return-void
.end method


# virtual methods
.method public final addToRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 178
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@3
    if-ge v0, v1, :cond_f

    #@5
    .line 179
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@7
    aget-object v1, v1, v0

    #@9
    if-ne v1, p1, :cond_c

    #@b
    return-void

    #@c
    :cond_c
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_1

    #@f
    .line 183
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@11
    array-length v2, v0

    #@12
    if-lt v1, v2, :cond_1f

    #@14
    .line 184
    array-length v1, v0

    #@15
    mul-int/lit8 v1, v1, 0x2

    #@17
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Landroidx/constraintlayout/core/ArrayRow;

    #@1d
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@1f
    .line 186
    :cond_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@21
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@23
    aput-object p1, v0, v1

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    .line 187
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@29
    return-void
.end method

.method clearStrengths()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    const/16 v1, 0x9

    #@3
    if-ge v0, v1, :cond_d

    #@5
    .line 138
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    #@7
    const/4 v2, 0x0

    #@8
    aput v2, v1, v0

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_1

    #@d
    :cond_d
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/core/SolverVariable;)I
    .registers 3

    #@0
    .line 300
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@4
    sub-int/2addr v0, p1

    #@5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    #@0
    .line 27
    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    #@2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->compareTo(Landroidx/constraintlayout/core/SolverVariable;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 287
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .registers 6

    #@0
    .line 195
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    if-ge v1, v0, :cond_23

    #@5
    .line 197
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@7
    aget-object v2, v2, v1

    #@9
    if-ne v2, p1, :cond_20

    #@b
    :goto_b
    add-int/lit8 p1, v0, -0x1

    #@d
    if-ge v1, p1, :cond_19

    #@f
    .line 199
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@11
    add-int/lit8 v2, v1, 0x1

    #@13
    aget-object v3, p1, v2

    #@15
    aput-object v3, p1, v1

    #@17
    move v1, v2

    #@18
    goto :goto_b

    #@19
    .line 201
    :cond_19
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@1b
    add-int/lit8 p1, p1, -0x1

    #@1d
    iput p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@1f
    return-void

    #@20
    :cond_20
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_3

    #@23
    :cond_23
    return-void
.end method

.method public reset()V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 257
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    #@3
    .line 258
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@5
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@7
    const/4 v1, 0x0

    #@8
    .line 259
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@a
    const/4 v2, -0x1

    #@b
    .line 260
    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@d
    .line 261
    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@f
    const/4 v3, 0x0

    #@10
    .line 262
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@12
    .line 263
    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@14
    .line 264
    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@16
    .line 265
    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@18
    .line 266
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@1a
    .line 270
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@1c
    move v4, v1

    #@1d
    :goto_1d
    if-ge v4, v2, :cond_26

    #@1f
    .line 272
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@21
    aput-object v0, v5, v4

    #@23
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_1d

    #@26
    .line 274
    :cond_26
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@28
    .line 276
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@2a
    .line 277
    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    #@2c
    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    #@2e
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    #@31
    return-void
.end method

.method public setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V
    .registers 6

    #@0
    .line 227
    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    #@2
    const/4 p2, 0x1

    #@3
    .line 228
    iput-boolean p2, p0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@5
    const/4 p2, 0x0

    #@6
    .line 229
    iput-boolean p2, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@8
    const/4 v0, -0x1

    #@9
    .line 230
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@b
    const/4 v1, 0x0

    #@c
    .line 231
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@e
    .line 232
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@10
    .line 233
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@12
    move v0, p2

    #@13
    :goto_13
    if-ge v0, v1, :cond_1f

    #@15
    .line 235
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@17
    aget-object v2, v2, v0

    #@19
    invoke-virtual {v2, p1, p0, p2}, Landroidx/constraintlayout/core/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_13

    #@1f
    .line 237
    :cond_1f
    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@21
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 290
    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSynonym(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;F)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 244
    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    #@3
    .line 245
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@5
    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    #@7
    .line 246
    iput p3, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    #@9
    .line 247
    iget p2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@b
    const/4 p3, -0x1

    #@c
    .line 248
    iput p3, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    #@e
    const/4 p3, 0x0

    #@f
    move v0, p3

    #@10
    :goto_10
    if-ge v0, p2, :cond_1c

    #@12
    .line 250
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@14
    aget-object v1, v1, v0

    #@16
    invoke-virtual {v1, p1, p0, p3}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_10

    #@1c
    .line 252
    :cond_1c
    iput p3, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@1e
    .line 253
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->displayReadableRows()V

    #@21
    return-void
.end method

.method public setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 292
    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2
    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .registers 11

    #@0
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string v1, "["

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x0

    #@14
    const/4 v2, 0x1

    #@15
    move v3, v1

    #@16
    move v4, v3

    #@17
    move v5, v2

    #@18
    .line 146
    :goto_18
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    #@1a
    array-length v6, v6

    #@1b
    if-ge v3, v6, :cond_75

    #@1d
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    #@28
    aget v6, v6, v3

    #@2a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 148
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    #@34
    aget v7, v6, v3

    #@36
    const/4 v8, 0x0

    #@37
    cmpl-float v9, v7, v8

    #@39
    if-lez v9, :cond_3d

    #@3b
    move v4, v1

    #@3c
    goto :goto_42

    #@3d
    :cond_3d
    cmpg-float v9, v7, v8

    #@3f
    if-gez v9, :cond_42

    #@41
    move v4, v2

    #@42
    :cond_42
    :goto_42
    cmpl-float v7, v7, v8

    #@44
    if-eqz v7, :cond_47

    #@46
    move v5, v1

    #@47
    .line 156
    :cond_47
    array-length v6, v6

    #@48
    sub-int/2addr v6, v2

    #@49
    if-ge v3, v6, :cond_5f

    #@4b
    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    const-string v6, ", "

    #@56
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    goto :goto_72

    #@5f
    .line 159
    :cond_5f
    new-instance v6, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    const-string v6, "] "

    #@6a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    :goto_72
    add-int/lit8 v3, v3, 0x1

    #@74
    goto :goto_18

    #@75
    :cond_75
    if-eqz v4, :cond_8a

    #@77
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    const-string v1, " (-)"

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    :cond_8a
    if-eqz v5, :cond_9f

    #@8c
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    const-string v1, " (*)"

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    :cond_9f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 318
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    #@2
    const-string v1, ""

    #@4
    if-eqz v0, :cond_16

    #@6
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_25

    #@16
    .line 321
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    :goto_25
    return-object v0
.end method

.method public final updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V
    .registers 7

    #@0
    .line 215
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@2
    const/4 v1, 0x0

    #@3
    move v2, v1

    #@4
    :goto_4
    if-ge v2, v0, :cond_10

    #@6
    .line 217
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    #@8
    aget-object v3, v3, v2

    #@a
    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/core/ArrayRow;->updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_4

    #@10
    .line 219
    :cond_10
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    #@12
    return-void
.end method
