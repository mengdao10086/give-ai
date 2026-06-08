.class public final Landroidx/appcompat/widget/ResourceManagerInternal;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ResourceManagerInternal$DrawableDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;,
        Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "ResourceManagerInternal"


# instance fields
.field private mDelegates:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

.field private mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 87
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@2
    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 117
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    #@6
    const/4 v1, 0x6

    #@7
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(I)V

    #@a
    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    #@c
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 123
    new-instance v0, Ljava/util/WeakHashMap;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    #@b
    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V
    .registers 4

    #@0
    .line 372
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 373
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@6
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    #@b
    .line 375
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    #@d
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    return-void
.end method

.method private declared-synchronized addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .registers 7

    #@0
    monitor-enter p0

    #@1
    .line 341
    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@4
    move-result-object p4

    #@5
    if-eqz p4, :cond_26

    #@7
    .line 343
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroidx/collection/LongSparseArray;

    #@f
    if-nez v0, :cond_1b

    #@11
    .line 345
    new-instance v0, Landroidx/collection/LongSparseArray;

    #@13
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    #@16
    .line 346
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    #@18
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 348
    :cond_1b
    new-instance p1, Ljava/lang/ref/WeakReference;

    #@1d
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@20
    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_29

    #@23
    .line 349
    monitor-exit p0

    #@24
    const/4 p1, 0x1

    #@25
    return p1

    #@26
    .line 351
    :cond_26
    monitor-exit p0

    #@27
    const/4 p1, 0x0

    #@28
    return p1

    #@29
    :catchall_29
    move-exception p1

    #@2a
    monitor-exit p0

    #@2b
    throw p1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .registers 6

    #@0
    .line 407
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 408
    new-instance v0, Ljava/util/WeakHashMap;

    #@6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    #@b
    .line 410
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    #@13
    if-nez v0, :cond_1f

    #@15
    .line 412
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    #@17
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    #@1a
    .line 413
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    #@1c
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 415
    :cond_1f
    invoke-virtual {v0, p2, p3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    #@22
    return-void
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 499
    iget-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 505
    iput-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    #@8
    .line 506
    sget v0, Landroidx/appcompat/resources/R$drawable;->abc_vector_test:I

    #@a
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object p1

    #@e
    if-eqz p1, :cond_17

    #@10
    .line 507
    invoke-static {p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_17

    #@16
    return-void

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    .line 508
    iput-boolean p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    #@1a
    .line 509
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1c
    const-string v0, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    #@1e
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw p1
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .registers 5

    #@0
    .line 172
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    #@2
    int-to-long v0, v0

    #@3
    const/16 v2, 0x20

    #@5
    shl-long/2addr v0, v2

    #@6
    iget p0, p0, Landroid/util/TypedValue;->data:I

    #@8
    int-to-long v2, p0

    #@9
    or-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 7

    #@0
    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 178
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    #@b
    .line 180
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    #@d
    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x1

    #@12
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@15
    .line 182
    invoke-static {v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->createCacheKey(Landroid/util/TypedValue;)J

    #@18
    move-result-wide v1

    #@19
    .line 184
    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v3

    #@1d
    if-eqz v3, :cond_20

    #@1f
    return-object v3

    #@20
    .line 191
    :cond_20
    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    #@22
    if-nez v3, :cond_26

    #@24
    const/4 p2, 0x0

    #@25
    goto :goto_2a

    #@26
    .line 192
    :cond_26
    invoke-interface {v3, p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->createDrawableFor(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object p2

    #@2a
    :goto_2a
    if-eqz p2, :cond_34

    #@2c
    .line 195
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    #@2e
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    #@31
    .line 197
    invoke-direct {p0, p1, v1, v2, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    #@34
    :cond_34
    return-object p2
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    #@0
    if-eqz p0, :cond_f

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_f

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 480
    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@9
    move-result p0

    #@a
    .line 481
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    :cond_f
    :goto_f
    const/4 p0, 0x0

    #@10
    return-object p0
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/ResourceManagerInternal;
    .registers 2

    #@0
    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    #@2
    monitor-enter v0

    #@3
    .line 98
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    #@5
    if-nez v1, :cond_11

    #@7
    .line 99
    new-instance v1, Landroidx/appcompat/widget/ResourceManagerInternal;

    #@9
    invoke-direct {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;-><init>()V

    #@c
    sput-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    #@e
    .line 100
    invoke-static {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->installDefaultInflateDelegates(Landroidx/appcompat/widget/ResourceManagerInternal;)V

    #@11
    .line 102
    :cond_11
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    #@13
    monitor-exit v0

    #@14
    return-object v1

    #@15
    :catchall_15
    move-exception v1

    #@16
    monitor-exit v0

    #@17
    throw v1
.end method

.method private declared-synchronized getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 7

    #@0
    monitor-enter p0

    #@1
    .line 320
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/collection/LongSparseArray;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    #@9
    const/4 v1, 0x0

    #@a
    if-nez v0, :cond_e

    #@c
    .line 322
    monitor-exit p0

    #@d
    return-object v1

    #@e
    .line 325
    :cond_e
    :try_start_e
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@14
    if-eqz v2, :cond_2b

    #@16
    .line 328
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    #@1c
    if-eqz v2, :cond_28

    #@1e
    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object p1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2d

    #@26
    monitor-exit p0

    #@27
    return-object p1

    #@28
    .line 333
    :cond_28
    :try_start_28
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    #@2b
    .line 336
    :cond_2b
    monitor-exit p0

    #@2c
    return-object v1

    #@2d
    :catchall_2d
    move-exception p1

    #@2e
    monitor-exit p0

    #@2f
    throw p1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    #@0
    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    #@2
    monitor-enter v0

    #@3
    .line 487
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    #@5
    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@8
    move-result-object v2

    #@9
    if-nez v2, :cond_13

    #@b
    .line 491
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    #@d
    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@10
    .line 492
    invoke-virtual {v1, p0, p1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    #@13
    .line 495
    :cond_13
    monitor-exit v0

    #@14
    return-object v2

    #@15
    :catchall_15
    move-exception p0

    #@16
    monitor-exit v0

    #@17
    throw p0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5

    #@0
    .line 398
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_14

    #@5
    .line 399
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Landroidx/collection/SparseArrayCompat;

    #@b
    if-eqz p1, :cond_14

    #@d
    .line 400
    invoke-virtual {p1, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    move-object v1, p1

    #@12
    check-cast v1, Landroid/content/res/ColorStateList;

    #@14
    :cond_14
    return-object v1
.end method

.method private static installDefaultInflateDelegates(Landroidx/appcompat/widget/ResourceManagerInternal;)V
    .registers 1

    #@0
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    #@0
    .line 515
    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    #@2
    if-nez v0, :cond_17

    #@4
    .line 516
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    const-string v0, "android.graphics.drawable.VectorDrawable"

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result p0

    #@12
    if-eqz p0, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/4 p0, 0x0

    #@16
    goto :goto_18

    #@17
    :cond_17
    :goto_17
    const/4 p0, 0x1

    #@18
    :goto_18
    return p0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 13

    #@0
    .line 234
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_b4

    #@5
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_b4

    #@b
    .line 235
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    #@d
    const-string v2, "appcompat_skip_skip"

    #@f
    if-eqz v0, :cond_28

    #@11
    .line 236
    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_27

    #@1d
    if-eqz v0, :cond_2f

    #@1f
    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    #@21
    .line 238
    invoke-virtual {v3, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    if-nez v0, :cond_2f

    #@27
    :cond_27
    return-object v1

    #@28
    .line 249
    :cond_28
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    #@2a
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    #@2d
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    #@2f
    .line 252
    :cond_2f
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    #@31
    if-nez v0, :cond_3a

    #@33
    .line 253
    new-instance v0, Landroid/util/TypedValue;

    #@35
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@38
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    #@3a
    .line 255
    :cond_3a
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    #@3c
    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f
    move-result-object v1

    #@40
    const/4 v3, 0x1

    #@41
    .line 257
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@44
    .line 259
    invoke-static {v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->createCacheKey(Landroid/util/TypedValue;)J

    #@47
    move-result-wide v4

    #@48
    .line 261
    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/ResourceManagerInternal;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    #@4b
    move-result-object v6

    #@4c
    if-eqz v6, :cond_4f

    #@4e
    return-object v6

    #@4f
    .line 271
    :cond_4f
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@51
    if-eqz v7, :cond_ac

    #@53
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@55
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    const-string v8, ".xml"

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5e
    move-result v7

    #@5f
    if-eqz v7, :cond_ac

    #@61
    .line 274
    :try_start_61
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@64
    move-result-object v1

    #@65
    .line 275
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@68
    move-result-object v7

    #@69
    .line 277
    :goto_69
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6c
    move-result v8

    #@6d
    const/4 v9, 0x2

    #@6e
    if-eq v8, v9, :cond_73

    #@70
    if-eq v8, v3, :cond_73

    #@72
    goto :goto_69

    #@73
    :cond_73
    if-ne v8, v9, :cond_9c

    #@75
    .line 285
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    .line 287
    iget-object v8, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    #@7b
    invoke-virtual {v8, p2, v3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    #@7e
    .line 290
    iget-object v8, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    #@80
    invoke-virtual {v8, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    move-result-object v3

    #@84
    check-cast v3, Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;

    #@86
    if-eqz v3, :cond_91

    #@88
    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8b
    move-result-object v8

    #@8c
    .line 292
    invoke-interface {v3, p1, v1, v7, v8}, Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@8f
    move-result-object v1

    #@90
    move-object v6, v1

    #@91
    :cond_91
    if-eqz v6, :cond_ac

    #@93
    .line 297
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    #@95
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    #@98
    .line 298
    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/ResourceManagerInternal;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    #@9b
    goto :goto_ac

    #@9c
    .line 282
    :cond_9c
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    #@9e
    const-string v0, "No start tag found"

    #@a0
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a3
    throw p1
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_a4} :catch_a4

    #@a4
    :catch_a4
    move-exception p1

    #@a5
    const-string v0, "ResourceManagerInternal"

    #@a7
    const-string v1, "Exception while inflating drawable"

    #@a9
    .line 304
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ac
    :cond_ac
    :goto_ac
    if-nez v6, :cond_b3

    #@ae
    .line 310
    iget-object p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    #@b0
    invoke-virtual {p1, p2, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    #@b3
    :cond_b3
    return-object v6

    #@b4
    :cond_b4
    return-object v1
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    .line 205
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_21

    #@6
    .line 208
    invoke-static {p4}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_10

    #@c
    .line 209
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p4

    #@10
    .line 211
    :cond_10
    invoke-static {p4}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p4

    #@14
    .line 212
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@17
    .line 215
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    #@1a
    move-result-object p1

    #@1b
    if-eqz p1, :cond_35

    #@1d
    .line 217
    invoke-static {p4, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@20
    goto :goto_35

    #@21
    .line 219
    :cond_21
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    #@23
    if-eqz v0, :cond_2c

    #@25
    invoke-interface {v0, p1, p2, p4}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->tintDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2c

    #@2b
    goto :goto_35

    #@2c
    .line 223
    :cond_2c
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    #@2f
    move-result p1

    #@30
    if-nez p1, :cond_35

    #@32
    if-eqz p3, :cond_35

    #@34
    const/4 p4, 0x0

    #@35
    :cond_35
    :goto_35
    return-object p4
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V
    .registers 6

    #@0
    .line 441
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@3
    move-result-object v0

    #@4
    .line 444
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    if-eqz v1, :cond_1e

    #@b
    .line 445
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v1

    #@f
    if-ne v1, p0, :cond_13

    #@11
    const/4 v1, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    move v1, v2

    #@14
    :goto_14
    if-nez v1, :cond_1e

    #@16
    const-string p0, "ResourceManagerInternal"

    #@18
    const-string p1, "Mutated drawable is not the same instance as the input."

    #@1a
    .line 447
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    return-void

    #@1e
    .line 453
    :cond_1e
    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    #@20
    if-eqz v1, :cond_30

    #@22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_30

    #@28
    new-array v1, v2, [I

    #@2a
    .line 455
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2d
    .line 456
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@30
    .line 459
    :cond_30
    iget-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@32
    if-nez v0, :cond_3d

    #@34
    iget-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    #@36
    if-eqz v0, :cond_39

    #@38
    goto :goto_3d

    #@39
    .line 465
    :cond_39
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    #@3c
    goto :goto_55

    #@3d
    .line 461
    :cond_3d
    :goto_3d
    iget-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@3f
    if-eqz v0, :cond_44

    #@41
    iget-object v0, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@43
    goto :goto_45

    #@44
    :cond_44
    const/4 v0, 0x0

    #@45
    .line 462
    :goto_45
    iget-boolean v1, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    #@47
    if-eqz v1, :cond_4c

    #@49
    iget-object p1, p1, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4b
    goto :goto_4e

    #@4c
    :cond_4c
    sget-object p1, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@4e
    .line 460
    :goto_4e
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    #@51
    move-result-object p1

    #@52
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@55
    :goto_55
    return-void
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    monitor-enter p0

    #@1
    const/4 v0, 0x0

    #@2
    .line 137
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    #@6
    monitor-exit p0

    #@7
    return-object p1

    #@8
    :catchall_8
    move-exception p1

    #@9
    monitor-exit p0

    #@a
    throw p1
.end method

.method declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    monitor-enter p0

    #@1
    .line 142
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->checkVectorDrawableSetup(Landroid/content/Context;)V

    #@4
    .line 144
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_e

    #@a
    .line 146
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    :cond_e
    if-nez v0, :cond_14

    #@10
    .line 149
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    :cond_14
    if-eqz v0, :cond_1a

    #@16
    .line 154
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v0

    #@1a
    :cond_1a
    if-eqz v0, :cond_1f

    #@1c
    .line 158
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    #@1f
    .line 160
    :cond_1f
    monitor-exit p0

    #@20
    return-object v0

    #@21
    :catchall_21
    move-exception p1

    #@22
    monitor-exit p0

    #@23
    throw p1
.end method

.method declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    #@0
    monitor-enter p0

    #@1
    .line 384
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_16

    #@7
    .line 388
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    #@9
    if-nez v0, :cond_d

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_11

    #@d
    :cond_d
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@10
    move-result-object v0

    #@11
    :goto_11
    if-eqz v0, :cond_16

    #@13
    .line 391
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    #@16
    .line 394
    :cond_16
    monitor-exit p0

    #@17
    return-object v0

    #@18
    :catchall_18
    move-exception p1

    #@19
    monitor-exit p0

    #@1a
    throw p1
.end method

.method getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    #@0
    .line 379
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->getTintModeForDrawableRes(I)Landroid/graphics/PorterDuff$Mode;

    #@9
    move-result-object p1

    #@a
    :goto_a
    return-object p1
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    .line 164
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    check-cast p1, Landroidx/collection/LongSparseArray;

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 167
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    #@e
    .line 169
    :cond_e
    monitor-exit p0

    #@f
    return-void

    #@10
    :catchall_10
    move-exception p1

    #@11
    monitor-exit p0

    #@12
    throw p1
.end method

.method declared-synchronized onDrawableLoadedFromResources(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    monitor-enter p0

    #@1
    .line 356
    :try_start_1
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_b

    #@7
    .line 358
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/VectorEnabledTintResources;->getDrawableCanonical(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    :cond_b
    if-eqz v0, :cond_14

    #@d
    const/4 p2, 0x0

    #@e
    .line 361
    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    #@12
    monitor-exit p0

    #@13
    return-object p1

    #@14
    .line 363
    :cond_14
    monitor-exit p0

    #@15
    const/4 p1, 0x0

    #@16
    return-object p1

    #@17
    :catchall_17
    move-exception p1

    #@18
    monitor-exit p0

    #@19
    throw p1
.end method

.method public declared-synchronized setHooks(Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 133
    :try_start_1
    iput-object p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    .line 134
    monitor-exit p0

    #@4
    return-void

    #@5
    :catchall_5
    move-exception p1

    #@6
    monitor-exit p0

    #@7
    throw p1
.end method

.method tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 5

    #@0
    .line 368
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method
