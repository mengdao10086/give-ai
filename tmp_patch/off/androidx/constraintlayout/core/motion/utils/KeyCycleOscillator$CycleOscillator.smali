.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CycleOscillator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CycleOscillator"

.field static final UNSET:I = -0x1


# instance fields
.field private final OFFST:I

.field private final PHASE:I

.field private final VALUE:I

.field mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mOffset:[F

.field mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

.field mPathLength:F

.field mPeriod:[F

.field mPhase:[F

.field mPosition:[D

.field mScale:[F

.field mSplineSlopeCache:[D

.field mSplineValueCache:[D

.field mValues:[F

.field private final mVariesBy:I

.field mWaveShape:I


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .registers 7

    #@0
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 303
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Oscillator;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@a
    const/4 v1, 0x0

    #@b
    .line 304
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->OFFST:I

    #@d
    const/4 v1, 0x1

    #@e
    .line 305
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->PHASE:I

    #@10
    const/4 v1, 0x2

    #@11
    .line 306
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->VALUE:I

    #@13
    .line 321
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mWaveShape:I

    #@15
    .line 322
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mVariesBy:I

    #@17
    .line 323
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->setType(ILjava/lang/String;)V

    #@1a
    .line 324
    new-array p1, p4, [F

    #@1c
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    #@1e
    .line 325
    new-array p1, p4, [D

    #@20
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    #@22
    .line 326
    new-array p1, p4, [F

    #@24
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    #@26
    .line 327
    new-array p1, p4, [F

    #@28
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    #@2a
    .line 328
    new-array p1, p4, [F

    #@2c
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    #@2e
    .line 329
    new-array p1, p4, [F

    #@30
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mScale:[F

    #@32
    return-void
.end method


# virtual methods
.method public getLastPhase()D
    .registers 4

    #@0
    .line 348
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@2
    const/4 v1, 0x1

    #@3
    aget-wide v1, v0, v1

    #@5
    return-wide v1
.end method

.method public getSlope(F)D
    .registers 15

    #@0
    .line 352
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x2

    #@4
    const/4 v3, 0x1

    #@5
    if-eqz v0, :cond_15

    #@7
    float-to-double v4, p1

    #@8
    .line 353
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    #@a
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@d
    .line 354
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@f
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@11
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@14
    goto :goto_1f

    #@15
    .line 356
    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    #@17
    const-wide/16 v4, 0x0

    #@19
    aput-wide v4, v0, v1

    #@1b
    .line 357
    aput-wide v4, v0, v3

    #@1d
    .line 358
    aput-wide v4, v0, v2

    #@1f
    .line 360
    :goto_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@21
    float-to-double v5, p1

    #@22
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@24
    aget-wide v7, p1, v3

    #@26
    invoke-virtual {v0, v5, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    #@29
    move-result-wide v11

    #@2a
    .line 361
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@2c
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@2e
    aget-wide v7, p1, v3

    #@30
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    #@32
    aget-wide v9, p1, v3

    #@34
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getSlope(DDD)D

    #@37
    move-result-wide v3

    #@38
    .line 362
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    #@3a
    aget-wide v0, p1, v1

    #@3c
    aget-wide v5, p1, v2

    #@3e
    mul-double/2addr v11, v5

    #@3f
    add-double/2addr v0, v11

    #@40
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@42
    aget-wide v5, p1, v2

    #@44
    mul-double/2addr v3, v5

    #@45
    add-double/2addr v0, v3

    #@46
    return-wide v0
.end method

.method public getValues(F)D
    .registers 11

    #@0
    .line 333
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    if-eqz v0, :cond_e

    #@7
    float-to-double v4, p1

    #@8
    .line 334
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@a
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@d
    goto :goto_25

    #@e
    .line 336
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@10
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    #@12
    aget v4, v4, v3

    #@14
    float-to-double v4, v4

    #@15
    aput-wide v4, v0, v3

    #@17
    .line 337
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    #@19
    aget v4, v4, v3

    #@1b
    float-to-double v4, v4

    #@1c
    aput-wide v4, v0, v2

    #@1e
    .line 338
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    #@20
    aget v4, v4, v3

    #@22
    float-to-double v4, v4

    #@23
    aput-wide v4, v0, v1

    #@25
    .line 341
    :goto_25
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@27
    aget-wide v3, v0, v3

    #@29
    .line 342
    aget-wide v5, v0, v2

    #@2b
    .line 343
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@2d
    float-to-double v7, p1

    #@2e
    invoke-virtual {v0, v7, v8, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    #@31
    move-result-wide v5

    #@32
    .line 344
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@34
    aget-wide v0, p1, v1

    #@36
    mul-double/2addr v5, v0

    #@37
    add-double/2addr v3, v5

    #@38
    return-wide v3
.end method

.method public setPoint(IIFFFF)V
    .registers 12

    #@0
    .line 373
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    #@2
    int-to-double v1, p2

    #@3
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    #@5
    div-double/2addr v1, v3

    #@6
    aput-wide v1, v0, p1

    #@8
    .line 374
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    #@a
    aput p3, p2, p1

    #@c
    .line 375
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    #@e
    aput p4, p2, p1

    #@10
    .line 376
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    #@12
    aput p5, p2, p1

    #@14
    .line 377
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    #@16
    aput p6, p2, p1

    #@18
    return-void
.end method

.method public setup(F)V
    .registers 11

    #@0
    .line 381
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPathLength:F

    #@2
    .line 382
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    #@4
    array-length p1, p1

    #@5
    const/4 v0, 0x2

    #@6
    new-array v1, v0, [I

    #@8
    const/4 v2, 0x1

    #@9
    const/4 v3, 0x3

    #@a
    aput v3, v1, v2

    #@c
    const/4 v3, 0x0

    #@d
    aput p1, v1, v3

    #@f
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@11
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, [[D

    #@17
    .line 383
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    #@19
    array-length v4, v1

    #@1a
    add-int/2addr v4, v0

    #@1b
    new-array v4, v4, [D

    #@1d
    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    #@1f
    .line 384
    array-length v1, v1

    #@20
    add-int/2addr v1, v0

    #@21
    new-array v1, v1, [D

    #@23
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    #@25
    .line 385
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    #@27
    aget-wide v4, v1, v3

    #@29
    const-wide/16 v6, 0x0

    #@2b
    cmpl-double v1, v4, v6

    #@2d
    if-lez v1, :cond_38

    #@2f
    .line 386
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@31
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    #@33
    aget v4, v4, v3

    #@35
    invoke-virtual {v1, v6, v7, v4}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    #@38
    .line 388
    :cond_38
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    #@3a
    array-length v4, v1

    #@3b
    sub-int/2addr v4, v2

    #@3c
    .line 389
    aget-wide v5, v1, v4

    #@3e
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    #@40
    cmpg-double v1, v5, v7

    #@42
    if-gez v1, :cond_4d

    #@44
    .line 390
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@46
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    #@48
    aget v4, v5, v4

    #@4a
    invoke-virtual {v1, v7, v8, v4}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    #@4d
    :cond_4d
    move v1, v3

    #@4e
    .line 393
    :goto_4e
    array-length v4, p1

    #@4f
    if-ge v1, v4, :cond_78

    #@51
    .line 394
    aget-object v4, p1, v1

    #@53
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    #@55
    aget v5, v5, v1

    #@57
    float-to-double v5, v5

    #@58
    aput-wide v5, v4, v3

    #@5a
    .line 395
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    #@5c
    aget v5, v5, v1

    #@5e
    float-to-double v5, v5

    #@5f
    aput-wide v5, v4, v2

    #@61
    .line 396
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    #@63
    aget v5, v5, v1

    #@65
    float-to-double v5, v5

    #@66
    aput-wide v5, v4, v0

    #@68
    .line 397
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@6a
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    #@6c
    aget-wide v6, v5, v1

    #@6e
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    #@70
    aget v5, v5, v1

    #@72
    invoke-virtual {v4, v6, v7, v5}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    #@75
    add-int/lit8 v1, v1, 0x1

    #@77
    goto :goto_4e

    #@78
    .line 401
    :cond_78
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    #@7a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->normalize()V

    #@7d
    .line 402
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    #@7f
    array-length v1, v0

    #@80
    if-le v1, v2, :cond_89

    #@82
    .line 403
    invoke-static {v3, v0, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@85
    move-result-object p1

    #@86
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@88
    goto :goto_8c

    #@89
    :cond_89
    const/4 p1, 0x0

    #@8a
    .line 405
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@8c
    :goto_8c
    return-void
.end method
