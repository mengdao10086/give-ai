.class public Landroidx/core/graphics/TypefaceCompatApi26Impl;
.super Landroidx/core/graphics/TypefaceCompatApi21Impl;
.source "TypefaceCompatApi26Impl.java"


# static fields
.field private static final ABORT_CREATION_METHOD:Ljava/lang/String; = "abortCreation"

.field private static final ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String; = "addFontFromAssetManager"

.field private static final ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String; = "addFontFromBuffer"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final FREEZE_METHOD:Ljava/lang/String; = "freeze"

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi26Impl"


# instance fields
.field protected final mAbortCreation:Ljava/lang/reflect/Method;

.field protected final mAddFontFromAssetManager:Ljava/lang/reflect/Method;

.field protected final mAddFontFromBuffer:Ljava/lang/reflect/Method;

.field protected final mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field protected final mFontFamily:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final mFontFamilyCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field protected final mFreeze:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 8

    #@0
    .line 74
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi21Impl;-><init>()V

    #@3
    .line 83
    :try_start_3
    invoke-virtual {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFontFamily()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    .line 84
    invoke-virtual {p0, v0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@a
    move-result-object v1

    #@b
    .line 85
    invoke-virtual {p0, v0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e
    move-result-object v2

    #@f
    .line 86
    invoke-virtual {p0, v0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@12
    move-result-object v3

    #@13
    .line 87
    invoke-virtual {p0, v0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    move-result-object v4

    #@17
    .line 88
    invoke-virtual {p0, v0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1a
    move-result-object v5

    #@1b
    .line 89
    invoke-virtual {p0, v0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1e
    move-result-object v6
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_1f} :catch_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1f} :catch_20

    #@1f
    goto :goto_46

    #@20
    :catch_20
    move-exception v0

    #@21
    goto :goto_23

    #@22
    :catch_22
    move-exception v0

    #@23
    .line 91
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    const-string v2, "Unable to collect necessary methods for class "

    #@27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    const-string v2, "TypefaceCompatApi26Impl"

    #@3c
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    const/4 v0, 0x0

    #@40
    move-object v1, v0

    #@41
    move-object v2, v1

    #@42
    move-object v3, v2

    #@43
    move-object v4, v3

    #@44
    move-object v5, v4

    #@45
    move-object v6, v5

    #@46
    .line 101
    :goto_46
    iput-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    #@48
    .line 102
    iput-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    #@4a
    .line 103
    iput-object v2, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    #@4c
    .line 104
    iput-object v3, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    #@4e
    .line 105
    iput-object v4, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    #@50
    .line 106
    iput-object v5, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    #@52
    .line 107
    iput-object v6, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    #@54
    return-void
.end method

.method private abortCreation(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 194
    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_8

    #@8
    :catch_8
    return-void
.end method

.method private addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    .line 140
    :try_start_1
    iget-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    #@3
    const/16 v2, 0x8

    #@5
    new-array v2, v2, [Ljava/lang/Object;

    #@7
    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@a
    move-result-object p1

    #@b
    aput-object p1, v2, v0

    #@d
    const/4 p1, 0x1

    #@e
    aput-object p3, v2, p1

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object p1

    #@14
    const/4 p3, 0x2

    #@15
    aput-object p1, v2, p3

    #@17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object p1

    #@1b
    const/4 p3, 0x3

    #@1c
    aput-object p1, v2, p3

    #@1e
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object p1

    #@22
    const/4 p3, 0x4

    #@23
    aput-object p1, v2, p3

    #@25
    .line 142
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object p1

    #@29
    const/4 p3, 0x5

    #@2a
    aput-object p1, v2, p3

    #@2c
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object p1

    #@30
    const/4 p3, 0x6

    #@31
    aput-object p1, v2, p3

    #@33
    const/4 p1, 0x7

    #@34
    aput-object p7, v2, p1

    #@36
    .line 140
    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object p1

    #@3a
    check-cast p1, Ljava/lang/Boolean;

    #@3c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@3f
    move-result p1
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_40} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_40} :catch_41

    #@40
    return p1

    #@41
    :catch_41
    return v0
.end method

.method private addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 155
    :try_start_1
    iget-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    #@3
    const/4 v2, 0x5

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    aput-object p2, v2, v0

    #@8
    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object p2

    #@c
    const/4 p3, 0x1

    #@d
    aput-object p2, v2, p3

    #@f
    const/4 p2, 0x2

    #@10
    const/4 p3, 0x0

    #@11
    aput-object p3, v2, p2

    #@13
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object p2

    #@17
    const/4 p3, 0x3

    #@18
    aput-object p2, v2, p3

    #@1a
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object p2

    #@1e
    const/4 p3, 0x4

    #@1f
    aput-object p2, v2, p3

    #@21
    .line 155
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    check-cast p1, Ljava/lang/Boolean;

    #@27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@2a
    move-result p1
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2b} :catch_2c

    #@2b
    return p1

    #@2c
    :catch_2c
    return v0
.end method

.method private freeze(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 183
    :try_start_1
    iget-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    #@3
    new-array v2, v0, [Ljava/lang/Object;

    #@5
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Ljava/lang/Boolean;

    #@b
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result p1
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_f} :catch_10

    #@f
    return p1

    #@10
    :catch_10
    return v0
.end method

.method private isFontFamilyPrivateAPIAvailable()Z
    .registers 3

    #@0
    .line 114
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_b

    #@4
    const-string v0, "TypefaceCompatApi26Impl"

    #@6
    const-string v1, "Unable to collect necessary private methods. Fallback to legacy implementation."

    #@8
    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 118
    :cond_b
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    #@d
    if-eqz v0, :cond_11

    #@f
    const/4 v0, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0
.end method

.method private newFamily()Ljava/lang/Object;
    .registers 3

    #@0
    .line 127
    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    return-object v0

    #@a
    :catch_a
    const/4 v0, 0x0

    #@b
    return-object v0
.end method


# virtual methods
.method protected createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 169
    :try_start_1
    iget-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    #@3
    const/4 v2, 0x1

    #@4
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    const/4 v3, 0x0

    #@9
    .line 170
    invoke-static {v1, v3, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@c
    .line 171
    iget-object p1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    #@e
    const/4 v4, 0x3

    #@f
    new-array v4, v4, [Ljava/lang/Object;

    #@11
    aput-object v1, v4, v3

    #@13
    const/4 v1, -0x1

    #@14
    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v4, v2

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v1

    #@1e
    const/4 v2, 0x2

    #@1f
    aput-object v1, v4, v2

    #@21
    .line 171
    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_27} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_27} :catch_28

    #@27
    return-object p1

    #@28
    :catch_28
    return-object v0
.end method

.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 15

    #@0
    .line 203
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    #@9
    move-result-object p1

    #@a
    return-object p1

    #@b
    .line 206
    :cond_b
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    #@e
    move-result-object p3

    #@f
    const/4 p4, 0x0

    #@10
    if-nez p3, :cond_13

    #@12
    return-object p4

    #@13
    .line 210
    :cond_13
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@16
    move-result-object p2

    #@17
    array-length v8, p2

    #@18
    const/4 v0, 0x0

    #@19
    move v9, v0

    #@1a
    :goto_1a
    if-ge v9, v8, :cond_46

    #@1c
    aget-object v0, p2, v9

    #@1e
    .line 211
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 212
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    #@25
    move-result v4

    #@26
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    #@29
    move-result v5

    #@2a
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    #@2d
    move-result v6

    #@2e
    .line 213
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    #@35
    move-result-object v7

    #@36
    move-object v0, p0

    #@37
    move-object v1, p1

    #@38
    move-object v2, p3

    #@39
    .line 211
    invoke-direct/range {v0 .. v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_43

    #@3f
    .line 214
    invoke-direct {p0, p3}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    #@42
    return-object p4

    #@43
    :cond_43
    add-int/lit8 v9, v9, 0x1

    #@45
    goto :goto_1a

    #@46
    .line 218
    :cond_46
    invoke-direct {p0, p3}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    #@49
    move-result p1

    #@4a
    if-nez p1, :cond_4d

    #@4c
    return-object p4

    #@4d
    .line 221
    :cond_4d
    invoke-virtual {p0, p3}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    #@50
    move-result-object p1

    #@51
    return-object p1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 15

    #@0
    .line 229
    array-length v0, p3

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    if-ge v0, v2, :cond_6

    #@5
    return-object v1

    #@6
    .line 232
    :cond_6
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_56

    #@c
    .line 235
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@f
    move-result-object p3

    #@10
    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object p1

    #@14
    .line 238
    :try_start_14
    invoke-virtual {p3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    #@17
    move-result-object p4

    #@18
    const-string v0, "r"

    #@1a
    invoke-virtual {p1, p4, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@1d
    move-result-object p1

    #@1e
    if-nez p1, :cond_26

    #@20
    if-eqz p1, :cond_25

    #@22
    .line 246
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_25} :catch_55

    #@25
    :cond_25
    return-object v1

    #@26
    .line 242
    :cond_26
    :try_start_26
    new-instance p2, Landroid/graphics/Typeface$Builder;

    #@28
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@2b
    move-result-object p4

    #@2c
    invoke-direct {p2, p4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    #@2f
    .line 243
    invoke-virtual {p3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    #@32
    move-result p4

    #@33
    invoke-virtual {p2, p4}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    #@36
    move-result-object p2

    #@37
    .line 244
    invoke-virtual {p3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    #@3a
    move-result p3

    #@3b
    invoke-virtual {p2, p3}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    #@3e
    move-result-object p2

    #@3f
    .line 245
    invoke-virtual {p2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    #@42
    move-result-object p2
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_49

    #@43
    if-eqz p1, :cond_48

    #@45
    .line 246
    :try_start_45
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_55

    #@48
    :cond_48
    return-object p2

    #@49
    :catchall_49
    move-exception p2

    #@4a
    if-eqz p1, :cond_54

    #@4c
    .line 237
    :try_start_4c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    #@4f
    goto :goto_54

    #@50
    :catchall_50
    move-exception p1

    #@51
    :try_start_51
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@54
    :cond_54
    :goto_54
    throw p2
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_55} :catch_55

    #@55
    :catch_55
    return-object v1

    #@56
    .line 250
    :cond_56
    invoke-static {p1, p3, p2}, Landroidx/core/graphics/TypefaceCompatUtil;->readFontInfoIntoByteBuffer(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    #@59
    move-result-object p1

    #@5a
    .line 252
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    #@5d
    move-result-object p2

    #@5e
    if-nez p2, :cond_61

    #@60
    return-object v1

    #@61
    .line 257
    :cond_61
    array-length v0, p3

    #@62
    const/4 v3, 0x0

    #@63
    move v9, v3

    #@64
    :goto_64
    if-ge v9, v0, :cond_91

    #@66
    aget-object v4, p3, v9

    #@68
    .line 258
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    #@6b
    move-result-object v5

    #@6c
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v5

    #@70
    check-cast v5, Ljava/nio/ByteBuffer;

    #@72
    if-nez v5, :cond_75

    #@74
    goto :goto_8e

    #@75
    .line 263
    :cond_75
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    #@78
    move-result v6

    #@79
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    #@7c
    move-result v7

    #@7d
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    #@80
    move-result v8

    #@81
    move-object v3, p0

    #@82
    move-object v4, p2

    #@83
    .line 262
    invoke-direct/range {v3 .. v8}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    #@86
    move-result v3

    #@87
    if-nez v3, :cond_8d

    #@89
    .line 265
    invoke-direct {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    #@8c
    return-object v1

    #@8d
    :cond_8d
    move v3, v2

    #@8e
    :goto_8e
    add-int/lit8 v9, v9, 0x1

    #@90
    goto :goto_64

    #@91
    :cond_91
    if-nez v3, :cond_97

    #@93
    .line 271
    invoke-direct {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    #@96
    return-object v1

    #@97
    .line 274
    :cond_97
    invoke-direct {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    #@9a
    move-result p1

    #@9b
    if-nez p1, :cond_9e

    #@9d
    return-object v1

    #@9e
    .line 277
    :cond_9e
    invoke-virtual {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    #@a1
    move-result-object p1

    #@a2
    if-nez p1, :cond_a5

    #@a4
    return-object v1

    #@a5
    .line 281
    :cond_a5
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@a8
    move-result-object p1

    #@a9
    return-object p1
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 14

    #@0
    .line 291
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 292
    invoke-super/range {p0 .. p5}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    #@9
    move-result-object p1

    #@a
    return-object p1

    #@b
    .line 294
    :cond_b
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    #@e
    move-result-object p2

    #@f
    const/4 p3, 0x0

    #@10
    if-nez p2, :cond_13

    #@12
    return-object p3

    #@13
    :cond_13
    const/4 v4, 0x0

    #@14
    const/4 v5, -0x1

    #@15
    const/4 v6, -0x1

    #@16
    const/4 v7, 0x0

    #@17
    move-object v0, p0

    #@18
    move-object v1, p1

    #@19
    move-object v2, p2

    #@1a
    move-object v3, p4

    #@1b
    .line 298
    invoke-direct/range {v0 .. v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    #@1e
    move-result p1

    #@1f
    if-nez p1, :cond_25

    #@21
    .line 301
    invoke-direct {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    #@24
    return-object p3

    #@25
    .line 304
    :cond_25
    invoke-direct {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    #@28
    move-result p1

    #@29
    if-nez p1, :cond_2c

    #@2b
    return-object p3

    #@2c
    .line 307
    :cond_2c
    invoke-virtual {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    #@2f
    move-result-object p1

    #@30
    return-object p1
.end method

.method createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 6

    #@0
    .line 361
    :try_start_0
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi26;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@3
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    goto :goto_6

    #@5
    :catch_5
    const/4 v0, 0x0

    #@6
    :goto_6
    if-nez v0, :cond_c

    #@8
    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@b
    move-result-object v0

    #@c
    :cond_c
    return-object v0
.end method

.method protected obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-string v1, "abortCreation"

    #@5
    .line 343
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method protected obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/Class;

    #@4
    const/4 v1, 0x0

    #@5
    .line 326
    const-class v2, Landroid/content/res/AssetManager;

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    const-class v2, Ljava/lang/String;

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const-class v2, [Landroid/graphics/fonts/FontVariationAxis;

    #@2a
    aput-object v2, v0, v1

    #@2c
    const-string v1, "addFontFromAssetManager"

    #@2e
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@31
    move-result-object p1

    #@32
    return-object p1
.end method

.method protected obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const/4 v1, 0x0

    #@4
    .line 333
    const-class v2, Ljava/nio/ByteBuffer;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    const-class v2, [Landroid/graphics/fonts/FontVariationAxis;

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@15
    aput-object v2, v0, v1

    #@17
    const/4 v1, 0x4

    #@18
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1a
    aput-object v2, v0, v1

    #@1c
    const-string v1, "addFontFromBuffer"

    #@1e
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@21
    move-result-object p1

    #@22
    return-object p1
.end method

.method protected obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 348
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    .line 349
    const-class v1, Landroid/graphics/Typeface;

    #@7
    const/4 v2, 0x3

    #@8
    new-array v2, v2, [Ljava/lang/Class;

    #@a
    const/4 v3, 0x0

    #@b
    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object p1

    #@f
    aput-object p1, v2, v3

    #@11
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    aput-object p1, v2, v0

    #@15
    const/4 p1, 0x2

    #@16
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    aput-object v3, v2, p1

    #@1a
    const-string p1, "createFromFamiliesWithDefault"

    #@1c
    .line 349
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1f
    move-result-object p1

    #@20
    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@23
    return-object p1
.end method

.method protected obtainFontFamily()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    const-string v0, "android.graphics.FontFamily"

    #@2
    .line 316
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method protected obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-string v1, "freeze"

    #@5
    .line 339
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method
