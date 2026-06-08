.class public Landroidx/transition/ChangeImageTransform;
.super Landroidx/transition/Transition;
.source "ChangeImageTransform.java"


# static fields
.field private static final ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const-string v0, "android:changeImageTransform:matrix"

    #@2
    const-string v1, "android:changeImageTransform:bounds"

    #@4
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    #@a
    .line 54
    new-instance v0, Landroidx/transition/ChangeImageTransform$1;

    #@c
    invoke-direct {v0}, Landroidx/transition/ChangeImageTransform$1;-><init>()V

    #@f
    sput-object v0, Landroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    #@11
    .line 61
    new-instance v0, Landroidx/transition/ChangeImageTransform$2;

    #@13
    const-class v1, Landroid/graphics/Matrix;

    #@15
    const-string v2, "animatedTransform"

    #@17
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@1a
    sput-object v0, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    #@1c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 74
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 78
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 8

    #@0
    .line 82
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 83
    instance-of v1, v0, Landroid/widget/ImageView;

    #@4
    if-eqz v1, :cond_3c

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_d

    #@c
    goto :goto_3c

    #@d
    .line 86
    :cond_d
    move-object v1, v0

    #@e
    check-cast v1, Landroid/widget/ImageView;

    #@10
    .line 87
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v2

    #@14
    if-nez v2, :cond_17

    #@16
    return-void

    #@17
    .line 91
    :cond_17
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@19
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@1c
    move-result v2

    #@1d
    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@20
    move-result v3

    #@21
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@24
    move-result v4

    #@25
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@28
    move-result v0

    #@29
    .line 98
    new-instance v5, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2e
    const-string v0, "android:changeImageTransform:bounds"

    #@30
    .line 99
    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    const-string v0, "android:changeImageTransform:matrix"

    #@35
    .line 100
    invoke-static {v1}, Landroidx/transition/ChangeImageTransform;->copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    #@38
    move-result-object v1

    #@39
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    :cond_3c
    :goto_3c
    return-void
.end method

.method private static centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .registers 6

    #@0
    .line 216
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 217
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v1

    #@8
    .line 218
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    #@b
    move-result v2

    #@c
    int-to-float v2, v2

    #@d
    int-to-float v1, v1

    #@e
    div-float v3, v2, v1

    #@10
    .line 221
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@13
    move-result v0

    #@14
    .line 222
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    #@17
    move-result p0

    #@18
    int-to-float p0, p0

    #@19
    int-to-float v0, v0

    #@1a
    div-float v4, p0, v0

    #@1c
    .line 225
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    #@1f
    move-result v3

    #@20
    mul-float/2addr v1, v3

    #@21
    mul-float/2addr v0, v3

    #@22
    sub-float/2addr v2, v1

    #@23
    const/high16 v1, 0x40000000    # 2.0f

    #@25
    div-float/2addr v2, v1

    #@26
    .line 229
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@29
    move-result v2

    #@2a
    sub-float/2addr p0, v0

    #@2b
    div-float/2addr p0, v1

    #@2c
    .line 230
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@2f
    move-result p0

    #@30
    .line 232
    new-instance v0, Landroid/graphics/Matrix;

    #@32
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@35
    .line 233
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@38
    int-to-float v1, v2

    #@39
    int-to-float p0, p0

    #@3a
    .line 234
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@3d
    return-object v0
.end method

.method private static copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .registers 3

    #@0
    .line 186
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 187
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_2d

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_2d

    #@10
    .line 188
    sget-object v0, Landroidx/transition/ChangeImageTransform$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    #@12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    #@19
    move-result v1

    #@1a
    aget v0, v0, v1

    #@1c
    const/4 v1, 0x1

    #@1d
    if-eq v0, v1, :cond_28

    #@1f
    const/4 v1, 0x2

    #@20
    if-eq v0, v1, :cond_23

    #@22
    goto :goto_2d

    #@23
    .line 192
    :cond_23
    invoke-static {p0}, Landroidx/transition/ChangeImageTransform;->centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    #@26
    move-result-object p0

    #@27
    return-object p0

    #@28
    .line 190
    :cond_28
    invoke-static {p0}, Landroidx/transition/ChangeImageTransform;->fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    #@2b
    move-result-object p0

    #@2c
    return-object p0

    #@2d
    .line 195
    :cond_2d
    :goto_2d
    new-instance v0, Landroid/graphics/Matrix;

    #@2f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    #@32
    move-result-object p0

    #@33
    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@36
    return-object v0
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .registers 8

    #@0
    .line 180
    sget-object v0, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    #@2
    new-instance v1, Landroidx/transition/TransitionUtils$MatrixEvaluator;

    #@4
    invoke-direct {v1}, Landroidx/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    #@7
    const/4 v2, 0x2

    #@8
    new-array v2, v2, [Landroid/graphics/Matrix;

    #@a
    const/4 v3, 0x0

    #@b
    aput-object p2, v2, v3

    #@d
    const/4 p2, 0x1

    #@e
    aput-object p3, v2, p2

    #@10
    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@13
    move-result-object p1

    #@14
    return-object p1
.end method

.method private createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .registers 7

    #@0
    .line 174
    sget-object v0, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    #@2
    sget-object v1, Landroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    #@4
    const/4 v2, 0x2

    #@5
    new-array v2, v2, [Landroid/graphics/Matrix;

    #@7
    const/4 v3, 0x0

    #@8
    sget-object v4, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@a
    aput-object v4, v2, v3

    #@c
    const/4 v3, 0x1

    #@d
    sget-object v4, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@f
    aput-object v4, v2, v3

    #@11
    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@14
    move-result-object p1

    #@15
    return-object p1
.end method

.method private static fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .registers 5

    #@0
    .line 203
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 204
    new-instance v1, Landroid/graphics/Matrix;

    #@6
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@9
    .line 206
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    #@c
    move-result v2

    #@d
    int-to-float v2, v2

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@11
    move-result v3

    #@12
    int-to-float v3, v3

    #@13
    div-float/2addr v2, v3

    #@14
    .line 207
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    #@17
    move-result p0

    #@18
    int-to-float p0, p0

    #@19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1c
    move-result v0

    #@1d
    int-to-float v0, v0

    #@1e
    div-float/2addr p0, v0

    #@1f
    .line 205
    invoke-virtual {v1, v2, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@22
    return-object v1
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 110
    invoke-direct {p0, p1}, Landroidx/transition/ChangeImageTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 105
    invoke-direct {p0, p1}, Landroidx/transition/ChangeImageTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 8

    #@0
    const/4 p1, 0x0

    #@1
    if-eqz p2, :cond_73

    #@3
    if-nez p3, :cond_7

    #@5
    goto/16 :goto_73

    #@7
    .line 134
    :cond_7
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@9
    const-string v1, "android:changeImageTransform:bounds"

    #@b
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/graphics/Rect;

    #@11
    .line 135
    iget-object v2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@13
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/graphics/Rect;

    #@19
    if-eqz v0, :cond_73

    #@1b
    if-nez v1, :cond_1e

    #@1d
    goto :goto_73

    #@1e
    .line 140
    :cond_1e
    iget-object p2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@20
    const-string v2, "android:changeImageTransform:matrix"

    #@22
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object p2

    #@26
    check-cast p2, Landroid/graphics/Matrix;

    #@28
    .line 141
    iget-object v3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@2a
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/graphics/Matrix;

    #@30
    if-nez p2, :cond_34

    #@32
    if-eqz v2, :cond_3c

    #@34
    :cond_34
    if-eqz p2, :cond_3e

    #@36
    .line 144
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_3e

    #@3c
    :cond_3c
    const/4 v3, 0x1

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    const/4 v3, 0x0

    #@3f
    .line 146
    :goto_3f
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_48

    #@45
    if-eqz v3, :cond_48

    #@47
    return-object p1

    #@48
    .line 150
    :cond_48
    iget-object p1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@4a
    check-cast p1, Landroid/widget/ImageView;

    #@4c
    .line 151
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@4f
    move-result-object p3

    #@50
    .line 152
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@53
    move-result v0

    #@54
    .line 153
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@57
    move-result p3

    #@58
    if-lez v0, :cond_6f

    #@5a
    if-gtz p3, :cond_5d

    #@5c
    goto :goto_6f

    #@5d
    :cond_5d
    if-nez p2, :cond_61

    #@5f
    .line 160
    sget-object p2, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@61
    :cond_61
    if-nez v2, :cond_65

    #@63
    .line 163
    sget-object v2, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@65
    .line 165
    :cond_65
    sget-object p3, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    #@67
    invoke-virtual {p3, p1, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@6a
    .line 166
    invoke-direct {p0, p1, p2, v2}, Landroidx/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    #@6d
    move-result-object p1

    #@6e
    goto :goto_73

    #@6f
    .line 157
    :cond_6f
    :goto_6f
    invoke-direct {p0, p1}, Landroidx/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    #@72
    move-result-object p1

    #@73
    :cond_73
    :goto_73
    return-object p1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    #@0
    .line 115
    sget-object v0, Landroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method
