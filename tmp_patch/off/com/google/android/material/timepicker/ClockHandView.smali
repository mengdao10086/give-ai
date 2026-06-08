.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "ClockHandView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;,
        Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private animatingOnTouchUp:Z

.field private final animationDuration:I

.field private final animationInterpolator:Landroid/animation/TimeInterpolator;

.field private final centerDotRadius:F

.field private changedDuringTouch:Z

.field private circleRadius:I

.field private currentLevel:I

.field private degRad:D

.field private downX:F

.field private downY:F

.field private isInTapRegion:Z

.field private isMultiLevel:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;",
            ">;"
        }
    .end annotation
.end field

.field private onActionUpListener:Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

.field private originalDeg:F

.field private final paint:Landroid/graphics/Paint;

.field private final rotationAnimator:Landroid/animation/ValueAnimator;

.field private final scaledTouchSlop:I

.field private final selectorBox:Landroid/graphics/RectF;

.field private final selectorRadius:I

.field private final selectorStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 100
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 104
    sget v0, Lcom/google/android/material/R$attr;->materialClockStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    #@0
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 60
    new-instance v0, Landroid/animation/ValueAnimator;

    #@5
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@a
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    #@11
    .line 82
    new-instance v0, Landroid/graphics/Paint;

    #@13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    #@18
    .line 85
    new-instance v1, Landroid/graphics/RectF;

    #@1a
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    #@1f
    const/4 v1, 0x1

    #@20
    .line 97
    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    #@22
    .line 109
    sget-object v2, Lcom/google/android/material/R$styleable;->ClockHandView:[I

    #@24
    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker_Clock:I

    #@26
    .line 110
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@29
    move-result-object p2

    #@2a
    .line 116
    sget p3, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    #@2c
    const/16 v2, 0xc8

    #@2e
    .line 117
    invoke-static {p1, p3, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@31
    move-result p3

    #@32
    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationDuration:I

    #@34
    .line 119
    sget p3, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@36
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@38
    .line 120
    invoke-static {p1, p3, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@3b
    move-result-object p3

    #@3c
    iput-object p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationInterpolator:Landroid/animation/TimeInterpolator;

    #@3e
    .line 124
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_materialCircleRadius:I

    #@40
    const/4 v2, 0x0

    #@41
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@44
    move-result p3

    #@45
    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    #@47
    .line 125
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_selectorSize:I

    #@49
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4c
    move-result p3

    #@4d
    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    #@4f
    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getResources()Landroid/content/res/Resources;

    #@52
    move-result-object p3

    #@53
    .line 127
    sget v3, Lcom/google/android/material/R$dimen;->material_clock_hand_stroke_width:I

    #@55
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@58
    move-result v3

    #@59
    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorStrokeWidth:I

    #@5b
    .line 128
    sget v3, Lcom/google/android/material/R$dimen;->material_clock_hand_center_dot_radius:I

    #@5d
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@60
    move-result p3

    #@61
    int-to-float p3, p3

    #@62
    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->centerDotRadius:F

    #@64
    .line 129
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_clockHandColor:I

    #@66
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@69
    move-result p3

    #@6a
    .line 130
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@6d
    .line 131
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    #@70
    const/4 p3, 0x0

    #@71
    .line 132
    invoke-virtual {p0, p3}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    #@74
    .line 134
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@77
    move-result-object p1

    #@78
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@7b
    move-result p1

    #@7c
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->scaledTouchSlop:I

    #@7e
    const/4 p1, 0x2

    #@7f
    .line 135
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@82
    .line 136
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@85
    return-void
.end method

.method private adjustLevel(FF)V
    .registers 6

    #@0
    .line 344
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    div-int/2addr v0, v1

    #@6
    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    #@9
    move-result v2

    #@a
    div-int/2addr v2, v1

    #@b
    int-to-float v0, v0

    #@c
    int-to-float v2, v2

    #@d
    .line 346
    invoke-static {v0, v2, p1, p2}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    #@10
    move-result p1

    #@11
    .line 347
    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    #@14
    move-result p2

    #@15
    .line 348
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getContext()Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    const/16 v2, 0xc

    #@1b
    invoke-static {v0, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@1e
    move-result v0

    #@1f
    int-to-float p2, p2

    #@20
    add-float/2addr p2, v0

    #@21
    cmpg-float p1, p1, p2

    #@23
    if-gtz p1, :cond_26

    #@25
    goto :goto_27

    #@26
    :cond_26
    const/4 v1, 0x1

    #@27
    .line 349
    :goto_27
    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    #@29
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 13

    #@0
    .line 252
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    .line 253
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    #@9
    move-result v1

    #@a
    div-int/lit8 v1, v1, 0x2

    #@c
    .line 256
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    #@e
    invoke-direct {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    #@11
    move-result v2

    #@12
    int-to-float v9, v1

    #@13
    int-to-float v3, v2

    #@14
    .line 257
    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    #@16
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@19
    move-result-wide v4

    #@1a
    double-to-float v4, v4

    #@1b
    mul-float/2addr v4, v3

    #@1c
    add-float/2addr v4, v9

    #@1d
    int-to-float v10, v0

    #@1e
    .line 258
    iget-wide v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    #@20
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    #@23
    move-result-wide v5

    #@24
    double-to-float v5, v5

    #@25
    mul-float/2addr v3, v5

    #@26
    add-float/2addr v3, v10

    #@27
    .line 261
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    #@29
    const/4 v6, 0x0

    #@2a
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@2d
    .line 262
    iget v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    #@2f
    int-to-float v5, v5

    #@30
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    #@32
    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@35
    .line 266
    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    #@37
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    #@3a
    move-result-wide v3

    #@3b
    .line 267
    iget-wide v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    #@3d
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    #@40
    move-result-wide v5

    #@41
    .line 268
    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    #@43
    sub-int/2addr v2, v7

    #@44
    int-to-float v2, v2

    #@45
    float-to-double v7, v2

    #@46
    mul-double/2addr v5, v7

    #@47
    double-to-int v2, v5

    #@48
    add-int/2addr v1, v2

    #@49
    int-to-float v6, v1

    #@4a
    mul-double/2addr v7, v3

    #@4b
    double-to-int v1, v7

    #@4c
    add-int/2addr v0, v1

    #@4d
    int-to-float v7, v0

    #@4e
    .line 273
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    #@50
    iget v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorStrokeWidth:I

    #@52
    int-to-float v1, v1

    #@53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@56
    .line 274
    iget-object v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    #@58
    move-object v3, p1

    #@59
    move v4, v9

    #@5a
    move v5, v10

    #@5b
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@5e
    .line 275
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->centerDotRadius:F

    #@60
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    #@62
    invoke-virtual {p1, v9, v10, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@65
    return-void
.end method

.method private getDegreesFromXY(FF)I
    .registers 7

    #@0
    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    .line 370
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    #@9
    move-result v1

    #@a
    div-int/lit8 v1, v1, 0x2

    #@c
    int-to-float v0, v0

    #@d
    sub-float/2addr p1, v0

    #@e
    float-to-double v2, p1

    #@f
    int-to-float p1, v1

    #@10
    sub-float/2addr p2, p1

    #@11
    float-to-double p1, p2

    #@12
    .line 373
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@15
    move-result-wide p1

    #@16
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    #@19
    move-result-wide p1

    #@1a
    double-to-int p1, p1

    #@1b
    add-int/lit8 p1, p1, 0x5a

    #@1d
    if-gez p1, :cond_21

    #@1f
    add-int/lit16 p1, p1, 0x168

    #@21
    :cond_21
    return p1
.end method

.method private getLeveledCircleRadius(I)I
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_f

    #@3
    .line 400
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    #@5
    int-to-float p1, p1

    #@6
    const v0, 0x3f28f5c3    # 0.66f

    #@9
    mul-float/2addr p1, v0

    #@a
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@d
    move-result p1

    #@e
    goto :goto_11

    #@f
    :cond_f
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    #@11
    :goto_11
    return p1
.end method

.method private getValuesForAnimation(F)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    #@0
    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    #@3
    move-result v0

    #@4
    sub-float v1, v0, p1

    #@6
    .line 188
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@9
    move-result v1

    #@a
    const/high16 v2, 0x43340000    # 180.0f

    #@c
    cmpl-float v1, v1, v2

    #@e
    if-lez v1, :cond_24

    #@10
    cmpl-float v1, v0, v2

    #@12
    const/high16 v3, 0x43b40000    # 360.0f

    #@14
    if-lez v1, :cond_1b

    #@16
    cmpg-float v1, p1, v2

    #@18
    if-gez v1, :cond_1b

    #@1a
    add-float/2addr p1, v3

    #@1b
    :cond_1b
    cmpg-float v1, v0, v2

    #@1d
    if-gez v1, :cond_24

    #@1f
    cmpl-float v1, p1, v2

    #@21
    if-lez v1, :cond_24

    #@23
    add-float/2addr v0, v3

    #@24
    .line 198
    :cond_24
    new-instance v1, Landroid/util/Pair;

    #@26
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@29
    move-result-object v0

    #@2a
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2d
    move-result-object p1

    #@2e
    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@31
    return-object v1
.end method

.method private handleTouchInput(FFZZZ)Z
    .registers 8

    #@0
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->getDegreesFromXY(FF)I

    #@3
    move-result p1

    #@4
    .line 355
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    #@7
    move-result p2

    #@8
    int-to-float p1, p1

    #@9
    cmpl-float p2, p2, p1

    #@b
    const/4 v0, 0x0

    #@c
    const/4 v1, 0x1

    #@d
    if-eqz p2, :cond_11

    #@f
    move p2, v1

    #@10
    goto :goto_12

    #@11
    :cond_11
    move p2, v0

    #@12
    :goto_12
    if-eqz p4, :cond_17

    #@14
    if-eqz p2, :cond_17

    #@16
    return v1

    #@17
    :cond_17
    if-nez p2, :cond_1d

    #@19
    if-eqz p3, :cond_1c

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    return v0

    #@1d
    :cond_1d
    :goto_1d
    if-eqz p5, :cond_24

    #@1f
    .line 361
    iget-boolean p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->animatingOnTouchUp:Z

    #@21
    if-eqz p2, :cond_24

    #@23
    move v0, v1

    #@24
    :cond_24
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    #@27
    return v1
.end method

.method private setHandRotationInternal(FZ)V
    .registers 10

    #@0
    const/high16 v0, 0x43b40000    # 360.0f

    #@2
    rem-float/2addr p1, v0

    #@3
    .line 204
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    #@5
    const/high16 v0, 0x42b40000    # 90.0f

    #@7
    sub-float v0, p1, v0

    #@9
    float-to-double v0, v0

    #@a
    .line 208
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    #@10
    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    #@13
    move-result v0

    #@14
    div-int/lit8 v0, v0, 0x2

    #@16
    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    #@19
    move-result v1

    #@1a
    div-int/lit8 v1, v1, 0x2

    #@1c
    .line 211
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    #@1e
    invoke-direct {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    #@21
    move-result v2

    #@22
    int-to-float v1, v1

    #@23
    int-to-float v2, v2

    #@24
    .line 212
    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    #@26
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    #@29
    move-result-wide v3

    #@2a
    double-to-float v3, v3

    #@2b
    mul-float/2addr v3, v2

    #@2c
    add-float/2addr v1, v3

    #@2d
    int-to-float v0, v0

    #@2e
    .line 213
    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    #@30
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    #@33
    move-result-wide v3

    #@34
    double-to-float v3, v3

    #@35
    mul-float/2addr v2, v3

    #@36
    add-float/2addr v0, v2

    #@37
    .line 214
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    #@39
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    #@3b
    int-to-float v4, v3

    #@3c
    sub-float v4, v1, v4

    #@3e
    int-to-float v5, v3

    #@3f
    sub-float v5, v0, v5

    #@41
    int-to-float v6, v3

    #@42
    add-float/2addr v1, v6

    #@43
    int-to-float v3, v3

    #@44
    add-float/2addr v0, v3

    #@45
    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    #@48
    .line 220
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    #@4a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v0

    #@4e
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_5e

    #@54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    #@5a
    .line 221
    invoke-interface {v1, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;->onRotate(FZ)V

    #@5d
    goto :goto_4e

    #@5e
    .line 224
    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    #@61
    return-void
.end method


# virtual methods
.method public addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V
    .registers 3

    #@0
    .line 232
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method getCurrentLevel()I
    .registers 2

    #@0
    .line 382
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    #@2
    return v0
.end method

.method public getCurrentSelectorBox()Landroid/graphics/RectF;
    .registers 2

    #@0
    .line 280
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    #@2
    return-object v0
.end method

.method public getHandRotation()F
    .registers 2

    #@0
    .line 241
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    #@2
    return v0
.end method

.method public getSelectorRadius()I
    .registers 2

    #@0
    .line 285
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    #@2
    return v0
.end method

.method synthetic lambda$setHandRotation$0$com-google-android-material-timepicker-ClockHandView(Landroid/animation/ValueAnimator;)V
    .registers 3

    #@0
    .line 168
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Ljava/lang/Float;

    #@6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p1

    #@a
    const/4 v0, 0x1

    #@b
    .line 169
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotationInternal(FZ)V

    #@e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 246
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 248
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->drawSelector(Landroid/graphics/Canvas;)V

    #@6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 141
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    #@3
    .line 142
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@8
    move-result p1

    #@9
    if-nez p1, :cond_12

    #@b
    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    #@e
    move-result p1

    #@f
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    #@12
    :cond_12
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    #@0
    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@7
    move-result v7

    #@8
    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@b
    move-result p1

    #@c
    const/4 v8, 0x1

    #@d
    const/4 v1, 0x0

    #@e
    if-eqz v0, :cond_40

    #@10
    if-eq v0, v8, :cond_19

    #@12
    const/4 v2, 0x2

    #@13
    if-eq v0, v2, :cond_19

    #@15
    move v0, v1

    #@16
    move v4, v0

    #@17
    move v5, v4

    #@18
    goto :goto_4b

    #@19
    .line 317
    :cond_19
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->downX:F

    #@1b
    sub-float v2, v7, v2

    #@1d
    float-to-int v2, v2

    #@1e
    .line 318
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->downY:F

    #@20
    sub-float v3, p1, v3

    #@22
    float-to-int v3, v3

    #@23
    mul-int/2addr v2, v2

    #@24
    mul-int/2addr v3, v3

    #@25
    add-int/2addr v2, v3

    #@26
    .line 320
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->scaledTouchSlop:I

    #@28
    if-le v2, v3, :cond_2c

    #@2a
    move v2, v8

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v2, v1

    #@2d
    :goto_2d
    iput-boolean v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->isInTapRegion:Z

    #@2f
    .line 323
    iget-boolean v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    #@31
    if-ne v0, v8, :cond_35

    #@33
    move v0, v8

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v0, v1

    #@36
    .line 327
    :goto_36
    iget-boolean v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    #@38
    if-eqz v3, :cond_3d

    #@3a
    .line 328
    invoke-direct {p0, v7, p1}, Lcom/google/android/material/timepicker/ClockHandView;->adjustLevel(FF)V

    #@3d
    :cond_3d
    move v5, v1

    #@3e
    move v4, v2

    #@3f
    goto :goto_4b

    #@40
    .line 308
    :cond_40
    iput v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->downX:F

    #@42
    .line 309
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->downY:F

    #@44
    .line 310
    iput-boolean v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->isInTapRegion:Z

    #@46
    .line 312
    iput-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    #@48
    move v0, v1

    #@49
    move v4, v0

    #@4a
    move v5, v8

    #@4b
    .line 335
    :goto_4b
    iget-boolean v9, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    #@4d
    move-object v1, p0

    #@4e
    move v2, v7

    #@4f
    move v3, p1

    #@50
    move v6, v0

    #@51
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/timepicker/ClockHandView;->handleTouchInput(FFZZZ)Z

    #@54
    move-result v1

    #@55
    or-int/2addr v1, v9

    #@56
    iput-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    #@58
    if-eqz v1, :cond_6a

    #@5a
    if-eqz v0, :cond_6a

    #@5c
    .line 336
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->onActionUpListener:Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    #@5e
    if-eqz v0, :cond_6a

    #@60
    .line 337
    invoke-direct {p0, v7, p1}, Lcom/google/android/material/timepicker/ClockHandView;->getDegreesFromXY(FF)I

    #@63
    move-result p1

    #@64
    int-to-float p1, p1

    #@65
    iget-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->isInTapRegion:Z

    #@67
    invoke-interface {v0, p1, v1}, Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;->onActionUp(FZ)V

    #@6a
    :cond_6a
    return v8
.end method

.method public setAnimateOnTouchUp(Z)V
    .registers 2

    #@0
    .line 228
    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->animatingOnTouchUp:Z

    #@2
    return-void
.end method

.method public setCircleRadius(I)V
    .registers 2

    #@0
    .line 293
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    #@2
    .line 294
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    #@5
    return-void
.end method

.method setCurrentLevel(I)V
    .registers 2

    #@0
    .line 386
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    #@2
    .line 387
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    #@5
    return-void
.end method

.method public setHandRotation(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    #@4
    return-void
.end method

.method public setHandRotation(FZ)V
    .registers 6

    #@0
    .line 153
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    if-nez p2, :cond_e

    #@a
    .line 158
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotationInternal(FZ)V

    #@d
    return-void

    #@e
    .line 162
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->getValuesForAnimation(F)Landroid/util/Pair;

    #@11
    move-result-object p1

    #@12
    .line 163
    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@14
    const/4 v1, 0x2

    #@15
    new-array v1, v1, [F

    #@17
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@19
    check-cast v2, Ljava/lang/Float;

    #@1b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@1e
    move-result v2

    #@1f
    aput v2, v1, v0

    #@21
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@23
    check-cast p1, Ljava/lang/Float;

    #@25
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@28
    move-result p1

    #@29
    const/4 v0, 0x1

    #@2a
    aput p1, v1, v0

    #@2c
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@2f
    .line 164
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@31
    iget p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationDuration:I

    #@33
    int-to-long v0, p2

    #@34
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@37
    .line 165
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@39
    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationInterpolator:Landroid/animation/TimeInterpolator;

    #@3b
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@3e
    .line 166
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@40
    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$$ExternalSyntheticLambda0;

    #@42
    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    #@45
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@48
    .line 172
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@4a
    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$1;

    #@4c
    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$1;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    #@4f
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@52
    .line 179
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    #@54
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@57
    return-void
.end method

.method setMultiLevel(Z)V
    .registers 3

    #@0
    .line 391
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    if-nez p1, :cond_9

    #@6
    const/4 v0, 0x1

    #@7
    .line 392
    iput v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    #@9
    .line 394
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    #@b
    .line 395
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    #@e
    return-void
.end method

.method public setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V
    .registers 2

    #@0
    .line 236
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->onActionUpListener:Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    #@2
    return-void
.end method
