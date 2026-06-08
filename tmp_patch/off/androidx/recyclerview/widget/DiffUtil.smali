.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 84
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    #@2
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    #@5
    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 105
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .registers 17

    #@0
    .line 123
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    #@3
    move-result v0

    #@4
    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    #@7
    move-result v1

    #@8
    .line 126
    new-instance v4, Ljava/util/ArrayList;

    #@a
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 130
    new-instance v2, Ljava/util/ArrayList;

    #@f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 132
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    #@14
    const/4 v5, 0x0

    #@15
    invoke-direct {v3, v5, v0, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    #@18
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    add-int v3, v0, v1

    #@1d
    sub-int/2addr v0, v1

    #@1e
    .line 134
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@21
    move-result v0

    #@22
    add-int/2addr v3, v0

    #@23
    mul-int/lit8 v0, v3, 0x2

    #@25
    .line 138
    new-array v1, v0, [I

    #@27
    .line 139
    new-array v0, v0, [I

    #@29
    .line 142
    new-instance v13, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 143
    :goto_2e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_f3

    #@34
    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@37
    move-result v5

    #@38
    add-int/lit8 v5, v5, -0x1

    #@3a
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3d
    move-result-object v5

    #@3e
    move-object v14, v5

    #@3f
    check-cast v14, Landroidx/recyclerview/widget/DiffUtil$Range;

    #@41
    .line 145
    iget v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    #@43
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    #@45
    iget v8, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    #@47
    iget v9, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    #@49
    move-object v5, p0

    #@4a
    move-object v10, v1

    #@4b
    move-object v11, v0

    #@4c
    move v12, v3

    #@4d
    invoke-static/range {v5 .. v12}, Landroidx/recyclerview/widget/DiffUtil;->diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@50
    move-result-object v5

    #@51
    if-eqz v5, :cond_ee

    #@53
    .line 148
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@55
    if-lez v6, :cond_5a

    #@57
    .line 149
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    .line 152
    :cond_5a
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@5c
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    #@5e
    add-int/2addr v6, v7

    #@5f
    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@61
    .line 153
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@63
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    #@65
    add-int/2addr v6, v7

    #@66
    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@68
    .line 156
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    #@6b
    move-result v6

    #@6c
    if-eqz v6, :cond_74

    #@6e
    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    #@70
    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    #@73
    goto :goto_80

    #@74
    .line 157
    :cond_74
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@77
    move-result v6

    #@78
    add-int/lit8 v6, v6, -0x1

    #@7a
    .line 156
    invoke-interface {v13, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@7d
    move-result-object v6

    #@7e
    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    #@80
    .line 158
    :goto_80
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    #@82
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    #@84
    .line 159
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    #@86
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    #@88
    .line 160
    iget-boolean v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    #@8a
    if-eqz v7, :cond_95

    #@8c
    .line 161
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@8e
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    #@90
    .line 162
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@92
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    #@94
    goto :goto_ae

    #@95
    .line 164
    :cond_95
    iget-boolean v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    #@97
    if-eqz v7, :cond_a4

    #@99
    .line 165
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@9b
    add-int/lit8 v7, v7, -0x1

    #@9d
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    #@9f
    .line 166
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@a1
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    #@a3
    goto :goto_ae

    #@a4
    .line 168
    :cond_a4
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@a6
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    #@a8
    .line 169
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@aa
    add-int/lit8 v7, v7, -0x1

    #@ac
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    #@ae
    .line 172
    :goto_ae
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b1
    .line 177
    iget-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    #@b3
    if-eqz v6, :cond_db

    #@b5
    .line 178
    iget-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    #@b7
    if-eqz v6, :cond_ca

    #@b9
    .line 179
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@bb
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@bd
    add-int/2addr v6, v7

    #@be
    add-int/lit8 v6, v6, 0x1

    #@c0
    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    #@c2
    .line 180
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@c4
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@c6
    add-int/2addr v6, v5

    #@c7
    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    #@c9
    goto :goto_e9

    #@ca
    .line 182
    :cond_ca
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@cc
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@ce
    add-int/2addr v6, v7

    #@cf
    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    #@d1
    .line 183
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@d3
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@d5
    add-int/2addr v6, v5

    #@d6
    add-int/lit8 v6, v6, 0x1

    #@d8
    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    #@da
    goto :goto_e9

    #@db
    .line 186
    :cond_db
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@dd
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@df
    add-int/2addr v6, v7

    #@e0
    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    #@e2
    .line 187
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@e4
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@e6
    add-int/2addr v6, v5

    #@e7
    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    #@e9
    .line 189
    :goto_e9
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ec
    goto/16 :goto_2e

    #@ee
    .line 191
    :cond_ee
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f1
    goto/16 :goto_2e

    #@f3
    .line 196
    :cond_f3
    sget-object v2, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    #@f5
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@f8
    .line 198
    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    #@fa
    move-object v2, v8

    #@fb
    move-object v3, p0

    #@fc
    move-object v5, v1

    #@fd
    move-object v6, v0

    #@fe
    move/from16 v7, p1

    #@100
    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    #@103
    return-object v8
.end method

.method private static diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p5

    #@4
    move-object/from16 v2, p6

    #@6
    sub-int v3, p2, p1

    #@8
    sub-int v4, p4, p3

    #@a
    const/4 v5, 0x1

    #@b
    if-lt v3, v5, :cond_12f

    #@d
    if-ge v4, v5, :cond_11

    #@f
    goto/16 :goto_12f

    #@11
    :cond_11
    sub-int v6, v3, v4

    #@13
    add-int v7, v3, v4

    #@15
    add-int/2addr v7, v5

    #@16
    .line 212
    div-int/lit8 v7, v7, 0x2

    #@18
    sub-int v8, p7, v7

    #@1a
    sub-int/2addr v8, v5

    #@1b
    add-int v9, p7, v7

    #@1d
    add-int/2addr v9, v5

    #@1e
    const/4 v10, 0x0

    #@1f
    .line 213
    invoke-static {v1, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    #@22
    add-int/2addr v8, v6

    #@23
    add-int/2addr v9, v6

    #@24
    .line 214
    invoke-static {v2, v8, v9, v3}, Ljava/util/Arrays;->fill([IIII)V

    #@27
    .line 215
    rem-int/lit8 v8, v6, 0x2

    #@29
    if-eqz v8, :cond_2d

    #@2b
    move v8, v5

    #@2c
    goto :goto_2e

    #@2d
    :cond_2d
    move v8, v10

    #@2e
    :goto_2e
    move v9, v10

    #@2f
    :goto_2f
    if-gt v9, v7, :cond_127

    #@31
    neg-int v11, v9

    #@32
    move v12, v11

    #@33
    :goto_33
    if-gt v12, v9, :cond_a0

    #@35
    if-eq v12, v11, :cond_4d

    #@37
    if-eq v12, v9, :cond_45

    #@39
    add-int v13, p7, v12

    #@3b
    add-int/lit8 v14, v13, -0x1

    #@3d
    .line 222
    aget v14, v1, v14

    #@3f
    add-int/2addr v13, v5

    #@40
    aget v13, v1, v13

    #@42
    if-ge v14, v13, :cond_45

    #@44
    goto :goto_4d

    #@45
    :cond_45
    add-int v13, p7, v12

    #@47
    sub-int/2addr v13, v5

    #@48
    .line 226
    aget v13, v1, v13

    #@4a
    add-int/2addr v13, v5

    #@4b
    move v14, v5

    #@4c
    goto :goto_53

    #@4d
    :cond_4d
    :goto_4d
    add-int v13, p7, v12

    #@4f
    add-int/2addr v13, v5

    #@50
    .line 223
    aget v13, v1, v13

    #@52
    move v14, v10

    #@53
    :goto_53
    sub-int v15, v13, v12

    #@55
    :goto_55
    if-ge v13, v3, :cond_6a

    #@57
    if-ge v15, v4, :cond_6a

    #@59
    add-int v10, p1, v13

    #@5b
    add-int v5, p3, v15

    #@5d
    .line 233
    invoke-virtual {v0, v10, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    #@60
    move-result v5

    #@61
    if-eqz v5, :cond_6a

    #@63
    add-int/lit8 v13, v13, 0x1

    #@65
    add-int/lit8 v15, v15, 0x1

    #@67
    const/4 v5, 0x1

    #@68
    const/4 v10, 0x0

    #@69
    goto :goto_55

    #@6a
    :cond_6a
    add-int v5, p7, v12

    #@6c
    .line 237
    aput v13, v1, v5

    #@6e
    if-eqz v8, :cond_9a

    #@70
    sub-int v10, v6, v9

    #@72
    const/4 v15, 0x1

    #@73
    add-int/2addr v10, v15

    #@74
    if-lt v12, v10, :cond_9a

    #@76
    add-int v10, v6, v9

    #@78
    sub-int/2addr v10, v15

    #@79
    if-gt v12, v10, :cond_9a

    #@7b
    .line 239
    aget v10, v2, v5

    #@7d
    if-lt v13, v10, :cond_9a

    #@7f
    .line 240
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@81
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    #@84
    .line 241
    aget v3, v2, v5

    #@86
    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@88
    .line 242
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@8a
    sub-int/2addr v3, v12

    #@8b
    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@8d
    .line 243
    aget v1, v1, v5

    #@8f
    aget v2, v2, v5

    #@91
    sub-int/2addr v1, v2

    #@92
    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@94
    .line 244
    iput-boolean v14, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    #@96
    const/4 v15, 0x0

    #@97
    .line 245
    iput-boolean v15, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    #@99
    return-object v0

    #@9a
    :cond_9a
    const/4 v15, 0x0

    #@9b
    add-int/lit8 v12, v12, 0x2

    #@9d
    move v10, v15

    #@9e
    const/4 v5, 0x1

    #@9f
    goto :goto_33

    #@a0
    :cond_a0
    move v15, v10

    #@a1
    move v5, v11

    #@a2
    :goto_a2
    if-gt v5, v9, :cond_11c

    #@a4
    add-int v10, v5, v6

    #@a6
    add-int v12, v9, v6

    #@a8
    if-eq v10, v12, :cond_c4

    #@aa
    add-int v12, v11, v6

    #@ac
    if-eq v10, v12, :cond_bb

    #@ae
    add-int v12, p7, v10

    #@b0
    add-int/lit8 v13, v12, -0x1

    #@b2
    .line 255
    aget v13, v2, v13

    #@b4
    const/4 v14, 0x1

    #@b5
    add-int/2addr v12, v14

    #@b6
    aget v12, v2, v12

    #@b8
    if-ge v13, v12, :cond_bc

    #@ba
    goto :goto_c5

    #@bb
    :cond_bb
    const/4 v14, 0x1

    #@bc
    :cond_bc
    add-int v12, p7, v10

    #@be
    add-int/2addr v12, v14

    #@bf
    .line 260
    aget v12, v2, v12

    #@c1
    sub-int/2addr v12, v14

    #@c2
    move v13, v14

    #@c3
    goto :goto_cb

    #@c4
    :cond_c4
    const/4 v14, 0x1

    #@c5
    :goto_c5
    add-int v12, p7, v10

    #@c7
    sub-int/2addr v12, v14

    #@c8
    .line 257
    aget v12, v2, v12

    #@ca
    move v13, v15

    #@cb
    :goto_cb
    sub-int v16, v12, v10

    #@cd
    :goto_cd
    if-lez v12, :cond_ea

    #@cf
    if-lez v16, :cond_ea

    #@d1
    add-int v17, p1, v12

    #@d3
    add-int/lit8 v15, v17, -0x1

    #@d5
    add-int v17, p3, v16

    #@d7
    move/from16 v18, v3

    #@d9
    add-int/lit8 v3, v17, -0x1

    #@db
    .line 268
    invoke-virtual {v0, v15, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    #@de
    move-result v3

    #@df
    if-eqz v3, :cond_ec

    #@e1
    add-int/lit8 v12, v12, -0x1

    #@e3
    add-int/lit8 v16, v16, -0x1

    #@e5
    move/from16 v3, v18

    #@e7
    const/4 v14, 0x1

    #@e8
    const/4 v15, 0x0

    #@e9
    goto :goto_cd

    #@ea
    :cond_ea
    move/from16 v18, v3

    #@ec
    :cond_ec
    add-int v3, p7, v10

    #@ee
    .line 272
    aput v12, v2, v3

    #@f0
    if-nez v8, :cond_115

    #@f2
    if-lt v10, v11, :cond_115

    #@f4
    if-gt v10, v9, :cond_115

    #@f6
    .line 274
    aget v14, v1, v3

    #@f8
    if-lt v14, v12, :cond_115

    #@fa
    .line 275
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@fc
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    #@ff
    .line 276
    aget v4, v2, v3

    #@101
    iput v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@103
    .line 277
    iget v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@105
    sub-int/2addr v4, v10

    #@106
    iput v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@108
    .line 278
    aget v1, v1, v3

    #@10a
    aget v2, v2, v3

    #@10c
    sub-int/2addr v1, v2

    #@10d
    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    #@10f
    .line 280
    iput-boolean v13, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    #@111
    const/4 v3, 0x1

    #@112
    .line 281
    iput-boolean v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    #@114
    return-object v0

    #@115
    :cond_115
    const/4 v3, 0x1

    #@116
    add-int/lit8 v5, v5, 0x2

    #@118
    move/from16 v3, v18

    #@11a
    const/4 v15, 0x0

    #@11b
    goto :goto_a2

    #@11c
    :cond_11c
    move/from16 v18, v3

    #@11e
    const/4 v3, 0x1

    #@11f
    add-int/lit8 v9, v9, 0x1

    #@121
    move v5, v3

    #@122
    move/from16 v3, v18

    #@124
    const/4 v10, 0x0

    #@125
    goto/16 :goto_2f

    #@127
    .line 287
    :cond_127
    new-instance v0, Ljava/lang/IllegalStateException;

    #@129
    const-string v1, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    #@12b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12e
    throw v0

    #@12f
    :cond_12f
    :goto_12f
    const/4 v0, 0x0

    #@130
    return-object v0
.end method
