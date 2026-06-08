.class Landroidx/core/app/BundleCompat$BeforeApi18Impl;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BeforeApi18Impl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatBaseImpl"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9

    #@0
    .line 52
    sget-boolean v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethodFetched:Z

    #@2
    const/4 v1, 0x0

    #@3
    const-string v2, "BundleCompatBaseImpl"

    #@5
    const/4 v3, 0x1

    #@6
    if-nez v0, :cond_24

    #@8
    .line 54
    :try_start_8
    const-class v0, Landroid/os/Bundle;

    #@a
    const-string v4, "getIBinder"

    #@c
    new-array v5, v3, [Ljava/lang/Class;

    #@e
    const-class v6, Ljava/lang/String;

    #@10
    aput-object v6, v5, v1

    #@12
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    #@18
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1b} :catch_1c

    #@1b
    goto :goto_22

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    const-string v4, "Failed to retrieve getIBinder method"

    #@1f
    .line 57
    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 59
    :goto_22
    sput-boolean v3, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethodFetched:Z

    #@24
    .line 62
    :cond_24
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    #@26
    const/4 v4, 0x0

    #@27
    if-eqz v0, :cond_40

    #@29
    :try_start_29
    new-array v3, v3, [Ljava/lang/Object;

    #@2b
    aput-object p1, v3, v1

    #@2d
    .line 64
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object p0

    #@31
    check-cast p0, Landroid/os/IBinder;
    :try_end_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_33} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_33} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_33} :catch_34

    #@33
    return-object p0

    #@34
    :catch_34
    move-exception p0

    #@35
    goto :goto_39

    #@36
    :catch_36
    move-exception p0

    #@37
    goto :goto_39

    #@38
    :catch_38
    move-exception p0

    #@39
    :goto_39
    const-string p1, "Failed to invoke getIBinder via reflection"

    #@3b
    .line 67
    invoke-static {v2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 68
    sput-object v4, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    #@40
    :cond_40
    return-object v4
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 11

    #@0
    .line 75
    sget-boolean v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethodFetched:Z

    #@2
    const/4 v1, 0x0

    #@3
    const-string v2, "BundleCompatBaseImpl"

    #@5
    const/4 v3, 0x2

    #@6
    const/4 v4, 0x1

    #@7
    if-nez v0, :cond_29

    #@9
    .line 77
    :try_start_9
    const-class v0, Landroid/os/Bundle;

    #@b
    const-string v5, "putIBinder"

    #@d
    new-array v6, v3, [Ljava/lang/Class;

    #@f
    const-class v7, Ljava/lang/String;

    #@11
    aput-object v7, v6, v1

    #@13
    const-class v7, Landroid/os/IBinder;

    #@15
    aput-object v7, v6, v4

    #@17
    .line 78
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    #@1d
    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_20} :catch_21

    #@20
    goto :goto_27

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v5, "Failed to retrieve putIBinder method"

    #@24
    .line 81
    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 83
    :goto_27
    sput-boolean v4, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethodFetched:Z

    #@29
    .line 86
    :cond_29
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    #@2b
    if-eqz v0, :cond_44

    #@2d
    :try_start_2d
    new-array v3, v3, [Ljava/lang/Object;

    #@2f
    aput-object p1, v3, v1

    #@31
    aput-object p2, v3, v4

    #@33
    .line 88
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_36} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_36} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_36} :catch_37

    #@36
    goto :goto_44

    #@37
    :catch_37
    move-exception p0

    #@38
    goto :goto_3c

    #@39
    :catch_39
    move-exception p0

    #@3a
    goto :goto_3c

    #@3b
    :catch_3b
    move-exception p0

    #@3c
    :goto_3c
    const-string p1, "Failed to invoke putIBinder via reflection"

    #@3e
    .line 91
    invoke-static {v2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    const/4 p0, 0x0

    #@42
    .line 92
    sput-object p0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    #@44
    :cond_44
    :goto_44
    return-void
.end method
