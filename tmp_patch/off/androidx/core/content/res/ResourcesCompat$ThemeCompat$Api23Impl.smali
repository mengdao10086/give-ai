.class Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat$ThemeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# static fields
.field private static sRebaseMethod:Ljava/lang/reflect/Method;

.field private static sRebaseMethodFetched:Z

.field private static final sRebaseMethodLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 778
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethodLock:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static rebase(Landroid/content/res/Resources$Theme;)V
    .registers 7

    #@0
    .line 785
    sget-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethodLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 786
    :try_start_3
    sget-boolean v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethodFetched:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3c

    #@5
    const/4 v2, 0x0

    #@6
    if-nez v1, :cond_23

    #@8
    const/4 v1, 0x1

    #@9
    .line 788
    :try_start_9
    const-class v3, Landroid/content/res/Resources$Theme;

    #@b
    const-string v4, "rebase"

    #@d
    new-array v5, v2, [Ljava/lang/Class;

    #@f
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@12
    move-result-object v3

    #@13
    sput-object v3, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethod:Ljava/lang/reflect/Method;

    #@15
    .line 789
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_18} :catch_19
    .catchall {:try_start_9 .. :try_end_18} :catchall_3c

    #@18
    goto :goto_21

    #@19
    :catch_19
    move-exception v3

    #@1a
    :try_start_1a
    const-string v4, "ResourcesCompat"

    #@1c
    const-string v5, "Failed to retrieve rebase() method"

    #@1e
    .line 791
    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 793
    :goto_21
    sput-boolean v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethodFetched:Z

    #@23
    .line 795
    :cond_23
    sget-object v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethod:Ljava/lang/reflect/Method;
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_3c

    #@25
    if-eqz v1, :cond_3a

    #@27
    :try_start_27
    new-array v2, v2, [Ljava/lang/Object;

    #@29
    .line 797
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3c

    #@2c
    goto :goto_3a

    #@2d
    :catch_2d
    move-exception p0

    #@2e
    goto :goto_30

    #@2f
    :catch_2f
    move-exception p0

    #@30
    :goto_30
    :try_start_30
    const-string v1, "ResourcesCompat"

    #@32
    const-string v2, "Failed to invoke rebase() method via reflection"

    #@34
    .line 799
    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    const/4 p0, 0x0

    #@38
    .line 800
    sput-object p0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethod:Ljava/lang/reflect/Method;

    #@3a
    .line 803
    :cond_3a
    :goto_3a
    monitor-exit v0

    #@3b
    return-void

    #@3c
    :catchall_3c
    move-exception p0

    #@3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3c

    #@3e
    throw p0
.end method
