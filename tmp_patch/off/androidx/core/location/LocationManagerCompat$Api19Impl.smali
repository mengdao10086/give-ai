.class Landroidx/core/location/LocationManagerCompat$Api19Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# static fields
.field private static sLocationRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    .line 1258
    :try_start_1
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@3
    if-nez v1, :cond_d

    #@5
    const-string v1, "android.location.LocationRequest"

    #@7
    .line 1259
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@d
    .line 1262
    :cond_d
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    #@f
    const/4 v2, 0x2

    #@10
    const/4 v3, 0x3

    #@11
    const/4 v4, 0x1

    #@12
    if-nez v1, :cond_2f

    #@14
    .line 1263
    const-class v1, Landroid/location/LocationManager;

    #@16
    const-string v5, "requestLocationUpdates"

    #@18
    new-array v6, v3, [Ljava/lang/Class;

    #@1a
    sget-object v7, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@1c
    aput-object v7, v6, v0

    #@1e
    const-class v7, Landroid/location/LocationListener;

    #@20
    aput-object v7, v6, v4

    #@22
    const-class v7, Landroid/os/Looper;

    #@24
    aput-object v7, v6, v2

    #@26
    .line 1264
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@29
    move-result-object v1

    #@2a
    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    #@2c
    .line 1268
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@2f
    .line 1271
    :cond_2f
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    #@32
    move-result-object p1

    #@33
    if-eqz p1, :cond_43

    #@35
    .line 1273
    sget-object p2, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    #@37
    new-array v1, v3, [Ljava/lang/Object;

    #@39
    aput-object p1, v1, v0

    #@3b
    aput-object p3, v1, v4

    #@3d
    aput-object p4, v1, v2

    #@3f
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_42} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_42} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_42} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_42} :catch_43
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_42} :catch_43

    #@42
    return v4

    #@43
    :catch_43
    :cond_43
    return v0
.end method

.method static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)Z
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    .line 1219
    :try_start_1
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@3
    if-nez v1, :cond_d

    #@5
    const-string v1, "android.location.LocationRequest"

    #@7
    .line 1220
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@d
    .line 1222
    :cond_d
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    #@f
    const/4 v2, 0x2

    #@10
    const/4 v3, 0x3

    #@11
    const/4 v4, 0x1

    #@12
    if-nez v1, :cond_2f

    #@14
    .line 1223
    const-class v1, Landroid/location/LocationManager;

    #@16
    const-string v5, "requestLocationUpdates"

    #@18
    new-array v6, v3, [Ljava/lang/Class;

    #@1a
    sget-object v7, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@1c
    aput-object v7, v6, v0

    #@1e
    const-class v7, Landroid/location/LocationListener;

    #@20
    aput-object v7, v6, v4

    #@22
    const-class v7, Landroid/os/Looper;

    #@24
    aput-object v7, v6, v2

    #@26
    .line 1224
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@29
    move-result-object v1

    #@2a
    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    #@2c
    .line 1228
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@2f
    .line 1231
    :cond_2f
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    #@32
    move-result-object p1

    #@33
    if-eqz p1, :cond_51

    #@35
    .line 1233
    sget-object p2, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    #@37
    monitor-enter p2
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_38} :catch_51
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_38} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_38} :catch_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_38} :catch_51
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_38} :catch_51

    #@38
    .line 1234
    :try_start_38
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    #@3a
    new-array v3, v3, [Ljava/lang/Object;

    #@3c
    aput-object p1, v3, v0

    #@3e
    aput-object p3, v3, v4

    #@40
    .line 1235
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@43
    move-result-object p1

    #@44
    aput-object p1, v3, v2

    #@46
    .line 1234
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 1236
    invoke-static {p0, p3}, Landroidx/core/location/LocationManagerCompat;->registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V

    #@4c
    .line 1237
    monitor-exit p2

    #@4d
    return v4

    #@4e
    :catchall_4e
    move-exception p0

    #@4f
    .line 1238
    monitor-exit p2
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_4e

    #@50
    :try_start_50
    throw p0
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_51} :catch_51
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_51} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_51} :catch_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_51} :catch_51
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_50 .. :try_end_51} :catch_51

    #@51
    :catch_51
    :cond_51
    return v0
.end method
