.class public final Landroidx/core/location/LocationRequestCompat$Builder;
.super Ljava/lang/Object;
.source "LocationRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMillis:J

.field private mIntervalMillis:J

.field private mMaxUpdateDelayMillis:J

.field private mMaxUpdates:I

.field private mMinUpdateDistanceMeters:F

.field private mMinUpdateIntervalMillis:J

.field private mQuality:I


# direct methods
.method public constructor <init>(J)V
    .registers 3

    #@0
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 334
    invoke-virtual {p0, p1, p2}, Landroidx/core/location/LocationRequestCompat$Builder;->setIntervalMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;

    #@6
    const/16 p1, 0x66

    #@8
    .line 336
    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    #@a
    const-wide p1, 0x7fffffffffffffffL

    #@f
    .line 337
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    #@11
    const p1, 0x7fffffff

    #@14
    .line 338
    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    #@16
    const-wide/16 p1, -0x1

    #@18
    .line 339
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    #@1a
    const/4 p1, 0x0

    #@1b
    .line 340
    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    #@1d
    const-wide/16 p1, 0x0

    #@1f
    .line 341
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    #@21
    return-void
.end method

.method public constructor <init>(Landroidx/core/location/LocationRequestCompat;)V
    .registers 4

    #@0
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 348
    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    #@5
    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    #@7
    .line 349
    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    #@9
    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    #@b
    .line 350
    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    #@d
    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    #@f
    .line 351
    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    #@11
    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    #@13
    .line 352
    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    #@15
    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    #@17
    .line 353
    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    #@19
    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    #@1b
    .line 354
    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    #@1d
    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    #@1f
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/location/LocationRequestCompat;
    .registers 15

    #@0
    .line 488
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    #@2
    const-wide v2, 0x7fffffffffffffffL

    #@7
    cmp-long v0, v0, v2

    #@9
    if-nez v0, :cond_16

    #@b
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    #@d
    const-wide/16 v2, -0x1

    #@f
    cmp-long v0, v0, v2

    #@11
    if-eqz v0, :cond_14

    #@13
    goto :goto_16

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_17

    #@16
    :cond_16
    :goto_16
    const/4 v0, 0x1

    #@17
    :goto_17
    const-string v1, "passive location requests must have an explicit minimum update interval"

    #@19
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@1c
    .line 492
    new-instance v0, Landroidx/core/location/LocationRequestCompat;

    #@1e
    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    #@20
    iget v5, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    #@22
    iget-wide v6, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    #@24
    iget v8, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    #@26
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    #@28
    .line 497
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    #@2b
    move-result-wide v9

    #@2c
    iget v11, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    #@2e
    iget-wide v12, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    #@30
    move-object v2, v0

    #@31
    invoke-direct/range {v2 .. v13}, Landroidx/core/location/LocationRequestCompat;-><init>(JIJIJFJ)V

    #@34
    return-object v0
.end method

.method public clearMinUpdateIntervalMillis()Landroidx/core/location/LocationRequestCompat$Builder;
    .registers 3

    #@0
    const-wide/16 v0, -0x1

    #@2
    .line 447
    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    #@4
    return-object p0
.end method

.method public setDurationMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .registers 10

    #@0
    const-wide/16 v2, 0x1

    #@2
    const-wide v4, 0x7fffffffffffffffL

    #@7
    const-string v6, "durationMillis"

    #@9
    move-wide v0, p1

    #@a
    .line 403
    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    #@d
    move-result-wide p1

    #@e
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    #@10
    return-object p0
.end method

.method public setIntervalMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .registers 10

    #@0
    const-wide/16 v2, 0x0

    #@2
    const-wide v4, 0x7fffffffffffffffL

    #@7
    const-string v6, "intervalMillis"

    #@9
    move-wide v0, p1

    #@a
    .line 374
    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    #@d
    move-result-wide p1

    #@e
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    #@10
    return-object p0
.end method

.method public setMaxUpdateDelayMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .registers 10

    #@0
    .line 473
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    const-wide v4, 0x7fffffffffffffffL

    #@9
    const-string v6, "maxUpdateDelayMillis"

    #@b
    move-wide v0, p1

    #@c
    .line 474
    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    #@f
    move-result-wide p1

    #@10
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    #@12
    return-object p0
.end method

.method public setMaxUpdates(I)Landroidx/core/location/LocationRequestCompat$Builder;
    .registers 5

    #@0
    const v0, 0x7fffffff

    #@3
    const-string v1, "maxUpdates"

    #@5
    const/4 v2, 0x1

    #@6
    .line 416
    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@9
    move-result p1

    #@a
    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    #@c
    return-object p0
.end method

.method public setMinUpdateDistanceMeters(F)Landroidx/core/location/LocationRequestCompat$Builder;
    .registers 5

    #@0
    .line 459
    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    #@2
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@5
    const-string v1, "minUpdateDistanceMeters"

    #@7
    const/4 v2, 0x0

    #@8
    .line 460
    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    #@b
    move-result p1

    #@c
    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    #@e
    return-object p0
.end method

.method public setMinUpdateIntervalMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .registers 10

    #@0
    const-wide/16 v2, 0x0

    #@2
    const-wide v4, 0x7fffffffffffffffL

    #@7
    const-string v6, "minUpdateIntervalMillis"

    #@9
    move-wide v0, p1

    #@a
    .line 437
    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    #@d
    move-result-wide p1

    #@e
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    #@10
    return-object p0
.end method

.method public setQuality(I)Landroidx/core/location/LocationRequestCompat$Builder;
    .registers 6

    #@0
    const/16 v0, 0x68

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eq p1, v0, :cond_11

    #@6
    const/16 v0, 0x66

    #@8
    if-eq p1, v0, :cond_11

    #@a
    const/16 v0, 0x64

    #@c
    if-ne p1, v0, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    move v0, v1

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    move v0, v2

    #@12
    :goto_12
    new-array v2, v2, [Ljava/lang/Object;

    #@14
    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v2, v1

    #@1a
    const-string v1, "quality must be a defined QUALITY constant, not %d"

    #@1c
    .line 387
    invoke-static {v0, v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@1f
    .line 391
    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    #@21
    return-object p0
.end method
