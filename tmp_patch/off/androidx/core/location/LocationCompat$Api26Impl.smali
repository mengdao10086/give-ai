.class Landroidx/core/location/LocationCompat$Api26Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getBearingAccuracyDegrees(Landroid/location/Location;)F
    .registers 1

    #@0
    .line 478
    invoke-virtual {p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getSpeedAccuracyMetersPerSecond(Landroid/location/Location;)F
    .registers 1

    #@0
    .line 463
    invoke-virtual {p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getVerticalAccuracyMeters(Landroid/location/Location;)F
    .registers 1

    #@0
    .line 448
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static hasBearingAccuracy(Landroid/location/Location;)Z
    .registers 1

    #@0
    .line 473
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static hasSpeedAccuracy(Landroid/location/Location;)Z
    .registers 1

    #@0
    .line 458
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static hasVerticalAccuracy(Landroid/location/Location;)Z
    .registers 1

    #@0
    .line 443
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setBearingAccuracyDegrees(Landroid/location/Location;F)V
    .registers 2

    #@0
    .line 483
    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    #@3
    return-void
.end method

.method static setSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .registers 2

    #@0
    .line 468
    invoke-virtual {p0, p1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    #@3
    return-void
.end method

.method static setVerticalAccuracyMeters(Landroid/location/Location;F)V
    .registers 2

    #@0
    .line 453
    invoke-virtual {p0, p1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    #@3
    return-void
.end method
