.class public final Lcom/google/android/material/color/utilities/Cam16;
.super Ljava/lang/Object;
.source "Cam16.java"


# static fields
.field static final CAM16RGB_TO_XYZ:[[D

.field static final XYZ_TO_CAM16RGB:[[D


# instance fields
.field private final astar:D

.field private final bstar:D

.field private final chroma:D

.field private final hue:D

.field private final j:D

.field private final jstar:D

.field private final m:D

.field private final q:D

.field private final s:D


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [[D

    #@3
    new-array v2, v0, [D

    #@5
    .line 44
    fill-array-data v2, :array_38

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    new-array v2, v0, [D

    #@d
    fill-array-data v2, :array_48

    #@10
    const/4 v4, 0x1

    #@11
    aput-object v2, v1, v4

    #@13
    new-array v2, v0, [D

    #@15
    fill-array-data v2, :array_58

    #@18
    const/4 v5, 0x2

    #@19
    aput-object v2, v1, v5

    #@1b
    sput-object v1, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    #@1d
    new-array v1, v0, [[D

    #@1f
    new-array v2, v0, [D

    #@21
    .line 51
    fill-array-data v2, :array_68

    #@24
    aput-object v2, v1, v3

    #@26
    new-array v2, v0, [D

    #@28
    fill-array-data v2, :array_78

    #@2b
    aput-object v2, v1, v4

    #@2d
    new-array v0, v0, [D

    #@2f
    fill-array-data v0, :array_88

    #@32
    aput-object v0, v1, v5

    #@34
    sput-object v1, Lcom/google/android/material/color/utilities/Cam16;->CAM16RGB_TO_XYZ:[[D

    #@36
    return-void

    #@37
    nop

    #@38
    :array_38
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    #@48
    :array_48
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    #@58
    :array_58
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data

    #@68
    :array_68
    .array-data 8
        0x3ffdcb079afef467L    # 1.8620678
        -0x400fd1e697792de9L    # -1.0112547
        0x3fc3188d6a8c3ae1L    # 0.14918678
    .end array-data

    #@78
    :array_78
    .array-data 8
        0x3fd8cd3c1de87346L    # 0.38752654
        0x3fe3e2e5bddf7419L    # 0.62144744
        -0x407d9f0ccb1490dcL    # -0.00897398
    .end array-data

    #@88
    :array_88
    .array-data 8
        -0x406fc73eee525892L    # -0.0158415
        -0x405e8770215031c7L    # -0.03412294
        0x3ff0cca7787f6d9eL    # 1.0499644
    .end array-data
.end method

.method private constructor <init>(DDDDDDDDD)V
    .registers 22

    #@0
    move-object v0, p0

    #@1
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    move-wide v1, p1

    #@5
    .line 172
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    #@7
    move-wide v1, p3

    #@8
    .line 173
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    #@a
    move-wide v1, p5

    #@b
    .line 174
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->j:D

    #@d
    move-wide v1, p7

    #@e
    .line 175
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->q:D

    #@10
    move-wide v1, p9

    #@11
    .line 176
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->m:D

    #@13
    move-wide v1, p11

    #@14
    .line 177
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->s:D

    #@16
    move-wide/from16 v1, p13

    #@18
    .line 178
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->jstar:D

    #@1a
    move-wide/from16 v1, p15

    #@1c
    .line 179
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->astar:D

    #@1e
    move-wide/from16 v1, p17

    #@20
    .line 180
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->bstar:D

    #@22
    return-void
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/Cam16;
    .registers 2

    #@0
    .line 189
    sget-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    #@2
    invoke-static {p0, v0}, Lcom/google/android/material/color/utilities/Cam16;->fromIntInViewingConditions(ILcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method static fromIntInViewingConditions(ILcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .registers 40

    #@0
    move/from16 v0, p0

    #@2
    const/high16 v1, 0xff0000

    #@4
    and-int/2addr v1, v0

    #@5
    shr-int/lit8 v1, v1, 0x10

    #@7
    const v2, 0xff00

    #@a
    and-int/2addr v2, v0

    #@b
    shr-int/lit8 v2, v2, 0x8

    #@d
    and-int/lit16 v0, v0, 0xff

    #@f
    .line 207
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@12
    move-result-wide v3

    #@13
    .line 208
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@16
    move-result-wide v1

    #@17
    .line 209
    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    #@1a
    move-result-wide v5

    #@1b
    const-wide v7, 0x3fda63c2e8477c96L    # 0.41233895

    #@20
    mul-double/2addr v7, v3

    #@21
    const-wide v9, 0x3fd6e341ae4b2c79L    # 0.35762064

    #@26
    mul-double/2addr v9, v1

    #@27
    add-double/2addr v7, v9

    #@28
    const-wide v9, 0x3fc71af7273e5d5eL    # 0.18051042

    #@2d
    mul-double/2addr v9, v5

    #@2e
    add-double/2addr v7, v9

    #@2f
    const-wide v9, 0x3fcb367a0f9096bcL    # 0.2126

    #@34
    mul-double/2addr v9, v3

    #@35
    const-wide v11, 0x3fe6e2eb1c432ca5L    # 0.7152

    #@3a
    mul-double/2addr v11, v1

    #@3b
    add-double/2addr v9, v11

    #@3c
    const-wide v11, 0x3fb27bb2fec56d5dL    # 0.0722

    #@41
    mul-double/2addr v11, v5

    #@42
    add-double/2addr v9, v11

    #@43
    const-wide v11, 0x3f93c8fde0401c25L    # 0.01932141

    #@48
    mul-double/2addr v3, v11

    #@49
    const-wide v11, 0x3fbe818525c434ceL    # 0.11916382

    #@4e
    mul-double/2addr v1, v11

    #@4f
    add-double/2addr v3, v1

    #@50
    const-wide v0, 0x3fee693974c0c730L    # 0.95034478

    #@55
    mul-double/2addr v5, v0

    #@56
    add-double/2addr v3, v5

    #@57
    .line 215
    sget-object v0, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    #@59
    const/4 v1, 0x0

    #@5a
    .line 216
    aget-object v2, v0, v1

    #@5c
    aget-wide v5, v2, v1

    #@5e
    mul-double/2addr v5, v7

    #@5f
    const/4 v11, 0x1

    #@60
    aget-wide v12, v2, v11

    #@62
    mul-double/2addr v12, v9

    #@63
    add-double/2addr v5, v12

    #@64
    const/4 v12, 0x2

    #@65
    aget-wide v13, v2, v12

    #@67
    mul-double/2addr v13, v3

    #@68
    add-double/2addr v5, v13

    #@69
    .line 217
    aget-object v2, v0, v11

    #@6b
    aget-wide v13, v2, v1

    #@6d
    mul-double/2addr v13, v7

    #@6e
    aget-wide v15, v2, v11

    #@70
    mul-double/2addr v15, v9

    #@71
    add-double/2addr v13, v15

    #@72
    aget-wide v15, v2, v12

    #@74
    mul-double/2addr v15, v3

    #@75
    add-double/2addr v13, v15

    #@76
    .line 218
    aget-object v0, v0, v12

    #@78
    aget-wide v15, v0, v1

    #@7a
    mul-double/2addr v7, v15

    #@7b
    aget-wide v15, v0, v11

    #@7d
    mul-double/2addr v9, v15

    #@7e
    add-double/2addr v7, v9

    #@7f
    aget-wide v9, v0, v12

    #@81
    mul-double/2addr v3, v9

    #@82
    add-double/2addr v7, v3

    #@83
    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    #@86
    move-result-object v0

    #@87
    aget-wide v1, v0, v1

    #@89
    mul-double/2addr v1, v5

    #@8a
    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    #@8d
    move-result-object v0

    #@8e
    aget-wide v3, v0, v11

    #@90
    mul-double/2addr v3, v13

    #@91
    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    #@94
    move-result-object v0

    #@95
    aget-wide v5, v0, v12

    #@97
    mul-double/2addr v5, v7

    #@98
    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    #@9b
    move-result-wide v7

    #@9c
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    #@9f
    move-result-wide v9

    #@a0
    mul-double/2addr v7, v9

    #@a1
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    #@a3
    div-double/2addr v7, v9

    #@a4
    const-wide v11, 0x3fdae147ae147ae1L    # 0.42

    #@a9
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@ac
    move-result-wide v7

    #@ad
    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    #@b0
    move-result-wide v13

    #@b1
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    #@b4
    move-result-wide v15

    #@b5
    mul-double/2addr v13, v15

    #@b6
    div-double/2addr v13, v9

    #@b7
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@ba
    move-result-wide v13

    #@bb
    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    #@be
    move-result-wide v15

    #@bf
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    #@c2
    move-result-wide v17

    #@c3
    mul-double v15, v15, v17

    #@c5
    move-wide/from16 v17, v5

    #@c7
    div-double v5, v15, v9

    #@c9
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@cc
    move-result-wide v5

    #@cd
    .line 229
    invoke-static {v1, v2}, Ljava/lang/Math;->signum(D)D

    #@d0
    move-result-wide v0

    #@d1
    const-wide/high16 v11, 0x4079000000000000L    # 400.0

    #@d3
    mul-double/2addr v0, v11

    #@d4
    mul-double/2addr v0, v7

    #@d5
    const-wide v15, 0x403b2147ae147ae1L    # 27.13

    #@da
    add-double/2addr v7, v15

    #@db
    div-double/2addr v0, v7

    #@dc
    .line 230
    invoke-static {v3, v4}, Ljava/lang/Math;->signum(D)D

    #@df
    move-result-wide v2

    #@e0
    mul-double/2addr v2, v11

    #@e1
    mul-double/2addr v2, v13

    #@e2
    add-double/2addr v13, v15

    #@e3
    div-double/2addr v2, v13

    #@e4
    .line 231
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->signum(D)D

    #@e7
    move-result-wide v7

    #@e8
    mul-double/2addr v7, v11

    #@e9
    mul-double/2addr v7, v5

    #@ea
    add-double/2addr v5, v15

    #@eb
    div-double/2addr v7, v5

    #@ec
    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    #@ee
    mul-double v11, v0, v4

    #@f0
    const-wide/high16 v13, -0x3fd8000000000000L    # -12.0

    #@f2
    mul-double/2addr v13, v2

    #@f3
    add-double/2addr v11, v13

    #@f4
    add-double/2addr v11, v7

    #@f5
    div-double/2addr v11, v4

    #@f6
    add-double v4, v0, v2

    #@f8
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    #@fa
    mul-double v15, v7, v13

    #@fc
    sub-double/2addr v4, v15

    #@fd
    const-wide/high16 v15, 0x4022000000000000L    # 9.0

    #@ff
    div-double/2addr v4, v15

    #@100
    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    #@102
    mul-double v17, v0, v15

    #@104
    mul-double/2addr v2, v15

    #@105
    add-double v17, v17, v2

    #@107
    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    #@109
    mul-double v19, v19, v7

    #@10b
    add-double v17, v17, v19

    #@10d
    div-double v17, v17, v15

    #@10f
    const-wide/high16 v19, 0x4044000000000000L    # 40.0

    #@111
    mul-double v0, v0, v19

    #@113
    add-double/2addr v0, v2

    #@114
    add-double/2addr v0, v7

    #@115
    div-double/2addr v0, v15

    #@116
    .line 243
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    #@119
    move-result-wide v2

    #@11a
    .line 244
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    #@11d
    move-result-wide v2

    #@11e
    const-wide/16 v6, 0x0

    #@120
    cmpg-double v6, v2, v6

    #@122
    const-wide v7, 0x4076800000000000L    # 360.0

    #@127
    if-gez v6, :cond_12d

    #@129
    add-double/2addr v2, v7

    #@12a
    :cond_12a
    :goto_12a
    move-wide/from16 v20, v2

    #@12c
    goto :goto_133

    #@12d
    :cond_12d
    cmpl-double v6, v2, v7

    #@12f
    if-ltz v6, :cond_12a

    #@131
    sub-double/2addr v2, v7

    #@132
    goto :goto_12a

    #@133
    .line 249
    :goto_133
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    #@136
    move-result-wide v2

    #@137
    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNbb()D

    #@13a
    move-result-wide v15

    #@13b
    mul-double/2addr v0, v15

    #@13c
    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    #@13f
    move-result-wide v15

    #@140
    div-double/2addr v0, v15

    #@141
    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    #@144
    move-result-wide v15

    #@145
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getZ()D

    #@148
    move-result-wide v22

    #@149
    mul-double v13, v15, v22

    #@14b
    .line 257
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    #@14e
    move-result-wide v0

    #@14f
    mul-double/2addr v0, v9

    #@150
    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    #@153
    move-result-wide v13

    #@154
    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    #@156
    div-double v13, v15, v13

    #@158
    div-double v9, v0, v9

    #@15a
    .line 263
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    #@15d
    move-result-wide v22

    #@15e
    mul-double v13, v13, v22

    #@160
    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    #@163
    move-result-wide v22

    #@164
    add-double v22, v22, v15

    #@166
    mul-double v13, v13, v22

    #@168
    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    #@16b
    move-result-wide v22

    #@16c
    mul-double v26, v13, v22

    #@16e
    const-wide v13, 0x403423d70a3d70a4L    # 20.14

    #@173
    cmpg-double v6, v20, v13

    #@175
    if-gez v6, :cond_17a

    #@177
    add-double v7, v20, v7

    #@179
    goto :goto_17c

    #@17a
    :cond_17a
    move-wide/from16 v7, v20

    #@17c
    .line 269
    :goto_17c
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    #@17f
    move-result-wide v6

    #@180
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    #@182
    add-double/2addr v6, v13

    #@183
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    #@186
    move-result-wide v6

    #@187
    const-wide v13, 0x400e666666666666L    # 3.8

    #@18c
    add-double/2addr v6, v13

    #@18d
    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    #@18f
    mul-double/2addr v6, v13

    #@190
    const-wide v13, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    #@195
    mul-double/2addr v6, v13

    #@196
    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNc()D

    #@199
    move-result-wide v13

    #@19a
    mul-double/2addr v6, v13

    #@19b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNcb()D

    #@19e
    move-result-wide v13

    #@19f
    mul-double/2addr v6, v13

    #@1a0
    .line 271
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    #@1a3
    move-result-wide v4

    #@1a4
    mul-double/2addr v6, v4

    #@1a5
    const-wide v4, 0x3fd3851eb851eb85L    # 0.305

    #@1aa
    add-double v17, v17, v4

    #@1ac
    div-double v6, v6, v17

    #@1ae
    const-wide v4, 0x3fd28f5c28f5c28fL    # 0.29

    #@1b3
    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getN()D

    #@1b6
    move-result-wide v11

    #@1b7
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@1ba
    move-result-wide v4

    #@1bb
    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    #@1c0
    sub-double/2addr v11, v4

    #@1c1
    const-wide v4, 0x3fe75c28f5c28f5cL    # 0.73

    #@1c6
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@1c9
    move-result-wide v4

    #@1ca
    const-wide v11, 0x3feccccccccccccdL    # 0.9

    #@1cf
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    #@1d2
    move-result-wide v6

    #@1d3
    mul-double/2addr v4, v6

    #@1d4
    .line 275
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    #@1d7
    move-result-wide v6

    #@1d8
    mul-double/2addr v6, v4

    #@1d9
    move-wide/from16 v22, v6

    #@1db
    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    #@1de
    move-result-wide v8

    #@1df
    mul-double/2addr v6, v8

    #@1e0
    move-wide/from16 v28, v6

    #@1e2
    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    #@1e5
    move-result-wide v8

    #@1e6
    mul-double/2addr v4, v8

    #@1e7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    #@1ea
    move-result-wide v8

    #@1eb
    add-double/2addr v8, v15

    #@1ec
    div-double/2addr v4, v8

    #@1ed
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@1f0
    move-result-wide v4

    #@1f1
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    #@1f3
    mul-double v30, v4, v8

    #@1f5
    const-wide v4, 0x3ffb333333333334L    # 1.7000000000000002

    #@1fa
    mul-double/2addr v4, v0

    #@1fb
    const-wide v8, 0x3f7cac083126e979L    # 0.007

    #@200
    mul-double/2addr v8, v0

    #@201
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@203
    add-double/2addr v8, v10

    #@204
    div-double v32, v4, v8

    #@206
    const-wide v4, 0x3f9758e219652bd4L    # 0.0228

    #@20b
    mul-double/2addr v6, v4

    #@20c
    .line 282
    invoke-static {v6, v7}, Ljava/lang/Math;->log1p(D)D

    #@20f
    move-result-wide v4

    #@210
    const-wide v6, 0x4045ee08fb823ee0L    # 43.859649122807014

    #@215
    mul-double/2addr v4, v6

    #@216
    .line 283
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@219
    move-result-wide v6

    #@21a
    mul-double v34, v4, v6

    #@21c
    .line 284
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@21f
    move-result-wide v2

    #@220
    mul-double v36, v4, v2

    #@222
    .line 286
    new-instance v2, Lcom/google/android/material/color/utilities/Cam16;

    #@224
    move-object/from16 v19, v2

    #@226
    move-wide/from16 v24, v0

    #@228
    invoke-direct/range {v19 .. v37}, Lcom/google/android/material/color/utilities/Cam16;-><init>(DDDDDDDDD)V

    #@22b
    return-object v2
.end method

.method static fromJch(DDD)Lcom/google/android/material/color/utilities/Cam16;
    .registers 13

    #@0
    .line 295
    sget-object v6, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    #@2
    move-wide v0, p0

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method private static fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .registers 30

    #@0
    move-wide/from16 v5, p0

    #@2
    move-wide/from16 v3, p2

    #@4
    move-wide/from16 v1, p4

    #@6
    .line 308
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    #@9
    move-result-wide v7

    #@a
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    #@c
    div-double v7, v11, v7

    #@e
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    #@10
    div-double v13, p0, v9

    #@12
    .line 309
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    #@15
    move-result-wide v9

    #@16
    mul-double/2addr v7, v9

    #@17
    .line 310
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    #@1a
    move-result-wide v9

    #@1b
    add-double/2addr v9, v11

    #@1c
    mul-double/2addr v7, v9

    #@1d
    .line 311
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    #@20
    move-result-wide v9

    #@21
    mul-double/2addr v7, v9

    #@22
    .line 312
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    #@25
    move-result-wide v9

    #@26
    mul-double v15, p2, v9

    #@28
    move-wide v9, v15

    #@29
    .line 313
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    #@2c
    move-result-wide v13

    #@2d
    div-double v13, p2, v13

    #@2f
    .line 315
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    #@32
    move-result-wide v17

    #@33
    mul-double v13, v13, v17

    #@35
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    #@38
    move-result-wide v17

    #@39
    add-double v17, v17, v11

    #@3b
    div-double v13, v13, v17

    #@3d
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    #@40
    move-result-wide v11

    #@41
    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    #@43
    mul-double/2addr v11, v13

    #@44
    .line 317
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    #@47
    move-result-wide v17

    #@48
    const-wide v13, 0x3ffb333333333334L    # 1.7000000000000002

    #@4d
    mul-double v13, v13, p0

    #@4f
    const-wide v19, 0x3f7cac083126e979L    # 0.007

    #@54
    mul-double v19, v19, p0

    #@56
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    #@58
    add-double v19, v19, v21

    #@5a
    div-double v13, v13, v19

    #@5c
    const-wide v19, 0x3f9758e219652bd4L    # 0.0228

    #@61
    mul-double v15, v15, v19

    #@63
    .line 319
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log1p(D)D

    #@66
    move-result-wide v15

    #@67
    const-wide v19, 0x4045ee08fb823ee0L    # 43.859649122807014

    #@6c
    mul-double v19, v19, v15

    #@6e
    .line 320
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    #@71
    move-result-wide v15

    #@72
    mul-double v15, v15, v19

    #@74
    .line 321
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    #@77
    move-result-wide v17

    #@78
    mul-double v17, v17, v19

    #@7a
    .line 322
    new-instance v19, Lcom/google/android/material/color/utilities/Cam16;

    #@7c
    move-object/from16 v0, v19

    #@7e
    invoke-direct/range {v0 .. v18}, Lcom/google/android/material/color/utilities/Cam16;-><init>(DDDDDDDDD)V

    #@81
    return-object v19
.end method

.method public static fromUcs(DDD)Lcom/google/android/material/color/utilities/Cam16;
    .registers 13

    #@0
    .line 336
    sget-object v6, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    #@2
    move-wide v0, p0

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->fromUcsInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static fromUcsInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .registers 18

    #@0
    .line 352
    invoke-static/range {p2 .. p5}, Ljava/lang/Math;->hypot(DD)D

    #@3
    move-result-wide v0

    #@4
    const-wide v2, 0x3f9758e219652bd4L    # 0.0228

    #@9
    mul-double/2addr v0, v2

    #@a
    .line 353
    invoke-static {v0, v1}, Ljava/lang/Math;->expm1(D)D

    #@d
    move-result-wide v0

    #@e
    div-double/2addr v0, v2

    #@f
    .line 354
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    #@12
    move-result-wide v2

    #@13
    div-double v6, v0, v2

    #@15
    move-wide v0, p2

    #@16
    move-wide v2, p4

    #@17
    .line 355
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    #@1a
    move-result-wide v0

    #@1b
    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    #@20
    mul-double/2addr v0, v2

    #@21
    const-wide/16 v2, 0x0

    #@23
    cmpg-double v2, v0, v2

    #@25
    if-gez v2, :cond_2d

    #@27
    const-wide v2, 0x4076800000000000L    # 360.0

    #@2c
    add-double/2addr v0, v2

    #@2d
    :cond_2d
    move-wide v8, v0

    #@2e
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@30
    sub-double v0, p0, v0

    #@32
    const-wide v2, 0x3f7cac083126e979L    # 0.007

    #@37
    mul-double/2addr v0, v2

    #@38
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@3a
    sub-double/2addr v2, v0

    #@3b
    div-double v4, p0, v2

    #@3d
    move-object/from16 v10, p6

    #@3f
    .line 360
    invoke-static/range {v4 .. v10}, Lcom/google/android/material/color/utilities/Cam16;->fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method


# virtual methods
.method distance(Lcom/google/android/material/color/utilities/Cam16;)D
    .registers 10

    #@0
    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    #@7
    move-result-wide v2

    #@8
    sub-double/2addr v0, v2

    #@9
    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    #@c
    move-result-wide v2

    #@d
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    #@10
    move-result-wide v4

    #@11
    sub-double/2addr v2, v4

    #@12
    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    #@15
    move-result-wide v4

    #@16
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    #@19
    move-result-wide v6

    #@1a
    sub-double/2addr v4, v6

    #@1b
    mul-double/2addr v0, v0

    #@1c
    mul-double/2addr v2, v2

    #@1d
    add-double/2addr v0, v2

    #@1e
    mul-double/2addr v4, v4

    #@1f
    add-double/2addr v0, v4

    #@20
    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@23
    move-result-wide v0

    #@24
    const-wide v2, 0x3fe428f5c28f5c29L    # 0.63

    #@29
    .line 80
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@2c
    move-result-wide v0

    #@2d
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    #@32
    mul-double/2addr v0, v2

    #@33
    return-wide v0
.end method

.method public getAstar()D
    .registers 3

    #@0
    .line 137
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->astar:D

    #@2
    return-wide v0
.end method

.method public getBstar()D
    .registers 3

    #@0
    .line 142
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->bstar:D

    #@2
    return-wide v0
.end method

.method public getChroma()D
    .registers 3

    #@0
    .line 91
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    #@2
    return-wide v0
.end method

.method public getHue()D
    .registers 3

    #@0
    .line 86
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    #@2
    return-wide v0
.end method

.method public getJ()D
    .registers 3

    #@0
    .line 96
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->j:D

    #@2
    return-wide v0
.end method

.method public getJstar()D
    .registers 3

    #@0
    .line 132
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->jstar:D

    #@2
    return-wide v0
.end method

.method public getM()D
    .registers 3

    #@0
    .line 117
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->m:D

    #@2
    return-wide v0
.end method

.method public getQ()D
    .registers 3

    #@0
    .line 107
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->q:D

    #@2
    return-wide v0
.end method

.method public getS()D
    .registers 3

    #@0
    .line 127
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->s:D

    #@2
    return-wide v0
.end method

.method public toInt()I
    .registers 2

    #@0
    .line 368
    sget-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/Cam16;->viewed(Lcom/google/android/material/color/utilities/ViewingConditions;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method viewed(Lcom/google/android/material/color/utilities/ViewingConditions;)I
    .registers 24

    #@0
    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmpl-double v0, v0, v2

    #@8
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    #@a
    if-eqz v0, :cond_24

    #@c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    #@f
    move-result-wide v0

    #@10
    cmpl-double v0, v0, v2

    #@12
    if-nez v0, :cond_15

    #@14
    goto :goto_24

    #@15
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    #@18
    move-result-wide v0

    #@19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    #@1c
    move-result-wide v6

    #@1d
    div-double/2addr v6, v4

    #@1e
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@21
    move-result-wide v6

    #@22
    div-double/2addr v0, v6

    #@23
    goto :goto_25

    #@24
    :cond_24
    :goto_24
    move-wide v0, v2

    #@25
    :goto_25
    const-wide v6, 0x3fd28f5c28f5c28fL    # 0.29

    #@2a
    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getN()D

    #@2d
    move-result-wide v8

    #@2e
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@31
    move-result-wide v6

    #@32
    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    #@37
    sub-double/2addr v8, v6

    #@38
    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    #@3d
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@40
    move-result-wide v6

    #@41
    div-double/2addr v0, v6

    #@42
    const-wide v6, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    #@47
    .line 382
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@4a
    move-result-wide v0

    #@4b
    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    #@4e
    move-result-wide v6

    #@4f
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    #@52
    move-result-wide v6

    #@53
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@55
    add-double/2addr v8, v6

    #@56
    .line 386
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    #@59
    move-result-wide v8

    #@5a
    const-wide v10, 0x400e666666666666L    # 3.8

    #@5f
    add-double/2addr v8, v10

    #@60
    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    #@62
    mul-double/2addr v8, v10

    #@63
    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    #@66
    move-result-wide v10

    #@67
    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    #@6a
    move-result-wide v12

    #@6b
    div-double/2addr v12, v4

    #@6c
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    #@6e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    #@71
    move-result-wide v16

    #@72
    div-double v14, v14, v16

    #@74
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getZ()D

    #@77
    move-result-wide v16

    #@78
    div-double v14, v14, v16

    #@7a
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    #@7d
    move-result-wide v12

    #@7e
    mul-double/2addr v10, v12

    #@7f
    const-wide v12, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    #@84
    mul-double/2addr v8, v12

    #@85
    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNc()D

    #@88
    move-result-wide v12

    #@89
    mul-double/2addr v8, v12

    #@8a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNcb()D

    #@8d
    move-result-wide v12

    #@8e
    mul-double/2addr v8, v12

    #@8f
    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNbb()D

    #@92
    move-result-wide v12

    #@93
    div-double/2addr v10, v12

    #@94
    .line 393
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    #@97
    move-result-wide v12

    #@98
    .line 394
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    #@9b
    move-result-wide v6

    #@9c
    const-wide v14, 0x3fd3851eb851eb85L    # 0.305

    #@a1
    add-double/2addr v14, v10

    #@a2
    const-wide/high16 v16, 0x4037000000000000L    # 23.0

    #@a4
    mul-double v14, v14, v16

    #@a6
    mul-double/2addr v14, v0

    #@a7
    mul-double v8, v8, v16

    #@a9
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    #@ab
    mul-double v16, v16, v0

    #@ad
    mul-double v16, v16, v6

    #@af
    add-double v8, v8, v16

    #@b1
    const-wide/high16 v16, 0x405b000000000000L    # 108.0

    #@b3
    mul-double v0, v0, v16

    #@b5
    mul-double/2addr v0, v12

    #@b6
    add-double/2addr v8, v0

    #@b7
    div-double/2addr v14, v8

    #@b8
    mul-double/2addr v6, v14

    #@b9
    mul-double/2addr v14, v12

    #@ba
    const-wide v0, 0x407cc00000000000L    # 460.0

    #@bf
    mul-double/2addr v10, v0

    #@c0
    const-wide v0, 0x407c300000000000L    # 451.0

    #@c5
    mul-double/2addr v0, v6

    #@c6
    add-double/2addr v0, v10

    #@c7
    const-wide/high16 v8, 0x4072000000000000L    # 288.0

    #@c9
    mul-double/2addr v8, v14

    #@ca
    add-double/2addr v0, v8

    #@cb
    const-wide v8, 0x4095ec0000000000L    # 1403.0

    #@d0
    div-double/2addr v0, v8

    #@d1
    const-wide v12, 0x408bd80000000000L    # 891.0

    #@d6
    mul-double/2addr v12, v6

    #@d7
    sub-double v12, v10, v12

    #@d9
    const-wide v16, 0x4070500000000000L    # 261.0

    #@de
    mul-double v16, v16, v14

    #@e0
    sub-double v12, v12, v16

    #@e2
    div-double/2addr v12, v8

    #@e3
    const-wide v16, 0x406b800000000000L    # 220.0

    #@e8
    mul-double v6, v6, v16

    #@ea
    sub-double/2addr v10, v6

    #@eb
    const-wide v6, 0x40b89c0000000000L    # 6300.0

    #@f0
    mul-double/2addr v14, v6

    #@f1
    sub-double/2addr v10, v14

    #@f2
    div-double/2addr v10, v8

    #@f3
    .line 403
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    #@f6
    move-result-wide v6

    #@f7
    const-wide v8, 0x403b2147ae147ae1L    # 27.13

    #@fc
    mul-double/2addr v6, v8

    #@fd
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    #@100
    move-result-wide v14

    #@101
    const-wide/high16 v16, 0x4079000000000000L    # 400.0

    #@103
    sub-double v14, v16, v14

    #@105
    div-double/2addr v6, v14

    #@106
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    #@109
    move-result-wide v6

    #@10a
    .line 405
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    #@10d
    move-result-wide v0

    #@10e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    #@111
    move-result-wide v14

    #@112
    div-double v14, v4, v14

    #@114
    mul-double/2addr v0, v14

    #@115
    const-wide v14, 0x40030c30c30c30c3L    # 2.380952380952381

    #@11a
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->pow(DD)D

    #@11d
    move-result-wide v6

    #@11e
    mul-double/2addr v0, v6

    #@11f
    .line 406
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    #@122
    move-result-wide v6

    #@123
    mul-double/2addr v6, v8

    #@124
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    #@127
    move-result-wide v18

    #@128
    sub-double v18, v16, v18

    #@12a
    div-double v6, v6, v18

    #@12c
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    #@12f
    move-result-wide v6

    #@130
    .line 408
    invoke-static {v12, v13}, Ljava/lang/Math;->signum(D)D

    #@133
    move-result-wide v12

    #@134
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    #@137
    move-result-wide v18

    #@138
    div-double v18, v4, v18

    #@13a
    mul-double v12, v12, v18

    #@13c
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->pow(DD)D

    #@13f
    move-result-wide v6

    #@140
    mul-double/2addr v12, v6

    #@141
    .line 409
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    #@144
    move-result-wide v6

    #@145
    mul-double/2addr v6, v8

    #@146
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    #@149
    move-result-wide v8

    #@14a
    sub-double v16, v16, v8

    #@14c
    div-double v6, v6, v16

    #@14e
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    #@151
    move-result-wide v2

    #@152
    .line 411
    invoke-static {v10, v11}, Ljava/lang/Math;->signum(D)D

    #@155
    move-result-wide v6

    #@156
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    #@159
    move-result-wide v8

    #@15a
    div-double/2addr v4, v8

    #@15b
    mul-double/2addr v6, v4

    #@15c
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    #@15f
    move-result-wide v2

    #@160
    mul-double/2addr v6, v2

    #@161
    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    #@164
    move-result-object v2

    #@165
    const/4 v3, 0x0

    #@166
    aget-wide v4, v2, v3

    #@168
    div-double/2addr v0, v4

    #@169
    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    #@16c
    move-result-object v2

    #@16d
    const/4 v4, 0x1

    #@16e
    aget-wide v8, v2, v4

    #@170
    div-double/2addr v12, v8

    #@171
    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    #@174
    move-result-object v2

    #@175
    const/4 v5, 0x2

    #@176
    aget-wide v8, v2, v5

    #@178
    div-double/2addr v6, v8

    #@179
    .line 416
    sget-object v2, Lcom/google/android/material/color/utilities/Cam16;->CAM16RGB_TO_XYZ:[[D

    #@17b
    .line 417
    aget-object v8, v2, v3

    #@17d
    aget-wide v9, v8, v3

    #@17f
    mul-double/2addr v9, v0

    #@180
    aget-wide v14, v8, v4

    #@182
    mul-double/2addr v14, v12

    #@183
    add-double/2addr v9, v14

    #@184
    aget-wide v14, v8, v5

    #@186
    mul-double/2addr v14, v6

    #@187
    add-double v16, v9, v14

    #@189
    .line 418
    aget-object v8, v2, v4

    #@18b
    aget-wide v9, v8, v3

    #@18d
    mul-double/2addr v9, v0

    #@18e
    aget-wide v14, v8, v4

    #@190
    mul-double/2addr v14, v12

    #@191
    add-double/2addr v9, v14

    #@192
    aget-wide v14, v8, v5

    #@194
    mul-double/2addr v14, v6

    #@195
    add-double v18, v9, v14

    #@197
    .line 419
    aget-object v2, v2, v5

    #@199
    aget-wide v8, v2, v3

    #@19b
    mul-double/2addr v0, v8

    #@19c
    aget-wide v3, v2, v4

    #@19e
    mul-double/2addr v12, v3

    #@19f
    add-double/2addr v0, v12

    #@1a0
    aget-wide v3, v2, v5

    #@1a2
    mul-double/2addr v6, v3

    #@1a3
    add-double v20, v0, v6

    #@1a5
    .line 421
    invoke-static/range {v16 .. v21}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromXyz(DDD)I

    #@1a8
    move-result v0

    #@1a9
    return v0
.end method
