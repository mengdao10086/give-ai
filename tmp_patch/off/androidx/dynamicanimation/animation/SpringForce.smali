.class public final Landroidx/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide v0, 0x4097700000000000L    # 1500.0

    #@8
    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@e
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@10
    .line 85
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@12
    const/4 v0, 0x0

    #@13
    .line 91
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    #@15
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@1a
    .line 104
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    #@1c
    .line 107
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@1e
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    #@21
    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@23
    return-void
.end method

.method public constructor <init>(F)V
    .registers 4

    #@0
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide v0, 0x4097700000000000L    # 1500.0

    #@8
    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@e
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@10
    .line 85
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@12
    const/4 v0, 0x0

    #@13
    .line 91
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    #@15
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@1a
    .line 104
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    #@1c
    .line 107
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@1e
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    #@21
    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@23
    float-to-double v0, p1

    #@24
    .line 123
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    #@26
    return-void
.end method

.method private init()V
    .registers 9

    #@0
    .line 247
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 251
    :cond_5
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    #@7
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@c
    cmpl-double v0, v0, v2

    #@e
    if-eqz v0, :cond_50

    #@10
    .line 256
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@12
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@14
    cmpl-double v4, v0, v2

    #@16
    if-lez v4, :cond_37

    #@18
    neg-double v4, v0

    #@19
    .line 258
    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@1b
    mul-double/2addr v4, v6

    #@1c
    mul-double/2addr v0, v0

    #@1d
    sub-double/2addr v0, v2

    #@1e
    .line 259
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@21
    move-result-wide v0

    #@22
    mul-double/2addr v6, v0

    #@23
    add-double/2addr v4, v6

    #@24
    iput-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    #@26
    .line 260
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@28
    neg-double v4, v0

    #@29
    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@2b
    mul-double/2addr v4, v6

    #@2c
    mul-double/2addr v0, v0

    #@2d
    sub-double/2addr v0, v2

    #@2e
    .line 261
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@31
    move-result-wide v0

    #@32
    mul-double/2addr v6, v0

    #@33
    sub-double/2addr v4, v6

    #@34
    iput-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    #@36
    goto :goto_4c

    #@37
    :cond_37
    const-wide/16 v4, 0x0

    #@39
    cmpl-double v4, v0, v4

    #@3b
    if-ltz v4, :cond_4c

    #@3d
    cmpg-double v4, v0, v2

    #@3f
    if-gez v4, :cond_4c

    #@41
    .line 264
    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@43
    mul-double/2addr v0, v0

    #@44
    sub-double/2addr v2, v0

    #@45
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@48
    move-result-wide v0

    #@49
    mul-double/2addr v4, v0

    #@4a
    iput-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    #@4c
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    #@4d
    .line 267
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    #@4f
    return-void

    #@50
    .line 252
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    #@52
    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 9

    #@0
    .line 218
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    #@3
    move-result v0

    #@4
    sub-float/2addr p1, v0

    #@5
    .line 220
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@7
    mul-double v2, v0, v0

    #@9
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    #@b
    mul-double/2addr v0, v4

    #@c
    .line 221
    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@e
    mul-double/2addr v0, v4

    #@f
    neg-double v2, v2

    #@10
    float-to-double v4, p1

    #@11
    mul-double/2addr v2, v4

    #@12
    float-to-double p1, p2

    #@13
    mul-double/2addr v0, p1

    #@14
    sub-double/2addr v2, v0

    #@15
    double-to-float p1, v2

    #@16
    return p1
.end method

.method public getDampingRatio()F
    .registers 3

    #@0
    .line 186
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@2
    double-to-float v0, v0

    #@3
    return v0
.end method

.method public getFinalPosition()F
    .registers 3

    #@0
    .line 206
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    #@2
    double-to-float v0, v0

    #@3
    return v0
.end method

.method public getStiffness()F
    .registers 3

    #@0
    .line 152
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@2
    mul-double/2addr v0, v0

    #@3
    double-to-float v0, v0

    #@4
    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 7

    #@0
    .line 232
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result p2

    #@4
    float-to-double v0, p2

    #@5
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    #@7
    cmpg-double p2, v0, v2

    #@9
    if-gez p2, :cond_1d

    #@b
    .line 233
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    #@e
    move-result p2

    #@f
    sub-float/2addr p1, p2

    #@10
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@13
    move-result p1

    #@14
    float-to-double p1, p1

    #@15
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    #@17
    cmpg-double p1, p1, v0

    #@19
    if-gez p1, :cond_1d

    #@1b
    const/4 p1, 0x1

    #@1c
    return p1

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    return p1
.end method

.method public setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-ltz v0, :cond_c

    #@5
    float-to-double v0, p1

    #@6
    .line 174
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@8
    const/4 p1, 0x0

    #@9
    .line 176
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    #@b
    return-object p0

    #@c
    .line 172
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v0, "Damping ratio must be non-negative"

    #@10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw p1
.end method

.method public setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;
    .registers 4

    #@0
    float-to-double v0, p1

    #@1
    .line 196
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    #@3
    return-object p0
.end method

.method public setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-lez v0, :cond_10

    #@5
    float-to-double v0, p1

    #@6
    .line 140
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@c
    const/4 p1, 0x0

    #@d
    .line 142
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    #@f
    return-object p0

    #@10
    .line 138
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v0, "Spring stiffness constant must be positive."

    #@14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method setValueThreshold(D)V
    .registers 5

    #@0
    .line 329
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    #@3
    move-result-wide p1

    #@4
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    #@6
    const-wide v0, 0x404f400000000000L    # 62.5

    #@b
    mul-double/2addr p1, v0

    #@c
    .line 330
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    #@e
    return-void
.end method

.method updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    .line 276
    invoke-direct/range {p0 .. p0}, Landroidx/dynamicanimation/animation/SpringForce;->init()V

    #@5
    move-wide/from16 v1, p5

    #@7
    long-to-double v1, v1

    #@8
    const-wide v3, 0x408f400000000000L    # 1000.0

    #@d
    div-double/2addr v1, v3

    #@e
    .line 279
    iget-wide v3, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    #@10
    sub-double v3, p1, v3

    #@12
    .line 282
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@14
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    #@16
    cmpl-double v9, v5, v7

    #@18
    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    #@1d
    if-lez v9, :cond_56

    #@1f
    .line 284
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    #@21
    mul-double v7, v5, v3

    #@23
    sub-double v7, v7, p3

    #@25
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    #@27
    sub-double v14, v5, v12

    #@29
    div-double/2addr v7, v14

    #@2a
    sub-double v7, v3, v7

    #@2c
    mul-double/2addr v3, v5

    #@2d
    sub-double v3, v3, p3

    #@2f
    sub-double v12, v5, v12

    #@31
    div-double/2addr v3, v12

    #@32
    mul-double/2addr v5, v1

    #@33
    .line 288
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    #@36
    move-result-wide v5

    #@37
    mul-double/2addr v5, v7

    #@38
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    #@3a
    mul-double/2addr v12, v1

    #@3b
    .line 289
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@3e
    move-result-wide v12

    #@3f
    mul-double/2addr v12, v3

    #@40
    add-double/2addr v5, v12

    #@41
    .line 290
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    #@43
    mul-double/2addr v7, v12

    #@44
    mul-double/2addr v12, v1

    #@45
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@48
    move-result-wide v12

    #@49
    mul-double/2addr v7, v12

    #@4a
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    #@4c
    mul-double/2addr v3, v12

    #@4d
    mul-double/2addr v12, v1

    #@4e
    .line 291
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@51
    move-result-wide v1

    #@52
    mul-double/2addr v3, v1

    #@53
    add-double/2addr v7, v3

    #@54
    goto/16 :goto_d2

    #@56
    :cond_56
    cmpl-double v9, v5, v7

    #@58
    if-nez v9, :cond_80

    #@5a
    .line 295
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@5c
    mul-double v7, v5, v3

    #@5e
    add-double v7, p3, v7

    #@60
    mul-double v12, v7, v1

    #@62
    add-double/2addr v3, v12

    #@63
    neg-double v5, v5

    #@64
    mul-double/2addr v5, v1

    #@65
    .line 296
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    #@68
    move-result-wide v5

    #@69
    mul-double/2addr v5, v3

    #@6a
    .line 297
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@6c
    neg-double v12, v12

    #@6d
    mul-double/2addr v12, v1

    #@6e
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@71
    move-result-wide v12

    #@72
    mul-double/2addr v3, v12

    #@73
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@75
    neg-double v14, v12

    #@76
    mul-double/2addr v3, v14

    #@77
    neg-double v12, v12

    #@78
    mul-double/2addr v12, v1

    #@79
    .line 298
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@7c
    move-result-wide v1

    #@7d
    mul-double/2addr v7, v1

    #@7e
    add-double/2addr v7, v3

    #@7f
    goto :goto_d2

    #@80
    .line 302
    :cond_80
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    #@82
    div-double/2addr v7, v12

    #@83
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@85
    mul-double v14, v5, v12

    #@87
    mul-double/2addr v14, v3

    #@88
    add-double v14, v14, p3

    #@8a
    mul-double/2addr v7, v14

    #@8b
    neg-double v5, v5

    #@8c
    mul-double/2addr v5, v12

    #@8d
    mul-double/2addr v5, v1

    #@8e
    .line 304
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    #@91
    move-result-wide v5

    #@92
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    #@94
    mul-double/2addr v12, v1

    #@95
    .line 305
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@98
    move-result-wide v12

    #@99
    mul-double/2addr v12, v3

    #@9a
    iget-wide v14, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    #@9c
    mul-double/2addr v14, v1

    #@9d
    .line 306
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    #@a0
    move-result-wide v14

    #@a1
    mul-double/2addr v14, v7

    #@a2
    add-double/2addr v12, v14

    #@a3
    mul-double/2addr v5, v12

    #@a4
    .line 307
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    #@a6
    neg-double v14, v12

    #@a7
    mul-double/2addr v14, v5

    #@a8
    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@aa
    mul-double/2addr v14, v10

    #@ab
    neg-double v9, v10

    #@ac
    mul-double/2addr v9, v12

    #@ad
    mul-double/2addr v9, v1

    #@ae
    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    #@b3
    .line 308
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    #@b6
    move-result-wide v9

    #@b7
    iget-wide v11, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    #@b9
    move-wide/from16 p1, v5

    #@bb
    neg-double v5, v11

    #@bc
    mul-double/2addr v5, v3

    #@bd
    mul-double/2addr v11, v1

    #@be
    .line 309
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    #@c1
    move-result-wide v3

    #@c2
    mul-double/2addr v5, v3

    #@c3
    iget-wide v3, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    #@c5
    mul-double/2addr v7, v3

    #@c6
    mul-double/2addr v3, v1

    #@c7
    .line 310
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    #@ca
    move-result-wide v1

    #@cb
    mul-double/2addr v7, v1

    #@cc
    add-double/2addr v5, v7

    #@cd
    mul-double/2addr v9, v5

    #@ce
    add-double v7, v14, v9

    #@d0
    move-wide/from16 v5, p1

    #@d2
    .line 313
    :goto_d2
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@d4
    iget-wide v2, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    #@d6
    add-double/2addr v5, v2

    #@d7
    double-to-float v2, v5

    #@d8
    iput v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    #@da
    .line 314
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@dc
    double-to-float v2, v7

    #@dd
    iput v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    #@df
    .line 315
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@e1
    return-object v1
.end method
