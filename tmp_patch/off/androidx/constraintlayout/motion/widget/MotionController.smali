.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "MotionController.java"


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
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
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
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mForceMeasure:Z

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mTempRect:Landroid/graphics/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroid/view/View;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    #@a
    const/4 v0, 0x0

    #@b
    .line 90
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    #@d
    const/4 v1, -0x1

    #@e
    .line 92
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    #@10
    .line 93
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@12
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    #@15
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@17
    .line 94
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@19
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    #@1c
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1e
    .line 96
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@20
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    #@23
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@25
    .line 97
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@27
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    #@2a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@2c
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@2e
    .line 101
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@30
    const/4 v2, 0x0

    #@31
    .line 102
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    #@33
    const/high16 v2, 0x3f800000    # 1.0f

    #@35
    .line 103
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    #@37
    const/4 v2, 0x4

    #@38
    .line 111
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->MAX_DIMENSION:I

    #@3a
    new-array v2, v2, [F

    #@3c
    .line 112
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    #@3e
    .line 113
    new-instance v2, Ljava/util/ArrayList;

    #@40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@43
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    #@45
    const/4 v2, 0x1

    #@46
    new-array v2, v2, [F

    #@48
    .line 114
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    #@4a
    .line 116
    new-instance v2, Ljava/util/ArrayList;

    #@4c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@4f
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@51
    .line 121
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@53
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    #@55
    .line 122
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@57
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    #@59
    const/4 v2, 0x0

    #@5a
    .line 123
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    #@5c
    .line 124
    sget v3, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@5e
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    #@60
    .line 125
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    #@62
    .line 126
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    #@64
    .line 127
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    #@66
    .line 153
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    #@69
    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "velocity"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/high16 v2, 0x3f800000    # 1.0f

    #@4
    if-eqz p2, :cond_9

    #@6
    .line 1176
    aput v2, p2, v1

    #@8
    goto :goto_28

    #@9
    .line 1177
    :cond_9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    #@b
    float-to-double v4, v3

    #@c
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@e
    cmpl-double v4, v4, v6

    #@10
    if-eqz v4, :cond_28

    #@12
    .line 1178
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

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
    .line 1184
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    #@27
    move-result p1

    #@28
    .line 1190
    :cond_28
    :goto_28
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2a
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@2c
    .line 1193
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@40
    .line 1194
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@42
    if-eqz v7, :cond_34

    #@44
    .line 1195
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@46
    cmpg-float v7, v7, p1

    #@48
    if-gez v7, :cond_52

    #@4a
    .line 1196
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@4c
    .line 1197
    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@4e
    move v10, v3

    #@4f
    move-object v3, v0

    #@50
    move v0, v10

    #@51
    goto :goto_34

    #@52
    .line 1199
    :cond_52
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_34

    #@58
    .line 1200
    iget v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@5a
    goto :goto_34

    #@5b
    :cond_5b
    if-eqz v3, :cond_79

    #@5d
    .line 1207
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
    .line 1211
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
    .line 1214
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

.method private static getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "interpolatorString",
            "id"
        }
    .end annotation

    #@0
    const/4 v0, -0x2

    #@1
    if-eq p1, v0, :cond_3e

    #@3
    const/4 p0, -0x1

    #@4
    if-eq p1, p0, :cond_34

    #@6
    if-eqz p1, :cond_2e

    #@8
    const/4 p0, 0x1

    #@9
    if-eq p1, p0, :cond_28

    #@b
    const/4 p0, 0x2

    #@c
    if-eq p1, p0, :cond_22

    #@e
    const/4 p0, 0x4

    #@f
    if-eq p1, p0, :cond_1c

    #@11
    const/4 p0, 0x5

    #@12
    if-eq p1, p0, :cond_16

    #@14
    const/4 p0, 0x0

    #@15
    return-object p0

    #@16
    .line 1137
    :cond_16
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    #@18
    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    #@1b
    return-object p0

    #@1c
    .line 1135
    :cond_1c
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    #@1e
    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    #@21
    return-object p0

    #@22
    .line 1131
    :cond_22
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    #@24
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@27
    return-object p0

    #@28
    .line 1129
    :cond_28
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    #@2a
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@2d
    return-object p0

    #@2e
    .line 1127
    :cond_2e
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@30
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@33
    return-object p0

    #@34
    .line 1117
    :cond_34
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@37
    move-result-object p0

    #@38
    .line 1118
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionController$1;

    #@3a
    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionController$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    #@3d
    return-object p1

    #@3e
    .line 1125
    :cond_3e
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@41
    move-result-object p0

    #@42
    return-object p0
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
    .line 435
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1c
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@1e
    .line 438
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@36
    .line 439
    iget-object v11, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@38
    if-eqz v11, :cond_51

    #@3a
    .line 440
    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@3c
    cmpg-float v11, v11, v2

    #@3e
    if-gez v11, :cond_47

    #@40
    .line 441
    iget-object v5, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@42
    .line 442
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@44
    move/from16 v18, v9

    #@46
    goto :goto_51

    #@47
    .line 444
    :cond_47
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    #@4a
    move-result v11

    #@4b
    if-eqz v11, :cond_51

    #@4d
    .line 445
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    .line 452
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
    .line 456
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
    .line 461
    :cond_70
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@72
    aget-object v2, v2, v12

    #@74
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@76
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@79
    .line 462
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@7b
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@7d
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

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
    .line 464
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

.method private insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    #@0
    .line 602
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_24

    #@8
    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const-string v2, " KeyPath position \""

    #@c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, "\" outside of range"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, "MotionController"

    #@21
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 606
    :cond_24
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    #@26
    neg-int v0, v0

    #@27
    add-int/lit8 v0, v0, -0x1

    #@29
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@2c
    return-void
.end method

.method private readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionPaths"
        }
    .end annotation

    #@0
    .line 992
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    #@5
    move-result v0

    #@6
    float-to-int v0, v0

    #@7
    int-to-float v0, v0

    #@8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    #@d
    move-result v1

    #@e
    float-to-int v1, v1

    #@f
    int-to-float v1, v1

    #@10
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@12
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@15
    move-result v2

    #@16
    int-to-float v2, v2

    #@17
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@19
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@1c
    move-result v3

    #@1d
    int-to-float v3, v3

    #@1e
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    #@21
    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    #@0
    .line 619
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 610
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5
    return-void
.end method

.method buildBounds([FI)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bounds",
            "pointCount"
        }
    .end annotation

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
    .line 369
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 370
    :goto_18
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 371
    :goto_25
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@30
    .line 372
    :goto_30
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

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
    .line 376
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    #@43
    cmpl-float v8, v7, v3

    #@45
    const/4 v9, 0x0

    #@46
    if-eqz v8, :cond_60

    #@48
    .line 377
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

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
    .line 383
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    #@5f
    move-result v6

    #@60
    :cond_60
    float-to-double v7, v6

    #@61
    .line 388
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@63
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@65
    .line 391
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@79
    .line 392
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@7b
    if-eqz v14, :cond_6d

    #@7d
    .line 393
    iget v14, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@7f
    cmpg-float v14, v14, v6

    #@81
    if-gez v14, :cond_8b

    #@83
    .line 394
    iget-object v9, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@85
    .line 395
    iget v10, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@87
    move v15, v10

    #@88
    move-object v10, v9

    #@89
    move v9, v15

    #@8a
    goto :goto_6d

    #@8b
    .line 397
    :cond_8b
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    #@8e
    move-result v14

    #@8f
    if-eqz v14, :cond_6d

    #@91
    .line 398
    iget v12, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@93
    goto :goto_6d

    #@94
    :cond_94
    if-eqz v10, :cond_a9

    #@96
    .line 405
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
    .line 409
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
    .line 414
    :cond_a9
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@ab
    aget-object v6, v6, v4

    #@ad
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@af
    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@b2
    .line 415
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@b4
    if-eqz v6, :cond_be

    #@b6
    .line 416
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@b8
    array-length v10, v9

    #@b9
    if-lez v10, :cond_be

    #@bb
    .line 417
    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@be
    .line 420
    :cond_be
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@c0
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@c2
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@c4
    mul-int/lit8 v9, v5, 0x2

    #@c6
    move-object/from16 v10, p1

    #@c8
    invoke-virtual {v6, v7, v8, v10, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBounds",
            "mode"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_49

    #@3
    .line 517
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@5
    aget-object v1, v1, v0

    #@7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    #@a
    move-result-object v1

    #@b
    if-eqz p2, :cond_28

    #@d
    .line 519
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@20
    add-int/lit8 v5, v3, 0x1

    #@22
    .line 520
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

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
    .line 525
    :goto_2a
    array-length v3, v1

    #@2b
    if-ge p2, v3, :cond_46

    #@2d
    .line 526
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2f
    aget-object v3, v3, v0

    #@31
    aget-wide v4, v1, p2

    #@33
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@35
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@38
    .line 527
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@3a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@3c
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@3e
    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    #@41
    add-int/lit8 v2, v2, 0x2

    #@43
    add-int/lit8 p2, p2, 0x1

    #@45
    goto :goto_2a

    #@46
    .line 530
    :cond_46
    div-int/lit8 v2, v2, 0x2

    #@48
    return v2

    #@49
    :cond_49
    return v0
.end method

.method buildKeyFrames([F[I)I
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFrames",
            "mode"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_4d

    #@3
    .line 496
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@5
    aget-object v1, v1, v0

    #@7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    #@a
    move-result-object v1

    #@b
    if-eqz p2, :cond_28

    #@d
    .line 498
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@20
    add-int/lit8 v5, v3, 0x1

    #@22
    .line 499
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

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
    move v9, p2

    #@2a
    .line 504
    :goto_2a
    array-length v2, v1

    #@2b
    if-ge p2, v2, :cond_4a

    #@2d
    .line 505
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2f
    aget-object v2, v2, v0

    #@31
    aget-wide v3, v1, p2

    #@33
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@35
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@38
    .line 506
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@3a
    aget-wide v3, v1, p2

    #@3c
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@3e
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@40
    move-object v7, p1

    #@41
    move v8, v9

    #@42
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    #@45
    add-int/lit8 v9, v9, 0x2

    #@47
    add-int/lit8 p2, p2, 0x1

    #@49
    goto :goto_2a

    #@4a
    .line 509
    :cond_4a
    div-int/lit8 v9, v9, 0x2

    #@4c
    return v9

    #@4d
    :cond_4d
    return v0
.end method

.method buildPath([FI)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "points",
            "pointCount"
        }
    .end annotation

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
    .line 282
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 283
    :goto_1b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 284
    :goto_2a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@36
    move-object v13, v1

    #@37
    .line 285
    :goto_37
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

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
    .line 289
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    #@4b
    cmpl-float v3, v2, v9

    #@4d
    const/4 v4, 0x0

    #@4e
    if-eqz v3, :cond_68

    #@50
    .line 290
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

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
    .line 296
    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    #@67
    move-result v1

    #@68
    :cond_68
    move v6, v1

    #@69
    float-to-double v1, v6

    #@6a
    .line 301
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@6c
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@6e
    .line 304
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@84
    .line 305
    iget-object v15, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@86
    if-eqz v15, :cond_9d

    #@88
    .line 306
    iget v15, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@8a
    cmpg-float v15, v15, v6

    #@8c
    if-gez v15, :cond_93

    #@8e
    .line 307
    iget-object v3, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@90
    .line 308
    iget v4, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@92
    goto :goto_9d

    #@93
    .line 310
    :cond_93
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    #@96
    move-result v15

    #@97
    if-eqz v15, :cond_9d

    #@99
    .line 311
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    .line 318
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
    .line 322
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
    .line 327
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@bd
    const/4 v9, 0x0

    #@be
    aget-object v1, v1, v9

    #@c0
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@c2
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@c5
    .line 328
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@c7
    if-eqz v1, :cond_d1

    #@c9
    .line 329
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@cb
    array-length v5, v4

    #@cc
    if-lez v5, :cond_d1

    #@ce
    .line 330
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@d1
    .line 333
    :cond_d1
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@d3
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@d5
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    #@e2
    if-eqz v13, :cond_ee

    #@e4
    .line 336
    aget v1, p1, v15

    #@e6
    invoke-virtual {v13, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

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
    .line 338
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
    .line 341
    aget v1, p1, v15

    #@ff
    invoke-virtual {v14, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

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
    .line 343
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

.method buildRect(F[FI)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "path",
            "offset"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 550
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    #@4
    move-result p1

    #@5
    .line 551
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@7
    const/4 v1, 0x0

    #@8
    aget-object v0, v0, v1

    #@a
    float-to-double v1, p1

    #@b
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@d
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@10
    .line 552
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@14
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@16
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    #@19
    return-void
.end method

.method buildRectangles([FI)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "pointCount"
        }
    .end annotation

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
    .line 559
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    #@10
    move-result v3

    #@11
    .line 560
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@13
    aget-object v4, v4, v0

    #@15
    float-to-double v5, v3

    #@16
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@18
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@1b
    .line 561
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1d
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@1f
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@21
    mul-int/lit8 v6, v2, 0x8

    #@23
    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_8

    #@29
    :cond_29
    return-void
.end method

.method endTrigger(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    #@0
    .line 1221
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "button"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_29

    #@e
    .line 1222
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@10
    if-eqz v0, :cond_29

    #@12
    const/4 v0, 0x0

    #@13
    .line 1223
    :goto_13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@15
    array-length v2, v1

    #@16
    if-ge v0, v2, :cond_29

    #@18
    .line 1224
    aget-object v1, v1, v0

    #@1a
    if-eqz p1, :cond_1f

    #@1c
    const/high16 v2, -0x3d380000    # -100.0f

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    const/high16 v2, 0x42c80000    # 100.0f

    #@21
    :goto_21
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@23
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_13

    #@29
    :cond_29
    return-void
.end method

.method public getAnimateRelativeTo()I
    .registers 2

    #@0
    .line 238
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@4
    return v0
.end method

.method getAttributeValues(Ljava/lang/String;[FI)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attributeType",
            "points",
            "pointCount"
        }
    .end annotation

    #@0
    .line 539
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 543
    :goto_d
    array-length v0, p2

    #@e
    if-ge p3, v0, :cond_1f

    #@10
    .line 544
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
    .line 546
    :cond_1f
    array-length p1, p2

    #@20
    return p1
.end method

.method public getCenter(D[F[F)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "pos",
            "vel"
        }
    .end annotation

    #@0
    const/4 v0, 0x4

    #@1
    new-array v5, v0, [D

    #@3
    new-array v7, v0, [D

    #@5
    .line 258
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@7
    const/4 v1, 0x0

    #@8
    aget-object v0, v0, v1

    #@a
    invoke-virtual {v0, p1, p2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@d
    .line 259
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@f
    aget-object v0, v0, v1

    #@11
    invoke-virtual {v0, p1, p2, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@14
    const/4 v0, 0x0

    #@15
    .line 260
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([FF)V

    #@18
    .line 261
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@1c
    move-wide v2, p1

    #@1d
    move-object v6, p3

    #@1e
    move-object v8, p4

    #@1f
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[F[D[F)V

    #@22
    return-void
.end method

.method public getCenterX()F
    .registers 2

    #@0
    .line 247
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterX:F

    #@2
    return v0
.end method

.method public getCenterY()F
    .registers 2

    #@0
    .line 251
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterY:F

    #@2
    return v0
.end method

.method getDpDt(FFF[F)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "locationX",
            "locationY",
            "mAnchorDpDt"
        }
    .end annotation

    #@0
    .line 1395
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    #@2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    #@5
    move-result p1

    #@6
    .line 1397
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz v0, :cond_5d

    #@b
    .line 1398
    aget-object v0, v0, v1

    #@d
    float-to-double v2, p1

    #@e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@10
    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@13
    .line 1399
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@15
    aget-object p1, p1, v1

    #@17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@19
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@1c
    .line 1400
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    #@1e
    aget p1, p1, v1

    #@20
    .line 1401
    :goto_20
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@22
    array-length v0, v9

    #@23
    if-ge v1, v0, :cond_2e

    #@25
    .line 1402
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
    .line 1405
    :cond_2e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@30
    if-eqz p1, :cond_50

    #@32
    .line 1406
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@34
    array-length v1, v0

    #@35
    if-lez v1, :cond_4f

    #@37
    .line 1407
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@3a
    .line 1408
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@3c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@3e
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@41
    .line 1409
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@43
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@45
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@47
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@49
    move v5, p2

    #@4a
    move v6, p3

    #@4b
    move-object v7, p4

    #@4c
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    #@4f
    :cond_4f
    return-void

    #@50
    .line 1413
    :cond_50
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@52
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@54
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@56
    move v5, p2

    #@57
    move v6, p3

    #@58
    move-object v7, p4

    #@59
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    #@5c
    return-void

    #@5d
    .line 1417
    :cond_5d
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@5f
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@61
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@63
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@65
    sub-float/2addr p1, v0

    #@66
    .line 1418
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@68
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@6a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@6c
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@6e
    sub-float/2addr v0, v2

    #@6f
    .line 1419
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@71
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@73
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@75
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@77
    sub-float/2addr v2, v3

    #@78
    .line 1420
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@7a
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@7c
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@7e
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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
    .line 1423
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
    .line 1424
    aput v0, p4, p1

    #@93
    return-void
.end method

.method public getDrawPath()I
    .registers 4

    #@0
    .line 1508
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@4
    .line 1509
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@16
    .line 1510
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@18
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v0

    #@1c
    goto :goto_a

    #@1d
    .line 1512
    :cond_1d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1f
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

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
    .line 227
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@4
    return v0
.end method

.method public getFinalWidth()F
    .registers 2

    #@0
    .line 218
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@4
    return v0
.end method

.method public getFinalX()F
    .registers 2

    #@0
    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@4
    return v0
.end method

.method public getFinalY()F
    .registers 2

    #@0
    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@4
    return v0
.end method

.method getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    #@0
    .line 149
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@8
    return-object p1
.end method

.method public getKeyFrameInfo(I[I)I
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "info"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    const/4 v2, 0x2

    #@5
    new-array v2, v2, [F

    #@7
    .line 1580
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v14, Landroidx/constraintlayout/motion/widget/Key;

    #@1d
    .line 1581
    iget v3, v14, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    #@1f
    if-eq v3, v1, :cond_25

    #@21
    const/4 v3, -0x1

    #@22
    if-ne v1, v3, :cond_25

    #@24
    goto :goto_10

    #@25
    .line 1585
    :cond_25
    aput v11, p2, v13

    #@27
    add-int/lit8 v3, v13, 0x1

    #@29
    .line 1587
    iget v4, v14, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    #@2b
    aput v4, p2, v3

    #@2d
    const/4 v15, 0x1

    #@2e
    add-int/lit8 v16, v3, 0x1

    #@30
    .line 1588
    iget v3, v14, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@32
    aput v3, p2, v16

    #@34
    .line 1590
    iget v3, v14, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@36
    int-to-float v3, v3

    #@37
    const/high16 v4, 0x42c80000    # 100.0f

    #@39
    div-float/2addr v3, v4

    #@3a
    .line 1591
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@3c
    aget-object v4, v4, v11

    #@3e
    float-to-double v5, v3

    #@3f
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@41
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@44
    .line 1592
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@46
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@48
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    #@52
    add-int/lit8 v16, v16, 0x1

    #@54
    aget v3, v2, v11

    #@56
    .line 1593
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
    .line 1594
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@63
    move-result v3

    #@64
    aput v3, p2, v16

    #@66
    .line 1595
    instance-of v3, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@68
    if-eqz v3, :cond_86

    #@6a
    .line 1596
    check-cast v14, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@6c
    add-int/lit8 v16, v16, 0x1

    #@6e
    .line 1597
    iget v3, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@70
    aput v3, p2, v16

    #@72
    add-int/lit8 v16, v16, 0x1

    #@74
    .line 1599
    iget v3, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@76
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@79
    move-result v3

    #@7a
    aput v3, p2, v16

    #@7c
    add-int/lit8 v16, v16, 0x1

    #@7e
    .line 1600
    iget v3, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

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
    .line 1603
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "x",
            "y"
        }
    .end annotation

    #@0
    .line 567
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@6
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@8
    sub-float/2addr v0, v1

    #@9
    .line 568
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@b
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@d
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@f
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@11
    sub-float/2addr v1, v2

    #@12
    .line 569
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@14
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@16
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@18
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@1a
    const/high16 v4, 0x40000000    # 2.0f

    #@1c
    div-float/2addr v3, v4

    #@1d
    add-float/2addr v2, v3

    #@1e
    .line 570
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@20
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@22
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@24
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@26
    div-float/2addr v5, v4

    #@27
    add-float/2addr v3, v5

    #@28
    float-to-double v4, v0

    #@29
    float-to-double v6, v1

    #@2a
    .line 571
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
    .line 578
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
    .line 588
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "pos"
        }
    .end annotation

    #@0
    .line 1549
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    #@15
    add-int/lit8 v11, v2, 0x1

    #@17
    .line 1550
    iget v4, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@19
    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    #@1b
    mul-int/lit16 v5, v5, 0x3e8

    #@1d
    add-int/2addr v4, v5

    #@1e
    aput v4, p1, v2

    #@20
    .line 1551
    iget v2, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@22
    int-to-float v2, v2

    #@23
    const/high16 v3, 0x42c80000    # 100.0f

    #@25
    div-float/2addr v2, v3

    #@26
    .line 1552
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@28
    aget-object v3, v3, v1

    #@2a
    float-to-double v4, v2

    #@2b
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@2d
    invoke-virtual {v3, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@30
    .line 1553
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@32
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@34
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@36
    move-object v8, p2

    #@37
    move v9, v10

    #@38
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    #@0
    .line 349
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@7
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@a
    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@c
    if-eqz v0, :cond_16

    #@e
    .line 351
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@10
    array-length v2, v1

    #@11
    if-lez v2, :cond_16

    #@13
    .line 352
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@16
    .line 355
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@18
    return-object p1
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutWidth",
            "layoutHeight",
            "x",
            "y"
        }
    .end annotation

    #@0
    .line 473
    new-instance v7, Landroid/graphics/RectF;

    #@2
    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    #@5
    .line 474
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@7
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@9
    iput v0, v7, Landroid/graphics/RectF;->left:F

    #@b
    .line 475
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@d
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@f
    iput v0, v7, Landroid/graphics/RectF;->top:F

    #@11
    .line 476
    iget v0, v7, Landroid/graphics/RectF;->left:F

    #@13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@15
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@17
    add-float/2addr v0, v1

    #@18
    iput v0, v7, Landroid/graphics/RectF;->right:F

    #@1a
    .line 477
    iget v0, v7, Landroid/graphics/RectF;->top:F

    #@1c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1e
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@20
    add-float/2addr v0, v1

    #@21
    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    #@23
    .line 478
    new-instance v8, Landroid/graphics/RectF;

    #@25
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    #@28
    .line 479
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2a
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@2c
    iput v0, v8, Landroid/graphics/RectF;->left:F

    #@2e
    .line 480
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@30
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@32
    iput v0, v8, Landroid/graphics/RectF;->top:F

    #@34
    .line 481
    iget v0, v8, Landroid/graphics/RectF;->left:F

    #@36
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@38
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@3a
    add-float/2addr v0, v1

    #@3b
    iput v0, v8, Landroid/graphics/RectF;->right:F

    #@3d
    .line 482
    iget v0, v8, Landroid/graphics/RectF;->top:F

    #@3f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@41
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@43
    add-float/2addr v0, v1

    #@44
    iput v0, v8, Landroid/graphics/RectF;->bottom:F

    #@46
    .line 483
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v0, Landroidx/constraintlayout/motion/widget/Key;

    #@58
    .line 484
    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    #@5a
    if-eqz v1, :cond_4c

    #@5c
    .line 485
    move-object v10, v0

    #@5d
    check-cast v10, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

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
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "width",
            "height",
            "locationX",
            "locationY",
            "mAnchorDpDt"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    .line 1442
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    #@4
    move/from16 v2, p1

    #@6
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    #@9
    move-result v1

    #@a
    .line 1444
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 1445
    :goto_19
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 1446
    :goto_27
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@29
    const-string v8, "rotation"

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
    .line 1447
    :goto_35
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 1448
    :goto_43
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .line 1450
    :goto_51
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@5d
    .line 1451
    :goto_5d
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@69
    .line 1452
    :goto_69
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@75
    .line 1453
    :goto_75
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v10, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@81
    .line 1454
    :goto_81
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@8c
    .line 1456
    :goto_8c
    new-instance v12, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    #@8e
    invoke-direct {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    #@91
    .line 1457
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    #@94
    .line 1458
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@97
    .line 1459
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@9a
    .line 1460
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@9d
    .line 1461
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@a0
    .line 1462
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@a3
    .line 1463
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@a6
    .line 1464
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@a8
    if-eqz v13, :cond_da

    #@aa
    .line 1465
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@ac
    array-length v3, v2

    #@ad
    if-lez v3, :cond_cb

    #@af
    float-to-double v3, v1

    #@b0
    .line 1466
    invoke-virtual {v13, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@b3
    .line 1467
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@b5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@b7
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@ba
    .line 1468
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@bc
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@be
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@c0
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@c2
    move/from16 v2, p4

    #@c4
    move/from16 v3, p5

    #@c6
    move-object/from16 v4, p6

    #@c8
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    .line 1470
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    #@d9
    return-void

    #@da
    .line 1473
    :cond_da
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@dc
    const/4 v14, 0x0

    #@dd
    if-eqz v13, :cond_124

    #@df
    .line 1474
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    #@e1
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    #@e4
    move-result v1

    #@e5
    .line 1475
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@e7
    aget-object v2, v2, v14

    #@e9
    float-to-double v3, v1

    #@ea
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@ec
    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@ef
    .line 1476
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@f1
    aget-object v1, v1, v14

    #@f3
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@f5
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@f8
    .line 1477
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    #@fa
    aget v1, v1, v14

    #@fc
    .line 1478
    :goto_fc
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@fe
    array-length v2, v6

    #@ff
    if-ge v14, v2, :cond_10a

    #@101
    .line 1479
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
    .line 1481
    :cond_10a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@10c
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@10e
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@110
    move/from16 v2, p4

    #@112
    move/from16 v3, p5

    #@114
    move-object/from16 v4, p6

    #@116
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    #@119
    move-object v1, v12

    #@11a
    move/from16 v4, p2

    #@11c
    move/from16 v5, p3

    #@11e
    move-object/from16 v6, p6

    #@120
    .line 1482
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    #@123
    return-void

    #@124
    .line 1487
    :cond_124
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@126
    iget v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@128
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@12a
    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@12c
    sub-float/2addr v13, v15

    #@12d
    .line 1488
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@12f
    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@131
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@133
    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@135
    sub-float/2addr v15, v14

    #@136
    .line 1489
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@138
    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@13a
    move-object/from16 v16, v4

    #@13c
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@13e
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@140
    sub-float/2addr v14, v4

    #@141
    .line 1490
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@143
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@145
    move-object/from16 v17, v10

    #@147
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@149
    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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
    .line 1493
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
    .line 1494
    aput v15, p6, v4

    #@163
    .line 1496
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    #@166
    .line 1497
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@169
    .line 1498
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@16c
    .line 1499
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    #@16f
    .line 1500
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@172
    .line 1501
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    #@175
    move-object/from16 v4, v16

    #@177
    move-object/from16 v10, v17

    #@179
    .line 1502
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
    .line 1503
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    #@18a
    return-void
.end method

.method public getStartHeight()F
    .registers 2

    #@0
    .line 209
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@4
    return v0
.end method

.method public getStartWidth()F
    .registers 2

    #@0
    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@4
    return v0
.end method

.method public getStartX()F
    .registers 2

    #@0
    .line 162
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@4
    return v0
.end method

.method public getStartY()F
    .registers 2

    #@0
    .line 172
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@4
    return v0
.end method

.method public getTransformPivotTarget()I
    .registers 2

    #@0
    .line 135
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    #@2
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    #@0
    .line 1005
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "global_position",
            "time",
            "keyCache"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v11, p1

    #@4
    const/4 v1, 0x0

    #@5
    move/from16 v2, p2

    #@7
    .line 1240
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    #@a
    move-result v2

    #@b
    .line 1242
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    #@d
    sget v4, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@f
    const/high16 v13, 0x3f800000    # 1.0f

    #@11
    if-eq v3, v4, :cond_44

    #@13
    .line 1244
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    #@15
    int-to-float v3, v3

    #@16
    div-float v3, v13, v3

    #@18
    div-float v4, v2, v3

    #@1a
    float-to-double v4, v4

    #@1b
    .line 1245
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@1e
    move-result-wide v4

    #@1f
    double-to-float v4, v4

    #@20
    mul-float/2addr v4, v3

    #@21
    rem-float/2addr v2, v3

    #@22
    div-float/2addr v2, v3

    #@23
    .line 1248
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    #@25
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_2f

    #@2b
    .line 1249
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    #@2d
    add-float/2addr v2, v5

    #@2e
    rem-float/2addr v2, v13

    #@2f
    .line 1251
    :cond_2f
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    #@31
    if-eqz v5, :cond_38

    #@33
    .line 1252
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@36
    move-result v2

    #@37
    goto :goto_42

    #@38
    :cond_38
    float-to-double v5, v2

    #@39
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    #@3b
    cmpl-double v2, v5, v7

    #@3d
    if-lez v2, :cond_41

    #@3f
    move v2, v13

    #@40
    goto :goto_42

    #@41
    :cond_41
    const/4 v2, 0x0

    #@42
    :goto_42
    mul-float/2addr v2, v3

    #@43
    add-float/2addr v2, v4

    #@44
    :cond_44
    move v14, v2

    #@45
    .line 1259
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@47
    if-eqz v2, :cond_61

    #@49
    .line 1260
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v2

    #@51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_61

    #@57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v3

    #@5b
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewSpline;

    #@5d
    .line 1261
    invoke-virtual {v3, v11, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(Landroid/view/View;F)V

    #@60
    goto :goto_51

    #@61
    .line 1265
    :cond_61
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@63
    const/4 v15, 0x0

    #@64
    if-eqz v2, :cond_95

    #@66
    .line 1266
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@69
    move-result-object v2

    #@6a
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@6d
    move-result-object v7

    #@6e
    move-object v8, v1

    #@6f
    move v9, v15

    #@70
    :goto_70
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_91

    #@76
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@79
    move-result-object v1

    #@7a
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    #@7c
    .line 1267
    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    #@7e
    if-eqz v2, :cond_84

    #@80
    .line 1268
    move-object v8, v1

    #@81
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    #@83
    goto :goto_70

    #@84
    :cond_84
    move-object/from16 v2, p1

    #@86
    move v3, v14

    #@87
    move-wide/from16 v4, p3

    #@89
    move-object/from16 v6, p5

    #@8b
    .line 1271
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    #@8e
    move-result v1

    #@8f
    or-int/2addr v9, v1

    #@90
    goto :goto_70

    #@91
    :cond_91
    move/from16 v16, v9

    #@93
    move-object v9, v8

    #@94
    goto :goto_98

    #@95
    :cond_95
    move-object v9, v1

    #@96
    move/from16 v16, v15

    #@98
    .line 1275
    :goto_98
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@9a
    const/4 v10, 0x1

    #@9b
    if-eqz v1, :cond_1f7

    #@9d
    .line 1276
    aget-object v1, v1, v15

    #@9f
    float-to-double v7, v14

    #@a0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@a2
    invoke-virtual {v1, v7, v8, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@a5
    .line 1277
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@a7
    aget-object v1, v1, v15

    #@a9
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@ab
    invoke-virtual {v1, v7, v8, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@ae
    .line 1278
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@b0
    if-eqz v1, :cond_c1

    #@b2
    .line 1279
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@b4
    array-length v3, v2

    #@b5
    if-lez v3, :cond_c1

    #@b7
    .line 1280
    invoke-virtual {v1, v7, v8, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    #@ba
    .line 1281
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@bc
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@be
    invoke-virtual {v1, v7, v8, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    #@c1
    .line 1285
    :cond_c1
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    #@c3
    if-nez v1, :cond_e1

    #@c5
    .line 1286
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@c7
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@c9
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@cb
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@cd
    const/16 v17, 0x0

    #@cf
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    #@d1
    move v2, v14

    #@d2
    move/from16 v18, v3

    #@d4
    move-object/from16 v3, p1

    #@d6
    move-wide v12, v7

    #@d7
    move-object/from16 v7, v17

    #@d9
    move/from16 v8, v18

    #@db
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setView(FLandroid/view/View;[I[D[D[DZ)V

    #@de
    .line 1287
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    #@e0
    goto :goto_e2

    #@e1
    :cond_e1
    move-wide v12, v7

    #@e2
    .line 1289
    :goto_e2
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    #@e4
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@e6
    if-eq v1, v2, :cond_144

    #@e8
    .line 1290
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    #@ea
    if-nez v1, :cond_fa

    #@ec
    .line 1291
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@ef
    move-result-object v1

    #@f0
    check-cast v1, Landroid/view/View;

    #@f2
    .line 1292
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    #@f4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@f7
    move-result-object v1

    #@f8
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    #@fa
    .line 1294
    :cond_fa
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    #@fc
    if-eqz v1, :cond_144

    #@fe
    .line 1295
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@101
    move-result v1

    #@102
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    #@104
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@107
    move-result v2

    #@108
    add-int/2addr v1, v2

    #@109
    int-to-float v1, v1

    #@10a
    const/high16 v2, 0x40000000    # 2.0f

    #@10c
    div-float/2addr v1, v2

    #@10d
    .line 1296
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    #@10f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@112
    move-result v3

    #@113
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    #@115
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@118
    move-result v4

    #@119
    add-int/2addr v3, v4

    #@11a
    int-to-float v3, v3

    #@11b
    div-float/2addr v3, v2

    #@11c
    .line 1297
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    #@11f
    move-result v2

    #@120
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    #@123
    move-result v4

    #@124
    sub-int/2addr v2, v4

    #@125
    if-lez v2, :cond_144

    #@127
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    #@12a
    move-result v2

    #@12b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@12e
    move-result v4

    #@12f
    sub-int/2addr v2, v4

    #@130
    if-lez v2, :cond_144

    #@132
    .line 1298
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    #@135
    move-result v2

    #@136
    int-to-float v2, v2

    #@137
    sub-float/2addr v3, v2

    #@138
    .line 1299
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@13b
    move-result v2

    #@13c
    int-to-float v2, v2

    #@13d
    sub-float/2addr v1, v2

    #@13e
    .line 1300
    invoke-virtual {v11, v3}, Landroid/view/View;->setPivotX(F)V

    #@141
    .line 1301
    invoke-virtual {v11, v1}, Landroid/view/View;->setPivotY(F)V

    #@144
    .line 1306
    :cond_144
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@146
    if-eqz v1, :cond_172

    #@148
    .line 1307
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@14b
    move-result-object v1

    #@14c
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@14f
    move-result-object v8

    #@150
    :cond_150
    :goto_150
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@153
    move-result v1

    #@154
    if-eqz v1, :cond_172

    #@156
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@159
    move-result-object v1

    #@15a
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@15c
    .line 1308
    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    #@15e
    if-eqz v2, :cond_150

    #@160
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@162
    array-length v3, v2

    #@163
    if-le v3, v10, :cond_150

    #@165
    .line 1309
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    #@167
    aget-wide v4, v2, v15

    #@169
    aget-wide v6, v2, v10

    #@16b
    move-object/from16 v2, p1

    #@16d
    move v3, v14

    #@16e
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;->setPathRotate(Landroid/view/View;FDD)V

    #@171
    goto :goto_150

    #@172
    :cond_172
    if-eqz v9, :cond_18f

    #@174
    .line 1315
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@176
    aget-wide v7, v1, v15

    #@178
    aget-wide v17, v1, v10

    #@17a
    move-object v1, v9

    #@17b
    move-object/from16 v2, p1

    #@17d
    move-object/from16 v3, p5

    #@17f
    move v4, v14

    #@180
    move-wide/from16 v5, p3

    #@182
    move/from16 v19, v10

    #@184
    move-wide/from16 v9, v17

    #@186
    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;FJDD)Z

    #@189
    move-result v1

    #@18a
    or-int v1, v16, v1

    #@18c
    move/from16 v16, v1

    #@18e
    goto :goto_191

    #@18f
    :cond_18f
    move/from16 v19, v10

    #@191
    :goto_191
    move/from16 v10, v19

    #@193
    .line 1319
    :goto_193
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@195
    array-length v2, v1

    #@196
    if-ge v10, v2, :cond_1b7

    #@198
    .line 1320
    aget-object v1, v1, v10

    #@19a
    .line 1321
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    #@19c
    invoke-virtual {v1, v12, v13, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    #@19f
    .line 1322
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1a1
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@1a3
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    #@1a5
    add-int/lit8 v3, v10, -0x1

    #@1a7
    aget-object v2, v2, v3

    #@1a9
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ac
    move-result-object v1

    #@1ad
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@1af
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    #@1b1
    invoke-static {v1, v11, v2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    #@1b4
    add-int/lit8 v10, v10, 0x1

    #@1b6
    goto :goto_193

    #@1b7
    .line 1325
    :cond_1b7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@1b9
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    #@1bb
    if-nez v1, :cond_1e5

    #@1bd
    const/4 v1, 0x0

    #@1be
    cmpg-float v1, v14, v1

    #@1c0
    if-gtz v1, :cond_1ca

    #@1c2
    .line 1327
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@1c4
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    #@1c6
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    #@1c9
    goto :goto_1e5

    #@1ca
    :cond_1ca
    const/high16 v1, 0x3f800000    # 1.0f

    #@1cc
    cmpl-float v1, v14, v1

    #@1ce
    if-ltz v1, :cond_1d8

    #@1d0
    .line 1329
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@1d2
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    #@1d4
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    #@1d7
    goto :goto_1e5

    #@1d8
    .line 1330
    :cond_1d8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@1da
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    #@1dc
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@1de
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    #@1e0
    if-eq v1, v2, :cond_1e5

    #@1e2
    .line 1331
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    #@1e5
    .line 1335
    :cond_1e5
    :goto_1e5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@1e7
    if-eqz v1, :cond_271

    #@1e9
    move v1, v15

    #@1ea
    .line 1336
    :goto_1ea
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@1ec
    array-length v3, v2

    #@1ed
    if-ge v1, v3, :cond_271

    #@1ef
    .line 1337
    aget-object v2, v2, v1

    #@1f1
    invoke-virtual {v2, v14, v11}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    #@1f4
    add-int/lit8 v1, v1, 0x1

    #@1f6
    goto :goto_1ea

    #@1f7
    :cond_1f7
    move/from16 v19, v10

    #@1f9
    .line 1343
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1fb
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@1fd
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1ff
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@201
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@203
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@205
    sub-float/2addr v2, v3

    #@206
    mul-float/2addr v2, v14

    #@207
    add-float/2addr v1, v2

    #@208
    .line 1344
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@20a
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@20c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@20e
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@210
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@212
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@214
    sub-float/2addr v3, v4

    #@215
    mul-float/2addr v3, v14

    #@216
    add-float/2addr v2, v3

    #@217
    .line 1345
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@219
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@21b
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@21d
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@21f
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@221
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@223
    sub-float/2addr v4, v5

    #@224
    mul-float/2addr v4, v14

    #@225
    add-float/2addr v3, v4

    #@226
    .line 1346
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@228
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@22a
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@22c
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@22e
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@230
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@232
    sub-float/2addr v5, v6

    #@233
    mul-float/2addr v5, v14

    #@234
    add-float/2addr v4, v5

    #@235
    const/high16 v5, 0x3f000000    # 0.5f

    #@237
    add-float/2addr v1, v5

    #@238
    float-to-int v6, v1

    #@239
    add-float/2addr v2, v5

    #@23a
    float-to-int v5, v2

    #@23b
    add-float/2addr v1, v3

    #@23c
    float-to-int v1, v1

    #@23d
    add-float/2addr v2, v4

    #@23e
    float-to-int v2, v2

    #@23f
    sub-int v3, v1, v6

    #@241
    sub-int v4, v2, v5

    #@243
    .line 1362
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@245
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@247
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@249
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@24b
    cmpl-float v7, v7, v8

    #@24d
    if-nez v7, :cond_25f

    #@24f
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@251
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@253
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@255
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@257
    cmpl-float v7, v7, v8

    #@259
    if-nez v7, :cond_25f

    #@25b
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    #@25d
    if-eqz v7, :cond_26e

    #@25f
    :cond_25f
    const/high16 v7, 0x40000000    # 2.0f

    #@261
    .line 1364
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@264
    move-result v3

    #@265
    .line 1365
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@268
    move-result v4

    #@269
    .line 1366
    invoke-virtual {v11, v3, v4}, Landroid/view/View;->measure(II)V

    #@26c
    .line 1367
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    #@26e
    .line 1369
    :cond_26e
    invoke-virtual {v11, v6, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@271
    .line 1372
    :cond_271
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    #@273
    if-eqz v1, :cond_2a0

    #@275
    .line 1373
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@278
    move-result-object v1

    #@279
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@27c
    move-result-object v8

    #@27d
    :goto_27d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@280
    move-result v1

    #@281
    if-eqz v1, :cond_2a0

    #@283
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@286
    move-result-object v1

    #@287
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@289
    .line 1374
    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    #@28b
    if-eqz v2, :cond_29c

    #@28d
    .line 1375
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    #@28f
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@291
    aget-wide v4, v2, v15

    #@293
    aget-wide v6, v2, v19

    #@295
    move-object/from16 v2, p1

    #@297
    move v3, v14

    #@298
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;->setPathRotate(Landroid/view/View;FDD)V

    #@29b
    goto :goto_27d

    #@29c
    .line 1378
    :cond_29c
    invoke-virtual {v1, v11, v14}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(Landroid/view/View;F)V

    #@29f
    goto :goto_27d

    #@2a0
    :cond_2a0
    return v16
.end method

.method name()Ljava/lang/String;
    .registers 3

    #@0
    .line 1521
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 1522
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "key",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    #@0
    .line 1526
    new-instance v2, Landroid/graphics/RectF;

    #@2
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@5
    .line 1527
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@7
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@9
    iput v0, v2, Landroid/graphics/RectF;->left:F

    #@b
    .line 1528
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@d
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@f
    iput v0, v2, Landroid/graphics/RectF;->top:F

    #@11
    .line 1529
    iget v0, v2, Landroid/graphics/RectF;->left:F

    #@13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@15
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@17
    add-float/2addr v0, v1

    #@18
    iput v0, v2, Landroid/graphics/RectF;->right:F

    #@1a
    .line 1530
    iget v0, v2, Landroid/graphics/RectF;->top:F

    #@1c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1e
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@20
    add-float/2addr v0, v1

    #@21
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    #@23
    .line 1531
    new-instance v3, Landroid/graphics/RectF;

    #@25
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    #@28
    .line 1532
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2a
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@2c
    iput v0, v3, Landroid/graphics/RectF;->left:F

    #@2e
    .line 1533
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@30
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@32
    iput v0, v3, Landroid/graphics/RectF;->top:F

    #@34
    .line 1534
    iget v0, v3, Landroid/graphics/RectF;->left:F

    #@36
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@38
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@3a
    add-float/2addr v0, v1

    #@3b
    iput v0, v3, Landroid/graphics/RectF;->right:F

    #@3d
    .line 1535
    iget v0, v3, Landroid/graphics/RectF;->top:F

    #@3f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@41
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@43
    add-float/2addr v0, v1

    #@44
    iput v0, v3, Landroid/graphics/RectF;->bottom:F

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
    .line 1536
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    #@4f
    return-void
.end method

.method public remeasure()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 268
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    #@3
    return-void
.end method

.method rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "out",
            "rotation",
            "preHeight",
            "preWidth"
        }
    .end annotation

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
    .line 1063
    :cond_e
    iget p3, p1, Landroid/graphics/Rect;->left:I

    #@10
    iget p5, p1, Landroid/graphics/Rect;->right:I

    #@12
    add-int/2addr p3, p5

    #@13
    .line 1064
    iget p5, p1, Landroid/graphics/Rect;->bottom:I

    #@15
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@17
    add-int/2addr p5, v0

    #@18
    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@1b
    move-result v0

    #@1c
    add-int/2addr p5, v0

    #@1d
    div-int/2addr p5, v1

    #@1e
    sub-int/2addr p4, p5

    #@1f
    iput p4, p2, Landroid/graphics/Rect;->left:I

    #@21
    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@24
    move-result p4

    #@25
    sub-int/2addr p3, p4

    #@26
    div-int/2addr p3, v1

    #@27
    iput p3, p2, Landroid/graphics/Rect;->top:I

    #@29
    .line 1067
    iget p3, p2, Landroid/graphics/Rect;->left:I

    #@2b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@2e
    move-result p4

    #@2f
    add-int/2addr p3, p4

    #@30
    iput p3, p2, Landroid/graphics/Rect;->right:I

    #@32
    .line 1068
    iget p3, p2, Landroid/graphics/Rect;->top:I

    #@34
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@37
    move-result p1

    #@38
    add-int/2addr p3, p1

    #@39
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    #@3b
    goto/16 :goto_ca

    #@3d
    .line 1071
    :cond_3d
    iget p3, p1, Landroid/graphics/Rect;->left:I

    #@3f
    iget p4, p1, Landroid/graphics/Rect;->right:I

    #@41
    add-int/2addr p3, p4

    #@42
    .line 1072
    iget p4, p1, Landroid/graphics/Rect;->top:I

    #@44
    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    #@46
    .line 1073
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@49
    move-result p4

    #@4a
    div-int/2addr p4, v1

    #@4b
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@4d
    add-int/2addr p4, v0

    #@4e
    div-int/lit8 v0, p3, 0x2

    #@50
    sub-int/2addr p4, v0

    #@51
    iput p4, p2, Landroid/graphics/Rect;->left:I

    #@53
    .line 1074
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@56
    move-result p4

    #@57
    add-int/2addr p3, p4

    #@58
    div-int/2addr p3, v1

    #@59
    sub-int/2addr p5, p3

    #@5a
    iput p5, p2, Landroid/graphics/Rect;->top:I

    #@5c
    .line 1075
    iget p3, p2, Landroid/graphics/Rect;->left:I

    #@5e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@61
    move-result p4

    #@62
    add-int/2addr p3, p4

    #@63
    iput p3, p2, Landroid/graphics/Rect;->right:I

    #@65
    .line 1076
    iget p3, p2, Landroid/graphics/Rect;->top:I

    #@67
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@6a
    move-result p1

    #@6b
    add-int/2addr p3, p1

    #@6c
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    #@6e
    goto :goto_ca

    #@6f
    .line 1047
    :cond_6f
    iget p3, p1, Landroid/graphics/Rect;->left:I

    #@71
    iget p5, p1, Landroid/graphics/Rect;->right:I

    #@73
    add-int/2addr p3, p5

    #@74
    .line 1048
    iget p5, p1, Landroid/graphics/Rect;->top:I

    #@76
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@78
    add-int/2addr p5, v0

    #@79
    .line 1049
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@7c
    move-result v0

    #@7d
    add-int/2addr p5, v0

    #@7e
    div-int/2addr p5, v1

    #@7f
    sub-int/2addr p4, p5

    #@80
    iput p4, p2, Landroid/graphics/Rect;->left:I

    #@82
    .line 1050
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@85
    move-result p4

    #@86
    sub-int/2addr p3, p4

    #@87
    div-int/2addr p3, v1

    #@88
    iput p3, p2, Landroid/graphics/Rect;->top:I

    #@8a
    .line 1051
    iget p3, p2, Landroid/graphics/Rect;->left:I

    #@8c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@8f
    move-result p4

    #@90
    add-int/2addr p3, p4

    #@91
    iput p3, p2, Landroid/graphics/Rect;->right:I

    #@93
    .line 1052
    iget p3, p2, Landroid/graphics/Rect;->top:I

    #@95
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@98
    move-result p1

    #@99
    add-int/2addr p3, p1

    #@9a
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    #@9c
    goto :goto_ca

    #@9d
    .line 1055
    :cond_9d
    iget p3, p1, Landroid/graphics/Rect;->left:I

    #@9f
    iget p4, p1, Landroid/graphics/Rect;->right:I

    #@a1
    add-int/2addr p3, p4

    #@a2
    .line 1056
    iget p4, p1, Landroid/graphics/Rect;->top:I

    #@a4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@a6
    add-int/2addr p4, v0

    #@a7
    .line 1057
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@aa
    move-result v0

    #@ab
    sub-int/2addr p4, v0

    #@ac
    div-int/2addr p4, v1

    #@ad
    iput p4, p2, Landroid/graphics/Rect;->left:I

    #@af
    .line 1058
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@b2
    move-result p4

    #@b3
    add-int/2addr p3, p4

    #@b4
    div-int/2addr p3, v1

    #@b5
    sub-int/2addr p5, p3

    #@b6
    iput p5, p2, Landroid/graphics/Rect;->top:I

    #@b8
    .line 1059
    iget p3, p2, Landroid/graphics/Rect;->left:I

    #@ba
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@bd
    move-result p4

    #@be
    add-int/2addr p3, p4

    #@bf
    iput p3, p2, Landroid/graphics/Rect;->right:I

    #@c1
    .line 1060
    iget p3, p2, Landroid/graphics/Rect;->top:I

    #@c3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@c6
    move-result p1

    #@c7
    add-int/2addr p3, p1

    #@c8
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    #@ca
    :goto_ca
    return-void
.end method

.method setBothStates(Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    #@0
    .line 1157
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    const/4 v1, 0x0

    #@3
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@5
    .line 1158
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@7
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@9
    const/4 v0, 0x1

    #@a
    .line 1159
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    #@c
    .line 1160
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@e
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    #@11
    move-result v1

    #@12
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    #@15
    move-result v2

    #@16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@19
    move-result v3

    #@1a
    int-to-float v3, v3

    #@1b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@1e
    move-result v4

    #@1f
    int-to-float v4, v4

    #@20
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    #@23
    .line 1161
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@25
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    #@28
    move-result v1

    #@29
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    #@2c
    move-result v2

    #@2d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@30
    move-result v3

    #@31
    int-to-float v3, v3

    #@32
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@35
    move-result v4

    #@36
    int-to-float v4, v4

    #@37
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    #@3a
    .line 1162
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@3c
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    #@3f
    .line 1163
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@41
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    #@44
    return-void
.end method

.method public setDrawPath(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugMode"
        }
    .end annotation

    #@0
    .line 1517
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@4
    return-void
.end method

.method setEndState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cw",
            "constraintSet",
            "parentWidth",
            "parentHeight"
        }
    .end annotation

    #@0
    .line 1143
    iget v6, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@2
    if-eqz v6, :cond_10

    #@4
    .line 1145
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move v3, v6

    #@9
    move v4, p3

    #@a
    move v5, p4

    #@b
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    #@e
    .line 1146
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    #@10
    .line 1148
    :cond_10
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@12
    const/high16 p4, 0x3f800000    # 1.0f

    #@14
    iput p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@16
    .line 1149
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@18
    iput p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@1a
    .line 1150
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1c
    invoke-direct {p0, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@1f
    .line 1151
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@21
    iget p4, p1, Landroid/graphics/Rect;->left:I

    #@23
    int-to-float p4, p4

    #@24
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@26
    int-to-float v0, v0

    #@27
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@2a
    move-result v1

    #@2b
    int-to-float v1, v1

    #@2c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@2f
    move-result v2

    #@30
    int-to-float v2, v2

    #@31
    invoke-virtual {p3, p4, v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    #@34
    .line 1152
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@36
    iget p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    #@38
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3b
    move-result-object p4

    #@3c
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    #@3f
    .line 1153
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@41
    iget p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    #@43
    invoke-virtual {p3, p1, p2, v6, p4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    #@46
    return-void
.end method

.method public setPathMotionArc(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arc"
        }
    .end annotation

    #@0
    .line 626
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    #@2
    return-void
.end method

.method setStartCurrentState(Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    #@0
    .line 1009
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    const/4 v1, 0x0

    #@3
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@5
    .line 1010
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@7
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@9
    .line 1011
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@b
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    #@e
    move-result v1

    #@f
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    #@12
    move-result v2

    #@13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@16
    move-result v3

    #@17
    int-to-float v3, v3

    #@18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@1b
    move-result v4

    #@1c
    int-to-float v4, v4

    #@1d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    #@20
    .line 1012
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@22
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    #@25
    return-void
.end method

.method setStartState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cw",
            "constraintSet",
            "parentWidth",
            "parentHeight"
        }
    .end annotation

    #@0
    .line 1082
    iget v6, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@2
    if-eqz v6, :cond_e

    #@4
    .line 1084
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move v3, v6

    #@9
    move v4, p3

    #@a
    move v5, p4

    #@b
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    #@e
    .line 1086
    :cond_e
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@10
    const/4 p4, 0x0

    #@11
    iput p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@13
    .line 1087
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@15
    iput p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@17
    .line 1088
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@19
    invoke-direct {p0, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@1c
    .line 1089
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@1e
    iget p4, p1, Landroid/graphics/Rect;->left:I

    #@20
    int-to-float p4, p4

    #@21
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@23
    int-to-float v0, v0

    #@24
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@27
    move-result v1

    #@28
    int-to-float v1, v1

    #@29
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@2c
    move-result v2

    #@2d
    int-to-float v2, v2

    #@2e
    invoke-virtual {p3, p4, v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    #@31
    .line 1090
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    #@33
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@36
    move-result-object p3

    #@37
    .line 1091
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@39
    invoke-virtual {p4, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    #@3c
    .line 1092
    iget-object p4, p3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@3e
    iget p4, p4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    #@40
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@42
    .line 1093
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@44
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    #@46
    invoke-virtual {p4, p1, p2, v6, v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    #@49
    .line 1094
    iget-object p1, p3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@4b
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@4d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    #@4f
    .line 1095
    iget-object p1, p3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@51
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    #@53
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    #@55
    .line 1096
    iget-object p1, p3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@57
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    #@59
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    #@5b
    .line 1097
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@5d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@60
    move-result-object p1

    #@61
    iget-object p2, p3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@63
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@65
    iget-object p4, p3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@67
    iget-object p4, p4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    #@69
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@6b
    iget p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@6d
    invoke-static {p1, p2, p4, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;

    #@70
    move-result-object p1

    #@71
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    #@73
    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/motion/utils/ViewState;Landroid/view/View;III)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "v",
            "rotation",
            "preWidth",
            "preHeight"
        }
    .end annotation

    #@0
    .line 1016
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    const/4 v1, 0x0

    #@3
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@5
    .line 1017
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@7
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@9
    .line 1019
    new-instance v0, Landroid/graphics/Rect;

    #@b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

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
    .line 1022
    :cond_15
    iget p4, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    #@17
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    #@19
    add-int/2addr p4, v1

    #@1a
    .line 1023
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    #@1c
    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    #@1e
    add-int/2addr v1, v3

    #@1f
    .line 1024
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    #@22
    move-result v3

    #@23
    add-int/2addr v1, v3

    #@24
    div-int/2addr v1, v2

    #@25
    sub-int/2addr p5, v1

    #@26
    iput p5, v0, Landroid/graphics/Rect;->left:I

    #@28
    .line 1025
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    #@2b
    move-result p5

    #@2c
    sub-int/2addr p4, p5

    #@2d
    div-int/2addr p4, v2

    #@2e
    iput p4, v0, Landroid/graphics/Rect;->top:I

    #@30
    .line 1026
    iget p4, v0, Landroid/graphics/Rect;->left:I

    #@32
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    #@35
    move-result p5

    #@36
    add-int/2addr p4, p5

    #@37
    iput p4, v0, Landroid/graphics/Rect;->right:I

    #@39
    .line 1027
    iget p4, v0, Landroid/graphics/Rect;->top:I

    #@3b
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    #@3e
    move-result p5

    #@3f
    add-int/2addr p4, p5

    #@40
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    #@42
    goto :goto_70

    #@43
    .line 1030
    :cond_43
    iget p5, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    #@45
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    #@47
    add-int/2addr p5, v1

    #@48
    .line 1031
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    #@4a
    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    #@4c
    add-int/2addr v1, v3

    #@4d
    .line 1032
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    #@50
    move-result v3

    #@51
    sub-int/2addr v1, v3

    #@52
    div-int/2addr v1, v2

    #@53
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@55
    .line 1033
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    #@58
    move-result v1

    #@59
    add-int/2addr p5, v1

    #@5a
    div-int/2addr p5, v2

    #@5b
    sub-int/2addr p4, p5

    #@5c
    iput p4, v0, Landroid/graphics/Rect;->top:I

    #@5e
    .line 1034
    iget p4, v0, Landroid/graphics/Rect;->left:I

    #@60
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    #@63
    move-result p5

    #@64
    add-int/2addr p4, p5

    #@65
    iput p4, v0, Landroid/graphics/Rect;->right:I

    #@67
    .line 1035
    iget p4, v0, Landroid/graphics/Rect;->top:I

    #@69
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    #@6c
    move-result p5

    #@6d
    add-int/2addr p4, p5

    #@6e
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    #@70
    .line 1038
    :goto_70
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@72
    iget p5, v0, Landroid/graphics/Rect;->left:I

    #@74
    int-to-float p5, p5

    #@75
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@77
    int-to-float v1, v1

    #@78
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@7b
    move-result v2

    #@7c
    int-to-float v2, v2

    #@7d
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@80
    move-result v3

    #@81
    int-to-float v3, v3

    #@82
    invoke-virtual {p4, p5, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    #@85
    .line 1039
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@87
    iget p1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->rotation:F

    #@89
    invoke-virtual {p4, v0, p2, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroid/view/View;IF)V

    #@8c
    return-void
.end method

.method public setTransformPivotTarget(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformPivotTarget"
        }
    .end annotation

    #@0
    .line 144
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    #@2
    const/4 p1, 0x0

    #@3
    .line 145
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    #@5
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 996
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@2
    .line 997
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    #@8
    .line 998
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object p1

    #@c
    .line 999
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 1000
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@12
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    #@15
    move-result-object p1

    #@16
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mConstraintTag:Ljava/lang/String;

    #@18
    :cond_18
    return-void
.end method

.method public setup(IIFJ)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "transitionDuration",
            "currentTime"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    .line 634
    new-instance v1, Ljava/util/HashSet;

    #@4
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@7
    .line 635
    new-instance v1, Ljava/util/HashSet;

    #@9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@c
    .line 636
    new-instance v2, Ljava/util/HashSet;

    #@e
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@11
    .line 637
    new-instance v3, Ljava/util/HashSet;

    #@13
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@16
    .line 638
    new-instance v4, Ljava/util/HashMap;

    #@18
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@1b
    .line 650
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    #@1d
    sget v6, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@1f
    if-eq v5, v6, :cond_27

    #@21
    .line 651
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@23
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    #@25
    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@27
    .line 654
    :cond_27
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@29
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@2b
    invoke-virtual {v5, v6, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V

    #@2e
    .line 660
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@30
    if-eqz v5, :cond_8e

    #@32
    .line 661
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v5

    #@36
    const/4 v7, 0x0

    #@37
    :cond_37
    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_8f

    #@3d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v8

    #@41
    check-cast v8, Landroidx/constraintlayout/motion/widget/Key;

    #@43
    .line 662
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@45
    if-eqz v9, :cond_66

    #@47
    .line 663
    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@49
    .line 664
    new-instance v9, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@4b
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@4d
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@4f
    move-object v10, v9

    #@50
    move/from16 v11, p1

    #@52
    move/from16 v12, p2

    #@54
    move-object v13, v8

    #@55
    invoke-direct/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@58
    invoke-direct {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@5b
    .line 665
    iget v9, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    #@5d
    sget v10, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@5f
    if-eq v9, v10, :cond_37

    #@61
    .line 666
    iget v8, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    #@63
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    #@65
    goto :goto_37

    #@66
    .line 668
    :cond_66
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyCycle;

    #@68
    if-eqz v9, :cond_6e

    #@6a
    .line 669
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    #@6d
    goto :goto_37

    #@6e
    .line 670
    :cond_6e
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    #@70
    if-eqz v9, :cond_76

    #@72
    .line 671
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    #@75
    goto :goto_37

    #@76
    .line 672
    :cond_76
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@78
    if-eqz v9, :cond_87

    #@7a
    if-nez v7, :cond_81

    #@7c
    .line 674
    new-instance v7, Ljava/util/ArrayList;

    #@7e
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@81
    .line 676
    :cond_81
    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@83
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@86
    goto :goto_37

    #@87
    .line 678
    :cond_87
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    #@8a
    .line 679
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    #@8d
    goto :goto_37

    #@8e
    :cond_8e
    const/4 v7, 0x0

    #@8f
    :cond_8f
    const/4 v5, 0x0

    #@90
    if-eqz v7, :cond_9c

    #@92
    new-array v8, v5, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@94
    .line 687
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@97
    move-result-object v7

    #@98
    check-cast v7, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@9a
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@9c
    .line 715
    :cond_9c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    #@9f
    move-result v7

    #@a0
    const-string v8, ","

    #@a2
    const-string v9, "CUSTOM,"

    #@a4
    const/4 v10, 0x1

    #@a5
    if-nez v7, :cond_171

    #@a7
    .line 716
    new-instance v7, Ljava/util/HashMap;

    #@a9
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@ac
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@ae
    .line 717
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@b1
    move-result-object v7

    #@b2
    :goto_b2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@b5
    move-result v11

    #@b6
    if-eqz v11, :cond_10b

    #@b8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bb
    move-result-object v11

    #@bc
    check-cast v11, Ljava/lang/String;

    #@be
    .line 719
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c1
    move-result v12

    #@c2
    if-eqz v12, :cond_fb

    #@c4
    .line 720
    new-instance v12, Landroid/util/SparseArray;

    #@c6
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    #@c9
    .line 721
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@cc
    move-result-object v13

    #@cd
    aget-object v13, v13, v10

    #@cf
    .line 722
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@d1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d4
    move-result-object v14

    #@d5
    :cond_d5
    :goto_d5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@d8
    move-result v15

    #@d9
    if-eqz v15, :cond_f6

    #@db
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@de
    move-result-object v15

    #@df
    check-cast v15, Landroidx/constraintlayout/motion/widget/Key;

    #@e1
    .line 723
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@e3
    if-nez v6, :cond_e6

    #@e5
    goto :goto_d5

    #@e6
    .line 726
    :cond_e6
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@e8
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@eb
    move-result-object v6

    #@ec
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@ee
    if-eqz v6, :cond_d5

    #@f0
    .line 728
    iget v15, v15, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@f2
    invoke-virtual {v12, v15, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@f5
    goto :goto_d5

    #@f6
    .line 731
    :cond_f6
    invoke-static {v11, v12}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    #@f9
    move-result-object v6

    #@fa
    goto :goto_ff

    #@fb
    .line 733
    :cond_fb
    invoke-static {v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    #@fe
    move-result-object v6

    #@ff
    :goto_ff
    if-nez v6, :cond_102

    #@101
    goto :goto_b2

    #@102
    .line 738
    :cond_102
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setType(Ljava/lang/String;)V

    #@105
    .line 739
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@107
    invoke-virtual {v12, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    goto :goto_b2

    #@10b
    .line 741
    :cond_10b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@10d
    if-eqz v6, :cond_129

    #@10f
    .line 742
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@112
    move-result-object v6

    #@113
    :cond_113
    :goto_113
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@116
    move-result v7

    #@117
    if-eqz v7, :cond_129

    #@119
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11c
    move-result-object v7

    #@11d
    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    #@11f
    .line 743
    instance-of v11, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@121
    if-eqz v11, :cond_113

    #@123
    .line 744
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@125
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    #@128
    goto :goto_113

    #@129
    .line 748
    :cond_129
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@12b
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@12d
    invoke-virtual {v6, v7, v5}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    #@130
    .line 749
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@132
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@134
    const/16 v11, 0x64

    #@136
    invoke-virtual {v6, v7, v11}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    #@139
    .line 751
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@13b
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@13e
    move-result-object v6

    #@13f
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@142
    move-result-object v6

    #@143
    :cond_143
    :goto_143
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@146
    move-result v7

    #@147
    if-eqz v7, :cond_171

    #@149
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14c
    move-result-object v7

    #@14d
    check-cast v7, Ljava/lang/String;

    #@14f
    .line 753
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@152
    move-result v11

    #@153
    if-eqz v11, :cond_162

    #@155
    .line 754
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@158
    move-result-object v11

    #@159
    check-cast v11, Ljava/lang/Integer;

    #@15b
    if-eqz v11, :cond_162

    #@15d
    .line 756
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@160
    move-result v11

    #@161
    goto :goto_163

    #@162
    :cond_162
    move v11, v5

    #@163
    .line 759
    :goto_163
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    #@165
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@168
    move-result-object v7

    #@169
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@16b
    if-eqz v7, :cond_143

    #@16d
    .line 761
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    #@170
    goto :goto_143

    #@171
    .line 767
    :cond_171
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    #@174
    move-result v6

    #@175
    if-nez v6, :cond_240

    #@177
    .line 768
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@179
    if-nez v6, :cond_182

    #@17b
    .line 769
    new-instance v6, Ljava/util/HashMap;

    #@17d
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@180
    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@182
    .line 771
    :cond_182
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@185
    move-result-object v1

    #@186
    :goto_186
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@189
    move-result v6

    #@18a
    if-eqz v6, :cond_1ec

    #@18c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18f
    move-result-object v6

    #@190
    check-cast v6, Ljava/lang/String;

    #@192
    .line 772
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@194
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@197
    move-result v7

    #@198
    if-eqz v7, :cond_19b

    #@19a
    goto :goto_186

    #@19b
    .line 777
    :cond_19b
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19e
    move-result v7

    #@19f
    if-eqz v7, :cond_1da

    #@1a1
    .line 778
    new-instance v7, Landroid/util/SparseArray;

    #@1a3
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    #@1a6
    .line 779
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1a9
    move-result-object v11

    #@1aa
    aget-object v11, v11, v10

    #@1ac
    .line 780
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@1ae
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1b1
    move-result-object v12

    #@1b2
    :cond_1b2
    :goto_1b2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@1b5
    move-result v13

    #@1b6
    if-eqz v13, :cond_1d3

    #@1b8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1bb
    move-result-object v13

    #@1bc
    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    #@1be
    .line 781
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@1c0
    if-nez v14, :cond_1c3

    #@1c2
    goto :goto_1b2

    #@1c3
    .line 784
    :cond_1c3
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@1c5
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c8
    move-result-object v14

    #@1c9
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@1cb
    if-eqz v14, :cond_1b2

    #@1cd
    .line 786
    iget v13, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@1cf
    invoke-virtual {v7, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@1d2
    goto :goto_1b2

    #@1d3
    .line 789
    :cond_1d3
    invoke-static {v6, v7}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    #@1d6
    move-result-object v7

    #@1d7
    move-wide/from16 v11, p4

    #@1d9
    goto :goto_1e0

    #@1da
    :cond_1da
    move-wide/from16 v11, p4

    #@1dc
    .line 791
    invoke-static {v6, v11, v12}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    #@1df
    move-result-object v7

    #@1e0
    :goto_1e0
    if-nez v7, :cond_1e3

    #@1e2
    goto :goto_186

    #@1e3
    .line 797
    :cond_1e3
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setType(Ljava/lang/String;)V

    #@1e6
    .line 798
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@1e8
    invoke-virtual {v13, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1eb
    goto :goto_186

    #@1ec
    .line 801
    :cond_1ec
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@1ee
    if-eqz v1, :cond_20c

    #@1f0
    .line 802
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1f3
    move-result-object v1

    #@1f4
    :cond_1f4
    :goto_1f4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f7
    move-result v6

    #@1f8
    if-eqz v6, :cond_20c

    #@1fa
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1fd
    move-result-object v6

    #@1fe
    check-cast v6, Landroidx/constraintlayout/motion/widget/Key;

    #@200
    .line 803
    instance-of v7, v6, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    #@202
    if-eqz v7, :cond_1f4

    #@204
    .line 804
    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    #@206
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@208
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    #@20b
    goto :goto_1f4

    #@20c
    .line 809
    :cond_20c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@20e
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@211
    move-result-object v1

    #@212
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@215
    move-result-object v1

    #@216
    :goto_216
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@219
    move-result v6

    #@21a
    if-eqz v6, :cond_240

    #@21c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21f
    move-result-object v6

    #@220
    check-cast v6, Ljava/lang/String;

    #@222
    .line 811
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@225
    move-result v7

    #@226
    if-eqz v7, :cond_233

    #@228
    .line 812
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22b
    move-result-object v7

    #@22c
    check-cast v7, Ljava/lang/Integer;

    #@22e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@231
    move-result v7

    #@232
    goto :goto_234

    #@233
    :cond_233
    move v7, v5

    #@234
    .line 814
    :goto_234
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    #@236
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@239
    move-result-object v6

    #@23a
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    #@23c
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setup(I)V

    #@23f
    goto :goto_216

    #@240
    .line 820
    :cond_240
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    #@242
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@245
    move-result v1

    #@246
    const/4 v4, 0x2

    #@247
    add-int/2addr v1, v4

    #@248
    new-array v6, v1, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@24a
    .line 822
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@24c
    aput-object v7, v6, v5

    #@24e
    add-int/lit8 v7, v1, -0x1

    #@250
    .line 823
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@252
    aput-object v8, v6, v7

    #@254
    .line 824
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    #@256
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@259
    move-result v7

    #@25a
    if-lez v7, :cond_263

    #@25c
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    #@25e
    const/4 v8, -0x1

    #@25f
    if-ne v7, v8, :cond_263

    #@261
    .line 825
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    #@263
    .line 827
    :cond_263
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    #@265
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@268
    move-result-object v7

    #@269
    move v8, v10

    #@26a
    :goto_26a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@26d
    move-result v11

    #@26e
    if-eqz v11, :cond_27c

    #@270
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@273
    move-result-object v11

    #@274
    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@276
    add-int/lit8 v12, v8, 0x1

    #@278
    .line 828
    aput-object v11, v6, v8

    #@27a
    move v8, v12

    #@27b
    goto :goto_26a

    #@27c
    .line 833
    :cond_27c
    new-instance v7, Ljava/util/HashSet;

    #@27e
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@281
    .line 834
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@283
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@285
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    #@288
    move-result-object v8

    #@289
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@28c
    move-result-object v8

    #@28d
    :cond_28d
    :goto_28d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@290
    move-result v11

    #@291
    if-eqz v11, :cond_2ba

    #@293
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@296
    move-result-object v11

    #@297
    check-cast v11, Ljava/lang/String;

    #@299
    .line 835
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@29b
    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@29d
    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@2a0
    move-result v12

    #@2a1
    if-eqz v12, :cond_28d

    #@2a3
    .line 836
    new-instance v12, Ljava/lang/StringBuilder;

    #@2a5
    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2a8
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v12

    #@2ac
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2af
    move-result-object v12

    #@2b0
    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@2b3
    move-result v12

    #@2b4
    if-nez v12, :cond_28d

    #@2b6
    .line 837
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2b9
    goto :goto_28d

    #@2ba
    :cond_2ba
    new-array v2, v5, [Ljava/lang/String;

    #@2bc
    .line 841
    invoke-virtual {v7, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2bf
    move-result-object v2

    #@2c0
    check-cast v2, [Ljava/lang/String;

    #@2c2
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    #@2c4
    .line 842
    array-length v2, v2

    #@2c5
    new-array v2, v2, [I

    #@2c7
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    #@2c9
    move v2, v5

    #@2ca
    .line 843
    :goto_2ca
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    #@2cc
    array-length v8, v7

    #@2cd
    if-ge v2, v8, :cond_300

    #@2cf
    .line 844
    aget-object v7, v7, v2

    #@2d1
    .line 845
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    #@2d3
    aput v5, v8, v2

    #@2d5
    move v8, v5

    #@2d6
    :goto_2d6
    if-ge v8, v1, :cond_2fd

    #@2d8
    .line 847
    aget-object v9, v6, v8

    #@2da
    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@2dc
    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@2df
    move-result v9

    #@2e0
    if-eqz v9, :cond_2fa

    #@2e2
    .line 848
    aget-object v9, v6, v8

    #@2e4
    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@2e6
    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e9
    move-result-object v9

    #@2ea
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@2ec
    if-eqz v9, :cond_2fa

    #@2ee
    .line 850
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    #@2f0
    aget v8, v7, v2

    #@2f2
    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@2f5
    move-result v9

    #@2f6
    add-int/2addr v8, v9

    #@2f7
    aput v8, v7, v2

    #@2f9
    goto :goto_2fd

    #@2fa
    :cond_2fa
    add-int/lit8 v8, v8, 0x1

    #@2fc
    goto :goto_2d6

    #@2fd
    :cond_2fd
    :goto_2fd
    add-int/lit8 v2, v2, 0x1

    #@2ff
    goto :goto_2ca

    #@300
    .line 856
    :cond_300
    aget-object v2, v6, v5

    #@302
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@304
    sget v7, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@306
    if-eq v2, v7, :cond_30a

    #@308
    move v2, v10

    #@309
    goto :goto_30b

    #@30a
    :cond_30a
    move v2, v5

    #@30b
    .line 857
    :goto_30b
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    #@30d
    array-length v7, v7

    #@30e
    const/16 v8, 0x12

    #@310
    add-int/2addr v8, v7

    #@311
    new-array v7, v8, [Z

    #@313
    move v9, v10

    #@314
    :goto_314
    if-ge v9, v1, :cond_324

    #@316
    .line 859
    aget-object v11, v6, v9

    #@318
    add-int/lit8 v12, v9, -0x1

    #@31a
    aget-object v12, v6, v12

    #@31c
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    #@31e
    invoke-virtual {v11, v12, v7, v13, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V

    #@321
    add-int/lit8 v9, v9, 0x1

    #@323
    goto :goto_314

    #@324
    :cond_324
    move v9, v5

    #@325
    move v2, v10

    #@326
    :goto_326
    if-ge v2, v8, :cond_331

    #@328
    .line 864
    aget-boolean v11, v7, v2

    #@32a
    if-eqz v11, :cond_32e

    #@32c
    add-int/lit8 v9, v9, 0x1

    #@32e
    :cond_32e
    add-int/lit8 v2, v2, 0x1

    #@330
    goto :goto_326

    #@331
    .line 869
    :cond_331
    new-array v2, v9, [I

    #@333
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@335
    .line 870
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    #@338
    move-result v2

    #@339
    .line 871
    new-array v9, v2, [D

    #@33b
    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    #@33d
    .line 872
    new-array v2, v2, [D

    #@33f
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    #@341
    move v9, v5

    #@342
    move v2, v10

    #@343
    :goto_343
    if-ge v2, v8, :cond_353

    #@345
    .line 876
    aget-boolean v11, v7, v2

    #@347
    if-eqz v11, :cond_350

    #@349
    .line 877
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@34b
    add-int/lit8 v12, v9, 0x1

    #@34d
    aput v2, v11, v9

    #@34f
    move v9, v12

    #@350
    :cond_350
    add-int/lit8 v2, v2, 0x1

    #@352
    goto :goto_343

    #@353
    .line 880
    :cond_353
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@355
    array-length v2, v2

    #@356
    new-array v7, v4, [I

    #@358
    aput v2, v7, v10

    #@35a
    aput v1, v7, v5

    #@35c
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@35e
    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@361
    move-result-object v2

    #@362
    check-cast v2, [[D

    #@364
    .line 881
    new-array v7, v1, [D

    #@366
    move v8, v5

    #@367
    :goto_367
    if-ge v8, v1, :cond_37c

    #@369
    .line 884
    aget-object v9, v6, v8

    #@36b
    aget-object v11, v2, v8

    #@36d
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@36f
    invoke-virtual {v9, v11, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    #@372
    .line 885
    aget-object v9, v6, v8

    #@374
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@376
    float-to-double v11, v9

    #@377
    aput-wide v11, v7, v8

    #@379
    add-int/lit8 v8, v8, 0x1

    #@37b
    goto :goto_367

    #@37c
    :cond_37c
    move v8, v5

    #@37d
    .line 888
    :goto_37d
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@37f
    array-length v11, v9

    #@380
    if-ge v8, v11, :cond_3c2

    #@382
    .line 889
    aget v9, v9, v8

    #@384
    .line 890
    sget-object v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    #@386
    array-length v11, v11

    #@387
    if-ge v9, v11, :cond_3bf

    #@389
    .line 891
    new-instance v9, Ljava/lang/StringBuilder;

    #@38b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@38e
    sget-object v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    #@390
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    #@392
    aget v12, v12, v8

    #@394
    aget-object v11, v11, v12

    #@396
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@399
    move-result-object v9

    #@39a
    const-string v11, " ["

    #@39c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39f
    move-result-object v9

    #@3a0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a3
    move-result-object v9

    #@3a4
    move v11, v5

    #@3a5
    :goto_3a5
    if-ge v11, v1, :cond_3bf

    #@3a7
    .line 893
    new-instance v12, Ljava/lang/StringBuilder;

    #@3a9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3ac
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3af
    move-result-object v9

    #@3b0
    aget-object v12, v2, v11

    #@3b2
    aget-wide v13, v12, v8

    #@3b4
    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@3b7
    move-result-object v9

    #@3b8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bb
    move-result-object v9

    #@3bc
    add-int/lit8 v11, v11, 0x1

    #@3be
    goto :goto_3a5

    #@3bf
    :cond_3bf
    add-int/lit8 v8, v8, 0x1

    #@3c1
    goto :goto_37d

    #@3c2
    .line 897
    :cond_3c2
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    #@3c4
    array-length v8, v8

    #@3c5
    add-int/2addr v8, v10

    #@3c6
    new-array v8, v8, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@3c8
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@3ca
    move v8, v5

    #@3cb
    .line 899
    :goto_3cb
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    #@3cd
    array-length v11, v9

    #@3ce
    if-ge v8, v11, :cond_427

    #@3d0
    .line 903
    aget-object v9, v9, v8

    #@3d2
    move v11, v5

    #@3d3
    move v13, v11

    #@3d4
    const/4 v12, 0x0

    #@3d5
    const/4 v14, 0x0

    #@3d6
    :goto_3d6
    if-ge v11, v1, :cond_40e

    #@3d8
    .line 906
    aget-object v15, v6, v11

    #@3da
    invoke-virtual {v15, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    #@3dd
    move-result v15

    #@3de
    if-eqz v15, :cond_409

    #@3e0
    if-nez v14, :cond_3f8

    #@3e2
    .line 908
    new-array v12, v1, [D

    #@3e4
    .line 909
    aget-object v14, v6, v11

    #@3e6
    invoke-virtual {v14, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    #@3e9
    move-result v14

    #@3ea
    new-array v15, v4, [I

    #@3ec
    aput v14, v15, v10

    #@3ee
    aput v1, v15, v5

    #@3f0
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@3f2
    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@3f5
    move-result-object v14

    #@3f6
    check-cast v14, [[D

    #@3f8
    .line 911
    :cond_3f8
    aget-object v15, v6, v11

    #@3fa
    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@3fc
    float-to-double v4, v15

    #@3fd
    aput-wide v4, v12, v13

    #@3ff
    .line 912
    aget-object v4, v6, v11

    #@401
    aget-object v5, v14, v13

    #@403
    const/4 v15, 0x0

    #@404
    invoke-virtual {v4, v9, v5, v15}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    #@407
    add-int/lit8 v13, v13, 0x1

    #@409
    :cond_409
    add-int/lit8 v11, v11, 0x1

    #@40b
    const/4 v4, 0x2

    #@40c
    const/4 v5, 0x0

    #@40d
    goto :goto_3d6

    #@40e
    .line 916
    :cond_40e
    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([DI)[D

    #@411
    move-result-object v4

    #@412
    .line 917
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@415
    move-result-object v5

    #@416
    check-cast v5, [[D

    #@418
    .line 918
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@41a
    add-int/lit8 v8, v8, 0x1

    #@41c
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    #@41e
    invoke-static {v11, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@421
    move-result-object v4

    #@422
    aput-object v4, v9, v8

    #@424
    const/4 v4, 0x2

    #@425
    const/4 v5, 0x0

    #@426
    goto :goto_3cb

    #@427
    .line 921
    :cond_427
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@429
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    #@42b
    invoke-static {v5, v7, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@42e
    move-result-object v2

    #@42f
    const/4 v5, 0x0

    #@430
    aput-object v2, v4, v5

    #@432
    .line 923
    aget-object v2, v6, v5

    #@434
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@436
    sget v4, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@438
    if-eq v2, v4, :cond_479

    #@43a
    .line 925
    new-array v2, v1, [I

    #@43c
    .line 926
    new-array v4, v1, [D

    #@43e
    const/4 v7, 0x2

    #@43f
    new-array v8, v7, [I

    #@441
    aput v7, v8, v10

    #@443
    aput v1, v8, v5

    #@445
    .line 927
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@447
    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@44a
    move-result-object v5

    #@44b
    check-cast v5, [[D

    #@44d
    const/4 v15, 0x0

    #@44e
    :goto_44e
    if-ge v15, v1, :cond_473

    #@450
    .line 929
    aget-object v7, v6, v15

    #@452
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@454
    aput v7, v2, v15

    #@456
    .line 930
    aget-object v7, v6, v15

    #@458
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@45a
    float-to-double v7, v7

    #@45b
    aput-wide v7, v4, v15

    #@45d
    .line 931
    aget-object v7, v5, v15

    #@45f
    aget-object v8, v6, v15

    #@461
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@463
    float-to-double v8, v8

    #@464
    const/4 v11, 0x0

    #@465
    aput-wide v8, v7, v11

    #@467
    .line 932
    aget-object v7, v5, v15

    #@469
    aget-object v8, v6, v15

    #@46b
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@46d
    float-to-double v8, v8

    #@46e
    aput-wide v8, v7, v10

    #@470
    add-int/lit8 v15, v15, 0x1

    #@472
    goto :goto_44e

    #@473
    .line 935
    :cond_473
    invoke-static {v2, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@476
    move-result-object v1

    #@477
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@479
    .line 940
    :cond_479
    new-instance v1, Ljava/util/HashMap;

    #@47b
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@47e
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    #@480
    .line 941
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@482
    if-eqz v1, :cond_4ee

    #@484
    .line 942
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@487
    move-result-object v1

    #@488
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@48a
    :goto_48a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@48d
    move-result v3

    #@48e
    if-eqz v3, :cond_4b6

    #@490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@493
    move-result-object v3

    #@494
    check-cast v3, Ljava/lang/String;

    #@496
    .line 943
    invoke-static {v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@499
    move-result-object v4

    #@49a
    if-nez v4, :cond_49d

    #@49c
    goto :goto_48a

    #@49d
    .line 948
    :cond_49d
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->variesByPath()Z

    #@4a0
    move-result v5

    #@4a1
    if-eqz v5, :cond_4ad

    #@4a3
    .line 949
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@4a6
    move-result v5

    #@4a7
    if-eqz v5, :cond_4ad

    #@4a9
    .line 950
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionController;->getPreCycleDistance()F

    #@4ac
    move-result v2

    #@4ad
    .line 953
    :cond_4ad
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setType(Ljava/lang/String;)V

    #@4b0
    .line 954
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    #@4b2
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b5
    goto :goto_48a

    #@4b6
    .line 956
    :cond_4b6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    #@4b8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@4bb
    move-result-object v1

    #@4bc
    :cond_4bc
    :goto_4bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4bf
    move-result v3

    #@4c0
    if-eqz v3, :cond_4d4

    #@4c2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c5
    move-result-object v3

    #@4c6
    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    #@4c8
    .line 957
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/KeyCycle;

    #@4ca
    if-eqz v4, :cond_4bc

    #@4cc
    .line 958
    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycle;

    #@4ce
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    #@4d0
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    #@4d3
    goto :goto_4bc

    #@4d4
    .line 961
    :cond_4d4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    #@4d6
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4d9
    move-result-object v1

    #@4da
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@4dd
    move-result-object v1

    #@4de
    :goto_4de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4e1
    move-result v3

    #@4e2
    if-eqz v3, :cond_4ee

    #@4e4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e7
    move-result-object v3

    #@4e8
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@4ea
    .line 962
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setup(F)V

    #@4ed
    goto :goto_4de

    #@4ee
    :cond_4ee
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionController"
        }
    .end annotation

    #@0
    .line 242
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@4
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@7
    .line 243
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@9
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@b
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, " start: x: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@9
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@17
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@25
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@31
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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
