.class public final Lcom/blankj/utilcode/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method private static addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;
    .registers 13

    #@0
    const/16 v0, 0x8

    #@2
    new-array v5, v0, [F

    #@4
    const/4 v0, 0x0

    #@5
    aput p4, v5, v0

    #@7
    const/4 v0, 0x1

    #@8
    aput p4, v5, v0

    #@a
    const/4 v0, 0x2

    #@b
    aput p4, v5, v0

    #@d
    const/4 v0, 0x3

    #@e
    aput p4, v5, v0

    #@10
    const/4 v0, 0x4

    #@11
    aput p4, v5, v0

    #@13
    const/4 v0, 0x5

    #@14
    aput p4, v5, v0

    #@16
    const/4 v0, 0x6

    #@17
    aput p4, v5, v0

    #@19
    const/4 v0, 0x7

    #@1a
    aput p4, v5, v0

    #@1c
    move-object v1, p0

    #@1d
    move v2, p1

    #@1e
    move v3, p2

    #@1f
    move v4, p3

    #@20
    move v6, p5

    #@21
    .line 999
    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    #@24
    move-result-object p0

    #@25
    return-object p0
.end method

.method private static addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;
    .registers 10

    #@0
    .line 1019
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    if-eqz p5, :cond_c

    #@b
    goto :goto_14

    #@c
    .line 1020
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@f
    move-result-object p5

    #@10
    invoke-virtual {p0, p5, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@13
    move-result-object p0

    #@14
    .line 1021
    :goto_14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@17
    move-result p5

    #@18
    .line 1022
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@1b
    move-result v1

    #@1c
    .line 1023
    new-instance v2, Landroid/graphics/Canvas;

    #@1e
    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@21
    .line 1024
    new-instance v3, Landroid/graphics/Paint;

    #@23
    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@26
    .line 1025
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@29
    .line 1026
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@2b
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@2e
    .line 1027
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@31
    const/high16 p2, 0x40000000    # 2.0f

    #@33
    if-eqz p3, :cond_45

    #@35
    .line 1029
    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    #@38
    move-result p3

    #@39
    int-to-float p3, p3

    #@3a
    div-float/2addr p3, p2

    #@3b
    div-float/2addr p1, p2

    #@3c
    sub-float/2addr p3, p1

    #@3d
    int-to-float p1, p5

    #@3e
    div-float/2addr p1, p2

    #@3f
    int-to-float p4, v1

    #@40
    div-float/2addr p4, p2

    #@41
    .line 1030
    invoke-virtual {v2, p1, p4, p3, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@44
    goto :goto_5e

    #@45
    .line 1032
    :cond_45
    new-instance p3, Landroid/graphics/RectF;

    #@47
    int-to-float p5, p5

    #@48
    int-to-float v0, v1

    #@49
    const/4 v1, 0x0

    #@4a
    invoke-direct {p3, v1, v1, p5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@4d
    div-float/2addr p1, p2

    #@4e
    .line 1034
    invoke-virtual {p3, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    #@51
    .line 1035
    new-instance p1, Landroid/graphics/Path;

    #@53
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@56
    .line 1036
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@58
    invoke-virtual {p1, p3, p4, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    #@5b
    .line 1037
    invoke-virtual {v2, p1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@5e
    :goto_5e
    return-object p0
.end method

.method public static addCircleBorder(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 9

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    .line 961
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static addCircleBorder(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;
    .registers 10

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v5, p3

    #@6
    .line 977
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FIF)Landroid/graphics/Bitmap;
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v4, p3

    #@6
    .line 895
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FIFZ)Landroid/graphics/Bitmap;
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    .line 947
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FI[F)Landroid/graphics/Bitmap;
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move-object v4, p3

    #@6
    .line 911
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FI[FZ)Landroid/graphics/Bitmap;
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v4, p3

    #@5
    move v5, p4

    #@6
    .line 929
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    .line 1157
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .registers 9

    #@0
    .line 1177
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 1178
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x1

    #@d
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@10
    move-result-object v0

    #@11
    .line 1179
    invoke-static {p1}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_29

    #@17
    .line 1180
    new-instance v2, Landroid/graphics/Paint;

    #@19
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@1c
    .line 1181
    new-instance v1, Landroid/graphics/Canvas;

    #@1e
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@21
    .line 1182
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    #@24
    int-to-float p2, p2

    #@25
    int-to-float p3, p3

    #@26
    .line 1183
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@29
    :cond_29
    if-eqz p5, :cond_36

    #@2b
    .line 1185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@2e
    move-result p1

    #@2f
    if-nez p1, :cond_36

    #@31
    if-eq v0, p0, :cond_36

    #@33
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@36
    :cond_36
    return-object v0
.end method

.method public static addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1050
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->addReflection(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static addReflection(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 25

    #@0
    move-object/from16 v7, p0

    #@2
    .line 1064
    invoke-static/range {p0 .. p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@5
    move-result v0

    #@6
    const/4 v8, 0x0

    #@7
    if-eqz v0, :cond_a

    #@9
    return-object v8

    #@a
    .line 1066
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@d
    move-result v9

    #@e
    .line 1067
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@11
    move-result v10

    #@12
    .line 1068
    new-instance v5, Landroid/graphics/Matrix;

    #@14
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@17
    const/high16 v0, 0x3f800000    # 1.0f

    #@19
    const/high16 v1, -0x40800000    # -1.0f

    #@1b
    .line 1069
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    #@1e
    const/4 v1, 0x0

    #@1f
    sub-int v2, v10, p1

    #@21
    const/4 v6, 0x0

    #@22
    move-object/from16 v0, p0

    #@24
    move v3, v9

    #@25
    move/from16 v4, p1

    #@27
    .line 1070
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@2a
    move-result-object v0

    #@2b
    add-int v1, v10, p1

    #@2d
    .line 1072
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@30
    move-result-object v2

    #@31
    invoke-static {v9, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@34
    move-result-object v1

    #@35
    .line 1073
    new-instance v11, Landroid/graphics/Canvas;

    #@37
    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3a
    const/4 v2, 0x0

    #@3b
    .line 1074
    invoke-virtual {v11, v7, v2, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@3e
    add-int/lit8 v3, v10, 0x0

    #@40
    int-to-float v13, v3

    #@41
    .line 1075
    invoke-virtual {v11, v0, v2, v13, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@44
    .line 1076
    new-instance v2, Landroid/graphics/Paint;

    #@46
    const/4 v3, 0x1

    #@47
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    #@4a
    .line 1077
    new-instance v3, Landroid/graphics/LinearGradient;

    #@4c
    const/4 v15, 0x0

    #@4d
    int-to-float v4, v10

    #@4e
    const/16 v17, 0x0

    #@50
    .line 1079
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    #@53
    move-result v5

    #@54
    add-int/lit8 v5, v5, 0x0

    #@56
    int-to-float v5, v5

    #@57
    const v19, 0x70ffffff

    #@5a
    const v20, 0xffffff

    #@5d
    sget-object v21, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    #@5f
    move-object v14, v3

    #@60
    move/from16 v16, v4

    #@62
    move/from16 v18, v5

    #@64
    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@67
    .line 1083
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@6a
    .line 1084
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    #@6c
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    #@6e
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@71
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@74
    const/4 v12, 0x0

    #@75
    int-to-float v14, v9

    #@76
    .line 1085
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    #@79
    move-result v3

    #@7a
    int-to-float v15, v3

    #@7b
    move-object/from16 v16, v2

    #@7d
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@80
    .line 1086
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@83
    move-result v2

    #@84
    if-nez v2, :cond_89

    #@86
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@89
    :cond_89
    if-eqz p2, :cond_96

    #@8b
    .line 1087
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@8e
    move-result v0

    #@8f
    if-nez v0, :cond_96

    #@91
    if-eq v1, v7, :cond_96

    #@93
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    #@96
    :cond_96
    return-object v1
.end method

.method public static addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;
    .registers 12

    #@0
    .line 1130
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_41

    #@6
    if-nez p1, :cond_9

    #@8
    goto :goto_41

    #@9
    .line 1131
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@11
    move-result-object v0

    #@12
    .line 1132
    new-instance v2, Landroid/graphics/Paint;

    #@14
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@17
    .line 1133
    new-instance v1, Landroid/graphics/Canvas;

    #@19
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1c
    .line 1134
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    #@1f
    .line 1135
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@22
    .line 1136
    new-instance p3, Landroid/graphics/Rect;

    #@24
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@27
    const/4 v3, 0x0

    #@28
    .line 1137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {v2, p1, v3, v4, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@2f
    add-float/2addr p5, p2

    #@30
    .line 1138
    invoke-virtual {v1, p1, p4, p5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@33
    if-eqz p6, :cond_40

    #@35
    .line 1139
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@38
    move-result p1

    #@39
    if-nez p1, :cond_40

    #@3b
    if-eq v0, p0, :cond_40

    #@3d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@40
    :cond_40
    return-object v0

    #@41
    :cond_41
    :goto_41
    const/4 p0, 0x0

    #@42
    return-object p0
.end method

.method public static addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;IIFF)Landroid/graphics/Bitmap;
    .registers 13

    #@0
    int-to-float v2, p2

    #@1
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    .line 1108
    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ImageUtils;->addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 3

    #@0
    .line 80
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 93
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@9
    .line 94
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@c
    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_12

    #@4
    .line 150
    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@11
    move-object p0, v0

    #@12
    :goto_12
    return-object p0
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    if-eqz p0, :cond_d

    #@2
    .line 105
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_d

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    .line 107
    array-length v1, p0

    #@8
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    #@b
    move-result-object p0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p0, 0x0

    #@e
    :goto_e
    return-object p0
.end method

.method public static bytes2Drawable([B)Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 181
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    #@0
    .line 2336
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@2
    .line 2337
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@4
    const/4 v1, 0x1

    #@5
    :goto_5
    if-gt v0, p2, :cond_b

    #@7
    if-le p0, p1, :cond_a

    #@9
    goto :goto_b

    #@a
    :cond_a
    return v1

    #@b
    :cond_b
    :goto_b
    shr-int/lit8 v0, v0, 0x1

    #@d
    shr-int/lit8 p0, p0, 0x1

    #@f
    shl-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_5
.end method

.method public static clip(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    .line 520
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->clip(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static clip(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .registers 7

    #@0
    .line 540
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 541
    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    #@b
    move-result-object p1

    #@c
    if-eqz p5, :cond_19

    #@e
    .line 542
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@11
    move-result p2

    #@12
    if-nez p2, :cond_19

    #@14
    if-eq p1, p0, :cond_19

    #@16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@19
    :cond_19
    return-object p1
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;I)[B
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2144
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressByQuality(Landroid/graphics/Bitmap;IZ)[B

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;IZ)[B
    .registers 5

    #@0
    .line 2158
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 2159
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    .line 2160
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@f
    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@12
    .line 2161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15
    move-result-object p1

    #@16
    if-eqz p2, :cond_21

    #@18
    .line 2162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@1b
    move-result p2

    #@1c
    if-nez p2, :cond_21

    #@1e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@21
    :cond_21
    return-object p1
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;J)[B
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2174
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressByQuality(Landroid/graphics/Bitmap;JZ)[B

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;JZ)[B
    .registers 10

    #@0
    .line 2188
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_7c

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, p1, v2

    #@b
    if-gtz v0, :cond_f

    #@d
    goto/16 :goto_7c

    #@f
    .line 2189
    :cond_f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@14
    .line 2190
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@16
    const/16 v3, 0x64

    #@18
    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@1b
    .line 2192
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@1e
    move-result v2

    #@1f
    int-to-long v4, v2

    #@20
    cmp-long v2, v4, p1

    #@22
    if-gtz v2, :cond_29

    #@24
    .line 2193
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@27
    move-result-object p1

    #@28
    goto :goto_70

    #@29
    .line 2195
    :cond_29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@2c
    .line 2196
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@2e
    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@31
    .line 2197
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@34
    move-result v2

    #@35
    int-to-long v4, v2

    #@36
    cmp-long v2, v4, p1

    #@38
    if-ltz v2, :cond_3f

    #@3a
    .line 2198
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@3d
    move-result-object p1

    #@3e
    goto :goto_70

    #@3f
    :cond_3f
    move v2, v1

    #@40
    :goto_40
    if-ge v1, v3, :cond_60

    #@42
    add-int v2, v1, v3

    #@44
    .line 2205
    div-int/lit8 v2, v2, 0x2

    #@46
    .line 2206
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@49
    .line 2207
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@4b
    invoke-virtual {p0, v4, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@4e
    .line 2208
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@51
    move-result v4

    #@52
    int-to-long v4, v4

    #@53
    cmp-long v4, v4, p1

    #@55
    if-nez v4, :cond_58

    #@57
    goto :goto_60

    #@58
    :cond_58
    if-lez v4, :cond_5d

    #@5a
    add-int/lit8 v3, v2, -0x1

    #@5c
    goto :goto_40

    #@5d
    :cond_5d
    add-int/lit8 v1, v2, 0x1

    #@5f
    goto :goto_40

    #@60
    :cond_60
    :goto_60
    add-int/lit8 v2, v2, -0x1

    #@62
    if-ne v3, v2, :cond_6c

    #@64
    .line 2218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@67
    .line 2219
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@69
    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@6c
    .line 2221
    :cond_6c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6f
    move-result-object p1

    #@70
    :goto_70
    if-eqz p3, :cond_7b

    #@72
    .line 2224
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@75
    move-result p2

    #@76
    if-nez p2, :cond_7b

    #@78
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@7b
    :cond_7b
    return-object p1

    #@7c
    :cond_7c
    :goto_7c
    new-array p0, v1, [B

    #@7e
    return-object p0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 2237
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressBySampleSize(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2272
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressBySampleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 8

    #@0
    .line 2288
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 2289
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@a
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@d
    const/4 v1, 0x1

    #@e
    .line 2290
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@10
    .line 2291
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@12
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@15
    .line 2292
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@17
    const/16 v3, 0x64

    #@19
    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@1c
    .line 2293
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1f
    move-result-object v1

    #@20
    .line 2294
    array-length v2, v1

    #@21
    const/4 v3, 0x0

    #@22
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@25
    .line 2295
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@28
    move-result p1

    #@29
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@2b
    .line 2296
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@2d
    if-eqz p3, :cond_38

    #@2f
    .line 2297
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@32
    move-result p1

    #@33
    if-nez p1, :cond_38

    #@35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@38
    .line 2298
    :cond_38
    array-length p0, v1

    #@39
    invoke-static {v1, v3, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@3c
    move-result-object p0

    #@3d
    return-object p0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    .line 2251
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 2252
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@a
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@d
    .line 2253
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@f
    .line 2254
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@14
    .line 2255
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@16
    const/16 v2, 0x64

    #@18
    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@1b
    .line 2256
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1e
    move-result-object p1

    #@1f
    if-eqz p2, :cond_2a

    #@21
    .line 2257
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@24
    move-result p2

    #@25
    if-nez p2, :cond_2a

    #@27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@2a
    :cond_2a
    const/4 p0, 0x0

    #@2b
    .line 2258
    array-length p2, p1

    #@2c
    invoke-static {p1, p0, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@2f
    move-result-object p0

    #@30
    return-object p0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2116
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    .line 2132
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2086
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    .line 2102
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 420
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->drawColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    .line 434
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    :cond_8
    if-eqz p2, :cond_b

    #@a
    goto :goto_14

    #@b
    .line 435
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@e
    move-result-object p2

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@13
    move-result-object p0

    #@14
    .line 436
    :goto_14
    new-instance p2, Landroid/graphics/Canvas;

    #@16
    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@19
    .line 437
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    #@1b
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@1e
    return-object p0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 118
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@6
    if-eqz v0, :cond_16

    #@8
    .line 119
    move-object v0, p0

    #@9
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #@b
    .line 120
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_16

    #@11
    .line 121
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    .line 125
    :cond_16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@19
    move-result v0

    #@1a
    const/4 v1, -0x1

    #@1b
    if-lez v0, :cond_3c

    #@1d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@20
    move-result v0

    #@21
    if-gtz v0, :cond_24

    #@23
    goto :goto_3c

    #@24
    .line 131
    :cond_24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@27
    move-result v0

    #@28
    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2b
    move-result v2

    #@2c
    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@2f
    move-result v3

    #@30
    if-eq v3, v1, :cond_35

    #@32
    .line 134
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@34
    goto :goto_37

    #@35
    .line 135
    :cond_35
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@37
    .line 131
    :goto_37
    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@3a
    move-result-object v0

    #@3b
    goto :goto_4c

    #@3c
    .line 127
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@3f
    move-result v0

    #@40
    if-eq v0, v1, :cond_45

    #@42
    .line 128
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@44
    goto :goto_47

    #@45
    .line 129
    :cond_45
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@47
    :goto_47
    const/4 v1, 0x1

    #@48
    .line 126
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@4b
    move-result-object v0

    #@4c
    .line 137
    :goto_4c
    new-instance v1, Landroid/graphics/Canvas;

    #@4e
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@51
    .line 138
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    #@54
    move-result v2

    #@55
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    #@58
    move-result v3

    #@59
    const/4 v4, 0x0

    #@5a
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@5d
    .line 139
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@60
    return-object v0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_c

    #@4
    .line 160
    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    #@b
    move-result-object p0

    #@c
    :goto_c
    return-object p0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_c

    #@4
    .line 171
    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    #@b
    move-result-object p0

    #@c
    :goto_c
    return-object p0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1260
    invoke-static {p0, p1, p2, v0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1280
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;
    .registers 14

    #@0
    .line 1303
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 1304
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@b
    move-result v0

    #@c
    .line 1305
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@f
    move-result v1

    #@10
    .line 1306
    new-instance v7, Landroid/graphics/Matrix;

    #@12
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    #@15
    .line 1307
    invoke-virtual {v7, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x0

    #@1a
    .line 1309
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@21
    move-result v6

    #@22
    const/4 v8, 0x1

    #@23
    move-object v2, p0

    #@24
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@27
    move-result-object v2

    #@28
    .line 1310
    new-instance v3, Landroid/graphics/Paint;

    #@2a
    const/4 v4, 0x3

    #@2b
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    #@2e
    .line 1311
    new-instance v4, Landroid/graphics/Canvas;

    #@30
    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    #@33
    .line 1312
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    #@35
    const/4 v6, 0x0

    #@36
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@38
    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@3b
    .line 1314
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@3e
    .line 1315
    invoke-virtual {v4, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    #@41
    const/4 v5, 0x0

    #@42
    .line 1316
    invoke-virtual {v4, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@45
    .line 1318
    invoke-static {v2, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    #@48
    move-result-object p2

    #@49
    const/high16 v2, 0x3f800000    # 1.0f

    #@4b
    cmpl-float p1, p1, v2

    #@4d
    if-eqz p1, :cond_6e

    #@4f
    if-eqz p4, :cond_52

    #@51
    goto :goto_6e

    #@52
    :cond_52
    const/4 p1, 0x1

    #@53
    .line 1326
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@56
    move-result-object p1

    #@57
    .line 1327
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@5a
    move-result p4

    #@5b
    if-nez p4, :cond_60

    #@5d
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    #@60
    :cond_60
    if-eqz p3, :cond_6d

    #@62
    .line 1328
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@65
    move-result p2

    #@66
    if-nez p2, :cond_6d

    #@68
    if-eq p1, p0, :cond_6d

    #@6a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@6d
    :cond_6d
    return-object p1

    #@6e
    :cond_6e
    :goto_6e
    if-eqz p3, :cond_7b

    #@70
    .line 1323
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@73
    move-result p1

    #@74
    if-nez p1, :cond_7b

    #@76
    if-eq p2, p0, :cond_7b

    #@78
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@7b
    :cond_7b
    return-object p2
.end method

.method public static getBitmap(I)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    .line 347
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p0

    #@8
    if-nez p0, :cond_c

    #@a
    const/4 p0, 0x0

    #@b
    return-object p0

    #@c
    .line 351
    :cond_c
    new-instance v0, Landroid/graphics/Canvas;

    #@e
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@11
    .line 352
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@14
    move-result v1

    #@15
    .line 353
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@18
    move-result v2

    #@19
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1b
    .line 352
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1e
    move-result-object v1

    #@1f
    .line 355
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@22
    .line 356
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@25
    move-result v2

    #@26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@29
    move-result v3

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2e
    .line 357
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@31
    return-object v1
.end method

.method public static getBitmap(III)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    .line 372
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@2
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@5
    .line 373
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x1

    #@e
    .line 374
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@10
    .line 375
    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@13
    .line 376
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@16
    move-result p1

    #@17
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@19
    const/4 p1, 0x0

    #@1a
    .line 377
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@1c
    .line 378
    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1f
    move-result-object p0

    #@20
    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 227
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 240
    :cond_4
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@6
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@9
    const/4 v1, 0x1

    #@a
    .line 241
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@c
    .line 242
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@13
    .line 243
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@16
    move-result p1

    #@17
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@19
    const/4 p1, 0x0

    #@1a
    .line 244
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@1c
    .line 245
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@23
    move-result-object p0

    #@24
    return-object p0
.end method

.method public static getBitmap(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 389
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getBitmap(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 404
    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    #@6
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@9
    const/4 v2, 0x1

    #@a
    .line 405
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@c
    .line 406
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@f
    .line 407
    invoke-static {v1, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@12
    move-result p1

    #@13
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@15
    const/4 p1, 0x0

    #@16
    .line 408
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@18
    .line 409
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1b
    move-result-object p0

    #@1c
    return-object p0
.end method

.method public static getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 285
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 298
    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    #@6
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@9
    const/4 v2, 0x1

    #@a
    .line 299
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@c
    .line 300
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@f
    .line 301
    invoke-static {v1, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@12
    move-result p1

    #@13
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@15
    const/4 p1, 0x0

    #@16
    .line 302
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@18
    .line 303
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1b
    move-result-object p0

    #@1c
    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    #@0
    .line 255
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 256
    :cond_8
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    .line 268
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 269
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@a
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@d
    const/4 v1, 0x1

    #@e
    .line 270
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@10
    .line 271
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@13
    .line 272
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@16
    move-result p1

    #@17
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@19
    const/4 p1, 0x0

    #@1a
    .line 273
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@1c
    .line 274
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1f
    move-result-object p0

    #@20
    return-object p0
.end method

.method public static getBitmap([BI)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    .line 314
    array-length v0, p0

    #@1
    if-nez v0, :cond_5

    #@3
    const/4 p0, 0x0

    #@4
    return-object p0

    #@5
    .line 315
    :cond_5
    array-length v0, p0

    #@6
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static getBitmap([BIII)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    .line 331
    array-length v0, p0

    #@1
    if-nez v0, :cond_5

    #@3
    const/4 p0, 0x0

    #@4
    return-object p0

    #@5
    .line 332
    :cond_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@7
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@a
    const/4 v1, 0x1

    #@b
    .line 333
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@d
    .line 334
    array-length v1, p0

    #@e
    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@11
    .line 335
    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@14
    move-result p2

    #@15
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@17
    const/4 p2, 0x0

    #@18
    .line 336
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@1a
    .line 337
    array-length p2, p0

    #@1b
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1e
    move-result-object p0

    #@1f
    return-object p0
.end method

.method public static getImageType(Ljava/io/File;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 1991
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    #@6
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_20
    .catchall {:try_start_4 .. :try_end_9} :catchall_1e

    #@9
    .line 1992
    :try_start_9
    invoke-static {v1}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@c
    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_1c
    .catchall {:try_start_9 .. :try_end_d} :catchall_30

    #@d
    if-eqz p0, :cond_18

    #@f
    .line 2001
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    #@12
    goto :goto_17

    #@13
    :catch_13
    move-exception v0

    #@14
    .line 2004
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@17
    :goto_17
    return-object p0

    #@18
    .line 2001
    :cond_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_2b

    #@1b
    goto :goto_2f

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    goto :goto_22

    #@1e
    :catchall_1e
    move-exception p0

    #@1f
    goto :goto_32

    #@20
    :catch_20
    move-exception p0

    #@21
    move-object v1, v0

    #@22
    .line 1997
    :goto_22
    :try_start_22
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_30

    #@25
    if-eqz v1, :cond_2f

    #@27
    .line 2001
    :try_start_27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    #@2a
    goto :goto_2f

    #@2b
    :catch_2b
    move-exception p0

    #@2c
    .line 2004
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@2f
    :cond_2f
    :goto_2f
    return-object v0

    #@30
    :catchall_30
    move-exception p0

    #@31
    move-object v0, v1

    #@32
    :goto_32
    if-eqz v0, :cond_3c

    #@34
    .line 2001
    :try_start_34
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    #@37
    goto :goto_3c

    #@38
    :catch_38
    move-exception v0

    #@39
    .line 2004
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@3c
    .line 2006
    :cond_3c
    :goto_3c
    throw p0
.end method

.method private static getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    :cond_4
    const/16 v1, 0xc

    #@6
    :try_start_6
    new-array v1, v1, [B

    #@8
    .line 2014
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    #@b
    move-result p0

    #@c
    const/4 v2, -0x1

    #@d
    if-eq p0, v2, :cond_13

    #@f
    invoke-static {v1}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType([B)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@12
    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_14

    #@13
    :cond_13
    return-object v0

    #@14
    :catch_14
    move-exception p0

    #@15
    .line 2016
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@18
    return-object v0
.end method

.method public static getImageType(Ljava/lang/String;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 1

    #@0
    .line 1978
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType(Ljava/io/File;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static getImageType([B)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 2

    #@0
    .line 2022
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    const-string v0, "FFD8FF"

    #@a
    .line 2023
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_13

    #@10
    .line 2024
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@12
    return-object p0

    #@13
    :cond_13
    const-string v0, "89504E47"

    #@15
    .line 2025
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1e

    #@1b
    .line 2026
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@1d
    return-object p0

    #@1e
    :cond_1e
    const-string v0, "47494638"

    #@20
    .line 2027
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_29

    #@26
    .line 2028
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@28
    return-object p0

    #@29
    :cond_29
    const-string v0, "49492A00"

    #@2b
    .line 2029
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_6f

    #@31
    const-string v0, "4D4D002A"

    #@33
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3a

    #@39
    goto :goto_6f

    #@3a
    :cond_3a
    const-string v0, "424D"

    #@3c
    .line 2031
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_45

    #@42
    .line 2032
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@44
    return-object p0

    #@45
    :cond_45
    const-string v0, "52494646"

    #@47
    .line 2033
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_58

    #@4d
    const-string v0, "57454250"

    #@4f
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_58

    #@55
    .line 2034
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@57
    return-object p0

    #@58
    :cond_58
    const-string v0, "00000100"

    #@5a
    .line 2035
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@5d
    move-result v0

    #@5e
    if-nez v0, :cond_6c

    #@60
    const-string v0, "00000200"

    #@62
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@65
    move-result p0

    #@66
    if-eqz p0, :cond_69

    #@68
    goto :goto_6c

    #@69
    .line 2038
    :cond_69
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@6b
    return-object p0

    #@6c
    .line 2036
    :cond_6c
    :goto_6c
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@6e
    return-object p0

    #@6f
    .line 2030
    :cond_6f
    :goto_6f
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@71
    return-object p0
.end method

.method public static getRotateDegree(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 665
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    #@2
    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    #@5
    const-string p0, "Orientation"

    #@7
    const/4 v1, 0x1

    #@8
    .line 666
    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    #@b
    move-result p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_21

    #@c
    const/4 v0, 0x3

    #@d
    if-eq p0, v0, :cond_1e

    #@f
    const/4 v0, 0x6

    #@10
    if-eq p0, v0, :cond_1b

    #@12
    const/16 v0, 0x8

    #@14
    if-eq p0, v0, :cond_18

    #@16
    const/4 p0, 0x0

    #@17
    return p0

    #@18
    :cond_18
    const/16 p0, 0x10e

    #@1a
    return p0

    #@1b
    :cond_1b
    const/16 p0, 0x5a

    #@1d
    return p0

    #@1e
    :cond_1e
    const/16 p0, 0xb4

    #@20
    return p0

    #@21
    :catch_21
    move-exception p0

    #@22
    .line 681
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@25
    const/4 p0, -0x1

    #@26
    return p0
.end method

.method public static getSize(Ljava/io/File;)[I
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    if-nez p0, :cond_9

    #@3
    new-array p0, v0, [I

    #@5
    .line 2318
    fill-array-data p0, :array_24

    #@8
    return-object p0

    #@9
    .line 2319
    :cond_9
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    #@b
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@e
    const/4 v2, 0x1

    #@f
    .line 2320
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@11
    .line 2321
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@18
    new-array p0, v0, [I

    #@1a
    const/4 v0, 0x0

    #@1b
    .line 2322
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@1d
    aput v3, p0, v0

    #@1f
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@21
    aput v0, p0, v2

    #@23
    return-object p0

    #@24
    :array_24
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getSize(Ljava/lang/String;)[I
    .registers 1

    #@0
    .line 2308
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->getSize(Ljava/io/File;)[I

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static isBMP([B)Z
    .registers 4

    #@0
    .line 2063
    array-length v0, p0

    #@1
    const/4 v1, 0x2

    #@2
    const/4 v2, 0x0

    #@3
    if-lt v0, v1, :cond_13

    #@5
    aget-byte v0, p0, v2

    #@7
    const/16 v1, 0x42

    #@9
    if-ne v0, v1, :cond_13

    #@b
    const/4 v0, 0x1

    #@c
    aget-byte p0, p0, v0

    #@e
    const/16 v1, 0x4d

    #@10
    if-ne p0, v1, :cond_13

    #@12
    move v2, v0

    #@13
    :cond_13
    return v2
.end method

.method private static isEmptyBitmap(Landroid/graphics/Bitmap;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_11

    #@2
    .line 2068
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_11

    #@8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@b
    move-result p0

    #@c
    if-nez p0, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p0, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p0, 0x1

    #@12
    :goto_12
    return p0
.end method

.method private static isGIF([B)Z
    .registers 5

    #@0
    .line 2048
    array-length v0, p0

    #@1
    const/4 v1, 0x6

    #@2
    const/4 v2, 0x0

    #@3
    if-lt v0, v1, :cond_33

    #@5
    aget-byte v0, p0, v2

    #@7
    const/16 v1, 0x47

    #@9
    if-ne v0, v1, :cond_33

    #@b
    const/4 v0, 0x1

    #@c
    aget-byte v1, p0, v0

    #@e
    const/16 v3, 0x49

    #@10
    if-ne v1, v3, :cond_33

    #@12
    const/4 v1, 0x2

    #@13
    aget-byte v1, p0, v1

    #@15
    const/16 v3, 0x46

    #@17
    if-ne v1, v3, :cond_33

    #@19
    const/4 v1, 0x3

    #@1a
    aget-byte v1, p0, v1

    #@1c
    const/16 v3, 0x38

    #@1e
    if-ne v1, v3, :cond_33

    #@20
    const/4 v1, 0x4

    #@21
    aget-byte v1, p0, v1

    #@23
    const/16 v3, 0x37

    #@25
    if-eq v1, v3, :cond_2b

    #@27
    const/16 v3, 0x39

    #@29
    if-ne v1, v3, :cond_33

    #@2b
    :cond_2b
    const/4 v1, 0x5

    #@2c
    aget-byte p0, p0, v1

    #@2e
    const/16 v1, 0x61

    #@30
    if-ne p0, v1, :cond_33

    #@32
    move v2, v0

    #@33
    :cond_33
    return v2
.end method

.method public static isImage(Ljava/io/File;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 1948
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 1951
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isImage(Ljava/lang/String;)Z

    #@10
    move-result p0

    #@11
    return p0

    #@12
    :cond_12
    :goto_12
    const/4 p0, 0x0

    #@13
    return p0
.end method

.method public static isImage(Ljava/lang/String;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1962
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    #@3
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@6
    const/4 v2, 0x1

    #@7
    .line 1963
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@9
    .line 1964
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@c
    .line 1965
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@e
    if-lez p0, :cond_15

    #@10
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_15

    #@12
    if-lez p0, :cond_15

    #@14
    move v0, v2

    #@15
    :catch_15
    :cond_15
    return v0
.end method

.method private static isJPEG([B)Z
    .registers 4

    #@0
    .line 2043
    array-length v0, p0

    #@1
    const/4 v1, 0x2

    #@2
    const/4 v2, 0x0

    #@3
    if-lt v0, v1, :cond_12

    #@5
    aget-byte v0, p0, v2

    #@7
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_12

    #@a
    const/4 v0, 0x1

    #@b
    aget-byte p0, p0, v0

    #@d
    const/16 v1, -0x28

    #@f
    if-ne p0, v1, :cond_12

    #@11
    move v2, v0

    #@12
    :cond_12
    return v2
.end method

.method private static isPNG([B)Z
    .registers 6

    #@0
    .line 2055
    array-length v0, p0

    #@1
    const/16 v1, 0x8

    #@3
    const/4 v2, 0x0

    #@4
    if-lt v0, v1, :cond_3c

    #@6
    aget-byte v0, p0, v2

    #@8
    const/16 v1, -0x77

    #@a
    if-ne v0, v1, :cond_3c

    #@c
    const/4 v0, 0x1

    #@d
    aget-byte v1, p0, v0

    #@f
    const/16 v3, 0x50

    #@11
    if-ne v1, v3, :cond_3c

    #@13
    const/4 v1, 0x2

    #@14
    aget-byte v1, p0, v1

    #@16
    const/16 v3, 0x4e

    #@18
    if-ne v1, v3, :cond_3c

    #@1a
    const/4 v1, 0x3

    #@1b
    aget-byte v1, p0, v1

    #@1d
    const/16 v3, 0x47

    #@1f
    if-ne v1, v3, :cond_3c

    #@21
    const/4 v1, 0x4

    #@22
    aget-byte v1, p0, v1

    #@24
    const/16 v3, 0xd

    #@26
    if-ne v1, v3, :cond_3c

    #@28
    const/4 v1, 0x5

    #@29
    aget-byte v1, p0, v1

    #@2b
    const/16 v3, 0xa

    #@2d
    if-ne v1, v3, :cond_3c

    #@2f
    const/4 v1, 0x6

    #@30
    aget-byte v1, p0, v1

    #@32
    const/16 v4, 0x1a

    #@34
    if-ne v1, v4, :cond_3c

    #@36
    const/4 v1, 0x7

    #@37
    aget-byte p0, p0, v1

    #@39
    if-ne p0, v3, :cond_3c

    #@3b
    move v2, v0

    #@3c
    :cond_3c
    return v2
.end method

.method public static renderScriptBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1344
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p2, :cond_4

    #@3
    goto :goto_c

    #@4
    .line 1362
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@7
    move-result-object p2

    #@8
    invoke-virtual {p0, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@b
    move-result-object p0

    #@c
    :goto_c
    const/4 p2, 0x0

    #@d
    .line 1364
    :try_start_d
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@10
    move-result-object v1

    #@11
    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    #@14
    move-result-object p2

    #@15
    .line 1365
    new-instance v1, Landroid/renderscript/RenderScript$RSMessageHandler;

    #@17
    invoke-direct {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    #@1a
    invoke-virtual {p2, v1}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    #@1d
    .line 1366
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@1f
    invoke-static {p2, p0, v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@22
    move-result-object v0

    #@23
    .line 1370
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@26
    move-result-object v1

    #@27
    invoke-static {p2, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    #@2a
    move-result-object v1

    #@2b
    .line 1371
    invoke-static {p2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {p2, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    #@32
    move-result-object v2

    #@33
    .line 1372
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    #@36
    .line 1373
    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    #@39
    .line 1374
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    #@3c
    .line 1375
    invoke-virtual {v1, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_45

    #@3f
    if-eqz p2, :cond_44

    #@41
    .line 1378
    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->destroy()V

    #@44
    :cond_44
    return-object p0

    #@45
    :catchall_45
    move-exception p0

    #@46
    if-eqz p2, :cond_4b

    #@48
    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->destroy()V

    #@4b
    .line 1380
    :cond_4b
    throw p0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 630
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->rotate(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;
    .registers 12

    #@0
    .line 648
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    :cond_8
    if-nez p1, :cond_b

    #@a
    return-object p0

    #@b
    .line 650
    :cond_b
    new-instance v5, Landroid/graphics/Matrix;

    #@d
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@10
    int-to-float p1, p1

    #@11
    .line 651
    invoke-virtual {v5, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    #@14
    const/4 v1, 0x0

    #@15
    const/4 v2, 0x0

    #@16
    .line 652
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@19
    move-result v3

    #@1a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@1d
    move-result v4

    #@1e
    const/4 v6, 0x1

    #@1f
    move-object v0, p0

    #@20
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@23
    move-result-object p1

    #@24
    if-eqz p4, :cond_31

    #@26
    .line 653
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@29
    move-result p2

    #@2a
    if-nez p2, :cond_31

    #@2c
    if-eq p1, p0, :cond_31

    #@2e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@31
    :cond_31
    return-object p1
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 5

    #@0
    const/16 v0, 0x64

    #@2
    const/4 v1, 0x0

    #@3
    .line 1623
    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1689
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z
    .registers 9

    #@0
    .line 1731
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    const-string v1, "ImageUtils"

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v0, :cond_f

    #@9
    const-string p0, "bitmap is empty."

    #@b
    .line 1732
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    return v2

    #@f
    .line 1735
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1b

    #@15
    const-string p0, "bitmap is recycled."

    #@17
    .line 1736
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    return v2

    #@1b
    .line 1739
    :cond_1b
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->createFileByDeleteOldFile(Ljava/io/File;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_3a

    #@21
    .line 1740
    new-instance p0, Ljava/lang/StringBuilder;

    #@23
    const-string p2, "create or delete file <"

    #@25
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p0

    #@2c
    const-string p1, "> failed."

    #@2e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object p0

    #@32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object p0

    #@36
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    return v2

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    .line 1746
    :try_start_3b
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@3d
    new-instance v3, Ljava/io/FileOutputStream;

    #@3f
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@42
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_45} :catch_65
    .catchall {:try_start_3b .. :try_end_45} :catchall_63

    #@45
    .line 1747
    :try_start_45
    invoke-virtual {p0, p2, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@48
    move-result v2

    #@49
    if-eqz p4, :cond_54

    #@4b
    .line 1748
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@4e
    move-result p1

    #@4f
    if-nez p1, :cond_54

    #@51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_54} :catch_60
    .catchall {:try_start_45 .. :try_end_54} :catchall_5d

    #@54
    .line 1754
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    #@57
    goto :goto_6e

    #@58
    :catch_58
    move-exception p0

    #@59
    .line 1757
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@5c
    goto :goto_6e

    #@5d
    :catchall_5d
    move-exception p0

    #@5e
    move-object v0, v1

    #@5f
    goto :goto_6f

    #@60
    :catch_60
    move-exception p0

    #@61
    move-object v0, v1

    #@62
    goto :goto_66

    #@63
    :catchall_63
    move-exception p0

    #@64
    goto :goto_6f

    #@65
    :catch_65
    move-exception p0

    #@66
    .line 1750
    :goto_66
    :try_start_66
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_63

    #@69
    if-eqz v0, :cond_6e

    #@6b
    .line 1754
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_58

    #@6e
    :cond_6e
    :goto_6e
    return v2

    #@6f
    :goto_6f
    if-eqz v0, :cond_79

    #@71
    :try_start_71
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    #@74
    goto :goto_79

    #@75
    :catch_75
    move-exception p1

    #@76
    .line 1757
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@79
    .line 1759
    :cond_79
    :goto_79
    throw p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 5

    #@0
    const/16 v0, 0x64

    #@2
    .line 1655
    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 5

    #@0
    const/16 v0, 0x64

    #@2
    const/4 v1, 0x0

    #@3
    .line 1611
    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .registers 5

    #@0
    .line 1674
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z
    .registers 5

    #@0
    .line 1710
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p1

    #@4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 5

    #@0
    const/16 v0, 0x64

    #@2
    .line 1639
    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .registers 5

    #@0
    const/16 v0, 0x64

    #@2
    const/4 v1, 0x0

    #@3
    const-string v2, ""

    #@5
    .line 1771
    invoke-static {p0, v2, p1, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/io/File;
    .registers 5

    #@0
    const-string v0, ""

    #@2
    const/4 v1, 0x0

    #@3
    .line 1800
    invoke-static {p0, v0, p1, p2, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;
    .registers 5

    #@0
    const-string v0, ""

    #@2
    .line 1818
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/io/File;
    .registers 5

    #@0
    const-string v0, ""

    #@2
    const/16 v1, 0x64

    #@4
    .line 1784
    invoke-static {p0, v0, p1, v1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .registers 5

    #@0
    const/16 v0, 0x64

    #@2
    const/4 v1, 0x0

    #@3
    .line 1831
    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/io/File;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1864
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;
    .registers 11

    #@0
    .line 1884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    .line 1885
    :cond_e
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@10
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_19

    #@16
    const-string v0, "JPG"

    #@18
    goto :goto_1d

    #@19
    :cond_19
    invoke-virtual {p2}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 1886
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@25
    move-result-wide v2

    #@26
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string v2, "_"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string v2, "."

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 1887
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@44
    const/16 v2, 0x1d

    #@46
    const-string v3, "/"

    #@48
    const/4 v4, 0x0

    #@49
    if-ge v1, v2, :cond_8a

    #@4b
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@4d
    .line 1888
    filled-new-array {v1}, [Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->isGranted([Ljava/lang/String;)Z

    #@54
    move-result v1

    #@55
    if-nez v1, :cond_5f

    #@57
    const-string p0, "ImageUtils"

    #@59
    const-string p1, "save to album need storage permission"

    #@5b
    .line 1889
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    return-object v4

    #@5f
    .line 1892
    :cond_5f
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    #@61
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@64
    move-result-object v1

    #@65
    .line 1893
    new-instance v2, Ljava/io/File;

    #@67
    new-instance v5, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object p1

    #@70
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object p1

    #@74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object p1

    #@78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object p1

    #@7c
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7f
    .line 1894
    invoke-static {p0, v2, p2, p3, p4}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    #@82
    move-result p0

    #@83
    if-nez p0, :cond_86

    #@85
    return-object v4

    #@86
    .line 1897
    :cond_86
    invoke-static {v2}, Lcom/blankj/utilcode/util/UtilsBridge;->notifySystemToScan(Ljava/io/File;)V

    #@89
    return-object v2

    #@8a
    .line 1900
    :cond_8a
    new-instance p4, Landroid/content/ContentValues;

    #@8c
    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    #@8f
    const-string v1, "_display_name"

    #@91
    .line 1901
    invoke-virtual {p4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@94
    const-string v0, "mime_type"

    #@96
    const-string v1, "image/*"

    #@98
    .line 1902
    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9b
    .line 1904
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    const-string v1, "mounted"

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v0

    #@a5
    if-eqz v0, :cond_aa

    #@a7
    .line 1905
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@a9
    goto :goto_ac

    #@aa
    .line 1907
    :cond_aa
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@ac
    .line 1909
    :goto_ac
    new-instance v1, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object p1

    #@bf
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object p1

    #@c3
    const-string v1, "relative_path"

    #@c5
    invoke-virtual {p4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c8
    const/4 p1, 0x1

    #@c9
    .line 1910
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object p1

    #@cd
    const-string v1, "is_pending"

    #@cf
    invoke-virtual {p4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@d2
    .line 1911
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@d5
    move-result-object p1

    #@d6
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@d9
    move-result-object p1

    #@da
    invoke-virtual {p1, v0, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@dd
    move-result-object p1

    #@de
    if-nez p1, :cond_e1

    #@e0
    return-object v4

    #@e1
    .line 1917
    :cond_e1
    :try_start_e1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@e4
    move-result-object v0

    #@e5
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@e8
    move-result-object v0

    #@e9
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    #@ec
    move-result-object v0
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ed} :catch_119
    .catchall {:try_start_e1 .. :try_end_ed} :catchall_117

    #@ed
    .line 1918
    :try_start_ed
    invoke-virtual {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@f0
    .line 1920
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    #@f3
    const/4 p0, 0x0

    #@f4
    .line 1921
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f7
    move-result-object p0

    #@f8
    invoke-virtual {p4, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@fb
    .line 1922
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@fe
    move-result-object p0

    #@ff
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@102
    move-result-object p0

    #@103
    invoke-virtual {p0, p1, p4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@106
    .line 1924
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->uri2File(Landroid/net/Uri;)Ljava/io/File;

    #@109
    move-result-object p0
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_10a} :catch_115
    .catchall {:try_start_ed .. :try_end_10a} :catchall_134

    #@10a
    if-eqz v0, :cond_114

    #@10c
    .line 1932
    :try_start_10c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_110

    #@10f
    goto :goto_114

    #@110
    :catch_110
    move-exception p1

    #@111
    .line 1935
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@114
    :cond_114
    :goto_114
    return-object p0

    #@115
    :catch_115
    move-exception p0

    #@116
    goto :goto_11b

    #@117
    :catchall_117
    move-exception p0

    #@118
    goto :goto_136

    #@119
    :catch_119
    move-exception p0

    #@11a
    move-object v0, v4

    #@11b
    .line 1926
    :goto_11b
    :try_start_11b
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@11e
    move-result-object p2

    #@11f
    invoke-virtual {p2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@122
    move-result-object p2

    #@123
    invoke-virtual {p2, p1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@126
    .line 1927
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_129
    .catchall {:try_start_11b .. :try_end_129} :catchall_134

    #@129
    if-eqz v0, :cond_133

    #@12b
    .line 1932
    :try_start_12b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_12f

    #@12e
    goto :goto_133

    #@12f
    :catch_12f
    move-exception p0

    #@130
    .line 1935
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@133
    :cond_133
    :goto_133
    return-object v4

    #@134
    :catchall_134
    move-exception p0

    #@135
    move-object v4, v0

    #@136
    :goto_136
    if-eqz v4, :cond_140

    #@138
    .line 1932
    :try_start_138
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13c

    #@13b
    goto :goto_140

    #@13c
    :catch_13c
    move-exception p1

    #@13d
    .line 1935
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@140
    .line 1937
    :cond_140
    :goto_140
    throw p0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/io/File;
    .registers 5

    #@0
    const/16 v0, 0x64

    #@2
    .line 1846
    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static scale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 481
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 11

    #@0
    .line 497
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 498
    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    #@a
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@d
    .line 499
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    #@10
    const/4 v1, 0x0

    #@11
    const/4 v2, 0x0

    #@12
    .line 500
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@15
    move-result v3

    #@16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@19
    move-result v4

    #@1a
    const/4 v6, 0x1

    #@1b
    move-object v0, p0

    #@1c
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@1f
    move-result-object p1

    #@20
    if-eqz p3, :cond_2d

    #@22
    .line 501
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@25
    move-result p2

    #@26
    if-nez p2, :cond_2d

    #@28
    if-eq p1, p0, :cond_2d

    #@2a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@2d
    :cond_2d
    return-object p1
.end method

.method public static scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 450
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    .line 466
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 467
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@c
    move-result-object p1

    #@d
    if-eqz p3, :cond_1a

    #@f
    .line 468
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@12
    move-result p2

    #@13
    if-nez p2, :cond_1a

    #@15
    if-eq p1, p0, :cond_1a

    #@17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@1a
    :cond_1a
    return-object p1
.end method

.method public static skew(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    .line 555
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    .line 589
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;
    .registers 13

    #@0
    .line 609
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 610
    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    #@a
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@d
    .line 611
    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setSkew(FFFF)V

    #@10
    const/4 v1, 0x0

    #@11
    const/4 v2, 0x0

    #@12
    .line 612
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@15
    move-result v3

    #@16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@19
    move-result v4

    #@1a
    const/4 v6, 0x1

    #@1b
    move-object v0, p0

    #@1c
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@1f
    move-result-object p1

    #@20
    if-eqz p5, :cond_2d

    #@22
    .line 613
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@25
    move-result p2

    #@26
    if-nez p2, :cond_2d

    #@28
    if-eq p1, p0, :cond_2d

    #@2a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@2d
    :cond_2d
    return-object p1
.end method

.method public static skew(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v5, p3

    #@6
    .line 571
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1392
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 39

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p2, :cond_6

    #@3
    move-object/from16 v1, p0

    #@5
    goto :goto_10

    #@6
    .line 1404
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@9
    move-result-object v1

    #@a
    move-object/from16 v2, p0

    #@c
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@f
    move-result-object v1

    #@10
    :goto_10
    move/from16 v2, p1

    #@12
    if-ge v2, v0, :cond_16

    #@14
    move v10, v0

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v10, v2

    #@17
    .line 1408
    :goto_17
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    #@1a
    move-result v11

    #@1b
    .line 1409
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1e
    move-result v12

    #@1f
    mul-int v13, v11, v12

    #@21
    .line 1411
    new-array v14, v13, [I

    #@23
    const/4 v4, 0x0

    #@24
    const/4 v6, 0x0

    #@25
    const/4 v7, 0x0

    #@26
    move-object v2, v1

    #@27
    move-object v3, v14

    #@28
    move v5, v11

    #@29
    move v8, v11

    #@2a
    move v9, v12

    #@2b
    .line 1412
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    #@2e
    add-int/lit8 v2, v11, -0x1

    #@30
    add-int/lit8 v3, v12, -0x1

    #@32
    add-int v4, v10, v10

    #@34
    add-int/2addr v4, v0

    #@35
    .line 1419
    new-array v5, v13, [I

    #@37
    .line 1420
    new-array v6, v13, [I

    #@39
    .line 1421
    new-array v7, v13, [I

    #@3b
    .line 1423
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    #@3e
    move-result v8

    #@3f
    new-array v8, v8, [I

    #@41
    add-int/lit8 v9, v4, 0x1

    #@43
    shr-int/2addr v9, v0

    #@44
    mul-int/2addr v9, v9

    #@45
    mul-int/lit16 v13, v9, 0x100

    #@47
    .line 1427
    new-array v15, v13, [I

    #@49
    const/4 v0, 0x0

    #@4a
    :goto_4a
    if-ge v0, v13, :cond_53

    #@4c
    .line 1429
    div-int v17, v0, v9

    #@4e
    aput v17, v15, v0

    #@50
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_4a

    #@53
    :cond_53
    const/4 v0, 0x2

    #@54
    new-array v9, v0, [I

    #@56
    const/4 v13, 0x3

    #@57
    const/16 v16, 0x1

    #@59
    aput v13, v9, v16

    #@5b
    const/4 v13, 0x0

    #@5c
    aput v4, v9, v13

    #@5e
    .line 1434
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@60
    invoke-static {v13, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@63
    move-result-object v9

    #@64
    check-cast v9, [[I

    #@66
    add-int/lit8 v13, v10, 0x1

    #@68
    const/4 v0, 0x0

    #@69
    const/16 v17, 0x0

    #@6b
    const/16 v18, 0x0

    #@6d
    :goto_6d
    if-ge v0, v12, :cond_183

    #@6f
    move-object/from16 p2, v1

    #@71
    neg-int v1, v10

    #@72
    move/from16 v27, v12

    #@74
    const/16 v19, 0x0

    #@76
    const/16 v20, 0x0

    #@78
    const/16 v21, 0x0

    #@7a
    const/16 v22, 0x0

    #@7c
    const/16 v23, 0x0

    #@7e
    const/16 v24, 0x0

    #@80
    const/16 v25, 0x0

    #@82
    const/16 v26, 0x0

    #@84
    move v12, v1

    #@85
    const/4 v1, 0x0

    #@86
    :goto_86
    const v28, 0xff00

    #@89
    const/high16 v29, 0xff0000

    #@8b
    if-gt v12, v10, :cond_e3

    #@8d
    move/from16 v30, v3

    #@8f
    move-object/from16 v31, v8

    #@91
    const/4 v3, 0x0

    #@92
    .line 1446
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    #@95
    move-result v8

    #@96
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    #@99
    move-result v8

    #@9a
    add-int v8, v17, v8

    #@9c
    aget v8, v14, v8

    #@9e
    add-int v32, v12, v10

    #@a0
    .line 1447
    aget-object v32, v9, v32

    #@a2
    and-int v29, v8, v29

    #@a4
    shr-int/lit8 v29, v29, 0x10

    #@a6
    .line 1448
    aput v29, v32, v3

    #@a8
    and-int v28, v8, v28

    #@aa
    shr-int/lit8 v28, v28, 0x8

    #@ac
    const/16 v16, 0x1

    #@ae
    .line 1449
    aput v28, v32, v16

    #@b0
    and-int/lit16 v8, v8, 0xff

    #@b2
    const/16 v28, 0x2

    #@b4
    .line 1450
    aput v8, v32, v28

    #@b6
    .line 1451
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    #@b9
    move-result v8

    #@ba
    sub-int v8, v13, v8

    #@bc
    .line 1452
    aget v29, v32, v3

    #@be
    mul-int v3, v29, v8

    #@c0
    add-int/2addr v1, v3

    #@c1
    .line 1453
    aget v3, v32, v16

    #@c3
    mul-int v33, v3, v8

    #@c5
    add-int v19, v19, v33

    #@c7
    .line 1454
    aget v32, v32, v28

    #@c9
    mul-int v8, v8, v32

    #@cb
    add-int v20, v20, v8

    #@cd
    if-lez v12, :cond_d6

    #@cf
    add-int v24, v24, v29

    #@d1
    add-int v25, v25, v3

    #@d3
    add-int v26, v26, v32

    #@d5
    goto :goto_dc

    #@d6
    :cond_d6
    add-int v21, v21, v29

    #@d8
    add-int v22, v22, v3

    #@da
    add-int v23, v23, v32

    #@dc
    :goto_dc
    add-int/lit8 v12, v12, 0x1

    #@de
    move/from16 v3, v30

    #@e0
    move-object/from16 v8, v31

    #@e2
    goto :goto_86

    #@e3
    :cond_e3
    move/from16 v30, v3

    #@e5
    move-object/from16 v31, v8

    #@e7
    move v3, v1

    #@e8
    move v8, v10

    #@e9
    const/4 v1, 0x0

    #@ea
    :goto_ea
    if-ge v1, v11, :cond_173

    #@ec
    .line 1469
    aget v12, v15, v3

    #@ee
    aput v12, v5, v17

    #@f0
    .line 1470
    aget v12, v15, v19

    #@f2
    aput v12, v6, v17

    #@f4
    .line 1471
    aget v12, v15, v20

    #@f6
    aput v12, v7, v17

    #@f8
    sub-int v3, v3, v21

    #@fa
    sub-int v19, v19, v22

    #@fc
    sub-int v20, v20, v23

    #@fe
    sub-int v12, v8, v10

    #@100
    add-int/2addr v12, v4

    #@101
    .line 1478
    rem-int/2addr v12, v4

    #@102
    aget-object v12, v9, v12

    #@104
    const/16 v32, 0x0

    #@106
    .line 1480
    aget v33, v12, v32

    #@108
    sub-int v21, v21, v33

    #@10a
    const/16 v16, 0x1

    #@10c
    .line 1481
    aget v32, v12, v16

    #@10e
    sub-int v22, v22, v32

    #@110
    const/16 v32, 0x2

    #@112
    .line 1482
    aget v33, v12, v32

    #@114
    sub-int v23, v23, v33

    #@116
    if-nez v0, :cond_125

    #@118
    add-int v32, v1, v10

    #@11a
    move-object/from16 v33, v15

    #@11c
    add-int/lit8 v15, v32, 0x1

    #@11e
    .line 1485
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    #@121
    move-result v15

    #@122
    aput v15, v31, v1

    #@124
    goto :goto_127

    #@125
    :cond_125
    move-object/from16 v33, v15

    #@127
    .line 1487
    :goto_127
    aget v15, v31, v1

    #@129
    add-int v15, v18, v15

    #@12b
    aget v15, v14, v15

    #@12d
    and-int v32, v15, v29

    #@12f
    shr-int/lit8 v32, v32, 0x10

    #@131
    const/16 v34, 0x0

    #@133
    .line 1489
    aput v32, v12, v34

    #@135
    and-int v34, v15, v28

    #@137
    shr-int/lit8 v34, v34, 0x8

    #@139
    const/16 v16, 0x1

    #@13b
    .line 1490
    aput v34, v12, v16

    #@13d
    and-int/lit16 v15, v15, 0xff

    #@13f
    const/16 v35, 0x2

    #@141
    .line 1491
    aput v15, v12, v35

    #@143
    add-int v24, v24, v32

    #@145
    add-int v25, v25, v34

    #@147
    add-int v26, v26, v15

    #@149
    add-int v3, v3, v24

    #@14b
    add-int v19, v19, v25

    #@14d
    add-int v20, v20, v26

    #@14f
    add-int/lit8 v8, v8, 0x1

    #@151
    .line 1501
    rem-int/2addr v8, v4

    #@152
    .line 1502
    rem-int v12, v8, v4

    #@154
    aget-object v12, v9, v12

    #@156
    const/4 v15, 0x0

    #@157
    .line 1504
    aget v32, v12, v15

    #@159
    add-int v21, v21, v32

    #@15b
    const/4 v15, 0x1

    #@15c
    .line 1505
    aget v34, v12, v15

    #@15e
    add-int v22, v22, v34

    #@160
    const/4 v15, 0x2

    #@161
    .line 1506
    aget v12, v12, v15

    #@163
    add-int v23, v23, v12

    #@165
    sub-int v24, v24, v32

    #@167
    sub-int v25, v25, v34

    #@169
    sub-int v26, v26, v12

    #@16b
    add-int/lit8 v17, v17, 0x1

    #@16d
    add-int/lit8 v1, v1, 0x1

    #@16f
    move-object/from16 v15, v33

    #@171
    goto/16 :goto_ea

    #@173
    :cond_173
    move-object/from16 v33, v15

    #@175
    add-int v18, v18, v11

    #@177
    add-int/lit8 v0, v0, 0x1

    #@179
    move-object/from16 v1, p2

    #@17b
    move/from16 v12, v27

    #@17d
    move/from16 v3, v30

    #@17f
    move-object/from16 v8, v31

    #@181
    goto/16 :goto_6d

    #@183
    :cond_183
    move-object/from16 p2, v1

    #@185
    move/from16 v30, v3

    #@187
    move-object/from16 v31, v8

    #@189
    move/from16 v27, v12

    #@18b
    move-object/from16 v33, v15

    #@18d
    const/4 v0, 0x0

    #@18e
    :goto_18e
    if-ge v0, v11, :cond_2b8

    #@190
    neg-int v1, v10

    #@191
    mul-int v2, v1, v11

    #@193
    move/from16 v20, v4

    #@195
    move-object/from16 v21, v14

    #@197
    const/4 v3, 0x0

    #@198
    const/4 v8, 0x0

    #@199
    const/4 v12, 0x0

    #@19a
    const/4 v15, 0x0

    #@19b
    const/16 v17, 0x0

    #@19d
    const/16 v18, 0x0

    #@19f
    const/16 v19, 0x0

    #@1a1
    move v4, v1

    #@1a2
    move v14, v2

    #@1a3
    const/4 v1, 0x0

    #@1a4
    const/4 v2, 0x0

    #@1a5
    :goto_1a5
    if-gt v4, v10, :cond_20c

    #@1a7
    move/from16 v22, v11

    #@1a9
    const/4 v11, 0x0

    #@1aa
    .line 1520
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    #@1ad
    move-result v23

    #@1ae
    add-int v23, v23, v0

    #@1b0
    add-int v24, v4, v10

    #@1b2
    .line 1522
    aget-object v24, v9, v24

    #@1b4
    .line 1524
    aget v25, v5, v23

    #@1b6
    aput v25, v24, v11

    #@1b8
    .line 1525
    aget v11, v6, v23

    #@1ba
    const/16 v16, 0x1

    #@1bc
    aput v11, v24, v16

    #@1be
    .line 1526
    aget v11, v7, v23

    #@1c0
    const/16 v25, 0x2

    #@1c2
    aput v11, v24, v25

    #@1c4
    .line 1528
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@1c7
    move-result v11

    #@1c8
    sub-int v11, v13, v11

    #@1ca
    .line 1530
    aget v25, v5, v23

    #@1cc
    mul-int v25, v25, v11

    #@1ce
    add-int v1, v1, v25

    #@1d0
    .line 1531
    aget v25, v6, v23

    #@1d2
    mul-int v25, v25, v11

    #@1d4
    add-int v2, v2, v25

    #@1d6
    .line 1532
    aget v23, v7, v23

    #@1d8
    mul-int v23, v23, v11

    #@1da
    add-int v3, v3, v23

    #@1dc
    if-lez v4, :cond_1f0

    #@1de
    const/4 v11, 0x0

    #@1df
    .line 1535
    aget v23, v24, v11

    #@1e1
    add-int v17, v17, v23

    #@1e3
    const/16 v16, 0x1

    #@1e5
    .line 1536
    aget v23, v24, v16

    #@1e7
    add-int v18, v18, v23

    #@1e9
    const/16 v23, 0x2

    #@1eb
    .line 1537
    aget v24, v24, v23

    #@1ed
    add-int v19, v19, v24

    #@1ef
    goto :goto_1ff

    #@1f0
    :cond_1f0
    const/4 v11, 0x0

    #@1f1
    const/16 v16, 0x1

    #@1f3
    const/16 v23, 0x2

    #@1f5
    .line 1539
    aget v25, v24, v11

    #@1f7
    add-int v8, v8, v25

    #@1f9
    .line 1540
    aget v11, v24, v16

    #@1fb
    add-int/2addr v12, v11

    #@1fc
    .line 1541
    aget v11, v24, v23

    #@1fe
    add-int/2addr v15, v11

    #@1ff
    :goto_1ff
    move/from16 v11, v30

    #@201
    if-ge v4, v11, :cond_205

    #@203
    add-int v14, v14, v22

    #@205
    :cond_205
    add-int/lit8 v4, v4, 0x1

    #@207
    move/from16 v30, v11

    #@209
    move/from16 v11, v22

    #@20b
    goto :goto_1a5

    #@20c
    :cond_20c
    move/from16 v22, v11

    #@20e
    move/from16 v11, v30

    #@210
    move/from16 v23, v0

    #@212
    move/from16 v24, v10

    #@214
    move/from16 v14, v27

    #@216
    const/4 v4, 0x0

    #@217
    :goto_217
    if-ge v4, v14, :cond_2a2

    #@219
    const/high16 v25, -0x1000000

    #@21b
    .line 1552
    aget v26, v21, v23

    #@21d
    and-int v25, v26, v25

    #@21f
    aget v26, v33, v1

    #@221
    shl-int/lit8 v26, v26, 0x10

    #@223
    or-int v25, v25, v26

    #@225
    aget v26, v33, v2

    #@227
    shl-int/lit8 v26, v26, 0x8

    #@229
    or-int v25, v25, v26

    #@22b
    aget v26, v33, v3

    #@22d
    or-int v25, v25, v26

    #@22f
    aput v25, v21, v23

    #@231
    sub-int/2addr v1, v8

    #@232
    sub-int/2addr v2, v12

    #@233
    sub-int/2addr v3, v15

    #@234
    sub-int v25, v24, v10

    #@236
    add-int v25, v25, v20

    #@238
    .line 1559
    rem-int v25, v25, v20

    #@23a
    aget-object v25, v9, v25

    #@23c
    const/16 v26, 0x0

    #@23e
    .line 1561
    aget v27, v25, v26

    #@240
    sub-int v8, v8, v27

    #@242
    const/16 v16, 0x1

    #@244
    .line 1562
    aget v26, v25, v16

    #@246
    sub-int v12, v12, v26

    #@248
    const/16 v26, 0x2

    #@24a
    .line 1563
    aget v27, v25, v26

    #@24c
    sub-int v15, v15, v27

    #@24e
    move/from16 v26, v10

    #@250
    if-nez v0, :cond_25c

    #@252
    add-int v10, v4, v13

    #@254
    .line 1566
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@257
    move-result v10

    #@258
    mul-int v10, v10, v22

    #@25a
    aput v10, v31, v4

    #@25c
    .line 1568
    :cond_25c
    aget v10, v31, v4

    #@25e
    add-int/2addr v10, v0

    #@25f
    .line 1570
    aget v27, v5, v10

    #@261
    const/16 v28, 0x0

    #@263
    aput v27, v25, v28

    #@265
    .line 1571
    aget v28, v6, v10

    #@267
    const/16 v16, 0x1

    #@269
    aput v28, v25, v16

    #@26b
    .line 1572
    aget v10, v7, v10

    #@26d
    const/16 v29, 0x2

    #@26f
    aput v10, v25, v29

    #@271
    add-int v17, v17, v27

    #@273
    add-int v18, v18, v28

    #@275
    add-int v19, v19, v10

    #@277
    add-int v1, v1, v17

    #@279
    add-int v2, v2, v18

    #@27b
    add-int v3, v3, v19

    #@27d
    add-int/lit8 v24, v24, 0x1

    #@27f
    .line 1582
    rem-int v24, v24, v20

    #@281
    .line 1583
    aget-object v10, v9, v24

    #@283
    const/16 v25, 0x0

    #@285
    .line 1585
    aget v27, v10, v25

    #@287
    add-int v8, v8, v27

    #@289
    const/16 v16, 0x1

    #@28b
    .line 1586
    aget v28, v10, v16

    #@28d
    add-int v12, v12, v28

    #@28f
    const/16 v29, 0x2

    #@291
    .line 1587
    aget v10, v10, v29

    #@293
    add-int/2addr v15, v10

    #@294
    sub-int v17, v17, v27

    #@296
    sub-int v18, v18, v28

    #@298
    sub-int v19, v19, v10

    #@29a
    add-int v23, v23, v22

    #@29c
    add-int/lit8 v4, v4, 0x1

    #@29e
    move/from16 v10, v26

    #@2a0
    goto/16 :goto_217

    #@2a2
    :cond_2a2
    move/from16 v26, v10

    #@2a4
    const/16 v16, 0x1

    #@2a6
    const/16 v25, 0x0

    #@2a8
    const/16 v29, 0x2

    #@2aa
    add-int/lit8 v0, v0, 0x1

    #@2ac
    move/from16 v30, v11

    #@2ae
    move/from16 v27, v14

    #@2b0
    move/from16 v4, v20

    #@2b2
    move-object/from16 v14, v21

    #@2b4
    move/from16 v11, v22

    #@2b6
    goto/16 :goto_18e

    #@2b8
    :cond_2b8
    move/from16 v22, v11

    #@2ba
    move-object/from16 v21, v14

    #@2bc
    move/from16 v14, v27

    #@2be
    const/4 v4, 0x0

    #@2bf
    const/4 v6, 0x0

    #@2c0
    const/4 v7, 0x0

    #@2c1
    move-object/from16 v2, p2

    #@2c3
    move-object/from16 v3, v21

    #@2c5
    move/from16 v5, v22

    #@2c7
    move/from16 v8, v22

    #@2c9
    move v9, v14

    #@2ca
    .line 1596
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    #@2cd
    return-object p2
.end method

.method public static toAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4
    move-result-object v0

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toAlpha(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static toAlpha(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    .line 1207
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 1208
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    #@b
    move-result-object v0

    #@c
    .line 1209
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_1d

    #@12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@15
    move-result p1

    #@16
    if-nez p1, :cond_1d

    #@18
    if-eq v0, p0, :cond_1d

    #@1a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static toGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1220
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toGray(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static toGray(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 8

    #@0
    .line 1231
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 1232
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@13
    move-result-object v2

    #@14
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@17
    move-result-object v0

    #@18
    .line 1233
    new-instance v1, Landroid/graphics/Canvas;

    #@1a
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1d
    .line 1234
    new-instance v2, Landroid/graphics/Paint;

    #@1f
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@22
    .line 1235
    new-instance v3, Landroid/graphics/ColorMatrix;

    #@24
    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    #@27
    const/4 v4, 0x0

    #@28
    .line 1236
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    #@2b
    .line 1237
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    #@2d
    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    #@30
    .line 1238
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@33
    .line 1239
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@36
    if-eqz p1, :cond_43

    #@38
    .line 1240
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@3b
    move-result p1

    #@3c
    if-nez p1, :cond_43

    #@3e
    if-eq v0, p0, :cond_43

    #@40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@43
    :cond_43
    return-object v0
.end method

.method public static toRound(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 693
    invoke-static {p0, v0, v0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static toRound(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 718
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    .line 734
    invoke-static/range {p0 .. p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@7
    move-result v2

    #@8
    const/4 v3, 0x0

    #@9
    if-eqz v2, :cond_c

    #@b
    return-object v3

    #@c
    .line 735
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@f
    move-result v2

    #@10
    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@13
    move-result v4

    #@14
    .line 737
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v5

    #@18
    .line 738
    new-instance v6, Landroid/graphics/Paint;

    #@1a
    const/4 v7, 0x1

    #@1b
    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    #@1e
    .line 739
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@21
    move-result-object v7

    #@22
    invoke-static {v2, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@25
    move-result-object v7

    #@26
    int-to-float v8, v5

    #@27
    const/high16 v9, 0x40000000    # 2.0f

    #@29
    div-float v10, v8, v9

    #@2b
    .line 741
    new-instance v11, Landroid/graphics/RectF;

    #@2d
    int-to-float v12, v2

    #@2e
    int-to-float v13, v4

    #@2f
    const/4 v14, 0x0

    #@30
    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@33
    sub-int v14, v2, v5

    #@35
    int-to-float v14, v14

    #@36
    div-float/2addr v14, v9

    #@37
    sub-int v5, v4, v5

    #@39
    int-to-float v5, v5

    #@3a
    div-float/2addr v5, v9

    #@3b
    .line 742
    invoke-virtual {v11, v14, v5}, Landroid/graphics/RectF;->inset(FF)V

    #@3e
    .line 743
    new-instance v5, Landroid/graphics/Matrix;

    #@40
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@43
    .line 744
    iget v14, v11, Landroid/graphics/RectF;->left:F

    #@45
    iget v15, v11, Landroid/graphics/RectF;->top:F

    #@47
    invoke-virtual {v5, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@4a
    if-eq v2, v4, :cond_52

    #@4c
    div-float v2, v8, v12

    #@4e
    div-float/2addr v8, v13

    #@4f
    .line 746
    invoke-virtual {v5, v2, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    #@52
    .line 748
    :cond_52
    new-instance v2, Landroid/graphics/BitmapShader;

    #@54
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@56
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@58
    invoke-direct {v2, v0, v4, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@5b
    .line 749
    invoke-virtual {v2, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@5e
    .line 750
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@61
    .line 751
    new-instance v2, Landroid/graphics/Canvas;

    #@63
    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@66
    .line 752
    invoke-virtual {v2, v11, v10, v10, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@69
    if-lez v1, :cond_83

    #@6b
    .line 754
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@6e
    move/from16 v3, p2

    #@70
    .line 755
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@73
    .line 756
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@75
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@78
    int-to-float v1, v1

    #@79
    .line 757
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@7c
    div-float/2addr v1, v9

    #@7d
    sub-float/2addr v10, v1

    #@7e
    div-float/2addr v12, v9

    #@7f
    div-float/2addr v13, v9

    #@80
    .line 759
    invoke-virtual {v2, v12, v13, v10, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@83
    :cond_83
    if-eqz p3, :cond_90

    #@85
    .line 761
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@88
    move-result v1

    #@89
    if-nez v1, :cond_90

    #@8b
    if-eq v7, v0, :cond_90

    #@8d
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    #@90
    :cond_90
    return-object v7
.end method

.method public static toRound(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 704
    invoke-static {p0, v0, v0, p1}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 773
    invoke-static {p0, p1, v0, v1, v1}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 803
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;
    .registers 7

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [F

    #@4
    const/4 v1, 0x0

    #@5
    aput p1, v0, v1

    #@7
    const/4 v1, 0x1

    #@8
    aput p1, v0, v1

    #@a
    const/4 v1, 0x2

    #@b
    aput p1, v0, v1

    #@d
    const/4 v1, 0x3

    #@e
    aput p1, v0, v1

    #@10
    const/4 v1, 0x4

    #@11
    aput p1, v0, v1

    #@13
    const/4 v1, 0x5

    #@14
    aput p1, v0, v1

    #@16
    const/4 v1, 0x6

    #@17
    aput p1, v0, v1

    #@19
    const/4 v1, 0x7

    #@1a
    aput p1, v0, v1

    #@1c
    .line 838
    invoke-static {p0, v0, p2, p3, p4}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;

    #@1f
    move-result-object p0

    #@20
    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 787
    invoke-static {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;[FFI)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 819
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;
    .registers 13

    #@0
    .line 856
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 857
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@b
    move-result v0

    #@c
    .line 858
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@f
    move-result v2

    #@10
    .line 859
    new-instance v3, Landroid/graphics/Paint;

    #@12
    const/4 v4, 0x1

    #@13
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    #@16
    .line 860
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1d
    move-result-object v4

    #@1e
    .line 861
    new-instance v5, Landroid/graphics/BitmapShader;

    #@20
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@22
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@24
    invoke-direct {v5, p0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@27
    .line 862
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@2a
    .line 863
    new-instance v5, Landroid/graphics/Canvas;

    #@2c
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@2f
    .line 864
    new-instance v6, Landroid/graphics/RectF;

    #@31
    int-to-float v0, v0

    #@32
    int-to-float v2, v2

    #@33
    const/4 v7, 0x0

    #@34
    invoke-direct {v6, v7, v7, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@37
    const/high16 v0, 0x40000000    # 2.0f

    #@39
    div-float v0, p2, v0

    #@3b
    .line 866
    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    #@3e
    .line 867
    new-instance v0, Landroid/graphics/Path;

    #@40
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@43
    .line 868
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@45
    invoke-virtual {v0, v6, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    #@48
    .line 869
    invoke-virtual {v5, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@4b
    cmpl-float p1, p2, v7

    #@4d
    if-lez p1, :cond_65

    #@4f
    .line 871
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@52
    .line 872
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    #@55
    .line 873
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@57
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@5a
    .line 874
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@5d
    .line 875
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@5f
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@62
    .line 876
    invoke-virtual {v5, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@65
    :cond_65
    if-eqz p4, :cond_72

    #@67
    .line 878
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@6a
    move-result p1

    #@6b
    if-nez p1, :cond_72

    #@6d
    if-eq v4, p0, :cond_72

    #@6f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    #@72
    :cond_72
    return-object v4
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 192
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    #@7
    move-result v0

    #@8
    .line 193
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    #@b
    move-result v1

    #@c
    const/4 v2, 0x1

    #@d
    .line 194
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@10
    const/4 v2, 0x0

    #@11
    .line 195
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    #@14
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    #@17
    move-result-object v3

    #@18
    if-eqz v3, :cond_26

    #@1a
    .line 198
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_21

    #@20
    goto :goto_26

    #@21
    .line 212
    :cond_21
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@24
    move-result-object v2

    #@25
    goto :goto_67

    #@26
    .line 199
    :cond_26
    :goto_26
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@29
    move-result v3

    #@2a
    .line 200
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2d
    move-result v4

    #@2e
    .line 199
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->measure(II)V

    #@31
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@34
    move-result v3

    #@35
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@38
    move-result v4

    #@39
    invoke-virtual {p0, v2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    #@3c
    .line 202
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    #@3f
    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    #@42
    move-result-object v2

    #@43
    if-eqz v2, :cond_51

    #@45
    .line 204
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_4c

    #@4b
    goto :goto_51

    #@4c
    .line 209
    :cond_4c
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@4f
    move-result-object v2

    #@50
    goto :goto_67

    #@51
    .line 205
    :cond_51
    :goto_51
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@54
    move-result v2

    #@55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@58
    move-result v3

    #@59
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@5b
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@5e
    move-result-object v2

    #@5f
    .line 206
    new-instance v3, Landroid/graphics/Canvas;

    #@61
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@64
    .line 207
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@67
    .line 214
    :goto_67
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    #@6a
    .line 215
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@6d
    return-object v2
.end method
