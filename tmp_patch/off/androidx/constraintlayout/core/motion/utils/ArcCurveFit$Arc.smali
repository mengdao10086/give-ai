.class Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arc"
.end annotation


# static fields
.field private static final EPSILON:D = 0.001

.field private static final TAG:Ljava/lang/String; = "Arc"

.field private static ourPercent:[D


# instance fields
.field linear:Z

.field mArcDistance:D

.field mArcVelocity:D

.field mEllipseA:D

.field mEllipseB:D

.field mEllipseCenterX:D

.field mEllipseCenterY:D

.field mLut:[D

.field mOneOverDeltaTime:D

.field mTime1:D

.field mTime2:D

.field mTmpCosAngle:D

.field mTmpSinAngle:D

.field mVertical:Z

.field mX1:D

.field mX2:D

.field mY1:D

.field mY2:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/16 v0, 0x5b

    #@2
    new-array v0, v0, [D

    #@4
    .line 285
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    #@6
    return-void
.end method

.method constructor <init>(IDDDDDD)V
    .registers 34

    #@0
    move-object/from16 v9, p0

    #@2
    move/from16 v0, p1

    #@4
    move-wide/from16 v1, p2

    #@6
    move-wide/from16 v3, p4

    #@8
    move-wide/from16 v5, p6

    #@a
    move-wide/from16 v7, p8

    #@c
    move-wide/from16 v10, p10

    #@e
    move-wide/from16 v12, p12

    #@10
    .line 303
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@13
    const/4 v14, 0x0

    #@14
    .line 300
    iput-boolean v14, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@16
    const/4 v15, 0x1

    #@17
    if-ne v0, v15, :cond_1a

    #@19
    move v14, v15

    #@1a
    .line 304
    :cond_1a
    iput-boolean v14, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    #@1c
    .line 305
    iput-wide v1, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@1e
    .line 306
    iput-wide v3, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@20
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    #@22
    sub-double v1, v3, v1

    #@24
    div-double v1, v16, v1

    #@26
    .line 307
    iput-wide v1, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    #@28
    const/4 v1, 0x3

    #@29
    if-ne v1, v0, :cond_2d

    #@2b
    .line 309
    iput-boolean v15, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@2d
    :cond_2d
    sub-double v0, v10, v5

    #@2f
    sub-double v2, v12, v7

    #@31
    .line 313
    iget-boolean v4, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@33
    if-nez v4, :cond_88

    #@35
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    #@38
    move-result-wide v16

    #@39
    const-wide v18, 0x3f50624dd2f1a9fcL    # 0.001

    #@3e
    cmpg-double v4, v16, v18

    #@40
    if-ltz v4, :cond_88

    #@42
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    #@45
    move-result-wide v16

    #@46
    cmpg-double v4, v16, v18

    #@48
    if-gez v4, :cond_4b

    #@4a
    goto :goto_88

    #@4b
    :cond_4b
    const/16 v4, 0x65

    #@4d
    new-array v4, v4, [D

    #@4f
    .line 325
    iput-object v4, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    #@51
    .line 326
    iget-boolean v4, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    #@53
    if-eqz v4, :cond_57

    #@55
    const/4 v14, -0x1

    #@56
    goto :goto_58

    #@57
    :cond_57
    move v14, v15

    #@58
    :goto_58
    int-to-double v12, v14

    #@59
    mul-double/2addr v0, v12

    #@5a
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    #@5c
    if-eqz v4, :cond_5f

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    const/4 v15, -0x1

    #@60
    :goto_60
    int-to-double v0, v15

    #@61
    mul-double/2addr v2, v0

    #@62
    .line 327
    iput-wide v2, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    #@64
    if-eqz v4, :cond_68

    #@66
    move-wide v0, v10

    #@67
    goto :goto_69

    #@68
    :cond_68
    move-wide v0, v5

    #@69
    .line 328
    :goto_69
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    #@6b
    if-eqz v4, :cond_6f

    #@6d
    move-wide v0, v7

    #@6e
    goto :goto_71

    #@6f
    :cond_6f
    move-wide/from16 v0, p12

    #@71
    .line 329
    :goto_71
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    #@73
    move-object/from16 v0, p0

    #@75
    move-wide/from16 v1, p6

    #@77
    move-wide/from16 v3, p8

    #@79
    move-wide/from16 v5, p10

    #@7b
    move-wide/from16 v7, p12

    #@7d
    .line 330
    invoke-direct/range {v0 .. v8}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->buildTable(DDDD)V

    #@80
    .line 331
    iget-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    #@82
    iget-wide v2, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    #@84
    mul-double/2addr v0, v2

    #@85
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    #@87
    return-void

    #@88
    .line 314
    :cond_88
    :goto_88
    iput-boolean v15, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    #@8a
    .line 315
    iput-wide v5, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    #@8c
    .line 316
    iput-wide v10, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    #@8e
    .line 317
    iput-wide v7, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    #@90
    move-wide/from16 v4, p12

    #@92
    .line 318
    iput-wide v4, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    #@94
    .line 319
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    #@97
    move-result-wide v4

    #@98
    iput-wide v4, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    #@9a
    .line 320
    iget-wide v6, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    #@9c
    mul-double/2addr v4, v6

    #@9d
    iput-wide v4, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    #@9f
    .line 321
    iget-wide v4, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@a1
    iget-wide v6, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@a3
    sub-double v10, v4, v6

    #@a5
    div-double/2addr v0, v10

    #@a6
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    #@a8
    sub-double/2addr v4, v6

    #@a9
    div-double/2addr v2, v4

    #@aa
    .line 322
    iput-wide v2, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    #@ac
    return-void
.end method

.method private buildTable(DDDD)V
    .registers 29

    #@0
    move-object/from16 v0, p0

    #@2
    sub-double v1, p5, p1

    #@4
    sub-double v3, p3, p7

    #@6
    const/4 v8, 0x0

    #@7
    const-wide/16 v9, 0x0

    #@9
    const-wide/16 v11, 0x0

    #@b
    const-wide/16 v13, 0x0

    #@d
    .line 401
    :goto_d
    sget-object v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    #@f
    array-length v7, v15

    #@10
    if-ge v8, v7, :cond_4d

    #@12
    const-wide v16, 0x4056800000000000L    # 90.0

    #@17
    int-to-double v5, v8

    #@18
    mul-double v5, v5, v16

    #@1a
    .line 402
    array-length v7, v15

    #@1b
    add-int/lit8 v7, v7, -0x1

    #@1d
    move-wide/from16 p4, v9

    #@1f
    int-to-double v9, v7

    #@20
    div-double/2addr v5, v9

    #@21
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    #@24
    move-result-wide v5

    #@25
    .line 403
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    #@28
    move-result-wide v9

    #@29
    .line 404
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    #@2c
    move-result-wide v5

    #@2d
    mul-double/2addr v9, v1

    #@2e
    mul-double/2addr v5, v3

    #@2f
    if-lez v8, :cond_41

    #@31
    sub-double v11, v9, v11

    #@33
    sub-double v13, v5, v13

    #@35
    .line 408
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    #@38
    move-result-wide v11

    #@39
    move-wide/from16 v13, p4

    #@3b
    add-double/2addr v11, v13

    #@3c
    .line 409
    sget-object v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    #@3e
    aput-wide v11, v7, v8

    #@40
    goto :goto_44

    #@41
    :cond_41
    move-wide/from16 v13, p4

    #@43
    move-wide v11, v13

    #@44
    :goto_44
    add-int/lit8 v8, v8, 0x1

    #@46
    move-wide v13, v5

    #@47
    move-wide/from16 v18, v9

    #@49
    move-wide v9, v11

    #@4a
    move-wide/from16 v11, v18

    #@4c
    goto :goto_d

    #@4d
    :cond_4d
    move-wide v13, v9

    #@4e
    .line 415
    iput-wide v13, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    #@50
    const/4 v1, 0x0

    #@51
    .line 417
    :goto_51
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    #@53
    array-length v3, v2

    #@54
    if-ge v1, v3, :cond_5e

    #@56
    .line 418
    aget-wide v3, v2, v1

    #@58
    div-double/2addr v3, v13

    #@59
    aput-wide v3, v2, v1

    #@5b
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_51

    #@5e
    :cond_5e
    const/4 v7, 0x0

    #@5f
    .line 420
    :goto_5f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    #@61
    array-length v2, v1

    #@62
    if-ge v7, v2, :cond_a9

    #@64
    int-to-double v2, v7

    #@65
    .line 421
    array-length v1, v1

    #@66
    add-int/lit8 v1, v1, -0x1

    #@68
    int-to-double v4, v1

    #@69
    div-double/2addr v2, v4

    #@6a
    .line 422
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    #@6c
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    #@6f
    move-result v1

    #@70
    if-ltz v1, :cond_81

    #@72
    .line 424
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    #@74
    int-to-double v3, v1

    #@75
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    #@77
    array-length v1, v1

    #@78
    add-int/lit8 v1, v1, -0x1

    #@7a
    int-to-double v5, v1

    #@7b
    div-double/2addr v3, v5

    #@7c
    aput-wide v3, v2, v7

    #@7e
    const-wide/16 v4, 0x0

    #@80
    goto :goto_a6

    #@81
    :cond_81
    const/4 v4, -0x1

    #@82
    if-ne v1, v4, :cond_8b

    #@84
    .line 426
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    #@86
    const-wide/16 v4, 0x0

    #@88
    aput-wide v4, v1, v7

    #@8a
    goto :goto_a6

    #@8b
    :cond_8b
    const-wide/16 v4, 0x0

    #@8d
    neg-int v1, v1

    #@8e
    add-int/lit8 v6, v1, -0x2

    #@90
    add-int/lit8 v1, v1, -0x1

    #@92
    int-to-double v8, v6

    #@93
    .line 431
    sget-object v10, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    #@95
    aget-wide v11, v10, v6

    #@97
    sub-double/2addr v2, v11

    #@98
    aget-wide v13, v10, v1

    #@9a
    sub-double/2addr v13, v11

    #@9b
    div-double/2addr v2, v13

    #@9c
    add-double/2addr v8, v2

    #@9d
    array-length v1, v10

    #@9e
    add-int/lit8 v1, v1, -0x1

    #@a0
    int-to-double v1, v1

    #@a1
    div-double/2addr v8, v1

    #@a2
    .line 433
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    #@a4
    aput-wide v8, v1, v7

    #@a6
    :goto_a6
    add-int/lit8 v7, v7, 0x1

    #@a8
    goto :goto_5f

    #@a9
    :cond_a9
    return-void
.end method


# virtual methods
.method getDX()D
    .registers 7

    #@0
    .line 351
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    #@2
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    #@4
    mul-double/2addr v0, v2

    #@5
    .line 352
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    #@7
    neg-double v2, v2

    #@8
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    #@a
    mul-double/2addr v2, v4

    #@b
    .line 353
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    #@d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    #@10
    move-result-wide v2

    #@11
    div-double/2addr v4, v2

    #@12
    .line 354
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    #@14
    if-eqz v2, :cond_17

    #@16
    neg-double v0, v0

    #@17
    :cond_17
    mul-double/2addr v0, v4

    #@18
    return-wide v0
.end method

.method getDY()D
    .registers 7

    #@0
    .line 358
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    #@2
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    #@4
    mul-double/2addr v0, v2

    #@5
    .line 359
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    #@7
    neg-double v2, v2

    #@8
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    #@a
    mul-double/2addr v2, v4

    #@b
    .line 360
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    #@d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    #@10
    move-result-wide v0

    #@11
    div-double/2addr v4, v0

    #@12
    .line 361
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    #@14
    if-eqz v0, :cond_19

    #@16
    neg-double v0, v2

    #@17
    mul-double/2addr v0, v4

    #@18
    goto :goto_1b

    #@19
    :cond_19
    mul-double v0, v2, v4

    #@1b
    :goto_1b
    return-wide v0
.end method

.method public getLinearDX(D)D
    .registers 3

    #@0
    .line 375
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    #@2
    return-wide p1
.end method

.method public getLinearDY(D)D
    .registers 3

    #@0
    .line 379
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    #@2
    return-wide p1
.end method

.method public getLinearX(D)D
    .registers 7

    #@0
    .line 365
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@2
    sub-double/2addr p1, v0

    #@3
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    #@5
    mul-double/2addr p1, v0

    #@6
    .line 366
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    #@8
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    #@a
    sub-double/2addr v2, v0

    #@b
    mul-double/2addr p1, v2

    #@c
    add-double/2addr v0, p1

    #@d
    return-wide v0
.end method

.method public getLinearY(D)D
    .registers 7

    #@0
    .line 370
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@2
    sub-double/2addr p1, v0

    #@3
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    #@5
    mul-double/2addr p1, v0

    #@6
    .line 371
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    #@8
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    #@a
    sub-double/2addr v2, v0

    #@b
    mul-double/2addr p1, v2

    #@c
    add-double/2addr v0, p1

    #@d
    return-wide v0
.end method

.method getX()D
    .registers 7

    #@0
    .line 343
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    #@2
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    #@4
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    #@6
    mul-double/2addr v2, v4

    #@7
    add-double/2addr v0, v2

    #@8
    return-wide v0
.end method

.method getY()D
    .registers 7

    #@0
    .line 347
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    #@2
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    #@4
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    #@6
    mul-double/2addr v2, v4

    #@7
    add-double/2addr v0, v2

    #@8
    return-wide v0
.end method

.method lookup(D)D
    .registers 9

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmpg-double v2, p1, v0

    #@4
    if-gtz v2, :cond_7

    #@6
    return-wide v0

    #@7
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@9
    cmpl-double v2, p1, v0

    #@b
    if-ltz v2, :cond_e

    #@d
    return-wide v0

    #@e
    .line 389
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    #@10
    array-length v1, v0

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    int-to-double v1, v1

    #@14
    mul-double/2addr p1, v1

    #@15
    double-to-int v1, p1

    #@16
    int-to-double v2, v1

    #@17
    sub-double/2addr p1, v2

    #@18
    .line 393
    aget-wide v2, v0, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    aget-wide v4, v0, v1

    #@1e
    sub-double/2addr v4, v2

    #@1f
    mul-double/2addr p1, v4

    #@20
    add-double/2addr v2, p1

    #@21
    return-wide v2
.end method

.method setPoint(D)V
    .registers 5

    #@0
    .line 335
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    #@6
    sub-double/2addr v0, p1

    #@7
    goto :goto_c

    #@8
    :cond_8
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    #@a
    sub-double v0, p1, v0

    #@c
    :goto_c
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    #@e
    mul-double/2addr v0, p1

    #@f
    const-wide p1, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@14
    .line 336
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->lookup(D)D

    #@17
    move-result-wide v0

    #@18
    mul-double/2addr v0, p1

    #@19
    .line 338
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@1c
    move-result-wide p1

    #@1d
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    #@1f
    .line 339
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@22
    move-result-wide p1

    #@23
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    #@25
    return-void
.end method
