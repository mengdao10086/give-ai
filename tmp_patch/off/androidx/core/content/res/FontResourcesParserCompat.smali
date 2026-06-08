.class public Landroidx/core/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FetchStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x1f4

.field public static final FETCH_STRATEGY_ASYNC:I = 0x1

.field public static final FETCH_STRATEGY_BLOCKING:I = 0x0

.field public static final INFINITE_TIMEOUT_VALUE:I = -0x1

.field private static final ITALIC:I = 0x1

.field private static final NORMAL_WEIGHT:I = 0x190


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getType(Landroid/content/res/TypedArray;I)I
    .registers 2

    #@0
    .line 258
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;->getType(Landroid/content/res/TypedArray;I)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 186
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_b

    #@7
    const/4 v2, 0x1

    #@8
    if-eq v0, v2, :cond_b

    #@a
    goto :goto_0

    #@b
    :cond_b
    if-ne v0, v1, :cond_12

    #@d
    .line 194
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    .line 192
    :cond_12
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@14
    const-string p1, "No start tag found"

    #@16
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@19
    throw p0
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0

    #@7
    .line 279
    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    .line 281
    :try_start_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_19

    #@11
    .line 282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@14
    move-result-object p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_50

    #@15
    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@18
    return-object p0

    #@19
    .line 285
    :cond_19
    :try_start_19
    new-instance v1, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1e
    const/4 v2, 0x0

    #@1f
    .line 288
    invoke-static {v0, v2}, Landroidx/core/content/res/FontResourcesParserCompat;->getType(Landroid/content/res/TypedArray;I)I

    #@22
    move-result v3

    #@23
    const/4 v4, 0x1

    #@24
    if-ne v3, v4, :cond_41

    #@26
    move p1, v2

    #@27
    .line 289
    :goto_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    #@2a
    move-result v3

    #@2b
    if-ge p1, v3, :cond_4c

    #@2d
    .line 290
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_3e

    #@33
    .line 292
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v3}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    :cond_3e
    add-int/lit8 p1, p1, 0x1

    #@40
    goto :goto_27

    #@41
    .line 296
    :cond_41
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@44
    move-result-object p0

    #@45
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    #@48
    move-result-object p0

    #@49
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_19 .. :try_end_4c} :catchall_50

    #@4c
    .line 300
    :cond_4c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4f
    return-object v1

    #@50
    :catchall_50
    move-exception p0

    #@51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@54
    .line 301
    throw p0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    const-string v2, "font-family"

    #@4
    .line 199
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@7
    .line 200
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_16

    #@11
    .line 202
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    .line 204
    :cond_16
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@19
    return-object v1
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 211
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v0

    #@4
    .line 212
    sget-object v1, Landroidx/core/R$styleable;->FontFamily:[I

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 213
    sget v1, Landroidx/core/R$styleable;->FontFamily_fontProviderAuthority:I

    #@c
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 214
    sget v2, Landroidx/core/R$styleable;->FontFamily_fontProviderPackage:I

    #@12
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 215
    sget v3, Landroidx/core/R$styleable;->FontFamily_fontProviderQuery:I

    #@18
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 216
    sget v4, Landroidx/core/R$styleable;->FontFamily_fontProviderCerts:I

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@22
    move-result v4

    #@23
    .line 217
    sget v6, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    #@25
    const/4 v7, 0x1

    #@26
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@29
    move-result v6

    #@2a
    .line 219
    sget v7, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    #@2c
    const/16 v8, 0x1f4

    #@2e
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@31
    move-result v7

    #@32
    .line 221
    sget v8, Landroidx/core/R$styleable;->FontFamily_fontProviderSystemFontFamily:I

    #@34
    .line 222
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    .line 224
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3b
    const/4 v0, 0x3

    #@3c
    if-eqz v1, :cond_5b

    #@3e
    if-eqz v2, :cond_5b

    #@40
    if-eqz v3, :cond_5b

    #@42
    .line 226
    :goto_42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@45
    move-result v5

    #@46
    if-eq v5, v0, :cond_4c

    #@48
    .line 227
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4b
    goto :goto_42

    #@4c
    .line 229
    :cond_4c
    invoke-static {p1, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    #@4f
    move-result-object p0

    #@50
    .line 230
    new-instance p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    #@52
    new-instance v0, Landroidx/core/provider/FontRequest;

    #@54
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    #@57
    invoke-direct {p1, v0, v6, v7, v8}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroidx/core/provider/FontRequest;IILjava/lang/String;)V

    #@5a
    return-object p1

    #@5b
    .line 237
    :cond_5b
    new-instance v1, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@60
    .line 238
    :goto_60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@63
    move-result v2

    #@64
    if-eq v2, v0, :cond_86

    #@66
    .line 239
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@69
    move-result v2

    #@6a
    const/4 v3, 0x2

    #@6b
    if-eq v2, v3, :cond_6e

    #@6d
    goto :goto_60

    #@6e
    .line 240
    :cond_6e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    const-string v3, "font"

    #@74
    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_82

    #@7a
    .line 242
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@7d
    move-result-object v2

    #@7e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@81
    goto :goto_60

    #@82
    .line 244
    :cond_82
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@85
    goto :goto_60

    #@86
    .line 247
    :cond_86
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@89
    move-result p0

    #@8a
    if-eqz p0, :cond_8e

    #@8c
    const/4 p0, 0x0

    #@8d
    return-object p0

    #@8e
    .line 251
    :cond_8e
    new-instance p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    #@90
    new-array p1, v5, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@92
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@95
    move-result-object p1

    #@96
    check-cast p1, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@98
    invoke-direct {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    #@9b
    return-object p0
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 315
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v0

    #@4
    .line 316
    sget-object v1, Landroidx/core/R$styleable;->FontFamilyFont:[I

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object p1

    #@a
    .line 317
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    #@c
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_15

    #@12
    .line 318
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    #@14
    goto :goto_17

    #@15
    .line 319
    :cond_15
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_android_fontWeight:I

    #@17
    :goto_17
    const/16 v1, 0x190

    #@19
    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1c
    move-result v4

    #@1d
    .line 321
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_28

    #@25
    .line 322
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    #@27
    goto :goto_2a

    #@28
    .line 323
    :cond_28
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_android_fontStyle:I

    #@2a
    :goto_2a
    const/4 v1, 0x0

    #@2b
    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2e
    move-result v0

    #@2f
    const/4 v2, 0x1

    #@30
    if-ne v2, v0, :cond_34

    #@32
    move v5, v2

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v5, v1

    #@35
    .line 325
    :goto_35
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    #@37
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_40

    #@3d
    .line 326
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    #@3f
    goto :goto_42

    #@40
    .line 327
    :cond_40
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_android_ttcIndex:I

    #@42
    .line 329
    :goto_42
    sget v2, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    #@44
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_4d

    #@4a
    .line 330
    sget v2, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    #@4c
    goto :goto_4f

    #@4d
    .line 331
    :cond_4d
    sget v2, Landroidx/core/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    #@4f
    .line 332
    :goto_4f
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@56
    move-result v7

    #@57
    .line 334
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    #@59
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_62

    #@5f
    .line 335
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    #@61
    goto :goto_64

    #@62
    .line 336
    :cond_62
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_android_font:I

    #@64
    .line 337
    :goto_64
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@67
    move-result v8

    #@68
    .line 338
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    .line 339
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@6f
    .line 340
    :goto_6f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@72
    move-result p1

    #@73
    const/4 v0, 0x3

    #@74
    if-eq p1, v0, :cond_7a

    #@76
    .line 341
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@79
    goto :goto_6f

    #@7a
    .line 343
    :cond_7a
    new-instance p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@7c
    move-object v2, p0

    #@7d
    invoke-direct/range {v2 .. v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    #@80
    return-object p0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    :goto_1
    if-lez v0, :cond_14

    #@3
    .line 350
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x2

    #@8
    if-eq v1, v2, :cond_11

    #@a
    const/4 v2, 0x3

    #@b
    if-eq v1, v2, :cond_e

    #@d
    goto :goto_1

    #@e
    :cond_e
    add-int/lit8 v0, v0, -0x1

    #@10
    goto :goto_1

    #@11
    :cond_11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_1

    #@14
    :cond_14
    return-void
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    #@0
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 307
    array-length v1, p0

    #@6
    const/4 v2, 0x0

    #@7
    move v3, v2

    #@8
    :goto_8
    if-ge v3, v1, :cond_16

    #@a
    aget-object v4, p0, v3

    #@c
    .line 308
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@f
    move-result-object v4

    #@10
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    return-object v0
.end method
