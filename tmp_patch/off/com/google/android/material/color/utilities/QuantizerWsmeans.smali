.class public final Lcom/google/android/material/color/utilities/QuantizerWsmeans;
.super Ljava/lang/Object;
.source "QuantizerWsmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0xa

.field private static final MIN_MOVEMENT_DISTANCE:D = 3.0


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static quantize([I[II)Ljava/util/Map;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    .line 78
    new-instance v2, Ljava/util/HashMap;

    #@6
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@9
    .line 79
    array-length v3, v0

    #@a
    new-array v3, v3, [[D

    #@c
    .line 80
    array-length v4, v0

    #@d
    new-array v4, v4, [I

    #@f
    .line 81
    new-instance v5, Lcom/google/android/material/color/utilities/PointProviderLab;

    #@11
    invoke-direct {v5}, Lcom/google/android/material/color/utilities/PointProviderLab;-><init>()V

    #@14
    const/4 v7, 0x0

    #@15
    const/4 v8, 0x0

    #@16
    .line 84
    :goto_16
    array-length v9, v0

    #@17
    const/4 v10, 0x1

    #@18
    if-ge v7, v9, :cond_51

    #@1a
    .line 85
    aget v9, v0, v7

    #@1c
    .line 86
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v11

    #@20
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v11

    #@24
    check-cast v11, Ljava/lang/Integer;

    #@26
    if-nez v11, :cond_3e

    #@28
    .line 88
    invoke-interface {v5, v9}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    #@2b
    move-result-object v11

    #@2c
    aput-object v11, v3, v8

    #@2e
    .line 89
    aput v9, v4, v8

    #@30
    add-int/lit8 v8, v8, 0x1

    #@32
    .line 92
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v9

    #@36
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v10

    #@3a
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    goto :goto_4e

    #@3e
    .line 94
    :cond_3e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@45
    move-result v11

    #@46
    add-int/2addr v11, v10

    #@47
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v10

    #@4b
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    :goto_4e
    add-int/lit8 v7, v7, 0x1

    #@50
    goto :goto_16

    #@51
    .line 98
    :cond_51
    new-array v0, v8, [I

    #@53
    const/4 v7, 0x0

    #@54
    :goto_54
    if-ge v7, v8, :cond_6b

    #@56
    .line 100
    aget v9, v4, v7

    #@58
    .line 101
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v9

    #@5c
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v9

    #@60
    check-cast v9, Ljava/lang/Integer;

    #@62
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@65
    move-result v9

    #@66
    .line 102
    aput v9, v0, v7

    #@68
    add-int/lit8 v7, v7, 0x1

    #@6a
    goto :goto_54

    #@6b
    :cond_6b
    move/from16 v7, p2

    #@6d
    .line 105
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@70
    move-result v2

    #@71
    .line 106
    array-length v4, v1

    #@72
    if-eqz v4, :cond_79

    #@74
    .line 107
    array-length v4, v1

    #@75
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@78
    move-result v2

    #@79
    .line 110
    :cond_79
    new-array v4, v2, [[D

    #@7b
    const/4 v7, 0x0

    #@7c
    const/4 v9, 0x0

    #@7d
    .line 112
    :goto_7d
    array-length v11, v1

    #@7e
    if-ge v7, v11, :cond_8d

    #@80
    .line 113
    aget v11, v1, v7

    #@82
    invoke-interface {v5, v11}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    #@85
    move-result-object v11

    #@86
    aput-object v11, v4, v7

    #@88
    add-int/lit8 v9, v9, 0x1

    #@8a
    add-int/lit8 v7, v7, 0x1

    #@8c
    goto :goto_7d

    #@8d
    :cond_8d
    sub-int v1, v2, v9

    #@8f
    if-lez v1, :cond_97

    #@91
    const/4 v7, 0x0

    #@92
    :goto_92
    if-ge v7, v1, :cond_97

    #@94
    add-int/lit8 v7, v7, 0x1

    #@96
    goto :goto_92

    #@97
    .line 122
    :cond_97
    new-array v1, v8, [I

    #@99
    const/4 v7, 0x0

    #@9a
    :goto_9a
    if-ge v7, v8, :cond_ac

    #@9c
    .line 124
    invoke-static {}, Ljava/lang/Math;->random()D

    #@9f
    move-result-wide v11

    #@a0
    int-to-double v13, v2

    #@a1
    mul-double/2addr v11, v13

    #@a2
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    #@a5
    move-result-wide v11

    #@a6
    double-to-int v9, v11

    #@a7
    aput v9, v1, v7

    #@a9
    add-int/lit8 v7, v7, 0x1

    #@ab
    goto :goto_9a

    #@ac
    .line 127
    :cond_ac
    new-array v7, v2, [[I

    #@ae
    const/4 v9, 0x0

    #@af
    :goto_af
    if-ge v9, v2, :cond_b8

    #@b1
    .line 129
    new-array v11, v2, [I

    #@b3
    aput-object v11, v7, v9

    #@b5
    add-int/lit8 v9, v9, 0x1

    #@b7
    goto :goto_af

    #@b8
    .line 132
    :cond_b8
    new-array v9, v2, [[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    #@ba
    const/4 v11, 0x0

    #@bb
    :goto_bb
    if-ge v11, v2, :cond_d3

    #@bd
    .line 134
    new-array v12, v2, [Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    #@bf
    aput-object v12, v9, v11

    #@c1
    const/4 v12, 0x0

    #@c2
    :goto_c2
    if-ge v12, v2, :cond_d0

    #@c4
    .line 136
    aget-object v13, v9, v11

    #@c6
    new-instance v14, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    #@c8
    invoke-direct {v14}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;-><init>()V

    #@cb
    aput-object v14, v13, v12

    #@cd
    add-int/lit8 v12, v12, 0x1

    #@cf
    goto :goto_c2

    #@d0
    :cond_d0
    add-int/lit8 v11, v11, 0x1

    #@d2
    goto :goto_bb

    #@d3
    .line 140
    :cond_d3
    new-array v11, v2, [I

    #@d5
    const/4 v12, 0x0

    #@d6
    :goto_d6
    const/16 v13, 0xa

    #@d8
    if-ge v12, v13, :cond_227

    #@da
    const/4 v13, 0x0

    #@db
    :goto_db
    if-ge v13, v2, :cond_126

    #@dd
    add-int/lit8 v14, v13, 0x1

    #@df
    move v15, v14

    #@e0
    :goto_e0
    if-ge v15, v2, :cond_10a

    #@e2
    .line 144
    aget-object v10, v4, v13

    #@e4
    aget-object v6, v4, v15

    #@e6
    move-object/from16 p0, v11

    #@e8
    invoke-interface {v5, v10, v6}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    #@eb
    move-result-wide v10

    #@ec
    .line 145
    aget-object v6, v9, v15

    #@ee
    aget-object v6, v6, v13

    #@f0
    iput-wide v10, v6, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    #@f2
    .line 146
    aget-object v6, v9, v15

    #@f4
    aget-object v6, v6, v13

    #@f6
    iput v13, v6, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    #@f8
    .line 147
    aget-object v6, v9, v13

    #@fa
    aget-object v6, v6, v15

    #@fc
    iput-wide v10, v6, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    #@fe
    .line 148
    aget-object v6, v9, v13

    #@100
    aget-object v6, v6, v15

    #@102
    iput v15, v6, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    #@104
    add-int/lit8 v15, v15, 0x1

    #@106
    move-object/from16 v11, p0

    #@108
    const/4 v10, 0x1

    #@109
    goto :goto_e0

    #@10a
    :cond_10a
    move-object/from16 p0, v11

    #@10c
    .line 150
    aget-object v6, v9, v13

    #@10e
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@111
    const/4 v6, 0x0

    #@112
    :goto_112
    if-ge v6, v2, :cond_121

    #@114
    .line 152
    aget-object v10, v7, v13

    #@116
    aget-object v11, v9, v13

    #@118
    aget-object v11, v11, v6

    #@11a
    iget v11, v11, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    #@11c
    aput v11, v10, v6

    #@11e
    add-int/lit8 v6, v6, 0x1

    #@120
    goto :goto_112

    #@121
    :cond_121
    const/4 v10, 0x1

    #@122
    move-object/from16 v11, p0

    #@124
    move v13, v14

    #@125
    goto :goto_db

    #@126
    :cond_126
    move-object/from16 p0, v11

    #@128
    const/4 v6, 0x0

    #@129
    const/4 v10, 0x0

    #@12a
    :goto_12a
    if-ge v6, v8, :cond_190

    #@12c
    .line 158
    aget-object v11, v3, v6

    #@12e
    .line 159
    aget v13, v1, v6

    #@130
    .line 160
    aget-object v14, v4, v13

    #@132
    .line 161
    invoke-interface {v5, v11, v14}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    #@135
    move-result-wide v14

    #@136
    move-object/from16 p1, v7

    #@138
    move-object/from16 v18, v0

    #@13a
    move-wide/from16 v19, v14

    #@13c
    const/4 v0, -0x1

    #@13d
    const/4 v7, 0x0

    #@13e
    :goto_13e
    if-ge v7, v2, :cond_167

    #@140
    .line 166
    aget-object v21, v9, v13

    #@142
    move-object/from16 v22, v9

    #@144
    aget-object v9, v21, v7

    #@146
    move/from16 v21, v8

    #@148
    iget-wide v8, v9, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    #@14a
    const-wide/high16 v23, 0x4010000000000000L    # 4.0

    #@14c
    mul-double v23, v23, v14

    #@14e
    cmpl-double v8, v8, v23

    #@150
    if-ltz v8, :cond_153

    #@152
    goto :goto_160

    #@153
    .line 169
    :cond_153
    aget-object v8, v4, v7

    #@155
    invoke-interface {v5, v11, v8}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    #@158
    move-result-wide v8

    #@159
    cmpg-double v23, v8, v19

    #@15b
    if-gez v23, :cond_160

    #@15d
    move v0, v7

    #@15e
    move-wide/from16 v19, v8

    #@160
    :cond_160
    :goto_160
    add-int/lit8 v7, v7, 0x1

    #@162
    move/from16 v8, v21

    #@164
    move-object/from16 v9, v22

    #@166
    goto :goto_13e

    #@167
    :cond_167
    move/from16 v21, v8

    #@169
    move-object/from16 v22, v9

    #@16b
    const/4 v7, -0x1

    #@16c
    if-eq v0, v7, :cond_185

    #@16e
    .line 177
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    #@171
    move-result-wide v7

    #@172
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    #@175
    move-result-wide v13

    #@176
    sub-double/2addr v7, v13

    #@177
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    #@17a
    move-result-wide v7

    #@17b
    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    #@17d
    cmpl-double v7, v7, v13

    #@17f
    if-lez v7, :cond_185

    #@181
    add-int/lit8 v10, v10, 0x1

    #@183
    .line 180
    aput v0, v1, v6

    #@185
    :cond_185
    add-int/lit8 v6, v6, 0x1

    #@187
    move-object/from16 v7, p1

    #@189
    move-object/from16 v0, v18

    #@18b
    move/from16 v8, v21

    #@18d
    move-object/from16 v9, v22

    #@18f
    goto :goto_12a

    #@190
    :cond_190
    move-object/from16 v18, v0

    #@192
    move-object/from16 p1, v7

    #@194
    move/from16 v21, v8

    #@196
    move-object/from16 v22, v9

    #@198
    if-nez v10, :cond_1a1

    #@19a
    if-eqz v12, :cond_1a1

    #@19c
    const/4 v12, 0x0

    #@19d
    move-object/from16 v9, p0

    #@19f
    goto/16 :goto_229

    #@1a1
    .line 189
    :cond_1a1
    new-array v0, v2, [D

    #@1a3
    .line 190
    new-array v6, v2, [D

    #@1a5
    .line 191
    new-array v7, v2, [D

    #@1a7
    move-object/from16 v9, p0

    #@1a9
    const/4 v8, 0x0

    #@1aa
    .line 192
    invoke-static {v9, v8}, Ljava/util/Arrays;->fill([II)V

    #@1ad
    move v10, v8

    #@1ae
    :goto_1ae
    move/from16 v13, v21

    #@1b0
    if-ge v10, v13, :cond_1e9

    #@1b2
    .line 194
    aget v14, v1, v10

    #@1b4
    .line 195
    aget-object v15, v3, v10

    #@1b6
    .line 196
    aget v11, v18, v10

    #@1b8
    .line 197
    aget v17, v9, v14

    #@1ba
    add-int v17, v17, v11

    #@1bc
    aput v17, v9, v14

    #@1be
    .line 198
    aget-wide v19, v0, v14

    #@1c0
    aget-wide v23, v15, v8

    #@1c2
    move v8, v12

    #@1c3
    int-to-double v11, v11

    #@1c4
    mul-double v23, v23, v11

    #@1c6
    add-double v19, v19, v23

    #@1c8
    aput-wide v19, v0, v14

    #@1ca
    .line 199
    aget-wide v19, v6, v14

    #@1cc
    const/16 v16, 0x1

    #@1ce
    aget-wide v23, v15, v16

    #@1d0
    mul-double v23, v23, v11

    #@1d2
    add-double v19, v19, v23

    #@1d4
    aput-wide v19, v6, v14

    #@1d6
    .line 200
    aget-wide v19, v7, v14

    #@1d8
    const/16 v21, 0x2

    #@1da
    aget-wide v23, v15, v21

    #@1dc
    mul-double v23, v23, v11

    #@1de
    add-double v19, v19, v23

    #@1e0
    aput-wide v19, v7, v14

    #@1e2
    add-int/lit8 v10, v10, 0x1

    #@1e4
    move v12, v8

    #@1e5
    move/from16 v21, v13

    #@1e7
    const/4 v8, 0x0

    #@1e8
    goto :goto_1ae

    #@1e9
    :cond_1e9
    move v8, v12

    #@1ea
    const/4 v10, 0x0

    #@1eb
    :goto_1eb
    if-ge v10, v2, :cond_217

    #@1ed
    .line 204
    aget v11, v9, v10

    #@1ef
    if-nez v11, :cond_1fd

    #@1f1
    const/4 v11, 0x3

    #@1f2
    new-array v11, v11, [D

    #@1f4
    .line 206
    fill-array-data v11, :array_256

    #@1f7
    aput-object v11, v4, v10

    #@1f9
    const/4 v12, 0x0

    #@1fa
    const/4 v14, 0x1

    #@1fb
    const/4 v15, 0x2

    #@1fc
    goto :goto_214

    #@1fd
    .line 209
    :cond_1fd
    aget-wide v14, v0, v10

    #@1ff
    int-to-double v11, v11

    #@200
    div-double/2addr v14, v11

    #@201
    .line 210
    aget-wide v19, v6, v10

    #@203
    div-double v19, v19, v11

    #@205
    .line 211
    aget-wide v23, v7, v10

    #@207
    div-double v23, v23, v11

    #@209
    .line 212
    aget-object v11, v4, v10

    #@20b
    const/4 v12, 0x0

    #@20c
    aput-wide v14, v11, v12

    #@20e
    const/4 v14, 0x1

    #@20f
    .line 213
    aput-wide v19, v11, v14

    #@211
    const/4 v15, 0x2

    #@212
    .line 214
    aput-wide v23, v11, v15

    #@214
    :goto_214
    add-int/lit8 v10, v10, 0x1

    #@216
    goto :goto_1eb

    #@217
    :cond_217
    const/4 v12, 0x0

    #@218
    const/4 v14, 0x1

    #@219
    add-int/lit8 v0, v8, 0x1

    #@21b
    move-object/from16 v7, p1

    #@21d
    move v12, v0

    #@21e
    move-object v11, v9

    #@21f
    move v8, v13

    #@220
    move v10, v14

    #@221
    move-object/from16 v0, v18

    #@223
    move-object/from16 v9, v22

    #@225
    goto/16 :goto_d6

    #@227
    :cond_227
    move-object v9, v11

    #@228
    const/4 v12, 0x0

    #@229
    .line 218
    :goto_229
    new-instance v0, Ljava/util/HashMap;

    #@22b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@22e
    move v6, v12

    #@22f
    :goto_22f
    if-ge v6, v2, :cond_255

    #@231
    .line 220
    aget v1, v9, v6

    #@233
    if-nez v1, :cond_236

    #@235
    goto :goto_252

    #@236
    .line 225
    :cond_236
    aget-object v3, v4, v6

    #@238
    invoke-interface {v5, v3}, Lcom/google/android/material/color/utilities/PointProvider;->toInt([D)I

    #@23b
    move-result v3

    #@23c
    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23f
    move-result-object v7

    #@240
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@243
    move-result v7

    #@244
    if-eqz v7, :cond_247

    #@246
    goto :goto_252

    #@247
    .line 230
    :cond_247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24a
    move-result-object v3

    #@24b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24e
    move-result-object v1

    #@24f
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@252
    :goto_252
    add-int/lit8 v6, v6, 0x1

    #@254
    goto :goto_22f

    #@255
    :cond_255
    return-object v0

    #@256
    :array_256
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method
