.class Landroidx/core/location/LocationManagerCompat$Api24Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static registerGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z
    .registers 3

    #@0
    .line 1299
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-eqz p1, :cond_6

    #@4
    move v2, v0

    #@5
    goto :goto_7

    #@6
    :cond_6
    move v2, v1

    #@7
    .line 1312
    :goto_7
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    #@a
    .line 1314
    sget-object v2, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    #@c
    monitor-enter v2

    #@d
    .line 1315
    :try_start_d
    sget-object v3, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    #@f
    .line 1316
    invoke-virtual {v3, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    #@15
    if-nez v3, :cond_1d

    #@17
    .line 1319
    new-instance v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    #@19
    invoke-direct {v3, p3}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    #@1c
    goto :goto_20

    #@1d
    .line 1321
    :cond_1d
    invoke-virtual {v3}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    #@20
    .line 1323
    :goto_20
    invoke-virtual {v3, p2}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->register(Ljava/util/concurrent/Executor;)V

    #@23
    .line 1325
    invoke-virtual {p0, v3, p1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    #@26
    move-result p0

    #@27
    if-eqz p0, :cond_30

    #@29
    .line 1326
    sget-object p0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    #@2b
    invoke-virtual {p0, p3, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 1327
    monitor-exit v2

    #@2f
    return v0

    #@30
    .line 1329
    :cond_30
    monitor-exit v2

    #@31
    return v1

    #@32
    :catchall_32
    move-exception p0

    #@33
    .line 1331
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_32

    #@34
    throw p0
.end method

.method static unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 2

    #@0
    .line 1305
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V

    #@3
    return-void
.end method

.method static unregisterGnssStatusCallback(Landroid/location/LocationManager;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 1336
    instance-of v0, p1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 1337
    move-object v0, p1

    #@5
    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    #@7
    invoke-virtual {v0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    #@a
    .line 1339
    :cond_a
    check-cast p1, Landroid/location/GnssStatus$Callback;

    #@c
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    #@f
    return-void
.end method
