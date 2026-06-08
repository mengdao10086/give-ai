.class public Landroidx/constraintlayout/motion/widget/KeyPosition;
.super Landroidx/constraintlayout/motion/widget/KeyPositionBase;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
    }
.end annotation


# static fields
.field public static final DRAWPATH:Ljava/lang/String; = "drawPath"

.field static final KEY_TYPE:I = 0x2

.field static final NAME:Ljava/lang/String; = "KeyPosition"

.field public static final PERCENT_HEIGHT:Ljava/lang/String; = "percentHeight"

.field public static final PERCENT_WIDTH:Ljava/lang/String; = "percentWidth"

.field public static final PERCENT_X:Ljava/lang/String; = "percentX"

.field public static final PERCENT_Y:Ljava/lang/String; = "percentY"

.field public static final SIZE_PERCENT:Ljava/lang/String; = "sizePercent"

.field private static final TAG:Ljava/lang/String; = "KeyPosition"

.field public static final TRANSITION_EASING:Ljava/lang/String; = "transitionEasing"

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field mAltPercentX:F

.field mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field mDrawPath:I

.field mPathMotionArc:I

.field mPercentHeight:F

.field mPercentWidth:F

.field mPercentX:F

.field mPercentY:F

.field mPositionType:I

.field mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@6
    .line 47
    sget v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->UNSET:I

    #@8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@a
    const/4 v0, 0x0

    #@b
    .line 48
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@d
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@f
    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@11
    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@13
    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@15
    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@17
    .line 53
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    #@19
    .line 54
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    #@1b
    .line 58
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@1d
    .line 66
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    #@1f
    .line 67
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    #@21
    const/4 v0, 0x2

    #@22
    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mType:I

    #@24
    return-void
.end method

.method private calcCartesianPosition(FFFF)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start_x",
            "start_y",
            "end_x",
            "end_y"
        }
    .end annotation

    #@0
    sub-float/2addr p3, p1

    #@1
    sub-float/2addr p4, p2

    #@2
    .line 127
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@f
    .line 128
    :goto_f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

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
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    #@1b
    .line 129
    :goto_1b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

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
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@27
    .line 130
    :goto_27
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

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
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

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
    .line 131
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

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
    .line 132
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    #@42
    return-void
.end method

.method private calcPathPosition(FFFF)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start_x",
            "start_y",
            "end_x",
            "end_y"
        }
    .end annotation

    #@0
    sub-float/2addr p3, p1

    #@1
    sub-float/2addr p4, p2

    #@2
    neg-float v0, p4

    #@3
    .line 119
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@5
    mul-float v2, p3, v1

    #@7
    add-float/2addr p1, v2

    #@8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@a
    mul-float/2addr v0, v2

    #@b
    add-float/2addr p1, v0

    #@c
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    #@e
    mul-float/2addr p4, v1

    #@f
    add-float/2addr p2, p4

    #@10
    mul-float/2addr p3, v2

    #@11
    add-float/2addr p2, p3

    #@12
    .line 120
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    #@14
    return-void
.end method

.method private calcScreenPosition(II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutWidth",
            "layoutHeight"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    sub-int/2addr p1, v0

    #@2
    int-to-float p1, p1

    #@3
    .line 109
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@5
    mul-float/2addr p1, v1

    #@6
    int-to-float v2, v0

    #@7
    add-float/2addr p1, v2

    #@8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    #@a
    sub-int/2addr p2, v0

    #@b
    int-to-float p1, p2

    #@c
    mul-float/2addr p1, v1

    #@d
    add-float/2addr p1, v2

    #@e
    .line 110
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    #@10
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method calcPosition(IIFFFF)V
    .registers 9
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
            "layoutWidth",
            "layoutHeight",
            "start_x",
            "start_y",
            "end_x",
            "end_y"
        }
    .end annotation

    #@0
    .line 90
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_10

    #@5
    const/4 v1, 0x2

    #@6
    if-eq v0, v1, :cond_c

    #@8
    .line 100
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcCartesianPosition(FFFF)V

    #@b
    return-void

    #@c
    .line 92
    :cond_c
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcScreenPosition(II)V

    #@f
    return-void

    #@10
    .line 96
    :cond_10
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPathPosition(FFFF)V

    #@13
    return-void
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    #@0
    .line 399
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

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
    .line 42
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->clone()Landroidx/constraintlayout/motion/widget/Key;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    #@0
    .line 382
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    #@3
    .line 383
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@5
    .line 384
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@9
    .line 385
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@d
    .line 386
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@11
    .line 387
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@15
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@17
    .line 388
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@19
    .line 389
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@1d
    .line 390
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@1f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@21
    .line 391
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    #@23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    #@25
    .line 392
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    #@27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    #@29
    .line 393
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    #@2b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    #@2d
    .line 394
    iget p1, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    #@2f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    #@31
    return-object p0
.end method

.method getPositionX()F
    .registers 2

    #@0
    .line 137
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    #@2
    return v0
.end method

.method getPositionY()F
    .registers 2

    #@0
    .line 142
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    #@2
    return v0
.end method

.method public intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .registers 14
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
            "layoutWidth",
            "layoutHeight",
            "start",
            "end",
            "x",
            "y"
        }
    .end annotation

    #@0
    .line 247
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    #@3
    move-result v3

    #@4
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    #@7
    move-result v4

    #@8
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    #@b
    move-result v5

    #@c
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    #@f
    move-result v6

    #@10
    move-object v0, p0

    #@11
    move v1, p1

    #@12
    move v2, p2

    #@13
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPosition(IIFFFF)V

    #@16
    .line 248
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

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
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    #@25
    sub-float/2addr p6, p1

    #@26
    .line 249
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

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 76
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    .line 77
    # invokes: Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    #@9
    return-void
.end method

.method public positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 15
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
            "view",
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    #@0
    .line 147
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

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
    .line 157
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    #@12
    return-void

    #@13
    .line 153
    :cond_13
    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

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
    .line 150
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    #@21
    return-void
.end method

.method positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 13
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
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    #@0
    .line 223
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    #@3
    move-result v0

    #@4
    .line 224
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    #@7
    move-result p1

    #@8
    .line 225
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    #@b
    move-result v1

    #@c
    .line 226
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    #@f
    move-result p2

    #@10
    sub-float/2addr v1, v0

    #@11
    sub-float/2addr p2, p1

    #@12
    const/4 v2, 0x0

    #@13
    .line 229
    aget-object v3, p5, v2

    #@15
    const-string v4, "percentX"

    #@17
    const/4 v5, 0x1

    #@18
    if-eqz v3, :cond_32

    #@1a
    .line 230
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
    .line 231
    aput p3, p6, v2

    #@24
    sub-float/2addr p4, p1

    #@25
    div-float/2addr p4, p2

    #@26
    .line 232
    aput p4, p6, v5

    #@28
    goto :goto_40

    #@29
    :cond_29
    sub-float/2addr p3, v0

    #@2a
    div-float/2addr p3, v1

    #@2b
    .line 234
    aput p3, p6, v5

    #@2d
    sub-float/2addr p4, p1

    #@2e
    div-float/2addr p4, p2

    #@2f
    .line 235
    aput p4, p6, v2

    #@31
    goto :goto_40

    #@32
    .line 238
    :cond_32
    aput-object v4, p5, v2

    #@34
    sub-float/2addr p3, v0

    #@35
    div-float/2addr p3, v1

    #@36
    .line 239
    aput p3, p6, v2

    #@38
    const-string p3, "percentY"

    #@3a
    .line 240
    aput-object p3, p5, v5

    #@3c
    sub-float/2addr p4, p1

    #@3d
    div-float/2addr p4, p2

    #@3e
    .line 241
    aput p4, p6, v5

    #@40
    :goto_40
    return-void
.end method

.method positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 14
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
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    #@0
    .line 164
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    #@3
    move-result v0

    #@4
    .line 165
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    #@7
    move-result p1

    #@8
    .line 166
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    #@b
    move-result v1

    #@c
    .line 167
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

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
    .line 170
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
    .line 172
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@27
    const-string p2, "distance ~ 0"

    #@29
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    const/4 p1, 0x0

    #@2d
    .line 173
    aput p1, p6, v5

    #@2f
    .line 174
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
    .line 182
    aget-object p2, p5, v5

    #@42
    const-string p3, "percentX"

    #@44
    if-eqz p2, :cond_51

    #@46
    .line 183
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result p2

    #@4a
    if-eqz p2, :cond_5b

    #@4c
    .line 184
    aput v1, p6, v5

    #@4e
    .line 185
    aput p1, p6, v4

    #@50
    goto :goto_5b

    #@51
    .line 188
    :cond_51
    aput-object p3, p5, v5

    #@53
    const-string p2, "percentY"

    #@55
    .line 189
    aput-object p2, p5, v4

    #@57
    .line 190
    aput v1, p6, v5

    #@59
    .line 191
    aput p1, p6, v4

    #@5b
    :cond_5b
    :goto_5b
    return-void
.end method

.method positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 11
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
            "view",
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    #@0
    .line 196
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    #@3
    .line 197
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    #@6
    .line 198
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    #@9
    .line 199
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    #@c
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroid/view/ViewGroup;

    #@12
    .line 203
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@15
    move-result p2

    #@16
    .line 204
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@19
    move-result p1

    #@1a
    const/4 p3, 0x0

    #@1b
    .line 206
    aget-object v0, p6, p3

    #@1d
    const-string v1, "percentX"

    #@1f
    const/4 v2, 0x1

    #@20
    if-eqz v0, :cond_3a

    #@22
    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result p6

    #@26
    if-eqz p6, :cond_31

    #@28
    int-to-float p2, p2

    #@29
    div-float/2addr p4, p2

    #@2a
    .line 208
    aput p4, p7, p3

    #@2c
    int-to-float p1, p1

    #@2d
    div-float/2addr p5, p1

    #@2e
    .line 209
    aput p5, p7, v2

    #@30
    goto :goto_48

    #@31
    :cond_31
    int-to-float p2, p2

    #@32
    div-float/2addr p4, p2

    #@33
    .line 211
    aput p4, p7, v2

    #@35
    int-to-float p1, p1

    #@36
    div-float/2addr p5, p1

    #@37
    .line 212
    aput p5, p7, p3

    #@39
    goto :goto_48

    #@3a
    .line 215
    :cond_3a
    aput-object v1, p6, p3

    #@3c
    int-to-float p2, p2

    #@3d
    div-float/2addr p4, p2

    #@3e
    .line 216
    aput p4, p7, p3

    #@40
    const-string p2, "percentY"

    #@42
    .line 217
    aput-object p2, p6, v2

    #@44
    int-to-float p1, p1

    #@45
    div-float/2addr p5, p1

    #@46
    .line 218
    aput p5, p7, v2

    #@48
    :goto_48
    return-void
.end method

.method public setType(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    #@0
    .line 85
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@2
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    #@0
    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_90

    #@b
    goto :goto_58

    #@c
    :sswitch_c
    const-string v0, "percentY"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result p1

    #@12
    if-nez p1, :cond_15

    #@14
    goto :goto_58

    #@15
    :cond_15
    const/4 v1, 0x6

    #@16
    goto :goto_58

    #@17
    :sswitch_17
    const-string v0, "percentX"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result p1

    #@1d
    if-nez p1, :cond_20

    #@1f
    goto :goto_58

    #@20
    :cond_20
    const/4 v1, 0x5

    #@21
    goto :goto_58

    #@22
    :sswitch_22
    const-string v0, "sizePercent"

    #@24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result p1

    #@28
    if-nez p1, :cond_2b

    #@2a
    goto :goto_58

    #@2b
    :cond_2b
    const/4 v1, 0x4

    #@2c
    goto :goto_58

    #@2d
    :sswitch_2d
    const-string v0, "drawPath"

    #@2f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result p1

    #@33
    if-nez p1, :cond_36

    #@35
    goto :goto_58

    #@36
    :cond_36
    const/4 v1, 0x3

    #@37
    goto :goto_58

    #@38
    :sswitch_38
    const-string v0, "percentHeight"

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result p1

    #@3e
    if-nez p1, :cond_41

    #@40
    goto :goto_58

    #@41
    :cond_41
    const/4 v1, 0x2

    #@42
    goto :goto_58

    #@43
    :sswitch_43
    const-string v0, "percentWidth"

    #@45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result p1

    #@49
    if-nez p1, :cond_4c

    #@4b
    goto :goto_58

    #@4c
    :cond_4c
    const/4 v1, 0x1

    #@4d
    goto :goto_58

    #@4e
    :sswitch_4e
    const-string v0, "transitionEasing"

    #@50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result p1

    #@54
    if-nez p1, :cond_57

    #@56
    goto :goto_58

    #@57
    :cond_57
    const/4 v1, 0x0

    #@58
    :goto_58
    packed-switch v1, :pswitch_data_ae

    #@5b
    goto :goto_8e

    #@5c
    .line 376
    :pswitch_5c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    #@5f
    move-result p1

    #@60
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@62
    goto :goto_8e

    #@63
    .line 373
    :pswitch_63
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    #@66
    move-result p1

    #@67
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@69
    goto :goto_8e

    #@6a
    .line 370
    :pswitch_6a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    #@6d
    move-result p1

    #@6e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@70
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@72
    goto :goto_8e

    #@73
    .line 361
    :pswitch_73
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toInt(Ljava/lang/Object;)I

    #@76
    move-result p1

    #@77
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@79
    goto :goto_8e

    #@7a
    .line 367
    :pswitch_7a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    #@7d
    move-result p1

    #@7e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@80
    goto :goto_8e

    #@81
    .line 364
    :pswitch_81
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    #@84
    move-result p1

    #@85
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@87
    goto :goto_8e

    #@88
    .line 358
    :pswitch_88
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8b
    move-result-object p1

    #@8c
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@8e
    :goto_8e
    return-void

    #@8f
    nop

    #@90
    :sswitch_data_90
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_4e
        -0x4330437f -> :sswitch_43
        -0x3ca72634 -> :sswitch_38
        -0x314b3c77 -> :sswitch_2d
        -0xbefb6fc -> :sswitch_22
        0x198424b3 -> :sswitch_17
        0x198424b4 -> :sswitch_c
    .end sparse-switch

    #@ae
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_88
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
    .end packed-switch
.end method
