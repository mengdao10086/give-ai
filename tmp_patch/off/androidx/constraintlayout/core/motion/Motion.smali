.class public Landroidx/constraintlayout/core/motion/Motion;
.super Ljava/lang/Object;
.source "Motion.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# static fields
.field static final BOUNCE:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field static final LINEAR:I = 0x3

.field static final OVERSHOOT:I = 0x5

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field public static final ROTATION_LEFT:I = 0x2

.field public static final ROTATION_RIGHT:I = 0x1

.field private static final SPLINE_STRING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field attributeTable:[Ljava/lang/String;

.field private mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mAttributeInterpolatorCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field mCurrentCenterX:F

.field mCurrentCenterY:F

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroidx/constraintlayout/core/motion/MotionWidget;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 5

    #@0
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

    #@a
    const/4 v0, -0x1

    #@b
    .line 83
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    #@d
    .line 84
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@f
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    #@12
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@14
    .line 85
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@16
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    #@19
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@1b
    .line 87
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@1d
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    #@20
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@22
    .line 88
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@24
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    #@27
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@29
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@2b
    .line 92
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionStagger:F

    #@2d
    const/4 v2, 0x0

    #@2e
    .line 93
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    #@30
    const/high16 v2, 0x3f800000    # 1.0f

    #@32
    .line 94
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    #@34
    const/4 v2, 0x4

    #@35
    .line 102
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->MAX_DIMENSION:I

    #@37
    new-array v2, v2, [F

    #@39
    .line 103
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    #@3b
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@42
    const/4 v2, 0x1

    #@43
    new-array v2, v2, [F

    #@45
    .line 105
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    #@47
    .line 107
    new-instance v2, Ljava/util/ArrayList;

    #@49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@4c
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@4e
    .line 112
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    #@50
    .line 113
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    #@52
    const/4 v2, 0x0

    #@53
    .line 114
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@55
    .line 115
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    #@57
    .line 116
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    #@59
    .line 117
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    #@5b
    const/4 v0, 0x0

    #@5c
    .line 118
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    #@5e
    .line 150
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/Motion;->setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@61
    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .registers 14

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/high16 v2, 0x3f800000    # 1.0f

    #@4
    if-eqz p2, :cond_9

    #@6
    .line 1156
    aput v2, p2, v1

    #@8
    goto :goto_28

    #@9
    .line 1157
    :cond_9
    iget v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    #@b
    float-to-double v4, v3

    #@c
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@e
    cmpl-double v4, v4, v6

    #@10
    if-eqz v4, :cond_28

    #@12
    .line 1158
    iget v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    #@14
    cmpg-float v5, p1, v4

    #@16
    if-gez v5, :cond_19

    #@18
    move p1, v0

    #@19
    :cond_19
    cmpl-float v5, p1, v4

    #@1b
    if-lez v5, :cond_28

    #@1d
    float-to-double v8, p1

    #@1e
    cmpg-double v5, v8, v6

    #@20
    if-gez v5, :cond_28

    #@22
    sub-float/2addr p1, v4

    #@23
    mul-float/2addr p1, v3

    #@24
    .line 1164
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    #@27
    move-result p1

    #@28
    .line 1170
    :cond_28
    :goto_28
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2a
    iget-object v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@2c
    .line 1173
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v4

    #@32
    const/high16 v5, 0x7fc00000    # Float.NaN

    #@34
    :cond_34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_5b

    #@3a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v6

    #@3e
    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@40
    .line 1174
    iget-object v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@42
    if-eqz v7, :cond_34

    #@44
    .line 1175
    iget v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@46
    cmpg-float v7, v7, p1

    #@48
    if-gez v7, :cond_52

    #@4a
    .line 1176
    iget-object v0, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@4c
    .line 1177
    iget v3, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@4e
    move v10, v3

    #@4f
    move-object v3, v0

    #@50
    move v0, v10

    #@51
    goto :goto_34

    #@52
    .line 1179
    :cond_52
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_34

    #@58
    .line 1180
    iget v5, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@5a
    goto :goto_34

    #@5b
    :cond_5b
    if-eqz v3, :cond_79

    #@5d
    .line 1187
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_64

    #@63
    goto :goto_65

    #@64
    :cond_64
    move v2, v5

    #@65
    :goto_65
    sub-float/2addr p1, v0

    #@66
    sub-float/2addr v2, v0

    #@67
    div-float/2addr p1, v2

    #@68
    float-to-double v4, p1

    #@69
    .line 1191
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@6c
    move-result-wide v6

    #@6d
    double-to-float p1, v6

    #@6e
    mul-float/2addr p1, v2

    #@6f
    add-float/2addr p1, v0

    #@70
    if-eqz p2, :cond_79

    #@72
    .line 1194
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    #@75
    move-result-wide v2

    #@76
    double-to-float v0, v2

    #@77
    aput v0, p2, v1

    #@79
    :cond_79
    return p1
.end method

.method private static getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;
    .registers 3

    #@0
    const/4 p2, -0x1

    #@1
    if-eq p0, p2, :cond_5

    #@3
    const/4 p0, 0x0

    #@4
    return-object p0

    #@5
    .line 1102
    :cond_5
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@8
    move-result-object p0

    #@9
    .line 1103
    new-instance p1, Landroidx/constraintlayout/core/motion/Motion$1;

    #@b
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/motion/Motion$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    #@e
    return-object p1
.end method

.method private getPreCycleDistance()F
    .registers 21

    #@0
    move-object/from16 v0, p0

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [F

    #@5
    const/16 v2, 0x63

    #@7
    int-to-float v2, v2

    #@8
    const/high16 v9, 0x3f800000    # 1.0f

    #@a
    div-float v10, v9, v2

    #@c
    const-wide/16 v2, 0x0

    #@e
    const/4 v12, 0x0

    #@f
    move-wide v13, v2

    #@10
    move-wide v15, v13

    #@11
    move v8, v12

    #@12
    const/4 v7, 0x0

    #@13
    :goto_13
    const/16 v2, 0x64

    #@15
    if-ge v8, v2, :cond_aa

    #@17
    int-to-float v2, v8

    #@18
    mul-float/2addr v2, v10

    #@19
    float-to-double v3, v2

    #@1a
    .line 425
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@1c
    iget-object v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@1e
    .line 428
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v6

    #@24
    const/high16 v17, 0x7fc00000    # Float.NaN

    #@26
    const/16 v18, 0x0

    #@28
    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v19

    #@2c
    if-eqz v19, :cond_54

    #@2e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v19

    #@32
    move-object/from16 v9, v19

    #@34
    check-cast v9, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@36
    .line 429
    iget-object v11, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@38
    if-eqz v11, :cond_51

    #@3a
    .line 430
    iget v11, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@3c
    cmpg-float v11, v11, v2

    #@3e
    if-gez v11, :cond_47

    #@40
    .line 431
    iget-object v5, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@42
    .line 432
    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@44
    move/from16 v18, v9

    #@46
    goto :goto_51

    #@47
    .line 434
    :cond_47
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    #@4a
    move-result v11

    #@4b
    if-eqz v11, :cond_51

    #@4d
    .line 435
    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@4f
    move/from16 v17, v9

    #@51
    :cond_51
    :goto_51
    const/high16 v9, 0x3f800000    # 1.0f

    #@53
    goto :goto_28

    #@54
    :cond_54
    if-eqz v5, :cond_70

    #@56
    .line 442
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_5e

    #@5c
    const/high16 v17, 0x3f800000    # 1.0f

    #@5e
    :cond_5e
    sub-float v2, v2, v18

    #@60
    sub-float v17, v17, v18

    #@62
    div-float v2, v2, v17

    #@64
    float-to-double v2, v2

    #@65
    .line 446
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@68
    move-result-wide v2

    #@69
    double-to-float v2, v2

    #@6a
    mul-float v2, v2, v17

    #@6c
    add-float v2, v2, v18

    #@6e
    float-to-double v2, v2

    #@6f
    move-wide v3, v2

    #@70
    .line 451
    :cond_70
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@72
    aget-object v2, v2, v12

    #@74
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@76
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@79
    .line 452
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@7b
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@7d
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@7f
    const/4 v9, 0x0

    #@80
    move v11, v7

    #@81
    move-object v7, v1

    #@82
    move/from16 v17, v8

    #@84
    move v8, v9

    #@85
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    #@88
    const/4 v2, 0x1

    #@89
    if-lez v17, :cond_9c

    #@8b
    float-to-double v3, v11

    #@8c
    aget v5, v1, v2

    #@8e
    float-to-double v5, v5

    #@8f
    sub-double v5, v15, v5

    #@91
    aget v7, v1, v12

    #@93
    float-to-double v7, v7

    #@94
    sub-double/2addr v13, v7

    #@95
    .line 454
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    #@98
    move-result-wide v5

    #@99
    add-double/2addr v3, v5

    #@9a
    double-to-float v7, v3

    #@9b
    goto :goto_9d

    #@9c
    :cond_9c
    move v7, v11

    #@9d
    :goto_9d
    aget v3, v1, v12

    #@9f
    float-to-double v13, v3

    #@a0
    aget v2, v1, v2

    #@a2
    float-to-double v2, v2

    #@a3
    add-int/lit8 v8, v17, 0x1

    #@a5
    move-wide v15, v2

    #@a6
    const/high16 v9, 0x3f800000    # 1.0f

    #@a8
    goto/16 :goto_13

    #@aa
    :cond_aa
    move v11, v7

    #@ab
    return v11
.end method

.method private insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .registers 7

    #@0
    .line 598
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1d

    #@d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@13
    .line 599
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    #@15
    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    #@17
    cmpl-float v3, v3, v4

    #@19
    if-nez v3, :cond_7

    #@1b
    move-object v1, v2

    #@1c
    goto :goto_7

    #@1d
    :cond_1d
    if-eqz v1, :cond_24

    #@1f
    .line 604
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@24
    .line 606
    :cond_24
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@26
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_48

    #@2c
    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    const-string v2, " KeyPath position \""

    #@30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    const-string v2, "\" outside of range"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    const-string v2, "MotionController"

    #@45
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 610
    :cond_48
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@4a
    neg-int v0, v0

    #@4b
    add-int/lit8 v0, v0, -0x1

    #@4d
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@50
    return-void
.end method

.method private readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .registers 6

    #@0
    .line 971
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@9
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    #@c
    move-result v1

    #@d
    int-to-float v1, v1

    #@e
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@10
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    #@13
    move-result v2

    #@14
    int-to-float v2, v2

    #@15
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@17
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    #@1a
    move-result v3

    #@1b
    int-to-float v3, v3

    #@1c
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    #@1f
    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V
    .registers 3

    #@0
    .line 623
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 614
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5
    return-void
.end method

.method buildBounds([FI)V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p2

    #@4
    add-int/lit8 v2, v1, -0x1

    #@6
    int-to-float v2, v2

    #@7
    const/high16 v3, 0x3f800000    # 1.0f

    #@9
    div-float v2, v3, v2

    #@b
    .line 359
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@d
    const-string v5, "translationX"

    #@f
    if-nez v4, :cond_12

    #@11
    goto :goto_18

    #@12
    :cond_12
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@18
    .line 360
    :goto_18
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@1a
    const-string v6, "translationY"

    #@1c
    if-nez v4, :cond_1f

    #@1e
    goto :goto_25

    #@1f
    :cond_1f
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@25
    .line 361
    :goto_25
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@27
    if-nez v4, :cond_2a

    #@29
    goto :goto_30

    #@2a
    :cond_2a
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@30
    .line 362
    :goto_30
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@32
    if-nez v4, :cond_35

    #@34
    goto :goto_3b

    #@35
    :cond_35
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@3b
    :goto_3b
    const/4 v4, 0x0

    #@3c
    move v5, v4

    #@3d
    :goto_3d
    if-ge v5, v1, :cond_cf

    #@3f
    int-to-float v6, v5

    #@40
    mul-float/2addr v6, v2

    #@41
    .line 366
    iget v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    #@43
    cmpl-float v8, v7, v3

    #@45
    const/4 v9, 0x0

    #@46
    if-eqz v8, :cond_60

    #@48
    .line 367
    iget v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    #@4a
    cmpg-float v10, v6, v8

    #@4c
    if-gez v10, :cond_4f

    #@4e
    move v6, v9

    #@4f
    :cond_4f
    cmpl-float v10, v6, v8

    #@51
    if-lez v10, :cond_60

    #@53
    float-to-double v10, v6

    #@54
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@56
    cmpg-double v10, v10, v12

    #@58
    if-gez v10, :cond_60

    #@5a
    sub-float/2addr v6, v8

    #@5b
    mul-float/2addr v6, v7

    #@5c
    .line 373
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    #@5f
    move-result v6

    #@60
    :cond_60
    float-to-double v7, v6

    #@61
    .line 378
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@63
    iget-object v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@65
    .line 381
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v11

    #@6b
    const/high16 v12, 0x7fc00000    # Float.NaN

    #@6d
    :cond_6d
    :goto_6d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@70
    move-result v13

    #@71
    if-eqz v13, :cond_94

    #@73
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@76
    move-result-object v13

    #@77
    check-cast v13, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@79
    .line 382
    iget-object v14, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@7b
    if-eqz v14, :cond_6d

    #@7d
    .line 383
    iget v14, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@7f
    cmpg-float v14, v14, v6

    #@81
    if-gez v14, :cond_8b

    #@83
    .line 384
    iget-object v9, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@85
    .line 385
    iget v10, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@87
    move v15, v10

    #@88
    move-object v10, v9

    #@89
    move v9, v15

    #@8a
    goto :goto_6d

    #@8b
    .line 387
    :cond_8b
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    #@8e
    move-result v14

    #@8f
    if-eqz v14, :cond_6d

    #@91
    .line 388
    iget v12, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@93
    goto :goto_6d

    #@94
    :cond_94
    if-eqz v10, :cond_a9

    #@96
    .line 395
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    #@99
    move-result v7

    #@9a
    if-eqz v7, :cond_9d

    #@9c
    move v12, v3

    #@9d
    :cond_9d
    sub-float/2addr v6, v9

    #@9e
    sub-float/2addr v12, v9

    #@9f
    div-float/2addr v6, v12

    #@a0
    float-to-double v6, v6

    #@a1
    .line 399
    invoke-virtual {v10, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@a4
    move-result-wide v6

    #@a5
    double-to-float v6, v6

    #@a6
    mul-float/2addr v6, v12

    #@a7
    add-float/2addr v6, v9

    #@a8
    float-to-double v7, v6

    #@a9
    .line 404
    :cond_a9
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@ab
    aget-object v6, v6, v4

    #@ad
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@af
    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@b2
    .line 405
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@b4
    if-eqz v6, :cond_be

    #@b6
    .line 406
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@b8
    array-length v10, v9

    #@b9
    if-lez v10, :cond_be

    #@bb
    .line 407
    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@be
    .line 410
    :cond_be
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@c0
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@c2
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@c4
    mul-int/lit8 v9, v5, 0x2

    #@c6
    move-object/from16 v10, p1

    #@c8
    invoke-virtual {v6, v7, v8, v10, v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

    #@cb
    add-int/lit8 v5, v5, 0x1

    #@cd
    goto/16 :goto_3d

    #@cf
    :cond_cf
    return-void
.end method

.method buildKeyBounds([F[I)I
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_49

    #@3
    .line 512
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@5
    aget-object v1, v1, v0

    #@7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    #@a
    move-result-object v1

    #@b
    if-eqz p2, :cond_28

    #@d
    .line 514
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    move v3, v0

    #@14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_28

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@20
    add-int/lit8 v5, v3, 0x1

    #@22
    .line 515
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    #@24
    aput v4, p2, v3

    #@26
    move v3, v5

    #@27
    goto :goto_14

    #@28
    :cond_28
    move p2, v0

    #@29
    move v2, p2

    #@2a
    .line 520
    :goto_2a
    array-length v3, v1

    #@2b
    if-ge p2, v3, :cond_46

    #@2d
    .line 521
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2f
    aget-object v3, v3, v0

    #@31
    aget-wide v4, v1, p2

    #@33
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@35
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@38
    .line 522
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@3a
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@3c
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@3e
    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

    #@41
    add-int/lit8 v2, v2, 0x2

    #@43
    add-int/lit8 p2, p2, 0x1

    #@45
    goto :goto_2a

    #@46
    .line 525
    :cond_46
    div-int/lit8 v2, v2, 0x2

    #@48
    return v2

    #@49
    :cond_49
    return v0
.end method

.method public buildKeyFrames([F[I[I)I
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_6e

    #@3
    .line 486
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@5
    aget-object v1, v1, v0

    #@7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    #@a
    move-result-object v1

    #@b
    if-eqz p2, :cond_28

    #@d
    .line 488
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    move v3, v0

    #@14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_28

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@20
    add-int/lit8 v5, v3, 0x1

    #@22
    .line 489
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    #@24
    aput v4, p2, v3

    #@26
    move v3, v5

    #@27
    goto :goto_14

    #@28
    :cond_28
    if-eqz p3, :cond_49

    #@2a
    .line 494
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object p2

    #@30
    move v2, v0

    #@31
    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_49

    #@37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@3d
    add-int/lit8 v4, v2, 0x1

    #@3f
    const/high16 v5, 0x42c80000    # 100.0f

    #@41
    .line 495
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    #@43
    mul-float/2addr v3, v5

    #@44
    float-to-int v3, v3

    #@45
    aput v3, p3, v2

    #@47
    move v2, v4

    #@48
    goto :goto_31

    #@49
    :cond_49
    move p2, v0

    #@4a
    move p3, p2

    #@4b
    .line 499
    :goto_4b
    array-length v2, v1

    #@4c
    if-ge p2, v2, :cond_6b

    #@4e
    .line 500
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@50
    aget-object v2, v2, v0

    #@52
    aget-wide v3, v1, p2

    #@54
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@56
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@59
    .line 501
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@5b
    aget-wide v3, v1, p2

    #@5d
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@5f
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@61
    move-object v7, p1

    #@62
    move v8, p3

    #@63
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    #@66
    add-int/lit8 p3, p3, 0x2

    #@68
    add-int/lit8 p2, p2, 0x1

    #@6a
    goto :goto_4b

    #@6b
    .line 504
    :cond_6b
    div-int/lit8 p3, p3, 0x2

    #@6d
    return p3

    #@6e
    :cond_6e
    return v0
.end method

.method public buildPath([FI)V
    .registers 21

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v8, p2

    #@4
    add-int/lit8 v1, v8, -0x1

    #@6
    int-to-float v1, v1

    #@7
    const/high16 v9, 0x3f800000    # 1.0f

    #@9
    div-float v10, v9, v1

    #@b
    .line 272
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@d
    const-string v2, "translationX"

    #@f
    const/4 v3, 0x0

    #@10
    if-nez v1, :cond_14

    #@12
    move-object v11, v3

    #@13
    goto :goto_1b

    #@14
    :cond_14
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@1a
    move-object v11, v1

    #@1b
    .line 273
    :goto_1b
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@1d
    const-string v4, "translationY"

    #@1f
    if-nez v1, :cond_23

    #@21
    move-object v12, v3

    #@22
    goto :goto_2a

    #@23
    :cond_23
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@29
    move-object v12, v1

    #@2a
    .line 274
    :goto_2a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@2c
    if-nez v1, :cond_30

    #@2e
    move-object v13, v3

    #@2f
    goto :goto_37

    #@30
    :cond_30
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@36
    move-object v13, v1

    #@37
    .line 275
    :goto_37
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@39
    if-nez v1, :cond_3c

    #@3b
    goto :goto_43

    #@3c
    :cond_3c
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    move-object v3, v1

    #@41
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@43
    :goto_43
    move-object v14, v3

    #@44
    const/4 v7, 0x0

    #@45
    :goto_45
    if-ge v7, v8, :cond_11a

    #@47
    int-to-float v1, v7

    #@48
    mul-float/2addr v1, v10

    #@49
    .line 279
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    #@4b
    cmpl-float v3, v2, v9

    #@4d
    const/4 v4, 0x0

    #@4e
    if-eqz v3, :cond_68

    #@50
    .line 280
    iget v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    #@52
    cmpg-float v5, v1, v3

    #@54
    if-gez v5, :cond_57

    #@56
    move v1, v4

    #@57
    :cond_57
    cmpl-float v5, v1, v3

    #@59
    if-lez v5, :cond_68

    #@5b
    float-to-double v5, v1

    #@5c
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    #@5e
    cmpg-double v5, v5, v16

    #@60
    if-gez v5, :cond_68

    #@62
    sub-float/2addr v1, v3

    #@63
    mul-float/2addr v1, v2

    #@64
    .line 286
    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    #@67
    move-result v1

    #@68
    :cond_68
    move v6, v1

    #@69
    float-to-double v1, v6

    #@6a
    .line 291
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@6c
    iget-object v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@6e
    .line 294
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@70
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@73
    move-result-object v5

    #@74
    const/high16 v16, 0x7fc00000    # Float.NaN

    #@76
    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@79
    move-result v17

    #@7a
    if-eqz v17, :cond_a0

    #@7c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7f
    move-result-object v17

    #@80
    move-object/from16 v9, v17

    #@82
    check-cast v9, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@84
    .line 295
    iget-object v15, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@86
    if-eqz v15, :cond_9d

    #@88
    .line 296
    iget v15, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@8a
    cmpg-float v15, v15, v6

    #@8c
    if-gez v15, :cond_93

    #@8e
    .line 297
    iget-object v3, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@90
    .line 298
    iget v4, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@92
    goto :goto_9d

    #@93
    .line 300
    :cond_93
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    #@96
    move-result v15

    #@97
    if-eqz v15, :cond_9d

    #@99
    .line 301
    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@9b
    move/from16 v16, v9

    #@9d
    :cond_9d
    :goto_9d
    const/high16 v9, 0x3f800000    # 1.0f

    #@9f
    goto :goto_76

    #@a0
    :cond_a0
    if-eqz v3, :cond_ba

    #@a2
    .line 308
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    #@a5
    move-result v1

    #@a6
    if-eqz v1, :cond_aa

    #@a8
    const/high16 v16, 0x3f800000    # 1.0f

    #@aa
    :cond_aa
    sub-float v1, v6, v4

    #@ac
    sub-float v16, v16, v4

    #@ae
    div-float v1, v1, v16

    #@b0
    float-to-double v1, v1

    #@b1
    .line 312
    invoke-virtual {v3, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@b4
    move-result-wide v1

    #@b5
    double-to-float v1, v1

    #@b6
    mul-float v1, v1, v16

    #@b8
    add-float/2addr v1, v4

    #@b9
    float-to-double v1, v1

    #@ba
    :cond_ba
    move-wide v2, v1

    #@bb
    .line 317
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@bd
    const/4 v9, 0x0

    #@be
    aget-object v1, v1, v9

    #@c0
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@c2
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@c5
    .line 318
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@c7
    if-eqz v1, :cond_d1

    #@c9
    .line 319
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@cb
    array-length v5, v4

    #@cc
    if-lez v5, :cond_d1

    #@ce
    .line 320
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@d1
    .line 323
    :cond_d1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@d3
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@d5
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@d7
    mul-int/lit8 v15, v7, 0x2

    #@d9
    move v9, v6

    #@da
    move-object/from16 v6, p1

    #@dc
    move/from16 v16, v7

    #@de
    move v7, v15

    #@df
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    #@e2
    if-eqz v13, :cond_ee

    #@e4
    .line 326
    aget v1, p1, v15

    #@e6
    invoke-virtual {v13, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    #@e9
    move-result v2

    #@ea
    add-float/2addr v1, v2

    #@eb
    aput v1, p1, v15

    #@ed
    goto :goto_f9

    #@ee
    :cond_ee
    if-eqz v11, :cond_f9

    #@f0
    .line 328
    aget v1, p1, v15

    #@f2
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    #@f5
    move-result v2

    #@f6
    add-float/2addr v1, v2

    #@f7
    aput v1, p1, v15

    #@f9
    :cond_f9
    :goto_f9
    if-eqz v14, :cond_107

    #@fb
    add-int/lit8 v15, v15, 0x1

    #@fd
    .line 331
    aget v1, p1, v15

    #@ff
    invoke-virtual {v14, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    #@102
    move-result v2

    #@103
    add-float/2addr v1, v2

    #@104
    aput v1, p1, v15

    #@106
    goto :goto_114

    #@107
    :cond_107
    if-eqz v12, :cond_114

    #@109
    add-int/lit8 v15, v15, 0x1

    #@10b
    .line 333
    aget v1, p1, v15

    #@10d
    invoke-virtual {v12, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    #@110
    move-result v2

    #@111
    add-float/2addr v1, v2

    #@112
    aput v1, p1, v15

    #@114
    :cond_114
    :goto_114
    add-int/lit8 v7, v16, 0x1

    #@116
    const/high16 v9, 0x3f800000    # 1.0f

    #@118
    goto/16 :goto_45

    #@11a
    :cond_11a
    return-void
.end method

.method public buildRect(F[FI)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 545
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    #@4
    move-result p1

    #@5
    .line 546
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@7
    const/4 v1, 0x0

    #@8
    aget-object v0, v0, v1

    #@a
    float-to-double v1, p1

    #@b
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@d
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@10
    .line 547
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@12
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@14
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@16
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

    #@19
    return-void
.end method

.method buildRectangles([FI)V
    .registers 10

    #@0
    add-int/lit8 v0, p2, -0x1

    #@2
    int-to-float v0, v0

    #@3
    const/high16 v1, 0x3f800000    # 1.0f

    #@5
    div-float/2addr v1, v0

    #@6
    const/4 v0, 0x0

    #@7
    move v2, v0

    #@8
    :goto_8
    if-ge v2, p2, :cond_29

    #@a
    int-to-float v3, v2

    #@b
    mul-float/2addr v3, v1

    #@c
    const/4 v4, 0x0

    #@d
    .line 554
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    #@10
    move-result v3

    #@11
    .line 555
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@13
    aget-object v4, v4, v0

    #@15
    float-to-double v5, v3

    #@16
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@18
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@1b
    .line 556
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@1d
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@1f
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@21
    mul-int/lit8 v6, v2, 0x8

    #@23
    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_8

    #@29
    :cond_29
    return-void
.end method

.method endTrigger(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public getAnimateRelativeTo()I
    .registers 2

    #@0
    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    #@4
    return v0
.end method

.method getAttributeValues(Ljava/lang/String;[FI)I
    .registers 5

    #@0
    .line 534
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, -0x1

    #@b
    return p1

    #@c
    :cond_c
    const/4 p3, 0x0

    #@d
    .line 538
    :goto_d
    array-length v0, p2

    #@e
    if-ge p3, v0, :cond_1f

    #@10
    .line 539
    array-length v0, p2

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    div-int v0, p3, v0

    #@15
    int-to-float v0, v0

    #@16
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    #@19
    move-result v0

    #@1a
    aput v0, p2, p3

    #@1c
    add-int/lit8 p3, p3, 0x1

    #@1e
    goto :goto_d

    #@1f
    .line 541
    :cond_1f
    array-length p1, p2

    #@20
    return p1
.end method

.method public getCenter(D[F[F)V
    .registers 14

    #@0
    const/4 v0, 0x4

    #@1
    new-array v5, v0, [D

    #@3
    new-array v7, v0, [D

    #@5
    .line 255
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@7
    const/4 v1, 0x0

    #@8
    aget-object v0, v0, v1

    #@a
    invoke-virtual {v0, p1, p2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@d
    .line 256
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@f
    aget-object v0, v0, v1

    #@11
    invoke-virtual {v0, p1, p2, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@14
    const/4 v0, 0x0

    #@15
    .line 257
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([FF)V

    #@18
    .line 258
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@1a
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@1c
    move-wide v2, p1

    #@1d
    move-object v6, p3

    #@1e
    move-object v8, p4

    #@1f
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[F[D[F)V

    #@22
    return-void
.end method

.method public getCenterX()F
    .registers 2

    #@0
    .line 244
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterX:F

    #@2
    return v0
.end method

.method public getCenterY()F
    .registers 2

    #@0
    .line 248
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterY:F

    #@2
    return v0
.end method

.method getDpDt(FFF[F)V
    .registers 16

    #@0
    .line 1379
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    #@2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    #@5
    move-result p1

    #@6
    .line 1381
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz v0, :cond_5d

    #@b
    .line 1382
    aget-object v0, v0, v1

    #@d
    float-to-double v2, p1

    #@e
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@10
    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@13
    .line 1383
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@15
    aget-object p1, p1, v1

    #@17
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@19
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@1c
    .line 1384
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    #@1e
    aget p1, p1, v1

    #@20
    .line 1385
    :goto_20
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@22
    array-length v0, v9

    #@23
    if-ge v1, v0, :cond_2e

    #@25
    .line 1386
    aget-wide v4, v9, v1

    #@27
    float-to-double v6, p1

    #@28
    mul-double/2addr v4, v6

    #@29
    aput-wide v4, v9, v1

    #@2b
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_20

    #@2e
    .line 1389
    :cond_2e
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@30
    if-eqz p1, :cond_50

    #@32
    .line 1390
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@34
    array-length v1, v0

    #@35
    if-lez v1, :cond_4f

    #@37
    .line 1391
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@3a
    .line 1392
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@3c
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@3e
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@41
    .line 1393
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@43
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@45
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@47
    iget-object v10, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@49
    move v5, p2

    #@4a
    move v6, p3

    #@4b
    move-object v7, p4

    #@4c
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    #@4f
    :cond_4f
    return-void

    #@50
    .line 1397
    :cond_50
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@52
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@54
    iget-object v10, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@56
    move v5, p2

    #@57
    move v6, p3

    #@58
    move-object v7, p4

    #@59
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    #@5c
    return-void

    #@5d
    .line 1401
    :cond_5d
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@5f
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@61
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@63
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@65
    sub-float/2addr p1, v0

    #@66
    .line 1402
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@68
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@6a
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@6c
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@6e
    sub-float/2addr v0, v2

    #@6f
    .line 1403
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@71
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@73
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@75
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@77
    sub-float/2addr v2, v3

    #@78
    .line 1404
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@7a
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@7c
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@7e
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@80
    sub-float/2addr v3, v4

    #@81
    add-float/2addr v2, p1

    #@82
    add-float/2addr v3, v0

    #@83
    const/high16 v4, 0x3f800000    # 1.0f

    #@85
    sub-float v5, v4, p2

    #@87
    mul-float/2addr p1, v5

    #@88
    mul-float/2addr v2, p2

    #@89
    add-float/2addr p1, v2

    #@8a
    .line 1407
    aput p1, p4, v1

    #@8c
    sub-float/2addr v4, p3

    #@8d
    mul-float/2addr v0, v4

    #@8e
    mul-float/2addr v3, p3

    #@8f
    add-float/2addr v0, v3

    #@90
    const/4 p1, 0x1

    #@91
    .line 1408
    aput v0, p4, p1

    #@93
    return-void
.end method

.method public getDrawPath()I
    .registers 4

    #@0
    .line 1492
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    #@4
    .line 1493
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1d

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@16
    .line 1494
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    #@18
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v0

    #@1c
    goto :goto_a

    #@1d
    .line 1496
    :cond_1d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@1f
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    #@21
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@24
    move-result v0

    #@25
    return v0
.end method

.method public getFinalHeight()F
    .registers 2

    #@0
    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@4
    return v0
.end method

.method public getFinalWidth()F
    .registers 2

    #@0
    .line 215
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@4
    return v0
.end method

.method public getFinalX()F
    .registers 2

    #@0
    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@4
    return v0
.end method

.method public getFinalY()F
    .registers 2

    #@0
    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@4
    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public getKeyFrame(I)Landroidx/constraintlayout/core/motion/MotionPaths;
    .registers 3

    #@0
    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@8
    return-object p1
.end method

.method public getKeyFrameInfo(I[I)I
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    const/4 v2, 0x2

    #@5
    new-array v2, v2, [F

    #@7
    .line 1564
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v10

    #@d
    const/4 v11, 0x0

    #@e
    move v12, v11

    #@f
    move v13, v12

    #@10
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_92

    #@16
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    move-object v14, v3

    #@1b
    check-cast v14, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@1d
    .line 1565
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    #@1f
    if-eq v3, v1, :cond_25

    #@21
    const/4 v3, -0x1

    #@22
    if-ne v1, v3, :cond_25

    #@24
    goto :goto_10

    #@25
    .line 1569
    :cond_25
    aput v11, p2, v13

    #@27
    add-int/lit8 v3, v13, 0x1

    #@29
    .line 1571
    iget v4, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    #@2b
    aput v4, p2, v3

    #@2d
    const/4 v15, 0x1

    #@2e
    add-int/lit8 v16, v3, 0x1

    #@30
    .line 1572
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@32
    aput v3, p2, v16

    #@34
    .line 1574
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@36
    int-to-float v3, v3

    #@37
    const/high16 v4, 0x42c80000    # 100.0f

    #@39
    div-float/2addr v3, v4

    #@3a
    .line 1575
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@3c
    aget-object v4, v4, v11

    #@3e
    float-to-double v5, v3

    #@3f
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@41
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@44
    .line 1576
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@46
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@48
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@4a
    const/4 v9, 0x0

    #@4b
    move-wide v4, v5

    #@4c
    move-object v6, v7

    #@4d
    move-object v7, v8

    #@4e
    move-object v8, v2

    #@4f
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    #@52
    add-int/lit8 v16, v16, 0x1

    #@54
    aget v3, v2, v11

    #@56
    .line 1577
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@59
    move-result v3

    #@5a
    aput v3, p2, v16

    #@5c
    add-int/lit8 v16, v16, 0x1

    #@5e
    aget v3, v2, v15

    #@60
    .line 1578
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@63
    move-result v3

    #@64
    aput v3, p2, v16

    #@66
    .line 1579
    instance-of v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    #@68
    if-eqz v3, :cond_86

    #@6a
    .line 1580
    check-cast v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    #@6c
    add-int/lit8 v16, v16, 0x1

    #@6e
    .line 1581
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    #@70
    aput v3, p2, v16

    #@72
    add-int/lit8 v16, v16, 0x1

    #@74
    .line 1583
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@76
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@79
    move-result v3

    #@7a
    aput v3, p2, v16

    #@7c
    add-int/lit8 v16, v16, 0x1

    #@7e
    .line 1584
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    #@80
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@83
    move-result v3

    #@84
    aput v3, p2, v16

    #@86
    :cond_86
    add-int/lit8 v16, v16, 0x1

    #@88
    sub-int v3, v16, v13

    #@8a
    .line 1587
    aput v3, p2, v13

    #@8c
    add-int/lit8 v12, v12, 0x1

    #@8e
    move/from16 v13, v16

    #@90
    goto/16 :goto_10

    #@92
    :cond_92
    return v12
.end method

.method getKeyFrameParameter(IFF)F
    .registers 13

    #@0
    .line 562
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@6
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@8
    sub-float/2addr v0, v1

    #@9
    .line 563
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@b
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@d
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@f
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@11
    sub-float/2addr v1, v2

    #@12
    .line 564
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@14
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@16
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@18
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@1a
    const/high16 v4, 0x40000000    # 2.0f

    #@1c
    div-float/2addr v3, v4

    #@1d
    add-float/2addr v2, v3

    #@1e
    .line 565
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@20
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@22
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@24
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@26
    div-float/2addr v5, v4

    #@27
    add-float/2addr v3, v5

    #@28
    float-to-double v4, v0

    #@29
    float-to-double v6, v1

    #@2a
    .line 566
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    #@2d
    move-result-wide v4

    #@2e
    double-to-float v4, v4

    #@2f
    float-to-double v5, v4

    #@30
    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    #@35
    cmpg-double v5, v5, v7

    #@37
    if-gez v5, :cond_3c

    #@39
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@3b
    return p1

    #@3c
    :cond_3c
    sub-float/2addr p2, v2

    #@3d
    sub-float/2addr p3, v3

    #@3e
    float-to-double v2, p2

    #@3f
    float-to-double v5, p3

    #@40
    .line 573
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    #@43
    move-result-wide v2

    #@44
    double-to-float v2, v2

    #@45
    const/4 v3, 0x0

    #@46
    cmpl-float v2, v2, v3

    #@48
    if-nez v2, :cond_4b

    #@4a
    return v3

    #@4b
    :cond_4b
    mul-float v2, p2, v0

    #@4d
    mul-float v5, p3, v1

    #@4f
    add-float/2addr v2, v5

    #@50
    if-eqz p1, :cond_74

    #@52
    const/4 v5, 0x1

    #@53
    if-eq p1, v5, :cond_6a

    #@55
    const/4 v2, 0x2

    #@56
    if-eq p1, v2, :cond_68

    #@58
    const/4 v2, 0x3

    #@59
    if-eq p1, v2, :cond_66

    #@5b
    const/4 v0, 0x4

    #@5c
    if-eq p1, v0, :cond_64

    #@5e
    const/4 p2, 0x5

    #@5f
    if-eq p1, p2, :cond_62

    #@61
    return v3

    #@62
    :cond_62
    div-float/2addr p3, v1

    #@63
    return p3

    #@64
    :cond_64
    div-float/2addr p2, v1

    #@65
    return p2

    #@66
    :cond_66
    div-float/2addr p3, v0

    #@67
    return p3

    #@68
    :cond_68
    div-float/2addr p2, v0

    #@69
    return p2

    #@6a
    :cond_6a
    mul-float/2addr v4, v4

    #@6b
    mul-float/2addr v2, v2

    #@6c
    sub-float/2addr v4, v2

    #@6d
    float-to-double p1, v4

    #@6e
    .line 583
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    #@71
    move-result-wide p1

    #@72
    double-to-float p1, p1

    #@73
    return p1

    #@74
    :cond_74
    div-float/2addr v2, v4

    #@75
    return v2
.end method

.method public getKeyFramePositions([I[F)I
    .registers 15

    #@0
    .line 1533
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    move v10, v2

    #@9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_3f

    #@f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@15
    add-int/lit8 v11, v2, 0x1

    #@17
    .line 1534
    iget v4, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@19
    iget v5, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    #@1b
    mul-int/lit16 v5, v5, 0x3e8

    #@1d
    add-int/2addr v4, v5

    #@1e
    aput v4, p1, v2

    #@20
    .line 1535
    iget v2, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@22
    int-to-float v2, v2

    #@23
    const/high16 v3, 0x42c80000    # 100.0f

    #@25
    div-float/2addr v2, v3

    #@26
    .line 1536
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@28
    aget-object v3, v3, v1

    #@2a
    float-to-double v4, v2

    #@2b
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@2d
    invoke-virtual {v3, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@30
    .line 1537
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@32
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@34
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@36
    move-object v8, p2

    #@37
    move v9, v10

    #@38
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    #@3b
    add-int/lit8 v10, v10, 0x2

    #@3d
    move v2, v11

    #@3e
    goto :goto_9

    #@3f
    :cond_3f
    return v2
.end method

.method getPos(D)[D
    .registers 6

    #@0
    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@7
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@a
    .line 340
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@c
    if-eqz v0, :cond_16

    #@e
    .line 341
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@10
    array-length v2, v1

    #@11
    if-lez v2, :cond_16

    #@13
    .line 342
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@16
    .line 345
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@18
    return-object p1
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    .registers 16

    #@0
    .line 463
    new-instance v7, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@2
    invoke-direct {v7}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    #@5
    .line 464
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@7
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@9
    iput v0, v7, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@b
    .line 465
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@d
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@f
    iput v0, v7, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@11
    .line 466
    iget v0, v7, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@13
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@15
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@17
    add-float/2addr v0, v1

    #@18
    iput v0, v7, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    #@1a
    .line 467
    iget v0, v7, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@1c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@1e
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@20
    add-float/2addr v0, v1

    #@21
    iput v0, v7, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    #@23
    .line 468
    new-instance v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@25
    invoke-direct {v8}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    #@28
    .line 469
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2a
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@2c
    iput v0, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@2e
    .line 470
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@30
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@32
    iput v0, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@34
    .line 471
    iget v0, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@36
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@38
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@3a
    add-float/2addr v0, v1

    #@3b
    iput v0, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    #@3d
    .line 472
    iget v0, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@3f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@41
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@43
    add-float/2addr v0, v1

    #@44
    iput v0, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    #@46
    .line 473
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v9

    #@4c
    :cond_4c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_6d

    #@52
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@58
    .line 474
    instance-of v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    #@5a
    if-eqz v1, :cond_4c

    #@5c
    .line 475
    move-object v10, v0

    #@5d
    check-cast v10, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    #@5f
    move-object v0, v10

    #@60
    move v1, p1

    #@61
    move v2, p2

    #@62
    move-object v3, v7

    #@63
    move-object v4, v8

    #@64
    move v5, p3

    #@65
    move v6, p4

    #@66
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->intersects(IILandroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF)Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_4c

    #@6c
    return-object v10

    #@6d
    :cond_6d
    const/4 p1, 0x0

    #@6e
    return-object p1
.end method

.method getPostLayoutDvDp(FIIFF[F)V
    .registers 26

    #@0
    move-object/from16 v0, p0

    #@2
    .line 1426
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    #@4
    move/from16 v2, p1

    #@6
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    #@9
    move-result v1

    #@a
    .line 1428
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@c
    const-string v3, "translationX"

    #@e
    const/4 v4, 0x0

    #@f
    if-nez v2, :cond_13

    #@11
    move-object v2, v4

    #@12
    goto :goto_19

    #@13
    :cond_13
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@19
    .line 1429
    :goto_19
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@1b
    const-string v6, "translationY"

    #@1d
    if-nez v5, :cond_21

    #@1f
    move-object v5, v4

    #@20
    goto :goto_27

    #@21
    :cond_21
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@27
    .line 1430
    :goto_27
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@29
    const-string v8, "rotationZ"

    #@2b
    if-nez v7, :cond_2f

    #@2d
    move-object v7, v4

    #@2e
    goto :goto_35

    #@2f
    :cond_2f
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v7

    #@33
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@35
    .line 1431
    :goto_35
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@37
    const-string v10, "scaleX"

    #@39
    if-nez v9, :cond_3d

    #@3b
    move-object v9, v4

    #@3c
    goto :goto_43

    #@3d
    :cond_3d
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v9

    #@41
    check-cast v9, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@43
    .line 1432
    :goto_43
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@45
    const-string v12, "scaleY"

    #@47
    if-nez v11, :cond_4b

    #@49
    move-object v11, v4

    #@4a
    goto :goto_51

    #@4b
    :cond_4b
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v11

    #@4f
    check-cast v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@51
    .line 1434
    :goto_51
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@53
    if-nez v13, :cond_57

    #@55
    move-object v3, v4

    #@56
    goto :goto_5d

    #@57
    :cond_57
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v3

    #@5b
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@5d
    .line 1435
    :goto_5d
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@5f
    if-nez v13, :cond_63

    #@61
    move-object v6, v4

    #@62
    goto :goto_69

    #@63
    :cond_63
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    move-result-object v6

    #@67
    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@69
    .line 1436
    :goto_69
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@6b
    if-nez v13, :cond_6f

    #@6d
    move-object v8, v4

    #@6e
    goto :goto_75

    #@6f
    :cond_6f
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v8

    #@73
    check-cast v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@75
    .line 1437
    :goto_75
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@77
    if-nez v13, :cond_7b

    #@79
    move-object v10, v4

    #@7a
    goto :goto_81

    #@7b
    :cond_7b
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v10

    #@7f
    check-cast v10, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@81
    .line 1438
    :goto_81
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@83
    if-nez v13, :cond_86

    #@85
    goto :goto_8c

    #@86
    :cond_86
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    move-result-object v4

    #@8a
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@8c
    .line 1440
    :goto_8c
    new-instance v12, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    #@8e
    invoke-direct {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    #@91
    .line 1441
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    #@94
    .line 1442
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@97
    .line 1443
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@9a
    .line 1444
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@9d
    .line 1445
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@a0
    .line 1446
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@a3
    .line 1447
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@a6
    .line 1448
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@a8
    if-eqz v13, :cond_da

    #@aa
    .line 1449
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@ac
    array-length v3, v2

    #@ad
    if-lez v3, :cond_cb

    #@af
    float-to-double v3, v1

    #@b0
    .line 1450
    invoke-virtual {v13, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@b3
    .line 1451
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@b5
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@b7
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@ba
    .line 1452
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@bc
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@be
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@c0
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@c2
    move/from16 v2, p4

    #@c4
    move/from16 v3, p5

    #@c6
    move-object/from16 v4, p6

    #@c8
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    #@cb
    :cond_cb
    move-object v1, v12

    #@cc
    move/from16 v2, p4

    #@ce
    move/from16 v3, p5

    #@d0
    move/from16 v4, p2

    #@d2
    move/from16 v5, p3

    #@d4
    move-object/from16 v6, p6

    #@d6
    .line 1454
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    #@d9
    return-void

    #@da
    .line 1457
    :cond_da
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@dc
    const/4 v14, 0x0

    #@dd
    if-eqz v13, :cond_124

    #@df
    .line 1458
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    #@e1
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    #@e4
    move-result v1

    #@e5
    .line 1459
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@e7
    aget-object v2, v2, v14

    #@e9
    float-to-double v3, v1

    #@ea
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@ec
    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@ef
    .line 1460
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@f1
    aget-object v1, v1, v14

    #@f3
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@f5
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@f8
    .line 1461
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    #@fa
    aget v1, v1, v14

    #@fc
    .line 1462
    :goto_fc
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@fe
    array-length v2, v6

    #@ff
    if-ge v14, v2, :cond_10a

    #@101
    .line 1463
    aget-wide v2, v6, v14

    #@103
    float-to-double v4, v1

    #@104
    mul-double/2addr v2, v4

    #@105
    aput-wide v2, v6, v14

    #@107
    add-int/lit8 v14, v14, 0x1

    #@109
    goto :goto_fc

    #@10a
    .line 1465
    :cond_10a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@10c
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@10e
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@110
    move/from16 v2, p4

    #@112
    move/from16 v3, p5

    #@114
    move-object/from16 v4, p6

    #@116
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    #@119
    move-object v1, v12

    #@11a
    move/from16 v4, p2

    #@11c
    move/from16 v5, p3

    #@11e
    move-object/from16 v6, p6

    #@120
    .line 1466
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    #@123
    return-void

    #@124
    .line 1471
    :cond_124
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@126
    iget v13, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@128
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@12a
    iget v15, v15, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@12c
    sub-float/2addr v13, v15

    #@12d
    .line 1472
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@12f
    iget v15, v15, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@131
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@133
    iget v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@135
    sub-float/2addr v15, v14

    #@136
    .line 1473
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@138
    iget v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@13a
    move-object/from16 v16, v4

    #@13c
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@13e
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@140
    sub-float/2addr v14, v4

    #@141
    .line 1474
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@143
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@145
    move-object/from16 v17, v10

    #@147
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@149
    iget v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@14b
    sub-float/2addr v4, v10

    #@14c
    add-float/2addr v14, v13

    #@14d
    add-float/2addr v4, v15

    #@14e
    const/high16 v10, 0x3f800000    # 1.0f

    #@150
    sub-float v18, v10, p4

    #@152
    mul-float v13, v13, v18

    #@154
    mul-float v14, v14, p4

    #@156
    add-float/2addr v13, v14

    #@157
    const/4 v14, 0x0

    #@158
    .line 1477
    aput v13, p6, v14

    #@15a
    sub-float v10, v10, p5

    #@15c
    mul-float/2addr v15, v10

    #@15d
    mul-float v4, v4, p5

    #@15f
    add-float/2addr v15, v4

    #@160
    const/4 v4, 0x1

    #@161
    .line 1478
    aput v15, p6, v4

    #@163
    .line 1480
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    #@166
    .line 1481
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@169
    .line 1482
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@16c
    .line 1483
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@16f
    .line 1484
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@172
    .line 1485
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@175
    move-object/from16 v4, v16

    #@177
    move-object/from16 v10, v17

    #@179
    .line 1486
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@17c
    move-object v1, v12

    #@17d
    move/from16 v2, p4

    #@17f
    move/from16 v3, p5

    #@181
    move/from16 v4, p2

    #@183
    move/from16 v5, p3

    #@185
    move-object/from16 v6, p6

    #@187
    .line 1487
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    #@18a
    return-void
.end method

.method public getStartHeight()F
    .registers 2

    #@0
    .line 206
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@4
    return v0
.end method

.method public getStartWidth()F
    .registers 2

    #@0
    .line 197
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@4
    return v0
.end method

.method public getStartX()F
    .registers 2

    #@0
    .line 159
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@4
    return v0
.end method

.method public getStartY()F
    .registers 2

    #@0
    .line 169
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@4
    return v0
.end method

.method public getTransformPivotTarget()I
    .registers 2

    #@0
    .line 126
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    #@2
    return v0
.end method

.method public getView()Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 2

    #@0
    .line 979
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@2
    return-object v0
.end method

.method public interpolate(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v8, p1

    #@4
    const/4 v1, 0x0

    #@5
    move/from16 v2, p2

    #@7
    .line 1226
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    #@a
    move-result v1

    #@b
    .line 1228
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    #@d
    const/4 v9, 0x0

    #@e
    const/high16 v10, 0x3f800000    # 1.0f

    #@10
    const/4 v11, -0x1

    #@11
    if-eq v2, v11, :cond_42

    #@13
    int-to-float v2, v2

    #@14
    div-float v2, v10, v2

    #@16
    div-float v3, v1, v2

    #@18
    float-to-double v3, v3

    #@19
    .line 1231
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    #@1c
    move-result-wide v3

    #@1d
    double-to-float v3, v3

    #@1e
    mul-float/2addr v3, v2

    #@1f
    rem-float/2addr v1, v2

    #@20
    div-float/2addr v1, v2

    #@21
    .line 1234
    iget v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    #@23
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_2d

    #@29
    .line 1235
    iget v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    #@2b
    add-float/2addr v1, v4

    #@2c
    rem-float/2addr v1, v10

    #@2d
    .line 1237
    :cond_2d
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    #@2f
    if-eqz v4, :cond_36

    #@31
    .line 1238
    invoke-interface {v4, v1}, Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;->getInterpolation(F)F

    #@34
    move-result v1

    #@35
    goto :goto_40

    #@36
    :cond_36
    float-to-double v4, v1

    #@37
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    #@39
    cmpl-double v1, v4, v6

    #@3b
    if-lez v1, :cond_3f

    #@3d
    move v1, v10

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move v1, v9

    #@40
    :goto_40
    mul-float/2addr v1, v2

    #@41
    add-float/2addr v1, v3

    #@42
    :cond_42
    move v12, v1

    #@43
    .line 1245
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@45
    if-eqz v1, :cond_5f

    #@47
    .line 1246
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4a
    move-result-object v1

    #@4b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v1

    #@4f
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_5f

    #@55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v2

    #@59
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@5b
    .line 1247
    invoke-virtual {v2, v8, v12}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V

    #@5e
    goto :goto_4f

    #@5f
    .line 1262
    :cond_5f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@61
    const/4 v14, 0x0

    #@62
    if-eqz v1, :cond_163

    #@64
    .line 1263
    aget-object v1, v1, v14

    #@66
    float-to-double v6, v12

    #@67
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@69
    invoke-virtual {v1, v6, v7, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@6c
    .line 1264
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@6e
    aget-object v1, v1, v14

    #@70
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@72
    invoke-virtual {v1, v6, v7, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@75
    .line 1265
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@77
    if-eqz v1, :cond_88

    #@79
    .line 1266
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@7b
    array-length v3, v2

    #@7c
    if-lez v3, :cond_88

    #@7e
    .line 1267
    invoke-virtual {v1, v6, v7, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@81
    .line 1268
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@83
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@85
    invoke-virtual {v1, v6, v7, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@88
    .line 1272
    :cond_88
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    #@8a
    if-nez v1, :cond_a1

    #@8c
    .line 1273
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@8e
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@90
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@92
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@94
    const/16 v16, 0x0

    #@96
    move v2, v12

    #@97
    move-object/from16 v3, p1

    #@99
    move-wide v13, v6

    #@9a
    move-object v6, v15

    #@9b
    move-object/from16 v7, v16

    #@9d
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setView(FLandroidx/constraintlayout/core/motion/MotionWidget;[I[D[D[D)V

    #@a0
    goto :goto_a2

    #@a1
    :cond_a1
    move-wide v13, v6

    #@a2
    .line 1275
    :goto_a2
    iget v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    #@a4
    if-eq v1, v11, :cond_100

    #@a6
    .line 1276
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@a8
    if-nez v1, :cond_b6

    #@aa
    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    #@ad
    move-result-object v1

    #@ae
    .line 1278
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    #@b0
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;

    #@b3
    move-result-object v1

    #@b4
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@b6
    .line 1280
    :cond_b6
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@b8
    if-eqz v1, :cond_100

    #@ba
    .line 1281
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    #@bd
    move-result v1

    #@be
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@c0
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    #@c3
    move-result v2

    #@c4
    add-int/2addr v1, v2

    #@c5
    int-to-float v1, v1

    #@c6
    const/high16 v2, 0x40000000    # 2.0f

    #@c8
    div-float/2addr v1, v2

    #@c9
    .line 1282
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@cb
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    #@ce
    move-result v3

    #@cf
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@d1
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    #@d4
    move-result v4

    #@d5
    add-int/2addr v3, v4

    #@d6
    int-to-float v3, v3

    #@d7
    div-float/2addr v3, v2

    #@d8
    .line 1283
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    #@db
    move-result v2

    #@dc
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    #@df
    move-result v4

    #@e0
    sub-int/2addr v2, v4

    #@e1
    if-lez v2, :cond_100

    #@e3
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    #@e6
    move-result v2

    #@e7
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    #@ea
    move-result v4

    #@eb
    sub-int/2addr v2, v4

    #@ec
    if-lez v2, :cond_100

    #@ee
    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    #@f1
    move-result v2

    #@f2
    int-to-float v2, v2

    #@f3
    sub-float/2addr v3, v2

    #@f4
    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    #@f7
    move-result v2

    #@f8
    int-to-float v2, v2

    #@f9
    sub-float/2addr v1, v2

    #@fa
    .line 1286
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotX(F)V

    #@fd
    .line 1287
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotY(F)V

    #@100
    :cond_100
    const/4 v1, 0x1

    #@101
    .line 1306
    :goto_101
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@103
    array-length v3, v2

    #@104
    if-ge v1, v3, :cond_125

    #@106
    .line 1307
    aget-object v2, v2, v1

    #@108
    .line 1308
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    #@10a
    invoke-virtual {v2, v13, v14, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    #@10d
    .line 1310
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@10f
    iget-object v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    #@111
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    #@113
    add-int/lit8 v4, v1, -0x1

    #@115
    aget-object v3, v3, v4

    #@117
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    move-result-object v2

    #@11b
    check-cast v2, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@11d
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    #@11f
    invoke-virtual {v2, v8, v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    #@122
    add-int/lit8 v1, v1, 0x1

    #@124
    goto :goto_101

    #@125
    .line 1312
    :cond_125
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@127
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    #@129
    if-nez v1, :cond_151

    #@12b
    cmpg-float v1, v12, v9

    #@12d
    if-gtz v1, :cond_137

    #@12f
    .line 1314
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@131
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    #@133
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    #@136
    goto :goto_151

    #@137
    :cond_137
    cmpl-float v1, v12, v10

    #@139
    if-ltz v1, :cond_143

    #@13b
    .line 1316
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@13d
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    #@13f
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    #@142
    goto :goto_151

    #@143
    .line 1317
    :cond_143
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@145
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    #@147
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@149
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    #@14b
    if-eq v1, v2, :cond_151

    #@14d
    const/4 v1, 0x4

    #@14e
    .line 1318
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    #@151
    .line 1322
    :cond_151
    :goto_151
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@153
    if-eqz v1, :cond_1ac

    #@155
    const/4 v1, 0x0

    #@156
    .line 1323
    :goto_156
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@158
    array-length v3, v2

    #@159
    if-ge v1, v3, :cond_1ac

    #@15b
    .line 1324
    aget-object v2, v2, v1

    #@15d
    invoke-virtual {v2, v12, v8}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V

    #@160
    add-int/lit8 v1, v1, 0x1

    #@162
    goto :goto_156

    #@163
    .line 1330
    :cond_163
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@165
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@167
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@169
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@16b
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@16d
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@16f
    sub-float/2addr v2, v3

    #@170
    mul-float/2addr v2, v12

    #@171
    add-float/2addr v1, v2

    #@172
    .line 1331
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@174
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@176
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@178
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@17a
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@17c
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@17e
    sub-float/2addr v3, v4

    #@17f
    mul-float/2addr v3, v12

    #@180
    add-float/2addr v2, v3

    #@181
    .line 1332
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@183
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@185
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@187
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@189
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@18b
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@18d
    sub-float/2addr v4, v5

    #@18e
    mul-float/2addr v4, v12

    #@18f
    add-float/2addr v3, v4

    #@190
    .line 1333
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@192
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@194
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@196
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@198
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@19a
    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@19c
    sub-float/2addr v5, v6

    #@19d
    mul-float/2addr v5, v12

    #@19e
    add-float/2addr v4, v5

    #@19f
    const/high16 v5, 0x3f000000    # 0.5f

    #@1a1
    add-float/2addr v1, v5

    #@1a2
    float-to-int v6, v1

    #@1a3
    add-float/2addr v2, v5

    #@1a4
    float-to-int v5, v2

    #@1a5
    add-float/2addr v1, v3

    #@1a6
    float-to-int v1, v1

    #@1a7
    add-float/2addr v2, v4

    #@1a8
    float-to-int v2, v2

    #@1a9
    .line 1350
    invoke-virtual {v8, v6, v5, v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    #@1ac
    .line 1354
    :cond_1ac
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@1ae
    if-eqz v1, :cond_1de

    #@1b0
    .line 1355
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@1b3
    move-result-object v1

    #@1b4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1b7
    move-result-object v9

    #@1b8
    :goto_1b8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@1bb
    move-result v1

    #@1bc
    if-eqz v1, :cond_1de

    #@1be
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c1
    move-result-object v1

    #@1c2
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@1c4
    .line 1356
    instance-of v2, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    #@1c6
    if-eqz v2, :cond_1d9

    #@1c8
    .line 1357
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    #@1ca
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@1cc
    const/4 v3, 0x0

    #@1cd
    aget-wide v4, v2, v3

    #@1cf
    const/4 v10, 0x1

    #@1d0
    aget-wide v6, v2, v10

    #@1d2
    move-object/from16 v2, p1

    #@1d4
    move v3, v12

    #@1d5
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroidx/constraintlayout/core/motion/MotionWidget;FDD)V

    #@1d8
    goto :goto_1b8

    #@1d9
    :cond_1d9
    const/4 v10, 0x1

    #@1da
    .line 1360
    invoke-virtual {v1, v8, v12}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V

    #@1dd
    goto :goto_1b8

    #@1de
    :cond_1de
    const/4 v1, 0x0

    #@1df
    return v1
.end method

.method name()Ljava/lang/String;
    .registers 2

    #@0
    .line 1506
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method positionKeyframe(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;FF[Ljava/lang/String;[F)V
    .registers 15

    #@0
    .line 1510
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@2
    invoke-direct {v2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    #@5
    .line 1511
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@7
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@9
    iput v0, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@b
    .line 1512
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@d
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@f
    iput v0, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@11
    .line 1513
    iget v0, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@13
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@15
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@17
    add-float/2addr v0, v1

    #@18
    iput v0, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    #@1a
    .line 1514
    iget v0, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@1c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@1e
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@20
    add-float/2addr v0, v1

    #@21
    iput v0, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    #@23
    .line 1515
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@25
    invoke-direct {v3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    #@28
    .line 1516
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2a
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@2c
    iput v0, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@2e
    .line 1517
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@30
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@32
    iput v0, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@34
    .line 1518
    iget v0, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    #@36
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@38
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    #@3a
    add-float/2addr v0, v1

    #@3b
    iput v0, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    #@3d
    .line 1519
    iget v0, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    #@3f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@41
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    #@43
    add-float/2addr v0, v1

    #@44
    iput v0, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    #@46
    move-object v0, p2

    #@47
    move-object v1, p1

    #@48
    move v4, p3

    #@49
    move v5, p4

    #@4a
    move-object v6, p5

    #@4b
    move-object v7, p6

    #@4c
    .line 1520
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    #@4f
    return-void
.end method

.method rotate(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/utils/Rect;III)V
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x2

    #@2
    if-eq p3, v0, :cond_9d

    #@4
    if-eq p3, v1, :cond_6f

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p3, v0, :cond_3d

    #@9
    const/4 p5, 0x4

    #@a
    if-eq p3, p5, :cond_e

    #@c
    goto/16 :goto_ca

    #@e
    .line 1047
    :cond_e
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@10
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@12
    add-int/2addr p3, p5

    #@13
    .line 1048
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@15
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@17
    add-int/2addr p5, v0

    #@18
    .line 1049
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@1b
    move-result v0

    #@1c
    add-int/2addr p5, v0

    #@1d
    div-int/2addr p5, v1

    #@1e
    sub-int/2addr p4, p5

    #@1f
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@21
    .line 1050
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@24
    move-result p4

    #@25
    sub-int/2addr p3, p4

    #@26
    div-int/2addr p3, v1

    #@27
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@29
    .line 1051
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@2b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@2e
    move-result p4

    #@2f
    add-int/2addr p3, p4

    #@30
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@32
    .line 1052
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@34
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@37
    move-result p1

    #@38
    add-int/2addr p3, p1

    #@39
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@3b
    goto/16 :goto_ca

    #@3d
    .line 1055
    :cond_3d
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@3f
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@41
    add-int/2addr p3, p4

    #@42
    .line 1056
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@44
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@46
    .line 1057
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@49
    move-result p4

    #@4a
    div-int/2addr p4, v1

    #@4b
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@4d
    add-int/2addr p4, v0

    #@4e
    div-int/lit8 v0, p3, 0x2

    #@50
    sub-int/2addr p4, v0

    #@51
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@53
    .line 1058
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@56
    move-result p4

    #@57
    add-int/2addr p3, p4

    #@58
    div-int/2addr p3, v1

    #@59
    sub-int/2addr p5, p3

    #@5a
    iput p5, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@5c
    .line 1059
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@5e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@61
    move-result p4

    #@62
    add-int/2addr p3, p4

    #@63
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@65
    .line 1060
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@67
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@6a
    move-result p1

    #@6b
    add-int/2addr p3, p1

    #@6c
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@6e
    goto :goto_ca

    #@6f
    .line 1031
    :cond_6f
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@71
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@73
    add-int/2addr p3, p5

    #@74
    .line 1032
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@76
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@78
    add-int/2addr p5, v0

    #@79
    .line 1033
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@7c
    move-result v0

    #@7d
    add-int/2addr p5, v0

    #@7e
    div-int/2addr p5, v1

    #@7f
    sub-int/2addr p4, p5

    #@80
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@82
    .line 1034
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@85
    move-result p4

    #@86
    sub-int/2addr p3, p4

    #@87
    div-int/2addr p3, v1

    #@88
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@8a
    .line 1035
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@8c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@8f
    move-result p4

    #@90
    add-int/2addr p3, p4

    #@91
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@93
    .line 1036
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@95
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@98
    move-result p1

    #@99
    add-int/2addr p3, p1

    #@9a
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@9c
    goto :goto_ca

    #@9d
    .line 1039
    :cond_9d
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@9f
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@a1
    add-int/2addr p3, p4

    #@a2
    .line 1040
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@a4
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@a6
    add-int/2addr p4, v0

    #@a7
    .line 1041
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@aa
    move-result v0

    #@ab
    sub-int/2addr p4, v0

    #@ac
    div-int/2addr p4, v1

    #@ad
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@af
    .line 1042
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@b2
    move-result p4

    #@b3
    add-int/2addr p3, p4

    #@b4
    div-int/2addr p3, v1

    #@b5
    sub-int/2addr p5, p3

    #@b6
    iput p5, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@b8
    .line 1043
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@ba
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@bd
    move-result p4

    #@be
    add-int/2addr p3, p4

    #@bf
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@c1
    .line 1044
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@c3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@c6
    move-result p1

    #@c7
    add-int/2addr p3, p1

    #@c8
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@ca
    :goto_ca
    return-void
.end method

.method setBothStates(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7

    #@0
    .line 1137
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    const/4 v1, 0x0

    #@3
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@5
    .line 1138
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@7
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    #@9
    const/4 v0, 0x1

    #@a
    .line 1139
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    #@c
    .line 1140
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    #@11
    move-result v1

    #@12
    int-to-float v1, v1

    #@13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    #@16
    move-result v2

    #@17
    int-to-float v2, v2

    #@18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    #@1b
    move-result v3

    #@1c
    int-to-float v3, v3

    #@1d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    #@20
    move-result v4

    #@21
    int-to-float v4, v4

    #@22
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    #@25
    .line 1141
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    #@2a
    move-result v1

    #@2b
    int-to-float v1, v1

    #@2c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    #@2f
    move-result v2

    #@30
    int-to-float v2, v2

    #@31
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    #@34
    move-result v3

    #@35
    int-to-float v3, v3

    #@36
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    #@39
    move-result v4

    #@3a
    int-to-float v4, v4

    #@3b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    #@3e
    .line 1142
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@40
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@43
    .line 1143
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@45
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@48
    return-void
.end method

.method public setDrawPath(I)V
    .registers 3

    #@0
    .line 1501
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    #@4
    return-void
.end method

.method public setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7

    #@0
    .line 991
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@6
    .line 992
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@8
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    #@a
    .line 993
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@c
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/Motion;->readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    #@f
    .line 994
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    #@14
    move-result v1

    #@15
    int-to-float v1, v1

    #@16
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    #@19
    move-result v2

    #@1a
    int-to-float v2, v2

    #@1b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    #@1e
    move-result v3

    #@1f
    int-to-float v3, v3

    #@20
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    #@23
    move-result v4

    #@24
    int-to-float v4, v4

    #@25
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    #@28
    .line 995
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2a
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@2d
    .line 996
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@2f
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@32
    return-void
.end method

.method public setPathMotionArc(I)V
    .registers 2

    #@0
    .line 630
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    #@2
    return-void
.end method

.method public setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7

    #@0
    .line 983
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    const/4 v1, 0x0

    #@3
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@5
    .line 984
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@7
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    #@9
    .line 985
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    #@e
    move-result v1

    #@f
    int-to-float v1, v1

    #@10
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    #@13
    move-result v2

    #@14
    int-to-float v2, v2

    #@15
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    #@18
    move-result v3

    #@19
    int-to-float v3, v3

    #@1a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    #@1d
    move-result v4

    #@1e
    int-to-float v4, v4

    #@1f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    #@22
    .line 986
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@24
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@27
    .line 987
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@29
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@2c
    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/core/motion/utils/ViewState;Landroidx/constraintlayout/core/motion/MotionWidget;III)V
    .registers 10

    #@0
    .line 1000
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    const/4 v1, 0x0

    #@3
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@5
    .line 1001
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@7
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    #@9
    .line 1003
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    #@b
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    #@e
    const/4 v1, 0x1

    #@f
    const/4 v2, 0x2

    #@10
    if-eq p3, v1, :cond_43

    #@12
    if-eq p3, v2, :cond_15

    #@14
    goto :goto_70

    #@15
    .line 1006
    :cond_15
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    #@17
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    #@19
    add-int/2addr p4, v1

    #@1a
    .line 1007
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    #@1c
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    #@1e
    add-int/2addr v1, v3

    #@1f
    .line 1008
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    #@22
    move-result v3

    #@23
    add-int/2addr v1, v3

    #@24
    div-int/2addr v1, v2

    #@25
    sub-int/2addr p5, v1

    #@26
    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@28
    .line 1009
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    #@2b
    move-result p5

    #@2c
    sub-int/2addr p4, p5

    #@2d
    div-int/2addr p4, v2

    #@2e
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@30
    .line 1010
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@32
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    #@35
    move-result p5

    #@36
    add-int/2addr p4, p5

    #@37
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@39
    .line 1011
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@3b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    #@3e
    move-result p5

    #@3f
    add-int/2addr p4, p5

    #@40
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@42
    goto :goto_70

    #@43
    .line 1014
    :cond_43
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    #@45
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    #@47
    add-int/2addr p5, v1

    #@48
    .line 1015
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    #@4a
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    #@4c
    add-int/2addr v1, v3

    #@4d
    .line 1016
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    #@50
    move-result v3

    #@51
    sub-int/2addr v1, v3

    #@52
    div-int/2addr v1, v2

    #@53
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@55
    .line 1017
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    #@58
    move-result v1

    #@59
    add-int/2addr p5, v1

    #@5a
    div-int/2addr p5, v2

    #@5b
    sub-int/2addr p4, p5

    #@5c
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@5e
    .line 1018
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@60
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    #@63
    move-result p5

    #@64
    add-int/2addr p4, p5

    #@65
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    #@67
    .line 1019
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@69
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    #@6c
    move-result p5

    #@6d
    add-int/2addr p4, p5

    #@6e
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    #@70
    .line 1022
    :goto_70
    iget-object p4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@72
    iget p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@74
    int-to-float p5, p5

    #@75
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@77
    int-to-float v1, v1

    #@78
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@7b
    move-result v2

    #@7c
    int-to-float v2, v2

    #@7d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@80
    move-result v3

    #@81
    int-to-float v3, v3

    #@82
    invoke-virtual {p4, p5, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    #@85
    .line 1023
    iget-object p4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@87
    iget p1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->rotation:F

    #@89
    invoke-virtual {p4, v0, p2, p3, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V

    #@8c
    return-void
.end method

.method public setTransformPivotTarget(I)V
    .registers 2

    #@0
    .line 135
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    #@2
    const/4 p1, 0x0

    #@3
    .line 136
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@5
    return-void
.end method

.method public setValue(IF)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public setValue(II)Z
    .registers 5

    #@0
    const/16 v0, 0x1fd

    #@2
    const/4 v1, 0x1

    #@3
    if-eq p1, v0, :cond_c

    #@5
    const/16 p2, 0x2c0

    #@7
    if-eq p1, p2, :cond_b

    #@9
    const/4 p1, 0x0

    #@a
    return p1

    #@b
    :cond_b
    return v1

    #@c
    .line 1598
    :cond_c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/Motion;->setPathMotionArc(I)V

    #@f
    return v1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 6

    #@0
    const/16 v0, 0x2c1

    #@2
    const/4 v1, 0x0

    #@3
    if-ne v0, p1, :cond_20

    #@5
    .line 1615
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "TYPE_INTERPOLATOR  "

    #@b
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    const/4 p1, -0x1

    #@1a
    .line 1616
    invoke-static {p1, p2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    #@1d
    move-result-object p1

    #@1e
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    #@20
    :cond_20
    return v1
.end method

.method public setValue(IZ)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 2

    #@0
    .line 975
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    #@2
    return-void
.end method

.method public setup(IIFJ)V
    .registers 25

    #@0
    move-object/from16 v0, p0

    #@2
    move-wide/from16 v1, p4

    #@4
    .line 638
    new-instance v3, Ljava/util/HashSet;

    #@6
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@9
    .line 639
    new-instance v3, Ljava/util/HashSet;

    #@b
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@e
    .line 640
    new-instance v4, Ljava/util/HashSet;

    #@10
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@13
    .line 641
    new-instance v5, Ljava/util/HashSet;

    #@15
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@18
    .line 642
    new-instance v6, Ljava/util/HashMap;

    #@1a
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 654
    iget v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    #@1f
    const/4 v8, -0x1

    #@20
    if-eq v7, v8, :cond_26

    #@22
    .line 655
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@24
    iput v7, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    #@26
    .line 658
    :cond_26
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@28
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@2a
    invoke-virtual {v7, v9, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V

    #@2d
    .line 664
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@2f
    if-eqz v7, :cond_90

    #@31
    .line 665
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v7

    #@35
    const/4 v10, 0x0

    #@36
    :cond_36
    :goto_36
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v11

    #@3a
    if-eqz v11, :cond_91

    #@3c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v11

    #@40
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@42
    .line 666
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    #@44
    if-eqz v12, :cond_68

    #@46
    .line 667
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    #@48
    .line 668
    new-instance v12, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@4a
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@4c
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@4e
    move-object v13, v12

    #@4f
    move-object/from16 v18, v14

    #@51
    move/from16 v14, p1

    #@53
    move-object/from16 v17, v15

    #@55
    move/from16 v15, p2

    #@57
    move-object/from16 v16, v11

    #@59
    invoke-direct/range {v13 .. v18}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    #@5c
    invoke-direct {v0, v12}, Landroidx/constraintlayout/core/motion/Motion;->insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    #@5f
    .line 669
    iget v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    #@61
    if-eq v12, v8, :cond_36

    #@63
    .line 670
    iget v11, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    #@65
    iput v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    #@67
    goto :goto_36

    #@68
    .line 672
    :cond_68
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    #@6a
    if-eqz v12, :cond_70

    #@6c
    .line 673
    invoke-virtual {v11, v5}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    #@6f
    goto :goto_36

    #@70
    .line 674
    :cond_70
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    #@72
    if-eqz v12, :cond_78

    #@74
    .line 675
    invoke-virtual {v11, v3}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    #@77
    goto :goto_36

    #@78
    .line 676
    :cond_78
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@7a
    if-eqz v12, :cond_89

    #@7c
    if-nez v10, :cond_83

    #@7e
    .line 678
    new-instance v10, Ljava/util/ArrayList;

    #@80
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@83
    .line 680
    :cond_83
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@85
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@88
    goto :goto_36

    #@89
    .line 682
    :cond_89
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setInterpolation(Ljava/util/HashMap;)V

    #@8c
    .line 683
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    #@8f
    goto :goto_36

    #@90
    :cond_90
    const/4 v10, 0x0

    #@91
    :cond_91
    const/4 v7, 0x0

    #@92
    if-eqz v10, :cond_9e

    #@94
    new-array v11, v7, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@96
    .line 691
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@99
    move-result-object v10

    #@9a
    check-cast v10, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@9c
    iput-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@9e
    .line 695
    :cond_9e
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    #@a1
    move-result v10

    #@a2
    const-string v11, ","

    #@a4
    const-string v12, "CUSTOM,"

    #@a6
    const/4 v13, 0x1

    #@a7
    if-nez v10, :cond_17b

    #@a9
    .line 696
    new-instance v10, Ljava/util/HashMap;

    #@ab
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@ae
    iput-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@b0
    .line 697
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@b3
    move-result-object v10

    #@b4
    :goto_b4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@b7
    move-result v14

    #@b8
    if-eqz v14, :cond_114

    #@ba
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bd
    move-result-object v14

    #@be
    check-cast v14, Ljava/lang/String;

    #@c0
    .line 699
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c3
    move-result v15

    #@c4
    if-eqz v15, :cond_101

    #@c6
    .line 700
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@c8
    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    #@cb
    .line 701
    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@ce
    move-result-object v16

    #@cf
    aget-object v9, v16, v13

    #@d1
    .line 702
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@d3
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d6
    move-result-object v8

    #@d7
    :goto_d7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@da
    move-result v17

    #@db
    if-eqz v17, :cond_fc

    #@dd
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e0
    move-result-object v17

    #@e1
    move-object/from16 v13, v17

    #@e3
    check-cast v13, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@e5
    .line 703
    iget-object v7, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    #@e7
    if-nez v7, :cond_ec

    #@e9
    :cond_e9
    :goto_e9
    const/4 v7, 0x0

    #@ea
    const/4 v13, 0x1

    #@eb
    goto :goto_d7

    #@ec
    .line 706
    :cond_ec
    iget-object v7, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    #@ee
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    move-result-object v7

    #@f2
    check-cast v7, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@f4
    if-eqz v7, :cond_e9

    #@f6
    .line 708
    iget v13, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@f8
    invoke-virtual {v15, v13, v7}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    #@fb
    goto :goto_e9

    #@fc
    .line 711
    :cond_fc
    invoke-static {v14, v15}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@ff
    move-result-object v7

    #@100
    goto :goto_105

    #@101
    .line 713
    :cond_101
    invoke-static {v14, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@104
    move-result-object v7

    #@105
    :goto_105
    if-nez v7, :cond_108

    #@107
    goto :goto_110

    #@108
    .line 718
    :cond_108
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    #@10b
    .line 719
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@10d
    invoke-virtual {v8, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    :goto_110
    const/4 v7, 0x0

    #@111
    const/4 v8, -0x1

    #@112
    const/4 v13, 0x1

    #@113
    goto :goto_b4

    #@114
    .line 721
    :cond_114
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@116
    if-eqz v7, :cond_132

    #@118
    .line 722
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@11b
    move-result-object v7

    #@11c
    :cond_11c
    :goto_11c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@11f
    move-result v8

    #@120
    if-eqz v8, :cond_132

    #@122
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@125
    move-result-object v8

    #@126
    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@128
    .line 723
    instance-of v9, v8, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;

    #@12a
    if-eqz v9, :cond_11c

    #@12c
    .line 724
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@12e
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKey;->addValues(Ljava/util/HashMap;)V

    #@131
    goto :goto_11c

    #@132
    .line 728
    :cond_132
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@134
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@136
    const/4 v9, 0x0

    #@137
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    #@13a
    .line 729
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@13c
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@13e
    const/16 v9, 0x64

    #@140
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    #@143
    .line 731
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@145
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@148
    move-result-object v7

    #@149
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14c
    move-result-object v7

    #@14d
    :cond_14d
    :goto_14d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@150
    move-result v8

    #@151
    if-eqz v8, :cond_17b

    #@153
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@156
    move-result-object v8

    #@157
    check-cast v8, Ljava/lang/String;

    #@159
    .line 733
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@15c
    move-result v9

    #@15d
    if-eqz v9, :cond_16c

    #@15f
    .line 734
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@162
    move-result-object v9

    #@163
    check-cast v9, Ljava/lang/Integer;

    #@165
    if-eqz v9, :cond_16c

    #@167
    .line 736
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@16a
    move-result v9

    #@16b
    goto :goto_16d

    #@16c
    :cond_16c
    const/4 v9, 0x0

    #@16d
    .line 739
    :goto_16d
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    #@16f
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@172
    move-result-object v8

    #@173
    check-cast v8, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@175
    if-eqz v8, :cond_14d

    #@177
    .line 741
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    #@17a
    goto :goto_14d

    #@17b
    .line 747
    :cond_17b
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    #@17e
    move-result v7

    #@17f
    if-nez v7, :cond_242

    #@181
    .line 748
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@183
    if-nez v7, :cond_18c

    #@185
    .line 749
    new-instance v7, Ljava/util/HashMap;

    #@187
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@18a
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@18c
    .line 751
    :cond_18c
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@18f
    move-result-object v3

    #@190
    :goto_190
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@193
    move-result v7

    #@194
    if-eqz v7, :cond_1ee

    #@196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@199
    move-result-object v7

    #@19a
    check-cast v7, Ljava/lang/String;

    #@19c
    .line 752
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@19e
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1a1
    move-result v8

    #@1a2
    if-eqz v8, :cond_1a5

    #@1a4
    goto :goto_190

    #@1a5
    .line 757
    :cond_1a5
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a8
    move-result v8

    #@1a9
    if-eqz v8, :cond_1e3

    #@1ab
    .line 758
    new-instance v8, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    #@1ad
    invoke-direct {v8}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    #@1b0
    .line 759
    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b3
    move-result-object v9

    #@1b4
    const/4 v10, 0x1

    #@1b5
    aget-object v9, v9, v10

    #@1b7
    .line 760
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@1b9
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1bc
    move-result-object v10

    #@1bd
    :cond_1bd
    :goto_1bd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1c0
    move-result v13

    #@1c1
    if-eqz v13, :cond_1de

    #@1c3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c6
    move-result-object v13

    #@1c7
    check-cast v13, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@1c9
    .line 761
    iget-object v14, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    #@1cb
    if-nez v14, :cond_1ce

    #@1cd
    goto :goto_1bd

    #@1ce
    .line 764
    :cond_1ce
    iget-object v14, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    #@1d0
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d3
    move-result-object v14

    #@1d4
    check-cast v14, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@1d6
    if-eqz v14, :cond_1bd

    #@1d8
    .line 766
    iget v13, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@1da
    invoke-virtual {v8, v13, v14}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    #@1dd
    goto :goto_1bd

    #@1de
    .line 769
    :cond_1de
    invoke-static {v7, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@1e1
    move-result-object v8

    #@1e2
    goto :goto_1e7

    #@1e3
    .line 771
    :cond_1e3
    invoke-static {v7, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@1e6
    move-result-object v8

    #@1e7
    :goto_1e7
    if-nez v8, :cond_1ea

    #@1e9
    goto :goto_190

    #@1ea
    .line 776
    :cond_1ea
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    #@1ed
    goto :goto_190

    #@1ee
    .line 780
    :cond_1ee
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@1f0
    if-eqz v1, :cond_20e

    #@1f2
    .line 781
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1f5
    move-result-object v1

    #@1f6
    :cond_1f6
    :goto_1f6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f9
    move-result v2

    #@1fa
    if-eqz v2, :cond_20e

    #@1fc
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ff
    move-result-object v2

    #@200
    check-cast v2, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@202
    .line 782
    instance-of v3, v2, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    #@204
    if-eqz v3, :cond_1f6

    #@206
    .line 783
    check-cast v2, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    #@208
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@20a
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    #@20d
    goto :goto_1f6

    #@20e
    .line 788
    :cond_20e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@210
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@213
    move-result-object v1

    #@214
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@217
    move-result-object v1

    #@218
    :goto_218
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21b
    move-result v2

    #@21c
    if-eqz v2, :cond_242

    #@21e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@221
    move-result-object v2

    #@222
    check-cast v2, Ljava/lang/String;

    #@224
    .line 790
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@227
    move-result v3

    #@228
    if-eqz v3, :cond_235

    #@22a
    .line 791
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22d
    move-result-object v3

    #@22e
    check-cast v3, Ljava/lang/Integer;

    #@230
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@233
    move-result v3

    #@234
    goto :goto_236

    #@235
    :cond_235
    const/4 v3, 0x0

    #@236
    .line 793
    :goto_236
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@238
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23b
    move-result-object v2

    #@23c
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    #@23e
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    #@241
    goto :goto_218

    #@242
    .line 799
    :cond_242
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@244
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@247
    move-result v1

    #@248
    const/4 v2, 0x2

    #@249
    add-int/2addr v1, v2

    #@24a
    new-array v3, v1, [Landroidx/constraintlayout/core/motion/MotionPaths;

    #@24c
    .line 801
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@24e
    const/4 v7, 0x0

    #@24f
    aput-object v6, v3, v7

    #@251
    add-int/lit8 v6, v1, -0x1

    #@253
    .line 802
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@255
    aput-object v8, v3, v6

    #@257
    .line 803
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@259
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@25c
    move-result v6

    #@25d
    if-lez v6, :cond_267

    #@25f
    iget v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    #@261
    sget v8, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    #@263
    if-ne v6, v8, :cond_267

    #@265
    .line 804
    iput v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    #@267
    .line 806
    :cond_267
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    #@269
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@26c
    move-result-object v6

    #@26d
    const/4 v7, 0x1

    #@26e
    :goto_26e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@271
    move-result v8

    #@272
    if-eqz v8, :cond_280

    #@274
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@277
    move-result-object v8

    #@278
    check-cast v8, Landroidx/constraintlayout/core/motion/MotionPaths;

    #@27a
    add-int/lit8 v9, v7, 0x1

    #@27c
    .line 807
    aput-object v8, v3, v7

    #@27e
    move v7, v9

    #@27f
    goto :goto_26e

    #@280
    .line 812
    :cond_280
    new-instance v6, Ljava/util/HashSet;

    #@282
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@285
    .line 813
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@287
    iget-object v7, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    #@289
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@28c
    move-result-object v7

    #@28d
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@290
    move-result-object v7

    #@291
    :cond_291
    :goto_291
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@294
    move-result v8

    #@295
    if-eqz v8, :cond_2be

    #@297
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29a
    move-result-object v8

    #@29b
    check-cast v8, Ljava/lang/String;

    #@29d
    .line 814
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@29f
    iget-object v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    #@2a1
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2a4
    move-result v9

    #@2a5
    if-eqz v9, :cond_291

    #@2a7
    .line 815
    new-instance v9, Ljava/lang/StringBuilder;

    #@2a9
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2ac
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v9

    #@2b0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b3
    move-result-object v9

    #@2b4
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@2b7
    move-result v9

    #@2b8
    if-nez v9, :cond_291

    #@2ba
    .line 816
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2bd
    goto :goto_291

    #@2be
    :cond_2be
    const/4 v8, 0x0

    #@2bf
    new-array v4, v8, [Ljava/lang/String;

    #@2c1
    .line 820
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c4
    move-result-object v4

    #@2c5
    check-cast v4, [Ljava/lang/String;

    #@2c7
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    #@2c9
    .line 821
    array-length v4, v4

    #@2ca
    new-array v4, v4, [I

    #@2cc
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    #@2ce
    const/4 v4, 0x0

    #@2cf
    .line 822
    :goto_2cf
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    #@2d1
    array-length v7, v6

    #@2d2
    if-ge v4, v7, :cond_306

    #@2d4
    .line 823
    aget-object v6, v6, v4

    #@2d6
    .line 824
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    #@2d8
    const/4 v8, 0x0

    #@2d9
    aput v8, v7, v4

    #@2db
    const/4 v7, 0x0

    #@2dc
    :goto_2dc
    if-ge v7, v1, :cond_303

    #@2de
    .line 826
    aget-object v8, v3, v7

    #@2e0
    iget-object v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    #@2e2
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2e5
    move-result v8

    #@2e6
    if-eqz v8, :cond_300

    #@2e8
    .line 827
    aget-object v8, v3, v7

    #@2ea
    iget-object v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    #@2ec
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2ef
    move-result-object v8

    #@2f0
    check-cast v8, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@2f2
    if-eqz v8, :cond_300

    #@2f4
    .line 829
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    #@2f6
    aget v7, v6, v4

    #@2f8
    invoke-virtual {v8}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    #@2fb
    move-result v8

    #@2fc
    add-int/2addr v7, v8

    #@2fd
    aput v7, v6, v4

    #@2ff
    goto :goto_303

    #@300
    :cond_300
    add-int/lit8 v7, v7, 0x1

    #@302
    goto :goto_2dc

    #@303
    :cond_303
    :goto_303
    add-int/lit8 v4, v4, 0x1

    #@305
    goto :goto_2cf

    #@306
    :cond_306
    const/4 v4, 0x0

    #@307
    .line 835
    aget-object v6, v3, v4

    #@309
    iget v4, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    #@30b
    const/4 v6, -0x1

    #@30c
    if-eq v4, v6, :cond_310

    #@30e
    const/4 v4, 0x1

    #@30f
    goto :goto_311

    #@310
    :cond_310
    const/4 v4, 0x0

    #@311
    .line 836
    :goto_311
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    #@313
    array-length v6, v6

    #@314
    const/16 v7, 0x12

    #@316
    add-int/2addr v7, v6

    #@317
    new-array v6, v7, [Z

    #@319
    const/4 v8, 0x1

    #@31a
    :goto_31a
    if-ge v8, v1, :cond_32a

    #@31c
    .line 838
    aget-object v9, v3, v8

    #@31e
    add-int/lit8 v10, v8, -0x1

    #@320
    aget-object v10, v3, v10

    #@322
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    #@324
    invoke-virtual {v9, v10, v6, v11, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->different(Landroidx/constraintlayout/core/motion/MotionPaths;[Z[Ljava/lang/String;Z)V

    #@327
    add-int/lit8 v8, v8, 0x1

    #@329
    goto :goto_31a

    #@32a
    :cond_32a
    const/4 v4, 0x1

    #@32b
    const/4 v8, 0x0

    #@32c
    :goto_32c
    if-ge v4, v7, :cond_337

    #@32e
    .line 843
    aget-boolean v9, v6, v4

    #@330
    if-eqz v9, :cond_334

    #@332
    add-int/lit8 v8, v8, 0x1

    #@334
    :cond_334
    add-int/lit8 v4, v4, 0x1

    #@336
    goto :goto_32c

    #@337
    .line 848
    :cond_337
    new-array v4, v8, [I

    #@339
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@33b
    .line 849
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    #@33e
    move-result v4

    #@33f
    .line 850
    new-array v8, v4, [D

    #@341
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    #@343
    .line 851
    new-array v4, v4, [D

    #@345
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    #@347
    const/4 v4, 0x1

    #@348
    const/4 v8, 0x0

    #@349
    :goto_349
    if-ge v4, v7, :cond_359

    #@34b
    .line 855
    aget-boolean v9, v6, v4

    #@34d
    if-eqz v9, :cond_356

    #@34f
    .line 856
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@351
    add-int/lit8 v10, v8, 0x1

    #@353
    aput v4, v9, v8

    #@355
    move v8, v10

    #@356
    :cond_356
    add-int/lit8 v4, v4, 0x1

    #@358
    goto :goto_349

    #@359
    .line 859
    :cond_359
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@35b
    array-length v4, v4

    #@35c
    new-array v6, v2, [I

    #@35e
    const/4 v7, 0x1

    #@35f
    aput v4, v6, v7

    #@361
    const/4 v4, 0x0

    #@362
    aput v1, v6, v4

    #@364
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@366
    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@369
    move-result-object v4

    #@36a
    check-cast v4, [[D

    #@36c
    .line 860
    new-array v6, v1, [D

    #@36e
    const/4 v7, 0x0

    #@36f
    :goto_36f
    if-ge v7, v1, :cond_384

    #@371
    .line 863
    aget-object v8, v3, v7

    #@373
    aget-object v9, v4, v7

    #@375
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@377
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->fillStandard([D[I)V

    #@37a
    .line 864
    aget-object v8, v3, v7

    #@37c
    iget v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@37e
    float-to-double v8, v8

    #@37f
    aput-wide v8, v6, v7

    #@381
    add-int/lit8 v7, v7, 0x1

    #@383
    goto :goto_36f

    #@384
    :cond_384
    const/4 v7, 0x0

    #@385
    .line 867
    :goto_385
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@387
    array-length v9, v8

    #@388
    if-ge v7, v9, :cond_3cb

    #@38a
    .line 868
    aget v8, v8, v7

    #@38c
    .line 869
    sget-object v9, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    #@38e
    array-length v9, v9

    #@38f
    if-ge v8, v9, :cond_3c8

    #@391
    .line 870
    new-instance v8, Ljava/lang/StringBuilder;

    #@393
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@396
    sget-object v9, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    #@398
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    #@39a
    aget v10, v10, v7

    #@39c
    aget-object v9, v9, v10

    #@39e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a1
    move-result-object v8

    #@3a2
    const-string v9, " ["

    #@3a4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a7
    move-result-object v8

    #@3a8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ab
    move-result-object v8

    #@3ac
    move-object v9, v8

    #@3ad
    const/4 v8, 0x0

    #@3ae
    :goto_3ae
    if-ge v8, v1, :cond_3c8

    #@3b0
    .line 872
    new-instance v10, Ljava/lang/StringBuilder;

    #@3b2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3b5
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b8
    move-result-object v9

    #@3b9
    aget-object v10, v4, v8

    #@3bb
    aget-wide v11, v10, v7

    #@3bd
    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@3c0
    move-result-object v9

    #@3c1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c4
    move-result-object v9

    #@3c5
    add-int/lit8 v8, v8, 0x1

    #@3c7
    goto :goto_3ae

    #@3c8
    :cond_3c8
    add-int/lit8 v7, v7, 0x1

    #@3ca
    goto :goto_385

    #@3cb
    .line 876
    :cond_3cb
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    #@3cd
    array-length v7, v7

    #@3ce
    const/4 v8, 0x1

    #@3cf
    add-int/2addr v7, v8

    #@3d0
    new-array v7, v7, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@3d2
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@3d4
    const/4 v7, 0x0

    #@3d5
    .line 878
    :goto_3d5
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    #@3d7
    array-length v9, v8

    #@3d8
    if-ge v7, v9, :cond_434

    #@3da
    const/4 v9, 0x0

    #@3db
    .line 880
    move-object v10, v9

    #@3dc
    check-cast v10, [[D

    #@3de
    .line 882
    aget-object v8, v8, v7

    #@3e0
    move-object v12, v9

    #@3e1
    move-object v13, v12

    #@3e2
    const/4 v10, 0x0

    #@3e3
    const/4 v11, 0x0

    #@3e4
    :goto_3e4
    if-ge v10, v1, :cond_41d

    #@3e6
    .line 885
    aget-object v14, v3, v10

    #@3e8
    invoke-virtual {v14, v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    #@3eb
    move-result v14

    #@3ec
    if-eqz v14, :cond_419

    #@3ee
    if-nez v13, :cond_408

    #@3f0
    .line 887
    new-array v12, v1, [D

    #@3f2
    .line 888
    aget-object v13, v3, v10

    #@3f4
    invoke-virtual {v13, v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    #@3f7
    move-result v13

    #@3f8
    new-array v14, v2, [I

    #@3fa
    const/4 v15, 0x1

    #@3fb
    aput v13, v14, v15

    #@3fd
    const/4 v13, 0x0

    #@3fe
    aput v1, v14, v13

    #@400
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@402
    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@405
    move-result-object v13

    #@406
    check-cast v13, [[D

    #@408
    .line 890
    :cond_408
    aget-object v14, v3, v10

    #@40a
    iget v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@40c
    float-to-double v14, v14

    #@40d
    aput-wide v14, v12, v11

    #@40f
    .line 891
    aget-object v14, v3, v10

    #@411
    aget-object v15, v13, v11

    #@413
    const/4 v9, 0x0

    #@414
    invoke-virtual {v14, v8, v15, v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    #@417
    add-int/lit8 v11, v11, 0x1

    #@419
    :cond_419
    add-int/lit8 v10, v10, 0x1

    #@41b
    const/4 v9, 0x0

    #@41c
    goto :goto_3e4

    #@41d
    .line 895
    :cond_41d
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([DI)[D

    #@420
    move-result-object v8

    #@421
    .line 896
    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@424
    move-result-object v9

    #@425
    check-cast v9, [[D

    #@427
    .line 897
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@429
    add-int/lit8 v7, v7, 0x1

    #@42b
    iget v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    #@42d
    invoke-static {v11, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@430
    move-result-object v8

    #@431
    aput-object v8, v10, v7

    #@433
    goto :goto_3d5

    #@434
    .line 900
    :cond_434
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@436
    iget v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    #@438
    invoke-static {v8, v6, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@43b
    move-result-object v4

    #@43c
    const/4 v6, 0x0

    #@43d
    aput-object v4, v7, v6

    #@43f
    .line 902
    aget-object v4, v3, v6

    #@441
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    #@443
    const/4 v7, -0x1

    #@444
    if-eq v4, v7, :cond_486

    #@446
    .line 904
    new-array v4, v1, [I

    #@448
    .line 905
    new-array v7, v1, [D

    #@44a
    new-array v8, v2, [I

    #@44c
    const/4 v9, 0x1

    #@44d
    aput v2, v8, v9

    #@44f
    aput v1, v8, v6

    #@451
    .line 906
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@453
    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@456
    move-result-object v2

    #@457
    check-cast v2, [[D

    #@459
    const/4 v9, 0x0

    #@45a
    :goto_45a
    if-ge v9, v1, :cond_480

    #@45c
    .line 908
    aget-object v6, v3, v9

    #@45e
    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    #@460
    aput v6, v4, v9

    #@462
    .line 909
    aget-object v6, v3, v9

    #@464
    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    #@466
    float-to-double v10, v6

    #@467
    aput-wide v10, v7, v9

    #@469
    .line 910
    aget-object v6, v2, v9

    #@46b
    aget-object v8, v3, v9

    #@46d
    iget v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@46f
    float-to-double v10, v8

    #@470
    const/4 v8, 0x0

    #@471
    aput-wide v10, v6, v8

    #@473
    .line 911
    aget-object v6, v2, v9

    #@475
    aget-object v10, v3, v9

    #@477
    iget v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@479
    float-to-double v10, v10

    #@47a
    const/4 v12, 0x1

    #@47b
    aput-wide v10, v6, v12

    #@47d
    add-int/lit8 v9, v9, 0x1

    #@47f
    goto :goto_45a

    #@480
    .line 914
    :cond_480
    invoke-static {v4, v7, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@483
    move-result-object v1

    #@484
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@486
    .line 919
    :cond_486
    new-instance v1, Ljava/util/HashMap;

    #@488
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@48b
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@48d
    .line 920
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@48f
    if-eqz v1, :cond_4fb

    #@491
    .line 921
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@494
    move-result-object v1

    #@495
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@497
    :goto_497
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@49a
    move-result v3

    #@49b
    if-eqz v3, :cond_4c3

    #@49d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a0
    move-result-object v3

    #@4a1
    check-cast v3, Ljava/lang/String;

    #@4a3
    .line 922
    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@4a6
    move-result-object v4

    #@4a7
    if-nez v4, :cond_4aa

    #@4a9
    goto :goto_497

    #@4aa
    .line 927
    :cond_4aa
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->variesByPath()Z

    #@4ad
    move-result v5

    #@4ae
    if-eqz v5, :cond_4ba

    #@4b0
    .line 928
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@4b3
    move-result v5

    #@4b4
    if-eqz v5, :cond_4ba

    #@4b6
    .line 929
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/Motion;->getPreCycleDistance()F

    #@4b9
    move-result v2

    #@4ba
    .line 932
    :cond_4ba
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    #@4bd
    .line 933
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@4bf
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c2
    goto :goto_497

    #@4c3
    .line 935
    :cond_4c3
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    #@4c5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@4c8
    move-result-object v1

    #@4c9
    :cond_4c9
    :goto_4c9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4cc
    move-result v3

    #@4cd
    if-eqz v3, :cond_4e1

    #@4cf
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d2
    move-result-object v3

    #@4d3
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@4d5
    .line 936
    instance-of v4, v3, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    #@4d7
    if-eqz v4, :cond_4c9

    #@4d9
    .line 937
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    #@4db
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@4dd
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    #@4e0
    goto :goto_4c9

    #@4e1
    .line 940
    :cond_4e1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    #@4e3
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4e6
    move-result-object v1

    #@4e7
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@4ea
    move-result-object v1

    #@4eb
    :goto_4eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4ee
    move-result v3

    #@4ef
    if-eqz v3, :cond_4fb

    #@4f1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f4
    move-result-object v3

    #@4f5
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@4f7
    .line 941
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V

    #@4fa
    goto :goto_4eb

    #@4fb
    :cond_4fb
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;)V
    .registers 4

    #@0
    .line 239
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@2
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@4
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    #@7
    .line 240
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@9
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@b
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    #@e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, " start: x: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@9
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, " y: "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@17
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v2, " end: x: "

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@25
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    #@27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    #@31
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method
