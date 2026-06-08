.class Lcom/google/android/material/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/TransitionUtils$CanvasOperation;,
        Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;
    }
.end annotation


# static fields
.field static final NO_ATTR_RES_ID:I = 0x0

.field static final NO_DURATION:I = -0x1

.field private static final PATH_TYPE_ARC:I = 0x1

.field private static final PATH_TYPE_LINEAR:I

.field private static final transformAlphaRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 316
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static calculateArea(Landroid/graphics/RectF;)F
    .registers 2

    #@0
    .line 313
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    #@7
    move-result p0

    #@8
    mul-float/2addr v0, p0

    #@9
    return v0
.end method

.method static convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    #@0
    .line 124
    new-instance v0, Lcom/google/android/material/transition/TransitionUtils$$ExternalSyntheticLambda0;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/transition/TransitionUtils$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/RectF;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method static createColorShader(I)Landroid/graphics/Shader;
    .registers 10

    #@0
    .line 262
    new-instance v8, Landroid/graphics/LinearGradient;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@8
    move-object v0, v8

    #@9
    move v5, p0

    #@a
    move v6, p0

    #@b
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@e
    return-object v8
.end method

.method static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_3

    #@2
    goto :goto_4

    #@3
    :cond_3
    move-object p0, p1

    #@4
    :goto_4
    return-object p0
.end method

.method static findAncestorById(Landroid/view/View;I)Landroid/view/View;
    .registers 4

    #@0
    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_8
    if-eqz p0, :cond_1c

    #@a
    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    #@d
    move-result v1

    #@e
    if-ne v1, p1, :cond_11

    #@10
    return-object p0

    #@11
    .line 279
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@14
    move-result-object p0

    #@15
    .line 280
    instance-of v1, p0, Landroid/view/View;

    #@17
    if-eqz v1, :cond_1c

    #@19
    .line 281
    check-cast p0, Landroid/view/View;

    #@1b
    goto :goto_8

    #@1c
    .line 286
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance p1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    const-string v0, " is not a valid ancestor"

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p1

    #@31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw p0
.end method

.method static findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;
    .registers 3

    #@0
    .line 266
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 270
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/material/transition/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method static getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 299
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@6
    const/4 v1, 0x0

    #@7
    aget v1, v0, v1

    #@9
    const/4 v2, 0x1

    #@a
    aget v0, v0, v2

    #@c
    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@f
    move-result v2

    #@10
    add-int/2addr v2, v1

    #@11
    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@14
    move-result p0

    #@15
    add-int/2addr p0, v0

    #@16
    .line 304
    new-instance v3, Landroid/graphics/RectF;

    #@18
    int-to-float v1, v1

    #@19
    int-to-float v0, v0

    #@1a
    int-to-float v2, v2

    #@1b
    int-to-float p0, p0

    #@1c
    invoke-direct {v3, v1, v0, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@1f
    return-object v3
.end method

.method static getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;
    .registers 5

    #@0
    .line 290
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@5
    move-result v1

    #@6
    int-to-float v1, v1

    #@7
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    #@a
    move-result v2

    #@b
    int-to-float v2, v2

    #@c
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    #@f
    move-result v3

    #@10
    int-to-float v3, v3

    #@11
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@14
    move-result p0

    #@15
    int-to-float p0, p0

    #@16
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@19
    return-object v0
.end method

.method static getRelativeBoundsRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    #@0
    .line 294
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    #@d
    move-result v3

    #@e
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@11
    move-result p0

    #@12
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@15
    return-object v0
.end method

.method private static isShapeAppearanceSignificant(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Z
    .registers 4

    #@0
    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    cmpl-float v0, v0, v1

    #@b
    if-nez v0, :cond_34

    #@d
    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@14
    move-result v0

    #@15
    cmpl-float v0, v0, v1

    #@17
    if-nez v0, :cond_34

    #@19
    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@20
    move-result v0

    #@21
    cmpl-float v0, v0, v1

    #@23
    if-nez v0, :cond_34

    #@25
    .line 168
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@28
    move-result-object p0

    #@29
    invoke-interface {p0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@2c
    move-result p0

    #@2d
    cmpl-float p0, p0, v1

    #@2f
    if-eqz p0, :cond_32

    #@31
    goto :goto_34

    #@32
    :cond_32
    const/4 p0, 0x0

    #@33
    goto :goto_35

    #@34
    :cond_34
    :goto_34
    const/4 p0, 0x1

    #@35
    :goto_35
    return p0
.end method

.method static synthetic lambda$convertToRelativeCornerSizes$0(Landroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .registers 2

    #@0
    .line 125
    invoke-static {p0, p1}, Lcom/google/android/material/shape/RelativeCornerSize;->createFromCornerSize(Landroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/RelativeCornerSize;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static lerp(FFF)F
    .registers 3

    #@0
    sub-float/2addr p1, p0

    #@1
    mul-float/2addr p2, p1

    #@2
    add-float/2addr p0, p2

    #@3
    return p0
.end method

.method static lerp(FFFFF)F
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    .line 187
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFFZ)F

    #@9
    move-result p0

    #@a
    return p0
.end method

.method static lerp(FFFFFZ)F
    .registers 6

    #@0
    if-eqz p5, :cond_12

    #@2
    const/4 p5, 0x0

    #@3
    cmpg-float p5, p4, p5

    #@5
    if-ltz p5, :cond_d

    #@7
    const/high16 p5, 0x3f800000    # 1.0f

    #@9
    cmpl-float p5, p4, p5

    #@b
    if-lez p5, :cond_12

    #@d
    .line 199
    :cond_d
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    #@10
    move-result p0

    #@11
    return p0

    #@12
    :cond_12
    cmpg-float p5, p4, p2

    #@14
    if-gez p5, :cond_17

    #@16
    return p0

    #@17
    :cond_17
    cmpl-float p5, p4, p3

    #@19
    if-lez p5, :cond_1c

    #@1b
    return p1

    #@1c
    :cond_1c
    sub-float/2addr p4, p2

    #@1d
    sub-float/2addr p3, p2

    #@1e
    div-float/2addr p4, p3

    #@1f
    .line 208
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    #@22
    move-result p0

    #@23
    return p0
.end method

.method static lerp(IIFFF)I
    .registers 6

    #@0
    cmpg-float v0, p4, p2

    #@2
    if-gez v0, :cond_5

    #@4
    return p0

    #@5
    :cond_5
    cmpl-float v0, p4, p3

    #@7
    if-lez v0, :cond_a

    #@9
    return p1

    #@a
    :cond_a
    int-to-float p0, p0

    #@b
    int-to-float p1, p1

    #@c
    sub-float/2addr p4, p2

    #@d
    sub-float/2addr p3, p2

    #@e
    div-float/2addr p4, p3

    #@f
    .line 224
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    #@12
    move-result p0

    #@13
    float-to-int p0, p0

    #@14
    return p0
.end method

.method static lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 14

    #@0
    cmpg-float v0, p6, p4

    #@2
    if-gez v0, :cond_5

    #@4
    return-object p0

    #@5
    :cond_5
    cmpl-float v0, p6, p5

    #@7
    if-lez v0, :cond_a

    #@9
    return-object p1

    #@a
    .line 242
    :cond_a
    new-instance v0, Lcom/google/android/material/transition/TransitionUtils$1;

    #@c
    move-object v1, v0

    #@d
    move-object v2, p2

    #@e
    move-object v3, p3

    #@f
    move v4, p4

    #@10
    move v5, p5

    #@11
    move v6, p6

    #@12
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/TransitionUtils$1;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    #@15
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/transition/TransitionUtils;->transformCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@18
    move-result-object p0

    #@19
    return-object p0
.end method

.method static maybeAddTransition(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 360
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@5
    :cond_5
    return-void
.end method

.method static maybeApplyThemeDuration(Landroidx/transition/Transition;Landroid/content/Context;I)Z
    .registers 7

    #@0
    if-eqz p2, :cond_19

    #@2
    .line 75
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, -0x1

    #@8
    cmp-long v0, v0, v2

    #@a
    if-nez v0, :cond_19

    #@c
    const/4 v0, -0x1

    #@d
    .line 76
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@10
    move-result p1

    #@11
    if-eq p1, v0, :cond_19

    #@13
    int-to-long p1, p1

    #@14
    .line 78
    invoke-virtual {p0, p1, p2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    #@17
    const/4 p0, 0x1

    #@18
    return p0

    #@19
    :cond_19
    const/4 p0, 0x0

    #@1a
    return p0
.end method

.method static maybeApplyThemeInterpolator(Landroidx/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z
    .registers 5

    #@0
    if-eqz p2, :cond_11

    #@2
    .line 64
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_11

    #@8
    .line 66
    invoke-static {p1, p2, p3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@b
    move-result-object p1

    #@c
    .line 67
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    #@f
    const/4 p0, 0x1

    #@10
    return p0

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    return p0
.end method

.method static maybeApplyThemePath(Landroidx/transition/Transition;Landroid/content/Context;I)Z
    .registers 3

    #@0
    if-eqz p2, :cond_d

    #@2
    .line 88
    invoke-static {p1, p2}, Lcom/google/android/material/transition/TransitionUtils;->resolveThemePath(Landroid/content/Context;I)Landroidx/transition/PathMotion;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_d

    #@8
    .line 90
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    #@b
    const/4 p0, 0x1

    #@c
    return p0

    #@d
    :cond_d
    const/4 p0, 0x0

    #@e
    return p0
.end method

.method static maybeRemoveTransition(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 366
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@5
    :cond_5
    return-void
.end method

.method static resolveThemePath(Landroid/content/Context;I)Landroidx/transition/PathMotion;
    .registers 5

    #@0
    .line 99
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8
    move-result-object p0

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@d
    move-result p0

    #@e
    const/4 p1, 0x0

    #@f
    if-eqz p0, :cond_56

    #@11
    .line 101
    iget p0, v0, Landroid/util/TypedValue;->type:I

    #@13
    const/16 v2, 0x10

    #@15
    if-ne p0, v2, :cond_39

    #@17
    .line 102
    iget p0, v0, Landroid/util/TypedValue;->data:I

    #@19
    if-nez p0, :cond_1c

    #@1b
    return-object p1

    #@1c
    :cond_1c
    if-ne p0, v1, :cond_24

    #@1e
    .line 107
    new-instance p0, Lcom/google/android/material/transition/MaterialArcMotion;

    #@20
    invoke-direct {p0}, Lcom/google/android/material/transition/MaterialArcMotion;-><init>()V

    #@23
    return-object p0

    #@24
    .line 109
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    const-string v1, "Invalid motion path type: "

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object p0

    #@31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object p0

    #@35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw p1

    #@39
    .line 111
    :cond_39
    iget p0, v0, Landroid/util/TypedValue;->type:I

    #@3b
    const/4 p1, 0x3

    #@3c
    if-ne p0, p1, :cond_4e

    #@3e
    .line 112
    iget-object p0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@40
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object p0

    #@44
    .line 113
    new-instance p1, Landroidx/transition/PatternPathMotion;

    #@46
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@49
    move-result-object p0

    #@4a
    invoke-direct {p1, p0}, Landroidx/transition/PatternPathMotion;-><init>(Landroid/graphics/Path;)V

    #@4d
    return-object p1

    #@4e
    .line 115
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@50
    const-string p1, "Motion path theme attribute must either be an enum value or path data string"

    #@52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw p0

    #@56
    :cond_56
    return-object p1
.end method

.method private static saveLayerAlphaCompat(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)I
    .registers 4

    #@0
    .line 319
    sget-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@5
    .line 321
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    #@8
    move-result p0

    #@9
    return p0
.end method

.method static transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/TransitionUtils$CanvasOperation;)V
    .registers 8

    #@0
    if-gtz p5, :cond_3

    #@2
    return-void

    #@3
    .line 344
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    #@6
    move-result v0

    #@7
    .line 345
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@a
    .line 346
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    #@d
    const/16 p2, 0xff

    #@f
    if-ge p5, p2, :cond_14

    #@11
    .line 348
    invoke-static {p0, p1, p5}, Lcom/google/android/material/transition/TransitionUtils;->saveLayerAlphaCompat(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)I

    #@14
    .line 350
    :cond_14
    invoke-interface {p6, p0}, Lcom/google/android/material/transition/TransitionUtils$CanvasOperation;->run(Landroid/graphics/Canvas;)V

    #@17
    .line 351
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1a
    return-void
.end method

.method static transformCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 6

    #@0
    .line 139
    invoke-static {p0, p2}, Lcom/google/android/material/transition/TransitionUtils;->isShapeAppearanceSignificant(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Z

    #@3
    move-result p2

    #@4
    if-eqz p2, :cond_8

    #@6
    move-object p2, p0

    #@7
    goto :goto_9

    #@8
    :cond_8
    move-object p2, p1

    #@9
    .line 143
    :goto_9
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@c
    move-result-object p2

    #@d
    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@10
    move-result-object v0

    #@11
    .line 147
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@14
    move-result-object v1

    #@15
    .line 145
    invoke-interface {p3, v0, v1}, Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@18
    move-result-object v0

    #@19
    .line 144
    invoke-virtual {p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@1c
    move-result-object p2

    #@1d
    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@20
    move-result-object v0

    #@21
    .line 151
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@24
    move-result-object v1

    #@25
    .line 149
    invoke-interface {p3, v0, v1}, Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@28
    move-result-object v0

    #@29
    .line 148
    invoke-virtual {p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@2c
    move-result-object p2

    #@2d
    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@30
    move-result-object v0

    #@31
    .line 155
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@34
    move-result-object v1

    #@35
    .line 153
    invoke-interface {p3, v0, v1}, Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@38
    move-result-object v0

    #@39
    .line 152
    invoke-virtual {p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@3c
    move-result-object p2

    #@3d
    .line 158
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@40
    move-result-object p0

    #@41
    .line 159
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@44
    move-result-object p1

    #@45
    .line 157
    invoke-interface {p3, p0, p1}, Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@48
    move-result-object p0

    #@49
    .line 156
    invoke-virtual {p2, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@4c
    move-result-object p0

    #@4d
    .line 160
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@50
    move-result-object p0

    #@51
    return-object p0
.end method
