.class public Landroidx/constraintlayout/core/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"

# interfaces
.implements Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field static final NONE:I = -0x1

.field private static epsilon:F = 0.001f


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/core/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field protected final mCache:Landroidx/constraintlayout/core/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/core/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V
    .registers 6

    #@0
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@6
    const/16 v1, 0x8

    #@8
    .line 48
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@a
    const/4 v2, 0x0

    #@b
    .line 50
    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    #@d
    new-array v2, v1, [I

    #@f
    .line 53
    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@11
    new-array v2, v1, [I

    #@13
    .line 56
    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@15
    new-array v1, v1, [F

    #@17
    .line 59
    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@19
    const/4 v1, -0x1

    #@1a
    .line 62
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@1c
    .line 78
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@1e
    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@20
    .line 102
    iput-object p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@22
    .line 103
    iput-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    #@24
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .registers 12

    #@0
    .line 226
    sget v0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

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
    .line 230
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@e
    const/4 v1, 0x0

    #@f
    const/4 v2, -0x1

    #@10
    const/4 v3, 0x1

    #@11
    if-ne v0, v2, :cond_49

    #@13
    .line 231
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@15
    .line 232
    iget-object p3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@17
    aput p2, p3, v1

    #@19
    .line 233
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@1b
    iget p3, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@1d
    aput p3, p2, v1

    #@1f
    .line 234
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@21
    iget p3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@23
    aput v2, p2, p3

    #@25
    .line 235
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@27
    add-int/2addr p2, v3

    #@28
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@2a
    .line 236
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@2c
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@2f
    .line 237
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@31
    add-int/2addr p1, v3

    #@32
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@34
    .line 238
    iget-boolean p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@36
    if-nez p1, :cond_48

    #@38
    .line 240
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@3a
    add-int/2addr p1, v3

    #@3b
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@3d
    .line 241
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@3f
    array-length p3, p2

    #@40
    if-lt p1, p3, :cond_48

    #@42
    .line 242
    iput-boolean v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@44
    .line 243
    array-length p1, p2

    #@45
    sub-int/2addr p1, v3

    #@46
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@48
    :cond_48
    return-void

    #@49
    :cond_49
    move v4, v1

    #@4a
    move v5, v2

    #@4b
    :goto_4b
    if-eq v0, v2, :cond_aa

    #@4d
    .line 251
    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@4f
    if-ge v4, v6, :cond_aa

    #@51
    .line 252
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@53
    aget v6, v6, v0

    #@55
    .line 253
    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@57
    if-ne v6, v7, :cond_9a

    #@59
    .line 254
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@5b
    aget v2, v1, v0

    #@5d
    add-float/2addr v2, p2

    #@5e
    .line 255
    sget p2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    #@60
    neg-float v4, p2

    #@61
    cmpl-float v4, v2, v4

    #@63
    const/4 v6, 0x0

    #@64
    if-lez v4, :cond_6b

    #@66
    cmpg-float p2, v2, p2

    #@68
    if-gez p2, :cond_6b

    #@6a
    move v2, v6

    #@6b
    .line 258
    :cond_6b
    aput v2, v1, v0

    #@6d
    cmpl-float p2, v2, v6

    #@6f
    if-nez p2, :cond_99

    #@71
    .line 261
    iget p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@73
    if-ne v0, p2, :cond_7c

    #@75
    .line 262
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@77
    aget p2, p2, v0

    #@79
    iput p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@7b
    goto :goto_82

    #@7c
    .line 264
    :cond_7c
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@7e
    aget v1, p2, v0

    #@80
    aput v1, p2, v5

    #@82
    :goto_82
    if-eqz p3, :cond_89

    #@84
    .line 267
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@86
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@89
    .line 269
    :cond_89
    iget-boolean p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@8b
    if-eqz p2, :cond_8f

    #@8d
    .line 271
    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@8f
    .line 273
    :cond_8f
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@91
    sub-int/2addr p2, v3

    #@92
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@94
    .line 274
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@96
    sub-int/2addr p1, v3

    #@97
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@99
    :cond_99
    return-void

    #@9a
    .line 278
    :cond_9a
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@9c
    aget v6, v6, v0

    #@9e
    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@a0
    if-ge v6, v7, :cond_a3

    #@a2
    move v5, v0

    #@a3
    .line 281
    :cond_a3
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@a5
    aget v0, v6, v0

    #@a7
    add-int/lit8 v4, v4, 0x1

    #@a9
    goto :goto_4b

    #@aa
    .line 287
    :cond_aa
    iget p3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@ac
    add-int/lit8 v0, p3, 0x1

    #@ae
    .line 288
    iget-boolean v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@b0
    if-eqz v4, :cond_bb

    #@b2
    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@b4
    aget v4, v0, p3

    #@b6
    if-ne v4, v2, :cond_b9

    #@b8
    goto :goto_bc

    #@b9
    .line 294
    :cond_b9
    array-length p3, v0

    #@ba
    goto :goto_bc

    #@bb
    :cond_bb
    move p3, v0

    #@bc
    .line 297
    :goto_bc
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@be
    array-length v4, v0

    #@bf
    if-lt p3, v4, :cond_d5

    #@c1
    .line 298
    iget v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@c3
    array-length v0, v0

    #@c4
    if-ge v4, v0, :cond_d5

    #@c6
    move v0, v1

    #@c7
    .line 300
    :goto_c7
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@c9
    array-length v6, v4

    #@ca
    if-ge v0, v6, :cond_d5

    #@cc
    .line 301
    aget v4, v4, v0

    #@ce
    if-ne v4, v2, :cond_d2

    #@d0
    move p3, v0

    #@d1
    goto :goto_d5

    #@d2
    :cond_d2
    add-int/lit8 v0, v0, 0x1

    #@d4
    goto :goto_c7

    #@d5
    .line 309
    :cond_d5
    :goto_d5
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@d7
    array-length v4, v0

    #@d8
    if-lt p3, v4, :cond_103

    #@da
    .line 310
    array-length p3, v0

    #@db
    .line 311
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@dd
    mul-int/lit8 v0, v0, 0x2

    #@df
    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@e1
    .line 312
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@e3
    add-int/lit8 v1, p3, -0x1

    #@e5
    .line 313
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@e7
    .line 314
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@e9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    #@ec
    move-result-object v0

    #@ed
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@ef
    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@f1
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@f3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@f6
    move-result-object v0

    #@f7
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@f9
    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@fb
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@fd
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@100
    move-result-object v0

    #@101
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@103
    .line 320
    :cond_103
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@105
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@107
    aput v1, v0, p3

    #@109
    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@10b
    aput p2, v0, p3

    #@10d
    if-eq v5, v2, :cond_118

    #@10f
    .line 323
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@111
    aget v0, p2, v5

    #@113
    aput v0, p2, p3

    #@115
    .line 324
    aput p3, p2, v5

    #@117
    goto :goto_120

    #@118
    .line 326
    :cond_118
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@11a
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@11c
    aput v0, p2, p3

    #@11e
    .line 327
    iput p3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@120
    .line 329
    :goto_120
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@122
    add-int/2addr p2, v3

    #@123
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@125
    .line 330
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@127
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@12a
    .line 331
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@12c
    add-int/2addr p1, v3

    #@12d
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@12f
    .line 332
    iget-boolean p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@131
    if-nez p1, :cond_138

    #@133
    .line 334
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@135
    add-int/2addr p1, v3

    #@136
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@138
    .line 336
    :cond_138
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@13a
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@13c
    array-length p3, p2

    #@13d
    if-lt p1, p3, :cond_145

    #@13f
    .line 337
    iput-boolean v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@141
    .line 338
    array-length p1, p2

    #@142
    sub-int/2addr p1, v3

    #@143
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@145
    :cond_145
    return-void
.end method

.method public final clear()V
    .registers 6

    #@0
    .line 409
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, 0x0

    #@3
    move v2, v1

    #@4
    :goto_4
    const/4 v3, -0x1

    #@5
    if-eq v0, v3, :cond_23

    #@7
    .line 411
    iget v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@9
    if-ge v2, v4, :cond_23

    #@b
    .line 412
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    #@d
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@f
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@11
    aget v4, v4, v0

    #@13
    aget-object v3, v3, v4

    #@15
    if-eqz v3, :cond_1c

    #@17
    .line 414
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@19
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@1c
    .line 416
    :cond_1c
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@1e
    aget v0, v3, v0

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_4

    #@23
    .line 419
    :cond_23
    iput v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@25
    .line 420
    iput v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@27
    .line 421
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@29
    .line 422
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@2b
    return-void
.end method

.method public contains(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 8

    #@0
    .line 432
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    if-ne v0, v2, :cond_7

    #@6
    return v1

    #@7
    :cond_7
    move v3, v1

    #@8
    :goto_8
    if-eq v0, v2, :cond_1f

    #@a
    .line 437
    iget v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@c
    if-ge v3, v4, :cond_1f

    #@e
    .line 438
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@10
    aget v4, v4, v0

    #@12
    iget v5, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@14
    if-ne v4, v5, :cond_18

    #@16
    const/4 p1, 0x1

    #@17
    return p1

    #@18
    .line 441
    :cond_18
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@1a
    aget v0, v4, v0

    #@1c
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_8

    #@1f
    :cond_1f
    return v1
.end method

.method public display()V
    .registers 6

    #@0
    .line 614
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@2
    .line 615
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
    .line 617
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@f
    move-result-object v2

    #@10
    if-nez v2, :cond_13

    #@12
    goto :goto_39

    #@13
    .line 621
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
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariableValue(I)F

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
    .line 623
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
    .registers 6

    #@0
    .line 500
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    const/4 v2, -0x1

    #@4
    if-eq v0, v2, :cond_18

    #@6
    .line 502
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@8
    if-ge v1, v2, :cond_18

    #@a
    .line 503
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@c
    aget v3, v2, v0

    #@e
    div-float/2addr v3, p1

    #@f
    aput v3, v2, v0

    #@11
    .line 504
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@13
    aget v0, v2, v0

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_3

    #@18
    :cond_18
    return-void
.end method

.method public final get(Landroidx/constraintlayout/core/SolverVariable;)F
    .registers 6

    #@0
    .line 593
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    const/4 v2, -0x1

    #@4
    if-eq v0, v2, :cond_1e

    #@6
    .line 595
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@8
    if-ge v1, v2, :cond_1e

    #@a
    .line 596
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@c
    aget v2, v2, v0

    #@e
    iget v3, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@10
    if-ne v2, v3, :cond_17

    #@12
    .line 597
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@14
    aget p1, p1, v0

    #@16
    return p1

    #@17
    .line 599
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@19
    aget v0, v2, v0

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_3

    #@1e
    :cond_1e
    const/4 p1, 0x0

    #@1f
    return p1
.end method

.method public getCurrentSize()I
    .registers 2

    #@0
    .line 509
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@2
    return v0
.end method

.method public getHead()I
    .registers 2

    #@0
    .line 508
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    return v0
.end method

.method public final getId(I)I
    .registers 3

    #@0
    .line 512
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@2
    aget p1, v0, p1

    #@4
    return p1
.end method

.method public final getNextIndice(I)I
    .registers 3

    #@0
    .line 520
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@2
    aget p1, v0, p1

    #@4
    return p1
.end method

.method getPivotCandidate()Landroidx/constraintlayout/core/SolverVariable;
    .registers 7

    #@0
    .line 529
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    if-nez v0, :cond_33

    #@4
    .line 531
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    const/4 v3, -0x1

    #@9
    if-eq v0, v3, :cond_32

    #@b
    .line 534
    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@d
    if-ge v1, v3, :cond_32

    #@f
    .line 535
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@11
    aget v3, v3, v0

    #@13
    const/4 v4, 0x0

    #@14
    cmpg-float v3, v3, v4

    #@16
    if-gez v3, :cond_2b

    #@18
    .line 539
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    #@1a
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@1c
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@1e
    aget v4, v4, v0

    #@20
    aget-object v3, v3, v4

    #@22
    if-eqz v2, :cond_2a

    #@24
    .line 540
    iget v4, v2, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@26
    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    #@28
    if-ge v4, v5, :cond_2b

    #@2a
    :cond_2a
    move-object v2, v3

    #@2b
    .line 544
    :cond_2b
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@2d
    aget v0, v3, v0

    #@2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_8

    #@32
    :cond_32
    return-object v2

    #@33
    :cond_33
    return-object v0
.end method

.method public final getValue(I)F
    .registers 3

    #@0
    .line 516
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@2
    aget p1, v0, p1

    #@4
    return p1
.end method

.method public getVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .registers 5

    #@0
    .line 558
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    const/4 v2, -0x1

    #@4
    if-eq v0, v2, :cond_1e

    #@6
    .line 560
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@8
    if-ge v1, v2, :cond_1e

    #@a
    if-ne v1, p1, :cond_17

    #@c
    .line 562
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    #@e
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@10
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@12
    aget v0, v1, v0

    #@14
    aget-object p1, p1, v0

    #@16
    return-object p1

    #@17
    .line 564
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@19
    aget v0, v2, v0

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_3

    #@1e
    :cond_1e
    const/4 p1, 0x0

    #@1f
    return-object p1
.end method

.method public getVariableValue(I)F
    .registers 5

    #@0
    .line 576
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    const/4 v2, -0x1

    #@4
    if-eq v0, v2, :cond_18

    #@6
    .line 578
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@8
    if-ge v1, v2, :cond_18

    #@a
    if-ne v1, p1, :cond_11

    #@c
    .line 580
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@e
    aget p1, p1, v0

    #@10
    return p1

    #@11
    .line 582
    :cond_11
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@13
    aget v0, v2, v0

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_3

    #@18
    :cond_18
    const/4 p1, 0x0

    #@19
    return p1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .registers 6

    #@0
    .line 470
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, 0x0

    #@3
    move v2, v1

    #@4
    :goto_4
    const/4 v3, -0x1

    #@5
    if-eq v0, v3, :cond_1d

    #@7
    .line 472
    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@9
    if-ge v2, v3, :cond_1d

    #@b
    .line 473
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@d
    aget v3, v3, v0

    #@f
    const/4 v4, 0x0

    #@10
    cmpl-float v3, v3, v4

    #@12
    if-lez v3, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 476
    :cond_16
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@18
    aget v0, v3, v0

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_4

    #@1d
    :cond_1d
    return v1
.end method

.method public indexOf(Landroidx/constraintlayout/core/SolverVariable;)I
    .registers 7

    #@0
    .line 448
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    return v1

    #@6
    :cond_6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-eq v0, v1, :cond_1d

    #@9
    .line 453
    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@b
    if-ge v2, v3, :cond_1d

    #@d
    .line 454
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@f
    aget v3, v3, v0

    #@11
    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@13
    if-ne v3, v4, :cond_16

    #@15
    return v0

    #@16
    .line 457
    :cond_16
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@18
    aget v0, v3, v0

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_7

    #@1d
    :cond_1d
    return v1
.end method

.method public invert()V
    .registers 6

    #@0
    .line 485
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    const/4 v2, -0x1

    #@4
    if-eq v0, v2, :cond_1a

    #@6
    .line 487
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@8
    if-ge v1, v2, :cond_1a

    #@a
    .line 488
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@c
    aget v3, v2, v0

    #@e
    const/high16 v4, -0x40800000    # -1.0f

    #@10
    mul-float/2addr v3, v4

    #@11
    aput v3, v2, v0

    #@13
    .line 489
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@15
    aget v0, v2, v0

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_3

    #@1a
    :cond_1a
    return-void
.end method

.method public final put(Landroidx/constraintlayout/core/SolverVariable;F)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p2, v0

    #@3
    const/4 v1, 0x1

    #@4
    if-nez v0, :cond_a

    #@6
    .line 119
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    #@9
    return-void

    #@a
    .line 123
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@c
    const/4 v2, 0x0

    #@d
    const/4 v3, -0x1

    #@e
    if-ne v0, v3, :cond_46

    #@10
    .line 124
    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@12
    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@14
    aput p2, v0, v2

    #@16
    .line 126
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@18
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@1a
    aput v0, p2, v2

    #@1c
    .line 127
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@1e
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@20
    aput v3, p2, v0

    #@22
    .line 128
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@24
    add-int/2addr p2, v1

    #@25
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@27
    .line 129
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@29
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@2c
    .line 130
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@2e
    add-int/2addr p1, v1

    #@2f
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@31
    .line 131
    iget-boolean p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@33
    if-nez p1, :cond_45

    #@35
    .line 133
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@37
    add-int/2addr p1, v1

    #@38
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@3a
    .line 134
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@3c
    array-length v0, p2

    #@3d
    if-lt p1, v0, :cond_45

    #@3f
    .line 135
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@41
    .line 136
    array-length p1, p2

    #@42
    sub-int/2addr p1, v1

    #@43
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@45
    :cond_45
    return-void

    #@46
    :cond_46
    move v4, v2

    #@47
    move v5, v3

    #@48
    :goto_48
    if-eq v0, v3, :cond_6b

    #@4a
    .line 144
    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@4c
    if-ge v4, v6, :cond_6b

    #@4e
    .line 145
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@50
    aget v6, v6, v0

    #@52
    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@54
    if-ne v6, v7, :cond_5b

    #@56
    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@58
    aput p2, p1, v0

    #@5a
    return-void

    #@5b
    .line 149
    :cond_5b
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@5d
    aget v6, v6, v0

    #@5f
    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@61
    if-ge v6, v7, :cond_64

    #@63
    move v5, v0

    #@64
    .line 152
    :cond_64
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@66
    aget v0, v6, v0

    #@68
    add-int/lit8 v4, v4, 0x1

    #@6a
    goto :goto_48

    #@6b
    .line 158
    :cond_6b
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@6d
    add-int/lit8 v4, v0, 0x1

    #@6f
    .line 159
    iget-boolean v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@71
    if-eqz v6, :cond_7c

    #@73
    .line 162
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@75
    aget v6, v4, v0

    #@77
    if-ne v6, v3, :cond_7a

    #@79
    goto :goto_7d

    #@7a
    .line 165
    :cond_7a
    array-length v0, v4

    #@7b
    goto :goto_7d

    #@7c
    :cond_7c
    move v0, v4

    #@7d
    .line 168
    :goto_7d
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@7f
    array-length v6, v4

    #@80
    if-lt v0, v6, :cond_96

    #@82
    .line 169
    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@84
    array-length v4, v4

    #@85
    if-ge v6, v4, :cond_96

    #@87
    move v4, v2

    #@88
    .line 171
    :goto_88
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@8a
    array-length v7, v6

    #@8b
    if-ge v4, v7, :cond_96

    #@8d
    .line 172
    aget v6, v6, v4

    #@8f
    if-ne v6, v3, :cond_93

    #@91
    move v0, v4

    #@92
    goto :goto_96

    #@93
    :cond_93
    add-int/lit8 v4, v4, 0x1

    #@95
    goto :goto_88

    #@96
    .line 180
    :cond_96
    :goto_96
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@98
    array-length v6, v4

    #@99
    if-lt v0, v6, :cond_c4

    #@9b
    .line 181
    array-length v0, v4

    #@9c
    .line 182
    iget v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@9e
    mul-int/lit8 v4, v4, 0x2

    #@a0
    iput v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@a2
    .line 183
    iput-boolean v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@a4
    add-int/lit8 v2, v0, -0x1

    #@a6
    .line 184
    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@a8
    .line 185
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@aa
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    #@ad
    move-result-object v2

    #@ae
    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@b0
    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@b2
    iget v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@b4
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    #@b7
    move-result-object v2

    #@b8
    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@ba
    .line 187
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@bc
    iget v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    #@be
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    #@c1
    move-result-object v2

    #@c2
    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@c4
    .line 191
    :cond_c4
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@c6
    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@c8
    aput v4, v2, v0

    #@ca
    .line 192
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@cc
    aput p2, v2, v0

    #@ce
    if-eq v5, v3, :cond_d9

    #@d0
    .line 194
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@d2
    aget v2, p2, v5

    #@d4
    aput v2, p2, v0

    #@d6
    .line 195
    aput v0, p2, v5

    #@d8
    goto :goto_e1

    #@d9
    .line 197
    :cond_d9
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@db
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@dd
    aput v2, p2, v0

    #@df
    .line 198
    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@e1
    .line 200
    :goto_e1
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@e3
    add-int/2addr p2, v1

    #@e4
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@e6
    .line 201
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@e8
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@eb
    .line 202
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@ed
    add-int/2addr p1, v1

    #@ee
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@f0
    .line 203
    iget-boolean p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@f2
    if-nez p2, :cond_f9

    #@f4
    .line 205
    iget p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@f6
    add-int/2addr p2, v1

    #@f7
    iput p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@f9
    .line 207
    :cond_f9
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@fb
    array-length v0, p2

    #@fc
    if-lt p1, v0, :cond_100

    #@fe
    .line 208
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@100
    .line 210
    :cond_100
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@102
    array-length v0, p2

    #@103
    if-lt p1, v0, :cond_10b

    #@105
    .line 211
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@107
    .line 212
    array-length p1, p2

    #@108
    sub-int/2addr p1, v1

    #@109
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@10b
    :cond_10b
    return-void
.end method

.method public final remove(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .registers 11

    #@0
    .line 369
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    if-ne v0, p1, :cond_7

    #@4
    const/4 v0, 0x0

    #@5
    .line 370
    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    #@7
    .line 372
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v0, v2, :cond_e

    #@d
    return v1

    #@e
    :cond_e
    const/4 v3, 0x0

    #@f
    move v4, v2

    #@10
    :goto_10
    if-eq v0, v2, :cond_5b

    #@12
    .line 378
    iget v5, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@14
    if-ge v3, v5, :cond_5b

    #@16
    .line 379
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@18
    aget v5, v5, v0

    #@1a
    .line 380
    iget v6, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    #@1c
    if-ne v5, v6, :cond_51

    #@1e
    .line 381
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@20
    if-ne v0, v1, :cond_29

    #@22
    .line 382
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@24
    aget v1, v1, v0

    #@26
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@28
    goto :goto_2f

    #@29
    .line 384
    :cond_29
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@2b
    aget v3, v1, v0

    #@2d
    aput v3, v1, v4

    #@2f
    :goto_2f
    if-eqz p2, :cond_36

    #@31
    .line 388
    iget-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    #@33
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    #@36
    .line 390
    :cond_36
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@38
    add-int/lit8 p2, p2, -0x1

    #@3a
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    #@3c
    .line 391
    iget p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@3e
    add-int/lit8 p1, p1, -0x1

    #@40
    iput p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@42
    .line 392
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@44
    aput v2, p1, v0

    #@46
    .line 393
    iget-boolean p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    #@48
    if-eqz p1, :cond_4c

    #@4a
    .line 395
    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    #@4c
    .line 397
    :cond_4c
    iget-object p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@4e
    aget p1, p1, v0

    #@50
    return p1

    #@51
    .line 400
    :cond_51
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@53
    aget v4, v4, v0

    #@55
    add-int/lit8 v3, v3, 0x1

    #@57
    move v7, v4

    #@58
    move v4, v0

    #@59
    move v0, v7

    #@5a
    goto :goto_10

    #@5b
    :cond_5b
    return v1
.end method

.method public sizeInBytes()I
    .registers 2

    #@0
    .line 608
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@2
    array-length v0, v0

    #@3
    mul-int/lit8 v0, v0, 0x4

    #@5
    mul-int/lit8 v0, v0, 0x3

    #@7
    add-int/lit8 v0, v0, 0x0

    #@9
    add-int/lit8 v0, v0, 0x24

    #@b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 634
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    #@2
    const-string v1, ""

    #@4
    const/4 v2, 0x0

    #@5
    :goto_5
    const/4 v3, -0x1

    #@6
    if-eq v0, v3, :cond_5c

    #@8
    .line 636
    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    #@a
    if-ge v2, v3, :cond_5c

    #@c
    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v3, " -> "

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    #@2a
    aget v3, v3, v0

    #@2c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string v3, " : "

    #@32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    #@45
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    #@47
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    #@49
    aget v4, v4, v0

    #@4b
    aget-object v3, v3, v4

    #@4d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .line 640
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    #@57
    aget v0, v3, v0

    #@59
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_5

    #@5c
    :cond_5c
    return-object v1
.end method

.method public use(Landroidx/constraintlayout/core/ArrayRow;Z)F
    .registers 8

    #@0
    .line 349
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@5
    move-result v0

    #@6
    .line 350
    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    #@8
    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    #@b
    .line 351
    iget-object p1, p1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    #@d
    .line 352
    invoke-interface {p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    :goto_12
    if-ge v2, v1, :cond_23

    #@14
    .line 354
    invoke-interface {p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    #@17
    move-result-object v3

    #@18
    .line 355
    invoke-interface {p1, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    #@1b
    move-result v4

    #@1c
    mul-float/2addr v4, v0

    #@1d
    .line 356
    invoke-virtual {p0, v3, v4, p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_12

    #@23
    :cond_23
    return v0
.end method
