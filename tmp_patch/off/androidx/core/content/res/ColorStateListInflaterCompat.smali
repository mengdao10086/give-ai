.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "ColorStateListInflaterCompat.java"


# static fields
.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 53
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 92
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v0

    #@4
    .line 95
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
    .line 104
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    .line 101
    :cond_16
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@18
    const-string p1, "No start tag found"

    #@1a
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 119
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "selector"

    #@6
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_11

    #@c
    .line 125
    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ColorStateListInflaterCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@f
    move-result-object p0

    #@10
    return-object p0

    #@11
    .line 121
    :cond_11
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@13
    new-instance p2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    .line 122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    const-string p2, ": invalid color state list tag "

    #@22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@31
    throw p0
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 224
    sget-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/TypedValue;

    #@8
    if-nez v1, :cond_12

    #@a
    .line 226
    new-instance v1, Landroid/util/TypedValue;

    #@c
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@f
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@12
    :cond_12
    return-object v1
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@3
    move-result-object p1

    #@4
    .line 72
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@7
    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return-object p0

    #@9
    :catch_9
    move-exception p0

    #@a
    const-string p1, "CSLCompat"

    #@c
    const-string p2, "Failed to inflate ColorStateList."

    #@e
    .line 74
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    const/4 p0, 0x0

    #@12
    return-object p0
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    move-object/from16 v2, p3

    #@6
    .line 134
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v3

    #@a
    const/4 v4, 0x1

    #@b
    add-int/2addr v3, v4

    #@c
    const/16 v5, 0x14

    #@e
    new-array v6, v5, [[I

    #@10
    new-array v5, v5, [I

    #@12
    const/4 v8, 0x0

    #@13
    .line 142
    :goto_13
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@16
    move-result v9

    #@17
    if-eq v9, v4, :cond_f4

    #@19
    .line 143
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1c
    move-result v10

    #@1d
    if-ge v10, v3, :cond_22

    #@1f
    const/4 v11, 0x3

    #@20
    if-eq v9, v11, :cond_f4

    #@22
    :cond_22
    const/4 v11, 0x2

    #@23
    if-ne v9, v11, :cond_ef

    #@25
    if-gt v10, v3, :cond_ef

    #@27
    .line 145
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2a
    move-result-object v9

    #@2b
    const-string v10, "item"

    #@2d
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v9

    #@31
    if-nez v9, :cond_35

    #@33
    goto/16 :goto_ef

    #@35
    .line 149
    :cond_35
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    #@37
    invoke-static {v0, v2, v1, v9}, Landroidx/core/content/res/ColorStateListInflaterCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@3a
    move-result-object v9

    #@3b
    .line 150
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    #@3d
    const/4 v11, -0x1

    #@3e
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@41
    move-result v10

    #@42
    const v12, -0xff01

    #@45
    if-eq v10, v11, :cond_61

    #@47
    .line 152
    invoke-static {v0, v10}, Landroidx/core/content/res/ColorStateListInflaterCompat;->isColorInt(Landroid/content/res/Resources;I)Z

    #@4a
    move-result v11

    #@4b
    if-nez v11, :cond_61

    #@4d
    .line 154
    :try_start_4d
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@50
    move-result-object v10

    #@51
    invoke-static {v0, v10, v2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@54
    move-result-object v10

    #@55
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@58
    move-result v10
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_5a

    #@59
    goto :goto_67

    #@5a
    .line 156
    :catch_5a
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    #@5c
    invoke-virtual {v9, v10, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    #@5f
    move-result v10

    #@60
    goto :goto_67

    #@61
    .line 160
    :cond_61
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    #@63
    invoke-virtual {v9, v10, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    #@66
    move-result v10

    #@67
    .line 164
    :goto_67
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    #@69
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@6c
    move-result v11

    #@6d
    const/high16 v12, 0x3f800000    # 1.0f

    #@6f
    if-eqz v11, :cond_78

    #@71
    .line 165
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    #@73
    invoke-virtual {v9, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@76
    move-result v12

    #@77
    goto :goto_86

    #@78
    .line 166
    :cond_78
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    #@7a
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@7d
    move-result v11

    #@7e
    if-eqz v11, :cond_86

    #@80
    .line 167
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    #@82
    invoke-virtual {v9, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@85
    move-result v12

    #@86
    .line 171
    :cond_86
    :goto_86
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    #@88
    const/16 v13, 0x1f

    #@8a
    const/high16 v14, -0x40800000    # -1.0f

    #@8c
    if-lt v11, v13, :cond_9d

    #@8e
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    #@90
    .line 172
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@93
    move-result v11

    #@94
    if-eqz v11, :cond_9d

    #@96
    .line 173
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    #@98
    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@9b
    move-result v11

    #@9c
    goto :goto_a3

    #@9d
    .line 175
    :cond_9d
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_lStar:I

    #@9f
    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@a2
    move-result v11

    #@a3
    .line 178
    :goto_a3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@a6
    .line 182
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    #@a9
    move-result v9

    #@aa
    .line 183
    new-array v13, v9, [I

    #@ac
    const/4 v14, 0x0

    #@ad
    const/4 v15, 0x0

    #@ae
    :goto_ae
    if-ge v14, v9, :cond_da

    #@b0
    .line 185
    invoke-interface {v1, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    #@b3
    move-result v4

    #@b4
    const v7, 0x10101a5

    #@b7
    if-eq v4, v7, :cond_d4

    #@b9
    const v7, 0x101031f

    #@bc
    if-eq v4, v7, :cond_d4

    #@be
    .line 186
    sget v7, Landroidx/core/R$attr;->alpha:I

    #@c0
    if-eq v4, v7, :cond_d4

    #@c2
    sget v7, Landroidx/core/R$attr;->lStar:I

    #@c4
    if-eq v4, v7, :cond_d4

    #@c6
    add-int/lit8 v7, v15, 0x1

    #@c8
    const/4 v0, 0x0

    #@c9
    .line 191
    invoke-interface {v1, v14, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@cc
    move-result v16

    #@cd
    if-eqz v16, :cond_d0

    #@cf
    goto :goto_d1

    #@d0
    :cond_d0
    neg-int v4, v4

    #@d1
    .line 192
    :goto_d1
    aput v4, v13, v15

    #@d3
    move v15, v7

    #@d4
    :cond_d4
    add-int/lit8 v14, v14, 0x1

    #@d6
    const/4 v4, 0x1

    #@d7
    move-object/from16 v0, p0

    #@d9
    goto :goto_ae

    #@da
    .line 195
    :cond_da
    invoke-static {v13, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    #@dd
    move-result-object v0

    #@de
    .line 200
    invoke-static {v10, v12, v11}, Landroidx/core/content/res/ColorStateListInflaterCompat;->modulateColorAlpha(IFF)I

    #@e1
    move-result v4

    #@e2
    .line 202
    invoke-static {v5, v8, v4}, Landroidx/core/content/res/GrowingArrayUtils;->append([III)[I

    #@e5
    move-result-object v5

    #@e6
    .line 203
    invoke-static {v6, v8, v0}, Landroidx/core/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@e9
    move-result-object v0

    #@ea
    move-object v6, v0

    #@eb
    check-cast v6, [[I

    #@ed
    add-int/lit8 v8, v8, 0x1

    #@ef
    :cond_ef
    :goto_ef
    const/4 v4, 0x1

    #@f0
    move-object/from16 v0, p0

    #@f2
    goto/16 :goto_13

    #@f4
    .line 207
    :cond_f4
    new-array v0, v8, [I

    #@f6
    .line 208
    new-array v1, v8, [[I

    #@f8
    const/4 v2, 0x0

    #@f9
    .line 209
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@fc
    .line 210
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@ff
    .line 212
    new-instance v2, Landroid/content/res/ColorStateList;

    #@101
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@104
    return-object v2
.end method

.method private static isColorInt(Landroid/content/res/Resources;I)Z
    .registers 4

    #@0
    .line 216
    invoke-static {}, Landroidx/core/content/res/ColorStateListInflaterCompat;->getTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 217
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@8
    .line 218
    iget p0, v0, Landroid/util/TypedValue;->type:I

    #@a
    const/16 p1, 0x1c

    #@c
    if-lt p0, p1, :cond_15

    #@e
    iget p0, v0, Landroid/util/TypedValue;->type:I

    #@10
    const/16 p1, 0x1f

    #@12
    if-gt p0, p1, :cond_15

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v1, 0x0

    #@16
    :goto_16
    return v1
.end method

.method private static modulateColorAlpha(IFF)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p2, v0

    #@3
    const/4 v1, 0x0

    #@4
    if-ltz v0, :cond_e

    #@6
    const/high16 v0, 0x42c80000    # 100.0f

    #@8
    cmpg-float v0, p2, v0

    #@a
    if-gtz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    move v0, v1

    #@f
    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    #@11
    cmpl-float v2, p1, v2

    #@13
    if-nez v2, :cond_18

    #@15
    if-nez v0, :cond_18

    #@17
    return p0

    #@18
    .line 247
    :cond_18
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@1b
    move-result v2

    #@1c
    int-to-float v2, v2

    #@1d
    mul-float/2addr v2, p1

    #@1e
    const/high16 p1, 0x3f000000    # 0.5f

    #@20
    add-float/2addr v2, p1

    #@21
    float-to-int p1, v2

    #@22
    const/16 v2, 0xff

    #@24
    .line 248
    invoke-static {p1, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@27
    move-result p1

    #@28
    if-eqz v0, :cond_3a

    #@2a
    .line 251
    invoke-static {p0}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    #@2d
    move-result-object p0

    #@2e
    .line 252
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getHue()F

    #@31
    move-result v0

    #@32
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    #@35
    move-result p0

    #@36
    invoke-static {v0, p0, p2}, Landroidx/core/content/res/CamColor;->toColor(FFF)I

    #@39
    move-result p0

    #@3a
    :cond_3a
    const p2, 0xffffff

    #@3d
    and-int/2addr p0, p2

    #@3e
    shl-int/lit8 p1, p1, 0x18

    #@40
    or-int/2addr p0, p1

    #@41
    return p0
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    #@0
    if-nez p1, :cond_7

    #@2
    .line 234
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p0

    #@6
    goto :goto_c

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    .line 235
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object p0

    #@c
    :goto_c
    return-object p0
.end method
