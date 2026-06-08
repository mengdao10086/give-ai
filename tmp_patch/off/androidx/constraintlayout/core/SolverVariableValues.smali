.class public Landroidx/constraintlayout/core/SolverVariableValues;
.super Ljava/lang/Object;
.source "SolverVariableValues.java"

# interfaces
.implements Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final HASH:Z = true

.field private static epsilon:F = 0.001f


# instance fields
.field private HASH_SIZE:I

.field private final NONE:I

.field private SIZE:I

.field head:I

.field keys:[I

.field protected final mCache:Landroidx/constraintlayout/core/Cache;

.field mCount:I

.field private final mRow:Landroidx/constraintlayout/core/ArrayRow;

.field next:[I

.field nextKeys:[I

.field previous:[I

.field values:[F

.field variables:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V
    .registers 6

    #@0
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->NONE:I

    #@6
    const/16 v1, 0x10

    #@8
    .line 30
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    #@a
    .line 31
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    #@c
    new-array v2, v1, [I

    #@e
    .line 33
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    #@10
    new-array v2, v1, [I

    #@12
    .line 34
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@14
    new-array v2, v1, [I

    #@16
    .line 36
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@18
    new-array v2, v1, [F

    #@1a
    .line 37
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@1c
    new-array v2, v1, [I

    #@1e
    .line 38
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@20
    new-array v1, v1, [I

    #@22
    .line 39
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@24
    const/4 v1, 0x0

    #@25
    .line 40
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@27
    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@29
    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@2b
    .line 48
    iput-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    #@2d
    .line 49
    invoke-virtual {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->clear()V

    #@30
    return-void
.end method

.method private addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V
    .registers 6

    #@0
    .line 216
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    #@4
    rem-int/2addr p1, v0

    #@5
    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    #@7
    aget v1, v0, p1

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v1, v2, :cond_f

    #@c
    .line 219
    aput p2, v0, p1

    #@e
    goto :goto_19

    #@f
    .line 224
    :cond_f
    :goto_f
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@11
    aget v0, p1, v1

    #@13
    if-eq v0, v2, :cond_17

    #@15
    move v1, v0

    #@16
    goto :goto_f

    #@17
    .line 227
    :cond_17
    aput p2, p1, v1

    #@19
    .line 232
    :goto_19
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@1b
    aput v2, p1, p2

    #@1d
    return-void
.end method

.method private addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .registers 6

    #@0
    .line 289
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@2
    iget v1, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@4
    aput v1, v0, p1

    #@6
    .line 290
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@8
    aput p3, v0, p1

    #@a
    .line 291
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@c
    const/4 v0, -0x1

    #@d
    aput v0, p3, p1

    #@f
    .line 292
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@11
    aput v0, p3, p1

    #@13
    .line 293
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@15
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@18
    .line 294
    iget p1, p2, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@1a
    add-int/lit8 p1, p1, 0x1

    #@1c
    iput p1, p2, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@1e
    .line 295
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@20
    add-int/lit8 p1, p1, 0x1

    #@22
    iput p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@24
    return-void
.end method

.method private displayHash()V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 239
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    #@4
    if-ge v1, v2, :cond_62

    #@6
    .line 240
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    #@8
    aget v2, v2, v1

    #@a
    const/4 v3, -0x1

    #@b
    if-eq v2, v3, :cond_5f

    #@d
    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@15
    move-result v4

    #@16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string v4, " hash ["

    #@1c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string v4, "] => "

    #@26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 242
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    #@30
    aget v4, v4, v1

    #@32
    move v5, v0

    #@33
    :goto_33
    if-nez v5, :cond_5a

    #@35
    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string v6, " "

    #@40
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@46
    aget v6, v6, v4

    #@48
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 246
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@52
    aget v6, v6, v4

    #@54
    if-eq v6, v3, :cond_58

    #@56
    move v4, v6

    #@57
    goto :goto_33

    #@58
    :cond_58
    const/4 v5, 0x1

    #@59
    goto :goto_33

    #@5a
    .line 252
    :cond_5a
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5c
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5f
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_2

    #@62
    :cond_62
    return-void
.end method

.method private findEmptySlot()I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 299
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    #@3
    const/4 v2, -0x1

    #@4
    if-ge v0, v1, :cond_10

    #@6
    .line 300
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@8
    aget v1, v1, v0

    #@a
    if-ne v1, v2, :cond_d

    #@c
    return v0

    #@d
    :cond_d
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_1

    #@10
    :cond_10
    return v2
.end method

.method private increaseSize()V
    .registers 5

    #@0
    .line 199
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    #@2
    mul-int/lit8 v0, v0, 0x2

    #@4
    .line 200
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@6
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@c
    .line 201
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@14
    .line 202
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@16
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@1c
    .line 203
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@1e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@24
    .line 204
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@26
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@2c
    .line 205
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    #@2e
    :goto_2e
    if-ge v1, v0, :cond_3c

    #@30
    .line 206
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@32
    const/4 v3, -0x1

    #@33
    aput v3, v2, v1

    #@35
    .line 207
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@37
    aput v3, v2, v1

    #@39
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_2e

    #@3c
    .line 209
    :cond_3c
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    #@3e
    return-void
.end method

.method private insertVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .registers 7

    #@0
    .line 308
    invoke-direct {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->findEmptySlot()I

    #@3
    move-result v0

    #@4
    .line 309
    invoke-direct {p0, v0, p2, p3}, Landroidx/constraintlayout/core/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    #@7
    const/4 p3, -0x1

    #@8
    if-eq p1, p3, :cond_17

    #@a
    .line 311
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@c
    aput p1, v1, v0

    #@e
    .line 312
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@10
    aget v2, v1, p1

    #@12
    aput v2, v1, v0

    #@14
    .line 313
    aput v0, v1, p1

    #@16
    goto :goto_2c

    #@17
    .line 315
    :cond_17
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@19
    aput p3, p1, v0

    #@1b
    .line 316
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@1d
    if-lez p1, :cond_28

    #@1f
    .line 317
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@21
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@23
    aput v1, p1, v0

    #@25
    .line 318
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@27
    goto :goto_2c

    #@28
    .line 320
    :cond_28
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@2a
    aput p3, p1, v0

    #@2c
    .line 323
    :goto_2c
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@2e
    aget p1, p1, v0

    #@30
    if-eq p1, p3, :cond_36

    #@32
    .line 324
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@34
    aput v0, p3, p1

    #@36
    .line 326
    :cond_36
    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/core/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@39
    return-void
.end method

.method private removeFromHashMap(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 7

    #@0
    .line 260
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    #@4
    rem-int/2addr v0, v1

    #@5
    .line 261
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    #@7
    aget v1, v1, v0

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v1, v2, :cond_d

    #@c
    return-void

    #@d
    .line 268
    :cond_d
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@f
    .line 270
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@11
    aget v3, v3, v1

    #@13
    if-ne v3, p1, :cond_20

    #@15
    .line 271
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    #@17
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@19
    aget v4, v3, v1

    #@1b
    aput v4, p1, v0

    #@1d
    .line 272
    aput v2, v3, v1

    #@1f
    goto :goto_3c

    #@20
    .line 274
    :cond_20
    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@22
    aget v3, v0, v1

    #@24
    if-eq v3, v2, :cond_2e

    #@26
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@28
    aget v4, v4, v3

    #@2a
    if-eq v4, p1, :cond_2e

    #@2c
    move v1, v3

    #@2d
    goto :goto_20

    #@2e
    :cond_2e
    if-eq v3, v2, :cond_3c

    #@30
    .line 278
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@32
    aget v4, v4, v3

    #@34
    if-ne v4, p1, :cond_3c

    #@36
    .line 279
    aget p1, v0, v3

    #@38
    aput p1, v0, v1

    #@3a
    .line 280
    aput v2, v0, v3

    #@3c
    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .registers 8

    #@0
    .line 410
    sget v0, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    #@2
    neg-float v1, v0

    #@3
    cmpl-float v1, p2, v1

    #@5
    if-lez v1, :cond_c

    #@7
    cmpg-float v0, p2, v0

    #@9
    if-gez v0, :cond_c

    #@b
    return-void

    #@c
    .line 413
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    #@f
    move-result v0

    #@10
    const/4 v1, -0x1

    #@11
    if-ne v0, v1, :cond_17

    #@13
    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    #@16
    goto :goto_2f

    #@17
    .line 417
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@19
    aget v2, v1, v0

    #@1b
    add-float/2addr v2, p2

    #@1c
    aput v2, v1, v0

    #@1e
    .line 418
    sget p2, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    #@20
    neg-float v3, p2

    #@21
    cmpl-float v3, v2, v3

    #@23
    if-lez v3, :cond_2f

    #@25
    cmpg-float p2, v2, p2

    #@27
    if-gez p2, :cond_2f

    #@29
    const/4 p2, 0x0

    #@2a
    .line 419
    aput p2, v1, v0

    #@2c
    .line 420
    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    #@2f
    :cond_2f
    :goto_2f
    return-void
.end method

.method public clear()V
    .registers 6

    #@0
    .line 180
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2
    const/4 v1, 0x0

    #@3
    move v2, v1

    #@4
    :goto_4
    if-ge v2, v0, :cond_14

    #@6
    .line 182
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@9
    move-result-object v3

    #@a
    if-eqz v3, :cond_11

    #@c
    .line 184
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@e
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@11
    :cond_11
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_4

    #@14
    :cond_14
    move v0, v1

    #@15
    .line 187
    :goto_15
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    #@17
    const/4 v3, -0x1

    #@18
    if-ge v0, v2, :cond_25

    #@1a
    .line 188
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@1c
    aput v3, v2, v0

    #@1e
    .line 189
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@20
    aput v3, v2, v0

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_15

    #@25
    :cond_25
    move v0, v1

    #@26
    .line 191
    :goto_26
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    #@28
    if-ge v0, v2, :cond_31

    #@2a
    .line 192
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    #@2c
    aput v3, v2, v0

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_26

    #@31
    .line 194
    :cond_31
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@33
    .line 195
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@35
    return-void
.end method

.method public contains(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 3

    #@0
    .line 94
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-eq p1, v0, :cond_9

    #@7
    const/4 p1, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return p1
.end method

.method public display()V
    .registers 6

    #@0
    .line 134
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2
    .line 135
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string v2, "{ "

    #@6
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_3c

    #@c
    .line 137
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@f
    move-result-object v2

    #@10
    if-nez v2, :cond_13

    #@12
    goto :goto_39

    #@13
    .line 141
    :cond_13
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string v4, " = "

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariableValue(I)F

    #@27
    move-result v4

    #@28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string v4, " "

    #@2e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_a

    #@3c
    .line 143
    :cond_3c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e
    const-string v1, " }"

    #@40
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    return-void
.end method

.method public divideByAmount(F)V
    .registers 7

    #@0
    .line 481
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2
    .line 482
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@4
    const/4 v2, 0x0

    #@5
    :goto_5
    if-ge v2, v0, :cond_19

    #@7
    .line 484
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@9
    aget v4, v3, v1

    #@b
    div-float/2addr v4, p1

    #@c
    aput v4, v3, v1

    #@e
    .line 485
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@10
    aget v1, v3, v1

    #@12
    const/4 v3, -0x1

    #@13
    if-ne v1, v3, :cond_16

    #@15
    goto :goto_19

    #@16
    :cond_16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_5

    #@19
    :cond_19
    :goto_19
    return-void
.end method

.method public get(Landroidx/constraintlayout/core/SolverVariable;)F
    .registers 3

    #@0
    .line 125
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-eq p1, v0, :cond_c

    #@7
    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@9
    aget p1, v0, p1

    #@b
    return p1

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    return p1
.end method

.method public getCurrentSize()I
    .registers 2

    #@0
    .line 54
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2
    return v0
.end method

.method public getVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .registers 8

    #@0
    .line 59
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 63
    :cond_6
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@8
    const/4 v3, 0x0

    #@9
    :goto_9
    if-ge v3, v0, :cond_25

    #@b
    const/4 v4, -0x1

    #@c
    if-ne v3, p1, :cond_1b

    #@e
    if-eq v2, v4, :cond_1b

    #@10
    .line 66
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    #@12
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@14
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@16
    aget v0, v0, v2

    #@18
    aget-object p1, p1, v0

    #@1a
    return-object p1

    #@1b
    .line 68
    :cond_1b
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@1d
    aget v2, v5, v2

    #@1f
    if-ne v2, v4, :cond_22

    #@21
    goto :goto_25

    #@22
    :cond_22
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_9

    #@25
    :cond_25
    :goto_25
    return-object v1
.end method

.method public getVariableValue(I)F
    .registers 6

    #@0
    .line 78
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2
    .line 79
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@4
    const/4 v2, 0x0

    #@5
    :goto_5
    if-ge v2, v0, :cond_19

    #@7
    if-ne v2, p1, :cond_e

    #@9
    .line 82
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@b
    aget p1, p1, v1

    #@d
    return p1

    #@e
    .line 84
    :cond_e
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@10
    aget v1, v3, v1

    #@12
    const/4 v3, -0x1

    #@13
    if-ne v1, v3, :cond_16

    #@15
    goto :goto_19

    #@16
    :cond_16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_5

    #@19
    :cond_19
    :goto_19
    const/4 p1, 0x0

    #@1a
    return p1
.end method

.method public indexOf(Landroidx/constraintlayout/core/SolverVariable;)I
    .registers 5

    #@0
    .line 99
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eqz v0, :cond_33

    #@5
    if-nez p1, :cond_8

    #@7
    goto :goto_33

    #@8
    .line 102
    :cond_8
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@a
    .line 103
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    #@c
    rem-int v0, p1, v0

    #@e
    .line 104
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    #@10
    aget v0, v2, v0

    #@12
    if-ne v0, v1, :cond_15

    #@14
    return v1

    #@15
    .line 108
    :cond_15
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@17
    aget v2, v2, v0

    #@19
    if-ne v2, p1, :cond_1c

    #@1b
    return v0

    #@1c
    .line 111
    :cond_1c
    :goto_1c
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    #@1e
    aget v0, v2, v0

    #@20
    if-eq v0, v1, :cond_29

    #@22
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@24
    aget v2, v2, v0

    #@26
    if-eq v2, p1, :cond_29

    #@28
    goto :goto_1c

    #@29
    :cond_29
    if-ne v0, v1, :cond_2c

    #@2b
    return v1

    #@2c
    .line 117
    :cond_2c
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@2e
    aget v2, v2, v0

    #@30
    if-ne v2, p1, :cond_33

    #@32
    return v0

    #@33
    :cond_33
    :goto_33
    return v1
.end method

.method public invert()V
    .registers 7

    #@0
    .line 468
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2
    .line 469
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@4
    const/4 v2, 0x0

    #@5
    :goto_5
    if-ge v2, v0, :cond_1b

    #@7
    .line 471
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@9
    aget v4, v3, v1

    #@b
    const/high16 v5, -0x40800000    # -1.0f

    #@d
    mul-float/2addr v4, v5

    #@e
    aput v4, v3, v1

    #@10
    .line 472
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@12
    aget v1, v3, v1

    #@14
    const/4 v3, -0x1

    #@15
    if-ne v1, v3, :cond_18

    #@17
    goto :goto_1b

    #@18
    :cond_18
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method public put(Landroidx/constraintlayout/core/SolverVariable;F)V
    .registers 10

    #@0
    .line 334
    sget v0, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    #@2
    neg-float v1, v0

    #@3
    cmpl-float v1, p2, v1

    #@5
    const/4 v2, 0x1

    #@6
    if-lez v1, :cond_10

    #@8
    cmpg-float v0, p2, v0

    #@a
    if-gez v0, :cond_10

    #@c
    .line 335
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    #@f
    return-void

    #@10
    .line 338
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@12
    const/4 v1, 0x0

    #@13
    if-nez v0, :cond_1e

    #@15
    .line 339
    invoke-direct {p0, v1, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    #@18
    .line 340
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/core/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@1b
    .line 341
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@1d
    goto :goto_5e

    #@1e
    .line 343
    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    #@21
    move-result v0

    #@22
    const/4 v3, -0x1

    #@23
    if-eq v0, v3, :cond_2a

    #@25
    .line 345
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@27
    aput p2, p1, v0

    #@29
    goto :goto_5e

    #@2a
    .line 347
    :cond_2a
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@2c
    add-int/2addr v0, v2

    #@2d
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    #@2f
    if-lt v0, v2, :cond_34

    #@31
    .line 348
    invoke-direct {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->increaseSize()V

    #@34
    .line 350
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@36
    .line 352
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@38
    move v4, v3

    #@39
    :goto_39
    if-ge v1, v0, :cond_5b

    #@3b
    .line 354
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@3d
    aget v5, v5, v2

    #@3f
    iget v6, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@41
    if-ne v5, v6, :cond_48

    #@43
    .line 355
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@45
    aput p2, p1, v2

    #@47
    return-void

    #@48
    .line 358
    :cond_48
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@4a
    aget v5, v5, v2

    #@4c
    iget v6, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@4e
    if-ge v5, v6, :cond_51

    #@50
    move v4, v2

    #@51
    .line 361
    :cond_51
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@53
    aget v2, v5, v2

    #@55
    if-ne v2, v3, :cond_58

    #@57
    goto :goto_5b

    #@58
    :cond_58
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_39

    #@5b
    .line 366
    :cond_5b
    :goto_5b
    invoke-direct {p0, v4, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->insertVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    #@5e
    :goto_5e
    return-void
.end method

.method public remove(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .registers 10

    #@0
    .line 381
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_9

    #@7
    const/4 p1, 0x0

    #@8
    return p1

    #@9
    .line 385
    :cond_9
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->removeFromHashMap(Landroidx/constraintlayout/core/SolverVariable;)V

    #@c
    .line 386
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@e
    aget v2, v2, v0

    #@10
    .line 387
    iget v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@12
    if-ne v3, v0, :cond_1a

    #@14
    .line 388
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@16
    aget v3, v3, v0

    #@18
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@1a
    .line 390
    :cond_1a
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@1c
    aput v1, v3, v0

    #@1e
    .line 391
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@20
    aget v4, v3, v0

    #@22
    if-eq v4, v1, :cond_2a

    #@24
    .line 392
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@26
    aget v6, v5, v0

    #@28
    aput v6, v5, v4

    #@2a
    .line 394
    :cond_2a
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@2c
    aget v4, v4, v0

    #@2e
    if-eq v4, v1, :cond_34

    #@30
    .line 395
    aget v0, v3, v0

    #@32
    aput v0, v3, v4

    #@34
    .line 397
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@36
    add-int/lit8 v0, v0, -0x1

    #@38
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@3a
    .line 398
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@3c
    add-int/lit8 v0, v0, -0x1

    #@3e
    iput v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@40
    if-eqz p2, :cond_47

    #@42
    .line 400
    iget-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@44
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@47
    :cond_47
    return v2
.end method

.method public sizeInBytes()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    #@0
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, " { "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 149
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    #@19
    const/4 v2, 0x0

    #@1a
    :goto_1a
    if-ge v2, v1, :cond_fb

    #@1c
    .line 151
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@1f
    move-result-object v3

    #@20
    if-nez v3, :cond_24

    #@22
    goto/16 :goto_f7

    #@24
    .line 155
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string v4, " = "

    #@33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariableValue(I)F

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    const-string v4, " "

    #@41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    .line 156
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    #@4c
    move-result v3

    #@4d
    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    const-string v4, "[p: "

    #@58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    .line 158
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@62
    aget v4, v4, v3

    #@64
    const-string v5, "none"

    #@66
    const/4 v6, -0x1

    #@67
    if-eq v4, v6, :cond_89

    #@69
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    #@74
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@76
    iget-object v7, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@78
    iget-object v8, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    #@7a
    aget v8, v8, v3

    #@7c
    aget v7, v7, v8

    #@7e
    aget-object v4, v4, v7

    #@80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    goto :goto_9a

    #@89
    .line 161
    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v0

    #@9a
    .line 163
    :goto_9a
    new-instance v4, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    const-string v4, ", n: "

    #@a5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    .line 164
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@af
    aget v4, v4, v3

    #@b1
    if-eq v4, v6, :cond_d3

    #@b3
    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    #@be
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@c0
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@c2
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    #@c4
    aget v3, v6, v3

    #@c6
    aget v3, v5, v3

    #@c8
    aget-object v3, v4, v3

    #@ca
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    goto :goto_e4

    #@d3
    .line 167
    :cond_d3
    new-instance v3, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v0

    #@dc
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v0

    #@e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v0

    #@e4
    .line 169
    :goto_e4
    new-instance v3, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v0

    #@ed
    const-string v3, "]"

    #@ef
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v0

    #@f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v0

    #@f7
    :goto_f7
    add-int/lit8 v2, v2, 0x1

    #@f9
    goto/16 :goto_1a

    #@fb
    .line 171
    :cond_fb
    new-instance v1, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v0

    #@104
    const-string v1, " }"

    #@106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v0

    #@10e
    return-object v0
.end method

.method public use(Landroidx/constraintlayout/core/ArrayRow;Z)F
    .registers 10

    #@0
    .line 427
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/SolverVariableValues;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@5
    move-result v0

    #@6
    .line 428
    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@8
    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    #@b
    .line 439
    iget-object p1, p1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@d
    check-cast p1, Landroidx/constraintlayout/core/SolverVariableValues;

    #@f
    .line 440
    invoke-virtual {p1}, Landroidx/constraintlayout/core/SolverVariableValues;->getCurrentSize()I

    #@12
    move-result v1

    #@13
    .line 441
    iget v2, p1, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    #@15
    const/4 v2, 0x0

    #@16
    move v3, v2

    #@17
    :goto_17
    if-ge v2, v1, :cond_37

    #@19
    .line 455
    iget-object v4, p1, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@1b
    aget v4, v4, v3

    #@1d
    const/4 v5, -0x1

    #@1e
    if-eq v4, v5, :cond_34

    #@20
    .line 456
    iget-object v4, p1, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    #@22
    aget v4, v4, v3

    #@24
    .line 457
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    #@26
    iget-object v5, v5, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@28
    iget-object v6, p1, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    #@2a
    aget v6, v6, v3

    #@2c
    aget-object v5, v5, v6

    #@2e
    mul-float/2addr v4, v0

    #@2f
    .line 458
    invoke-virtual {p0, v5, v4, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    #@32
    add-int/lit8 v2, v2, 0x1

    #@34
    :cond_34
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_17

    #@37
    :cond_37
    return v0
.end method
