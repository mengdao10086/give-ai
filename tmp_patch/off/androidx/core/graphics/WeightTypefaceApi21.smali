.class final Landroidx/core/graphics/WeightTypefaceApi21;
.super Ljava/lang/Object;
.source "WeightTypefaceApi21.java"


# static fields
.field private static final NATIVE_CREATE_FROM_TYPEFACE_METHOD:Ljava/lang/String; = "nativeCreateFromTypeface"

.field private static final NATIVE_CREATE_WEIGHT_ALIAS_METHOD:Ljava/lang/String; = "nativeCreateWeightAlias"

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

.field private static final sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

.field private static final sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

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
    .registers 8

    #@0
    .line 63
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    #@2
    const-string v1, "native_instance"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v0

    #@8
    .line 64
    const-class v1, Landroid/graphics/Typeface;

    #@a
    const-string v2, "nativeCreateFromTypeface"

    #@c
    const/4 v3, 0x2

    #@d
    new-array v4, v3, [Ljava/lang/Class;

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
    .line 65
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1c
    move-result-object v1

    #@1d
    .line 66
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@20
    .line 67
    const-class v2, Landroid/graphics/Typeface;

    #@22
    const-string v4, "nativeCreateWeightAlias"

    #@24
    new-array v3, v3, [Ljava/lang/Class;

    #@26
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@28
    aput-object v5, v3, v6

    #@2a
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2c
    aput-object v5, v3, v7

    #@2e
    .line 68
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@31
    move-result-object v2

    #@32
    .line 69
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@35
    .line 70
    const-class v3, Landroid/graphics/Typeface;

    #@37
    new-array v4, v7, [Ljava/lang/Class;

    #@39
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@3b
    aput-object v5, v4, v6

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@40
    move-result-object v3

    #@41
    .line 71
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_44
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_44} :catch_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_44} :catch_45

    #@44
    goto :goto_59

    #@45
    :catch_45
    move-exception v0

    #@46
    goto :goto_48

    #@47
    :catch_47
    move-exception v0

    #@48
    .line 73
    :goto_48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    const-string v2, "WeightTypeface"

    #@52
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    const/4 v0, 0x0

    #@56
    move-object v1, v0

    #@57
    move-object v2, v1

    #@58
    move-object v3, v2

    #@59
    .line 79
    :goto_59
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

    #@5b
    .line 80
    sput-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

    #@5d
    .line 81
    sput-object v2, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    #@5f
    .line 82
    sput-object v3, Landroidx/core/graphics/WeightTypefaceApi21;->sConstructor:Ljava/lang/reflect/Constructor;

    #@61
    .line 96
    new-instance v0, Landroidx/collection/LongSparseArray;

    #@63
    const/4 v1, 0x3

    #@64
    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    #@67
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    #@69
    .line 98
    new-instance v0, Ljava/lang/Object;

    #@6b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@6e
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightCacheLock:Ljava/lang/Object;

    #@70
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static create(J)Landroid/graphics/Typeface;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 177
    :try_start_1
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sConstructor:Ljava/lang/reflect/Constructor;

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
    .registers 10

    #@0
    .line 105
    invoke-static {}, Landroidx/core/graphics/WeightTypefaceApi21;->isPrivateApiAvailable()Z

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
    .line 112
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightCacheLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 113
    :try_start_e
    invoke-static {p0}, Landroidx/core/graphics/WeightTypefaceApi21;->getNativeInstance(Landroid/graphics/Typeface;)J

    #@11
    move-result-wide v2

    #@12
    .line 114
    sget-object v4, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    #@14
    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    check-cast v5, Landroid/util/SparseArray;

    #@1a
    if-nez v5, :cond_26

    #@1c
    .line 116
    new-instance v5, Landroid/util/SparseArray;

    #@1e
    const/4 v6, 0x4

    #@1f
    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    #@22
    .line 117
    invoke-virtual {v4, v2, v3, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@25
    goto :goto_30

    #@26
    .line 119
    :cond_26
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/graphics/Typeface;

    #@2c
    if-eqz v4, :cond_30

    #@2e
    .line 121
    monitor-exit v1

    #@2f
    return-object v4

    #@30
    .line 125
    :cond_30
    :goto_30
    invoke-virtual {p0}, Landroid/graphics/Typeface;->isItalic()Z

    #@33
    move-result p0

    #@34
    if-ne p2, p0, :cond_3f

    #@36
    .line 127
    invoke-static {v2, v3, p1}, Landroidx/core/graphics/WeightTypefaceApi21;->nativeCreateWeightAlias(JI)J

    #@39
    move-result-wide p0

    #@3a
    .line 126
    invoke-static {p0, p1}, Landroidx/core/graphics/WeightTypefaceApi21;->create(J)Landroid/graphics/Typeface;

    #@3d
    move-result-object p0

    #@3e
    goto :goto_47

    #@3f
    .line 130
    :cond_3f
    invoke-static {v2, v3, p1, p2}, Landroidx/core/graphics/WeightTypefaceApi21;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    #@42
    move-result-wide p0

    #@43
    .line 129
    invoke-static {p0, p1}, Landroidx/core/graphics/WeightTypefaceApi21;->create(J)Landroid/graphics/Typeface;

    #@46
    move-result-object p0

    #@47
    .line 132
    :goto_47
    invoke-virtual {v5, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4a
    .line 133
    monitor-exit v1

    #@4b
    return-object p0

    #@4c
    :catchall_4c
    move-exception p0

    #@4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_4c

    #@4e
    throw p0
.end method

.method private static getNativeInstance(Landroid/graphics/Typeface;)J
    .registers 3

    #@0
    .line 139
    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

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
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v0
.end method

.method private static isPrivateApiAvailable()Z
    .registers 1

    #@0
    .line 89
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

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
    .registers 8

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    if-eqz p3, :cond_6

    #@4
    move p3, v0

    #@5
    goto :goto_7

    #@6
    :cond_6
    move p3, v1

    #@7
    .line 153
    :goto_7
    :try_start_7
    sget-object v2, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

    #@9
    new-array v3, v0, [Ljava/lang/Object;

    #@b
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e
    move-result-object p0

    #@f
    aput-object p0, v3, v1

    #@11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object p0

    #@15
    const/4 p1, 0x1

    #@16
    aput-object p0, v3, p1

    #@18
    const/4 p0, 0x0

    #@19
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object p3

    #@1d
    check-cast p3, Ljava/lang/Long;

    #@1f
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    #@22
    move-result-wide v2

    #@23
    .line 154
    sget-object p3, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    #@25
    new-array v0, v0, [Ljava/lang/Object;

    #@27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a
    move-result-object v2

    #@2b
    aput-object v2, v0, v1

    #@2d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object p2

    #@31
    aput-object p2, v0, p1

    #@33
    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object p0

    #@37
    check-cast p0, Ljava/lang/Long;

    #@39
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@3c
    move-result-wide p0
    :try_end_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_3d} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_3d} :catch_3e

    #@3d
    return-wide p0

    #@3e
    :catch_3e
    move-exception p0

    #@3f
    .line 158
    new-instance p1, Ljava/lang/RuntimeException;

    #@41
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@44
    throw p1

    #@45
    :catch_45
    move-exception p0

    #@46
    .line 156
    new-instance p1, Ljava/lang/RuntimeException;

    #@48
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@4b
    throw p1
.end method

.method private static nativeCreateWeightAlias(JI)J
    .registers 5

    #@0
    .line 166
    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    #@2
    const/4 v1, 0x2

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
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object p0

    #@10
    const/4 p1, 0x1

    #@11
    aput-object p0, v1, p1

    #@13
    const/4 p0, 0x0

    #@14
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object p0

    #@18
    check-cast p0, Ljava/lang/Long;

    #@1a
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@1d
    move-result-wide p0
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1e} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1e} :catch_1f

    #@1e
    return-wide p0

    #@1f
    :catch_1f
    move-exception p0

    #@20
    .line 170
    new-instance p1, Ljava/lang/RuntimeException;

    #@22
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw p1

    #@26
    :catch_26
    move-exception p0

    #@27
    .line 168
    new-instance p1, Ljava/lang/RuntimeException;

    #@29
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw p1
.end method
