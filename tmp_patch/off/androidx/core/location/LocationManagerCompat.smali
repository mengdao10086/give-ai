.class public final Landroidx/core/location/LocationManagerCompat;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationManagerCompat$Api24Impl;,
        Landroidx/core/location/LocationManagerCompat$Api19Impl;,
        Landroidx/core/location/LocationManagerCompat$Api28Impl;,
        Landroidx/core/location/LocationManagerCompat$Api30Impl;,
        Landroidx/core/location/LocationManagerCompat$Api31Impl;,
        Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;,
        Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;,
        Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerKey;,
        Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;
    }
.end annotation


# static fields
.field private static final GET_CURRENT_LOCATION_TIMEOUT_MS:J = 0x7530L

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x2710L

.field private static final PRE_N_LOOPER_TIMEOUT_S:J = 0x5L

.field private static sContextField:Ljava/lang/reflect/Field;

.field private static sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

.field private static sGnssRequestBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final sLocationListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 221
    new-instance v0, Ljava/util/WeakHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@5
    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .registers 13
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
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 188
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    #@9
    return-void

    #@a
    :cond_a
    if-eqz p2, :cond_f

    #@c
    .line 194
    invoke-virtual {p2}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    #@f
    .line 197
    :cond_f
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_2d

    #@15
    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@18
    move-result-wide v1

    #@19
    invoke-static {v0}, Landroidx/core/location/LocationCompat;->getElapsedRealtimeMillis(Landroid/location/Location;)J

    #@1c
    move-result-wide v3

    #@1d
    sub-long/2addr v1, v3

    #@1e
    const-wide/16 v3, 0x2710

    #@20
    cmp-long v1, v1, v3

    #@22
    if-gez v1, :cond_2d

    #@24
    .line 202
    new-instance p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;

    #@26
    invoke-direct {p0, p4, v0}, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    #@29
    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@2c
    return-void

    #@2d
    .line 207
    :cond_2d
    new-instance v0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    #@2f
    invoke-direct {v0, p0, p3, p4}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;-><init>(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    #@32
    const-wide/16 v3, 0x0

    #@34
    const/4 v5, 0x0

    #@35
    .line 210
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@38
    move-result-object v7

    #@39
    move-object v1, p0

    #@3a
    move-object v2, p1

    #@3b
    move-object v6, v0

    #@3c
    .line 209
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    #@3f
    if-eqz p2, :cond_4c

    #@41
    .line 213
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    new-instance p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda2;

    #@46
    invoke-direct {p0, v0}, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda2;-><init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V

    #@49
    invoke-virtual {p2, p0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    #@4c
    :cond_4c
    const-wide/16 p0, 0x7530

    #@4e
    .line 216
    invoke-virtual {v0, p0, p1}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->startTimeout(J)V

    #@51
    return-void
.end method

.method public static getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;
    .registers 3

    #@0
    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 354
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    return-object p0
.end method

.method public static getGnssYearOfHardware(Landroid/location/LocationManager;)I
    .registers 3

    #@0
    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 366
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->getGnssYearOfHardware(Landroid/location/LocationManager;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    return p0
.end method

.method public static hasProvider(Landroid/location/LocationManager;Ljava/lang/String;)Z
    .registers 4

    #@0
    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 148
    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->hasProvider(Landroid/location/LocationManager;Ljava/lang/String;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 152
    :cond_b
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    const/4 v1, 0x1

    #@14
    if-eqz v0, :cond_17

    #@16
    return v1

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    .line 158
    :try_start_18
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    #@1b
    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1c} :catch_21

    #@1c
    if-eqz p0, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v1, v0

    #@20
    :goto_20
    return v1

    #@21
    :catch_21
    return v0
.end method

.method public static isLocationEnabled(Landroid/location/LocationManager;)Z
    .registers 3

    #@0
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 103
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->isLocationEnabled(Landroid/location/LocationManager;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    const-string v0, "network"

    #@d
    .line 134
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1e

    #@13
    const-string v0, "gps"

    #@15
    .line 135
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@18
    move-result p0

    #@19
    if-eqz p0, :cond_1c

    #@1b
    goto :goto_1e

    #@1c
    :cond_1c
    const/4 p0, 0x0

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    #@1f
    :goto_1f
    return p0
.end method

.method static synthetic lambda$getCurrentLocation$0(Landroidx/core/util/Consumer;Landroid/location/Location;)V
    .registers 2

    #@0
    .line 202
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic lambda$registerGnssStatusCallback$1(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 548
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    #@3
    move-result p0

    #@4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static registerGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z
    .registers 5

    #@0
    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-eq v0, v1, :cond_b

    #@6
    .line 393
    invoke-static {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->registerGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 396
    :cond_b
    invoke-static {p2}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    #@e
    move-result-object p2

    #@f
    .line 395
    invoke-static {p0, p2, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssMeasurementsCallbackOnR(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    #@12
    move-result p0

    #@13
    return p0
.end method

.method public static registerGnssMeasurementsCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .registers 5

    #@0
    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-le v0, v1, :cond_b

    #@6
    .line 415
    invoke-static {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->registerGnssMeasurementsCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 417
    :cond_b
    invoke-static {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssMeasurementsCallbackOnR(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    #@e
    move-result p0

    #@f
    return p0
.end method

.method private static registerGnssMeasurementsCallbackOnR(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .registers 11

    #@0
    .line 439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-ne v0, v1, :cond_7c

    #@6
    const/4 v0, 0x0

    #@7
    .line 441
    :try_start_7
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderClass:Ljava/lang/Class;

    #@9
    if-nez v1, :cond_13

    #@b
    const-string v1, "android.location.GnssRequest$Builder"

    #@d
    .line 442
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@10
    move-result-object v1

    #@11
    sput-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderClass:Ljava/lang/Class;

    #@13
    .line 445
    :cond_13
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

    #@15
    const/4 v2, 0x1

    #@16
    if-nez v1, :cond_27

    #@18
    .line 446
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderClass:Ljava/lang/Class;

    #@1a
    const-string v3, "build"

    #@1c
    new-array v4, v0, [Ljava/lang/Class;

    #@1e
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@21
    move-result-object v1

    #@22
    sput-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

    #@24
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@27
    .line 450
    :cond_27
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;

    #@29
    const/4 v3, 0x2

    #@2a
    const/4 v4, 0x3

    #@2b
    if-nez v1, :cond_4c

    #@2d
    .line 451
    const-class v1, Landroid/location/LocationManager;

    #@2f
    const-string v5, "registerGnssMeasurementsCallback"

    #@31
    new-array v6, v4, [Ljava/lang/Class;

    #@33
    const-string v7, "android.location.GnssRequest"

    #@35
    .line 454
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@38
    move-result-object v7

    #@39
    aput-object v7, v6, v0

    #@3b
    const-class v7, Ljava/util/concurrent/Executor;

    #@3d
    aput-object v7, v6, v2

    #@3f
    const-class v7, Landroid/location/GnssMeasurementsEvent$Callback;

    #@41
    aput-object v7, v6, v3

    #@43
    .line 452
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@46
    move-result-object v1

    #@47
    sput-object v1, Landroidx/core/location/LocationManagerCompat;->sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;

    #@49
    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@4c
    .line 459
    :cond_4c
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;

    #@4e
    new-array v4, v4, [Ljava/lang/Object;

    #@50
    sget-object v5, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

    #@52
    sget-object v6, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderClass:Ljava/lang/Class;

    #@54
    new-array v7, v0, [Ljava/lang/Class;

    #@56
    .line 461
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@59
    move-result-object v6

    #@5a
    new-array v7, v0, [Ljava/lang/Object;

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v6

    #@60
    new-array v7, v0, [Ljava/lang/Object;

    #@62
    .line 460
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v5

    #@66
    aput-object v5, v4, v0

    #@68
    aput-object p1, v4, v2

    #@6a
    aput-object p2, v4, v3

    #@6c
    .line 459
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object p0

    #@70
    if-eqz p0, :cond_7b

    #@72
    .line 463
    check-cast p0, Ljava/lang/Boolean;

    #@74
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@77
    move-result p0
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_78} :catch_7b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_78} :catch_7b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_78} :catch_7b
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_78} :catch_7b
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_78} :catch_7b

    #@78
    if-eqz p0, :cond_7b

    #@7a
    move v0, v2

    #@7b
    :catch_7b
    :cond_7b
    return v0

    #@7c
    .line 469
    :cond_7c
    new-instance p0, Ljava/lang/IllegalStateException;

    #@7e
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    #@81
    throw p0
.end method

.method private static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 6

    #@0
    .line 528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 529
    invoke-static {p0, p1, p2, p3}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 532
    :cond_b
    invoke-static {p0, p1, p2, p3}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;Landroid/os/Handler;)Z
    .registers 5

    #@0
    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_f

    #@6
    .line 484
    invoke-static {p2}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    #@9
    move-result-object p2

    #@a
    invoke-static {p0, p2, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 487
    :cond_f
    new-instance v0, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;

    #@11
    invoke-direct {v0, p2}, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;-><init>(Landroid/os/Handler;)V

    #@14
    invoke-static {p0, v0, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    #@17
    move-result p0

    #@18
    return p0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 5

    #@0
    .line 513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_c

    #@6
    const/4 v0, 0x0

    #@7
    .line 514
    invoke-static {p0, v0, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    #@a
    move-result p0

    #@b
    return p0

    #@c
    .line 516
    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_16

    #@12
    .line 518
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@15
    move-result-object v0

    #@16
    .line 520
    :cond_16
    new-instance v1, Landroid/os/Handler;

    #@18
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1b
    invoke-static {p0, v1, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    #@1e
    move-result p0

    #@1f
    return p0
.end method

.method static registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V
    .registers 5

    #@0
    .line 268
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    #@2
    .line 269
    invoke-virtual {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->getKey()Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    #@5
    move-result-object v1

    #@6
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@8
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@b
    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Ljava/lang/ref/WeakReference;

    #@11
    if-eqz p1, :cond_1a

    #@13
    .line 270
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    :goto_1b
    if-eqz p1, :cond_23

    #@1d
    .line 272
    invoke-virtual {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->unregister()V

    #@20
    .line 273
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@23
    :cond_23
    return-void
.end method

.method public static removeUpdates(Landroid/location/LocationManager;Landroidx/core/location/LocationListenerCompat;)V
    .registers 8

    #@0
    .line 315
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    #@2
    monitor-enter v0

    #@3
    .line 318
    :try_start_3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_3a

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@18
    .line 319
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    #@1e
    if-nez v3, :cond_21

    #@20
    goto :goto_c

    #@21
    .line 323
    :cond_21
    invoke-virtual {v3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->getKey()Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    #@24
    move-result-object v4

    #@25
    .line 324
    iget-object v5, v4, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    #@27
    if-ne v5, p1, :cond_c

    #@29
    if-nez v2, :cond_30

    #@2b
    .line 326
    new-instance v2, Ljava/util/ArrayList;

    #@2d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@30
    .line 328
    :cond_30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    .line 329
    invoke-virtual {v3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->unregister()V

    #@36
    .line 330
    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@39
    goto :goto_c

    #@3a
    :cond_3a
    if-eqz v2, :cond_52

    #@3c
    .line 334
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v1

    #@40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_52

    #@46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    #@4c
    .line 335
    sget-object v3, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    #@4e
    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    goto :goto_40

    #@52
    .line 338
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_57

    #@53
    .line 342
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@56
    return-void

    #@57
    :catchall_57
    move-exception p0

    #@58
    .line 338
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    #@59
    throw p0
.end method

.method public static requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)V
    .registers 13

    #@0
    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_17

    #@6
    .line 293
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    #@9
    move-result-object p2

    #@a
    new-instance v0, Landroid/os/Handler;

    #@c
    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@f
    .line 294
    invoke-static {v0}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    #@12
    move-result-object p4

    #@13
    .line 292
    invoke-static {p0, p1, p2, p4, p3}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    #@16
    return-void

    #@17
    .line 298
    :cond_17
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api19Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1e

    #@1d
    return-void

    #@1e
    .line 303
    :cond_1e
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    #@21
    move-result-wide v3

    #@22
    .line 304
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    #@25
    move-result v5

    #@26
    move-object v1, p0

    #@27
    move-object v2, p1

    #@28
    move-object v6, p3

    #@29
    move-object v7, p4

    #@2a
    .line 303
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    #@2d
    return-void
.end method

.method public static requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)V
    .registers 13

    #@0
    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_e

    #@6
    .line 239
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    #@9
    move-result-object p2

    #@a
    .line 238
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    #@d
    return-void

    #@e
    .line 243
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v1, 0x1e

    #@12
    if-lt v0, v1, :cond_1b

    #@14
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1b

    #@1a
    return-void

    #@1b
    .line 248
    :cond_1b
    new-instance v0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    #@1d
    new-instance v1, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    #@1f
    invoke-direct {v1, p1, p4}, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;-><init>(Ljava/lang/String;Landroidx/core/location/LocationListenerCompat;)V

    #@22
    invoke-direct {v0, v1, p3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerKey;Ljava/util/concurrent/Executor;)V

    #@25
    .line 251
    invoke-static {p0, p1, p2, v0}, Landroidx/core/location/LocationManagerCompat$Api19Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)Z

    #@28
    move-result p3

    #@29
    if-eqz p3, :cond_2c

    #@2b
    return-void

    #@2c
    .line 256
    :cond_2c
    sget-object p3, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    #@2e
    monitor-enter p3

    #@2f
    .line 257
    :try_start_2f
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    #@32
    move-result-wide v3

    #@33
    .line 258
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    #@36
    move-result v5

    #@37
    .line 259
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3a
    move-result-object v7

    #@3b
    move-object v1, p0

    #@3c
    move-object v2, p1

    #@3d
    move-object v6, v0

    #@3e
    .line 257
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    #@41
    .line 260
    invoke-static {p0, v0}, Landroidx/core/location/LocationManagerCompat;->registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V

    #@44
    .line 261
    monitor-exit p3

    #@45
    return-void

    #@46
    :catchall_46
    move-exception p0

    #@47
    monitor-exit p3
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_46

    #@48
    throw p0
.end method

.method public static unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 2

    #@0
    .line 430
    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V

    #@3
    return-void
.end method

.method public static unregisterGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .registers 4

    #@0
    .line 603
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    #@2
    monitor-enter v0

    #@3
    .line 604
    :try_start_3
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 606
    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->unregisterGnssStatusCallback(Landroid/location/LocationManager;Ljava/lang/Object;)V

    #@e
    .line 608
    :cond_e
    monitor-exit v0

    #@f
    return-void

    #@10
    :catchall_10
    move-exception p0

    #@11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw p0
.end method
