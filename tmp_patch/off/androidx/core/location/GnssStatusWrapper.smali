.class Landroidx/core/location/GnssStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GnssStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/GnssStatusWrapper$Api30Impl;,
        Landroidx/core/location/GnssStatusWrapper$Api26Impl;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/GnssStatus;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 37
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    #@3
    .line 38
    check-cast p1, Landroid/location/GnssStatus;

    #@5
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Landroid/location/GnssStatus;

    #@b
    iput-object p1, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@d
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    return p1

    #@4
    .line 127
    :cond_4
    instance-of v0, p1, Landroidx/core/location/GnssStatusWrapper;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    return p1

    #@a
    .line 130
    :cond_a
    check-cast p1, Landroidx/core/location/GnssStatusWrapper;

    #@c
    .line 131
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@e
    iget-object p1, p1, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@10
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p1

    #@14
    return p1
.end method

.method public getAzimuthDegrees(I)F
    .registers 3

    #@0
    .line 68
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getBasebandCn0DbHz(I)F
    .registers 4

    #@0
    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 116
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@8
    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api30Impl;->getBasebandCn0DbHz(Landroid/location/GnssStatus;I)F

    #@b
    move-result p1

    #@c
    return p1

    #@d
    .line 118
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@f
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@12
    throw p1
.end method

.method public getCarrierFrequencyHz(I)F
    .registers 3

    #@0
    .line 98
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api26Impl;->getCarrierFrequencyHz(Landroid/location/GnssStatus;I)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getCn0DbHz(I)F
    .registers 3

    #@0
    .line 58
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getConstellationType(I)I
    .registers 3

    #@0
    .line 48
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getElevationDegrees(I)F
    .registers 3

    #@0
    .line 63
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getSatelliteCount()I
    .registers 2

    #@0
    .line 43
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0}, Landroid/location/GnssStatus;->getSatelliteCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSvid(I)I
    .registers 3

    #@0
    .line 53
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getSvid(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public hasAlmanacData(I)Z
    .registers 3

    #@0
    .line 78
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public hasBasebandCn0DbHz(I)Z
    .registers 4

    #@0
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 107
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@8
    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api30Impl;->hasBasebandCn0DbHz(Landroid/location/GnssStatus;I)Z

    #@b
    move-result p1

    #@c
    return p1

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    return p1
.end method

.method public hasCarrierFrequencyHz(I)Z
    .registers 3

    #@0
    .line 89
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api26Impl;->hasCarrierFrequencyHz(Landroid/location/GnssStatus;I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public hasEphemerisData(I)Z
    .registers 3

    #@0
    .line 73
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 136
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0}, Landroid/location/GnssStatus;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public usedInFix(I)Z
    .registers 3

    #@0
    .line 83
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method
