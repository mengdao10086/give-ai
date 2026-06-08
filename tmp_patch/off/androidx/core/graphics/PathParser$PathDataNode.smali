.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .registers 3

    #@0
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 353
    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@5
    .line 354
    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@7
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 4

    #@0
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 358
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@5
    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@7
    .line 359
    iget-object p1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@9
    const/4 v0, 0x0

    #@a
    array-length v1, p1

    #@b
    invoke-static {p1, v0, v1}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@11
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 30

    #@0
    move-object/from16 v10, p0

    #@2
    move/from16 v11, p3

    #@4
    move-object/from16 v12, p4

    #@6
    const/4 v13, 0x0

    #@7
    .line 399
    aget v0, p1, v13

    #@9
    const/4 v14, 0x1

    #@a
    .line 400
    aget v1, p1, v14

    #@c
    const/4 v15, 0x2

    #@d
    .line 401
    aget v2, p1, v15

    #@f
    const/16 v16, 0x3

    #@11
    .line 402
    aget v3, p1, v16

    #@13
    const/16 v17, 0x4

    #@15
    .line 403
    aget v4, p1, v17

    #@17
    const/16 v18, 0x5

    #@19
    .line 404
    aget v5, p1, v18

    #@1b
    sparse-switch v11, :sswitch_data_30c

    #@1e
    :goto_1e
    :sswitch_1e
    move/from16 v19, v15

    #@20
    goto :goto_37

    #@21
    .line 411
    :sswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    #@24
    .line 419
    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    #@27
    move v0, v4

    #@28
    move v2, v0

    #@29
    move v1, v5

    #@2a
    move v3, v1

    #@2b
    goto :goto_1e

    #@2c
    :sswitch_2c
    move/from16 v19, v17

    #@2e
    goto :goto_37

    #@2f
    :sswitch_2f
    move/from16 v19, v14

    #@31
    goto :goto_37

    #@32
    :sswitch_32
    const/4 v6, 0x6

    #@33
    goto :goto_35

    #@34
    :sswitch_34
    const/4 v6, 0x7

    #@35
    :goto_35
    move/from16 v19, v6

    #@37
    :goto_37
    move v9, v0

    #@38
    move v8, v1

    #@39
    move/from16 v20, v4

    #@3b
    move/from16 v21, v5

    #@3d
    move v7, v13

    #@3e
    move/from16 v0, p2

    #@40
    .line 451
    :goto_40
    array-length v1, v12

    #@41
    if-ge v7, v1, :cond_2fa

    #@43
    const/16 v1, 0x41

    #@45
    if-eq v11, v1, :cond_2b4

    #@47
    const/16 v1, 0x43

    #@49
    if-eq v11, v1, :cond_289

    #@4b
    const/16 v5, 0x48

    #@4d
    if-eq v11, v5, :cond_27b

    #@4f
    const/16 v5, 0x51

    #@51
    if-eq v11, v5, :cond_25a

    #@53
    const/16 v6, 0x56

    #@55
    if-eq v11, v6, :cond_24c

    #@57
    const/16 v6, 0x61

    #@59
    if-eq v11, v6, :cond_1ff

    #@5b
    const/16 v6, 0x63

    #@5d
    if-eq v11, v6, :cond_1d2

    #@5f
    const/16 v15, 0x68

    #@61
    if-eq v11, v15, :cond_1c5

    #@63
    const/16 v15, 0x71

    #@65
    if-eq v11, v15, :cond_1a6

    #@67
    const/16 v14, 0x76

    #@69
    if-eq v11, v14, :cond_19a

    #@6b
    const/16 v14, 0x4c

    #@6d
    if-eq v11, v14, :cond_189

    #@6f
    const/16 v14, 0x4d

    #@71
    if-eq v11, v14, :cond_16f

    #@73
    const/16 v14, 0x73

    #@75
    const/16 v13, 0x53

    #@77
    const/high16 v22, 0x40000000    # 2.0f

    #@79
    if-eq v11, v13, :cond_13c

    #@7b
    const/16 v4, 0x74

    #@7d
    const/16 v13, 0x54

    #@7f
    if-eq v11, v13, :cond_117

    #@81
    const/16 v1, 0x6c

    #@83
    if-eq v11, v1, :cond_104

    #@85
    const/16 v1, 0x6d

    #@87
    if-eq v11, v1, :cond_ef

    #@89
    if-eq v11, v14, :cond_b7

    #@8b
    if-eq v11, v4, :cond_91

    #@8d
    :goto_8d
    move/from16 v24, v7

    #@8f
    goto/16 :goto_2f0

    #@91
    :cond_91
    if-eq v0, v15, :cond_9d

    #@93
    if-eq v0, v4, :cond_9d

    #@95
    if-eq v0, v5, :cond_9d

    #@97
    if-ne v0, v13, :cond_9a

    #@99
    goto :goto_9d

    #@9a
    :cond_9a
    const/4 v0, 0x0

    #@9b
    const/4 v4, 0x0

    #@9c
    goto :goto_a1

    #@9d
    :cond_9d
    :goto_9d
    sub-float v4, v9, v2

    #@9f
    sub-float v0, v8, v3

    #@a1
    :goto_a1
    add-int/lit8 v1, v7, 0x0

    #@a3
    .line 579
    aget v2, v12, v1

    #@a5
    add-int/lit8 v3, v7, 0x1

    #@a7
    aget v5, v12, v3

    #@a9
    invoke-virtual {v10, v4, v0, v2, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    #@ac
    add-float/2addr v4, v9

    #@ad
    add-float/2addr v0, v8

    #@ae
    .line 583
    aget v1, v12, v1

    #@b0
    add-float/2addr v9, v1

    #@b1
    .line 584
    aget v1, v12, v3

    #@b3
    add-float/2addr v8, v1

    #@b4
    move v3, v0

    #@b5
    move v2, v4

    #@b6
    goto :goto_8d

    #@b7
    :cond_b7
    if-eq v0, v6, :cond_c7

    #@b9
    if-eq v0, v14, :cond_c7

    #@bb
    const/16 v1, 0x43

    #@bd
    if-eq v0, v1, :cond_c7

    #@bf
    const/16 v1, 0x53

    #@c1
    if-ne v0, v1, :cond_c4

    #@c3
    goto :goto_c7

    #@c4
    :cond_c4
    const/4 v1, 0x0

    #@c5
    const/4 v2, 0x0

    #@c6
    goto :goto_cd

    #@c7
    :cond_c7
    :goto_c7
    sub-float v0, v9, v2

    #@c9
    sub-float v1, v8, v3

    #@cb
    move v2, v1

    #@cc
    move v1, v0

    #@cd
    :goto_cd
    add-int/lit8 v13, v7, 0x0

    #@cf
    .line 533
    aget v3, v12, v13

    #@d1
    add-int/lit8 v14, v7, 0x1

    #@d3
    aget v4, v12, v14

    #@d5
    add-int/lit8 v15, v7, 0x2

    #@d7
    aget v5, v12, v15

    #@d9
    add-int/lit8 v22, v7, 0x3

    #@db
    aget v6, v12, v22

    #@dd
    move-object/from16 v0, p0

    #@df
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    #@e2
    .line 537
    aget v0, v12, v13

    #@e4
    add-float/2addr v0, v9

    #@e5
    .line 538
    aget v1, v12, v14

    #@e7
    add-float/2addr v1, v8

    #@e8
    .line 539
    aget v2, v12, v15

    #@ea
    add-float/2addr v9, v2

    #@eb
    .line 540
    aget v2, v12, v22

    #@ed
    goto/16 :goto_1fa

    #@ef
    :cond_ef
    add-int/lit8 v0, v7, 0x0

    #@f1
    .line 454
    aget v0, v12, v0

    #@f3
    add-float/2addr v9, v0

    #@f4
    add-int/lit8 v1, v7, 0x1

    #@f6
    .line 455
    aget v1, v12, v1

    #@f8
    add-float/2addr v8, v1

    #@f9
    if-lez v7, :cond_ff

    #@fb
    .line 460
    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    #@fe
    goto :goto_8d

    #@ff
    .line 462
    :cond_ff
    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    #@102
    goto/16 :goto_181

    #@104
    :cond_104
    add-int/lit8 v0, v7, 0x0

    #@106
    .line 482
    aget v1, v12, v0

    #@108
    add-int/lit8 v4, v7, 0x1

    #@10a
    aget v5, v12, v4

    #@10c
    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    #@10f
    .line 483
    aget v0, v12, v0

    #@111
    add-float/2addr v9, v0

    #@112
    .line 484
    aget v0, v12, v4

    #@114
    :goto_114
    add-float/2addr v8, v0

    #@115
    goto/16 :goto_8d

    #@117
    :cond_117
    if-eq v0, v15, :cond_11f

    #@119
    if-eq v0, v4, :cond_11f

    #@11b
    if-eq v0, v5, :cond_11f

    #@11d
    if-ne v0, v13, :cond_125

    #@11f
    :cond_11f
    mul-float v9, v9, v22

    #@121
    sub-float/2addr v9, v2

    #@122
    mul-float v8, v8, v22

    #@124
    sub-float/2addr v8, v3

    #@125
    :cond_125
    add-int/lit8 v0, v7, 0x0

    #@127
    .line 594
    aget v1, v12, v0

    #@129
    add-int/lit8 v2, v7, 0x1

    #@12b
    aget v3, v12, v2

    #@12d
    invoke-virtual {v10, v9, v8, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@130
    .line 598
    aget v0, v12, v0

    #@132
    .line 599
    aget v1, v12, v2

    #@134
    move/from16 v24, v7

    #@136
    move v3, v8

    #@137
    move v2, v9

    #@138
    move v9, v0

    #@139
    move v8, v1

    #@13a
    goto/16 :goto_2f0

    #@13c
    :cond_13c
    if-eq v0, v6, :cond_148

    #@13e
    if-eq v0, v14, :cond_148

    #@140
    const/16 v1, 0x43

    #@142
    if-eq v0, v1, :cond_148

    #@144
    const/16 v1, 0x53

    #@146
    if-ne v0, v1, :cond_14e

    #@148
    :cond_148
    mul-float v9, v9, v22

    #@14a
    sub-float/2addr v9, v2

    #@14b
    mul-float v8, v8, v22

    #@14d
    sub-float/2addr v8, v3

    #@14e
    :cond_14e
    move v2, v8

    #@14f
    move v1, v9

    #@150
    add-int/lit8 v8, v7, 0x0

    #@152
    .line 550
    aget v3, v12, v8

    #@154
    add-int/lit8 v9, v7, 0x1

    #@156
    aget v4, v12, v9

    #@158
    add-int/lit8 v13, v7, 0x2

    #@15a
    aget v5, v12, v13

    #@15c
    add-int/lit8 v14, v7, 0x3

    #@15e
    aget v6, v12, v14

    #@160
    move-object/from16 v0, p0

    #@162
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@165
    .line 552
    aget v0, v12, v8

    #@167
    .line 553
    aget v1, v12, v9

    #@169
    .line 554
    aget v9, v12, v13

    #@16b
    .line 555
    aget v8, v12, v14

    #@16d
    goto/16 :goto_1fb

    #@16f
    :cond_16f
    add-int/lit8 v0, v7, 0x0

    #@171
    .line 468
    aget v9, v12, v0

    #@173
    add-int/lit8 v0, v7, 0x1

    #@175
    .line 469
    aget v8, v12, v0

    #@177
    if-lez v7, :cond_17e

    #@179
    .line 474
    invoke-virtual {v10, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    #@17c
    goto/16 :goto_8d

    #@17e
    .line 476
    :cond_17e
    invoke-virtual {v10, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    #@181
    :goto_181
    move/from16 v24, v7

    #@183
    move/from16 v21, v8

    #@185
    move/from16 v20, v9

    #@187
    goto/16 :goto_2f0

    #@189
    :cond_189
    add-int/lit8 v0, v7, 0x0

    #@18b
    .line 487
    aget v1, v12, v0

    #@18d
    add-int/lit8 v4, v7, 0x1

    #@18f
    aget v5, v12, v4

    #@191
    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    #@194
    .line 488
    aget v9, v12, v0

    #@196
    .line 489
    aget v8, v12, v4

    #@198
    goto/16 :goto_8d

    #@19a
    :cond_19a
    add-int/lit8 v0, v7, 0x0

    #@19c
    .line 500
    aget v1, v12, v0

    #@19e
    const/4 v4, 0x0

    #@19f
    invoke-virtual {v10, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    #@1a2
    .line 501
    aget v0, v12, v0

    #@1a4
    goto/16 :goto_114

    #@1a6
    :cond_1a6
    add-int/lit8 v0, v7, 0x0

    #@1a8
    .line 558
    aget v1, v12, v0

    #@1aa
    add-int/lit8 v2, v7, 0x1

    #@1ac
    aget v3, v12, v2

    #@1ae
    add-int/lit8 v4, v7, 0x2

    #@1b0
    aget v5, v12, v4

    #@1b2
    add-int/lit8 v6, v7, 0x3

    #@1b4
    aget v13, v12, v6

    #@1b6
    invoke-virtual {v10, v1, v3, v5, v13}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    #@1b9
    .line 559
    aget v0, v12, v0

    #@1bb
    add-float/2addr v0, v9

    #@1bc
    .line 560
    aget v1, v12, v2

    #@1be
    add-float/2addr v1, v8

    #@1bf
    .line 561
    aget v2, v12, v4

    #@1c1
    add-float/2addr v9, v2

    #@1c2
    .line 562
    aget v2, v12, v6

    #@1c4
    goto :goto_1fa

    #@1c5
    :cond_1c5
    add-int/lit8 v0, v7, 0x0

    #@1c7
    .line 492
    aget v1, v12, v0

    #@1c9
    const/4 v4, 0x0

    #@1ca
    invoke-virtual {v10, v1, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    #@1cd
    .line 493
    aget v0, v12, v0

    #@1cf
    add-float/2addr v9, v0

    #@1d0
    goto/16 :goto_8d

    #@1d2
    :cond_1d2
    add-int/lit8 v0, v7, 0x0

    #@1d4
    .line 508
    aget v1, v12, v0

    #@1d6
    add-int/lit8 v0, v7, 0x1

    #@1d8
    aget v2, v12, v0

    #@1da
    add-int/lit8 v13, v7, 0x2

    #@1dc
    aget v3, v12, v13

    #@1de
    add-int/lit8 v14, v7, 0x3

    #@1e0
    aget v4, v12, v14

    #@1e2
    add-int/lit8 v15, v7, 0x4

    #@1e4
    aget v5, v12, v15

    #@1e6
    add-int/lit8 v22, v7, 0x5

    #@1e8
    aget v6, v12, v22

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    #@1ef
    .line 511
    aget v0, v12, v13

    #@1f1
    add-float/2addr v0, v9

    #@1f2
    .line 512
    aget v1, v12, v14

    #@1f4
    add-float/2addr v1, v8

    #@1f5
    .line 513
    aget v2, v12, v15

    #@1f7
    add-float/2addr v9, v2

    #@1f8
    .line 514
    aget v2, v12, v22

    #@1fa
    :goto_1fa
    add-float/2addr v8, v2

    #@1fb
    :goto_1fb
    move v2, v0

    #@1fc
    move v3, v1

    #@1fd
    goto/16 :goto_8d

    #@1ff
    :cond_1ff
    add-int/lit8 v13, v7, 0x5

    #@201
    .line 603
    aget v0, v12, v13

    #@203
    add-float v3, v0, v9

    #@205
    add-int/lit8 v14, v7, 0x6

    #@207
    aget v0, v12, v14

    #@209
    add-float v4, v0, v8

    #@20b
    add-int/lit8 v0, v7, 0x0

    #@20d
    aget v5, v12, v0

    #@20f
    add-int/lit8 v0, v7, 0x1

    #@211
    aget v6, v12, v0

    #@213
    add-int/lit8 v0, v7, 0x2

    #@215
    aget v15, v12, v0

    #@217
    add-int/lit8 v0, v7, 0x3

    #@219
    aget v0, v12, v0

    #@21b
    const/4 v1, 0x0

    #@21c
    cmpl-float v0, v0, v1

    #@21e
    if-eqz v0, :cond_223

    #@220
    const/16 v22, 0x1

    #@222
    goto :goto_225

    #@223
    :cond_223
    const/16 v22, 0x0

    #@225
    :goto_225
    add-int/lit8 v0, v7, 0x4

    #@227
    aget v0, v12, v0

    #@229
    cmpl-float v0, v0, v1

    #@22b
    if-eqz v0, :cond_230

    #@22d
    const/16 v23, 0x1

    #@22f
    goto :goto_232

    #@230
    :cond_230
    const/16 v23, 0x0

    #@232
    :goto_232
    move-object/from16 v0, p0

    #@234
    move v1, v9

    #@235
    move v2, v8

    #@236
    move/from16 v24, v7

    #@238
    move v7, v15

    #@239
    move v15, v8

    #@23a
    move/from16 v8, v22

    #@23c
    move v11, v9

    #@23d
    move/from16 v9, v23

    #@23f
    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    #@242
    .line 613
    aget v0, v12, v13

    #@244
    add-float v9, v11, v0

    #@246
    .line 614
    aget v0, v12, v14

    #@248
    add-float v8, v15, v0

    #@24a
    goto/16 :goto_2ee

    #@24c
    :cond_24c
    move/from16 v24, v7

    #@24e
    move v11, v9

    #@24f
    add-int/lit8 v7, v24, 0x0

    #@251
    .line 504
    aget v0, v12, v7

    #@253
    invoke-virtual {v10, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    #@256
    .line 505
    aget v8, v12, v7

    #@258
    goto/16 :goto_2f0

    #@25a
    :cond_25a
    move/from16 v24, v7

    #@25c
    add-int/lit8 v7, v24, 0x0

    #@25e
    .line 565
    aget v0, v12, v7

    #@260
    add-int/lit8 v1, v24, 0x1

    #@262
    aget v2, v12, v1

    #@264
    add-int/lit8 v3, v24, 0x2

    #@266
    aget v4, v12, v3

    #@268
    add-int/lit8 v5, v24, 0x3

    #@26a
    aget v6, v12, v5

    #@26c
    invoke-virtual {v10, v0, v2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@26f
    .line 566
    aget v0, v12, v7

    #@271
    .line 567
    aget v1, v12, v1

    #@273
    .line 568
    aget v9, v12, v3

    #@275
    .line 569
    aget v8, v12, v5

    #@277
    move v2, v0

    #@278
    move v3, v1

    #@279
    goto/16 :goto_2f0

    #@27b
    :cond_27b
    move/from16 v24, v7

    #@27d
    move v15, v8

    #@27e
    add-int/lit8 v7, v24, 0x0

    #@280
    .line 496
    aget v0, v12, v7

    #@282
    invoke-virtual {v10, v0, v15}, Landroid/graphics/Path;->lineTo(FF)V

    #@285
    .line 497
    aget v9, v12, v7

    #@287
    goto/16 :goto_2f0

    #@289
    :cond_289
    move/from16 v24, v7

    #@28b
    add-int/lit8 v7, v24, 0x0

    #@28d
    .line 518
    aget v1, v12, v7

    #@28f
    add-int/lit8 v7, v24, 0x1

    #@291
    aget v2, v12, v7

    #@293
    add-int/lit8 v7, v24, 0x2

    #@295
    aget v3, v12, v7

    #@297
    add-int/lit8 v8, v24, 0x3

    #@299
    aget v4, v12, v8

    #@29b
    add-int/lit8 v9, v24, 0x4

    #@29d
    aget v5, v12, v9

    #@29f
    add-int/lit8 v11, v24, 0x5

    #@2a1
    aget v6, v12, v11

    #@2a3
    move-object/from16 v0, p0

    #@2a5
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@2a8
    .line 520
    aget v9, v12, v9

    #@2aa
    .line 521
    aget v0, v12, v11

    #@2ac
    .line 522
    aget v1, v12, v7

    #@2ae
    .line 523
    aget v2, v12, v8

    #@2b0
    move v8, v0

    #@2b1
    move v3, v2

    #@2b2
    move v2, v1

    #@2b3
    goto :goto_2f0

    #@2b4
    :cond_2b4
    move/from16 v24, v7

    #@2b6
    move v15, v8

    #@2b7
    move v11, v9

    #@2b8
    add-int/lit8 v13, v24, 0x5

    #@2ba
    .line 619
    aget v3, v12, v13

    #@2bc
    add-int/lit8 v14, v24, 0x6

    #@2be
    aget v4, v12, v14

    #@2c0
    add-int/lit8 v7, v24, 0x0

    #@2c2
    aget v5, v12, v7

    #@2c4
    add-int/lit8 v7, v24, 0x1

    #@2c6
    aget v6, v12, v7

    #@2c8
    add-int/lit8 v7, v24, 0x2

    #@2ca
    aget v7, v12, v7

    #@2cc
    add-int/lit8 v0, v24, 0x3

    #@2ce
    aget v0, v12, v0

    #@2d0
    const/4 v1, 0x0

    #@2d1
    cmpl-float v0, v0, v1

    #@2d3
    if-eqz v0, :cond_2d7

    #@2d5
    const/4 v8, 0x1

    #@2d6
    goto :goto_2d8

    #@2d7
    :cond_2d7
    const/4 v8, 0x0

    #@2d8
    :goto_2d8
    add-int/lit8 v0, v24, 0x4

    #@2da
    aget v0, v12, v0

    #@2dc
    cmpl-float v0, v0, v1

    #@2de
    if-eqz v0, :cond_2e2

    #@2e0
    const/4 v9, 0x1

    #@2e1
    goto :goto_2e3

    #@2e2
    :cond_2e2
    const/4 v9, 0x0

    #@2e3
    :goto_2e3
    move-object/from16 v0, p0

    #@2e5
    move v1, v11

    #@2e6
    move v2, v15

    #@2e7
    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    #@2ea
    .line 629
    aget v9, v12, v13

    #@2ec
    .line 630
    aget v8, v12, v14

    #@2ee
    :goto_2ee
    move v3, v8

    #@2ef
    move v2, v9

    #@2f0
    :goto_2f0
    add-int v7, v24, v19

    #@2f2
    move/from16 v0, p3

    #@2f4
    move v11, v0

    #@2f5
    const/4 v13, 0x0

    #@2f6
    const/4 v14, 0x1

    #@2f7
    const/4 v15, 0x2

    #@2f8
    goto/16 :goto_40

    #@2fa
    :cond_2fa
    move v15, v8

    #@2fb
    move v11, v9

    #@2fc
    move v0, v13

    #@2fd
    .line 637
    aput v11, p1, v0

    #@2ff
    const/4 v0, 0x1

    #@300
    .line 638
    aput v15, p1, v0

    #@302
    const/4 v0, 0x2

    #@303
    .line 639
    aput v2, p1, v0

    #@305
    .line 640
    aput v3, p1, v16

    #@307
    .line 641
    aput v20, p1, v17

    #@309
    .line 642
    aput v21, p1, v18

    #@30b
    return-void

    #@30c
    :sswitch_data_30c
    .sparse-switch
        0x41 -> :sswitch_34
        0x43 -> :sswitch_32
        0x48 -> :sswitch_2f
        0x4c -> :sswitch_1e
        0x4d -> :sswitch_1e
        0x51 -> :sswitch_2c
        0x53 -> :sswitch_2c
        0x54 -> :sswitch_1e
        0x56 -> :sswitch_2f
        0x5a -> :sswitch_21
        0x61 -> :sswitch_34
        0x63 -> :sswitch_32
        0x68 -> :sswitch_2f
        0x6c -> :sswitch_1e
        0x6d -> :sswitch_1e
        0x71 -> :sswitch_2c
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_1e
        0x76 -> :sswitch_2f
        0x7a -> :sswitch_21
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 68

    #@0
    move-wide/from16 v0, p5

    #@2
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    #@4
    mul-double v4, p17, v2

    #@6
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    #@b
    div-double/2addr v4, v6

    #@c
    .line 750
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    #@f
    move-result-wide v4

    #@10
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@13
    move-result-wide v4

    #@14
    double-to-int v4, v4

    #@15
    .line 753
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    #@18
    move-result-wide v5

    #@19
    .line 754
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    #@1c
    move-result-wide v7

    #@1d
    .line 755
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    #@20
    move-result-wide v9

    #@21
    .line 756
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    #@24
    move-result-wide v11

    #@25
    neg-double v13, v0

    #@26
    mul-double v15, v13, v5

    #@28
    mul-double v17, v15, v11

    #@2a
    mul-double v19, p7, v7

    #@2c
    mul-double v21, v19, v9

    #@2e
    sub-double v17, v17, v21

    #@30
    mul-double/2addr v13, v7

    #@31
    mul-double/2addr v11, v13

    #@32
    mul-double v21, p7, v5

    #@34
    mul-double v9, v9, v21

    #@36
    add-double/2addr v11, v9

    #@37
    int-to-double v9, v4

    #@38
    div-double v9, p17, v9

    #@3a
    const/16 v23, 0x0

    #@3c
    move-wide/from16 v25, v11

    #@3e
    move-wide/from16 v27, v17

    #@40
    move/from16 v2, v23

    #@42
    move-wide/from16 v11, p9

    #@44
    move-wide/from16 v17, p11

    #@46
    move-wide/from16 v23, p15

    #@48
    :goto_48
    if-ge v2, v4, :cond_e8

    #@4a
    add-double v31, v23, v9

    #@4c
    .line 763
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    #@4f
    move-result-wide v33

    #@50
    .line 764
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    #@53
    move-result-wide v35

    #@54
    mul-double v37, v0, v5

    #@56
    mul-double v37, v37, v35

    #@58
    add-double v37, p1, v37

    #@5a
    mul-double v39, v19, v33

    #@5c
    move/from16 v41, v4

    #@5e
    sub-double v3, v37, v39

    #@60
    mul-double v37, v0, v7

    #@62
    mul-double v37, v37, v35

    #@64
    add-double v37, p3, v37

    #@66
    mul-double v39, v21, v33

    #@68
    add-double v0, v37, v39

    #@6a
    mul-double v37, v15, v33

    #@6c
    mul-double v39, v19, v35

    #@6e
    sub-double v37, v37, v39

    #@70
    mul-double v33, v33, v13

    #@72
    mul-double v35, v35, v21

    #@74
    add-double v33, v33, v35

    #@76
    sub-double v23, v31, v23

    #@78
    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    #@7a
    div-double v35, v23, v35

    #@7c
    .line 769
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    #@7f
    move-result-wide v35

    #@80
    .line 771
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    #@83
    move-result-wide v23

    #@84
    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    #@86
    mul-double v42, v35, v39

    #@88
    mul-double v42, v42, v35

    #@8a
    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    #@8c
    add-double v42, v42, v29

    #@8e
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    #@91
    move-result-wide v35

    #@92
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    #@94
    sub-double v35, v35, v42

    #@96
    mul-double v23, v23, v35

    #@98
    div-double v23, v23, v39

    #@9a
    mul-double v27, v27, v23

    #@9c
    add-double v11, v11, v27

    #@9e
    mul-double v25, v25, v23

    #@a0
    move-wide/from16 v27, v5

    #@a2
    add-double v5, v17, v25

    #@a4
    mul-double v17, v23, v37

    #@a6
    move-wide/from16 p13, v7

    #@a8
    sub-double v7, v3, v17

    #@aa
    mul-double v23, v23, v33

    #@ac
    move-wide/from16 p7, v9

    #@ae
    sub-double v9, v0, v23

    #@b0
    move-wide/from16 v17, v13

    #@b2
    const/4 v13, 0x0

    #@b3
    move-object/from16 v14, p0

    #@b5
    .line 778
    invoke-virtual {v14, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    #@b8
    double-to-float v11, v11

    #@b9
    double-to-float v5, v5

    #@ba
    double-to-float v6, v7

    #@bb
    double-to-float v7, v9

    #@bc
    double-to-float v8, v3

    #@bd
    double-to-float v9, v0

    #@be
    move-object/from16 v42, p0

    #@c0
    move/from16 v43, v11

    #@c2
    move/from16 v44, v5

    #@c4
    move/from16 v45, v6

    #@c6
    move/from16 v46, v7

    #@c8
    move/from16 v47, v8

    #@ca
    move/from16 v48, v9

    #@cc
    .line 780
    invoke-virtual/range {v42 .. v48}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@cf
    add-int/lit8 v2, v2, 0x1

    #@d1
    move-wide/from16 v9, p7

    #@d3
    move-wide/from16 v7, p13

    #@d5
    move-wide v11, v3

    #@d6
    move-wide/from16 v13, v17

    #@d8
    move-wide/from16 v5, v27

    #@da
    move-wide/from16 v23, v31

    #@dc
    move-wide/from16 v25, v33

    #@de
    move-wide/from16 v27, v37

    #@e0
    move/from16 v4, v41

    #@e2
    move-wide/from16 v17, v0

    #@e4
    move-wide/from16 v0, p5

    #@e6
    goto/16 :goto_48

    #@e8
    :cond_e8
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 51

    #@0
    move/from16 v1, p1

    #@2
    move/from16 v3, p3

    #@4
    move/from16 v0, p5

    #@6
    move/from16 v2, p6

    #@8
    move/from16 v7, p7

    #@a
    move/from16 v9, p9

    #@c
    float-to-double v4, v7

    #@d
    .line 657
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    #@10
    move-result-wide v19

    #@11
    .line 659
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    #@14
    move-result-wide v4

    #@15
    .line 660
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    #@18
    move-result-wide v10

    #@19
    float-to-double v13, v1

    #@1a
    mul-double v15, v13, v4

    #@1c
    move/from16 v6, p2

    #@1e
    move-wide/from16 v17, v13

    #@20
    float-to-double v13, v6

    #@21
    mul-double v21, v13, v10

    #@23
    add-double v15, v15, v21

    #@25
    float-to-double v6, v0

    #@26
    div-double/2addr v15, v6

    #@27
    neg-float v8, v1

    #@28
    float-to-double v8, v8

    #@29
    mul-double/2addr v8, v10

    #@2a
    mul-double v21, v13, v4

    #@2c
    add-double v8, v8, v21

    #@2e
    move-wide/from16 v21, v13

    #@30
    float-to-double v13, v2

    #@31
    div-double/2addr v8, v13

    #@32
    float-to-double v1, v3

    #@33
    mul-double/2addr v1, v4

    #@34
    move/from16 v12, p4

    #@36
    move-wide/from16 v23, v8

    #@38
    float-to-double v8, v12

    #@39
    mul-double v25, v8, v10

    #@3b
    add-double v1, v1, v25

    #@3d
    div-double/2addr v1, v6

    #@3e
    neg-float v12, v3

    #@3f
    move-wide/from16 v25, v6

    #@41
    float-to-double v6, v12

    #@42
    mul-double/2addr v6, v10

    #@43
    mul-double/2addr v8, v4

    #@44
    add-double/2addr v6, v8

    #@45
    div-double/2addr v6, v13

    #@46
    sub-double v8, v15, v1

    #@48
    sub-double v27, v23, v6

    #@4a
    add-double v29, v15, v1

    #@4c
    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    #@4e
    div-double v29, v29, v31

    #@50
    add-double v33, v23, v6

    #@52
    div-double v33, v33, v31

    #@54
    mul-double v31, v8, v8

    #@56
    mul-double v35, v27, v27

    #@58
    move-wide/from16 v37, v10

    #@5a
    add-double v10, v31, v35

    #@5c
    const-wide/16 v31, 0x0

    #@5e
    cmpl-double v12, v10, v31

    #@60
    const-string v3, "PathParser"

    #@62
    if-nez v12, :cond_6a

    #@64
    const-string v0, " Points are coincident"

    #@66
    .line 676
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    return-void

    #@6a
    :cond_6a
    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    #@6c
    div-double v35, v35, v10

    #@6e
    const-wide/high16 v39, 0x3fd0000000000000L    # 0.25

    #@70
    sub-double v35, v35, v39

    #@72
    cmpg-double v12, v35, v31

    #@74
    if-gez v12, :cond_ab

    #@76
    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    #@78
    const-string v2, "Points are too far apart "

    #@7a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7d
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 682
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@8b
    move-result-wide v1

    #@8c
    const-wide v3, 0x3ffffff583a53b8eL    # 1.99999

    #@91
    div-double/2addr v1, v3

    #@92
    double-to-float v1, v1

    #@93
    mul-float v5, v0, v1

    #@95
    mul-float v6, p6, v1

    #@97
    move-object/from16 v0, p0

    #@99
    move/from16 v1, p1

    #@9b
    move/from16 v2, p2

    #@9d
    move/from16 v3, p3

    #@9f
    move/from16 v4, p4

    #@a1
    move/from16 v7, p7

    #@a3
    move/from16 v8, p8

    #@a5
    move/from16 v9, p9

    #@a7
    .line 683
    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    #@aa
    return-void

    #@ab
    .line 687
    :cond_ab
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    #@ae
    move-result-wide v10

    #@af
    mul-double/2addr v8, v10

    #@b0
    mul-double v10, v10, v27

    #@b2
    move/from16 v0, p8

    #@b4
    move/from16 v3, p9

    #@b6
    if-ne v0, v3, :cond_bd

    #@b8
    sub-double v29, v29, v10

    #@ba
    add-double v33, v33, v8

    #@bc
    goto :goto_c1

    #@bd
    :cond_bd
    add-double v29, v29, v10

    #@bf
    sub-double v33, v33, v8

    #@c1
    :goto_c1
    sub-double v8, v23, v33

    #@c3
    sub-double v10, v15, v29

    #@c5
    .line 700
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    #@c8
    move-result-wide v23

    #@c9
    sub-double v6, v6, v33

    #@cb
    sub-double v1, v1, v29

    #@cd
    .line 702
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    #@d0
    move-result-wide v0

    #@d1
    sub-double v0, v0, v23

    #@d3
    cmpl-double v2, v0, v31

    #@d5
    if-ltz v2, :cond_d9

    #@d7
    const/4 v6, 0x1

    #@d8
    goto :goto_da

    #@d9
    :cond_d9
    const/4 v6, 0x0

    #@da
    :goto_da
    if-eq v3, v6, :cond_e6

    #@dc
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    #@e1
    if-lez v2, :cond_e5

    #@e3
    sub-double/2addr v0, v6

    #@e4
    goto :goto_e6

    #@e5
    :cond_e5
    add-double/2addr v0, v6

    #@e6
    :cond_e6
    :goto_e6
    mul-double v29, v29, v25

    #@e8
    mul-double v33, v33, v13

    #@ea
    mul-double v2, v29, v4

    #@ec
    mul-double v10, v33, v37

    #@ee
    sub-double v7, v2, v10

    #@f0
    move-wide/from16 v2, v25

    #@f2
    mul-double v29, v29, v37

    #@f4
    mul-double v33, v33, v4

    #@f6
    add-double v9, v29, v33

    #@f8
    move-object/from16 v6, p0

    #@fa
    move-wide v11, v2

    #@fb
    move-wide/from16 v2, v17

    #@fd
    move-wide/from16 v4, v21

    #@ff
    move-wide v15, v2

    #@100
    move-wide/from16 v17, v4

    #@102
    move-wide/from16 v21, v23

    #@104
    move-wide/from16 v23, v0

    #@106
    .line 719
    invoke-static/range {v6 .. v24}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    #@109
    return-void
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7

    #@0
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [F

    #@3
    const/16 v1, 0x6d

    #@5
    const/4 v2, 0x0

    #@6
    .line 371
    :goto_6
    array-length v3, p0

    #@7
    if-ge v2, v3, :cond_19

    #@9
    .line 372
    aget-object v3, p0, v2

    #@b
    iget-char v4, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@d
    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@f
    invoke-static {p1, v0, v1, v4, v3}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    #@12
    .line 373
    aget-object v1, p0, v2

    #@14
    iget-char v1, v1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_6

    #@19
    :cond_19
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .registers 8

    #@0
    .line 388
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@2
    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@4
    const/4 v0, 0x0

    #@5
    .line 389
    :goto_5
    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@7
    array-length v2, v1

    #@8
    if-ge v0, v2, :cond_1d

    #@a
    .line 390
    iget-object v2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@c
    aget v1, v1, v0

    #@e
    const/high16 v3, 0x3f800000    # 1.0f

    #@10
    sub-float/2addr v3, p3

    #@11
    mul-float/2addr v1, v3

    #@12
    iget-object v3, p2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@14
    aget v3, v3, v0

    #@16
    mul-float/2addr v3, p3

    #@17
    add-float/2addr v1, v3

    #@18
    aput v1, v2, v0

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_5

    #@1d
    :cond_1d
    return-void
.end method
