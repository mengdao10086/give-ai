.class Landroidx/core/location/GpsStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GpsStatusWrapper.java"


# static fields
.field private static final BEIDOU_PRN_COUNT:I = 0x23

.field private static final BEIDOU_PRN_OFFSET:I = 0xc8

.field private static final GLONASS_PRN_COUNT:I = 0x18

.field private static final GLONASS_PRN_OFFSET:I = 0x40

.field private static final GPS_PRN_COUNT:I = 0x20

.field private static final GPS_PRN_OFFSET:I = 0x0

.field private static final QZSS_SVID_MAX:I = 0xc8

.field private static final QZSS_SVID_MIN:I = 0xc1

.field private static final SBAS_PRN_MAX:I = 0x40

.field private static final SBAS_PRN_MIN:I = 0x21

.field private static final SBAS_PRN_OFFSET:I = -0x57


# instance fields
.field private mCachedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedIteratorPosition:I

.field private mCachedSatellite:Landroid/location/GpsSatellite;

.field private mCachedSatelliteCount:I

.field private final mWrapped:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .registers 3

    #@0
    .line 60
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    #@3
    .line 61
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    check-cast p1, Landroid/location/GpsStatus;

    #@9
    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    #@b
    const/4 v0, -0x1

    #@c
    .line 62
    iput v0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    #@e
    .line 63
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    #@11
    move-result-object p1

    #@12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object p1

    #@16
    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    #@18
    .line 64
    iput v0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    #@1a
    const/4 p1, 0x0

    #@1b
    .line 65
    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    #@1d
    return-void
.end method

.method private static getConstellationFromPrn(I)I
    .registers 3

    #@0
    if-lez p0, :cond_8

    #@2
    const/16 v0, 0x20

    #@4
    if-gt p0, v0, :cond_8

    #@6
    const/4 p0, 0x1

    #@7
    return p0

    #@8
    :cond_8
    const/16 v0, 0x21

    #@a
    const/16 v1, 0x40

    #@c
    if-lt p0, v0, :cond_12

    #@e
    if-gt p0, v1, :cond_12

    #@10
    const/4 p0, 0x2

    #@11
    return p0

    #@12
    :cond_12
    if-le p0, v1, :cond_1a

    #@14
    const/16 v0, 0x58

    #@16
    if-gt p0, v0, :cond_1a

    #@18
    const/4 p0, 0x3

    #@19
    return p0

    #@1a
    :cond_1a
    const/16 v0, 0xc8

    #@1c
    if-le p0, v0, :cond_24

    #@1e
    const/16 v1, 0xeb

    #@20
    if-gt p0, v1, :cond_24

    #@22
    const/4 p0, 0x5

    #@23
    return p0

    #@24
    :cond_24
    const/16 v1, 0xc1

    #@26
    if-lt p0, v1, :cond_2c

    #@28
    if-gt p0, v0, :cond_2c

    #@2a
    const/4 p0, 0x4

    #@2b
    return p0

    #@2c
    :cond_2c
    const/4 p0, 0x0

    #@2d
    return p0
.end method

.method private getSatellite(I)Landroid/location/GpsSatellite;
    .registers 4

    #@0
    .line 152
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    #@2
    monitor-enter v0

    #@3
    .line 153
    :try_start_3
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    #@5
    if-ge p1, v1, :cond_16

    #@7
    .line 154
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    #@9
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    #@13
    const/4 v1, -0x1

    #@14
    .line 155
    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    #@16
    .line 157
    :cond_16
    :goto_16
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    #@18
    if-ge v1, p1, :cond_35

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    .line 158
    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    #@1e
    .line 159
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_2a

    #@26
    const/4 p1, 0x0

    #@27
    .line 160
    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    #@29
    goto :goto_35

    #@2a
    .line 163
    :cond_2a
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/location/GpsSatellite;

    #@32
    iput-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    #@34
    goto :goto_16

    #@35
    .line 166
    :cond_35
    :goto_35
    iget-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    #@37
    .line 167
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3f

    #@38
    .line 168
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object p1

    #@3c
    check-cast p1, Landroid/location/GpsSatellite;

    #@3e
    return-object p1

    #@3f
    :catchall_3f
    move-exception p1

    #@40
    .line 167
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    #@41
    throw p1
.end method

.method private static getSvidFromPrn(I)I
    .registers 3

    #@0
    .line 205
    invoke-static {p0}, Landroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_14

    #@7
    const/4 v1, 0x3

    #@8
    if-eq v0, v1, :cond_11

    #@a
    const/4 v1, 0x5

    #@b
    if-eq v0, v1, :cond_e

    #@d
    goto :goto_16

    #@e
    :cond_e
    add-int/lit16 p0, p0, -0xc8

    #@10
    goto :goto_16

    #@11
    :cond_11
    add-int/lit8 p0, p0, -0x40

    #@13
    goto :goto_16

    #@14
    :cond_14
    add-int/lit8 p0, p0, 0x57

    #@16
    :goto_16
    return p0
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
    .line 176
    :cond_4
    instance-of v0, p1, Landroidx/core/location/GpsStatusWrapper;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    return p1

    #@a
    .line 179
    :cond_a
    check-cast p1, Landroidx/core/location/GpsStatusWrapper;

    #@c
    .line 180
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    #@e
    iget-object p1, p1, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p1

    #@14
    return p1
.end method

.method public getAzimuthDegrees(I)F
    .registers 2

    #@0
    .line 112
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getAzimuth()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getBasebandCn0DbHz(I)F
    .registers 2

    #@0
    .line 147
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public getCarrierFrequencyHz(I)F
    .registers 2

    #@0
    .line 137
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw p1
.end method

.method public getCn0DbHz(I)F
    .registers 2

    #@0
    .line 102
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getSnr()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getConstellationType(I)I
    .registers 2

    #@0
    .line 87
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getPrn()I

    #@7
    move-result p1

    #@8
    invoke-static {p1}, Landroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public getElevationDegrees(I)F
    .registers 2

    #@0
    .line 107
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getElevation()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getSatelliteCount()I
    .registers 4

    #@0
    .line 70
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    #@2
    monitor-enter v0

    #@3
    .line 71
    :try_start_3
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    #@5
    const/4 v2, -0x1

    #@6
    if-ne v1, v2, :cond_2b

    #@8
    .line 72
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    #@a
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_25

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/location/GpsSatellite;

    #@1e
    .line 73
    iget v2, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    iput v2, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    #@24
    goto :goto_12

    #@25
    .line 75
    :cond_25
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    #@2b
    .line 78
    :cond_2b
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    #@2d
    monitor-exit v0

    #@2e
    return v1

    #@2f
    :catchall_2f
    move-exception v1

    #@30
    .line 79
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    #@31
    throw v1
.end method

.method public getSvid(I)I
    .registers 2

    #@0
    .line 96
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getPrn()I

    #@7
    move-result p1

    #@8
    invoke-static {p1}, Landroidx/core/location/GpsStatusWrapper;->getSvidFromPrn(I)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public hasAlmanacData(I)Z
    .registers 2

    #@0
    .line 122
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/location/GpsSatellite;->hasAlmanac()Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public hasBasebandCn0DbHz(I)Z
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public hasCarrierFrequencyHz(I)Z
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public hasEphemerisData(I)Z
    .registers 2

    #@0
    .line 117
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/location/GpsSatellite;->hasEphemeris()Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 185
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public usedInFix(I)Z
    .registers 2

    #@0
    .line 127
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/location/GpsSatellite;->usedInFix()Z

    #@7
    move-result p1

    #@8
    return p1
.end method
