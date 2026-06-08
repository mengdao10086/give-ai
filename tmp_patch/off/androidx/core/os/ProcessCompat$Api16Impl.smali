.class Landroidx/core/os/ProcessCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# static fields
.field private static sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

.field private static sResolved:Z

.field private static final sResolvedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 120
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolvedLock:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    .line 135
    :try_start_1
    sget-object v1, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolvedLock:Ljava/lang/Object;

    #@3
    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_43

    #@4
    .line 136
    :try_start_4
    sget-boolean v2, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolved:Z

    #@6
    const/4 v3, 0x0

    #@7
    if-nez v2, :cond_1f

    #@9
    .line 137
    sput-boolean v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolved:Z

    #@b
    const-string v2, "android.os.UserId"

    #@d
    .line 138
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@10
    move-result-object v2

    #@11
    const-string v4, "isApp"

    #@13
    new-array v5, v0, [Ljava/lang/Class;

    #@15
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@17
    aput-object v6, v5, v3

    #@19
    .line 139
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1c
    move-result-object v2

    #@1d
    sput-object v2, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    #@1f
    .line 141
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_40

    #@20
    .line 142
    :try_start_20
    sget-object v1, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    #@22
    if-eqz v1, :cond_47

    #@24
    new-array v2, v0, [Ljava/lang/Object;

    #@26
    .line 143
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object p0

    #@2a
    aput-object p0, v2, v3

    #@2c
    const/4 p0, 0x0

    #@2d
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object p0

    #@31
    check-cast p0, Ljava/lang/Boolean;

    #@33
    if-eqz p0, :cond_3a

    #@35
    .line 148
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@38
    move-result p0

    #@39
    return p0

    #@3a
    .line 146
    :cond_3a
    new-instance p0, Ljava/lang/NullPointerException;

    #@3c
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    #@3f
    throw p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_43

    #@40
    :catchall_40
    move-exception p0

    #@41
    .line 141
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    #@42
    :try_start_42
    throw p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_43

    #@43
    :catch_43
    move-exception p0

    #@44
    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@47
    :cond_47
    return v0
.end method
