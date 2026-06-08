.class Landroidx/core/location/LocationCompat$Api18Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isMock(Landroid/location/Location;)Z
    .registers 1

    #@0
    .line 494
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    #@3
    move-result p0

    #@4
    return p0
.end method
