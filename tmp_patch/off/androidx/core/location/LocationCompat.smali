.class public final Landroidx/core/location/LocationCompat;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationCompat$Api17Impl;,
        Landroidx/core/location/LocationCompat$Api18Impl;,
        Landroidx/core/location/LocationCompat$Api26Impl;
    }
.end annotation


# static fields
.field public static final EXTRA_BEARING_ACCURACY:Ljava/lang/String; = "bearingAccuracy"

.field public static final EXTRA_IS_MOCK:Ljava/lang/String; = "mockLocation"

.field public static final EXTRA_MSL_ALTITUDE:Ljava/lang/String; = "androidx.core.location.extra.MSL_ALTITUDE"

.field public static final EXTRA_MSL_ALTITUDE_ACCURACY:Ljava/lang/String; = "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

.field public static final EXTRA_SPEED_ACCURACY:Ljava/lang/String; = "speedAccuracy"

.field public static final EXTRA_VERTICAL_ACCURACY:Ljava/lang/String; = "verticalAccuracy"

.field private static sSetIsFromMockProviderMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static containsExtra(Landroid/location/Location;Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 530
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_e

    #@6
    .line 531
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result p0

    #@a
    if-eqz p0, :cond_e

    #@c
    const/4 p0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p0, 0x0

    #@f
    :goto_f
    return p0
.end method

.method public static getBearingAccuracyDegrees(Landroid/location/Location;)F
    .registers 1

    #@0
    .line 265
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->getBearingAccuracyDegrees(Landroid/location/Location;)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getElapsedRealtimeMillis(Landroid/location/Location;)J
    .registers 4

    #@0
    .line 117
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api17Impl;->getElapsedRealtimeNanos(Landroid/location/Location;)J

    #@5
    move-result-wide v1

    #@6
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public static getElapsedRealtimeNanos(Landroid/location/Location;)J
    .registers 3

    #@0
    .line 104
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api17Impl;->getElapsedRealtimeNanos(Landroid/location/Location;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static getMslAltitudeAccuracyMeters(Landroid/location/Location;)F
    .registers 3

    #@0
    .line 339
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->hasMslAltitudeAccuracy(Landroid/location/Location;)Z

    #@3
    move-result v0

    #@4
    const-string v1, "The Mean Sea Level altitude accuracy of the location is not set."

    #@6
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@9
    .line 341
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    #@c
    move-result-object p0

    #@d
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

    #@f
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@12
    move-result p0

    #@13
    return p0
.end method

.method public static getMslAltitudeMeters(Landroid/location/Location;)D
    .registers 3

    #@0
    .line 301
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->hasMslAltitude(Landroid/location/Location;)Z

    #@3
    move-result v0

    #@4
    const-string v1, "The Mean Sea Level altitude of the location is not set."

    #@6
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@9
    .line 303
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    #@c
    move-result-object p0

    #@d
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE"

    #@f
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method private static getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;
    .registers 2

    #@0
    .line 520
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_12

    #@6
    .line 522
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    #@e
    .line 523
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    #@11
    move-result-object v0

    #@12
    :cond_12
    return-object v0
.end method

.method private static getSetIsFromMockProviderMethod()Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .line 510
    sget-object v0, Landroidx/core/location/LocationCompat;->sSetIsFromMockProviderMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_19

    #@4
    .line 511
    const-class v0, Landroid/location/Location;

    #@6
    const/4 v1, 0x1

    #@7
    new-array v2, v1, [Ljava/lang/Class;

    #@9
    const/4 v3, 0x0

    #@a
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@c
    aput-object v4, v2, v3

    #@e
    const-string v3, "setIsFromMockProvider"

    #@10
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroidx/core/location/LocationCompat;->sSetIsFromMockProviderMethod:Ljava/lang/reflect/Method;

    #@16
    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@19
    .line 516
    :cond_19
    sget-object v0, Landroidx/core/location/LocationCompat;->sSetIsFromMockProviderMethod:Ljava/lang/reflect/Method;

    #@1b
    return-object v0
.end method

.method public static getSpeedAccuracyMetersPerSecond(Landroid/location/Location;)F
    .registers 1

    #@0
    .line 211
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->getSpeedAccuracyMetersPerSecond(Landroid/location/Location;)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getVerticalAccuracyMeters(Landroid/location/Location;)F
    .registers 1

    #@0
    .line 157
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->getVerticalAccuracyMeters(Landroid/location/Location;)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasBearingAccuracy(Landroid/location/Location;)Z
    .registers 1

    #@0
    .line 248
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->hasBearingAccuracy(Landroid/location/Location;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasMslAltitude(Landroid/location/Location;)Z
    .registers 2

    #@0
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE"

    #@2
    .line 318
    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->containsExtra(Landroid/location/Location;Ljava/lang/String;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static hasMslAltitudeAccuracy(Landroid/location/Location;)Z
    .registers 2

    #@0
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

    #@2
    .line 357
    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->containsExtra(Landroid/location/Location;Ljava/lang/String;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static hasSpeedAccuracy(Landroid/location/Location;)Z
    .registers 1

    #@0
    .line 194
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->hasSpeedAccuracy(Landroid/location/Location;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasVerticalAccuracy(Landroid/location/Location;)Z
    .registers 1

    #@0
    .line 140
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->hasVerticalAccuracy(Landroid/location/Location;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isMock(Landroid/location/Location;)Z
    .registers 1

    #@0
    .line 381
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api18Impl;->isMock(Landroid/location/Location;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static removeExtra(Landroid/location/Location;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 535
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 537
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@9
    .line 538
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@c
    move-result p1

    #@d
    if-eqz p1, :cond_13

    #@f
    const/4 p1, 0x0

    #@10
    .line 539
    invoke-virtual {p0, p1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    #@13
    :cond_13
    return-void
.end method

.method public static removeMslAltitude(Landroid/location/Location;)V
    .registers 2

    #@0
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE"

    #@2
    .line 325
    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->removeExtra(Landroid/location/Location;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static removeMslAltitudeAccuracy(Landroid/location/Location;)V
    .registers 2

    #@0
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

    #@2
    .line 364
    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->removeExtra(Landroid/location/Location;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static setBearingAccuracyDegrees(Landroid/location/Location;F)V
    .registers 2

    #@0
    .line 289
    invoke-static {p0, p1}, Landroidx/core/location/LocationCompat$Api26Impl;->setBearingAccuracyDegrees(Landroid/location/Location;F)V

    #@3
    return-void
.end method

.method public static setMock(Landroid/location/Location;Z)V
    .registers 5

    #@0
    .line 403
    :try_start_0
    invoke-static {}, Landroidx/core/location/LocationCompat;->getSetIsFromMockProviderMethod()Ljava/lang/reflect/Method;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a
    move-result-object p1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object p1, v1, v2

    #@e
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_11} :catch_12

    #@11
    return-void

    #@12
    :catch_12
    move-exception p0

    #@13
    .line 413
    new-instance p1, Ljava/lang/RuntimeException;

    #@15
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw p1

    #@19
    :catch_19
    move-exception p0

    #@1a
    .line 409
    new-instance p1, Ljava/lang/IllegalAccessError;

    #@1c
    invoke-direct {p1}, Ljava/lang/IllegalAccessError;-><init>()V

    #@1f
    .line 410
    invoke-virtual {p1, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@22
    .line 411
    throw p1

    #@23
    :catch_23
    move-exception p0

    #@24
    .line 405
    new-instance p1, Ljava/lang/NoSuchMethodError;

    #@26
    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    #@29
    .line 406
    invoke-virtual {p1, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2c
    .line 407
    throw p1
.end method

.method public static setMslAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .registers 3

    #@0
    .line 349
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    #@3
    move-result-object p0

    #@4
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

    #@6
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@9
    return-void
.end method

.method public static setMslAltitudeMeters(Landroid/location/Location;D)V
    .registers 4

    #@0
    .line 311
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    #@3
    move-result-object p0

    #@4
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE"

    #@6
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@9
    return-void
.end method

.method public static setSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .registers 2

    #@0
    .line 235
    invoke-static {p0, p1}, Landroidx/core/location/LocationCompat$Api26Impl;->setSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V

    #@3
    return-void
.end method

.method public static setVerticalAccuracyMeters(Landroid/location/Location;F)V
    .registers 2

    #@0
    .line 181
    invoke-static {p0, p1}, Landroidx/core/location/LocationCompat$Api26Impl;->setVerticalAccuracyMeters(Landroid/location/Location;F)V

    #@3
    return-void
.end method
