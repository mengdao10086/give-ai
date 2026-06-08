.class Landroidx/core/location/LocationManagerCompat$Api28Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;
    .registers 1

    #@0
    .line 1193
    invoke-virtual {p0}, Landroid/location/LocationManager;->getGnssHardwareModelName()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getGnssYearOfHardware(Landroid/location/LocationManager;)I
    .registers 1

    #@0
    .line 1198
    invoke-virtual {p0}, Landroid/location/LocationManager;->getGnssYearOfHardware()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static isLocationEnabled(Landroid/location/LocationManager;)Z
    .registers 1

    #@0
    .line 1188
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    #@3
    move-result p0

    #@4
    return p0
.end method
