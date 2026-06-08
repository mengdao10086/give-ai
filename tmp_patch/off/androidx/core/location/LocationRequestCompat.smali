.class public final Landroidx/core/location/LocationRequestCompat;
.super Ljava/lang/Object;
.source "LocationRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationRequestCompat$Api19Impl;,
        Landroidx/core/location/LocationRequestCompat$Api31Impl;,
        Landroidx/core/location/LocationRequestCompat$Builder;,
        Landroidx/core/location/LocationRequestCompat$Quality;
    }
.end annotation


# static fields
.field private static final IMPLICIT_MIN_UPDATE_INTERVAL:J = -0x1L

.field public static final PASSIVE_INTERVAL:J = 0x7fffffffffffffffL

.field public static final QUALITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final QUALITY_HIGH_ACCURACY:I = 0x64

.field public static final QUALITY_LOW_POWER:I = 0x68


# instance fields
.field final mDurationMillis:J

.field final mIntervalMillis:J

.field final mMaxUpdateDelayMillis:J

.field final mMaxUpdates:I

.field final mMinUpdateDistanceMeters:F

.field final mMinUpdateIntervalMillis:J

.field final mQuality:I


# direct methods
.method constructor <init>(JIJIJFJ)V
    .registers 12

    #@0
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@5
    .line 110
    iput p3, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    #@7
    .line 111
    iput-wide p7, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    #@9
    .line 112
    iput-wide p4, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    #@b
    .line 113
    iput p6, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    #@d
    .line 114
    iput p9, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    #@f
    .line 115
    iput-wide p10, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    #@11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 248
    :cond_4
    instance-of v1, p1, Landroidx/core/location/LocationRequestCompat;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 252
    :cond_a
    check-cast p1, Landroidx/core/location/LocationRequestCompat;

    #@c
    .line 253
    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    #@e
    iget v3, p1, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    #@10
    if-ne v1, v3, :cond_43

    #@12
    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@14
    iget-wide v5, p1, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@16
    cmp-long v1, v3, v5

    #@18
    if-nez v1, :cond_43

    #@1a
    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    #@1c
    iget-wide v5, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    #@1e
    cmp-long v1, v3, v5

    #@20
    if-nez v1, :cond_43

    #@22
    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    #@24
    iget-wide v5, p1, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    #@26
    cmp-long v1, v3, v5

    #@28
    if-nez v1, :cond_43

    #@2a
    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    #@2c
    iget v3, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    #@2e
    if-ne v1, v3, :cond_43

    #@30
    iget v1, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    #@32
    iget v3, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    #@34
    .line 256
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_43

    #@3a
    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    #@3c
    iget-wide v5, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    #@3e
    cmp-long p1, v3, v5

    #@40
    if-nez p1, :cond_43

    #@42
    goto :goto_44

    #@43
    :cond_43
    move v0, v2

    #@44
    :goto_44
    return v0
.end method

.method public getDurationMillis()J
    .registers 3

    #@0
    .line 167
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    #@2
    return-wide v0
.end method

.method public getIntervalMillis()J
    .registers 3

    #@0
    .line 138
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@2
    return-wide v0
.end method

.method public getMaxUpdateDelayMillis()J
    .registers 3

    #@0
    .line 206
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    #@2
    return-wide v0
.end method

.method public getMaxUpdates()I
    .registers 2

    #@0
    .line 176
    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    #@2
    return v0
.end method

.method public getMinUpdateDistanceMeters()F
    .registers 2

    #@0
    .line 188
    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    #@2
    return v0
.end method

.method public getMinUpdateIntervalMillis()J
    .registers 5

    #@0
    .line 153
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v2, v0, v2

    #@6
    if-nez v2, :cond_a

    #@8
    .line 154
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@a
    :cond_a
    return-wide v0
.end method

.method public getQuality()I
    .registers 2

    #@0
    .line 124
    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 7

    #@0
    .line 262
    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    .line 263
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@6
    const/16 v3, 0x20

    #@8
    ushr-long v4, v1, v3

    #@a
    xor-long/2addr v1, v4

    #@b
    long-to-int v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    mul-int/lit8 v0, v0, 0x1f

    #@f
    .line 264
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    #@11
    ushr-long v3, v1, v3

    #@13
    xor-long/2addr v1, v3

    #@14
    long-to-int v1, v1

    #@15
    add-int/2addr v0, v1

    #@16
    return v0
.end method

.method public toLocationRequest()Landroid/location/LocationRequest;
    .registers 2

    #@0
    .line 218
    invoke-static {p0}, Landroidx/core/location/LocationRequestCompat$Api31Impl;->toLocationRequest(Landroidx/core/location/LocationRequestCompat;)Landroid/location/LocationRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;
    .registers 4

    #@0
    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 236
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    #@9
    move-result-object p1

    #@a
    return-object p1

    #@b
    .line 239
    :cond_b
    invoke-static {p0, p1}, Landroidx/core/location/LocationRequestCompat$Api19Impl;->toLocationRequest(Landroidx/core/location/LocationRequestCompat;Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Landroid/location/LocationRequest;

    #@11
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Request["

    #@7
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 273
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@c
    const-wide v3, 0x7fffffffffffffffL

    #@11
    cmp-long v1, v1, v3

    #@13
    if-eqz v1, :cond_40

    #@15
    const-string v1, "@"

    #@17
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 275
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@1c
    invoke-static {v1, v2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1f
    .line 277
    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    #@21
    const/16 v2, 0x64

    #@23
    if-eq v1, v2, :cond_3a

    #@25
    const/16 v2, 0x66

    #@27
    if-eq v1, v2, :cond_34

    #@29
    const/16 v2, 0x68

    #@2b
    if-eq v1, v2, :cond_2e

    #@2d
    goto :goto_45

    #@2e
    :cond_2e
    const-string v1, " LOW_POWER"

    #@30
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    goto :goto_45

    #@34
    :cond_34
    const-string v1, " BALANCED"

    #@36
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    goto :goto_45

    #@3a
    :cond_3a
    const-string v1, " HIGH_ACCURACY"

    #@3c
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    goto :goto_45

    #@40
    :cond_40
    const-string v1, "PASSIVE"

    #@42
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 291
    :goto_45
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    #@47
    cmp-long v1, v1, v3

    #@49
    if-eqz v1, :cond_55

    #@4b
    const-string v1, ", duration="

    #@4d
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 293
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    #@52
    invoke-static {v1, v2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@55
    .line 295
    :cond_55
    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    #@57
    const v2, 0x7fffffff

    #@5a
    if-eq v1, v2, :cond_67

    #@5c
    const-string v1, ", maxUpdates="

    #@5e
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget v2, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    .line 298
    :cond_67
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    #@69
    const-wide/16 v3, -0x1

    #@6b
    cmp-long v3, v1, v3

    #@6d
    if-eqz v3, :cond_7f

    #@6f
    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@71
    cmp-long v1, v1, v3

    #@73
    if-gez v1, :cond_7f

    #@75
    const-string v1, ", minUpdateInterval="

    #@77
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 301
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    #@7c
    invoke-static {v1, v2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@7f
    .line 303
    :cond_7f
    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    #@81
    float-to-double v1, v1

    #@82
    const-wide/16 v3, 0x0

    #@84
    cmpl-double v1, v1, v3

    #@86
    if-lez v1, :cond_93

    #@88
    const-string v1, ", minUpdateDistance="

    #@8a
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    iget v2, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@93
    .line 306
    :cond_93
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    #@95
    const-wide/16 v3, 0x2

    #@97
    div-long/2addr v1, v3

    #@98
    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@9a
    cmp-long v1, v1, v3

    #@9c
    if-lez v1, :cond_a8

    #@9e
    const-string v1, ", maxUpdateDelay="

    #@a0
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 308
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    #@a5
    invoke-static {v1, v2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@a8
    :cond_a8
    const/16 v1, 0x5d

    #@aa
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ad
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    return-object v0
.end method
