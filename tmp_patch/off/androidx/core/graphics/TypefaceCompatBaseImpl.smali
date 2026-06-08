.class Landroidx/core/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;
    }
.end annotation


# static fields
.field private static final INVALID_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatBaseImpl"


# instance fields
.field private mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    return-void
.end method

.method private addFontFamily(Landroid/graphics/Typeface;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;)V
    .registers 7

    #@0
    .line 270
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->getUniqueKey(Landroid/graphics/Typeface;)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long p1, v0, v2

    #@8
    if-eqz p1, :cond_13

    #@a
    .line 272
    iget-object p1, p0, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    :cond_13
    return-void
.end method

.method private findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 4

    #@0
    .line 158
    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@3
    move-result-object p1

    #@4
    new-instance v0, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;

    #@6
    invoke-direct {v0, p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    #@9
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@f
    return-object p1
.end method

.method private findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;IZ)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 5

    #@0
    .line 173
    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@3
    move-result-object p1

    #@4
    new-instance v0, Landroidx/core/graphics/TypefaceCompatBaseImpl$3;

    #@6
    invoke-direct {v0, p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl$3;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    #@9
    invoke-static {p1, p2, p3, v0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;IZLandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@f
    return-object p1
.end method

.method private static findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    and-int/lit8 v0, p1, 0x1

    #@2
    if-nez v0, :cond_7

    #@4
    const/16 v0, 0x190

    #@6
    goto :goto_9

    #@7
    :cond_7
    const/16 v0, 0x2bc

    #@9
    :goto_9
    and-int/lit8 p1, p1, 0x2

    #@b
    if-eqz p1, :cond_f

    #@d
    const/4 p1, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    .line 64
    :goto_10
    invoke-static {p0, v0, p1, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;IZLandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    #@13
    move-result-object p0

    #@14
    return-object p0
.end method

.method private static findBestFont([Ljava/lang/Object;IZLandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ",
            "Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    .line 72
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    const v2, 0x7fffffff

    #@5
    const/4 v3, 0x0

    #@6
    move v4, v3

    #@7
    :goto_7
    if-ge v4, v0, :cond_29

    #@9
    aget-object v5, p0, v4

    #@b
    .line 73
    invoke-interface {p3, v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;->getWeight(Ljava/lang/Object;)I

    #@e
    move-result v6

    #@f
    sub-int/2addr v6, p1

    #@10
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@13
    move-result v6

    #@14
    mul-int/lit8 v6, v6, 0x2

    #@16
    .line 74
    invoke-interface {p3, v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;->isItalic(Ljava/lang/Object;)Z

    #@19
    move-result v7

    #@1a
    if-ne v7, p2, :cond_1e

    #@1c
    move v7, v3

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 v7, 0x1

    #@1f
    :goto_1f
    add-int/2addr v6, v7

    #@20
    if-eqz v1, :cond_24

    #@22
    if-le v2, v6, :cond_26

    #@24
    :cond_24
    move-object v1, v5

    #@25
    move v2, v6

    #@26
    :cond_26
    add-int/lit8 v4, v4, 0x1

    #@28
    goto :goto_7

    #@29
    :cond_29
    return-object v1
.end method

.method private static getUniqueKey(Landroid/graphics/Typeface;)J
    .registers 7

    #@0
    const-string v0, "Could not retrieve font from family."

    #@2
    const-string v1, "TypefaceCompatBaseImpl"

    #@4
    const-wide/16 v2, 0x0

    #@6
    if-nez p0, :cond_9

    #@8
    return-wide v2

    #@9
    .line 90
    :cond_9
    :try_start_9
    const-class v4, Landroid/graphics/Typeface;

    #@b
    const-string v5, "native_instance"

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v4

    #@11
    const/4 v5, 0x1

    #@12
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@15
    .line 92
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object p0

    #@19
    check-cast p0, Ljava/lang/Number;

    #@1b
    .line 93
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    #@1e
    move-result-wide v0
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_1f} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_1f} :catch_20

    #@1f
    return-wide v0

    #@20
    :catch_20
    move-exception p0

    #@21
    .line 98
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    return-wide v2

    #@25
    :catch_25
    move-exception p0

    #@26
    .line 95
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    return-wide v2
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 11

    #@0
    .line 190
    invoke-direct {p0, p2, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 195
    :cond_8
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    const/4 v4, 0x0

    #@11
    move-object v0, p1

    #@12
    move-object v1, p3

    #@13
    move v5, p4

    #@14
    .line 194
    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    #@17
    move-result-object p1

    #@18
    .line 197
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->addFontFamily(Landroid/graphics/Typeface;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;)V

    #@1b
    return-object p1
.end method

.method createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;IZ)Landroid/graphics/Typeface;
    .registers 12

    #@0
    .line 205
    invoke-direct {p0, p2, p4, p5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;IZ)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@3
    move-result-object p4

    #@4
    if-nez p4, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 210
    :cond_8
    invoke-virtual {p4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x0

    #@12
    move-object v0, p1

    #@13
    move-object v1, p3

    #@14
    .line 209
    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    #@17
    move-result-object p1

    #@18
    .line 212
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->addFontFamily(Landroid/graphics/Typeface;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;)V

    #@1b
    return-object p1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 7

    #@0
    .line 142
    array-length p2, p3

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    if-ge p2, v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 145
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@9
    move-result-object p2

    #@a
    .line 148
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object p3

    #@e
    invoke-virtual {p2}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    #@11
    move-result-object p2

    #@12
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@15
    move-result-object p2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_26
    .catchall {:try_start_a .. :try_end_16} :catchall_21

    #@16
    .line 149
    :try_start_16
    invoke-virtual {p0, p1, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    #@19
    move-result-object p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_27
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    #@1a
    .line 153
    invoke-static {p2}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    #@1d
    return-object p1

    #@1e
    :catchall_1e
    move-exception p1

    #@1f
    move-object v1, p2

    #@20
    goto :goto_22

    #@21
    :catchall_21
    move-exception p1

    #@22
    :goto_22
    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    #@25
    .line 154
    throw p1

    #@26
    :catch_26
    move-object p2, v1

    #@27
    .line 153
    :catch_27
    invoke-static {p2}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    #@2a
    return-object v1
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 4

    #@0
    .line 119
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p1, :cond_8

    #@7
    return-object v0

    #@8
    .line 124
    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    #@b
    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    #@c
    if-nez p2, :cond_12

    #@e
    .line 134
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@11
    return-object v0

    #@12
    .line 127
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@15
    move-result-object p2

    #@16
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    #@19
    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    #@1a
    .line 134
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@1d
    return-object p2

    #@1e
    :catchall_1e
    move-exception p2

    #@1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@22
    .line 135
    throw p2

    #@23
    .line 134
    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@26
    return-object v0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    #@0
    .line 223
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    #@3
    move-result-object p1

    #@4
    const/4 p4, 0x0

    #@5
    if-nez p1, :cond_8

    #@7
    return-object p4

    #@8
    .line 228
    :cond_8
    :try_start_8
    invoke-static {p1, p2, p3}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    #@b
    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    #@c
    if-nez p2, :cond_12

    #@e
    .line 238
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@11
    return-object p4

    #@12
    .line 231
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@15
    move-result-object p2

    #@16
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    #@19
    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    #@1a
    .line 238
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@1d
    return-object p2

    #@1e
    :catchall_1e
    move-exception p2

    #@1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@22
    .line 239
    throw p2

    #@23
    .line 238
    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@26
    return-object p4
.end method

.method createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 5

    #@0
    .line 247
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi14;->createWeightStyle(Landroidx/core/graphics/TypefaceCompatBaseImpl;Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@3
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    goto :goto_6

    #@5
    :catch_5
    const/4 p1, 0x0

    #@6
    :goto_6
    if-nez p1, :cond_9

    #@8
    goto :goto_a

    #@9
    :cond_9
    move-object p2, p1

    #@a
    :goto_a
    return-object p2
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 4

    #@0
    .line 104
    new-instance v0, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    #@5
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@b
    return-object p1
.end method

.method getFontFamily(Landroid/graphics/Typeface;)Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .registers 6

    #@0
    .line 262
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->getUniqueKey(Landroid/graphics/Typeface;)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long p1, v0, v2

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return-object p1

    #@c
    .line 266
    :cond_c
    iget-object p1, p0, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    #@e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    #@18
    return-object p1
.end method
