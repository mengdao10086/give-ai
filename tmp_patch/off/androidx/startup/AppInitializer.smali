.class public final Landroidx/startup/AppInitializer;
.super Ljava/lang/Object;
.source "AppInitializer.java"


# static fields
.field private static final SECTION_NAME:Ljava/lang/String; = "Startup"

.field private static volatile sInstance:Landroidx/startup/AppInitializer;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDiscovered:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field final mInitialized:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 57
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object p1

    #@7
    iput-object p1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    #@9
    .line 75
    new-instance p1, Ljava/util/HashSet;

    #@b
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    #@e
    iput-object p1, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    #@10
    .line 76
    new-instance p1, Ljava/util/HashMap;

    #@12
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    #@15
    iput-object p1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    #@17
    return-void
.end method

.method private doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)TT;"
        }
    .end annotation

    #@0
    .line 149
    invoke-static {}, Landroidx/tracing/Trace;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 153
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    #@d
    .line 155
    :cond_d
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    const/4 v1, 0x0

    #@12
    if-nez v0, :cond_73

    #@14
    .line 162
    iget-object v0, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    #@16
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_69

    #@1c
    .line 163
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_88

    #@1f
    :try_start_1f
    new-array v0, v1, [Ljava/lang/Class;

    #@21
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@24
    move-result-object v0

    #@25
    new-array v1, v1, [Ljava/lang/Object;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    .line 166
    check-cast v0, Landroidx/startup/Initializer;

    #@2d
    .line 168
    invoke-interface {v0}, Landroidx/startup/Initializer;->dependencies()Ljava/util/List;

    #@30
    move-result-object v1

    #@31
    .line 170
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_53

    #@37
    .line 171
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v1

    #@3b
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_53

    #@41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Ljava/lang/Class;

    #@47
    .line 172
    iget-object v3, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    #@49
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-nez v3, :cond_3b

    #@4f
    .line 173
    invoke-direct {p0, v2, p2}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    #@52
    goto :goto_3b

    #@53
    .line 180
    :cond_53
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    #@55
    invoke-interface {v0, v1}, Landroidx/startup/Initializer;->create(Landroid/content/Context;)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    .line 184
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5c
    .line 185
    iget-object p2, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    #@5e
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_1f .. :try_end_61} :catchall_62

    #@61
    goto :goto_6f

    #@62
    :catchall_62
    move-exception p1

    #@63
    .line 187
    :try_start_63
    new-instance p2, Landroidx/startup/StartupException;

    #@65
    invoke-direct {p2, p1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    #@68
    throw p2

    #@69
    .line 190
    :cond_69
    iget-object p2, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    #@6b
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    move-result-object v0
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_88

    #@6f
    .line 194
    :goto_6f
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    #@72
    return-object v0

    #@73
    :cond_73
    :try_start_73
    const-string p2, "Cannot initialize %s. Cycle detected."

    #@75
    const/4 v0, 0x1

    #@76
    new-array v0, v0, [Ljava/lang/Object;

    #@78
    .line 157
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7b
    move-result-object p1

    #@7c
    aput-object p1, v0, v1

    #@7e
    .line 156
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object p1

    #@82
    .line 159
    new-instance p2, Ljava/lang/IllegalStateException;

    #@84
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@87
    throw p2
    :try_end_88
    .catchall {:try_start_73 .. :try_end_88} :catchall_88

    #@88
    :catchall_88
    move-exception p1

    #@89
    .line 194
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    #@8c
    .line 195
    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;
    .registers 3

    #@0
    .line 86
    sget-object v0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    #@2
    if-nez v0, :cond_17

    #@4
    .line 87
    sget-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    #@6
    monitor-enter v0

    #@7
    .line 88
    :try_start_7
    sget-object v1, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    #@9
    if-nez v1, :cond_12

    #@b
    .line 89
    new-instance v1, Landroidx/startup/AppInitializer;

    #@d
    invoke-direct {v1, p0}, Landroidx/startup/AppInitializer;-><init>(Landroid/content/Context;)V

    #@10
    sput-object v1, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    #@12
    .line 91
    :cond_12
    monitor-exit v0

    #@13
    goto :goto_17

    #@14
    :catchall_14
    move-exception p0

    #@15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    #@16
    throw p0

    #@17
    .line 93
    :cond_17
    :goto_17
    sget-object p0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    #@19
    return-object p0
.end method

.method static setDelegate(Landroidx/startup/AppInitializer;)V
    .registers 2

    #@0
    .line 102
    sget-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 103
    :try_start_3
    sput-object p0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    #@5
    .line 104
    monitor-exit v0

    #@6
    return-void

    #@7
    :catchall_7
    move-exception p0

    #@8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw p0
.end method


# virtual methods
.method discoverAndInitialize()V
    .registers 4

    #@0
    :try_start_0
    const-string v0, "Startup"

    #@2
    .line 200
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    #@5
    .line 201
    new-instance v0, Landroid/content/ComponentName;

    #@7
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    const-class v2, Landroidx/startup/InitializationProvider;

    #@f
    .line 202
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 203
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v1

    #@1c
    const/16 v2, 0x80

    #@1e
    .line 204
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    #@21
    move-result-object v0

    #@22
    .line 205
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@24
    .line 206
    invoke-virtual {p0, v0}, Landroidx/startup/AppInitializer;->discoverAndInitialize(Landroid/os/Bundle;)V
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_27} :catch_2d
    .catchall {:try_start_0 .. :try_end_27} :catchall_2b

    #@27
    .line 210
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    #@2a
    return-void

    #@2b
    :catchall_2b
    move-exception v0

    #@2c
    goto :goto_34

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    .line 208
    :try_start_2e
    new-instance v1, Landroidx/startup/StartupException;

    #@30
    invoke-direct {v1, v0}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw v1
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2b

    #@34
    .line 210
    :goto_34
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    #@37
    .line 211
    throw v0
.end method

.method discoverAndInitialize(Landroid/os/Bundle;)V
    .registers 7

    #@0
    .line 216
    iget-object v0, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    #@2
    sget v1, Landroidx/startup/R$string;->androidx_startup:I

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-eqz p1, :cond_5d

    #@a
    .line 219
    :try_start_a
    new-instance v1, Ljava/util/HashSet;

    #@c
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@f
    .line 220
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@12
    move-result-object v2

    #@13
    .line 221
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_40

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Ljava/lang/String;

    #@23
    const/4 v4, 0x0

    #@24
    .line 222
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_17

    #@2e
    .line 224
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@31
    move-result-object v3

    #@32
    .line 225
    const-class v4, Landroidx/startup/Initializer;

    #@34
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_17

    #@3a
    .line 228
    iget-object v4, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    #@3c
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_17

    #@40
    .line 237
    :cond_40
    iget-object p1, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    #@42
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object p1

    #@46
    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_5d

    #@4c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Ljava/lang/Class;

    #@52
    .line 238
    invoke-direct {p0, v0, v1}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_55} :catch_56

    #@55
    goto :goto_46

    #@56
    :catch_56
    move-exception p1

    #@57
    .line 242
    new-instance v0, Landroidx/startup/StartupException;

    #@59
    invoke-direct {v0, p1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    #@5c
    throw v0

    #@5d
    :cond_5d
    return-void
.end method

.method doInitialize(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;)TT;"
        }
    .end annotation

    #@0
    .line 135
    sget-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 136
    :try_start_3
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    #@5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_14

    #@b
    .line 138
    new-instance v1, Ljava/util/HashSet;

    #@d
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@10
    invoke-direct {p0, p1, v1}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 140
    :cond_14
    monitor-exit v0

    #@15
    return-object v1

    #@16
    :catchall_16
    move-exception p1

    #@17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    #@18
    throw p1
.end method

.method public initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "TT;>;>;)TT;"
        }
    .end annotation

    #@0
    .line 117
    invoke-virtual {p0, p1}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public isEagerlyInitialized(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;)Z"
        }
    .end annotation

    #@0
    .line 128
    iget-object v0, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method
