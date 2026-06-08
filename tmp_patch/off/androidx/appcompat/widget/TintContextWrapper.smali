.class public Landroidx/appcompat/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# static fields
.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static sCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/TintContextWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 42
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/appcompat/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    .line 92
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    .line 94
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_22

    #@9
    .line 97
    new-instance v0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    #@b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    #@12
    iput-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    #@14
    .line 98
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@1a
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@21
    goto :goto_30

    #@22
    .line 101
    :cond_22
    new-instance v0, Landroidx/appcompat/widget/TintResources;

    #@24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object p1

    #@28
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    #@2b
    iput-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    #@2d
    const/4 p1, 0x0

    #@2e
    .line 102
    iput-object p1, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@30
    :goto_30
    return-void
.end method

.method private static shouldWrap(Landroid/content/Context;)Z
    .registers 3

    #@0
    .line 78
    instance-of v0, p0, Landroidx/appcompat/widget/TintContextWrapper;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_1d

    #@5
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    instance-of v0, v0, Landroidx/appcompat/widget/TintResources;

    #@b
    if-nez v0, :cond_1d

    #@d
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object p0

    #@11
    instance-of p0, p0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    #@13
    if-eqz p0, :cond_16

    #@15
    goto :goto_1d

    #@16
    .line 85
    :cond_16
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    #@19
    move-result p0

    #@1a
    if-eqz p0, :cond_1d

    #@1c
    const/4 v1, 0x1

    #@1d
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .registers 5

    #@0
    .line 46
    invoke-static {p0}, Landroidx/appcompat/widget/TintContextWrapper;->shouldWrap(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_72

    #@6
    .line 47
    sget-object v0, Landroidx/appcompat/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    #@8
    monitor-enter v0

    #@9
    .line 48
    :try_start_9
    sget-object v1, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    #@b
    if-nez v1, :cond_15

    #@d
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    #@f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@12
    sput-object v1, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    #@14
    goto :goto_5e

    #@15
    .line 52
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v1

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    :goto_1b
    if-ltz v1, :cond_35

    #@1d
    .line 53
    sget-object v2, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@25
    if-eqz v2, :cond_2d

    #@27
    .line 54
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    if-nez v2, :cond_32

    #@2d
    .line 55
    :cond_2d
    sget-object v2, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@32
    :cond_32
    add-int/lit8 v1, v1, -0x1

    #@34
    goto :goto_1b

    #@35
    .line 59
    :cond_35
    sget-object v1, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v1

    #@3b
    add-int/lit8 v1, v1, -0x1

    #@3d
    :goto_3d
    if-ltz v1, :cond_5e

    #@3f
    .line 60
    sget-object v2, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@47
    if-eqz v2, :cond_50

    #@49
    .line 61
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Landroidx/appcompat/widget/TintContextWrapper;

    #@4f
    goto :goto_51

    #@50
    :cond_50
    const/4 v2, 0x0

    #@51
    :goto_51
    if-eqz v2, :cond_5b

    #@53
    .line 62
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    #@56
    move-result-object v3

    #@57
    if-ne v3, p0, :cond_5b

    #@59
    .line 63
    monitor-exit v0

    #@5a
    return-object v2

    #@5b
    :cond_5b
    add-int/lit8 v1, v1, -0x1

    #@5d
    goto :goto_3d

    #@5e
    .line 69
    :cond_5e
    :goto_5e
    new-instance v1, Landroidx/appcompat/widget/TintContextWrapper;

    #@60
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V

    #@63
    .line 70
    sget-object p0, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    #@65
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@67
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@6a
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6d
    .line 71
    monitor-exit v0

    #@6e
    return-object v1

    #@6f
    :catchall_6f
    move-exception p0

    #@70
    .line 72
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_9 .. :try_end_71} :catchall_6f

    #@71
    throw p0

    #@72
    :cond_72
    return-object p0
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    #@0
    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    #@0
    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    #@0
    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-nez v0, :cond_8

    #@4
    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v0

    #@8
    :cond_8
    return-object v0
.end method

.method public setTheme(I)V
    .registers 4

    #@0
    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 114
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    #@7
    goto :goto_c

    #@8
    :cond_8
    const/4 v1, 0x1

    #@9
    .line 116
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@c
    :goto_c
    return-void
.end method
