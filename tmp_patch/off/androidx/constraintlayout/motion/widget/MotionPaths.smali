.class Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x0

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field static final PERPENDICULAR:I = 0x1

.field static final SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field height:F

.field mAnimateCircleAngleTo:I

.field mAnimateRelativeTo:I

.field mDrawPath:I

.field mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mRelativeAngle:F

.field mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const-string v0, "position"

    #@2
    const-string v1, "x"

    #@4
    const-string v2, "y"

    #@6
    const-string v3, "width"

    #@8
    const-string v4, "height"

    #@a
    const-string v5, "pathRotate"

    #@c
    .line 54
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    #@12
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 56
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@6
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@8
    .line 63
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    #@a
    .line 64
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    #@c
    .line 65
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@e
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@10
    .line 66
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@12
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@14
    .line 67
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    #@16
    const/4 v1, 0x0

    #@17
    .line 68
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@19
    .line 70
    new-instance v1, Ljava/util/LinkedHashMap;

    #@1b
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@1e
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@20
    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    #@22
    const/16 v0, 0x12

    #@24
    new-array v1, v0, [D

    #@26
    .line 488
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@28
    new-array v0, v0, [D

    #@2a
    .line 489
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    #@2c
    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    #@0
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 56
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@6
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@8
    .line 63
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    #@a
    .line 64
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    #@c
    .line 65
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@e
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@10
    .line 66
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@12
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@14
    .line 67
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    #@16
    const/4 v1, 0x0

    #@17
    .line 68
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@19
    .line 70
    new-instance v1, Ljava/util/LinkedHashMap;

    #@1b
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@1e
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@20
    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    #@22
    const/16 v0, 0x12

    #@24
    new-array v1, v0, [D

    #@26
    .line 488
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@28
    new-array v0, v0, [D

    #@2a
    .line 489
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    #@2c
    .line 131
    iget v0, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@2e
    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@30
    if-eq v0, v1, :cond_36

    #@32
    .line 132
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPolar(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@35
    return-void

    #@36
    .line 135
    :cond_36
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@38
    const/4 v1, 0x1

    #@39
    if-eq v0, v1, :cond_46

    #@3b
    const/4 v1, 0x2

    #@3c
    if-eq v0, v1, :cond_42

    #@3e
    .line 144
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@41
    return-void

    #@42
    .line 137
    :cond_42
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@45
    return-void

    #@46
    .line 140
    :cond_46
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    #@49
    return-void
.end method

.method private diff(FF)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    #@0
    .line 298
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-nez v0, :cond_1e

    #@8
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_1e

    #@f
    :cond_f
    sub-float/2addr p1, p2

    #@10
    .line 301
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@13
    move-result p1

    #@14
    const p2, 0x358637bd    # 1.0E-6f

    #@17
    cmpl-float p1, p1, p2

    #@19
    if-lez p1, :cond_1c

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v1, v2

    #@1d
    :goto_1d
    return v1

    #@1e
    .line 299
    :cond_1e
    :goto_1e
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@21
    move-result p1

    #@22
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@25
    move-result p2

    #@26
    if-eq p1, p2, :cond_29

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v1, v2

    #@2a
    :goto_2a
    return v1
.end method

.method private static final xRotate(FFFFFF)F
    .registers 6
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
            "sin",
            "cos",
            "cx",
            "cy",
            "x",
            "y"
        }
    .end annotation

    #@0
    sub-float/2addr p4, p2

    #@1
    sub-float/2addr p5, p3

    #@2
    mul-float/2addr p4, p1

    #@3
    mul-float/2addr p5, p0

    #@4
    sub-float/2addr p4, p5

    #@5
    add-float/2addr p4, p2

    #@6
    return p4
.end method

.method private static final yRotate(FFFFFF)F
    .registers 6
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
            "sin",
            "cos",
            "cx",
            "cy",
            "x",
            "y"
        }
    .end annotation

    #@0
    sub-float/2addr p4, p2

    #@1
    sub-float/2addr p5, p3

    #@2
    mul-float/2addr p4, p0

    #@3
    mul-float/2addr p5, p1

    #@4
    add-float/2addr p4, p5

    #@5
    add-float/2addr p4, p3

    #@6
    return p4
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    #@0
    .line 916
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@2
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    #@4
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@a
    .line 917
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    #@e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@10
    .line 918
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@12
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    #@14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@16
    .line 919
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@18
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    #@1a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    #@1c
    .line 920
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@1e
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    #@20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@22
    .line 921
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@24
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    #@26
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateCircleAngleTo:I

    #@28
    .line 922
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@2a
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    #@2c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    #@2e
    .line 923
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@30
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    #@32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    #@34
    .line 924
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@36
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@39
    move-result-object v0

    #@3a
    .line 925
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v0

    #@3e
    :cond_3e
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_60

    #@44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Ljava/lang/String;

    #@4a
    .line 926
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@4c
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v2

    #@50
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@52
    if-eqz v2, :cond_3e

    #@54
    .line 927
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_3e

    #@5a
    .line 928
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@5c
    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    goto :goto_3e

    #@60
    :cond_60
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    #@0
    .line 911
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@2
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@4
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    #@0
    .line 39
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    #@2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public configureRelativeTo(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toOrbit"
        }
    .end annotation

    #@0
    .line 934
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    #@2
    float-to-double v0, v0

    #@3
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getPos(D)[D

    #@6
    return-void
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "mask",
            "custom",
            "arcMode"
        }
    .end annotation

    #@0
    .line 306
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@2
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@4
    invoke-direct {p0, p3, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    #@7
    move-result p3

    #@8
    .line 307
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@a
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@c
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    #@f
    move-result v0

    #@10
    const/4 v1, 0x0

    #@11
    .line 308
    aget-boolean v2, p2, v1

    #@13
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@15
    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@17
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    #@1a
    move-result v3

    #@1b
    or-int/2addr v2, v3

    #@1c
    aput-boolean v2, p2, v1

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 309
    aget-boolean v2, p2, v1

    #@21
    or-int/2addr p3, v0

    #@22
    or-int/2addr p3, p4

    #@23
    or-int p4, v2, p3

    #@25
    aput-boolean p4, p2, v1

    #@27
    const/4 p4, 0x2

    #@28
    .line 310
    aget-boolean v0, p2, p4

    #@2a
    or-int/2addr p3, v0

    #@2b
    aput-boolean p3, p2, p4

    #@2d
    const/4 p3, 0x3

    #@2e
    .line 311
    aget-boolean p4, p2, p3

    #@30
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@32
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@34
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    #@37
    move-result v0

    #@38
    or-int/2addr p4, v0

    #@39
    aput-boolean p4, p2, p3

    #@3b
    const/4 p3, 0x4

    #@3c
    .line 312
    aget-boolean p4, p2, p3

    #@3e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@40
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@42
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    #@45
    move-result p1

    #@46
    or-int/2addr p1, p4

    #@47
    aput-boolean p1, p2, p3

    #@49
    return-void
.end method

.method fillStandard([D[I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "toUse"
        }
    .end annotation

    #@0
    const/4 v0, 0x6

    #@1
    new-array v1, v0, [F

    #@3
    .line 863
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@5
    const/4 v3, 0x0

    #@6
    aput v2, v1, v3

    #@8
    const/4 v2, 0x1

    #@9
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@b
    aput v4, v1, v2

    #@d
    const/4 v2, 0x2

    #@e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@10
    aput v4, v1, v2

    #@12
    const/4 v2, 0x3

    #@13
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@15
    aput v4, v1, v2

    #@17
    const/4 v2, 0x4

    #@18
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@1a
    aput v4, v1, v2

    #@1c
    const/4 v2, 0x5

    #@1d
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    #@1f
    aput v4, v1, v2

    #@21
    move v2, v3

    #@22
    .line 865
    :goto_22
    array-length v4, p2

    #@23
    if-ge v3, v4, :cond_34

    #@25
    .line 866
    aget v4, p2, v3

    #@27
    if-ge v4, v0, :cond_31

    #@29
    add-int/lit8 v5, v2, 0x1

    #@2b
    .line 867
    aget v4, v1, v4

    #@2d
    float-to-double v6, v4

    #@2e
    aput-wide v6, p1, v2

    #@30
    move v2, v5

    #@31
    :cond_31
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_22

    #@34
    :cond_34
    return-void
.end method

.method getBounds([I[D[FI)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "toUse",
            "data",
            "point",
            "offset"
        }
    .end annotation

    #@0
    .line 463
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@2
    .line 464
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@4
    const/4 v2, 0x0

    #@5
    .line 466
    :goto_5
    array-length v3, p1

    #@6
    if-ge v2, v3, :cond_1a

    #@8
    .line 467
    aget-wide v3, p2, v2

    #@a
    double-to-float v3, v3

    #@b
    .line 469
    aget v4, p1, v2

    #@d
    const/4 v5, 0x3

    #@e
    if-eq v4, v5, :cond_16

    #@10
    const/4 v5, 0x4

    #@11
    if-eq v4, v5, :cond_14

    #@13
    goto :goto_17

    #@14
    :cond_14
    move v1, v3

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v0, v3

    #@17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_5

    #@1a
    .line 484
    :cond_1a
    aput v0, p3, p4

    #@1c
    add-int/lit8 p4, p4, 0x1

    #@1e
    .line 485
    aput v1, p3, p4

    #@20
    return-void
.end method

.method getCenter(D[I[D[FI)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "toUse",
            "data",
            "point",
            "offset"
        }
    .end annotation

    #@0
    move-object v0, p0

    #@1
    move-object/from16 v1, p3

    #@3
    .line 317
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@5
    .line 318
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@7
    .line 319
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@9
    .line 320
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@b
    const/4 v6, 0x0

    #@c
    move v7, v6

    #@d
    .line 322
    :goto_d
    array-length v8, v1

    #@e
    const/4 v9, 0x2

    #@f
    const/4 v10, 0x1

    #@10
    if-ge v7, v8, :cond_2c

    #@12
    .line 323
    aget-wide v11, p4, v7

    #@14
    double-to-float v8, v11

    #@15
    .line 325
    aget v11, v1, v7

    #@17
    if-eq v11, v10, :cond_28

    #@19
    if-eq v11, v9, :cond_26

    #@1b
    const/4 v9, 0x3

    #@1c
    if-eq v11, v9, :cond_24

    #@1e
    const/4 v9, 0x4

    #@1f
    if-eq v11, v9, :cond_22

    #@21
    goto :goto_29

    #@22
    :cond_22
    move v5, v8

    #@23
    goto :goto_29

    #@24
    :cond_24
    move v4, v8

    #@25
    goto :goto_29

    #@26
    :cond_26
    move v3, v8

    #@27
    goto :goto_29

    #@28
    :cond_28
    move v2, v8

    #@29
    :goto_29
    add-int/lit8 v7, v7, 0x1

    #@2b
    goto :goto_d

    #@2c
    .line 340
    :cond_2c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@2e
    const/high16 v7, 0x40000000    # 2.0f

    #@30
    if-eqz v1, :cond_5b

    #@32
    new-array v8, v9, [F

    #@34
    new-array v9, v9, [F

    #@36
    move-wide/from16 v11, p1

    #@38
    .line 344
    invoke-virtual {v1, v11, v12, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    #@3b
    aget v1, v8, v6

    #@3d
    aget v6, v8, v10

    #@3f
    float-to-double v8, v1

    #@40
    float-to-double v1, v2

    #@41
    float-to-double v11, v3

    #@42
    .line 350
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    #@45
    move-result-wide v13

    #@46
    mul-double/2addr v13, v1

    #@47
    add-double/2addr v8, v13

    #@48
    div-float v3, v4, v7

    #@4a
    float-to-double v13, v3

    #@4b
    sub-double/2addr v8, v13

    #@4c
    double-to-float v3, v8

    #@4d
    float-to-double v8, v6

    #@4e
    .line 351
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    #@51
    move-result-wide v11

    #@52
    mul-double/2addr v1, v11

    #@53
    sub-double/2addr v8, v1

    #@54
    div-float v1, v5, v7

    #@56
    float-to-double v1, v1

    #@57
    sub-double/2addr v8, v1

    #@58
    double-to-float v1, v8

    #@59
    move v2, v3

    #@5a
    move v3, v1

    #@5b
    :cond_5b
    div-float/2addr v4, v7

    #@5c
    add-float/2addr v2, v4

    #@5d
    const/4 v1, 0x0

    #@5e
    add-float/2addr v2, v1

    #@5f
    .line 354
    aput v2, p5, p6

    #@61
    add-int/lit8 v2, p6, 0x1

    #@63
    div-float/2addr v5, v7

    #@64
    add-float/2addr v3, v5

    #@65
    add-float/2addr v3, v1

    #@66
    .line 355
    aput v3, p5, v2

    #@68
    return-void
.end method

.method getCenter(D[I[D[F[D[F)V
    .registers 27
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
            "p",
            "toUse",
            "data",
            "point",
            "vdata",
            "velocity"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p3

    #@4
    .line 359
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@6
    .line 360
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@8
    .line 361
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@a
    .line 362
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@c
    const/4 v8, 0x0

    #@d
    const/4 v9, 0x0

    #@e
    const/4 v10, 0x0

    #@f
    const/4 v11, 0x0

    #@10
    const/4 v12, 0x0

    #@11
    .line 369
    :goto_11
    array-length v13, v1

    #@12
    const/4 v15, 0x1

    #@13
    if-ge v8, v13, :cond_37

    #@15
    .line 370
    aget-wide v6, p4, v8

    #@17
    double-to-float v6, v6

    #@18
    .line 371
    aget-wide v13, p6, v8

    #@1a
    double-to-float v13, v13

    #@1b
    .line 373
    aget v14, v1, v8

    #@1d
    if-eq v14, v15, :cond_32

    #@1f
    const/4 v7, 0x2

    #@20
    if-eq v14, v7, :cond_2f

    #@22
    const/4 v7, 0x3

    #@23
    if-eq v14, v7, :cond_2c

    #@25
    const/4 v7, 0x4

    #@26
    if-eq v14, v7, :cond_29

    #@28
    goto :goto_34

    #@29
    :cond_29
    move v5, v6

    #@2a
    move v12, v13

    #@2b
    goto :goto_34

    #@2c
    :cond_2c
    move v4, v6

    #@2d
    move v10, v13

    #@2e
    goto :goto_34

    #@2f
    :cond_2f
    move v3, v6

    #@30
    move v11, v13

    #@31
    goto :goto_34

    #@32
    :cond_32
    move v2, v6

    #@33
    move v9, v13

    #@34
    :goto_34
    add-int/lit8 v8, v8, 0x1

    #@36
    goto :goto_11

    #@37
    :cond_37
    const/high16 v1, 0x40000000    # 2.0f

    #@39
    div-float/2addr v10, v1

    #@3a
    add-float/2addr v10, v9

    #@3b
    div-float/2addr v12, v1

    #@3c
    add-float/2addr v12, v11

    #@3d
    .line 395
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@3f
    if-eqz v6, :cond_a4

    #@41
    const/4 v7, 0x2

    #@42
    new-array v8, v7, [F

    #@44
    new-array v7, v7, [F

    #@46
    move-wide/from16 v12, p1

    #@48
    .line 398
    invoke-virtual {v6, v12, v13, v8, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    #@4b
    const/4 v6, 0x0

    #@4c
    aget v10, v8, v6

    #@4e
    aget v8, v8, v15

    #@50
    aget v12, v7, v6

    #@52
    aget v6, v7, v15

    #@54
    float-to-double v13, v10

    #@55
    float-to-double v1, v2

    #@56
    move/from16 p1, v6

    #@58
    float-to-double v6, v3

    #@59
    .line 408
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    #@5c
    move-result-wide v16

    #@5d
    mul-double v16, v16, v1

    #@5f
    add-double v13, v13, v16

    #@61
    const/high16 v3, 0x40000000    # 2.0f

    #@63
    div-float v10, v4, v3

    #@65
    move/from16 v16, v4

    #@67
    float-to-double v3, v10

    #@68
    sub-double/2addr v13, v3

    #@69
    double-to-float v3, v13

    #@6a
    float-to-double v13, v8

    #@6b
    .line 409
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    #@6e
    move-result-wide v17

    #@6f
    mul-double v1, v1, v17

    #@71
    sub-double/2addr v13, v1

    #@72
    const/high16 v1, 0x40000000    # 2.0f

    #@74
    div-float v2, v5, v1

    #@76
    float-to-double v1, v2

    #@77
    sub-double/2addr v13, v1

    #@78
    double-to-float v1, v13

    #@79
    float-to-double v12, v12

    #@7a
    float-to-double v8, v9

    #@7b
    .line 410
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    #@7e
    move-result-wide v17

    #@7f
    mul-double v17, v17, v8

    #@81
    add-double v12, v12, v17

    #@83
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    #@86
    move-result-wide v17

    #@87
    float-to-double v10, v11

    #@88
    mul-double v17, v17, v10

    #@8a
    add-double v12, v12, v17

    #@8c
    double-to-float v2, v12

    #@8d
    move/from16 v4, p1

    #@8f
    float-to-double v12, v4

    #@90
    .line 411
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    #@93
    move-result-wide v17

    #@94
    mul-double v8, v8, v17

    #@96
    sub-double/2addr v12, v8

    #@97
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    #@9a
    move-result-wide v6

    #@9b
    mul-double/2addr v6, v10

    #@9c
    add-double/2addr v12, v6

    #@9d
    double-to-float v12, v12

    #@9e
    move v10, v2

    #@9f
    move v2, v3

    #@a0
    move v3, v1

    #@a1
    const/high16 v1, 0x40000000    # 2.0f

    #@a3
    goto :goto_a6

    #@a4
    :cond_a4
    move/from16 v16, v4

    #@a6
    :goto_a6
    div-float v4, v16, v1

    #@a8
    add-float/2addr v2, v4

    #@a9
    const/4 v4, 0x0

    #@aa
    add-float/2addr v2, v4

    #@ab
    const/4 v6, 0x0

    #@ac
    .line 414
    aput v2, p5, v6

    #@ae
    div-float/2addr v5, v1

    #@af
    add-float/2addr v3, v5

    #@b0
    add-float/2addr v3, v4

    #@b1
    .line 415
    aput v3, p5, v15

    #@b3
    .line 416
    aput v10, p7, v6

    #@b5
    .line 417
    aput v12, p7, v15

    #@b7
    return-void
.end method

.method getCenterVelocity(D[I[D[FI)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "toUse",
            "data",
            "point",
            "offset"
        }
    .end annotation

    #@0
    move-object v0, p0

    #@1
    move-object/from16 v1, p3

    #@3
    .line 420
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@5
    .line 421
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@7
    .line 422
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@9
    .line 423
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@b
    const/4 v6, 0x0

    #@c
    move v7, v6

    #@d
    .line 425
    :goto_d
    array-length v8, v1

    #@e
    const/4 v9, 0x2

    #@f
    const/4 v10, 0x1

    #@10
    if-ge v7, v8, :cond_2c

    #@12
    .line 426
    aget-wide v11, p4, v7

    #@14
    double-to-float v8, v11

    #@15
    .line 428
    aget v11, v1, v7

    #@17
    if-eq v11, v10, :cond_28

    #@19
    if-eq v11, v9, :cond_26

    #@1b
    const/4 v9, 0x3

    #@1c
    if-eq v11, v9, :cond_24

    #@1e
    const/4 v9, 0x4

    #@1f
    if-eq v11, v9, :cond_22

    #@21
    goto :goto_29

    #@22
    :cond_22
    move v5, v8

    #@23
    goto :goto_29

    #@24
    :cond_24
    move v4, v8

    #@25
    goto :goto_29

    #@26
    :cond_26
    move v3, v8

    #@27
    goto :goto_29

    #@28
    :cond_28
    move v2, v8

    #@29
    :goto_29
    add-int/lit8 v7, v7, 0x1

    #@2b
    goto :goto_d

    #@2c
    .line 443
    :cond_2c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@2e
    const/high16 v7, 0x40000000    # 2.0f

    #@30
    if-eqz v1, :cond_5b

    #@32
    new-array v8, v9, [F

    #@34
    new-array v9, v9, [F

    #@36
    move-wide/from16 v11, p1

    #@38
    .line 446
    invoke-virtual {v1, v11, v12, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    #@3b
    aget v1, v8, v6

    #@3d
    aget v6, v8, v10

    #@3f
    float-to-double v8, v1

    #@40
    float-to-double v1, v2

    #@41
    float-to-double v11, v3

    #@42
    .line 452
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    #@45
    move-result-wide v13

    #@46
    mul-double/2addr v13, v1

    #@47
    add-double/2addr v8, v13

    #@48
    div-float v3, v4, v7

    #@4a
    float-to-double v13, v3

    #@4b
    sub-double/2addr v8, v13

    #@4c
    double-to-float v3, v8

    #@4d
    float-to-double v8, v6

    #@4e
    .line 453
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    #@51
    move-result-wide v11

    #@52
    mul-double/2addr v1, v11

    #@53
    sub-double/2addr v8, v1

    #@54
    div-float v1, v5, v7

    #@56
    float-to-double v1, v1

    #@57
    sub-double/2addr v8, v1

    #@58
    double-to-float v1, v8

    #@59
    move v2, v3

    #@5a
    move v3, v1

    #@5b
    :cond_5b
    div-float/2addr v4, v7

    #@5c
    add-float/2addr v2, v4

    #@5d
    const/4 v1, 0x0

    #@5e
    add-float/2addr v2, v1

    #@5f
    .line 456
    aput v2, p5, p6

    #@61
    add-int/lit8 v2, p6, 0x1

    #@63
    div-float/2addr v5, v7

    #@64
    add-float/2addr v3, v5

    #@65
    add-float/2addr v3, v1

    #@66
    .line 457
    aput v3, p5, v2

    #@68
    return-void
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "offset"
        }
    .end annotation

    #@0
    .line 885
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@8
    const/4 v0, 0x0

    #@9
    if-nez p1, :cond_c

    #@b
    return v0

    #@c
    .line 888
    :cond_c
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@f
    move-result v1

    #@10
    const/4 v2, 0x1

    #@11
    if-ne v1, v2, :cond_1b

    #@13
    .line 889
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    #@16
    move-result p1

    #@17
    float-to-double v0, p1

    #@18
    aput-wide v0, p2, p3

    #@1a
    return v2

    #@1b
    .line 892
    :cond_1b
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@1e
    move-result v1

    #@1f
    .line 893
    new-array v2, v1, [F

    #@21
    .line 894
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    #@24
    :goto_24
    if-ge v0, v1, :cond_31

    #@26
    add-int/lit8 p1, p3, 0x1

    #@28
    .line 896
    aget v3, v2, v0

    #@2a
    float-to-double v3, v3

    #@2b
    aput-wide v3, p2, p3

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    move p3, p1

    #@30
    goto :goto_24

    #@31
    :cond_31
    return v1
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    #@0
    .line 877
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return p1

    #@c
    .line 881
    :cond_c
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method getRect([I[D[FI)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "toUse",
            "data",
            "path",
            "offset"
        }
    .end annotation

    #@0
    .line 649
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@2
    .line 650
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@4
    .line 651
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@6
    .line 652
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@8
    const/4 v4, 0x0

    #@9
    .line 667
    :goto_9
    array-length v5, p1

    #@a
    if-ge v4, v5, :cond_28

    #@c
    .line 668
    aget-wide v5, p2, v4

    #@e
    double-to-float v5, v5

    #@f
    .line 670
    aget v6, p1, v4

    #@11
    const/4 v7, 0x1

    #@12
    if-eq v6, v7, :cond_24

    #@14
    const/4 v7, 0x2

    #@15
    if-eq v6, v7, :cond_22

    #@17
    const/4 v7, 0x3

    #@18
    if-eq v6, v7, :cond_20

    #@1a
    const/4 v7, 0x4

    #@1b
    if-eq v6, v7, :cond_1e

    #@1d
    goto :goto_25

    #@1e
    :cond_1e
    move v3, v5

    #@1f
    goto :goto_25

    #@20
    :cond_20
    move v2, v5

    #@21
    goto :goto_25

    #@22
    :cond_22
    move v1, v5

    #@23
    goto :goto_25

    #@24
    :cond_24
    move v0, v5

    #@25
    :goto_25
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_9

    #@28
    .line 689
    :cond_28
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@2a
    if-eqz p1, :cond_53

    #@2c
    .line 690
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterX()F

    #@2f
    move-result p1

    #@30
    .line 691
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@32
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterY()F

    #@35
    move-result p2

    #@36
    float-to-double v4, p1

    #@37
    float-to-double v6, v0

    #@38
    float-to-double v0, v1

    #@39
    .line 695
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@3c
    move-result-wide v8

    #@3d
    mul-double/2addr v8, v6

    #@3e
    add-double/2addr v4, v8

    #@3f
    const/high16 p1, 0x40000000    # 2.0f

    #@41
    div-float v8, v2, p1

    #@43
    float-to-double v8, v8

    #@44
    sub-double/2addr v4, v8

    #@45
    double-to-float v4, v4

    #@46
    float-to-double v8, p2

    #@47
    .line 696
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@4a
    move-result-wide v0

    #@4b
    mul-double/2addr v6, v0

    #@4c
    sub-double/2addr v8, v6

    #@4d
    div-float p1, v3, p1

    #@4f
    float-to-double p1, p1

    #@50
    sub-double/2addr v8, p1

    #@51
    double-to-float v1, v8

    #@52
    move v0, v4

    #@53
    :cond_53
    add-float/2addr v2, v0

    #@54
    add-float/2addr v3, v1

    #@55
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@57
    .line 714
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@5a
    .line 717
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@5d
    const/4 p1, 0x0

    #@5e
    add-float p2, v0, p1

    #@60
    add-float v4, v1, p1

    #@62
    add-float v5, v2, p1

    #@64
    add-float/2addr v1, p1

    #@65
    add-float/2addr v2, p1

    #@66
    add-float v6, v3, p1

    #@68
    add-float/2addr v0, p1

    #@69
    add-float/2addr v3, p1

    #@6a
    add-int/lit8 p1, p4, 0x1

    #@6c
    .line 765
    aput p2, p3, p4

    #@6e
    add-int/lit8 p2, p1, 0x1

    #@70
    .line 766
    aput v4, p3, p1

    #@72
    add-int/lit8 p1, p2, 0x1

    #@74
    .line 767
    aput v5, p3, p2

    #@76
    add-int/lit8 p2, p1, 0x1

    #@78
    .line 768
    aput v1, p3, p1

    #@7a
    add-int/lit8 p1, p2, 0x1

    #@7c
    .line 769
    aput v2, p3, p2

    #@7e
    add-int/lit8 p2, p1, 0x1

    #@80
    .line 770
    aput v6, p3, p1

    #@82
    add-int/lit8 p1, p2, 0x1

    #@84
    .line 771
    aput v0, p3, p2

    #@86
    .line 772
    aput v3, p3, p1

    #@88
    return-void
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    #@0
    .line 873
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v2, p2

    #@6
    move-object/from16 v3, p3

    #@8
    .line 86
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    #@a
    int-to-float v4, v4

    #@b
    const/high16 v5, 0x42c80000    # 100.0f

    #@d
    div-float/2addr v4, v5

    #@e
    .line 88
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@10
    .line 90
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@12
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@14
    .line 91
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@16
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1e

    #@1c
    move v5, v4

    #@1d
    goto :goto_20

    #@1e
    :cond_1e
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@20
    .line 92
    :goto_20
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@22
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2a

    #@28
    move v6, v4

    #@29
    goto :goto_2c

    #@2a
    :cond_2a
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@2c
    .line 93
    :goto_2c
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@2e
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@30
    sub-float v9, v7, v8

    #@32
    .line 94
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@34
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@36
    sub-float v12, v10, v11

    #@38
    .line 96
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@3a
    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@3c
    .line 100
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@3e
    const/high16 v14, 0x40000000    # 2.0f

    #@40
    div-float v15, v8, v14

    #@42
    add-float/2addr v15, v13

    #@43
    .line 101
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@45
    div-float v16, v11, v14

    #@47
    add-float v16, v1, v16

    #@49
    .line 102
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@4b
    div-float/2addr v7, v14

    #@4c
    add-float/2addr v2, v7

    #@4d
    .line 103
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@4f
    div-float/2addr v10, v14

    #@50
    add-float/2addr v3, v10

    #@51
    sub-float/2addr v2, v15

    #@52
    sub-float v3, v3, v16

    #@54
    mul-float v7, v2, v4

    #@56
    add-float/2addr v13, v7

    #@57
    mul-float/2addr v9, v5

    #@58
    div-float v5, v9, v14

    #@5a
    sub-float/2addr v13, v5

    #@5b
    float-to-int v7, v13

    #@5c
    int-to-float v7, v7

    #@5d
    .line 106
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@5f
    mul-float v7, v3, v4

    #@61
    add-float/2addr v1, v7

    #@62
    mul-float/2addr v12, v6

    #@63
    div-float v6, v12, v14

    #@65
    sub-float/2addr v1, v6

    #@66
    float-to-int v1, v1

    #@67
    int-to-float v1, v1

    #@68
    .line 107
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@6a
    add-float/2addr v8, v9

    #@6b
    float-to-int v1, v8

    #@6c
    int-to-float v1, v1

    #@6d
    .line 108
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@6f
    add-float/2addr v11, v12

    #@70
    float-to-int v1, v11

    #@71
    int-to-float v1, v1

    #@72
    .line 109
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@74
    move-object/from16 v1, p1

    #@76
    .line 111
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@78
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    #@7b
    move-result v7

    #@7c
    if-eqz v7, :cond_80

    #@7e
    move v7, v4

    #@7f
    goto :goto_82

    #@80
    :cond_80
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@82
    .line 112
    :goto_82
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    #@84
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    #@87
    move-result v8

    #@88
    const/4 v9, 0x0

    #@89
    if-eqz v8, :cond_8d

    #@8b
    move v8, v9

    #@8c
    goto :goto_8f

    #@8d
    :cond_8d
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    #@8f
    .line 113
    :goto_8f
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@91
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    #@94
    move-result v10

    #@95
    if-eqz v10, :cond_98

    #@97
    goto :goto_9a

    #@98
    :cond_98
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@9a
    .line 114
    :goto_9a
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    #@9c
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    #@9f
    move-result v10

    #@a0
    if-eqz v10, :cond_a3

    #@a2
    goto :goto_a5

    #@a3
    :cond_a3
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    #@a5
    :goto_a5
    const/4 v10, 0x0

    #@a6
    .line 115
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    #@a8
    move-object/from16 v10, p2

    #@aa
    .line 116
    iget v11, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@ac
    mul-float/2addr v7, v2

    #@ad
    add-float/2addr v11, v7

    #@ae
    mul-float/2addr v9, v3

    #@af
    add-float/2addr v11, v9

    #@b0
    sub-float/2addr v11, v5

    #@b1
    float-to-int v5, v11

    #@b2
    int-to-float v5, v5

    #@b3
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@b5
    .line 117
    iget v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@b7
    mul-float/2addr v2, v8

    #@b8
    add-float/2addr v5, v2

    #@b9
    mul-float/2addr v3, v4

    #@ba
    add-float/2addr v5, v3

    #@bb
    sub-float/2addr v5, v6

    #@bc
    float-to-int v2, v5

    #@bd
    int-to-float v2, v2

    #@be
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@c0
    .line 119
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@c2
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@c5
    move-result-object v2

    #@c6
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@c8
    .line 120
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@ca
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@cc
    return-void
.end method

.method initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v2, p2

    #@6
    move-object/from16 v3, p3

    #@8
    .line 243
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    #@a
    int-to-float v4, v4

    #@b
    const/high16 v5, 0x42c80000    # 100.0f

    #@d
    div-float/2addr v4, v5

    #@e
    .line 245
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@10
    .line 247
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@12
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@14
    .line 248
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@16
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1e

    #@1c
    move v5, v4

    #@1d
    goto :goto_20

    #@1e
    :cond_1e
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@20
    .line 249
    :goto_20
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@22
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2a

    #@28
    move v6, v4

    #@29
    goto :goto_2c

    #@2a
    :cond_2a
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@2c
    .line 251
    :goto_2c
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@2e
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@30
    sub-float/2addr v7, v8

    #@31
    .line 252
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@33
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@35
    sub-float/2addr v8, v9

    #@36
    .line 254
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@38
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@3a
    .line 256
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@3c
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_43

    #@42
    goto :goto_45

    #@43
    :cond_43
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@45
    .line 258
    :goto_45
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@47
    iget v10, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@49
    const/high16 v11, 0x40000000    # 2.0f

    #@4b
    div-float v12, v10, v11

    #@4d
    add-float/2addr v12, v9

    #@4e
    .line 259
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@50
    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@52
    div-float v15, v14, v11

    #@54
    add-float/2addr v15, v13

    #@55
    .line 260
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@57
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@59
    div-float/2addr v1, v11

    #@5a
    add-float/2addr v2, v1

    #@5b
    .line 261
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@5d
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@5f
    div-float/2addr v3, v11

    #@60
    add-float/2addr v1, v3

    #@61
    sub-float/2addr v2, v12

    #@62
    sub-float/2addr v1, v15

    #@63
    mul-float v3, v2, v4

    #@65
    add-float/2addr v9, v3

    #@66
    mul-float/2addr v7, v5

    #@67
    div-float v5, v7, v11

    #@69
    sub-float/2addr v9, v5

    #@6a
    float-to-int v9, v9

    #@6b
    int-to-float v9, v9

    #@6c
    .line 264
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@6e
    mul-float/2addr v4, v1

    #@6f
    add-float/2addr v13, v4

    #@70
    mul-float/2addr v8, v6

    #@71
    div-float v6, v8, v11

    #@73
    sub-float/2addr v13, v6

    #@74
    float-to-int v9, v13

    #@75
    int-to-float v9, v9

    #@76
    .line 265
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@78
    add-float/2addr v10, v7

    #@79
    float-to-int v7, v10

    #@7a
    int-to-float v7, v7

    #@7b
    .line 266
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@7d
    add-float/2addr v14, v8

    #@7e
    float-to-int v7, v14

    #@7f
    int-to-float v7, v7

    #@80
    .line 267
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@82
    move-object/from16 v7, p1

    #@84
    .line 268
    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@86
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    #@89
    move-result v8

    #@8a
    if-eqz v8, :cond_8e

    #@8c
    const/4 v8, 0x0

    #@8d
    goto :goto_90

    #@8e
    :cond_8e
    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@90
    :goto_90
    neg-float v1, v1

    #@91
    mul-float/2addr v1, v8

    #@92
    mul-float/2addr v2, v8

    #@93
    const/4 v8, 0x1

    #@94
    .line 274
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    #@96
    move-object/from16 v8, p2

    #@98
    .line 275
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@9a
    add-float/2addr v9, v3

    #@9b
    sub-float/2addr v9, v5

    #@9c
    float-to-int v3, v9

    #@9d
    int-to-float v3, v3

    #@9e
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@a0
    .line 276
    iget v5, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@a2
    add-float/2addr v5, v4

    #@a3
    sub-float/2addr v5, v6

    #@a4
    float-to-int v4, v5

    #@a5
    int-to-float v4, v4

    #@a6
    add-float/2addr v3, v1

    #@a7
    .line 277
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@a9
    add-float/2addr v4, v2

    #@aa
    .line 278
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@ac
    .line 280
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@ae
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@b0
    .line 281
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@b2
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@b5
    move-result-object v1

    #@b6
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@b8
    .line 282
    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@ba
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@bc
    return-void
.end method

.method initPolar(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "c",
            "s",
            "e"
        }
    .end annotation

    #@0
    .line 150
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    #@2
    int-to-float p1, p1

    #@3
    const/high16 p2, 0x42c80000    # 100.0f

    #@5
    div-float/2addr p1, p2

    #@6
    .line 151
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@8
    .line 152
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@a
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@c
    .line 153
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@e
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    #@10
    .line 154
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@12
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@15
    move-result p2

    #@16
    if-eqz p2, :cond_1a

    #@18
    move p2, p1

    #@19
    goto :goto_1c

    #@1a
    :cond_1a
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@1c
    .line 155
    :goto_1c
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@1e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_26

    #@24
    move v0, p1

    #@25
    goto :goto_28

    #@26
    :cond_26
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@28
    .line 156
    :goto_28
    iget v1, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@2a
    iget v2, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@2c
    sub-float/2addr v1, v2

    #@2d
    .line 157
    iget v3, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@2f
    iget v4, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@31
    sub-float/2addr v3, v4

    #@32
    .line 158
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@34
    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@36
    mul-float/2addr v1, p2

    #@37
    add-float/2addr v2, v1

    #@38
    float-to-int v1, v2

    #@39
    int-to-float v1, v1

    #@3a
    .line 159
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@3c
    mul-float/2addr v3, v0

    #@3d
    add-float/2addr v4, v3

    #@3e
    float-to-int v1, v4

    #@3f
    int-to-float v1, v1

    #@40
    .line 160
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@42
    .line 163
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@44
    const/4 v2, 0x1

    #@45
    if-eq v1, v2, :cond_a2

    #@47
    const/4 v2, 0x2

    #@48
    if-eq v1, v2, :cond_74

    #@4a
    .line 175
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@4c
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@4f
    move-result p2

    #@50
    if-eqz p2, :cond_54

    #@52
    move p2, p1

    #@53
    goto :goto_56

    #@54
    :cond_54
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@56
    :goto_56
    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@58
    iget v1, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@5a
    sub-float/2addr v0, v1

    #@5b
    mul-float/2addr p2, v0

    #@5c
    add-float/2addr p2, v1

    #@5d
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@5f
    .line 176
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@61
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@64
    move-result p2

    #@65
    if-eqz p2, :cond_68

    #@67
    goto :goto_6a

    #@68
    :cond_68
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@6a
    :goto_6a
    iget p2, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@6c
    iget p5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@6e
    sub-float/2addr p2, p5

    #@6f
    mul-float/2addr p1, p2

    #@70
    add-float/2addr p1, p5

    #@71
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@73
    goto :goto_cb

    #@74
    .line 165
    :cond_74
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@76
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_84

    #@7c
    iget p2, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@7e
    iget v0, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@80
    sub-float/2addr p2, v0

    #@81
    mul-float/2addr p2, p1

    #@82
    add-float/2addr p2, v0

    #@83
    goto :goto_8b

    #@84
    :cond_84
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@86
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    #@89
    move-result p2

    #@8a
    mul-float/2addr p2, v1

    #@8b
    :goto_8b
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@8d
    .line 166
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@8f
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@92
    move-result p2

    #@93
    if-eqz p2, :cond_9d

    #@95
    iget p2, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@97
    iget p5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@99
    sub-float/2addr p2, p5

    #@9a
    mul-float/2addr p1, p2

    #@9b
    add-float/2addr p1, p5

    #@9c
    goto :goto_9f

    #@9d
    :cond_9d
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@9f
    :goto_9f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@a1
    goto :goto_cb

    #@a2
    .line 170
    :cond_a2
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@a4
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@a7
    move-result p2

    #@a8
    if-eqz p2, :cond_ac

    #@aa
    move p2, p1

    #@ab
    goto :goto_ae

    #@ac
    :cond_ac
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@ae
    :goto_ae
    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@b0
    iget v1, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@b2
    sub-float/2addr v0, v1

    #@b3
    mul-float/2addr p2, v0

    #@b4
    add-float/2addr p2, v1

    #@b5
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@b7
    .line 171
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@b9
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@bc
    move-result p2

    #@bd
    if-eqz p2, :cond_c0

    #@bf
    goto :goto_c2

    #@c0
    :cond_c0
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@c2
    :goto_c2
    iget p2, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@c4
    iget p5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@c6
    sub-float/2addr p2, p5

    #@c7
    mul-float/2addr p1, p2

    #@c8
    add-float/2addr p1, p5

    #@c9
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@cb
    .line 180
    :goto_cb
    iget p1, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@cd
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@cf
    .line 181
    iget-object p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@d1
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@d4
    move-result-object p1

    #@d5
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@d7
    .line 182
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@d9
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@db
    return-void
.end method

.method initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p3

    #@4
    move-object/from16 v2, p4

    #@6
    move-object/from16 v3, p5

    #@8
    .line 200
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    #@a
    int-to-float v4, v4

    #@b
    const/high16 v5, 0x42c80000    # 100.0f

    #@d
    div-float/2addr v4, v5

    #@e
    .line 202
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@10
    .line 204
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@12
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    #@14
    .line 205
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@16
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1e

    #@1c
    move v5, v4

    #@1d
    goto :goto_20

    #@1e
    :cond_1e
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@20
    .line 206
    :goto_20
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@22
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2a

    #@28
    move v6, v4

    #@29
    goto :goto_2c

    #@2a
    :cond_2a
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@2c
    .line 208
    :goto_2c
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@2e
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@30
    sub-float v9, v7, v8

    #@32
    .line 209
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@34
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@36
    sub-float v12, v10, v11

    #@38
    .line 211
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    #@3a
    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    #@3c
    .line 215
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@3e
    const/high16 v14, 0x40000000    # 2.0f

    #@40
    div-float v15, v8, v14

    #@42
    add-float/2addr v15, v13

    #@43
    .line 216
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@45
    div-float v16, v11, v14

    #@47
    add-float v16, v2, v16

    #@49
    .line 217
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@4b
    div-float/2addr v7, v14

    #@4c
    add-float/2addr v1, v7

    #@4d
    .line 218
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@4f
    div-float/2addr v10, v14

    #@50
    add-float/2addr v3, v10

    #@51
    sub-float/2addr v1, v15

    #@52
    sub-float v3, v3, v16

    #@54
    mul-float/2addr v1, v4

    #@55
    add-float/2addr v13, v1

    #@56
    mul-float/2addr v9, v5

    #@57
    div-float v1, v9, v14

    #@59
    sub-float/2addr v13, v1

    #@5a
    float-to-int v1, v13

    #@5b
    int-to-float v1, v1

    #@5c
    .line 221
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@5e
    mul-float/2addr v3, v4

    #@5f
    add-float/2addr v2, v3

    #@60
    mul-float/2addr v12, v6

    #@61
    div-float v1, v12, v14

    #@63
    sub-float/2addr v2, v1

    #@64
    float-to-int v1, v2

    #@65
    int-to-float v1, v1

    #@66
    .line 222
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@68
    add-float/2addr v8, v9

    #@69
    float-to-int v1, v8

    #@6a
    int-to-float v1, v1

    #@6b
    .line 223
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@6d
    add-float/2addr v11, v12

    #@6e
    float-to-int v1, v11

    #@6f
    int-to-float v1, v1

    #@70
    .line 224
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@72
    const/4 v1, 0x2

    #@73
    .line 226
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    #@75
    move-object/from16 v1, p3

    #@77
    .line 227
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@79
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@7c
    move-result v2

    #@7d
    if-nez v2, :cond_8e

    #@7f
    move/from16 v2, p1

    #@81
    int-to-float v2, v2

    #@82
    .line 228
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@84
    sub-float/2addr v2, v3

    #@85
    float-to-int v2, v2

    #@86
    .line 229
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@88
    int-to-float v2, v2

    #@89
    mul-float/2addr v3, v2

    #@8a
    float-to-int v2, v3

    #@8b
    int-to-float v2, v2

    #@8c
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@8e
    .line 231
    :cond_8e
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@90
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@93
    move-result v2

    #@94
    if-nez v2, :cond_a5

    #@96
    move/from16 v2, p2

    #@98
    int-to-float v2, v2

    #@99
    .line 232
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@9b
    sub-float/2addr v2, v3

    #@9c
    float-to-int v2, v2

    #@9d
    .line 233
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@9f
    int-to-float v2, v2

    #@a0
    mul-float/2addr v3, v2

    #@a1
    float-to-int v2, v3

    #@a2
    int-to-float v2, v2

    #@a3
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@a5
    .line 236
    :cond_a5
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@a7
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    #@a9
    .line 237
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@ab
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@ae
    move-result-object v2

    #@af
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@b1
    .line 238
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@b3
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    #@b5
    return-void
.end method

.method setBounds(FFFF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    #@0
    .line 903
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@2
    .line 904
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@4
    .line 905
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@6
    .line 906
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@8
    return-void
.end method

.method setDpDt(FF[F[I[D[D)V
    .registers 19
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
            "locationX",
            "locationY",
            "mAnchorDpDt",
            "toUse",
            "deltaData",
            "data"
        }
    .end annotation

    #@0
    move-object/from16 v0, p4

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    move v4, v1

    #@5
    move v5, v4

    #@6
    move v6, v5

    #@7
    move v7, v6

    #@8
    move v3, v2

    #@9
    .line 800
    :goto_9
    array-length v8, v0

    #@a
    const/4 v9, 0x1

    #@b
    if-ge v3, v8, :cond_2a

    #@d
    .line 801
    aget-wide v10, p5, v3

    #@f
    double-to-float v8, v10

    #@10
    .line 802
    aget-wide v10, p6, v3

    #@12
    .line 806
    aget v10, v0, v3

    #@14
    if-eq v10, v9, :cond_26

    #@16
    const/4 v9, 0x2

    #@17
    if-eq v10, v9, :cond_24

    #@19
    const/4 v9, 0x3

    #@1a
    if-eq v10, v9, :cond_22

    #@1c
    const/4 v9, 0x4

    #@1d
    if-eq v10, v9, :cond_20

    #@1f
    goto :goto_27

    #@20
    :cond_20
    move v7, v8

    #@21
    goto :goto_27

    #@22
    :cond_22
    move v5, v8

    #@23
    goto :goto_27

    #@24
    :cond_24
    move v6, v8

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v4, v8

    #@27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_9

    #@2a
    :cond_2a
    mul-float v0, v1, v5

    #@2c
    const/high16 v3, 0x40000000    # 2.0f

    #@2e
    div-float/2addr v0, v3

    #@2f
    sub-float/2addr v4, v0

    #@30
    mul-float v0, v1, v7

    #@32
    div-float/2addr v0, v3

    #@33
    sub-float/2addr v6, v0

    #@34
    const/high16 v0, 0x3f800000    # 1.0f

    #@36
    mul-float/2addr v5, v0

    #@37
    mul-float/2addr v7, v0

    #@38
    add-float/2addr v5, v4

    #@39
    add-float/2addr v7, v6

    #@3a
    sub-float v3, v0, p1

    #@3c
    mul-float/2addr v4, v3

    #@3d
    mul-float/2addr v5, p1

    #@3e
    add-float/2addr v4, v5

    #@3f
    add-float/2addr v4, v1

    #@40
    .line 858
    aput v4, p3, v2

    #@42
    sub-float/2addr v0, p2

    #@43
    mul-float/2addr v6, v0

    #@44
    mul-float/2addr v7, p2

    #@45
    add-float/2addr v6, v7

    #@46
    add-float/2addr v6, v1

    #@47
    .line 859
    aput v6, p3, v9

    #@49
    return-void
.end method

.method setView(FLandroid/view/View;[I[D[D[DZ)V
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "toUse",
            "data",
            "slope",
            "cycle",
            "mForceMeasure"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    move-object/from16 v2, p3

    #@6
    move-object/from16 v3, p5

    #@8
    .line 493
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@a
    .line 494
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@c
    .line 495
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@e
    .line 496
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@10
    .line 508
    array-length v8, v2

    #@11
    const/4 v9, 0x1

    #@12
    if-eqz v8, :cond_2a

    #@14
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@16
    array-length v8, v8

    #@17
    array-length v10, v2

    #@18
    sub-int/2addr v10, v9

    #@19
    aget v10, v2, v10

    #@1b
    if-gt v8, v10, :cond_2a

    #@1d
    .line 509
    array-length v8, v2

    #@1e
    sub-int/2addr v8, v9

    #@1f
    aget v8, v2, v8

    #@21
    add-int/2addr v8, v9

    #@22
    .line 510
    new-array v10, v8, [D

    #@24
    iput-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@26
    .line 511
    new-array v8, v8, [D

    #@28
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    #@2a
    .line 513
    :cond_2a
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@2c
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    #@2e
    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([DD)V

    #@31
    const/4 v10, 0x0

    #@32
    .line 514
    :goto_32
    array-length v11, v2

    #@33
    if-ge v10, v11, :cond_46

    #@35
    .line 515
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@37
    aget v12, v2, v10

    #@39
    aget-wide v13, p4, v10

    #@3b
    aput-wide v13, v11, v12

    #@3d
    .line 516
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    #@3f
    aget-wide v13, v3, v10

    #@41
    aput-wide v13, v11, v12

    #@43
    add-int/lit8 v10, v10, 0x1

    #@45
    goto :goto_32

    #@46
    :cond_46
    const/high16 v10, 0x7fc00000    # Float.NaN

    #@48
    const/4 v11, 0x0

    #@49
    const/4 v12, 0x0

    #@4a
    const/4 v13, 0x0

    #@4b
    const/4 v14, 0x0

    #@4c
    const/4 v15, 0x0

    #@4d
    .line 519
    :goto_4d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@4f
    array-length v8, v2

    #@50
    if-ge v11, v8, :cond_b3

    #@52
    .line 520
    aget-wide v16, v2, v11

    #@54
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    #@57
    move-result v2

    #@58
    const-wide/16 v16, 0x0

    #@5a
    if-eqz v2, :cond_67

    #@5c
    if-eqz p6, :cond_64

    #@5e
    aget-wide v18, p6, v11

    #@60
    cmpl-double v2, v18, v16

    #@62
    if-nez v2, :cond_67

    #@64
    :cond_64
    move/from16 p4, v10

    #@66
    goto :goto_95

    #@67
    :cond_67
    if-eqz p6, :cond_6b

    #@69
    .line 523
    aget-wide v16, p6, v11

    #@6b
    .line 524
    :cond_6b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@6d
    aget-wide v18, v2, v11

    #@6f
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_76

    #@75
    goto :goto_7c

    #@76
    :cond_76
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    #@78
    aget-wide v18, v2, v11

    #@7a
    add-double v16, v18, v16

    #@7c
    :goto_7c
    move/from16 p4, v10

    #@7e
    move-wide/from16 v9, v16

    #@80
    double-to-float v8, v9

    #@81
    .line 525
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    #@83
    aget-wide v2, v9, v11

    #@85
    double-to-float v2, v2

    #@86
    const/4 v3, 0x1

    #@87
    if-eq v11, v3, :cond_a9

    #@89
    const/4 v3, 0x2

    #@8a
    if-eq v11, v3, :cond_a4

    #@8c
    const/4 v3, 0x3

    #@8d
    if-eq v11, v3, :cond_9f

    #@8f
    const/4 v3, 0x4

    #@90
    if-eq v11, v3, :cond_9a

    #@92
    const/4 v2, 0x5

    #@93
    if-eq v11, v2, :cond_98

    #@95
    :goto_95
    move/from16 v10, p4

    #@97
    goto :goto_ad

    #@98
    :cond_98
    move v10, v8

    #@99
    goto :goto_ad

    #@9a
    :cond_9a
    move/from16 v10, p4

    #@9c
    move v15, v2

    #@9d
    move v7, v8

    #@9e
    goto :goto_ad

    #@9f
    :cond_9f
    move/from16 v10, p4

    #@a1
    move v14, v2

    #@a2
    move v6, v8

    #@a3
    goto :goto_ad

    #@a4
    :cond_a4
    move/from16 v10, p4

    #@a6
    move v13, v2

    #@a7
    move v5, v8

    #@a8
    goto :goto_ad

    #@a9
    :cond_a9
    move/from16 v10, p4

    #@ab
    move v12, v2

    #@ac
    move v4, v8

    #@ad
    :goto_ad
    add-int/lit8 v11, v11, 0x1

    #@af
    move-object/from16 v3, p5

    #@b1
    const/4 v9, 0x1

    #@b2
    goto :goto_4d

    #@b3
    :cond_b3
    move/from16 p4, v10

    #@b5
    .line 556
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@b7
    const/high16 v8, 0x40000000    # 2.0f

    #@b9
    if-eqz v3, :cond_150

    #@bb
    const/4 v2, 0x2

    #@bc
    new-array v9, v2, [F

    #@be
    new-array v10, v2, [F

    #@c0
    move/from16 v11, p1

    #@c2
    float-to-double v14, v11

    #@c3
    .line 560
    invoke-virtual {v3, v14, v15, v9, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    #@c6
    const/4 v3, 0x0

    #@c7
    aget v11, v9, v3

    #@c9
    const/4 v14, 0x1

    #@ca
    aget v9, v9, v14

    #@cc
    aget v15, v10, v3

    #@ce
    aget v3, v10, v14

    #@d0
    float-to-double v10, v11

    #@d1
    move/from16 p1, v3

    #@d3
    float-to-double v2, v4

    #@d4
    float-to-double v4, v5

    #@d5
    .line 571
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@d8
    move-result-wide v16

    #@d9
    mul-double v16, v16, v2

    #@db
    add-double v10, v10, v16

    #@dd
    div-float v14, v6, v8

    #@df
    move/from16 v16, v9

    #@e1
    float-to-double v8, v14

    #@e2
    sub-double/2addr v10, v8

    #@e3
    double-to-float v8, v10

    #@e4
    move/from16 v9, v16

    #@e6
    float-to-double v9, v9

    #@e7
    .line 572
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@ea
    move-result-wide v16

    #@eb
    mul-double v16, v16, v2

    #@ed
    sub-double v9, v9, v16

    #@ef
    const/high16 v11, 0x40000000    # 2.0f

    #@f1
    div-float v11, v7, v11

    #@f3
    move/from16 v16, v7

    #@f5
    move v14, v8

    #@f6
    float-to-double v7, v11

    #@f7
    sub-double/2addr v9, v7

    #@f8
    double-to-float v7, v9

    #@f9
    float-to-double v8, v15

    #@fa
    float-to-double v10, v12

    #@fb
    .line 573
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@fe
    move-result-wide v17

    #@ff
    mul-double v17, v17, v10

    #@101
    add-double v8, v8, v17

    #@103
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@106
    move-result-wide v17

    #@107
    mul-double v17, v17, v2

    #@109
    float-to-double v12, v13

    #@10a
    mul-double v17, v17, v12

    #@10c
    add-double v8, v8, v17

    #@10e
    double-to-float v8, v8

    #@10f
    move/from16 v9, p1

    #@111
    move/from16 p1, v14

    #@113
    float-to-double v14, v9

    #@114
    .line 574
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@117
    move-result-wide v17

    #@118
    mul-double v10, v10, v17

    #@11a
    sub-double/2addr v14, v10

    #@11b
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@11e
    move-result-wide v4

    #@11f
    mul-double/2addr v2, v4

    #@120
    mul-double/2addr v2, v12

    #@121
    add-double/2addr v14, v2

    #@122
    double-to-float v2, v14

    #@123
    move-object/from16 v3, p5

    #@125
    .line 579
    array-length v4, v3

    #@126
    const/4 v5, 0x2

    #@127
    if-lt v4, v5, :cond_132

    #@129
    float-to-double v4, v8

    #@12a
    const/4 v9, 0x0

    #@12b
    .line 580
    aput-wide v4, v3, v9

    #@12d
    float-to-double v4, v2

    #@12e
    const/4 v10, 0x1

    #@12f
    .line 581
    aput-wide v4, v3, v10

    #@131
    goto :goto_134

    #@132
    :cond_132
    const/4 v9, 0x0

    #@133
    const/4 v10, 0x1

    #@134
    .line 583
    :goto_134
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isNaN(F)Z

    #@137
    move-result v3

    #@138
    if-nez v3, :cond_14c

    #@13a
    move/from16 v3, p4

    #@13c
    float-to-double v3, v3

    #@13d
    float-to-double v11, v2

    #@13e
    float-to-double v13, v8

    #@13f
    .line 584
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    #@142
    move-result-wide v11

    #@143
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    #@146
    move-result-wide v11

    #@147
    add-double/2addr v3, v11

    #@148
    double-to-float v2, v3

    #@149
    .line 585
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    #@14c
    :cond_14c
    move/from16 v4, p1

    #@14e
    move v5, v7

    #@14f
    goto :goto_175

    #@150
    :cond_150
    move/from16 v3, p4

    #@152
    move/from16 v16, v7

    #@154
    const/4 v9, 0x0

    #@155
    const/4 v10, 0x1

    #@156
    .line 590
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    #@159
    move-result v2

    #@15a
    if-nez v2, :cond_175

    #@15c
    const/high16 v2, 0x40000000    # 2.0f

    #@15e
    div-float/2addr v14, v2

    #@15f
    add-float/2addr v12, v14

    #@160
    div-float/2addr v15, v2

    #@161
    add-float/2addr v13, v15

    #@162
    const/4 v2, 0x0

    #@163
    float-to-double v7, v2

    #@164
    float-to-double v2, v3

    #@165
    float-to-double v13, v13

    #@166
    float-to-double v11, v12

    #@167
    .line 600
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    #@16a
    move-result-wide v11

    #@16b
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    #@16e
    move-result-wide v11

    #@16f
    add-double/2addr v2, v11

    #@170
    add-double/2addr v7, v2

    #@171
    double-to-float v2, v7

    #@172
    .line 601
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    #@175
    .line 608
    :cond_175
    :goto_175
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/FloatLayout;

    #@177
    if-eqz v2, :cond_182

    #@179
    add-float/2addr v6, v4

    #@17a
    add-float v7, v5, v16

    #@17c
    .line 613
    check-cast v1, Landroidx/constraintlayout/motion/widget/FloatLayout;

    #@17e
    invoke-interface {v1, v4, v5, v6, v7}, Landroidx/constraintlayout/motion/widget/FloatLayout;->layout(FFFF)V

    #@181
    return-void

    #@182
    :cond_182
    const/high16 v2, 0x3f000000    # 0.5f

    #@184
    add-float/2addr v4, v2

    #@185
    float-to-int v3, v4

    #@186
    add-float/2addr v5, v2

    #@187
    float-to-int v2, v5

    #@188
    add-float/2addr v4, v6

    #@189
    float-to-int v4, v4

    #@18a
    add-float v5, v5, v16

    #@18c
    float-to-int v5, v5

    #@18d
    sub-int v6, v4, v3

    #@18f
    sub-int v7, v5, v2

    #@191
    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    #@194
    move-result v8

    #@195
    if-ne v6, v8, :cond_19d

    #@197
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    #@19a
    move-result v8

    #@19b
    if-eq v7, v8, :cond_19e

    #@19d
    :cond_19d
    move v9, v10

    #@19e
    :cond_19e
    if-nez v9, :cond_1a2

    #@1a0
    if-eqz p7, :cond_1af

    #@1a2
    :cond_1a2
    const/high16 v8, 0x40000000    # 2.0f

    #@1a4
    .line 634
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1a7
    move-result v6

    #@1a8
    .line 635
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1ab
    move-result v7

    #@1ac
    .line 637
    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    #@1af
    .line 640
    :cond_1af
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    #@1b2
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mc",
            "relative"
        }
    .end annotation

    #@0
    .line 186
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@4
    const/high16 v2, 0x40000000    # 2.0f

    #@6
    div-float/2addr v1, v2

    #@7
    add-float/2addr v0, v1

    #@8
    iget v1, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@a
    sub-float/2addr v0, v1

    #@b
    iget v1, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    #@d
    div-float/2addr v1, v2

    #@e
    sub-float/2addr v0, v1

    #@f
    float-to-double v0, v0

    #@10
    .line 187
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@12
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@14
    div-float/2addr v4, v2

    #@15
    add-float/2addr v3, v4

    #@16
    iget v4, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@18
    sub-float/2addr v3, v4

    #@19
    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    #@1b
    div-float/2addr p2, v2

    #@1c
    sub-float/2addr v3, p2

    #@1d
    float-to-double v2, v3

    #@1e
    .line 188
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    #@20
    .line 190
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    #@23
    move-result-wide p1

    #@24
    double-to-float p1, p1

    #@25
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    #@27
    .line 191
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    #@29
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@2c
    move-result p1

    #@2d
    if-eqz p1, :cond_3d

    #@2f
    .line 192
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    #@32
    move-result-wide p1

    #@33
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@38
    add-double/2addr p1, v0

    #@39
    double-to-float p1, p1

    #@3a
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@3c
    goto :goto_47

    #@3d
    .line 194
    :cond_3d
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    #@3f
    float-to-double p1, p1

    #@40
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    #@43
    move-result-wide p1

    #@44
    double-to-float p1, p1

    #@45
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    #@47
    :goto_47
    return-void
.end method
