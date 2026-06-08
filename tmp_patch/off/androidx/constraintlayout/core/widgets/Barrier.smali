.class public Landroidx/constraintlayout/core/widgets/Barrier;
.super Landroidx/constraintlayout/core/widgets/HelperWidget;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2

.field private static final USE_RELAX_GONE:Z = false

.field private static final USE_RESOLUTION:Z = true


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mMargin:I

.field resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@6
    const/4 v1, 0x1

    #@7
    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@9
    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@b
    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    #@d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 43
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@6
    const/4 v1, 0x1

    #@7
    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@9
    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@b
    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    #@d
    .line 44
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Barrier;->setDebugName(Ljava/lang/String;)V

    #@10
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 15

    #@0
    .line 139
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4
    const/4 v1, 0x0

    #@5
    aput-object v0, p2, v1

    #@7
    .line 140
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b
    const/4 v2, 0x2

    #@c
    aput-object v0, p2, v2

    #@e
    .line 141
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    const/4 v3, 0x1

    #@13
    aput-object v0, p2, v3

    #@15
    .line 142
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19
    const/4 v4, 0x3

    #@1a
    aput-object v0, p2, v4

    #@1c
    move p2, v1

    #@1d
    .line 143
    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f
    array-length v0, v0

    #@20
    if-ge p2, v0, :cond_33

    #@22
    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@24
    aget-object v0, v0, p2

    #@26
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@28
    aget-object v5, v5, p2

    #@2a
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@2d
    move-result-object v5

    #@2e
    iput-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@30
    add-int/lit8 p2, p2, 0x1

    #@32
    goto :goto_1d

    #@33
    .line 146
    :cond_33
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@35
    if-ltz p2, :cond_21f

    #@37
    const/4 v0, 0x4

    #@38
    if-ge p2, v0, :cond_21f

    #@3a
    .line 147
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3c
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@3e
    aget-object p2, p2, v5

    #@40
    .line 153
    iget-boolean v5, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    #@42
    if-nez v5, :cond_47

    #@44
    .line 154
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    #@47
    .line 156
    :cond_47
    iget-boolean v5, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    #@49
    if-eqz v5, :cond_7e

    #@4b
    .line 157
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    #@4d
    .line 158
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@4f
    if-eqz p2, :cond_6b

    #@51
    if-ne p2, v3, :cond_54

    #@53
    goto :goto_6b

    #@54
    :cond_54
    if-eq p2, v2, :cond_58

    #@56
    if-ne p2, v4, :cond_7d

    #@58
    .line 162
    :cond_58
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5a
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@5c
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mY:I

    #@5e
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@61
    .line 163
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@63
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@65
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mY:I

    #@67
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@6a
    goto :goto_7d

    #@6b
    .line 159
    :cond_6b
    :goto_6b
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6d
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@6f
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mX:I

    #@71
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@74
    .line 160
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@76
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@78
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mX:I

    #@7a
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@7d
    :cond_7d
    :goto_7d
    return-void

    #@7e
    :cond_7e
    move v5, v1

    #@7f
    .line 172
    :goto_7f
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    #@81
    if-ge v5, v6, :cond_cc

    #@83
    .line 173
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@85
    aget-object v6, v6, v5

    #@87
    .line 174
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@89
    if-nez v7, :cond_92

    #@8b
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    #@8e
    move-result v7

    #@8f
    if-nez v7, :cond_92

    #@91
    goto :goto_c9

    #@92
    .line 177
    :cond_92
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@94
    if-eqz v7, :cond_98

    #@96
    if-ne v7, v3, :cond_ae

    #@98
    .line 178
    :cond_98
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9b
    move-result-object v7

    #@9c
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9e
    if-ne v7, v8, :cond_ae

    #@a0
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a2
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a4
    if-eqz v7, :cond_ae

    #@a6
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a8
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@aa
    if-eqz v7, :cond_ae

    #@ac
    :goto_ac
    move v5, v3

    #@ad
    goto :goto_cd

    #@ae
    .line 182
    :cond_ae
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@b0
    if-eq v7, v2, :cond_b4

    #@b2
    if-ne v7, v4, :cond_c9

    #@b4
    .line 183
    :cond_b4
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b7
    move-result-object v7

    #@b8
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ba
    if-ne v7, v8, :cond_c9

    #@bc
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@be
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c0
    if-eqz v7, :cond_c9

    #@c2
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c4
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c6
    if-eqz v6, :cond_c9

    #@c8
    goto :goto_ac

    #@c9
    :cond_c9
    :goto_c9
    add-int/lit8 v5, v5, 0x1

    #@cb
    goto :goto_7f

    #@cc
    :cond_cc
    move v5, v1

    #@cd
    .line 190
    :goto_cd
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@cf
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    #@d2
    move-result v6

    #@d3
    if-nez v6, :cond_e0

    #@d5
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d7
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    #@da
    move-result v6

    #@db
    if-eqz v6, :cond_de

    #@dd
    goto :goto_e0

    #@de
    :cond_de
    move v6, v1

    #@df
    goto :goto_e1

    #@e0
    :cond_e0
    :goto_e0
    move v6, v3

    #@e1
    .line 191
    :goto_e1
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e3
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    #@e6
    move-result v7

    #@e7
    if-nez v7, :cond_f4

    #@e9
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@eb
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    #@ee
    move-result v7

    #@ef
    if-eqz v7, :cond_f2

    #@f1
    goto :goto_f4

    #@f2
    :cond_f2
    move v7, v1

    #@f3
    goto :goto_f5

    #@f4
    :cond_f4
    :goto_f4
    move v7, v3

    #@f5
    :goto_f5
    if-nez v5, :cond_10b

    #@f7
    .line 192
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@f9
    if-nez v8, :cond_fd

    #@fb
    if-nez v6, :cond_109

    #@fd
    :cond_fd
    if-ne v8, v2, :cond_101

    #@ff
    if-nez v7, :cond_109

    #@101
    :cond_101
    if-ne v8, v3, :cond_105

    #@103
    if-nez v6, :cond_109

    #@105
    :cond_105
    if-ne v8, v4, :cond_10b

    #@107
    if-eqz v7, :cond_10b

    #@109
    :cond_109
    move v6, v3

    #@10a
    goto :goto_10c

    #@10b
    :cond_10b
    move v6, v1

    #@10c
    :goto_10c
    if-nez v6, :cond_110

    #@10e
    move v6, v0

    #@10f
    goto :goto_111

    #@110
    :cond_110
    const/4 v6, 0x5

    #@111
    :goto_111
    move v7, v1

    #@112
    .line 201
    :goto_112
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    #@114
    if-ge v7, v8, :cond_17b

    #@116
    .line 202
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@118
    aget-object v8, v8, v7

    #@11a
    .line 203
    iget-boolean v9, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@11c
    if-nez v9, :cond_125

    #@11e
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    #@121
    move-result v9

    #@122
    if-nez v9, :cond_125

    #@124
    goto :goto_178

    #@125
    .line 206
    :cond_125
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@127
    iget v10, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@129
    aget-object v9, v9, v10

    #@12b
    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@12e
    move-result-object v9

    #@12f
    .line 207
    iget-object v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@131
    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@133
    aget-object v10, v10, v11

    #@135
    iput-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@137
    .line 209
    iget-object v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@139
    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@13b
    aget-object v10, v10, v11

    #@13d
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@13f
    if-eqz v10, :cond_157

    #@141
    iget-object v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@143
    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@145
    aget-object v10, v10, v11

    #@147
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@149
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14b
    if-ne v10, p0, :cond_157

    #@14d
    .line 211
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14f
    iget v10, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@151
    aget-object v8, v8, v10

    #@153
    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@155
    add-int/2addr v8, v1

    #@156
    goto :goto_158

    #@157
    :cond_157
    move v8, v1

    #@158
    .line 213
    :goto_158
    iget v10, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@15a
    if-eqz v10, :cond_168

    #@15c
    if-ne v10, v2, :cond_15f

    #@15e
    goto :goto_168

    #@15f
    .line 216
    :cond_15f
    iget-object v10, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@161
    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@163
    add-int/2addr v11, v8

    #@164
    invoke-virtual {p1, v10, v9, v11, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V

    #@167
    goto :goto_170

    #@168
    .line 214
    :cond_168
    :goto_168
    iget-object v10, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@16a
    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@16c
    sub-int/2addr v11, v8

    #@16d
    invoke-virtual {p1, v10, v9, v11, v5}, Landroidx/constraintlayout/core/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V

    #@170
    .line 223
    :goto_170
    iget-object v10, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@172
    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@174
    add-int/2addr v11, v8

    #@175
    invoke-virtual {p1, v10, v9, v11, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@178
    :goto_178
    add-int/lit8 v7, v7, 0x1

    #@17a
    goto :goto_112

    #@17b
    .line 230
    :cond_17b
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@17d
    const/16 v5, 0x8

    #@17f
    if-nez p2, :cond_1a8

    #@181
    .line 231
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@183
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@185
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@187
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@189
    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@18c
    .line 232
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18e
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@190
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@192
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@194
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@196
    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@199
    .line 233
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19b
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@19d
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@19f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a1
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1a3
    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@1a6
    goto/16 :goto_21f

    #@1a8
    :cond_1a8
    if-ne p2, v3, :cond_1d0

    #@1aa
    .line 235
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ac
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1ae
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1b0
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1b2
    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@1b5
    .line 236
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1b7
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1b9
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1bb
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1bd
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1bf
    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@1c2
    .line 237
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c4
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1c6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1c8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ca
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1cc
    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@1cf
    goto :goto_21f

    #@1d0
    :cond_1d0
    if-ne p2, v2, :cond_1f8

    #@1d2
    .line 239
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d4
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1d6
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d8
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1da
    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@1dd
    .line 240
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1df
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1e1
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1e3
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e5
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1e7
    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@1ea
    .line 241
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ec
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1ee
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1f0
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1f4
    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@1f7
    goto :goto_21f

    #@1f8
    :cond_1f8
    if-ne p2, v4, :cond_21f

    #@1fa
    .line 243
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1fc
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1fe
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@200
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@202
    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@205
    .line 244
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@207
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@209
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@20b
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20d
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@20f
    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@212
    .line 245
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@214
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@216
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@218
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@21c
    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@21f
    :cond_21f
    :goto_21f
    return-void
.end method

.method public allSolved()Z
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    move v3, v0

    #@3
    move v2, v1

    #@4
    .line 274
    :goto_4
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    #@6
    const/4 v5, 0x3

    #@7
    const/4 v6, 0x2

    #@8
    if-ge v2, v4, :cond_37

    #@a
    .line 275
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c
    aget-object v4, v4, v2

    #@e
    .line 276
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@10
    if-nez v7, :cond_19

    #@12
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    #@15
    move-result v7

    #@16
    if-nez v7, :cond_19

    #@18
    goto :goto_34

    #@19
    .line 279
    :cond_19
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@1b
    if-eqz v7, :cond_1f

    #@1d
    if-ne v7, v0, :cond_27

    #@1f
    :cond_1f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    #@22
    move-result v7

    #@23
    if-nez v7, :cond_27

    #@25
    :goto_25
    move v3, v1

    #@26
    goto :goto_34

    #@27
    .line 281
    :cond_27
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@29
    if-eq v7, v6, :cond_2d

    #@2b
    if-ne v7, v5, :cond_34

    #@2d
    :cond_2d
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_34

    #@33
    goto :goto_25

    #@34
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_4

    #@37
    :cond_37
    if-eqz v3, :cond_e8

    #@39
    .line 286
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    #@3b
    if-lez v2, :cond_e8

    #@3d
    move v2, v1

    #@3e
    move v3, v2

    #@3f
    .line 290
    :goto_3f
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    #@41
    if-ge v1, v4, :cond_d4

    #@43
    .line 291
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@45
    aget-object v4, v4, v1

    #@47
    .line 292
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@49
    if-nez v7, :cond_53

    #@4b
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    #@4e
    move-result v7

    #@4f
    if-nez v7, :cond_53

    #@51
    goto/16 :goto_d0

    #@53
    :cond_53
    if-nez v3, :cond_8b

    #@55
    .line 296
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@57
    if-nez v3, :cond_64

    #@59
    .line 297
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@5b
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@62
    move-result v2

    #@63
    goto :goto_8a

    #@64
    :cond_64
    if-ne v3, v0, :cond_71

    #@66
    .line 299
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@68
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@6f
    move-result v2

    #@70
    goto :goto_8a

    #@71
    :cond_71
    if-ne v3, v6, :cond_7e

    #@73
    .line 301
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@75
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@7c
    move-result v2

    #@7d
    goto :goto_8a

    #@7e
    :cond_7e
    if-ne v3, v5, :cond_8a

    #@80
    .line 303
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@82
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@89
    move-result v2

    #@8a
    :cond_8a
    :goto_8a
    move v3, v0

    #@8b
    .line 307
    :cond_8b
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@8d
    if-nez v7, :cond_9e

    #@8f
    .line 308
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@91
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@98
    move-result v4

    #@99
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@9c
    move-result v2

    #@9d
    goto :goto_d0

    #@9e
    :cond_9e
    if-ne v7, v0, :cond_af

    #@a0
    .line 310
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a2
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@a9
    move-result v4

    #@aa
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@ad
    move-result v2

    #@ae
    goto :goto_d0

    #@af
    :cond_af
    if-ne v7, v6, :cond_c0

    #@b1
    .line 312
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@b3
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@ba
    move-result v4

    #@bb
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@be
    move-result v2

    #@bf
    goto :goto_d0

    #@c0
    :cond_c0
    if-ne v7, v5, :cond_d0

    #@c2
    .line 314
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@c4
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@cb
    move-result v4

    #@cc
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@cf
    move-result v2

    #@d0
    :cond_d0
    :goto_d0
    add-int/lit8 v1, v1, 0x1

    #@d2
    goto/16 :goto_3f

    #@d4
    .line 317
    :cond_d4
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@d6
    add-int/2addr v2, v1

    #@d7
    .line 318
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@d9
    if-eqz v1, :cond_e2

    #@db
    if-ne v1, v0, :cond_de

    #@dd
    goto :goto_e2

    #@de
    .line 321
    :cond_de
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/core/widgets/Barrier;->setFinalVertical(II)V

    #@e1
    goto :goto_e5

    #@e2
    .line 319
    :cond_e2
    :goto_e2
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/core/widgets/Barrier;->setFinalHorizontal(II)V

    #@e5
    .line 326
    :goto_e5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    #@e7
    return v0

    #@e8
    :cond_e8
    return v1
.end method

.method public allowedInBarrier()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public allowsGoneWidget()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 70
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@2
    return v0
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 3
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
    .line 89
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    #@3
    .line 90
    check-cast p1, Landroidx/constraintlayout/core/widgets/Barrier;

    #@5
    .line 91
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@7
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@9
    .line 92
    iget-boolean p2, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@b
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@d
    .line 93
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@f
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@11
    return-void
.end method

.method public getAllowsGoneWidget()Z
    .registers 2

    #@0
    .line 77
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@2
    return v0
.end method

.method public getBarrierType()I
    .registers 2

    #@0
    .line 52
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@2
    return v0
.end method

.method public getMargin()I
    .registers 2

    #@0
    .line 254
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@2
    return v0
.end method

.method public getOrientation()I
    .registers 4

    #@0
    .line 258
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@2
    if-eqz v0, :cond_10

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_10

    #@7
    const/4 v2, 0x2

    #@8
    if-eq v0, v2, :cond_f

    #@a
    const/4 v2, 0x3

    #@b
    if-eq v0, v2, :cond_f

    #@d
    const/4 v0, -0x1

    #@e
    return v0

    #@f
    :cond_f
    return v1

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    #@0
    .line 80
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    #@2
    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    #@0
    .line 84
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    #@2
    return v0
.end method

.method protected markWidgets()V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 111
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    #@4
    if-ge v1, v2, :cond_2d

    #@6
    .line 112
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8
    aget-object v2, v2, v1

    #@a
    .line 113
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@c
    if-nez v3, :cond_15

    #@e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_15

    #@14
    goto :goto_2a

    #@15
    .line 116
    :cond_15
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@17
    const/4 v4, 0x1

    #@18
    if-eqz v3, :cond_27

    #@1a
    if-ne v3, v4, :cond_1d

    #@1c
    goto :goto_27

    #@1d
    :cond_1d
    const/4 v5, 0x2

    #@1e
    if-eq v3, v5, :cond_23

    #@20
    const/4 v5, 0x3

    #@21
    if-ne v3, v5, :cond_2a

    #@23
    .line 119
    :cond_23
    invoke-virtual {v2, v4, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    #@26
    goto :goto_2a

    #@27
    .line 117
    :cond_27
    :goto_27
    invoke-virtual {v2, v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    #@2a
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_2

    #@2d
    :cond_2d
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 2

    #@0
    .line 58
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    #@2
    return-void
.end method

.method public setBarrierType(I)V
    .registers 2

    #@0
    .line 55
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    #@2
    return-void
.end method

.method public setMargin(I)V
    .registers 2

    #@0
    .line 250
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "[Barrier] "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Barrier;->getDebugName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, " {"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    const/4 v1, 0x0

    #@1a
    .line 99
    :goto_1a
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    #@1c
    if-ge v1, v2, :cond_4f

    #@1e
    .line 100
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@20
    aget-object v2, v2, v1

    #@22
    if-lez v1, :cond_37

    #@24
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string v3, ", "

    #@2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 104
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_1a

    #@4f
    .line 106
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    const-string v1, "}"

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    return-object v0
.end method
