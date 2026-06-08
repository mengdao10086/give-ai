.class final Landroidx/core/graphics/WeightTypefaceApi26;
.super Ljava/lang/Object;
.source "WeightTypefaceApi26.java"


# static fields
.field private static final NATIVE_CREATE_FROM_TYPEFACE_WITH_EXACT_STYLE_METHOD:Ljava/lang/String; = "nativeCreateFromTypefaceWithExactStyle"

.field private static final NATIVE_INSTANCE_FIELD:Ljava/lang/String; = "native_instance"

.field private static final TAG:Ljava/lang/String; = "WeightTypeface"

.field private static final sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNativeCreateFromTypefaceWithExactStyle:Ljava/lang/reflect/Method;

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
    .registers 9

    #@0
    const/4 v0, 0x3

    #@1
    .line 61
    :try_start_1
    const-class v1, Landroid/graphics/Typeface;

    #@3
    const-string v2, "native_instance"

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@8
    move-result-object v1

    #@9
    .line 62
    const-class v2, Landroid/graphics/Typeface;

    #@b
    const-string v3, "nativeCreateFromTypefaceWithExactStyle"

    #@d
    new-array v4, v0, [Ljava/lang/Class;

    #@f
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@11
    const/4 v6, 0x0

    #@12
    aput-object v5, v4, v6

    #@14
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@16
    const/4 v7, 0x1

    #@17
    aput-object v5, v4, v7

    #@19
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1b
    const/4 v8, 0x2

    #@1c
    aput-object v5, v4, v8

    #@1e
    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@21
    move-result-object v2

    #@22
    .line 65
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@25
    .line 66
    const-class v3, Landroid/graphics/Typeface;

    #@27
    new-array v4, v7, [Ljava/lang/Class;

    #@29
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2b
    aput-object v5, v4, v6

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@30
    move-result-object v3

    #@31
    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_34
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_34} :catch_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_34} :catch_35

    #@34
    goto :goto_48

    #@35
    :catch_35
    move-exception v1

    #@36
    goto :goto_38

    #@37
    :catch_37
    move-exception v1

    #@38
    .line 69
    :goto_38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    const-string v3, "WeightTypeface"

    #@42
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    const/4 v1, 0x0

    #@46
    move-object v2, v1

    #@47
    move-object v3, v2

    #@48
    .line 74
    :goto_48
    sput-object v1, Landroidx/core/graphics/WeightTypefaceApi26;->sNativeInstance:Ljava/lang/reflect/Field;

    #@4a
    .line 75
    sput-object v2, Landroidx/core/graphics/WeightTypefaceApi26;->sNativeCreateFromTypefaceWithExactStyle:Ljava/lang/reflect/Method;

    #@4c
    .line 76
    sput-object v3, Landroidx/core/graphics/WeightTypefaceApi26;->sConstructor:Ljava/lang/reflect/Constructor;

    #@4e
    .line 90
    new-instance v1, Landroidx/collection/LongSparseArray;

    #@50
    invoke-direct {v1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    #@53
    sput-object v1, Landroidx/core/graphics/WeightTypefaceApi26;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    #@55
    .line 92
    new-instance v0, Ljava/lang/Object;

    #@57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5a
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi26;->sWeightCacheLock:Ljava/lang/Object;

    #@5c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static create(J)Landroid/graphics/Typeface;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 151
    :try_start_1
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi26;->sConstructor:Ljava/lang/reflect/Constructor;

    #@3
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object p0

    #@a
    const/4 p1, 0x0

    #@b
    aput-object p0, v2, p1

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p0

    #@11
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_13} :catch_14
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_13} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_13} :catch_14

    #@13
    return-object p0

    #@14
    :catch_14
    return-object v0
.end method

.method static createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 9

    #@0
    .line 99
    invoke-static {}, Landroidx/core/graphics/WeightTypefaceApi26;->isPrivateApiAvailable()Z

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
    shl-int/lit8 v0, p1, 0x1

    #@a
    or-int/2addr v0, p2

    #@b
    .line 106
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi26;->sWeightCacheLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 107
    :try_start_e
    invoke-static {p0}, Landroidx/core/graphics/WeightTypefaceApi26;->getNativeInstance(Landroid/graphics/Typeface;)J

    #@11
    move-result-wide v2

    #@12
    .line 108
    sget-object p0, Landroidx/core/graphics/WeightTypefaceApi26;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    #@14
    invoke-virtual {p0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/util/SparseArray;

    #@1a
    if-nez v4, :cond_26

    #@1c
    .line 110
    new-instance v4, Landroid/util/SparseArray;

    #@1e
    const/4 v5, 0x4

    #@1f
    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    #@22
    .line 111
    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@25
    goto :goto_30

    #@26
    .line 113
    :cond_26
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@29
    move-result-object p0

    #@2a
    check-cast p0, Landroid/graphics/Typeface;

    #@2c
    if-eqz p0, :cond_30

    #@2e
    .line 115
    monitor-exit v1

    #@2f
    return-object p0

    #@30
    .line 120
    :cond_30
    :goto_30
    invoke-static {v2, v3, p1, p2}, Landroidx/core/graphics/WeightTypefaceApi26;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    #@33
    move-result-wide p0

    #@34
    .line 119
    invoke-static {p0, p1}, Landroidx/core/graphics/WeightTypefaceApi26;->create(J)Landroid/graphics/Typeface;

    #@37
    move-result-object p0

    #@38
    .line 121
    invoke-virtual {v4, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3b
    .line 122
    monitor-exit v1

    #@3c
    return-object p0

    #@3d
    :catchall_3d
    move-exception p0

    #@3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_3d

    #@3f
    throw p0
.end method

.method private static getNativeInstance(Landroid/graphics/Typeface;)J
    .registers 3

    #@0
    .line 128
    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi26;->sNativeInstance:Ljava/lang/reflect/Field;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@5
    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return-wide v0

    #@7
    :catch_7
    move-exception p0

    #@8
    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v0
.end method

.method private static isPrivateApiAvailable()Z
    .registers 1

    #@0
    .line 83
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi26;->sNativeInstance:Ljava/lang/reflect/Field;

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

.method private static nativeCreateFromTypefaceWithExactStyle(JIZ)J
    .registers 6

    #@0
    .line 139
    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi26;->sNativeCreateFromTypefaceWithExactStyle:Ljava/lang/reflect/Method;

    #@2
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8
    move-result-object p0

    #@9
    const/4 p1, 0x0

    #@a
    aput-object p0, v1, p1

    #@c
    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object p0

    #@10
    const/4 p1, 0x1

    #@11
    aput-object p0, v1, p1

    #@13
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object p0

    #@17
    const/4 p1, 0x2

    #@18
    aput-object p0, v1, p1

    #@1a
    const/4 p0, 0x0

    #@1b
    .line 139
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object p0

    #@1f
    check-cast p0, Ljava/lang/Long;

    #@21
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@24
    move-result-wide p0
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_25} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_25} :catch_26

    #@25
    return-wide p0

    #@26
    :catch_26
    move-exception p0

    #@27
    .line 144
    new-instance p1, Ljava/lang/RuntimeException;

    #@29
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw p1

    #@2d
    :catch_2d
    move-exception p0

    #@2e
    .line 142
    new-instance p1, Ljava/lang/RuntimeException;

    #@30
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw p1
.end method
