.class public final Landroidx/core/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/ResourcesCompat$ThemeCompat;,
        Landroidx/core/content/res/ResourcesCompat$Api15Impl;,
        Landroidx/core/content/res/ResourcesCompat$Api21Impl;,
        Landroidx/core/content/res/ResourcesCompat$Api23Impl;,
        Landroidx/core/content/res/ResourcesCompat$Api29Impl;,
        Landroidx/core/content/res/ResourcesCompat$FontCallback;,
        Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;,
        Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    }
.end annotation


# static fields
.field public static final ID_NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResourcesCompat"

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;",
            "Landroid/util/SparseArray<",
            "Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 75
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    #@7
    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    #@d
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    #@f
    .line 80
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    #@16
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addColorStateListToCache(Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;ILandroid/content/res/ColorStateList;Landroid/content/res/Resources$Theme;)V
    .registers 7

    #@0
    .line 296
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 297
    :try_start_3
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/util/SparseArray;

    #@b
    if-nez v2, :cond_15

    #@d
    .line 299
    new-instance v2, Landroid/util/SparseArray;

    #@f
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@12
    .line 300
    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 302
    :cond_15
    new-instance v1, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    #@17
    iget-object p0, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    #@19
    .line 303
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1c
    move-result-object p0

    #@1d
    invoke-direct {v1, p2, p0, p3}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    #@20
    .line 302
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@23
    .line 304
    monitor-exit v0

    #@24
    return-void

    #@25
    :catchall_25
    move-exception p0

    #@26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    #@27
    throw p0
.end method

.method public static clearCachesForTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4

    #@0
    .line 103
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 104
    :try_start_3
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 105
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_27

    #@13
    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    #@19
    if-eqz v2, :cond_d

    #@1b
    .line 107
    iget-object v2, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    #@1d
    invoke-virtual {p0, v2}, Landroid/content/res/Resources$Theme;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_d

    #@23
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@26
    goto :goto_d

    #@27
    .line 111
    :cond_27
    monitor-exit v0

    #@28
    return-void

    #@29
    :catchall_29
    move-exception p0

    #@2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    #@2b
    throw p0
.end method

.method private static getCachedColorStateList(Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;I)Landroid/content/res/ColorStateList;
    .registers 7

    #@0
    .line 272
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 273
    :try_start_3
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/util/SparseArray;

    #@b
    if-eqz v1, :cond_46

    #@d
    .line 274
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@10
    move-result v2

    #@11
    if-lez v2, :cond_46

    #@13
    .line 275
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    #@19
    if-eqz v2, :cond_46

    #@1b
    .line 277
    iget-object v3, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mConfiguration:Landroid/content/res/Configuration;

    #@1d
    iget-object v4, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    #@1f
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_43

    #@29
    iget-object v3, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    #@2b
    if-nez v3, :cond_31

    #@2d
    iget v3, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mThemeHash:I

    #@2f
    if-eqz v3, :cond_3f

    #@31
    :cond_31
    iget-object v3, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    #@33
    if-eqz v3, :cond_43

    #@35
    iget v3, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mThemeHash:I

    #@37
    iget-object p0, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    #@39
    .line 279
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->hashCode()I

    #@3c
    move-result p0

    #@3d
    if-ne v3, p0, :cond_43

    #@3f
    .line 281
    :cond_3f
    iget-object p0, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mValue:Landroid/content/res/ColorStateList;

    #@41
    monitor-exit v0

    #@42
    return-object p0

    #@43
    .line 284
    :cond_43
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@46
    .line 288
    :cond_46
    monitor-exit v0

    #@47
    const/4 p0, 0x0

    #@48
    return-object p0

    #@49
    :catchall_49
    move-exception p0

    #@4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    #@4b
    throw p0
.end method

.method public static getCachedFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 439
    :cond_8
    new-instance v2, Landroid/util/TypedValue;

    #@a
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v6, 0x0

    #@11
    const/4 v7, 0x1

    #@12
    move-object v0, p0

    #@13
    move v1, p1

    #@14
    invoke-static/range {v0 .. v7}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    #@17
    move-result-object p0

    #@18
    return-object p0
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 200
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat$Api23Impl;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 230
    new-instance v0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    #@2
    invoke-direct {v0, p0, p2}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    #@5
    .line 231
    invoke-static {v0, p1}, Landroidx/core/content/res/ResourcesCompat;->getCachedColorStateList(Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;I)Landroid/content/res/ColorStateList;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_c

    #@b
    return-object v1

    #@c
    .line 236
    :cond_c
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat;->inflateColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_16

    #@12
    .line 239
    invoke-static {v0, p1, v1, p2}, Landroidx/core/content/res/ResourcesCompat;->addColorStateListToCache(Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;ILandroid/content/res/ColorStateList;Landroid/content/res/Resources$Theme;)V

    #@15
    return-object v1

    #@16
    .line 244
    :cond_16
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat$Api23Impl;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@19
    move-result-object p0

    #@1a
    return-object p0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 137
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat$Api21Impl;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 170
    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ResourcesCompat$Api21Impl;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getFloat(Landroid/content/res/Resources;I)F
    .registers 5

    #@0
    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 374
    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat$Api29Impl;->getFloat(Landroid/content/res/Resources;I)F

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 377
    :cond_b
    invoke-static {}, Landroidx/core/content/res/ResourcesCompat;->getTypedValue()Landroid/util/TypedValue;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x1

    #@10
    .line 378
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@13
    .line 379
    iget p0, v0, Landroid/util/TypedValue;->type:I

    #@15
    const/4 v1, 0x4

    #@16
    if-ne p0, v1, :cond_1d

    #@18
    .line 380
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    #@1b
    move-result p0

    #@1c
    return p0

    #@1d
    .line 382
    :cond_1d
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    const-string v2, "Resource ID #0x"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object p1

    #@2e
    const-string v1, " type #0x"

    #@30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p1

    #@34
    iget v0, v0, Landroid/util/TypedValue;->type:I

    #@36
    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    const-string v0, " is not valid"

    #@40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p1

    #@44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object p1

    #@48
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@4b
    throw p0
.end method

.method public static getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 411
    :cond_8
    new-instance v2, Landroid/util/TypedValue;

    #@a
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v6, 0x0

    #@11
    const/4 v7, 0x0

    #@12
    move-object v0, p0

    #@13
    move v1, p1

    #@14
    invoke-static/range {v0 .. v7}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    #@17
    move-result-object p0

    #@18
    return-object p0
.end method

.method public static getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    :cond_8
    const/4 v5, 0x0

    #@9
    const/4 v6, 0x1

    #@a
    const/4 v7, 0x0

    #@b
    move-object v0, p0

    #@c
    move v1, p1

    #@d
    move-object v2, p2

    #@e
    move v3, p3

    #@f
    move-object v4, p4

    #@10
    .line 546
    invoke-static/range {v0 .. v7}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    #@13
    move-result-object p0

    #@14
    return-object p0
.end method

.method public static getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 523
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_e

    #@9
    const/4 p0, -0x4

    #@a
    .line 525
    invoke-virtual {p2, p0, p3}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    #@d
    return-void

    #@e
    .line 529
    :cond_e
    new-instance v2, Landroid/util/TypedValue;

    #@10
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v6, 0x0

    #@15
    const/4 v7, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move-object v4, p2

    #@19
    move-object v5, p3

    #@1a
    invoke-static/range {v0 .. v7}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    #@1d
    return-void
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 316
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/TypedValue;

    #@8
    if-nez v1, :cond_12

    #@a
    .line 318
    new-instance v1, Landroid/util/TypedValue;

    #@c
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@f
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@12
    :cond_12
    return-object v1
.end method

.method private static inflateColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 5

    #@0
    .line 256
    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat;->isColorInt(Landroid/content/res/Resources;I)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 260
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@b
    move-result-object p1

    #@c
    .line 262
    :try_start_c
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@f
    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    #@10
    return-object p0

    #@11
    :catch_11
    move-exception p0

    #@12
    const-string p1, "ResourcesCompat"

    #@14
    const-string p2, "Failed to inflate ColorStateList, leaving it to the framework"

    #@16
    .line 264
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    return-object v1
.end method

.method private static isColorInt(Landroid/content/res/Resources;I)Z
    .registers 4

    #@0
    .line 308
    invoke-static {}, Landroidx/core/content/res/ResourcesCompat;->getTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 309
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@8
    .line 310
    iget p0, v0, Landroid/util/TypedValue;->type:I

    #@a
    const/16 p1, 0x1c

    #@c
    if-lt p0, p1, :cond_15

    #@e
    iget p0, v0, Landroid/util/TypedValue;->type:I

    #@10
    const/16 p1, 0x1f

    #@12
    if-gt p0, p1, :cond_15

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v1, 0x0

    #@16
    :goto_16
    return v1
.end method

.method private static loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    .registers 18

    #@0
    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    const/4 v0, 0x1

    #@5
    move v9, p1

    #@6
    move-object v2, p2

    #@7
    .line 569
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    move-object v0, p0

    #@b
    move v3, p1

    #@c
    move v4, p3

    #@d
    move-object v5, p4

    #@e
    move-object v6, p5

    #@f
    move/from16 v7, p6

    #@11
    move/from16 v8, p7

    #@13
    .line 570
    invoke-static/range {v0 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    #@16
    move-result-object v0

    #@17
    if-nez v0, :cond_3d

    #@19
    if-nez p4, :cond_3d

    #@1b
    if-eqz p7, :cond_1e

    #@1d
    goto :goto_3d

    #@1e
    .line 573
    :cond_1e
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    const-string v2, "Font resource ID #0x"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const-string v2, " could not be retrieved."

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    :cond_3d
    :goto_3d
    return-object v0
.end method

.method private static loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    .registers 26

    #@0
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p2

    #@4
    move/from16 v4, p3

    #@6
    move-object/from16 v11, p5

    #@8
    move-object/from16 v12, p6

    #@a
    const-string v13, "ResourcesCompat"

    #@c
    .line 600
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@e
    if-eqz v2, :cond_b9

    #@10
    .line 605
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@12
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@15
    move-result-object v14

    #@16
    const-string v2, "res/"

    #@18
    .line 606
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    const/4 v15, -0x3

    #@1d
    const/16 v16, 0x0

    #@1f
    if-nez v2, :cond_27

    #@21
    if-eqz v11, :cond_26

    #@23
    .line 609
    invoke-virtual {v11, v15, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    #@26
    :cond_26
    return-object v16

    #@27
    .line 614
    :cond_27
    iget v2, v1, Landroid/util/TypedValue;->assetCookie:I

    #@29
    move/from16 v7, p4

    #@2b
    invoke-static {v0, v4, v14, v2, v7}, Landroidx/core/graphics/TypefaceCompat;->findFromCache(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    #@2e
    move-result-object v2

    #@2f
    if-eqz v2, :cond_37

    #@31
    if-eqz v11, :cond_36

    #@33
    .line 619
    invoke-virtual {v11, v2, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    #@36
    :cond_36
    return-object v2

    #@37
    :cond_37
    if-eqz p8, :cond_3a

    #@39
    return-object v16

    #@3a
    .line 627
    :cond_3a
    :try_start_3a
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    const-string v3, ".xml"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_71

    #@46
    .line 628
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@49
    move-result-object v2

    #@4a
    .line 630
    invoke-static {v2, v0}, Landroidx/core/content/res/FontResourcesParserCompat;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    #@4d
    move-result-object v2

    #@4e
    if-nez v2, :cond_5b

    #@50
    const-string v0, "Failed to find font-family tag"

    #@52
    .line 632
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    if-eqz v11, :cond_5a

    #@57
    .line 634
    invoke-virtual {v11, v15, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    #@5a
    :cond_5a
    return-object v16

    #@5b
    .line 639
    :cond_5b
    iget v6, v1, Landroid/util/TypedValue;->assetCookie:I

    #@5d
    move-object/from16 v1, p0

    #@5f
    move-object/from16 v3, p1

    #@61
    move/from16 v4, p3

    #@63
    move-object v5, v14

    #@64
    move/from16 v7, p4

    #@66
    move-object/from16 v8, p5

    #@68
    move-object/from16 v9, p6

    #@6a
    move/from16 v10, p7

    #@6c
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    #@6f
    move-result-object v0

    #@70
    return-object v0

    #@71
    .line 643
    :cond_71
    iget v5, v1, Landroid/util/TypedValue;->assetCookie:I

    #@73
    move-object/from16 v1, p0

    #@75
    move-object/from16 v2, p1

    #@77
    move/from16 v3, p3

    #@79
    move-object v4, v14

    #@7a
    move/from16 v6, p4

    #@7c
    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    #@7f
    move-result-object v0

    #@80
    if-eqz v11, :cond_8b

    #@82
    if-eqz v0, :cond_88

    #@84
    .line 647
    invoke-virtual {v11, v0, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    #@87
    goto :goto_8b

    #@88
    .line 649
    :cond_88
    invoke-virtual {v11, v15, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_8b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_8b} :catch_a0
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_8b} :catch_8c

    #@8b
    :cond_8b
    :goto_8b
    return-object v0

    #@8c
    :catch_8c
    move-exception v0

    #@8d
    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    #@8f
    const-string v2, "Failed to read xml resource "

    #@91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@94
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9f
    goto :goto_b3

    #@a0
    :catch_a0
    move-exception v0

    #@a1
    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    #@a3
    const-string v2, "Failed to parse xml resource "

    #@a5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a8
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v1

    #@b0
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b3
    :goto_b3
    if-eqz v11, :cond_b8

    #@b5
    .line 660
    invoke-virtual {v11, v15, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    #@b8
    :cond_b8
    return-object v16

    #@b9
    .line 601
    :cond_b9
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@bb
    new-instance v3, Ljava/lang/StringBuilder;

    #@bd
    const-string v5, "Resource \""

    #@bf
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c2
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    const-string v3, "\" ("

    #@cc
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    .line 602
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    const-string v3, ") is not a Font: "

    #@da
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v0

    #@e6
    invoke-direct {v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v2
.end method
