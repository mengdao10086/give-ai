.class public Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyPosition.java"


# static fields
.field static final KEY_TYPE:I = 0x2

.field static final NAME:Ljava/lang/String; = "KeyPosition"

.field protected static final SELECTION_SLOPE:F = 20.0f

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field public mAltPercentX:F

.field public mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field public mCurveFit:I

.field public mDrawPath:I

.field public mPathMotionArc:I

.field public mPercentHeight:F

.field public mPercentWidth:F

.field public mPercentX:F

.field public mPercentY:F

.field public mPositionType:I

.field public mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 26
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    #@3
    .line 29
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->UNSET:I

    #@5
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    #@7
    const/4 v0, 0x0

    #@8
    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@a
    .line 31
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->UNSET:I

    #@c
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    #@e
    const/4 v0, 0x0

    #@f
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    #@11
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@13
    .line 33
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    #@15
    .line 34
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    #@17
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@19
    .line 36
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    #@1b
    .line 37
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    #@1d
    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    #@1f
    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    #@21
    .line 44
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    #@23
    .line 45
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    #@25
    const/4 v0, 0x2

    #@26
    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mType:I

    #@28
    return-void
.end method

.method private calcCartesianPosition(FFFF)V
    .registers 10

    #@0
    sub-float/2addr p3, p1

    #@1
    sub-float/2addr p4, p2

    #@2
    .line 74
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@4
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz v0, :cond_d

    #@b
    move v0, v1

    #@c
    goto :goto_f

    #@d
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@f
    .line 75
    :goto_f
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    #@11
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_19

    #@17
    move v2, v1

    #@18
    goto :goto_1b

    #@19
    :cond_19
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    #@1b
    .line 76
    :goto_1b
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    #@1d
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_25

    #@23
    move v3, v1

    #@24
    goto :goto_27

    #@25
    :cond_25
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    #@27
    .line 77
    :goto_27
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    #@29
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_30

    #@2f
    goto :goto_32

    #@30
    :cond_30
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    #@32
    :goto_32
    mul-float/2addr v0, p3

    #@33
    add-float/2addr p1, v0

    #@34
    mul-float/2addr v1, p4

    #@35
    add-float/2addr p1, v1

    #@36
    float-to-int p1, p1

    #@37
    int-to-float p1, p1

    #@38
    .line 78
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    #@3a
    mul-float/2addr p3, v2

    #@3b
    add-float/2addr p2, p3

    #@3c
    mul-float/2addr p4, v3

    #@3d
    add-float/2addr p2, p4

    #@3e
    float-to-int p1, p2

    #@3f
    int-to-float p1, p1

    #@40
    .line 79
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    #@42
    return-void
.end method

.method private calcPathPosition(FFFF)V
    .registers 8

    #@0
    sub-float/2addr p3, p1

    #@1
    sub-float/2addr p4, p2

    #@2
    neg-float v0, p4

    #@3
    .line 66
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@5
    mul-float v2, p3, v1

    #@7
    add-float/2addr p1, v2

    #@8
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    #@a
    mul-float/2addr v0, v2

    #@b
    add-float/2addr p1, v0

    #@c
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    #@e
    mul-float/2addr p4, v1

    #@f
    add-float/2addr p2, p4

    #@10
    mul-float/2addr p3, v2

    #@11
    add-float/2addr p2, p3

    #@12
    .line 67
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    #@14
    return-void
.end method

.method private calcScreenPosition(II)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    sub-int/2addr p1, v0

    #@2
    int-to-float p1, p1

    #@3
    .line 56
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@5
    mul-float/2addr p1, v1

    #@6
    int-to-float v2, v0

    #@7
    add-float/2addr p1, v2

    #@8
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    #@a
    sub-int/2addr p2, v0

    #@b
    int-to-float p1, p2

    #@c
    mul-float/2addr p1, v1

    #@d
    add-float/2addr p1, v2

    #@e
    .line 57
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    #@10
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method calcPosition(IIFFFF)V
    .registers 9

    #@0
    .line 220
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_10

    #@5
    const/4 v1, 0x2

    #@6
    if-eq v0, v1, :cond_c

    #@8
    .line 230
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcCartesianPosition(FFFF)V

    #@b
    return-void

    #@c
    .line 222
    :cond_c
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcScreenPosition(II)V

    #@f
    return-void

    #@10
    .line 226
    :cond_10
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcPathPosition(FFFF)V

    #@13
    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    #@0
    .line 216
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 26
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 3

    #@0
    .line 199
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    .line 200
    check-cast p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    #@5
    .line 201
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@7
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@9
    .line 202
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    #@b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    #@d
    .line 203
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    #@f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    #@11
    .line 204
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    #@13
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    #@15
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@17
    .line 205
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    #@19
    .line 206
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@1b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@1d
    .line 207
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    #@1f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    #@21
    .line 208
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    #@23
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    #@25
    .line 209
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    #@27
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    #@29
    .line 210
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    #@2b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    #@2d
    .line 211
    iget p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    #@2f
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    #@31
    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .registers 2

    #@0
    .line 301
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->getId(Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method getPositionX()F
    .registers 2

    #@0
    .line 83
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    #@2
    return v0
.end method

.method getPositionY()F
    .registers 2

    #@0
    .line 87
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    #@2
    return v0
.end method

.method public intersects(IILandroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF)Z
    .registers 14

    #@0
    .line 190
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    #@3
    move-result v3

    #@4
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    #@7
    move-result v4

    #@8
    invoke-virtual {p4}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    #@b
    move-result v5

    #@c
    invoke-virtual {p4}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    #@f
    move-result v6

    #@10
    move-object v0, p0

    #@11
    move v1, p1

    #@12
    move v2, p2

    #@13
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcPosition(IIFFFF)V

    #@16
    .line 191
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    #@18
    sub-float/2addr p5, p1

    #@19
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    #@1c
    move-result p1

    #@1d
    const/high16 p2, 0x41a00000    # 20.0f

    #@1f
    cmpg-float p1, p1, p2

    #@21
    if-gez p1, :cond_30

    #@23
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    #@25
    sub-float/2addr p6, p1

    #@26
    .line 192
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    #@29
    move-result p1

    #@2a
    cmpg-float p1, p1, p2

    #@2c
    if-gez p1, :cond_30

    #@2e
    const/4 p1, 0x1

    #@2f
    return p1

    #@30
    :cond_30
    const/4 p1, 0x0

    #@31
    return p1
.end method

.method public positionAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .registers 15

    #@0
    .line 91
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_17

    #@5
    const/4 v1, 0x2

    #@6
    if-eq v0, v1, :cond_13

    #@8
    move-object v0, p0

    #@9
    move-object v1, p2

    #@a
    move-object v2, p3

    #@b
    move v3, p4

    #@c
    move v4, p5

    #@d
    move-object v5, p6

    #@e
    move-object v6, p7

    #@f
    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionCartAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    #@12
    return-void

    #@13
    .line 97
    :cond_13
    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionScreenAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    #@16
    return-void

    #@17
    :cond_17
    move-object v0, p0

    #@18
    move-object v1, p2

    #@19
    move-object v2, p3

    #@1a
    move v3, p4

    #@1b
    move v4, p5

    #@1c
    move-object v5, p6

    #@1d
    move-object v6, p7

    #@1e
    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionPathAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    #@21
    return-void
.end method

.method positionCartAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .registers 13

    #@0
    .line 167
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    #@3
    move-result v0

    #@4
    .line 168
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    #@7
    move-result p1

    #@8
    .line 169
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    #@b
    move-result v1

    #@c
    .line 170
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    #@f
    move-result p2

    #@10
    sub-float/2addr v1, v0

    #@11
    sub-float/2addr p2, p1

    #@12
    const/4 v2, 0x0

    #@13
    .line 173
    aget-object v3, p5, v2

    #@15
    const-string v4, "percentX"

    #@17
    const/4 v5, 0x1

    #@18
    if-eqz v3, :cond_32

    #@1a
    .line 174
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result p5

    #@1e
    if-eqz p5, :cond_29

    #@20
    sub-float/2addr p3, v0

    #@21
    div-float/2addr p3, v1

    #@22
    .line 175
    aput p3, p6, v2

    #@24
    sub-float/2addr p4, p1

    #@25
    div-float/2addr p4, p2

    #@26
    .line 176
    aput p4, p6, v5

    #@28
    goto :goto_40

    #@29
    :cond_29
    sub-float/2addr p3, v0

    #@2a
    div-float/2addr p3, v1

    #@2b
    .line 178
    aput p3, p6, v5

    #@2d
    sub-float/2addr p4, p1

    #@2e
    div-float/2addr p4, p2

    #@2f
    .line 179
    aput p4, p6, v2

    #@31
    goto :goto_40

    #@32
    .line 182
    :cond_32
    aput-object v4, p5, v2

    #@34
    sub-float/2addr p3, v0

    #@35
    div-float/2addr p3, v1

    #@36
    .line 183
    aput p3, p6, v2

    #@38
    const-string p3, "percentY"

    #@3a
    .line 184
    aput-object p3, p5, v5

    #@3c
    sub-float/2addr p4, p1

    #@3d
    div-float/2addr p4, p2

    #@3e
    .line 185
    aput p4, p6, v5

    #@40
    :goto_40
    return-void
.end method

.method positionPathAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .registers 14

    #@0
    .line 108
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    #@3
    move-result v0

    #@4
    .line 109
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    #@7
    move-result p1

    #@8
    .line 110
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    #@b
    move-result v1

    #@c
    .line 111
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    #@f
    move-result p2

    #@10
    sub-float/2addr v1, v0

    #@11
    sub-float/2addr p2, p1

    #@12
    float-to-double v2, v1

    #@13
    float-to-double v4, p2

    #@14
    .line 114
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    #@17
    move-result-wide v2

    #@18
    double-to-float v2, v2

    #@19
    float-to-double v3, v2

    #@1a
    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    #@1f
    cmpg-double v3, v3, v5

    #@21
    const/4 v4, 0x1

    #@22
    const/4 v5, 0x0

    #@23
    if-gez v3, :cond_32

    #@25
    .line 116
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@27
    const-string p2, "distance ~ 0"

    #@29
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    const/4 p1, 0x0

    #@2d
    .line 117
    aput p1, p6, v5

    #@2f
    .line 118
    aput p1, p6, v4

    #@31
    return-void

    #@32
    :cond_32
    div-float/2addr v1, v2

    #@33
    div-float/2addr p2, v2

    #@34
    sub-float/2addr p4, p1

    #@35
    mul-float p1, v1, p4

    #@37
    sub-float/2addr p3, v0

    #@38
    mul-float v0, p3, p2

    #@3a
    sub-float/2addr p1, v0

    #@3b
    div-float/2addr p1, v2

    #@3c
    mul-float/2addr v1, p3

    #@3d
    mul-float/2addr p2, p4

    #@3e
    add-float/2addr v1, p2

    #@3f
    div-float/2addr v1, v2

    #@40
    .line 126
    aget-object p2, p5, v5

    #@42
    const-string p3, "percentX"

    #@44
    if-eqz p2, :cond_51

    #@46
    .line 127
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result p2

    #@4a
    if-eqz p2, :cond_5b

    #@4c
    .line 128
    aput v1, p6, v5

    #@4e
    .line 129
    aput p1, p6, v4

    #@50
    goto :goto_5b

    #@51
    .line 132
    :cond_51
    aput-object p3, p5, v5

    #@53
    const-string p2, "percentY"

    #@55
    .line 133
    aput-object p2, p5, v4

    #@57
    .line 134
    aput v1, p6, v5

    #@59
    .line 135
    aput p1, p6, v4

    #@5b
    :cond_5b
    :goto_5b
    return-void
.end method

.method positionScreenAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .registers 11

    #@0
    .line 140
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    #@3
    .line 141
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    #@6
    .line 142
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    #@9
    .line 143
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    #@c
    .line 146
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    #@f
    move-result-object p1

    #@10
    .line 147
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    #@13
    move-result p2

    #@14
    .line 148
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    #@17
    move-result p1

    #@18
    const/4 p3, 0x0

    #@19
    .line 150
    aget-object v0, p6, p3

    #@1b
    const-string v1, "percentX"

    #@1d
    const/4 v2, 0x1

    #@1e
    if-eqz v0, :cond_38

    #@20
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result p6

    #@24
    if-eqz p6, :cond_2f

    #@26
    int-to-float p2, p2

    #@27
    div-float/2addr p4, p2

    #@28
    .line 152
    aput p4, p7, p3

    #@2a
    int-to-float p1, p1

    #@2b
    div-float/2addr p5, p1

    #@2c
    .line 153
    aput p5, p7, v2

    #@2e
    goto :goto_46

    #@2f
    :cond_2f
    int-to-float p2, p2

    #@30
    div-float/2addr p4, p2

    #@31
    .line 155
    aput p4, p7, v2

    #@33
    int-to-float p1, p1

    #@34
    div-float/2addr p5, p1

    #@35
    .line 156
    aput p5, p7, p3

    #@37
    goto :goto_46

    #@38
    .line 159
    :cond_38
    aput-object v1, p6, p3

    #@3a
    int-to-float p2, p2

    #@3b
    div-float/2addr p4, p2

    #@3c
    .line 160
    aput p4, p7, p3

    #@3e
    const-string p2, "percentY"

    #@40
    .line 161
    aput-object p2, p6, v2

    #@42
    int-to-float p1, p1

    #@43
    div-float/2addr p5, p1

    #@44
    .line 162
    aput p5, p7, v2

    #@46
    :goto_46
    return-void
.end method

.method public setValue(IF)Z
    .registers 3

    #@0
    packed-switch p1, :pswitch_data_1a

    #@3
    .line 282
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    #@6
    move-result p1

    #@7
    return p1

    #@8
    .line 279
    :pswitch_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    #@a
    goto :goto_18

    #@b
    .line 276
    :pswitch_b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    #@d
    goto :goto_18

    #@e
    .line 273
    :pswitch_e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    #@10
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    #@12
    goto :goto_18

    #@13
    .line 270
    :pswitch_13
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    #@15
    goto :goto_18

    #@16
    .line 267
    :pswitch_16
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    #@18
    :goto_18
    const/4 p1, 0x1

    #@19
    return p1

    #@1a
    :pswitch_data_1a
    .packed-switch 0x1f7
        :pswitch_16
        :pswitch_13
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public setValue(II)Z
    .registers 4

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p1, v0, :cond_17

    #@4
    const/16 v0, 0x1fc

    #@6
    if-eq p1, v0, :cond_14

    #@8
    const/16 v0, 0x1fe

    #@a
    if-eq p1, v0, :cond_11

    #@c
    .line 257
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    #@f
    move-result p1

    #@10
    return p1

    #@11
    .line 247
    :cond_11
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    #@13
    goto :goto_19

    #@14
    .line 253
    :cond_14
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    #@16
    goto :goto_19

    #@17
    .line 250
    :cond_17
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

    #@19
    :goto_19
    const/4 p1, 0x1

    #@1a
    return p1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    #@0
    const/16 v0, 0x1f5

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 294
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 291
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@f
    const/4 p1, 0x1

    #@10
    return p1
.end method
