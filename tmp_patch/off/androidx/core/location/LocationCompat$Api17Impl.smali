.class Landroidx/core/location/LocationCompat$Api17Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getElapsedRealtimeNanos(Landroid/location/Location;)J
    .registers 3

    #@0
    .line 505
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
