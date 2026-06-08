.class final Landroidx/core/content/res/GradientColorInflaterCompat;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    }
.end annotation


# static fields
.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .registers 5

    #@0
    if-eqz p0, :cond_3

    #@2
    return-object p0

    #@3
    :cond_3
    if-eqz p3, :cond_b

    #@5
    .line 195
    new-instance p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    #@7
    invoke-direct {p0, p1, p4, p2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    #@a
    return-object p0

    #@b
    .line 197
    :cond_b
    new-instance p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    #@d
    invoke-direct {p0, p1, p2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    #@10
    return-object p0
.end method

.method static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 71
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v0

    #@4
    .line 74
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x2

    #@9
    if-eq v1, v2, :cond_f

    #@b
    const/4 v3, 0x1

    #@c
    if-eq v1, v3, :cond_f

    #@e
    goto :goto_4

    #@f
    :cond_f
    if-ne v1, v2, :cond_16

    #@11
    .line 83
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    .line 80
    :cond_16
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@18
    const-string p1, "No start tag found"

    #@1a
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p0
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    move-object/from16 v0, p1

    #@2
    .line 90
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const-string v2, "gradient"

    #@8
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_d4

    #@e
    .line 96
    sget-object v1, Landroidx/core/R$styleable;->GradientColor:[I

    #@10
    move-object/from16 v2, p0

    #@12
    move-object/from16 v3, p2

    #@14
    move-object/from16 v4, p3

    #@16
    invoke-static {v2, v4, v3, v1}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@19
    move-result-object v1

    #@1a
    const-string v5, "startX"

    #@1c
    .line 98
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    #@1e
    const/4 v7, 0x0

    #@1f
    invoke-static {v1, v0, v5, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@22
    move-result v9

    #@23
    const-string v5, "startY"

    #@25
    .line 100
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    #@27
    invoke-static {v1, v0, v5, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@2a
    move-result v10

    #@2b
    const-string v5, "endX"

    #@2d
    .line 102
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    #@2f
    invoke-static {v1, v0, v5, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@32
    move-result v11

    #@33
    const-string v5, "endY"

    #@35
    .line 104
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    #@37
    invoke-static {v1, v0, v5, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@3a
    move-result v12

    #@3b
    const-string v5, "centerX"

    #@3d
    .line 106
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    #@3f
    invoke-static {v1, v0, v5, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@42
    move-result v14

    #@43
    const-string v5, "centerY"

    #@45
    .line 108
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    #@47
    invoke-static {v1, v0, v5, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@4a
    move-result v15

    #@4b
    const-string v5, "type"

    #@4d
    .line 110
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_type:I

    #@4f
    const/4 v8, 0x0

    #@50
    invoke-static {v1, v0, v5, v6, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@53
    move-result v5

    #@54
    const-string v6, "startColor"

    #@56
    .line 112
    sget v13, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    #@58
    invoke-static {v1, v0, v6, v13, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@5b
    move-result v6

    #@5c
    const-string v13, "centerColor"

    #@5e
    .line 114
    invoke-static {v0, v13}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@61
    move-result v7

    #@62
    .line 115
    sget v2, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    #@64
    invoke-static {v1, v0, v13, v2, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@67
    move-result v2

    #@68
    const-string v13, "endColor"

    #@6a
    .line 117
    sget v3, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    #@6c
    invoke-static {v1, v0, v13, v3, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@6f
    move-result v3

    #@70
    const-string v13, "tileMode"

    #@72
    .line 119
    sget v4, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    #@74
    invoke-static {v1, v0, v13, v4, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@77
    move-result v4

    #@78
    const-string v8, "gradientRadius"

    #@7a
    .line 121
    sget v13, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    #@7c
    move/from16 v17, v14

    #@7e
    const/4 v14, 0x0

    #@7f
    invoke-static {v1, v0, v8, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@82
    move-result v8

    #@83
    .line 123
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@86
    .line 125
    invoke-static/range {p0 .. p3}, Landroidx/core/content/res/GradientColorInflaterCompat;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    #@89
    move-result-object v0

    #@8a
    .line 126
    invoke-static {v0, v6, v3, v7, v2}, Landroidx/core/content/res/GradientColorInflaterCompat;->checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    #@8d
    move-result-object v0

    #@8e
    const/4 v1, 0x1

    #@8f
    if-eq v5, v1, :cond_af

    #@91
    const/4 v1, 0x2

    #@92
    if-eq v5, v1, :cond_a3

    #@94
    .line 141
    new-instance v1, Landroid/graphics/LinearGradient;

    #@96
    iget-object v13, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    #@98
    iget-object v14, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    #@9a
    .line 142
    invoke-static {v4}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@9d
    move-result-object v15

    #@9e
    move-object v8, v1

    #@9f
    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@a2
    return-object v1

    #@a3
    .line 137
    :cond_a3
    new-instance v1, Landroid/graphics/SweepGradient;

    #@a5
    iget-object v2, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    #@a7
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    #@a9
    move/from16 v3, v17

    #@ab
    invoke-direct {v1, v3, v15, v2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    #@ae
    return-object v1

    #@af
    :cond_af
    move/from16 v3, v17

    #@b1
    const/4 v1, 0x0

    #@b2
    cmpg-float v1, v8, v1

    #@b4
    if-lez v1, :cond_cc

    #@b6
    .line 134
    new-instance v1, Landroid/graphics/RadialGradient;

    #@b8
    iget-object v2, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    #@ba
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    #@bc
    .line 135
    invoke-static {v4}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@bf
    move-result-object v19

    #@c0
    move-object v13, v1

    #@c1
    move v14, v3

    #@c2
    move/from16 v16, v8

    #@c4
    move-object/from16 v17, v2

    #@c6
    move-object/from16 v18, v0

    #@c8
    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@cb
    return-object v1

    #@cc
    .line 131
    :cond_cc
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@ce
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    #@d0
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v0

    #@d4
    .line 92
    :cond_d4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@d6
    new-instance v3, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    const-string v3, ": invalid gradient color tag "

    #@e5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v0

    #@e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v0

    #@ed
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v0

    #@f1
    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@f4
    throw v2
.end method

.method private static inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    add-int/2addr v0, v1

    #@6
    .line 154
    new-instance v2, Ljava/util/ArrayList;

    #@8
    const/16 v3, 0x14

    #@a
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 155
    new-instance v4, Ljava/util/ArrayList;

    #@f
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    .line 157
    :cond_12
    :goto_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@15
    move-result v3

    #@16
    if-eq v3, v1, :cond_87

    #@18
    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1b
    move-result v5

    #@1c
    if-ge v5, v0, :cond_21

    #@1e
    const/4 v6, 0x3

    #@1f
    if-eq v3, v6, :cond_87

    #@21
    :cond_21
    const/4 v6, 0x2

    #@22
    if-eq v3, v6, :cond_25

    #@24
    goto :goto_12

    #@25
    :cond_25
    if-gt v5, v0, :cond_12

    #@27
    .line 163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    const-string v5, "item"

    #@2d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_34

    #@33
    goto :goto_12

    #@34
    .line 167
    :cond_34
    sget-object v3, Landroidx/core/R$styleable;->GradientColorItem:[I

    #@36
    invoke-static {p0, p3, p2, v3}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@39
    move-result-object v3

    #@3a
    .line 169
    sget v5, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    #@3c
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3f
    move-result v5

    #@40
    .line 170
    sget v6, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    #@42
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@45
    move-result v6

    #@46
    if-eqz v5, :cond_6a

    #@48
    if-eqz v6, :cond_6a

    #@4a
    .line 178
    sget v5, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    #@4c
    const/4 v6, 0x0

    #@4d
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@50
    move-result v5

    #@51
    .line 179
    sget v6, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    #@53
    const/4 v7, 0x0

    #@54
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@57
    move-result v6

    #@58
    .line 180
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@5b
    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v3

    #@5f
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    .line 183
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@65
    move-result-object v3

    #@66
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@69
    goto :goto_12

    #@6a
    .line 172
    :cond_6a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@6c
    new-instance p2, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@74
    move-result-object p1

    #@75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object p1

    #@79
    const-string p2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    #@7b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object p1

    #@7f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object p1

    #@83
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@86
    throw p0

    #@87
    .line 185
    :cond_87
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@8a
    move-result p0

    #@8b
    if-lez p0, :cond_93

    #@8d
    new-instance p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    #@8f
    invoke-direct {p0, v4, v2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    #@92
    return-object p0

    #@93
    :cond_93
    const/4 p0, 0x0

    #@94
    return-object p0
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p0, v0, :cond_c

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p0, v0, :cond_9

    #@6
    .line 209
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@8
    return-object p0

    #@9
    .line 206
    :cond_9
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    #@b
    return-object p0

    #@c
    .line 204
    :cond_c
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@e
    return-object p0
.end method
