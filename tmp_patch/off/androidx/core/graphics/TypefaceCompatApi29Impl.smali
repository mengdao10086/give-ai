.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi29Impl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 44
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    #@3
    return-void
.end method

.method private findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;
    .registers 8

    #@0
    .line 53
    new-instance v0, Landroid/graphics/fonts/FontStyle;

    #@2
    and-int/lit8 v1, p2, 0x1

    #@4
    if-eqz v1, :cond_9

    #@6
    const/16 v1, 0x2bc

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/16 v1, 0x190

    #@b
    :goto_b
    and-int/lit8 p2, p2, 0x2

    #@d
    const/4 v2, 0x0

    #@e
    const/4 v3, 0x1

    #@f
    if-eqz p2, :cond_13

    #@11
    move p2, v3

    #@12
    goto :goto_14

    #@13
    :cond_13
    move p2, v2

    #@14
    .line 57
    :goto_14
    invoke-direct {v0, v1, p2}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    #@17
    .line 59
    invoke-virtual {p1, v2}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    #@1a
    move-result-object p2

    #@1b
    .line 60
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    #@22
    move-result v1

    #@23
    .line 61
    :goto_23
    invoke-virtual {p1}, Landroid/graphics/fonts/FontFamily;->getSize()I

    #@26
    move-result v2

    #@27
    if-ge v3, v2, :cond_3c

    #@29
    .line 62
    invoke-virtual {p1, v3}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    #@2c
    move-result-object v2

    #@2d
    .line 63
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    #@30
    move-result-object v4

    #@31
    invoke-static {v0, v4}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    #@34
    move-result v4

    #@35
    if-ge v4, v1, :cond_39

    #@37
    move-object p2, v2

    #@38
    move v1, v4

    #@39
    :cond_39
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_23

    #@3c
    :cond_3c
    return-object p2
.end method

.method private static getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I
    .registers 4

    #@0
    .line 48
    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@c
    move-result v0

    #@d
    div-int/lit8 v0, v0, 0x64

    #@f
    .line 49
    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    #@12
    move-result p0

    #@13
    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    #@16
    move-result p1

    #@17
    if-ne p0, p1, :cond_1b

    #@19
    const/4 p0, 0x0

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    const/4 p0, 0x2

    #@1c
    :goto_1c
    add-int/2addr v0, p0

    #@1d
    return v0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 12

    #@0
    const/4 p1, 0x0

    #@1
    .line 132
    :try_start_1
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@4
    move-result-object p2

    #@5
    array-length v0, p2

    #@6
    const/4 v1, 0x0

    #@7
    move-object v3, p1

    #@8
    move v2, v1

    #@9
    :goto_9
    if-ge v2, v0, :cond_4e

    #@b
    aget-object v4, p2, v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_6a

    #@d
    .line 134
    :try_start_d
    new-instance v5, Landroid/graphics/fonts/Font$Builder;

    #@f
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    #@12
    move-result v6

    #@13
    invoke-direct {v5, p3, v6}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    #@16
    .line 135
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    #@19
    move-result v6

    #@1a
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    #@1d
    move-result-object v5

    #@1e
    .line 136
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_26

    #@24
    const/4 v6, 0x1

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v6, v1

    #@27
    :goto_27
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    #@2a
    move-result-object v5

    #@2b
    .line 138
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    #@2e
    move-result v6

    #@2f
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    #@32
    move-result-object v5

    #@33
    .line 139
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v5, v4}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    #@3a
    move-result-object v4

    #@3b
    .line 140
    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    #@3e
    move-result-object v4

    #@3f
    if-nez v3, :cond_48

    #@41
    .line 142
    new-instance v5, Landroid/graphics/fonts/FontFamily$Builder;

    #@43
    invoke-direct {v5, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    #@46
    move-object v3, v5

    #@47
    goto :goto_4b

    #@48
    .line 144
    :cond_48
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_4b} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4b} :catch_6a

    #@4b
    :catch_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_9

    #@4e
    :cond_4e
    if-nez v3, :cond_51

    #@50
    return-object p1

    #@51
    .line 153
    :cond_51
    :try_start_51
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    #@54
    move-result-object p2

    #@55
    .line 154
    new-instance p3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    #@57
    invoke-direct {p3, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    #@5a
    .line 155
    invoke-direct {p0, p2, p4}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    #@5d
    move-result-object p2

    #@5e
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    #@61
    move-result-object p2

    #@62
    invoke-virtual {p3, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    #@65
    move-result-object p2

    #@66
    .line 156
    invoke-virtual {p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    #@69
    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6a} :catch_6a

    #@6a
    :catch_6a
    return-object p1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 14

    #@0
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    .line 92
    :try_start_5
    array-length v1, p3

    #@6
    const/4 v2, 0x0

    #@7
    move-object v4, v0

    #@8
    move v3, v2

    #@9
    :goto_9
    if-ge v3, v1, :cond_63

    #@b
    aget-object v5, p3, v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_80

    #@d
    .line 93
    :try_start_d
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    #@10
    move-result-object v6

    #@11
    const-string v7, "r"

    #@13
    invoke-virtual {p1, v6, v7, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@16
    move-result-object v6

    #@17
    if-nez v6, :cond_1f

    #@19
    if-eqz v6, :cond_60

    #@1b
    .line 109
    :goto_1b
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1e} :catch_60
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_80

    #@1e
    goto :goto_60

    #@1f
    .line 98
    :cond_1f
    :try_start_1f
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    #@21
    invoke-direct {v7, v6}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@24
    .line 99
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    #@27
    move-result v8

    #@28
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    #@2b
    move-result-object v7

    #@2c
    .line 100
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_34

    #@32
    const/4 v8, 0x1

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v8, v2

    #@35
    :goto_35
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    #@38
    move-result-object v7

    #@39
    .line 102
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    #@3c
    move-result v5

    #@3d
    invoke-virtual {v7, v5}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    #@40
    move-result-object v5

    #@41
    .line 103
    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    #@44
    move-result-object v5

    #@45
    if-nez v4, :cond_4e

    #@47
    .line 105
    new-instance v7, Landroid/graphics/fonts/FontFamily$Builder;

    #@49
    invoke-direct {v7, v5}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    #@4c
    move-object v4, v7

    #@4d
    goto :goto_51

    #@4e
    .line 107
    :cond_4e
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_54

    #@51
    :goto_51
    if-eqz v6, :cond_60

    #@53
    goto :goto_1b

    #@54
    :catchall_54
    move-exception v5

    #@55
    if-eqz v6, :cond_5f

    #@57
    .line 93
    :try_start_57
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    #@5a
    goto :goto_5f

    #@5b
    :catchall_5b
    move-exception v6

    #@5c
    :try_start_5c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@5f
    :cond_5f
    :goto_5f
    throw v5
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_80

    #@60
    :catch_60
    :cond_60
    :goto_60
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_9

    #@63
    :cond_63
    if-nez v4, :cond_66

    #@65
    return-object v0

    #@66
    .line 116
    :cond_66
    :try_start_66
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    #@69
    move-result-object p1

    #@6a
    .line 117
    new-instance p2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    #@6c
    invoke-direct {p2, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    #@6f
    .line 118
    invoke-direct {p0, p1, p4}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    #@72
    move-result-object p1

    #@73
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    #@76
    move-result-object p1

    #@77
    invoke-virtual {p2, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    #@7a
    move-result-object p1

    #@7b
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    #@7e
    move-result-object p1
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7f} :catch_80

    #@7f
    return-object p1

    #@80
    :catch_80
    return-object v0
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 3

    #@0
    .line 81
    new-instance p1, Ljava/lang/RuntimeException;

    #@2
    const-string p2, "Do not use this function in API 29 or later."

    #@4
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    #@0
    .line 172
    :try_start_0
    new-instance p1, Landroid/graphics/fonts/Font$Builder;

    #@2
    invoke-direct {p1, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    #@5
    invoke-virtual {p1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    #@8
    move-result-object p1

    #@9
    .line 173
    new-instance p2, Landroid/graphics/fonts/FontFamily$Builder;

    #@b
    invoke-direct {p2, p1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    #@e
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    #@11
    move-result-object p2

    #@12
    .line 174
    new-instance p3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    #@14
    invoke-direct {p3, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    #@17
    .line 176
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    #@1a
    move-result-object p1

    #@1b
    invoke-virtual {p3, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    #@1e
    move-result-object p1

    #@1f
    .line 177
    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    #@22
    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    #@23
    return-object p1

    #@24
    :catch_24
    const/4 p1, 0x0

    #@25
    return-object p1
.end method

.method createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 5

    #@0
    .line 187
    invoke-static {p2, p3, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 3

    #@0
    .line 75
    new-instance p1, Ljava/lang/RuntimeException;

    #@2
    const-string p2, "Do not use this function in API 29 or later."

    #@4
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method
