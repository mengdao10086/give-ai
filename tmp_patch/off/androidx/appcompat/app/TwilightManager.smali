.class Landroidx/appcompat/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Landroidx/appcompat/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4

    #@0
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    new-instance v0, Landroidx/appcompat/app/TwilightManager$TwilightState;

    #@5
    invoke-direct {v0}, Landroidx/appcompat/app/TwilightManager$TwilightState;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    #@a
    .line 70
    iput-object p1, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    #@c
    .line 71
    iput-object p2, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    #@e
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Landroidx/appcompat/app/TwilightManager;
    .registers 3

    #@0
    .line 50
    sget-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    #@2
    if-nez v0, :cond_17

    #@4
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@7
    move-result-object p0

    #@8
    .line 52
    new-instance v0, Landroidx/appcompat/app/TwilightManager;

    #@a
    const-string v1, "location"

    #@c
    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/location/LocationManager;

    #@12
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    #@15
    sput-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    #@17
    .line 55
    :cond_17
    sget-object p0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    #@19
    return-object p0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .registers 7

    #@0
    .line 110
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    #@2
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@4
    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    if-nez v0, :cond_12

    #@b
    const-string v0, "network"

    #@d
    .line 113
    invoke-direct {p0, v0}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    #@10
    move-result-object v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    move-object v0, v1

    #@13
    .line 116
    :goto_13
    iget-object v2, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    #@15
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    #@17
    invoke-static {v2, v3}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_23

    #@1d
    const-string v1, "gps"

    #@1f
    .line 119
    invoke-direct {p0, v1}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    #@22
    move-result-object v1

    #@23
    :cond_23
    if-eqz v1, :cond_35

    #@25
    if-eqz v0, :cond_35

    #@27
    .line 124
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    #@2a
    move-result-wide v2

    #@2b
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    #@2e
    move-result-wide v4

    #@2f
    cmp-long v2, v2, v4

    #@31
    if-lez v2, :cond_34

    #@33
    move-object v0, v1

    #@34
    :cond_34
    return-object v0

    #@35
    :cond_35
    if-eqz v1, :cond_38

    #@37
    move-object v0, v1

    #@38
    :cond_38
    return-object v0
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .registers 4

    #@0
    .line 134
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 135
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    #@a
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    #@d
    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    return-object p1

    #@f
    :catch_f
    move-exception p1

    #@10
    const-string v0, "TwilightManager"

    #@12
    const-string v1, "Failed to get last known location"

    #@14
    .line 138
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    return-object p1
.end method

.method private isStateValid()Z
    .registers 5

    #@0
    .line 144
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    #@2
    iget-wide v0, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    #@4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    cmp-long v0, v0, v2

    #@a
    if-lez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method static setInstance(Landroidx/appcompat/app/TwilightManager;)V
    .registers 1

    #@0
    .line 60
    sput-object p0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    #@2
    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .registers 24

    #@0
    move-object/from16 v0, p0

    #@2
    .line 148
    iget-object v1, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    #@4
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v9

    #@8
    .line 150
    invoke-static {}, Landroidx/appcompat/app/TwilightCalculator;->getInstance()Landroidx/appcompat/app/TwilightCalculator;

    #@b
    move-result-object v11

    #@c
    const-wide/32 v12, 0x5265c00

    #@f
    sub-long v3, v9, v12

    #@11
    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    #@14
    move-result-wide v5

    #@15
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    #@18
    move-result-wide v7

    #@19
    move-object v2, v11

    #@1a
    .line 153
    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    #@1d
    .line 155
    iget-wide v14, v11, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    #@1f
    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    #@22
    move-result-wide v5

    #@23
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    #@26
    move-result-wide v7

    #@27
    move-wide v3, v9

    #@28
    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    #@2b
    .line 159
    iget v2, v11, Landroidx/appcompat/app/TwilightCalculator;->state:I

    #@2d
    const/4 v3, 0x1

    #@2e
    if-ne v2, v3, :cond_31

    #@30
    goto :goto_32

    #@31
    :cond_31
    const/4 v3, 0x0

    #@32
    :goto_32
    move v7, v3

    #@33
    .line 160
    iget-wide v5, v11, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    #@35
    .line 161
    iget-wide v3, v11, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    #@37
    add-long/2addr v12, v9

    #@38
    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    #@3b
    move-result-wide v16

    #@3c
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    #@3f
    move-result-wide v18

    #@40
    move-object v2, v11

    #@41
    move-wide/from16 v20, v14

    #@43
    move-wide v14, v3

    #@44
    move-wide v3, v12

    #@45
    move-wide v12, v5

    #@46
    move-wide/from16 v5, v16

    #@48
    move v0, v7

    #@49
    move-wide/from16 v7, v18

    #@4b
    .line 164
    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    #@4e
    .line 166
    iget-wide v2, v11, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    #@50
    const-wide/16 v4, -0x1

    #@52
    cmp-long v6, v12, v4

    #@54
    if-eqz v6, :cond_6f

    #@56
    cmp-long v4, v14, v4

    #@58
    if-nez v4, :cond_5b

    #@5a
    goto :goto_6f

    #@5b
    :cond_5b
    cmp-long v4, v9, v14

    #@5d
    const-wide/16 v5, 0x0

    #@5f
    if-lez v4, :cond_63

    #@61
    add-long/2addr v5, v2

    #@62
    goto :goto_6a

    #@63
    :cond_63
    cmp-long v4, v9, v12

    #@65
    if-lez v4, :cond_69

    #@67
    add-long/2addr v5, v14

    #@68
    goto :goto_6a

    #@69
    :cond_69
    add-long/2addr v5, v12

    #@6a
    :goto_6a
    const-wide/32 v7, 0xea60

    #@6d
    add-long/2addr v5, v7

    #@6e
    goto :goto_74

    #@6f
    :cond_6f
    :goto_6f
    const-wide/32 v4, 0x2932e00

    #@72
    add-long v5, v9, v4

    #@74
    .line 186
    :goto_74
    iput-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    #@76
    move-wide/from16 v7, v20

    #@78
    .line 187
    iput-wide v7, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->yesterdaySunset:J

    #@7a
    .line 188
    iput-wide v12, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->todaySunrise:J

    #@7c
    .line 189
    iput-wide v14, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->todaySunset:J

    #@7e
    .line 190
    iput-wide v2, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    #@80
    .line 191
    iput-wide v5, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    #@82
    return-void
.end method


# virtual methods
.method isNight()Z
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    #@2
    .line 82
    invoke-direct {p0}, Landroidx/appcompat/app/TwilightManager;->isStateValid()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 84
    iget-boolean v0, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    #@a
    return v0

    #@b
    .line 88
    :cond_b
    invoke-direct {p0}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_17

    #@11
    .line 90
    invoke-direct {p0, v1}, Landroidx/appcompat/app/TwilightManager;->updateState(Landroid/location/Location;)V

    #@14
    .line 91
    iget-boolean v0, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    #@16
    return v0

    #@17
    :cond_17
    const-string v0, "TwilightManager"

    #@19
    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    #@1b
    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@21
    move-result-object v0

    #@22
    const/16 v1, 0xb

    #@24
    .line 101
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@27
    move-result v0

    #@28
    const/4 v1, 0x6

    #@29
    if-lt v0, v1, :cond_32

    #@2b
    const/16 v1, 0x16

    #@2d
    if-lt v0, v1, :cond_30

    #@2f
    goto :goto_32

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_33

    #@32
    :cond_32
    :goto_32
    const/4 v0, 0x1

    #@33
    :goto_33
    return v0
.end method
