.class final Landroidx/core/graphics/WeightTypefaceApi14;
.super Ljava/lang/Object;
.source "WeightTypefaceApi14.java"


# static fields
.field private static final NATIVE_INSTANCE_FIELD:Ljava/lang/String; = "native_instance"

.field private static final TAG:Ljava/lang/String; = "WeightTypeface"

.field private static final sNativeInstance:Ljava/lang/reflect/Field;

.field private static final sWeightCacheLock:Ljava/lang/Object;

.field private static final sWeightTypefaceCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 51
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    #@2
    const-string v1, "native_instance"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    #@c
    goto :goto_1c

    #@d
    :catch_d
    move-exception v0

    #@e
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    const-string v2, "WeightTypeface"

    #@18
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 57
    :goto_1c
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sNativeInstance:Ljava/lang/reflect/Field;

    #@1e
    .line 71
    new-instance v0, Landroidx/collection/LongSparseArray;

    #@20
    const/4 v1, 0x3

    #@21
    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    #@24
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    #@26
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@2b
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sWeightCacheLock:Ljava/lang/Object;

    #@2d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createWeightStyle(Landroidx/core/graphics/TypefaceCompatBaseImpl;Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 12

    #@0
    .line 81
    invoke-static {}, Landroidx/core/graphics/WeightTypefaceApi14;->isPrivateApiAvailable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    :cond_8
    shl-int/lit8 v0, p3, 0x1

    #@a
    or-int/2addr v0, p4

    #@b
    .line 88
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi14;->sWeightCacheLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 89
    :try_start_e
    invoke-static {p2}, Landroidx/core/graphics/WeightTypefaceApi14;->getNativeInstance(Landroid/graphics/Typeface;)J

    #@11
    move-result-wide v2

    #@12
    .line 90
    sget-object v4, Landroidx/core/graphics/WeightTypefaceApi14;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    #@14
    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    check-cast v5, Landroid/util/SparseArray;

    #@1a
    if-nez v5, :cond_26

    #@1c
    .line 92
    new-instance v5, Landroid/util/SparseArray;

    #@1e
    const/4 v6, 0x4

    #@1f
    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    #@22
    .line 93
    invoke-virtual {v4, v2, v3, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@25
    goto :goto_30

    #@26
    .line 95
    :cond_26
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/graphics/Typeface;

    #@2c
    if-eqz v2, :cond_30

    #@2e
    .line 97
    monitor-exit v1

    #@2f
    return-object v2

    #@30
    .line 101
    :cond_30
    :goto_30
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi14;->getBestFontFromFamily(Landroidx/core/graphics/TypefaceCompatBaseImpl;Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@33
    move-result-object p0

    #@34
    if-nez p0, :cond_3a

    #@36
    .line 103
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi14;->platformTypefaceCreate(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@39
    move-result-object p0

    #@3a
    .line 105
    :cond_3a
    invoke-virtual {v5, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    .line 106
    monitor-exit v1

    #@3e
    return-object p0

    #@3f
    :catchall_3f
    move-exception p0

    #@40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_3f

    #@41
    throw p0
.end method

.method private static getBestFontFromFamily(Landroidx/core/graphics/TypefaceCompatBaseImpl;Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 11

    #@0
    .line 136
    invoke-virtual {p0, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->getFontFamily(Landroid/graphics/Typeface;)Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    #@3
    move-result-object v2

    #@4
    if-nez v2, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 142
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v3

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move v4, p3

    #@f
    move v5, p4

    #@10
    .line 141
    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;IZ)Landroid/graphics/Typeface;

    #@13
    move-result-object p0

    #@14
    return-object p0
.end method

.method private static getNativeInstance(Landroid/graphics/Typeface;)J
    .registers 3

    #@0
    .line 147
    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sNativeInstance:Ljava/lang/reflect/Field;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Ljava/lang/Number;

    #@8
    .line 148
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    #@b
    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d

    #@c
    return-wide v0

    #@d
    :catch_d
    move-exception p0

    #@e
    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v0
.end method

.method private static isPrivateApiAvailable()Z
    .registers 1

    #@0
    .line 64
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sNativeInstance:Ljava/lang/reflect/Field;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method private static platformTypefaceCreate(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 6

    #@0
    const/16 v0, 0x258

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-lt p1, v0, :cond_8

    #@6
    move p1, v1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move p1, v2

    #@9
    :goto_9
    if-nez p1, :cond_f

    #@b
    if-nez p2, :cond_f

    #@d
    move v1, v2

    #@e
    goto :goto_17

    #@f
    :cond_f
    if-nez p1, :cond_13

    #@11
    const/4 v1, 0x2

    #@12
    goto :goto_17

    #@13
    :cond_13
    if-nez p2, :cond_16

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v1, 0x3

    #@17
    .line 126
    :goto_17
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@1a
    move-result-object p0

    #@1b
    return-object p0
.end method
