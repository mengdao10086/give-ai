.class Landroidx/core/location/LocationManagerCompat$Api30Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
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

.field private static sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/lang/String;",
            "Landroidx/core/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_9

    #@2
    .line 1116
    invoke-virtual {p2}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    #@5
    move-result-object p2

    #@6
    check-cast p2, Landroid/os/CancellationSignal;

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p2, 0x0

    #@a
    .line 1119
    :goto_a
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    new-instance v0, Landroidx/core/location/LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0;

    #@f
    invoke-direct {v0, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Consumer;)V

    #@12
    .line 1113
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    #@15
    return-void
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 5

    #@0
    .line 1163
    sget-object p1, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    #@2
    monitor-enter p1

    #@3
    .line 1164
    :try_start_3
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    #@5
    .line 1165
    invoke-virtual {v0, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    #@b
    if-nez v0, :cond_12

    #@d
    .line 1168
    new-instance v0, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    #@f
    invoke-direct {v0, p3}, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    #@12
    .line 1170
    :cond_12
    invoke-virtual {p0, p2, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z

    #@15
    move-result p0

    #@16
    if-eqz p0, :cond_20

    #@18
    .line 1171
    sget-object p0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    #@1a
    invoke-virtual {p0, p3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 1172
    monitor-exit p1

    #@1e
    const/4 p0, 0x1

    #@1f
    return p0

    #@20
    .line 1174
    :cond_20
    monitor-exit p1

    #@21
    const/4 p0, 0x0

    #@22
    return p0

    #@23
    :catchall_23
    move-exception p0

    #@24
    .line 1176
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    #@25
    throw p0
.end method

.method public static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)Z
    .registers 13

    #@0
    .line 1127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    const/4 v2, 0x0

    #@5
    if-lt v0, v1, :cond_49

    #@7
    .line 1129
    :try_start_7
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@9
    if-nez v0, :cond_13

    #@b
    const-string v0, "android.location.LocationRequest"

    #@d
    .line 1130
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@13
    .line 1132
    :cond_13
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    #@15
    const/4 v1, 0x2

    #@16
    const/4 v3, 0x3

    #@17
    const/4 v4, 0x1

    #@18
    if-nez v0, :cond_35

    #@1a
    .line 1133
    const-class v0, Landroid/location/LocationManager;

    #@1c
    const-string v5, "requestLocationUpdates"

    #@1e
    new-array v6, v3, [Ljava/lang/Class;

    #@20
    sget-object v7, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sLocationRequestClass:Ljava/lang/Class;

    #@22
    aput-object v7, v6, v2

    #@24
    const-class v7, Ljava/util/concurrent/Executor;

    #@26
    aput-object v7, v6, v4

    #@28
    const-class v7, Landroid/location/LocationListener;

    #@2a
    aput-object v7, v6, v1

    #@2c
    .line 1134
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2f
    move-result-object v0

    #@30
    sput-object v0, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    #@32
    .line 1138
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@35
    .line 1141
    :cond_35
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    #@38
    move-result-object p1

    #@39
    if-eqz p1, :cond_49

    #@3b
    .line 1143
    sget-object p2, Landroidx/core/location/LocationManagerCompat$Api30Impl;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    #@3d
    new-array v0, v3, [Ljava/lang/Object;

    #@3f
    aput-object p1, v0, v2

    #@41
    aput-object p3, v0, v4

    #@43
    aput-object p4, v0, v1

    #@45
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_48} :catch_49
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_48} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_48} :catch_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_48} :catch_49
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_48} :catch_49

    #@48
    return v4

    #@49
    :catch_49
    :cond_49
    return v2
.end method
