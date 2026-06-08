.class Landroidx/appcompat/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ResourcesFlusher$Api16Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesFlusher"

.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static flush(Landroid/content/res/Resources;)V
    .registers 3

    #@0
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_7

    #@6
    return-void

    #@7
    .line 51
    :cond_7
    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)V

    #@a
    return-void
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)V
    .registers 5

    #@0
    .line 61
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    #@2
    const-string v1, "ResourcesFlusher"

    #@4
    if-nez v0, :cond_1d

    #@6
    const/4 v0, 0x1

    #@7
    .line 63
    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    #@9
    const-string v3, "mDrawableCache"

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@e
    move-result-object v2

    #@f
    sput-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    #@11
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_14} :catch_15

    #@14
    goto :goto_1b

    #@15
    :catch_15
    move-exception v2

    #@16
    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    #@18
    .line 66
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 68
    :goto_1b
    sput-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    #@1d
    .line 70
    :cond_1d
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    #@1f
    if-eqz v0, :cond_34

    #@21
    .line 73
    :try_start_21
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object p0

    #@25
    check-cast p0, Ljava/util/Map;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_27} :catch_28

    #@27
    goto :goto_2f

    #@28
    :catch_28
    move-exception p0

    #@29
    const-string v0, "Could not retrieve value from Resources#mDrawableCache"

    #@2b
    .line 75
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    const/4 p0, 0x0

    #@2f
    :goto_2f
    if-eqz p0, :cond_34

    #@31
    .line 78
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    #@34
    :cond_34
    return-void
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)V
    .registers 5

    #@0
    .line 85
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    #@2
    const-string v1, "ResourcesFlusher"

    #@4
    if-nez v0, :cond_1d

    #@6
    const/4 v0, 0x1

    #@7
    .line 87
    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    #@9
    const-string v3, "mDrawableCache"

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@e
    move-result-object v2

    #@f
    sput-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    #@11
    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_14} :catch_15

    #@14
    goto :goto_1b

    #@15
    :catch_15
    move-exception v2

    #@16
    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    #@18
    .line 90
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 92
    :goto_1b
    sput-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    #@1d
    .line 96
    :cond_1d
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    #@1f
    if-eqz v0, :cond_2c

    #@21
    .line 98
    :try_start_21
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object p0
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_25} :catch_26

    #@25
    goto :goto_2d

    #@26
    :catch_26
    move-exception p0

    #@27
    const-string v0, "Could not retrieve value from Resources#mDrawableCache"

    #@29
    .line 100
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    :cond_2c
    const/4 p0, 0x0

    #@2d
    :goto_2d
    if-nez p0, :cond_30

    #@2f
    return-void

    #@30
    .line 109
    :cond_30
    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    #@33
    return-void
.end method

.method private static flushNougats(Landroid/content/res/Resources;)V
    .registers 6

    #@0
    .line 114
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    #@2
    const/4 v1, 0x1

    #@3
    const-string v2, "ResourcesFlusher"

    #@5
    if-nez v0, :cond_1d

    #@7
    .line 116
    :try_start_7
    const-class v0, Landroid/content/res/Resources;

    #@9
    const-string v3, "mResourcesImpl"

    #@b
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    #@11
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_14} :catch_15

    #@14
    goto :goto_1b

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v3, "Could not retrieve Resources#mResourcesImpl field"

    #@18
    .line 119
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 121
    :goto_1b
    sput-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    #@1d
    .line 124
    :cond_1d
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    #@1f
    if-nez v0, :cond_22

    #@21
    return-void

    #@22
    :cond_22
    const/4 v3, 0x0

    #@23
    .line 131
    :try_start_23
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object p0
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_27} :catch_28

    #@27
    goto :goto_2f

    #@28
    :catch_28
    move-exception p0

    #@29
    const-string v0, "Could not retrieve value from Resources#mResourcesImpl"

    #@2b
    .line 133
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    move-object p0, v3

    #@2f
    :goto_2f
    if-nez p0, :cond_32

    #@31
    return-void

    #@32
    .line 141
    :cond_32
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    #@34
    if-nez v0, :cond_4e

    #@36
    .line 143
    :try_start_36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@39
    move-result-object v0

    #@3a
    const-string v4, "mDrawableCache"

    #@3c
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3f
    move-result-object v0

    #@40
    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    #@42
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_45
    .catch Ljava/lang/NoSuchFieldException; {:try_start_36 .. :try_end_45} :catch_46

    #@45
    goto :goto_4c

    #@46
    :catch_46
    move-exception v0

    #@47
    const-string v4, "Could not retrieve ResourcesImpl#mDrawableCache field"

    #@49
    .line 146
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 148
    :goto_4c
    sput-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    #@4e
    .line 152
    :cond_4e
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    #@50
    if-eqz v0, :cond_5d

    #@52
    .line 154
    :try_start_52
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v3
    :try_end_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_52 .. :try_end_56} :catch_57

    #@56
    goto :goto_5d

    #@57
    :catch_57
    move-exception p0

    #@58
    const-string v0, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    #@5a
    .line 156
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    :cond_5d
    :goto_5d
    if-eqz v3, :cond_62

    #@5f
    .line 161
    invoke-static {v3}, Landroidx/appcompat/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    #@62
    :cond_62
    return-void
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)V
    .registers 5

    #@0
    .line 167
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    #@2
    const/4 v1, 0x1

    #@3
    const-string v2, "ResourcesFlusher"

    #@5
    if-nez v0, :cond_18

    #@7
    :try_start_7
    const-string v0, "android.content.res.ThemedResourceCache"

    #@9
    .line 169
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_f} :catch_10

    #@f
    goto :goto_16

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v3, "Could not find ThemedResourceCache class"

    #@13
    .line 171
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 173
    :goto_16
    sput-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    #@18
    .line 176
    :cond_18
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    #@1a
    if-nez v0, :cond_1d

    #@1c
    return-void

    #@1d
    .line 181
    :cond_1d
    sget-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    #@1f
    if-nez v3, :cond_35

    #@21
    :try_start_21
    const-string v3, "mUnthemedEntries"

    #@23
    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@26
    move-result-object v0

    #@27
    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    #@29
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_2c} :catch_2d

    #@2c
    goto :goto_33

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    #@30
    .line 187
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    .line 189
    :goto_33
    sput-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    #@35
    .line 192
    :cond_35
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    #@37
    if-nez v0, :cond_3a

    #@39
    return-void

    #@3a
    .line 200
    :cond_3a
    :try_start_3a
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object p0

    #@3e
    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_40} :catch_41

    #@40
    goto :goto_48

    #@41
    :catch_41
    move-exception p0

    #@42
    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    #@44
    .line 202
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    const/4 p0, 0x0

    #@48
    :goto_48
    if-eqz p0, :cond_4d

    #@4a
    .line 206
    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher$Api16Impl;->clear(Landroid/util/LongSparseArray;)V

    #@4d
    :cond_4d
    return-void
.end method
