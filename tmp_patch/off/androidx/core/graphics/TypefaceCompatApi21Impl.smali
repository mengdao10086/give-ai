.class Landroidx/core/graphics/TypefaceCompatApi21Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"

.field private static sAddFontWeightStyle:Ljava/lang/reflect/Method; = null

.field private static sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method; = null

.field private static sFontFamily:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFontFamilyCtor:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sHasInitBeenCalled:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    .line 54
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    #@3
    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .registers 7

    #@0
    .line 136
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    #@3
    .line 138
    :try_start_3
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    #@5
    const/4 v1, 0x3

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    const/4 v2, 0x0

    #@9
    aput-object p1, v1, v2

    #@b
    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    const/4 p2, 0x1

    #@10
    aput-object p1, v1, p2

    #@12
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15
    move-result-object p1

    #@16
    const/4 p2, 0x2

    #@17
    aput-object p1, v1, p2

    #@19
    .line 138
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object p0

    #@1d
    check-cast p0, Ljava/lang/Boolean;

    #@1f
    .line 140
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@22
    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_23} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_23} :catch_24

    #@23
    return p0

    #@24
    :catch_24
    move-exception p0

    #@25
    goto :goto_27

    #@26
    :catch_26
    move-exception p0

    #@27
    .line 142
    :goto_27
    new-instance p1, Ljava/lang/RuntimeException;

    #@29
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw p1
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 4

    #@0
    .line 123
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    #@3
    .line 125
    :try_start_3
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    const/4 v2, 0x0

    #@b
    .line 126
    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@e
    .line 127
    sget-object p0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    #@10
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    aput-object v0, v1, v2

    #@14
    const/4 v0, 0x0

    #@15
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object p0

    #@19
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_1b} :catch_1c

    #@1b
    return-object p0

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    goto :goto_1f

    #@1e
    :catch_1e
    move-exception p0

    #@1f
    .line 130
    :goto_1f
    new-instance v0, Ljava/lang/RuntimeException;

    #@21
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v0
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 5

    #@0
    const-string v0, "/proc/self/fd/"

    #@2
    const/4 v1, 0x0

    #@3
    .line 101
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@b
    move-result p1

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    invoke-static {p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    .line 103
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@1b
    move-result-object v0

    #@1c
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    #@1e
    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2a

    #@24
    .line 104
    new-instance v0, Ljava/io/File;

    #@26
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_29} :catch_2a

    #@29
    return-object v0

    #@2a
    :catch_2a
    :cond_2a
    return-object v1
.end method

.method private static init()V
    .registers 8

    #@0
    .line 68
    sget-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 71
    sput-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    #@8
    :try_start_8
    const-string v1, "android.graphics.FontFamily"

    #@a
    .line 78
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    new-array v3, v2, [Ljava/lang/Class;

    #@11
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@14
    move-result-object v3

    #@15
    const-string v4, "addFontWeightStyle"

    #@17
    const/4 v5, 0x3

    #@18
    new-array v5, v5, [Ljava/lang/Class;

    #@1a
    .line 80
    const-class v6, Ljava/lang/String;

    #@1c
    aput-object v6, v5, v2

    #@1e
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    aput-object v6, v5, v0

    #@22
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@24
    const/4 v7, 0x2

    #@25
    aput-object v6, v5, v7

    #@27
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2a
    move-result-object v4

    #@2b
    .line 82
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    .line 83
    const-class v6, Landroid/graphics/Typeface;

    #@31
    const-string v7, "createFromFamiliesWithDefault"

    #@33
    new-array v0, v0, [Ljava/lang/Class;

    #@35
    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@38
    move-result-object v5

    #@39
    aput-object v5, v0, v2

    #@3b
    .line 84
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3e
    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_3f} :catch_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_3f} :catch_40

    #@3f
    goto :goto_54

    #@40
    :catch_40
    move-exception v0

    #@41
    goto :goto_43

    #@42
    :catch_42
    move-exception v0

    #@43
    .line 87
    :goto_43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    const-string v2, "TypefaceCompatApi21Impl"

    #@4d
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    const/4 v1, 0x0

    #@51
    move-object v0, v1

    #@52
    move-object v3, v0

    #@53
    move-object v4, v3

    #@54
    .line 93
    :goto_54
    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    #@56
    .line 94
    sput-object v1, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    #@58
    .line 95
    sput-object v4, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    #@5a
    .line 96
    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    #@5c
    return-void
.end method

.method private static newFamily()Ljava/lang/Object;
    .registers 2

    #@0
    .line 114
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    #@3
    .line 116
    :try_start_3
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    #@5
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_c} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_c} :catch_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_c} :catch_d

    #@c
    return-object v0

    #@d
    :catch_d
    move-exception v0

    #@e
    goto :goto_12

    #@f
    :catch_f
    move-exception v0

    #@10
    goto :goto_12

    #@11
    :catch_11
    move-exception v0

    #@12
    .line 118
    :goto_12
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@17
    throw v1
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 12

    #@0
    .line 176
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->newFamily()Ljava/lang/Object;

    #@3
    move-result-object p4

    #@4
    .line 177
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    #@7
    move-result-object p2

    #@8
    array-length v0, p2

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_49

    #@c
    aget-object v2, p2, v1

    #@e
    .line 178
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x0

    #@13
    if-nez v3, :cond_16

    #@15
    return-object v4

    #@16
    .line 183
    :cond_16
    :try_start_16
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    #@19
    move-result v5

    #@1a
    invoke-static {v3, p3, v5}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    #@1d
    move-result v5
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1e} :catch_45
    .catchall {:try_start_16 .. :try_end_1e} :catchall_40

    #@1e
    if-nez v5, :cond_24

    #@20
    .line 196
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@23
    return-object v4

    #@24
    .line 187
    :cond_24
    :try_start_24
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    #@2b
    move-result v6

    #@2c
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    #@2f
    move-result v2

    #@30
    invoke-static {p4, v5, v6, v2}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z

    #@33
    move-result v2
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_34} :catch_45
    .catchall {:try_start_24 .. :try_end_34} :catchall_40

    #@34
    if-nez v2, :cond_3a

    #@36
    .line 196
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@39
    return-object v4

    #@3a
    :cond_3a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@3d
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_a

    #@40
    :catchall_40
    move-exception p1

    #@41
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@44
    .line 197
    throw p1

    #@45
    .line 196
    :catch_45
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@48
    return-object v4

    #@49
    .line 199
    :cond_49
    invoke-static {p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    #@4c
    move-result-object p1

    #@4d
    return-object p1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 8

    #@0
    .line 149
    array-length v0, p3

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    if-ge v0, v1, :cond_6

    #@5
    return-object v2

    #@6
    .line 152
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@9
    move-result-object p3

    #@a
    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object p4

    #@e
    .line 155
    :try_start_e
    invoke-virtual {p3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    #@11
    move-result-object p3

    #@12
    const-string v0, "r"

    #@14
    invoke-virtual {p4, p3, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@17
    move-result-object p2

    #@18
    if-nez p2, :cond_20

    #@1a
    if-eqz p2, :cond_1f

    #@1c
    .line 168
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_63

    #@1f
    :cond_1f
    return-object v2

    #@20
    .line 159
    :cond_20
    :try_start_20
    invoke-direct {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    #@23
    move-result-object p3

    #@24
    if-eqz p3, :cond_37

    #@26
    .line 160
    invoke-virtual {p3}, Ljava/io/File;->canRead()Z

    #@29
    move-result p4

    #@2a
    if-nez p4, :cond_2d

    #@2c
    goto :goto_37

    #@2d
    .line 167
    :cond_2d
    invoke-static {p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    #@30
    move-result-object p1
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_57

    #@31
    if-eqz p2, :cond_36

    #@33
    .line 168
    :try_start_33
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_63

    #@36
    :cond_36
    return-object p1

    #@37
    .line 163
    :cond_37
    :goto_37
    :try_start_37
    new-instance p3, Ljava/io/FileInputStream;

    #@39
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@3c
    move-result-object p4

    #@3d
    invoke-direct {p3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_57

    #@40
    .line 164
    :try_start_40
    invoke-super {p0, p1, p3}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    #@43
    move-result-object p1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_4d

    #@44
    .line 165
    :try_start_44
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_57

    #@47
    if-eqz p2, :cond_4c

    #@49
    .line 168
    :try_start_49
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_63

    #@4c
    :cond_4c
    return-object p1

    #@4d
    :catchall_4d
    move-exception p1

    #@4e
    .line 163
    :try_start_4e
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    #@51
    goto :goto_56

    #@52
    :catchall_52
    move-exception p3

    #@53
    :try_start_53
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@56
    :goto_56
    throw p1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    #@57
    :catchall_57
    move-exception p1

    #@58
    if-eqz p2, :cond_62

    #@5a
    .line 154
    :try_start_5a
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    #@5d
    goto :goto_62

    #@5e
    :catchall_5e
    move-exception p2

    #@5f
    :try_start_5f
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@62
    :cond_62
    :goto_62
    throw p1
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_63

    #@63
    :catch_63
    return-object v2
.end method

.method createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 6

    #@0
    .line 208
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
    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@b
    move-result-object v0

    #@c
    :cond_c
    return-object v0
.end method
