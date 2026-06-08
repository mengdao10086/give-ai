.class Landroidx/core/os/ProcessCompat$Api17Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# static fields
.field private static sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

.field private static sResolved:Z

.field private static final sResolvedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 81
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolvedLock:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    .line 96
    :try_start_1
    sget-object v1, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolvedLock:Ljava/lang/Object;

    #@3
    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_3f

    #@4
    .line 97
    :try_start_4
    sget-boolean v2, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolved:Z

    #@6
    const/4 v3, 0x0

    #@7
    if-nez v2, :cond_1b

    #@9
    .line 98
    sput-boolean v0, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolved:Z

    #@b
    .line 99
    const-class v2, Landroid/os/UserHandle;

    #@d
    const-string v4, "isApp"

    #@f
    new-array v5, v0, [Ljava/lang/Class;

    #@11
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    aput-object v6, v5, v3

    #@15
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@18
    move-result-object v2

    #@19
    sput-object v2, Landroidx/core/os/ProcessCompat$Api17Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    #@1b
    .line 102
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_3c

    #@1c
    .line 103
    :try_start_1c
    sget-object v1, Landroidx/core/os/ProcessCompat$Api17Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    #@1e
    if-eqz v1, :cond_43

    #@20
    new-array v2, v0, [Ljava/lang/Object;

    #@22
    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object p0

    #@26
    aput-object p0, v2, v3

    #@28
    const/4 p0, 0x0

    #@29
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object p0

    #@2d
    check-cast p0, Ljava/lang/Boolean;

    #@2f
    if-eqz p0, :cond_36

    #@31
    .line 109
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@34
    move-result p0

    #@35
    return p0

    #@36
    .line 107
    :cond_36
    new-instance p0, Ljava/lang/NullPointerException;

    #@38
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    #@3b
    throw p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_3f

    #@3c
    :catchall_3c
    move-exception p0

    #@3d
    .line 102
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    #@3e
    :try_start_3e
    throw p0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_3f

    #@3f
    :catch_3f
    move-exception p0

    #@40
    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@43
    :cond_43
    return v0
.end method
