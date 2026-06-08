.class public final Lcom/google/android/material/color/utilities/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;


# instance fields
.field private final aw:D

.field private final c:D

.field private final fl:D

.field private final flRoot:D

.field private final n:D

.field private final nbb:D

.field private final nc:D

.field private final ncb:D

.field private final rgbD:[D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [D

    #@3
    .line 42
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    #@6
    move-result-object v0

    #@7
    const/4 v2, 0x0

    #@8
    aget-wide v3, v0, v2

    #@a
    aput-wide v3, v1, v2

    #@c
    .line 43
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    #@f
    move-result-object v0

    #@10
    const/4 v2, 0x1

    #@11
    aget-wide v3, v0, v2

    #@13
    aput-wide v3, v1, v2

    #@15
    .line 44
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    #@18
    move-result-object v0

    #@19
    const/4 v2, 0x2

    #@1a
    aget-wide v3, v0, v2

    #@1c
    aput-wide v3, v1, v2

    #@1e
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    #@20
    .line 46
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    #@23
    move-result-wide v2

    #@24
    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    #@29
    mul-double/2addr v2, v4

    #@2a
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    #@2c
    div-double/2addr v2, v4

    #@2d
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    #@2f
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    #@31
    const/4 v8, 0x0

    #@32
    .line 40
    invoke-static/range {v1 .. v8}, Lcom/google/android/material/color/utilities/ViewingConditions;->make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    #@38
    return-void
.end method

.method private constructor <init>(DDDDDD[DDDD)V
    .registers 23

    #@0
    move-object v0, p0

    #@1
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    move-wide v1, p1

    #@5
    .line 190
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    #@7
    move-wide v1, p3

    #@8
    .line 191
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    #@a
    move-wide v1, p5

    #@b
    .line 192
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    #@d
    move-wide v1, p7

    #@e
    .line 193
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    #@10
    move-wide v1, p9

    #@11
    .line 194
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    #@13
    move-wide v1, p11

    #@14
    .line 195
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    #@16
    move-object/from16 v1, p13

    #@18
    .line 196
    iput-object v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    #@1a
    move-wide/from16 v1, p14

    #@1c
    .line 197
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    #@1e
    move-wide/from16 v1, p16

    #@20
    .line 198
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    #@22
    move-wide/from16 v1, p18

    #@24
    .line 199
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    #@26
    return-void
.end method

.method static make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;
    .registers 47

    #@0
    move-wide/from16 v0, p1

    #@2
    .line 127
    sget-object v2, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    #@4
    const/4 v3, 0x0

    #@5
    .line 129
    aget-wide v4, p0, v3

    #@7
    aget-object v6, v2, v3

    #@9
    aget-wide v7, v6, v3

    #@b
    mul-double/2addr v7, v4

    #@c
    const/4 v9, 0x1

    #@d
    aget-wide v10, p0, v9

    #@f
    aget-wide v12, v6, v9

    #@11
    mul-double/2addr v12, v10

    #@12
    add-double/2addr v7, v12

    #@13
    const/4 v12, 0x2

    #@14
    aget-wide v13, p0, v12

    #@16
    aget-wide v15, v6, v12

    #@18
    mul-double/2addr v15, v13

    #@19
    add-double/2addr v7, v15

    #@1a
    .line 130
    aget-object v6, v2, v9

    #@1c
    aget-wide v15, v6, v3

    #@1e
    mul-double/2addr v15, v4

    #@1f
    aget-wide v17, v6, v9

    #@21
    mul-double v17, v17, v10

    #@23
    add-double v15, v15, v17

    #@25
    aget-wide v17, v6, v12

    #@27
    mul-double v17, v17, v13

    #@29
    add-double v15, v15, v17

    #@2b
    .line 131
    aget-object v2, v2, v12

    #@2d
    aget-wide v17, v2, v3

    #@2f
    mul-double v4, v4, v17

    #@31
    aget-wide v17, v2, v9

    #@33
    mul-double v10, v10, v17

    #@35
    add-double/2addr v4, v10

    #@36
    aget-wide v10, v2, v12

    #@38
    mul-double/2addr v13, v10

    #@39
    add-double/2addr v4, v13

    #@3a
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    #@3c
    div-double v13, p5, v10

    #@3e
    const-wide v17, 0x3fe999999999999aL    # 0.8

    #@43
    add-double v30, v13, v17

    #@45
    const-wide v13, 0x3feccccccccccccdL    # 0.9

    #@4a
    cmpl-double v2, v30, v13

    #@4c
    if-ltz v2, :cond_61

    #@4e
    const-wide v19, 0x3fe2e147ae147ae1L    # 0.59

    #@53
    const-wide v21, 0x3fe6147ae147ae14L    # 0.69

    #@58
    sub-double v13, v30, v13

    #@5a
    mul-double v23, v13, v10

    #@5c
    .line 135
    invoke-static/range {v19 .. v24}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    #@5f
    move-result-wide v10

    #@60
    goto :goto_75

    #@61
    :cond_61
    const-wide v13, 0x3fe0cccccccccccdL    # 0.525

    #@66
    const-wide v19, 0x3fe2e147ae147ae1L    # 0.59

    #@6b
    sub-double v17, v30, v17

    #@6d
    mul-double v21, v17, v10

    #@6f
    move-wide/from16 v17, v13

    #@71
    .line 136
    invoke-static/range {v17 .. v22}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    #@74
    move-result-wide v10

    #@75
    :goto_75
    move-wide/from16 v28, v10

    #@77
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@79
    if-eqz p7, :cond_7e

    #@7b
    move-wide/from16 v21, v10

    #@7d
    goto :goto_98

    #@7e
    :cond_7e
    neg-double v13, v0

    #@7f
    const-wide/high16 v17, 0x4045000000000000L    # 42.0

    #@81
    sub-double v13, v13, v17

    #@83
    const-wide/high16 v17, 0x4057000000000000L    # 92.0

    #@85
    div-double v13, v13, v17

    #@87
    .line 140
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    #@8a
    move-result-wide v13

    #@8b
    const-wide v17, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    #@90
    mul-double v13, v13, v17

    #@92
    sub-double v13, v10, v13

    #@94
    mul-double v13, v13, v30

    #@96
    move-wide/from16 v21, v13

    #@98
    :goto_98
    const-wide/16 v17, 0x0

    #@9a
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    #@9c
    .line 141
    invoke-static/range {v17 .. v22}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    #@9f
    move-result-wide v13

    #@a0
    const/4 v2, 0x3

    #@a1
    new-array v6, v2, [D

    #@a3
    move-object/from16 v32, v6

    #@a5
    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    #@a7
    div-double v19, v17, v7

    #@a9
    mul-double v19, v19, v13

    #@ab
    add-double v19, v19, v10

    #@ad
    sub-double v19, v19, v13

    #@af
    aput-wide v19, v6, v3

    #@b1
    div-double v19, v17, v15

    #@b3
    mul-double v19, v19, v13

    #@b5
    add-double v19, v19, v10

    #@b7
    sub-double v19, v19, v13

    #@b9
    aput-wide v19, v6, v9

    #@bb
    div-double v19, v17, v4

    #@bd
    mul-double v19, v19, v13

    #@bf
    add-double v19, v19, v10

    #@c1
    sub-double v19, v19, v13

    #@c3
    aput-wide v19, v6, v12

    #@c5
    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    #@c7
    mul-double/2addr v13, v0

    #@c8
    add-double v19, v13, v10

    #@ca
    div-double v19, v10, v19

    #@cc
    mul-double v21, v19, v19

    #@ce
    mul-double v21, v21, v19

    #@d0
    mul-double v21, v21, v19

    #@d2
    sub-double v10, v10, v21

    #@d4
    mul-double v21, v21, v0

    #@d6
    const-wide v0, 0x3fb999999999999aL    # 0.1

    #@db
    mul-double/2addr v0, v10

    #@dc
    mul-double/2addr v0, v10

    #@dd
    .line 150
    invoke-static {v13, v14}, Ljava/lang/Math;->cbrt(D)D

    #@e0
    move-result-wide v10

    #@e1
    mul-double/2addr v0, v10

    #@e2
    add-double v0, v21, v0

    #@e4
    move-wide/from16 v33, v0

    #@e6
    .line 151
    invoke-static/range {p3 .. p4}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    #@e9
    move-result-wide v10

    #@ea
    aget-wide v13, p0, v9

    #@ec
    div-double/2addr v10, v13

    #@ed
    move-wide/from16 v20, v10

    #@ef
    const-wide v13, 0x3ff7ae147ae147aeL    # 1.48

    #@f4
    .line 152
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@f7
    move-result-wide v22

    #@f8
    add-double v37, v22, v13

    #@fa
    const-wide v13, 0x3fc999999999999aL    # 0.2

    #@ff
    .line 153
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    #@102
    move-result-wide v10

    #@103
    const-wide v13, 0x3fe7333333333333L    # 0.725

    #@108
    div-double/2addr v13, v10

    #@109
    move-wide/from16 v24, v13

    #@10b
    move-wide/from16 v26, v13

    #@10d
    new-array v2, v2, [D

    #@10f
    aget-wide v10, v6, v3

    #@111
    mul-double/2addr v10, v0

    #@112
    mul-double/2addr v10, v7

    #@113
    div-double v10, v10, v17

    #@115
    const-wide v7, 0x3fdae147ae147ae1L    # 0.42

    #@11a
    .line 157
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    #@11d
    move-result-wide v10

    #@11e
    aput-wide v10, v2, v3

    #@120
    aget-wide v10, v6, v9

    #@122
    mul-double/2addr v10, v0

    #@123
    mul-double/2addr v10, v15

    #@124
    div-double v10, v10, v17

    #@126
    .line 158
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    #@129
    move-result-wide v10

    #@12a
    aput-wide v10, v2, v9

    #@12c
    aget-wide v10, v6, v12

    #@12e
    mul-double/2addr v10, v0

    #@12f
    mul-double/2addr v10, v4

    #@130
    div-double v10, v10, v17

    #@132
    .line 159
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    #@135
    move-result-wide v4

    #@136
    aput-wide v4, v2, v12

    #@138
    aget-wide v6, v2, v3

    #@13a
    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    #@13c
    mul-double v15, v6, v10

    #@13e
    const-wide v17, 0x403b2147ae147ae1L    # 27.13

    #@143
    add-double v6, v6, v17

    #@145
    div-double/2addr v15, v6

    #@146
    aget-wide v6, v2, v9

    #@148
    mul-double v2, v6, v10

    #@14a
    add-double v6, v6, v17

    #@14c
    div-double/2addr v2, v6

    #@14d
    mul-double/2addr v10, v4

    #@14e
    add-double v4, v4, v17

    #@150
    div-double/2addr v10, v4

    #@151
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    #@153
    mul-double/2addr v15, v4

    #@154
    add-double/2addr v15, v2

    #@155
    const-wide v2, 0x3fa999999999999aL    # 0.05

    #@15a
    mul-double/2addr v10, v2

    #@15b
    add-double/2addr v15, v10

    #@15c
    mul-double v22, v15, v13

    #@15e
    .line 170
    new-instance v2, Lcom/google/android/material/color/utilities/ViewingConditions;

    #@160
    move-object/from16 v19, v2

    #@162
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    #@164
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    #@167
    move-result-wide v35

    #@168
    invoke-direct/range {v19 .. v38}, Lcom/google/android/material/color/utilities/ViewingConditions;-><init>(DDDDDD[DDDD)V

    #@16b
    return-object v2
.end method


# virtual methods
.method public getAw()D
    .registers 3

    #@0
    .line 63
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    #@2
    return-wide v0
.end method

.method getC()D
    .registers 3

    #@0
    .line 79
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    #@2
    return-wide v0
.end method

.method getFl()D
    .registers 3

    #@0
    .line 91
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    #@2
    return-wide v0
.end method

.method public getFlRoot()D
    .registers 3

    #@0
    .line 95
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    #@2
    return-wide v0
.end method

.method public getN()D
    .registers 3

    #@0
    .line 67
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    #@2
    return-wide v0
.end method

.method public getNbb()D
    .registers 3

    #@0
    .line 71
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    #@2
    return-wide v0
.end method

.method getNc()D
    .registers 3

    #@0
    .line 83
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    #@2
    return-wide v0
.end method

.method getNcb()D
    .registers 3

    #@0
    .line 75
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    #@2
    return-wide v0
.end method

.method public getRgbD()[D
    .registers 2

    #@0
    .line 87
    iget-object v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    #@2
    return-object v0
.end method

.method getZ()D
    .registers 3

    #@0
    .line 99
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    #@2
    return-wide v0
.end method
