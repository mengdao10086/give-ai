.class public Landroidx/core/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PathParser$PathDataNode;,
        Landroidx/core/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    #@0
    .line 190
    new-instance v0, Landroidx/core/graphics/PathParser$PathDataNode;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    return-void
.end method

.method public static canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_2c

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_2c

    #@6
    .line 141
    :cond_6
    array-length v1, p0

    #@7
    array-length v2, p1

    #@8
    if-eq v1, v2, :cond_b

    #@a
    return v0

    #@b
    :cond_b
    move v1, v0

    #@c
    .line 145
    :goto_c
    array-length v2, p0

    #@d
    if-ge v1, v2, :cond_2a

    #@f
    .line 146
    aget-object v2, p0, v1

    #@11
    iget-char v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@13
    aget-object v3, p1, v1

    #@15
    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@17
    if-ne v2, v3, :cond_29

    #@19
    aget-object v2, p0, v1

    #@1b
    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@1d
    array-length v2, v2

    #@1e
    aget-object v3, p1, v1

    #@20
    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@22
    array-length v3, v3

    #@23
    if-eq v2, v3, :cond_26

    #@25
    goto :goto_29

    #@26
    :cond_26
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_c

    #@29
    :cond_29
    :goto_29
    return v0

    #@2a
    :cond_2a
    const/4 p0, 0x1

    #@2b
    return p0

    #@2c
    :cond_2c
    :goto_2c
    return v0
.end method

.method static copyOfRange([FII)[F
    .registers 5

    #@0
    if-gt p1, p2, :cond_1a

    #@2
    .line 57
    array-length v0, p0

    #@3
    if-ltz p1, :cond_14

    #@5
    if-gt p1, v0, :cond_14

    #@7
    sub-int/2addr p2, p1

    #@8
    sub-int/2addr v0, p1

    #@9
    .line 62
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v0

    #@d
    .line 63
    new-array p2, p2, [F

    #@f
    const/4 v1, 0x0

    #@10
    .line 64
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@13
    return-object p2

    #@14
    .line 59
    :cond_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@16
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@19
    throw p0

    #@1a
    .line 55
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1f
    throw p0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .registers 8

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 97
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    const/4 v1, 0x1

    #@a
    const/4 v2, 0x0

    #@b
    move v3, v1

    #@c
    move v4, v2

    #@d
    .line 98
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v5

    #@11
    if-ge v3, v5, :cond_36

    #@13
    .line 99
    invoke-static {p0, v3}, Landroidx/core/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    #@16
    move-result v3

    #@17
    .line 100
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@22
    move-result v5

    #@23
    if-lez v5, :cond_30

    #@25
    .line 102
    invoke-static {v4}, Landroidx/core/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    #@28
    move-result-object v5

    #@29
    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v4

    #@2d
    invoke-static {v0, v4, v5}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    #@30
    :cond_30
    add-int/lit8 v4, v3, 0x1

    #@32
    move v6, v4

    #@33
    move v4, v3

    #@34
    move v3, v6

    #@35
    goto :goto_d

    #@36
    :cond_36
    sub-int/2addr v3, v4

    #@37
    if-ne v3, v1, :cond_48

    #@39
    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3c
    move-result v1

    #@3d
    if-ge v4, v1, :cond_48

    #@3f
    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result p0

    #@43
    new-array v1, v2, [F

    #@45
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    #@48
    .line 112
    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4b
    move-result p0

    #@4c
    new-array p0, p0, [Landroidx/core/graphics/PathParser$PathDataNode;

    #@4e
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@51
    move-result-object p0

    #@52
    check-cast p0, [Landroidx/core/graphics/PathParser$PathDataNode;

    #@54
    return-object p0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 5

    #@0
    .line 73
    new-instance v0, Landroid/graphics/Path;

    #@2
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@5
    .line 74
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_25

    #@b
    .line 77
    :try_start_b
    invoke-static {v1, v0}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    #@e
    return-object v0

    #@f
    :catch_f
    move-exception v0

    #@10
    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    const-string v3, "Error in parsing "

    #@16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v1

    #@25
    :cond_25
    const/4 p0, 0x0

    #@26
    return-object p0
.end method

.method public static deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 123
    :cond_4
    array-length v0, p0

    #@5
    new-array v0, v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    #@7
    const/4 v1, 0x0

    #@8
    .line 124
    :goto_8
    array-length v2, p0

    #@9
    if-ge v1, v2, :cond_17

    #@b
    .line 125
    new-instance v2, Landroidx/core/graphics/PathParser$PathDataNode;

    #@d
    aget-object v3, p0, v1

    #@f
    invoke-direct {v2, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(Landroidx/core/graphics/PathParser$PathDataNode;)V

    #@12
    aput-object v2, v0, v1

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_8

    #@17
    :cond_17
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    .line 260
    iput-boolean v0, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    #@3
    move v1, p1

    #@4
    move v2, v0

    #@5
    move v3, v2

    #@6
    move v4, v3

    #@7
    .line 263
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v5

    #@b
    if-ge v1, v5, :cond_3d

    #@d
    .line 266
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v5

    #@11
    const/16 v6, 0x20

    #@13
    const/4 v7, 0x1

    #@14
    if-eq v5, v6, :cond_35

    #@16
    const/16 v6, 0x45

    #@18
    if-eq v5, v6, :cond_33

    #@1a
    const/16 v6, 0x65

    #@1c
    if-eq v5, v6, :cond_33

    #@1e
    packed-switch v5, :pswitch_data_40

    #@21
    goto :goto_31

    #@22
    :pswitch_22
    if-nez v3, :cond_27

    #@24
    move v2, v0

    #@25
    move v3, v7

    #@26
    goto :goto_37

    #@27
    .line 285
    :cond_27
    iput-boolean v7, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    #@29
    goto :goto_35

    #@2a
    :pswitch_2a
    if-eq v1, p1, :cond_31

    #@2c
    if-nez v2, :cond_31

    #@2e
    .line 276
    iput-boolean v7, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    #@30
    goto :goto_35

    #@31
    :cond_31
    :goto_31
    move v2, v0

    #@32
    goto :goto_37

    #@33
    :cond_33
    move v2, v7

    #@34
    goto :goto_37

    #@35
    :cond_35
    :goto_35
    :pswitch_35
    move v2, v0

    #@36
    move v4, v7

    #@37
    :goto_37
    if-eqz v4, :cond_3a

    #@39
    goto :goto_3d

    #@3a
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_7

    #@3d
    .line 299
    :cond_3d
    :goto_3d
    iput v1, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    #@3f
    return-void

    #@40
    :pswitch_data_40
    .packed-switch 0x2c
        :pswitch_35
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v1

    #@5
    const/16 v2, 0x7a

    #@7
    if-eq v1, v2, :cond_63

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    const/16 v2, 0x5a

    #@f
    if-ne v1, v2, :cond_12

    #@11
    goto :goto_63

    #@12
    .line 215
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    new-array v1, v1, [F

    #@18
    .line 220
    new-instance v2, Landroidx/core/graphics/PathParser$ExtractFloatResult;

    #@1a
    invoke-direct {v2}, Landroidx/core/graphics/PathParser$ExtractFloatResult;-><init>()V

    #@1d
    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v3

    #@21
    const/4 v4, 0x1

    #@22
    move v5, v0

    #@23
    :goto_23
    if-ge v4, v3, :cond_42

    #@25
    .line 227
    invoke-static {p0, v4, v2}, Landroidx/core/graphics/PathParser;->extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V

    #@28
    .line 228
    iget v6, v2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    #@2a
    if-ge v4, v6, :cond_39

    #@2c
    add-int/lit8 v7, v5, 0x1

    #@2e
    .line 232
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 231
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@35
    move-result v4

    #@36
    aput v4, v1, v5

    #@38
    move v5, v7

    #@39
    .line 235
    :cond_39
    iget-boolean v4, v2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    #@3b
    if-eqz v4, :cond_3f

    #@3d
    move v4, v6

    #@3e
    goto :goto_23

    #@3f
    :cond_3f
    add-int/lit8 v4, v6, 0x1

    #@41
    goto :goto_23

    #@42
    .line 242
    :cond_42
    invoke-static {v1, v0, v5}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    #@45
    move-result-object p0
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_46} :catch_47

    #@46
    return-object p0

    #@47
    :catch_47
    move-exception v0

    #@48
    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    const-string v3, "error in parsing \""

    #@4e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@51
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object p0

    #@55
    const-string v2, "\""

    #@57
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object p0

    #@5b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object p0

    #@5f
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@62
    throw v1

    #@63
    :cond_63
    :goto_63
    new-array p0, v0, [F

    #@65
    return-object p0
.end method

.method public static interpolatePathDataNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;F)Z
    .registers 8

    #@0
    if-eqz p0, :cond_2f

    #@2
    if-eqz p1, :cond_2f

    #@4
    if-eqz p2, :cond_2f

    #@6
    .line 320
    array-length v0, p0

    #@7
    array-length v1, p1

    #@8
    if-ne v0, v1, :cond_27

    #@a
    array-length v0, p1

    #@b
    array-length v1, p2

    #@c
    if-ne v0, v1, :cond_27

    #@e
    .line 325
    invoke-static {p1, p2}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    #@11
    move-result v0

    #@12
    const/4 v1, 0x0

    #@13
    if-nez v0, :cond_16

    #@15
    return v1

    #@16
    .line 329
    :cond_16
    :goto_16
    array-length v0, p0

    #@17
    if-ge v1, v0, :cond_25

    #@19
    .line 330
    aget-object v0, p0, v1

    #@1b
    aget-object v2, p1, v1

    #@1d
    aget-object v3, p2, v1

    #@1f
    invoke-virtual {v0, v2, v3, p3}, Landroidx/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V

    #@22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_16

    #@25
    :cond_25
    const/4 p0, 0x1

    #@26
    return p0

    #@27
    .line 321
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string p1, "The nodes to be interpolated and resulting nodes must have the same length"

    #@2b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw p0

    #@2f
    .line 316
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@31
    const-string p1, "The nodes to be interpolated and resulting nodes cannot be null"

    #@33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw p0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5

    #@0
    .line 174
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-ge p1, v0, :cond_24

    #@6
    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    add-int/lit8 v1, v0, -0x41

    #@c
    add-int/lit8 v2, v0, -0x5a

    #@e
    mul-int/2addr v1, v2

    #@f
    if-lez v1, :cond_18

    #@11
    add-int/lit8 v1, v0, -0x61

    #@13
    add-int/lit8 v2, v0, -0x7a

    #@15
    mul-int/2addr v1, v2

    #@16
    if-gtz v1, :cond_21

    #@18
    :cond_18
    const/16 v1, 0x65

    #@1a
    if-eq v0, v1, :cond_21

    #@1c
    const/16 v1, 0x45

    #@1e
    if-eq v0, v1, :cond_21

    #@20
    return p1

    #@21
    :cond_21
    add-int/lit8 p1, p1, 0x1

    #@23
    goto :goto_0

    #@24
    :cond_24
    return p1
.end method

.method public static updateNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 163
    :goto_2
    array-length v2, p1

    #@3
    if-ge v1, v2, :cond_27

    #@5
    .line 164
    aget-object v2, p0, v1

    #@7
    aget-object v3, p1, v1

    #@9
    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@b
    iput-char v3, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    #@d
    move v2, v0

    #@e
    .line 165
    :goto_e
    aget-object v3, p1, v1

    #@10
    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@12
    array-length v3, v3

    #@13
    if-ge v2, v3, :cond_24

    #@15
    .line 166
    aget-object v3, p0, v1

    #@17
    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@19
    aget-object v4, p1, v1

    #@1b
    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    #@1d
    aget v4, v4, v2

    #@1f
    aput v4, v3, v2

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_e

    #@24
    :cond_24
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_2

    #@27
    :cond_27
    return-void
.end method
