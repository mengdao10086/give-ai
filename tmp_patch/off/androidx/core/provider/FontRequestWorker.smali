.class Landroidx/core/provider/FontRequestWorker;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field static final LOCK:Ljava/lang/Object;

.field static final PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 58
    new-instance v0, Landroidx/collection/LruCache;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    #@7
    sput-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    #@9
    const/16 v0, 0xa

    #@b
    const/16 v1, 0x2710

    #@d
    const-string v2, "fonts-androidx"

    #@f
    .line 61
    invoke-static {v2, v0, v1}, Landroidx/core/provider/RequestExecutor;->createDefaultExecutor(Ljava/lang/String;II)Ljava/util/concurrent/ThreadPoolExecutor;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    #@15
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1a
    sput-object v0, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    #@1c
    .line 72
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@1e
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@21
    sput-object v0, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    #@23
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;
    .registers 3

    #@0
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getId()Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object p0

    #@d
    const-string v0, "-"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object p0

    #@13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    return-object p0
.end method

.method private static getFontFamilyResultStatus(Landroidx/core/provider/FontsContractCompat$FontFamilyResult;)I
    .registers 6

    #@0
    .line 269
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x3

    #@5
    const/4 v2, 0x1

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 270
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    #@b
    move-result p0

    #@c
    if-eq p0, v2, :cond_f

    #@e
    return v1

    #@f
    :cond_f
    const/4 p0, -0x2

    #@10
    return p0

    #@11
    .line 277
    :cond_11
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@14
    move-result-object p0

    #@15
    if-eqz p0, :cond_30

    #@17
    .line 278
    array-length v0, p0

    #@18
    if-nez v0, :cond_1b

    #@1a
    goto :goto_30

    #@1b
    .line 282
    :cond_1b
    array-length v0, p0

    #@1c
    const/4 v2, 0x0

    #@1d
    move v3, v2

    #@1e
    :goto_1e
    if-ge v3, v0, :cond_30

    #@20
    aget-object v4, p0, v3

    #@22
    .line 285
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_2d

    #@28
    if-gez v4, :cond_2b

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v1, v4

    #@2c
    :goto_2c
    return v1

    #@2d
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_1e

    #@30
    :cond_30
    :goto_30
    return v2
.end method

.method static getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .registers 7

    #@0
    .line 238
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    #@2
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/graphics/Typeface;

    #@8
    if-eqz v1, :cond_10

    #@a
    .line 240
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@c
    invoke-direct {p0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    #@f
    return-object p0

    #@10
    :cond_10
    const/4 v1, 0x0

    #@11
    .line 245
    :try_start_11
    invoke-static {p1, p2, v1}, Landroidx/core/provider/FontProvider;->getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    #@14
    move-result-object p2
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_15} :catch_3b

    #@15
    .line 250
    invoke-static {p2}, Landroidx/core/provider/FontRequestWorker;->getFontFamilyResultStatus(Landroidx/core/provider/FontsContractCompat$FontFamilyResult;)I

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_21

    #@1b
    .line 252
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@1d
    invoke-direct {p0, v2}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    #@20
    return-object p0

    #@21
    .line 256
    :cond_21
    invoke-virtual {p2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@24
    move-result-object p2

    #@25
    .line 255
    invoke-static {p1, v1, p2, p3}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    #@28
    move-result-object p1

    #@29
    if-eqz p1, :cond_34

    #@2b
    .line 259
    invoke-virtual {v0, p0, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 260
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@30
    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    #@33
    return-object p0

    #@34
    .line 262
    :cond_34
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@36
    const/4 p1, -0x3

    #@37
    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    #@3a
    return-object p0

    #@3b
    .line 247
    :catch_3b
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@3d
    const/4 p1, -0x1

    #@3e
    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    #@41
    return-object p0
.end method

.method static requestFontAsync(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWithHandler;)Landroid/graphics/Typeface;
    .registers 10

    #@0
    .line 164
    invoke-static {p1, p2}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 165
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    #@6
    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/graphics/Typeface;

    #@c
    if-eqz v1, :cond_17

    #@e
    .line 167
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@10
    invoke-direct {p0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    #@13
    invoke-virtual {p4, p0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    #@16
    return-object v1

    #@17
    .line 171
    :cond_17
    new-instance v1, Landroidx/core/provider/FontRequestWorker$2;

    #@19
    invoke-direct {v1, p4}, Landroidx/core/provider/FontRequestWorker$2;-><init>(Landroidx/core/provider/CallbackWithHandler;)V

    #@1c
    .line 181
    sget-object p4, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    #@1e
    monitor-enter p4

    #@1f
    .line 182
    :try_start_1f
    sget-object v2, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    #@21
    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/util/ArrayList;

    #@27
    const/4 v4, 0x0

    #@28
    if-eqz v3, :cond_2f

    #@2a
    .line 186
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 187
    monitor-exit p4

    #@2e
    return-object v4

    #@2f
    .line 189
    :cond_2f
    new-instance v3, Ljava/util/ArrayList;

    #@31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@34
    .line 190
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 191
    invoke-virtual {v2, v0, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 192
    monitor-exit p4
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_4d

    #@3b
    .line 194
    new-instance p4, Landroidx/core/provider/FontRequestWorker$3;

    #@3d
    invoke-direct {p4, v0, p0, p1, p2}, Landroidx/core/provider/FontRequestWorker$3;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    #@40
    if-nez p3, :cond_44

    #@42
    .line 204
    sget-object p3, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    #@44
    .line 206
    :cond_44
    new-instance p0, Landroidx/core/provider/FontRequestWorker$4;

    #@46
    invoke-direct {p0, v0}, Landroidx/core/provider/FontRequestWorker$4;-><init>(Ljava/lang/String;)V

    #@49
    invoke-static {p3, p4, p0}, Landroidx/core/provider/RequestExecutor;->execute(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V

    #@4c
    return-object v4

    #@4d
    :catchall_4d
    move-exception p0

    #@4e
    .line 192
    :try_start_4e
    monitor-exit p4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    #@4f
    throw p0
.end method

.method static requestFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/CallbackWithHandler;II)Landroid/graphics/Typeface;
    .registers 7

    #@0
    .line 102
    invoke-static {p1, p3}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 103
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    #@6
    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/graphics/Typeface;

    #@c
    if-eqz v1, :cond_17

    #@e
    .line 105
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@10
    invoke-direct {p0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    #@13
    invoke-virtual {p2, p0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    #@16
    return-object v1

    #@17
    :cond_17
    const/4 v1, -0x1

    #@18
    if-ne p4, v1, :cond_24

    #@1a
    .line 112
    invoke-static {v0, p0, p1, p3}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@1d
    move-result-object p0

    #@1e
    .line 113
    invoke-virtual {p2, p0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    #@21
    .line 114
    iget-object p0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    #@23
    return-object p0

    #@24
    .line 117
    :cond_24
    new-instance v1, Landroidx/core/provider/FontRequestWorker$1;

    #@26
    invoke-direct {v1, v0, p0, p1, p3}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    #@29
    .line 125
    :try_start_29
    sget-object p0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    #@2b
    invoke-static {p0, v1, p4}, Landroidx/core/provider/RequestExecutor;->submit(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    #@2e
    move-result-object p0

    #@2f
    check-cast p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@31
    .line 130
    invoke-virtual {p2, p0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    #@34
    .line 131
    iget-object p0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_36} :catch_37

    #@36
    return-object p0

    #@37
    .line 133
    :catch_37
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    #@39
    const/4 p1, -0x3

    #@3a
    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    #@3d
    invoke-virtual {p2, p0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    #@40
    const/4 p0, 0x0

    #@41
    return-object p0
.end method

.method static resetTypefaceCache()V
    .registers 1

    #@0
    .line 76
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    #@2
    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    #@5
    return-void
.end method
