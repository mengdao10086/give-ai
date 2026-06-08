.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api31Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api19Impl;,
        Landroidx/core/graphics/BitmapCompat$Api17Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    move/from16 v2, p2

    #@6
    move-object/from16 v3, p3

    #@8
    if-lez v1, :cond_20a

    #@a
    if-lez v2, :cond_20a

    #@c
    if-eqz v3, :cond_35

    #@e
    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_2d

    #@14
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@16
    if-ltz v4, :cond_2d

    #@18
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@1a
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@1d
    move-result v5

    #@1e
    if-gt v4, v5, :cond_2d

    #@20
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@22
    if-ltz v4, :cond_2d

    #@24
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@26
    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@29
    move-result v5

    #@2a
    if-gt v4, v5, :cond_2d

    #@2c
    goto :goto_35

    #@2d
    .line 140
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string v1, "srcRect must be contained by srcBm!"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 145
    :cond_35
    :goto_35
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    #@37
    const/16 v5, 0x1b

    #@39
    if-lt v4, v5, :cond_40

    #@3b
    .line 148
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@3e
    move-result-object v4

    #@3f
    goto :goto_41

    #@40
    :cond_40
    move-object v4, v0

    #@41
    :goto_41
    if-eqz v3, :cond_48

    #@43
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    #@46
    move-result v6

    #@47
    goto :goto_4c

    #@48
    :cond_48
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@4b
    move-result v6

    #@4c
    :goto_4c
    if-eqz v3, :cond_53

    #@4e
    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    #@51
    move-result v7

    #@52
    goto :goto_57

    #@53
    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@56
    move-result v7

    #@57
    :goto_57
    int-to-float v8, v1

    #@58
    int-to-float v9, v6

    #@59
    div-float/2addr v8, v9

    #@5a
    int-to-float v9, v2

    #@5b
    int-to-float v10, v7

    #@5c
    div-float/2addr v9, v10

    #@5d
    if-eqz v3, :cond_62

    #@5f
    .line 157
    iget v11, v3, Landroid/graphics/Rect;->left:I

    #@61
    goto :goto_63

    #@62
    :cond_62
    const/4 v11, 0x0

    #@63
    :goto_63
    if-eqz v3, :cond_68

    #@65
    .line 158
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@67
    goto :goto_69

    #@68
    :cond_68
    const/4 v3, 0x0

    #@69
    :goto_69
    const/4 v12, 0x1

    #@6a
    if-nez v11, :cond_8c

    #@6c
    if-nez v3, :cond_8c

    #@6e
    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@71
    move-result v13

    #@72
    if-ne v1, v13, :cond_8c

    #@74
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@77
    move-result v13

    #@78
    if-ne v2, v13, :cond_8c

    #@7a
    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_8b

    #@80
    if-ne v0, v4, :cond_8b

    #@82
    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v0, v1, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@89
    move-result-object v0

    #@8a
    return-object v0

    #@8b
    :cond_8b
    return-object v4

    #@8c
    .line 171
    :cond_8c
    new-instance v13, Landroid/graphics/Paint;

    #@8e
    invoke-direct {v13, v12}, Landroid/graphics/Paint;-><init>(I)V

    #@91
    .line 172
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@94
    .line 173
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    #@96
    const/16 v15, 0x1d

    #@98
    if-lt v14, v15, :cond_9e

    #@9a
    .line 174
    invoke-static {v13}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    #@9d
    goto :goto_a8

    #@9e
    .line 176
    :cond_9e
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    #@a0
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@a2
    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@a5
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@a8
    :goto_a8
    if-ne v6, v1, :cond_c1

    #@aa
    if-ne v7, v2, :cond_c1

    #@ac
    .line 181
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@af
    move-result-object v0

    #@b0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@b3
    move-result-object v0

    #@b4
    .line 182
    new-instance v1, Landroid/graphics/Canvas;

    #@b6
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@b9
    neg-int v2, v11

    #@ba
    int-to-float v2, v2

    #@bb
    neg-int v3, v3

    #@bc
    int-to-float v3, v3

    #@bd
    .line 183
    invoke-virtual {v1, v4, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@c0
    return-object v0

    #@c1
    :cond_c1
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    #@c3
    .line 188
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    #@c6
    move-result-wide v14

    #@c7
    const/high16 v16, 0x3f800000    # 1.0f

    #@c9
    cmpl-float v17, v8, v16

    #@cb
    if-lez v17, :cond_da

    #@cd
    move/from16 v18, v11

    #@cf
    float-to-double v10, v8

    #@d0
    .line 189
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    #@d3
    move-result-wide v10

    #@d4
    div-double/2addr v10, v14

    #@d5
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    #@d8
    move-result-wide v10

    #@d9
    goto :goto_e6

    #@da
    :cond_da
    move/from16 v18, v11

    #@dc
    float-to-double v10, v8

    #@dd
    .line 190
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    #@e0
    move-result-wide v10

    #@e1
    div-double/2addr v10, v14

    #@e2
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    #@e5
    move-result-wide v10

    #@e6
    :goto_e6
    double-to-int v8, v10

    #@e7
    cmpl-float v10, v9, v16

    #@e9
    if-lez v10, :cond_f6

    #@eb
    float-to-double v9, v9

    #@ec
    .line 191
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    #@ef
    move-result-wide v9

    #@f0
    div-double/2addr v9, v14

    #@f1
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    #@f4
    move-result-wide v9

    #@f5
    goto :goto_100

    #@f6
    :cond_f6
    float-to-double v9, v9

    #@f7
    .line 192
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    #@fa
    move-result-wide v9

    #@fb
    div-double/2addr v9, v14

    #@fc
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    #@ff
    move-result-wide v9

    #@100
    :goto_100
    double-to-int v9, v9

    #@101
    if-eqz p4, :cond_138

    #@103
    .line 205
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    #@105
    if-lt v10, v5, :cond_138

    #@107
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    #@10a
    move-result v10

    #@10b
    if-nez v10, :cond_138

    #@10d
    if-lez v8, :cond_114

    #@10f
    .line 206
    invoke-static {v6, v1, v12, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    #@112
    move-result v10

    #@113
    goto :goto_115

    #@114
    :cond_114
    move v10, v6

    #@115
    :goto_115
    if-lez v9, :cond_11c

    #@117
    .line 207
    invoke-static {v7, v2, v12, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    #@11a
    move-result v11

    #@11b
    goto :goto_11d

    #@11c
    :cond_11c
    move v11, v7

    #@11d
    .line 208
    :goto_11d
    invoke-static {v10, v11, v0, v12}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    #@120
    move-result-object v10

    #@121
    .line 210
    new-instance v11, Landroid/graphics/Canvas;

    #@123
    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@126
    move/from16 v14, v18

    #@128
    neg-int v14, v14

    #@129
    int-to-float v14, v14

    #@12a
    neg-int v3, v3

    #@12b
    int-to-float v3, v3

    #@12c
    .line 211
    invoke-virtual {v11, v4, v14, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@12f
    move v14, v12

    #@130
    const/4 v3, 0x0

    #@131
    const/4 v11, 0x0

    #@132
    move-object/from16 v21, v10

    #@134
    move-object v10, v4

    #@135
    move-object/from16 v4, v21

    #@137
    goto :goto_13d

    #@138
    :cond_138
    move/from16 v14, v18

    #@13a
    const/4 v10, 0x0

    #@13b
    move v11, v14

    #@13c
    const/4 v14, 0x0

    #@13d
    .line 221
    :goto_13d
    new-instance v15, Landroid/graphics/Rect;

    #@13f
    invoke-direct {v15, v11, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@142
    .line 222
    new-instance v3, Landroid/graphics/Rect;

    #@144
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@147
    move v11, v8

    #@148
    move/from16 v16, v9

    #@14a
    :goto_14a
    if-nez v11, :cond_157

    #@14c
    if-eqz v16, :cond_14f

    #@14e
    goto :goto_157

    #@14f
    :cond_14f
    if-eq v10, v0, :cond_156

    #@151
    if-eqz v10, :cond_156

    #@153
    .line 311
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    #@156
    :cond_156
    return-object v4

    #@157
    :cond_157
    :goto_157
    if-gez v11, :cond_15c

    #@159
    add-int/lit8 v11, v11, 0x1

    #@15b
    goto :goto_160

    #@15c
    :cond_15c
    if-lez v11, :cond_160

    #@15e
    add-int/lit8 v11, v11, -0x1

    #@160
    :cond_160
    :goto_160
    if-gez v16, :cond_165

    #@162
    add-int/lit8 v16, v16, 0x1

    #@164
    goto :goto_169

    #@165
    :cond_165
    if-lez v16, :cond_169

    #@167
    add-int/lit8 v16, v16, -0x1

    #@169
    :cond_169
    :goto_169
    move/from16 v12, v16

    #@16b
    .line 235
    invoke-static {v6, v1, v11, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    #@16e
    move-result v5

    #@16f
    move-object/from16 v18, v13

    #@171
    .line 236
    invoke-static {v7, v2, v12, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    #@174
    move-result v13

    #@175
    move-object/from16 v19, v15

    #@177
    const/4 v15, 0x0

    #@178
    .line 237
    invoke-virtual {v3, v15, v15, v5, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@17b
    if-nez v11, :cond_181

    #@17d
    if-nez v12, :cond_181

    #@17f
    const/4 v5, 0x1

    #@180
    goto :goto_182

    #@181
    :cond_181
    move v5, v15

    #@182
    :goto_182
    if-eqz v10, :cond_192

    #@184
    .line 257
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    #@187
    move-result v13

    #@188
    if-ne v13, v1, :cond_192

    #@18a
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    #@18d
    move-result v13

    #@18e
    if-ne v13, v2, :cond_192

    #@190
    const/4 v13, 0x1

    #@191
    goto :goto_193

    #@192
    :cond_192
    move v13, v15

    #@193
    :goto_193
    if-eqz v10, :cond_1b5

    #@195
    if-eq v10, v0, :cond_1b5

    #@197
    if-eqz p4, :cond_1a8

    #@199
    .line 258
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    #@19b
    move-object/from16 v20, v3

    #@19d
    const/16 v3, 0x1b

    #@19f
    if-lt v15, v3, :cond_1aa

    #@1a1
    .line 267
    invoke-static {v10}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    #@1a4
    move-result v3

    #@1a5
    if-eqz v3, :cond_1b7

    #@1a7
    goto :goto_1aa

    #@1a8
    :cond_1a8
    move-object/from16 v20, v3

    #@1aa
    :cond_1aa
    :goto_1aa
    if-eqz v5, :cond_1b1

    #@1ac
    if-eqz v13, :cond_1b7

    #@1ae
    if-eqz v14, :cond_1b1

    #@1b0
    goto :goto_1b7

    #@1b1
    :cond_1b1
    move-object v3, v10

    #@1b2
    const/16 v15, 0x1b

    #@1b4
    goto :goto_1ea

    #@1b5
    :cond_1b5
    move-object/from16 v20, v3

    #@1b7
    :cond_1b7
    :goto_1b7
    if-eq v10, v0, :cond_1be

    #@1b9
    if-eqz v10, :cond_1be

    #@1bb
    .line 275
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    #@1be
    :cond_1be
    if-lez v11, :cond_1c2

    #@1c0
    move v3, v14

    #@1c1
    goto :goto_1c3

    #@1c2
    :cond_1c2
    move v3, v11

    #@1c3
    .line 284
    :goto_1c3
    invoke-static {v6, v1, v3, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    #@1c6
    move-result v3

    #@1c7
    if-lez v12, :cond_1cb

    #@1c9
    move v10, v14

    #@1ca
    goto :goto_1cc

    #@1cb
    :cond_1cb
    move v10, v12

    #@1cc
    .line 286
    :goto_1cc
    invoke-static {v7, v2, v10, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    #@1cf
    move-result v10

    #@1d0
    .line 290
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1d2
    const/16 v15, 0x1b

    #@1d4
    if-lt v13, v15, :cond_1e2

    #@1d6
    if-eqz p4, :cond_1dc

    #@1d8
    if-nez v5, :cond_1dc

    #@1da
    const/4 v5, 0x1

    #@1db
    goto :goto_1dd

    #@1dc
    :cond_1dc
    const/4 v5, 0x0

    #@1dd
    .line 292
    :goto_1dd
    invoke-static {v3, v10, v0, v5}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    #@1e0
    move-result-object v3

    #@1e1
    goto :goto_1ea

    #@1e2
    .line 295
    :cond_1e2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@1e5
    move-result-object v5

    #@1e6
    invoke-static {v3, v10, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1e9
    move-result-object v3

    #@1ea
    .line 301
    :goto_1ea
    new-instance v5, Landroid/graphics/Canvas;

    #@1ec
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1ef
    move-object/from16 v10, v18

    #@1f1
    move-object/from16 v13, v19

    #@1f3
    move-object/from16 v15, v20

    #@1f5
    .line 302
    invoke-virtual {v5, v4, v13, v15, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@1f8
    .line 308
    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1fb
    move/from16 v16, v12

    #@1fd
    const/16 v5, 0x1b

    #@1ff
    const/4 v12, 0x1

    #@200
    move-object/from16 v21, v4

    #@202
    move-object v4, v3

    #@203
    move-object v3, v15

    #@204
    move-object v15, v13

    #@205
    move-object v13, v10

    #@206
    move-object/from16 v10, v21

    #@208
    goto/16 :goto_14a

    #@20a
    .line 134
    :cond_20a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20c
    const-string v1, "dstW and dstH must be > 0!"

    #@20e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@211
    throw v0
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 1

    #@0
    .line 97
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api19Impl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 1

    #@0
    .line 58
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 2

    #@0
    .line 84
    invoke-static {p0, p1}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    #@3
    return-void
.end method

.method public static sizeAtStep(IIII)I
    .registers 5

    #@0
    if-nez p2, :cond_3

    #@2
    return p1

    #@3
    :cond_3
    const/4 v0, 0x1

    #@4
    if-lez p2, :cond_b

    #@6
    sub-int/2addr p3, p2

    #@7
    shl-int p1, v0, p3

    #@9
    mul-int/2addr p0, p1

    #@a
    return p0

    #@b
    :cond_b
    neg-int p0, p2

    #@c
    sub-int/2addr p0, v0

    #@d
    shl-int p0, p1, p0

    #@f
    return p0
.end method
