.class Landroidx/core/graphics/TypefaceCompatApi24Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi24Impl.java"


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi24Impl"

.field private static final sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    :try_start_0
    const-string v0, "android.graphics.FontFamily"

    #@2
    .line 69
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    new-array v2, v1, [Ljava/lang/Class;

    #@9
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@c
    move-result-object v2

    #@d
    const-string v3, "addFontWeightStyle"

    #@f
    const/4 v4, 0x5

    #@10
    new-array v4, v4, [Ljava/lang/Class;

    #@12
    .line 71
    const-class v5, Ljava/nio/ByteBuffer;

    #@14
    aput-object v5, v4, v1

    #@16
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v4, v6

    #@1b
    const-class v5, Ljava/util/List;

    #@1d
    const/4 v7, 0x2

    #@1e
    aput-object v5, v4, v7

    #@20
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@22
    const/4 v7, 0x3

    #@23
    aput-object v5, v4, v7

    #@25
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@27
    const/4 v7, 0x4

    #@28
    aput-object v5, v4, v7

    #@2a
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2d
    move-result-object v3

    #@2e
    .line 73
    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    .line 74
    const-class v5, Landroid/graphics/Typeface;

    #@34
    const-string v7, "createFromFamiliesWithDefault"

    #@36
    new-array v6, v6, [Ljava/lang/Class;

    #@38
    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object v4

    #@3c
    aput-object v4, v6, v1

    #@3e
    .line 75
    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@41
    move-result-object v1
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_42} :catch_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_42} :catch_43

    #@42
    goto :goto_57

    #@43
    :catch_43
    move-exception v0

    #@44
    goto :goto_46

    #@45
    :catch_45
    move-exception v0

    #@46
    .line 78
    :goto_46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    const-string v2, "TypefaceCompatApi24Impl"

    #@50
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    const/4 v0, 0x0

    #@54
    move-object v1, v0

    #@55
    move-object v2, v1

    #@56
    move-object v3, v2

    #@57
    .line 84
    :goto_57
    sput-object v2, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    #@59
    .line 85
    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    #@5b
    .line 86
    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    #@5d
    .line 87
    sput-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    #@5f
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    .line 51
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    #@3
    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    .line 112
    :try_start_1
    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    #@3
    const/4 v2, 0x5

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    aput-object p1, v2, v0

    #@8
    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object p1

    #@c
    const/4 p2, 0x1

    #@d
    aput-object p1, v2, p2

    #@f
    const/4 p1, 0x2

    #@10
    const/4 p2, 0x0

    #@11
    aput-object p2, v2, p1

    #@13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object p1

    #@17
    const/4 p2, 0x3

    #@18
    aput-object p1, v2, p2

    #@1a
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1d
    move-result-object p1

    #@1e
    const/4 p2, 0x4

    #@1f
    aput-object p1, v2, p2

    #@21
    .line 112
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object p0

    #@25
    check-cast p0, Ljava/lang/Boolean;

    #@27
    .line 114
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@2a
    move-result p0
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2b} :catch_2c

    #@2b
    return p0

    #@2c
    :catch_2c
    return v0
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 122
    :try_start_1
    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    #@3
    const/4 v2, 0x1

    #@4
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    const/4 v3, 0x0

    #@9
    .line 123
    invoke-static {v1, v3, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@c
    .line 124
    sget-object p0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    aput-object v1, v2, v3

    #@12
    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p0

    #@16
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_18} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_18} :catch_19

    #@18
    return-object p0

    #@19
    :catch_19
    return-object v0
.end method

.method public static isUsable()Z
    .registers 3

    #@0
    .line 94
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_b

    #@4
    const-string v1, "TypefaceCompatApi24Impl"

    #@6
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    #@8
    .line 95
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    :cond_b
    if-eqz v0, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    :goto_10
    return v0
.end method

.method private static newFamily()Ljava/lang/Object;
    .registers 2

    #@0
    .line 103
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

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
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 12

    #@0
    .line 167
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    #@3
    move-result-object p4

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p4, :cond_8

    #@7
    return-object v0

    #@8
    .line 171
    :cond_8
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@b
    move-result-object p2

    #@c
    array-length v1, p2

    #@d
    const/4 v2, 0x0

    #@e
    :goto_e
    if-ge v2, v1, :cond_33

    #@10
    aget-object v3, p2, v2

    #@12
    .line 173
    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    #@15
    move-result v4

    #@16
    invoke-static {p1, p3, v4}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    #@19
    move-result-object v4

    #@1a
    if-nez v4, :cond_1d

    #@1c
    return-object v0

    #@1d
    .line 177
    :cond_1d
    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    #@20
    move-result v5

    #@21
    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    #@24
    move-result v6

    #@25
    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    #@28
    move-result v3

    #@29
    invoke-static {p4, v4, v5, v6, v3}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_30

    #@2f
    return-object v0

    #@30
    :cond_30
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_e

    #@33
    .line 181
    :cond_33
    invoke-static {p4}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    #@36
    move-result-object p1

    #@37
    return-object p1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 14

    #@0
    .line 135
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 139
    :cond_8
    new-instance v2, Landroidx/collection/SimpleArrayMap;

    #@a
    invoke-direct {v2}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@d
    .line 141
    array-length v3, p3

    #@e
    const/4 v4, 0x0

    #@f
    :goto_f
    if-ge v4, v3, :cond_3f

    #@11
    aget-object v5, p3, v4

    #@13
    .line 142
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    #@16
    move-result-object v6

    #@17
    .line 143
    invoke-virtual {v2, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    check-cast v7, Ljava/nio/ByteBuffer;

    #@1d
    if-nez v7, :cond_26

    #@1f
    .line 145
    invoke-static {p1, p2, v6}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    #@22
    move-result-object v7

    #@23
    .line 146
    invoke-virtual {v2, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    :cond_26
    if-nez v7, :cond_29

    #@28
    return-object v1

    #@29
    .line 151
    :cond_29
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    #@2c
    move-result v6

    #@2d
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    #@30
    move-result v8

    #@31
    .line 152
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    #@34
    move-result v5

    #@35
    .line 151
    invoke-static {v0, v7, v6, v8, v5}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    #@38
    move-result v5

    #@39
    if-nez v5, :cond_3c

    #@3b
    return-object v1

    #@3c
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    #@3e
    goto :goto_f

    #@3f
    .line 156
    :cond_3f
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    #@42
    move-result-object p1

    #@43
    if-nez p1, :cond_46

    #@45
    return-object v1

    #@46
    .line 160
    :cond_46
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@49
    move-result-object p1

    #@4a
    return-object p1
.end method

.method createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 6

    #@0
    .line 190
    :try_start_0
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi21;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

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
    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@b
    move-result-object v0

    #@c
    :cond_c
    return-object v0
.end method
