.class Landroidx/core/location/LocationRequestCompat$Api19Impl;
.super Ljava/lang/Object;
.source "LocationRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api19Impl"
.end annotation


# static fields
.field private static sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

.field private static sLocationRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sSetExpireInMethod:Ljava/lang/reflect/Method;

.field private static sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

.field private static sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

.field private static sSetQualityMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toLocationRequest(Landroidx/core/location/LocationRequestCompat;Ljava/lang/String;)Ljava/lang/Object;
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    .line 538
    :try_start_1
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@3
    if-nez v1, :cond_d

    #@5
    const-string v1, "android.location.LocationRequest"

    #@7
    .line 539
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    sput-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@d
    .line 541
    :cond_d
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    #@f
    const/4 v2, 0x3

    #@10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x4

    #@12
    const/4 v5, 0x0

    #@13
    const/4 v6, 0x1

    #@14
    if-nez v1, :cond_35

    #@16
    .line 542
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@18
    const-string v7, "createFromDeprecatedProvider"

    #@1a
    new-array v8, v4, [Ljava/lang/Class;

    #@1c
    const-class v9, Ljava/lang/String;

    #@1e
    aput-object v9, v8, v5

    #@20
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@22
    aput-object v9, v8, v6

    #@24
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@26
    aput-object v9, v8, v3

    #@28
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@2a
    aput-object v9, v8, v2

    #@2c
    .line 543
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2f
    move-result-object v1

    #@30
    sput-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    #@32
    .line 547
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@35
    .line 550
    :cond_35
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    #@37
    new-array v4, v4, [Ljava/lang/Object;

    #@39
    aput-object p1, v4, v5

    #@3b
    .line 552
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    #@3e
    move-result-wide v7

    #@3f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@42
    move-result-object p1

    #@43
    aput-object p1, v4, v6

    #@45
    .line 553
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    #@48
    move-result p1

    #@49
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4c
    move-result-object p1

    #@4d
    aput-object p1, v4, v3

    #@4f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@52
    move-result-object p1

    #@53
    aput-object p1, v4, v2

    #@55
    .line 550
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object p1

    #@59
    if-nez p1, :cond_5c

    #@5b
    return-object v0

    #@5c
    .line 558
    :cond_5c
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetQualityMethod:Ljava/lang/reflect/Method;

    #@5e
    if-nez v1, :cond_73

    #@60
    .line 559
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@62
    const-string v2, "setQuality"

    #@64
    new-array v3, v6, [Ljava/lang/Class;

    #@66
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@68
    aput-object v4, v3, v5

    #@6a
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@6d
    move-result-object v1

    #@6e
    sput-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetQualityMethod:Ljava/lang/reflect/Method;

    #@70
    .line 561
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@73
    .line 563
    :cond_73
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetQualityMethod:Ljava/lang/reflect/Method;

    #@75
    new-array v2, v6, [Ljava/lang/Object;

    #@77
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getQuality()I

    #@7a
    move-result v3

    #@7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v3

    #@7f
    aput-object v3, v2, v5

    #@81
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 565
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    #@86
    if-nez v1, :cond_9b

    #@88
    .line 566
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@8a
    const-string v2, "setFastestInterval"

    #@8c
    new-array v3, v6, [Ljava/lang/Class;

    #@8e
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@90
    aput-object v4, v3, v5

    #@92
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@95
    move-result-object v1

    #@96
    sput-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    #@98
    .line 568
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@9b
    .line 571
    :cond_9b
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    #@9d
    new-array v2, v6, [Ljava/lang/Object;

    #@9f
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateIntervalMillis()J

    #@a2
    move-result-wide v3

    #@a3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a6
    move-result-object v3

    #@a7
    aput-object v3, v2, v5

    #@a9
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    .line 573
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMaxUpdates()I

    #@af
    move-result v1

    #@b0
    const v2, 0x7fffffff

    #@b3
    if-ge v1, v2, :cond_dd

    #@b5
    .line 574
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    #@b7
    if-nez v1, :cond_cc

    #@b9
    .line 575
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@bb
    const-string v2, "setNumUpdates"

    #@bd
    new-array v3, v6, [Ljava/lang/Class;

    #@bf
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c1
    aput-object v4, v3, v5

    #@c3
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@c6
    move-result-object v1

    #@c7
    sput-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    #@c9
    .line 577
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@cc
    .line 580
    :cond_cc
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    #@ce
    new-array v2, v6, [Ljava/lang/Object;

    #@d0
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMaxUpdates()I

    #@d3
    move-result v3

    #@d4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d7
    move-result-object v3

    #@d8
    aput-object v3, v2, v5

    #@da
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@dd
    .line 583
    :cond_dd
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getDurationMillis()J

    #@e0
    move-result-wide v1

    #@e1
    const-wide v3, 0x7fffffffffffffffL

    #@e6
    cmp-long v1, v1, v3

    #@e8
    if-gez v1, :cond_112

    #@ea
    .line 584
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    #@ec
    if-nez v1, :cond_101

    #@ee
    .line 585
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@f0
    const-string v2, "setExpireIn"

    #@f2
    new-array v3, v6, [Ljava/lang/Class;

    #@f4
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@f6
    aput-object v4, v3, v5

    #@f8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@fb
    move-result-object v1

    #@fc
    sput-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    #@fe
    .line 587
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@101
    .line 590
    :cond_101
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    #@103
    new-array v2, v6, [Ljava/lang/Object;

    #@105
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getDurationMillis()J

    #@108
    move-result-wide v3

    #@109
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10c
    move-result-object p0

    #@10d
    aput-object p0, v2, v5

    #@10f
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_112
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_112} :catch_113
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_112} :catch_113
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_112} :catch_113
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_112} :catch_113

    #@112
    :cond_112
    return-object p1

    #@113
    :catch_113
    return-object v0
.end method
