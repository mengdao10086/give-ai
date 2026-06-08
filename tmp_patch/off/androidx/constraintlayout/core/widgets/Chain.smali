.class public Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final USE_CHAIN_OPTIMIZATION:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V
    .registers 43

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v9, p1

    #@4
    move/from16 v10, p2

    #@6
    move-object/from16 v1, p4

    #@8
    .line 83
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a
    .line 84
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c
    .line 85
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e
    .line 86
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@10
    .line 87
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12
    .line 93
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    #@14
    .line 94
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    .line 95
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@18
    .line 97
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1a
    aget-object v4, v4, v10

    #@1c
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1e
    const/4 v6, 0x1

    #@1f
    if-ne v4, v5, :cond_23

    #@21
    move v4, v6

    #@22
    goto :goto_24

    #@23
    :cond_23
    const/4 v4, 0x0

    #@24
    :goto_24
    const/4 v5, 0x2

    #@25
    if-nez v10, :cond_3a

    #@27
    .line 103
    iget v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@29
    if-nez v8, :cond_2d

    #@2b
    move v8, v6

    #@2c
    goto :goto_2e

    #@2d
    :cond_2d
    const/4 v8, 0x0

    #@2e
    .line 104
    :goto_2e
    iget v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@30
    if-ne v15, v6, :cond_34

    #@32
    move v15, v6

    #@33
    goto :goto_35

    #@34
    :cond_34
    const/4 v15, 0x0

    #@35
    .line 105
    :goto_35
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@37
    if-ne v7, v5, :cond_4e

    #@39
    goto :goto_4c

    #@3a
    .line 107
    :cond_3a
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@3c
    if-nez v7, :cond_40

    #@3e
    move v8, v6

    #@3f
    goto :goto_41

    #@40
    :cond_40
    const/4 v8, 0x0

    #@41
    .line 108
    :goto_41
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@43
    if-ne v7, v6, :cond_47

    #@45
    move v15, v6

    #@46
    goto :goto_48

    #@47
    :cond_47
    const/4 v15, 0x0

    #@48
    .line 109
    :goto_48
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@4a
    if-ne v7, v5, :cond_4e

    #@4c
    :goto_4c
    move v5, v6

    #@4d
    goto :goto_4f

    #@4e
    :cond_4e
    const/4 v5, 0x0

    #@4f
    :goto_4f
    move/from16 v17, v15

    #@51
    const/4 v7, 0x0

    #@52
    move v15, v8

    #@53
    move-object v8, v11

    #@54
    :goto_54
    const/16 v22, 0x0

    #@56
    if-nez v7, :cond_14a

    #@58
    .line 126
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5a
    aget-object v6, v6, p3

    #@5c
    if-eqz v5, :cond_61

    #@5e
    const/16 v20, 0x1

    #@60
    goto :goto_63

    #@61
    :cond_61
    const/16 v20, 0x4

    #@63
    .line 132
    :goto_63
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@66
    move-result v24

    #@67
    move/from16 v25, v3

    #@69
    .line 133
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@6b
    aget-object v3, v3, v10

    #@6d
    move/from16 v26, v7

    #@6f
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@71
    if-ne v3, v7, :cond_7b

    #@73
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@75
    aget v3, v3, v10

    #@77
    if-nez v3, :cond_7b

    #@79
    const/4 v3, 0x1

    #@7a
    goto :goto_7c

    #@7b
    :cond_7b
    const/4 v3, 0x0

    #@7c
    .line 136
    :goto_7c
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7e
    if-eqz v7, :cond_8a

    #@80
    if-eq v8, v11, :cond_8a

    #@82
    .line 137
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@84
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@87
    move-result v7

    #@88
    add-int v24, v24, v7

    #@8a
    :cond_8a
    move/from16 v7, v24

    #@8c
    if-eqz v5, :cond_97

    #@8e
    if-eq v8, v11, :cond_97

    #@90
    if-eq v8, v13, :cond_97

    #@92
    move/from16 v24, v15

    #@94
    const/16 v20, 0x8

    #@96
    goto :goto_99

    #@97
    :cond_97
    move/from16 v24, v15

    #@99
    .line 144
    :goto_99
    iget-object v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9b
    if-eqz v15, :cond_db

    #@9d
    if-ne v8, v13, :cond_ae

    #@9f
    .line 146
    iget-object v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@a1
    move-object/from16 v27, v2

    #@a3
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a5
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@a7
    move-object/from16 v28, v11

    #@a9
    const/4 v11, 0x6

    #@aa
    invoke-virtual {v9, v15, v2, v7, v11}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@ad
    goto :goto_bd

    #@ae
    :cond_ae
    move-object/from16 v27, v2

    #@b0
    move-object/from16 v28, v11

    #@b2
    .line 149
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@b4
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b6
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@b8
    const/16 v15, 0x8

    #@ba
    invoke-virtual {v9, v2, v11, v7, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@bd
    :goto_bd
    if-eqz v3, :cond_c3

    #@bf
    if-nez v5, :cond_c3

    #@c1
    const/16 v20, 0x5

    #@c3
    :cond_c3
    if-ne v8, v13, :cond_cf

    #@c5
    if-eqz v5, :cond_cf

    #@c7
    .line 155
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInBarrier(I)Z

    #@ca
    move-result v2

    #@cb
    if-eqz v2, :cond_cf

    #@cd
    const/4 v2, 0x5

    #@ce
    goto :goto_d1

    #@cf
    :cond_cf
    move/from16 v2, v20

    #@d1
    .line 158
    :goto_d1
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@d3
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d5
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@d7
    invoke-virtual {v9, v3, v6, v7, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@da
    goto :goto_df

    #@db
    :cond_db
    move-object/from16 v27, v2

    #@dd
    move-object/from16 v28, v11

    #@df
    :goto_df
    if-eqz v4, :cond_117

    #@e1
    .line 163
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@e4
    move-result v2

    #@e5
    const/16 v3, 0x8

    #@e7
    if-eq v2, v3, :cond_105

    #@e9
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@eb
    aget-object v2, v2, v10

    #@ed
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ef
    if-ne v2, v3, :cond_105

    #@f1
    .line 165
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f3
    add-int/lit8 v3, p3, 0x1

    #@f5
    aget-object v2, v2, v3

    #@f7
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@f9
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@fb
    aget-object v3, v3, p3

    #@fd
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@ff
    const/4 v6, 0x5

    #@100
    const/4 v7, 0x0

    #@101
    invoke-virtual {v9, v2, v3, v7, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@104
    goto :goto_106

    #@105
    :cond_105
    const/4 v7, 0x0

    #@106
    .line 169
    :goto_106
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@108
    aget-object v2, v2, p3

    #@10a
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@10c
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10e
    aget-object v3, v3, p3

    #@110
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@112
    const/16 v6, 0x8

    #@114
    invoke-virtual {v9, v2, v3, v7, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@117
    .line 175
    :cond_117
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@119
    add-int/lit8 v3, p3, 0x1

    #@11b
    aget-object v2, v2, v3

    #@11d
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11f
    if-eqz v2, :cond_138

    #@121
    .line 177
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@123
    .line 178
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@125
    aget-object v3, v3, p3

    #@127
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@129
    if-eqz v3, :cond_138

    #@12b
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12d
    aget-object v3, v3, p3

    #@12f
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@131
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@133
    if-eq v3, v8, :cond_136

    #@135
    goto :goto_138

    #@136
    :cond_136
    move-object/from16 v22, v2

    #@138
    :cond_138
    :goto_138
    if-eqz v22, :cond_13f

    #@13a
    move-object/from16 v8, v22

    #@13c
    move/from16 v7, v26

    #@13e
    goto :goto_140

    #@13f
    :cond_13f
    const/4 v7, 0x1

    #@140
    :goto_140
    move/from16 v15, v24

    #@142
    move/from16 v3, v25

    #@144
    move-object/from16 v2, v27

    #@146
    move-object/from16 v11, v28

    #@148
    goto/16 :goto_54

    #@14a
    :cond_14a
    move-object/from16 v27, v2

    #@14c
    move/from16 v25, v3

    #@14e
    move-object/from16 v28, v11

    #@150
    move/from16 v24, v15

    #@152
    if-eqz v14, :cond_1b9

    #@154
    .line 192
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@156
    add-int/lit8 v3, p3, 0x1

    #@158
    aget-object v2, v2, v3

    #@15a
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15c
    if-eqz v2, :cond_1b9

    #@15e
    .line 193
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@160
    aget-object v2, v2, v3

    #@162
    .line 194
    iget-object v6, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@164
    aget-object v6, v6, v10

    #@166
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@168
    if-ne v6, v7, :cond_172

    #@16a
    iget-object v6, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@16c
    aget v6, v6, v10

    #@16e
    if-nez v6, :cond_172

    #@170
    const/4 v6, 0x1

    #@171
    goto :goto_173

    #@172
    :cond_172
    const/4 v6, 0x0

    #@173
    :goto_173
    if-eqz v6, :cond_18d

    #@175
    if-nez v5, :cond_18d

    #@177
    .line 196
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@179
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17b
    if-ne v6, v0, :cond_18d

    #@17d
    .line 197
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@17f
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@181
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@183
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@186
    move-result v8

    #@187
    neg-int v8, v8

    #@188
    const/4 v11, 0x5

    #@189
    invoke-virtual {v9, v6, v7, v8, v11}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@18c
    goto :goto_1a5

    #@18d
    :cond_18d
    const/4 v11, 0x5

    #@18e
    if-eqz v5, :cond_1a5

    #@190
    .line 199
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@192
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@194
    if-ne v6, v0, :cond_1a5

    #@196
    .line 200
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@198
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19a
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@19c
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@19f
    move-result v8

    #@1a0
    neg-int v8, v8

    #@1a1
    const/4 v15, 0x4

    #@1a2
    invoke-virtual {v9, v6, v7, v8, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@1a5
    .line 203
    :cond_1a5
    :goto_1a5
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1a7
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a9
    aget-object v3, v7, v3

    #@1ab
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ad
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1af
    .line 204
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@1b2
    move-result v2

    #@1b3
    neg-int v2, v2

    #@1b4
    const/4 v7, 0x6

    #@1b5
    .line 203
    invoke-virtual {v9, v6, v3, v2, v7}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@1b8
    goto :goto_1ba

    #@1b9
    :cond_1b9
    const/4 v11, 0x5

    #@1ba
    :goto_1ba
    if-eqz v4, :cond_1d7

    #@1bc
    .line 210
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1be
    add-int/lit8 v2, p3, 0x1

    #@1c0
    aget-object v0, v0, v2

    #@1c2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1c4
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c6
    aget-object v3, v3, v2

    #@1c8
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@1ca
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1cc
    aget-object v2, v4, v2

    #@1ce
    .line 212
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@1d1
    move-result v2

    #@1d2
    const/16 v4, 0x8

    #@1d4
    .line 210
    invoke-virtual {v9, v0, v3, v2, v4}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@1d7
    .line 216
    :cond_1d7
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    #@1d9
    if-eqz v0, :cond_28e

    #@1db
    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1de
    move-result v2

    #@1df
    const/4 v3, 0x1

    #@1e0
    if-le v2, v3, :cond_28e

    #@1e2
    .line 223
    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    #@1e4
    if-eqz v4, :cond_1ee

    #@1e6
    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    #@1e8
    if-nez v4, :cond_1ee

    #@1ea
    .line 224
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    #@1ec
    int-to-float v4, v4

    #@1ed
    goto :goto_1f0

    #@1ee
    :cond_1ee
    move/from16 v4, v25

    #@1f0
    :goto_1f0
    const/4 v6, 0x0

    #@1f1
    move/from16 v30, v6

    #@1f3
    move-object/from16 v8, v22

    #@1f5
    const/4 v7, 0x0

    #@1f6
    :goto_1f6
    if-ge v7, v2, :cond_28e

    #@1f8
    .line 228
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1fb
    move-result-object v15

    #@1fc
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1fe
    .line 229
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@200
    aget v3, v3, v10

    #@202
    cmpg-float v19, v3, v6

    #@204
    if-gez v19, :cond_224

    #@206
    .line 232
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    #@208
    if-eqz v3, :cond_21f

    #@20a
    .line 233
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20c
    add-int/lit8 v19, p3, 0x1

    #@20e
    aget-object v3, v3, v19

    #@210
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@212
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@214
    aget-object v15, v15, p3

    #@216
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@218
    const/4 v6, 0x0

    #@219
    const/4 v11, 0x4

    #@21a
    invoke-virtual {v9, v3, v15, v6, v11}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@21d
    move v11, v6

    #@21e
    goto :goto_23d

    #@21f
    :cond_21f
    const/4 v11, 0x4

    #@220
    const/high16 v3, 0x3f800000    # 1.0f

    #@222
    const/4 v6, 0x0

    #@223
    goto :goto_225

    #@224
    :cond_224
    const/4 v11, 0x4

    #@225
    :goto_225
    cmpl-float v19, v3, v6

    #@227
    if-nez v19, :cond_242

    #@229
    .line 240
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22b
    add-int/lit8 v19, p3, 0x1

    #@22d
    aget-object v3, v3, v19

    #@22f
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@231
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@233
    aget-object v15, v15, p3

    #@235
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@237
    const/16 v6, 0x8

    #@239
    const/4 v11, 0x0

    #@23a
    invoke-virtual {v9, v3, v15, v11, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@23d
    :goto_23d
    move-object/from16 v25, v0

    #@23f
    move/from16 v16, v2

    #@241
    goto :goto_283

    #@242
    :cond_242
    const/4 v11, 0x0

    #@243
    if-eqz v8, :cond_27c

    #@245
    .line 246
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@247
    aget-object v6, v6, p3

    #@249
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@24b
    .line 247
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@24d
    add-int/lit8 v16, p3, 0x1

    #@24f
    aget-object v8, v8, v16

    #@251
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@253
    .line 248
    iget-object v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@255
    aget-object v11, v11, p3

    #@257
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@259
    move-object/from16 v25, v0

    #@25b
    .line 249
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@25d
    aget-object v0, v0, v16

    #@25f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@261
    move/from16 v16, v2

    #@263
    .line 250
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@266
    move-result-object v2

    #@267
    move-object/from16 v29, v2

    #@269
    move/from16 v31, v4

    #@26b
    move/from16 v32, v3

    #@26d
    move-object/from16 v33, v6

    #@26f
    move-object/from16 v34, v8

    #@271
    move-object/from16 v35, v11

    #@273
    move-object/from16 v36, v0

    #@275
    .line 251
    invoke-virtual/range {v29 .. v36}, Landroidx/constraintlayout/core/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;

    #@278
    .line 253
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@27b
    goto :goto_280

    #@27c
    :cond_27c
    move-object/from16 v25, v0

    #@27e
    move/from16 v16, v2

    #@280
    :goto_280
    move/from16 v30, v3

    #@282
    move-object v8, v15

    #@283
    :goto_283
    add-int/lit8 v7, v7, 0x1

    #@285
    move/from16 v2, v16

    #@287
    move-object/from16 v0, v25

    #@289
    const/4 v3, 0x1

    #@28a
    const/4 v6, 0x0

    #@28b
    const/4 v11, 0x5

    #@28c
    goto/16 :goto_1f6

    #@28e
    :cond_28e
    if-eqz v13, :cond_2eb

    #@290
    if-eq v13, v14, :cond_294

    #@292
    if-eqz v5, :cond_2eb

    #@294
    :cond_294
    move-object/from16 v11, v28

    #@296
    .line 275
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@298
    aget-object v0, v0, p3

    #@29a
    .line 276
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@29c
    add-int/lit8 v2, p3, 0x1

    #@29e
    aget-object v1, v1, v2

    #@2a0
    .line 277
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2a2
    if-eqz v3, :cond_2aa

    #@2a4
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2a6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@2a8
    move-object v3, v0

    #@2a9
    goto :goto_2ac

    #@2aa
    :cond_2aa
    move-object/from16 v3, v22

    #@2ac
    .line 278
    :goto_2ac
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2ae
    if-eqz v0, :cond_2b6

    #@2b0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2b2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@2b4
    move-object v5, v0

    #@2b5
    goto :goto_2b8

    #@2b6
    :cond_2b6
    move-object/from16 v5, v22

    #@2b8
    .line 279
    :goto_2b8
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2ba
    aget-object v0, v0, p3

    #@2bc
    if-eqz v14, :cond_2c2

    #@2be
    .line 281
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2c0
    aget-object v1, v1, v2

    #@2c2
    :cond_2c2
    if-eqz v3, :cond_51f

    #@2c4
    if-eqz v5, :cond_51f

    #@2c6
    if-nez v10, :cond_2cd

    #@2c8
    move-object/from16 v2, v27

    #@2ca
    .line 286
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@2cc
    goto :goto_2d1

    #@2cd
    :cond_2cd
    move-object/from16 v2, v27

    #@2cf
    .line 288
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@2d1
    :goto_2d1
    move v4, v2

    #@2d2
    .line 290
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@2d5
    move-result v6

    #@2d6
    .line 291
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@2d9
    move-result v7

    #@2da
    .line 292
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@2dc
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@2de
    const/4 v10, 0x7

    #@2df
    move-object/from16 v0, p1

    #@2e1
    move-object v1, v2

    #@2e2
    move-object v2, v3

    #@2e3
    move v3, v6

    #@2e4
    move-object v6, v8

    #@2e5
    move v8, v10

    #@2e6
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@2e9
    goto/16 :goto_51f

    #@2eb
    :cond_2eb
    move-object/from16 v11, v28

    #@2ed
    if-eqz v24, :cond_3e4

    #@2ef
    if-eqz v13, :cond_3e4

    #@2f1
    .line 299
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    #@2f3
    if-lez v0, :cond_2fe

    #@2f5
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    #@2f7
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    #@2f9
    if-ne v0, v1, :cond_2fe

    #@2fb
    const/16 v18, 0x1

    #@2fd
    goto :goto_300

    #@2fe
    :cond_2fe
    const/16 v18, 0x0

    #@300
    :goto_300
    move-object v8, v13

    #@301
    move-object v15, v8

    #@302
    :goto_302
    if-eqz v15, :cond_51f

    #@304
    .line 301
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@306
    aget-object v0, v0, v10

    #@308
    move-object v7, v0

    #@309
    :goto_309
    if-eqz v7, :cond_318

    #@30b
    .line 302
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@30e
    move-result v0

    #@30f
    const/16 v6, 0x8

    #@311
    if-ne v0, v6, :cond_31a

    #@313
    .line 303
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@315
    aget-object v7, v0, v10

    #@317
    goto :goto_309

    #@318
    :cond_318
    const/16 v6, 0x8

    #@31a
    :cond_31a
    if-nez v7, :cond_325

    #@31c
    if-ne v15, v14, :cond_31f

    #@31e
    goto :goto_325

    #@31f
    :cond_31f
    move-object/from16 v20, v7

    #@321
    :goto_321
    move-object/from16 v16, v8

    #@323
    goto/16 :goto_3d4

    #@325
    .line 306
    :cond_325
    :goto_325
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@327
    aget-object v0, v0, p3

    #@329
    .line 307
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@32b
    .line 308
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@32d
    if-eqz v2, :cond_334

    #@32f
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@331
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@333
    goto :goto_336

    #@334
    :cond_334
    move-object/from16 v2, v22

    #@336
    :goto_336
    if-eq v8, v15, :cond_341

    #@338
    .line 310
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@33a
    add-int/lit8 v3, p3, 0x1

    #@33c
    aget-object v2, v2, v3

    #@33e
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@340
    goto :goto_356

    #@341
    :cond_341
    if-ne v15, v13, :cond_356

    #@343
    .line 312
    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@345
    aget-object v2, v2, p3

    #@347
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@349
    if-eqz v2, :cond_354

    #@34b
    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@34d
    aget-object v2, v2, p3

    #@34f
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@351
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@353
    goto :goto_356

    #@354
    :cond_354
    move-object/from16 v2, v22

    #@356
    .line 318
    :cond_356
    :goto_356
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@359
    move-result v0

    #@35a
    .line 319
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@35c
    add-int/lit8 v4, p3, 0x1

    #@35e
    aget-object v3, v3, v4

    #@360
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@363
    move-result v3

    #@364
    if-eqz v7, :cond_36f

    #@366
    .line 322
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@368
    aget-object v5, v5, p3

    #@36a
    .line 323
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@36c
    :goto_36c
    move-object/from16 p0, v7

    #@36e
    goto :goto_37e

    #@36f
    .line 325
    :cond_36f
    iget-object v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@371
    aget-object v5, v5, v4

    #@373
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@375
    if-eqz v5, :cond_37a

    #@377
    .line 327
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@379
    goto :goto_36c

    #@37a
    :cond_37a
    move-object/from16 p0, v7

    #@37c
    move-object/from16 v6, v22

    #@37e
    .line 330
    :goto_37e
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@380
    aget-object v7, v7, v4

    #@382
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@384
    if-eqz v5, :cond_38b

    #@386
    .line 333
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@389
    move-result v5

    #@38a
    add-int/2addr v3, v5

    #@38b
    .line 335
    :cond_38b
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@38d
    aget-object v5, v5, v4

    #@38f
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@392
    move-result v5

    #@393
    add-int/2addr v0, v5

    #@394
    if-eqz v1, :cond_3d0

    #@396
    if-eqz v2, :cond_3d0

    #@398
    if-eqz v6, :cond_3d0

    #@39a
    if-eqz v7, :cond_3d0

    #@39c
    if-ne v15, v13, :cond_3a6

    #@39e
    .line 339
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3a0
    aget-object v0, v0, p3

    #@3a2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@3a5
    move-result v0

    #@3a6
    :cond_3a6
    move v5, v0

    #@3a7
    if-ne v15, v14, :cond_3b4

    #@3a9
    .line 343
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3ab
    aget-object v0, v0, v4

    #@3ad
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@3b0
    move-result v0

    #@3b1
    move/from16 v16, v0

    #@3b3
    goto :goto_3b6

    #@3b4
    :cond_3b4
    move/from16 v16, v3

    #@3b6
    :goto_3b6
    if-eqz v18, :cond_3bb

    #@3b8
    const/16 v19, 0x8

    #@3ba
    goto :goto_3bd

    #@3bb
    :cond_3bb
    const/16 v19, 0x5

    #@3bd
    :goto_3bd
    const/high16 v4, 0x3f000000    # 0.5f

    #@3bf
    move-object/from16 v0, p1

    #@3c1
    move v3, v5

    #@3c2
    move-object v5, v6

    #@3c3
    move-object v6, v7

    #@3c4
    move-object/from16 v20, p0

    #@3c6
    move/from16 v7, v16

    #@3c8
    move-object/from16 v16, v8

    #@3ca
    move/from16 v8, v19

    #@3cc
    .line 349
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@3cf
    goto :goto_3d4

    #@3d0
    :cond_3d0
    move-object/from16 v20, p0

    #@3d2
    goto/16 :goto_321

    #@3d4
    .line 354
    :goto_3d4
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@3d7
    move-result v0

    #@3d8
    const/16 v8, 0x8

    #@3da
    if-eq v0, v8, :cond_3dd

    #@3dc
    goto :goto_3df

    #@3dd
    :cond_3dd
    move-object/from16 v15, v16

    #@3df
    :goto_3df
    move-object v8, v15

    #@3e0
    move-object/from16 v15, v20

    #@3e2
    goto/16 :goto_302

    #@3e4
    :cond_3e4
    const/16 v8, 0x8

    #@3e6
    if-eqz v17, :cond_51f

    #@3e8
    if-eqz v13, :cond_51f

    #@3ea
    .line 363
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    #@3ec
    if-lez v0, :cond_3f7

    #@3ee
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    #@3f0
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    #@3f2
    if-ne v0, v1, :cond_3f7

    #@3f4
    const/16 v18, 0x1

    #@3f6
    goto :goto_3f9

    #@3f7
    :cond_3f7
    const/16 v18, 0x0

    #@3f9
    :goto_3f9
    move-object v7, v13

    #@3fa
    move-object v15, v7

    #@3fb
    :goto_3fb
    if-eqz v15, :cond_4c1

    #@3fd
    .line 365
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3ff
    aget-object v0, v0, v10

    #@401
    :goto_401
    if-eqz v0, :cond_40e

    #@403
    .line 366
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@406
    move-result v1

    #@407
    if-ne v1, v8, :cond_40e

    #@409
    .line 367
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@40b
    aget-object v0, v0, v10

    #@40d
    goto :goto_401

    #@40e
    :cond_40e
    if-eq v15, v13, :cond_4ac

    #@410
    if-eq v15, v14, :cond_4ac

    #@412
    if-eqz v0, :cond_4ac

    #@414
    if-ne v0, v14, :cond_419

    #@416
    move-object/from16 v6, v22

    #@418
    goto :goto_41a

    #@419
    :cond_419
    move-object v6, v0

    #@41a
    .line 373
    :goto_41a
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@41c
    aget-object v0, v0, p3

    #@41e
    .line 374
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@420
    .line 375
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@422
    if-eqz v2, :cond_428

    #@424
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@426
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@428
    .line 376
    :cond_428
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@42a
    add-int/lit8 v3, p3, 0x1

    #@42c
    aget-object v2, v2, v3

    #@42e
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@430
    .line 380
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@433
    move-result v0

    #@434
    .line 381
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@436
    aget-object v4, v4, v3

    #@438
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@43b
    move-result v4

    #@43c
    if-eqz v6, :cond_457

    #@43e
    .line 384
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@440
    aget-object v5, v5, p3

    #@442
    .line 385
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@444
    move-object/from16 p0, v6

    #@446
    .line 386
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@448
    if-eqz v6, :cond_44f

    #@44a
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@44c
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@44e
    goto :goto_451

    #@44f
    :cond_44f
    move-object/from16 v6, v22

    #@451
    :goto_451
    move-object/from16 v37, v8

    #@453
    move-object v8, v6

    #@454
    move-object/from16 v6, v37

    #@456
    goto :goto_46a

    #@457
    :cond_457
    move-object/from16 p0, v6

    #@459
    .line 388
    iget-object v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@45b
    aget-object v5, v5, p3

    #@45d
    if-eqz v5, :cond_462

    #@45f
    .line 390
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@461
    goto :goto_464

    #@462
    :cond_462
    move-object/from16 v6, v22

    #@464
    .line 392
    :goto_464
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@466
    aget-object v8, v8, v3

    #@468
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@46a
    :goto_46a
    if-eqz v5, :cond_471

    #@46c
    .line 396
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@46f
    move-result v5

    #@470
    add-int/2addr v4, v5

    #@471
    :cond_471
    move/from16 v16, v4

    #@473
    .line 398
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@475
    aget-object v3, v4, v3

    #@477
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@47a
    move-result v3

    #@47b
    add-int/2addr v3, v0

    #@47c
    if-eqz v18, :cond_481

    #@47e
    const/16 v19, 0x8

    #@480
    goto :goto_483

    #@481
    :cond_481
    const/16 v19, 0x4

    #@483
    :goto_483
    if-eqz v1, :cond_4a1

    #@485
    if-eqz v2, :cond_4a1

    #@487
    if-eqz v6, :cond_4a1

    #@489
    if-eqz v8, :cond_4a1

    #@48b
    const/high16 v4, 0x3f000000    # 0.5f

    #@48d
    move-object/from16 v0, p1

    #@48f
    move-object v5, v6

    #@490
    move-object/from16 v20, p0

    #@492
    const/16 v21, 0x4

    #@494
    move-object v6, v8

    #@495
    move-object/from16 v23, v7

    #@497
    move/from16 v7, v16

    #@499
    const/16 v10, 0x8

    #@49b
    move/from16 v8, v19

    #@49d
    .line 404
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@4a0
    goto :goto_4a9

    #@4a1
    :cond_4a1
    move-object/from16 v20, p0

    #@4a3
    move-object/from16 v23, v7

    #@4a5
    const/16 v10, 0x8

    #@4a7
    const/16 v21, 0x4

    #@4a9
    :goto_4a9
    move-object/from16 v0, v20

    #@4ab
    goto :goto_4b1

    #@4ac
    :cond_4ac
    move-object/from16 v23, v7

    #@4ae
    move v10, v8

    #@4af
    const/16 v21, 0x4

    #@4b1
    .line 409
    :goto_4b1
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@4b4
    move-result v1

    #@4b5
    if-eq v1, v10, :cond_4b9

    #@4b7
    move-object v7, v15

    #@4b8
    goto :goto_4bb

    #@4b9
    :cond_4b9
    move-object/from16 v7, v23

    #@4bb
    :goto_4bb
    move-object v15, v0

    #@4bc
    move v8, v10

    #@4bd
    move/from16 v10, p2

    #@4bf
    goto/16 :goto_3fb

    #@4c1
    .line 414
    :cond_4c1
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4c3
    aget-object v0, v0, p3

    #@4c5
    .line 415
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4c7
    aget-object v1, v1, p3

    #@4c9
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4cb
    .line 416
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4cd
    add-int/lit8 v3, p3, 0x1

    #@4cf
    aget-object v10, v2, v3

    #@4d1
    .line 417
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4d3
    aget-object v2, v2, v3

    #@4d5
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4d7
    if-eqz v1, :cond_50e

    #@4d9
    if-eq v13, v14, :cond_4e8

    #@4db
    .line 421
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@4dd
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@4df
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@4e2
    move-result v0

    #@4e3
    const/4 v15, 0x5

    #@4e4
    invoke-virtual {v9, v2, v1, v0, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@4e7
    goto :goto_50f

    #@4e8
    :cond_4e8
    const/4 v15, 0x5

    #@4e9
    if-eqz v11, :cond_50f

    #@4eb
    .line 423
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@4ed
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@4ef
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@4f2
    move-result v4

    #@4f3
    const/high16 v5, 0x3f000000    # 0.5f

    #@4f5
    iget-object v6, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@4f7
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@4f9
    .line 424
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@4fc
    move-result v8

    #@4fd
    const/16 v16, 0x5

    #@4ff
    move-object/from16 v0, p1

    #@501
    move-object v1, v2

    #@502
    move-object v2, v3

    #@503
    move v3, v4

    #@504
    move v4, v5

    #@505
    move-object v5, v6

    #@506
    move-object v6, v7

    #@507
    move v7, v8

    #@508
    move/from16 v8, v16

    #@50a
    .line 423
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@50d
    goto :goto_50f

    #@50e
    :cond_50e
    const/4 v15, 0x5

    #@50f
    :cond_50f
    :goto_50f
    if-eqz v11, :cond_51f

    #@511
    if-eq v13, v14, :cond_51f

    #@513
    .line 428
    iget-object v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@515
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@517
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@51a
    move-result v2

    #@51b
    neg-int v2, v2

    #@51c
    invoke-virtual {v9, v0, v1, v2, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@51f
    :cond_51f
    :goto_51f
    if-nez v24, :cond_523

    #@521
    if-eqz v17, :cond_589

    #@523
    :cond_523
    if-eqz v13, :cond_589

    #@525
    if-eq v13, v14, :cond_589

    #@527
    .line 435
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@529
    aget-object v0, v0, p3

    #@52b
    if-nez v14, :cond_52e

    #@52d
    move-object v14, v13

    #@52e
    .line 439
    :cond_52e
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@530
    add-int/lit8 v2, p3, 0x1

    #@532
    aget-object v1, v1, v2

    #@534
    .line 440
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@536
    if-eqz v3, :cond_53d

    #@538
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@53a
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@53c
    goto :goto_53f

    #@53d
    :cond_53d
    move-object/from16 v3, v22

    #@53f
    .line 441
    :goto_53f
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@541
    if-eqz v4, :cond_548

    #@543
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@545
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@547
    goto :goto_54a

    #@548
    :cond_548
    move-object/from16 v4, v22

    #@54a
    :goto_54a
    if-eq v12, v14, :cond_55d

    #@54c
    .line 443
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@54e
    aget-object v4, v4, v2

    #@550
    .line 444
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@552
    if-eqz v5, :cond_55a

    #@554
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@556
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@558
    move-object/from16 v22, v4

    #@55a
    :cond_55a
    move-object/from16 v5, v22

    #@55c
    goto :goto_55e

    #@55d
    :cond_55d
    move-object v5, v4

    #@55e
    :goto_55e
    if-ne v13, v14, :cond_568

    #@560
    .line 447
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@562
    aget-object v0, v0, p3

    #@564
    .line 448
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@566
    aget-object v1, v1, v2

    #@568
    :cond_568
    if-eqz v3, :cond_589

    #@56a
    if-eqz v5, :cond_589

    #@56c
    const/high16 v4, 0x3f000000    # 0.5f

    #@56e
    .line 452
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@571
    move-result v6

    #@572
    .line 453
    iget-object v7, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@574
    aget-object v2, v7, v2

    #@576
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@579
    move-result v7

    #@57a
    .line 454
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@57c
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@57e
    const/4 v10, 0x5

    #@57f
    move-object/from16 v0, p1

    #@581
    move-object v1, v2

    #@582
    move-object v2, v3

    #@583
    move v3, v6

    #@584
    move-object v6, v8

    #@585
    move v8, v10

    #@586
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@589
    :cond_589
    return-void
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p3, :cond_9

    #@3
    .line 52
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@5
    .line 53
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@7
    move v3, v0

    #@8
    goto :goto_e

    #@9
    .line 56
    :cond_9
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@b
    .line 57
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@d
    const/4 v3, 0x2

    #@e
    :goto_e
    if-ge v0, v1, :cond_27

    #@10
    .line 61
    aget-object v4, v2, v0

    #@12
    .line 64
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ChainHead;->define()V

    #@15
    if-eqz p2, :cond_21

    #@17
    if-eqz p2, :cond_24

    #@19
    .line 65
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_24

    #@21
    .line 66
    :cond_21
    invoke-static {p0, p1, p3, v3, v4}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V

    #@24
    :cond_24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_e

    #@27
    :cond_27
    return-void
.end method
