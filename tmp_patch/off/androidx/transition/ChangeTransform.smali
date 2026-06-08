.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$GhostListener;,
        Landroidx/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const-string v0, "android:changeTransform:transforms"

    #@2
    const-string v1, "android:changeTransform:parentMatrix"

    #@4
    const-string v2, "android:changeTransform:matrix"

    #@6
    .line 60
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    #@c
    .line 69
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    #@e
    const-class v1, [F

    #@10
    const-string v2, "nonTranslations"

    #@12
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@15
    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    #@17
    .line 85
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    #@19
    const-class v1, Landroid/graphics/PointF;

    #@1b
    const-string v2, "translations"

    #@1d
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@20
    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    #@22
    const/4 v0, 0x1

    #@23
    .line 101
    sput-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    #@25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 108
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 103
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    #@6
    .line 105
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    #@8
    .line 106
    new-instance v0, Landroid/graphics/Matrix;

    #@a
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@d
    iput-object v0, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    .line 114
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x1

    #@4
    .line 103
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    #@6
    .line 105
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    #@8
    .line 106
    new-instance v1, Landroid/graphics/Matrix;

    #@a
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@d
    iput-object v1, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    #@f
    .line 115
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    #@11
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@14
    move-result-object p1

    #@15
    .line 116
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    #@17
    const-string v1, "reparentWithOverlay"

    #@19
    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    #@1c
    move-result v1

    #@1d
    iput-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    #@1f
    const-string v1, "reparent"

    #@21
    const/4 v2, 0x0

    #@22
    .line 118
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    #@25
    move-result p2

    #@26
    iput-boolean p2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    #@28
    .line 120
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@2b
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 6

    #@0
    .line 197
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@5
    move-result v1

    #@6
    const/16 v2, 0x8

    #@8
    if-ne v1, v2, :cond_b

    #@a
    return-void

    #@b
    .line 201
    :cond_b
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@d
    const-string v2, "android:changeTransform:parent"

    #@f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 202
    new-instance v1, Landroidx/transition/ChangeTransform$Transforms;

    #@18
    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    #@1b
    .line 203
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1d
    const-string v3, "android:changeTransform:transforms"

    #@1f
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@25
    move-result-object v1

    #@26
    if-eqz v1, :cond_35

    #@28
    .line 205
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2f

    #@2e
    goto :goto_35

    #@2f
    .line 208
    :cond_2f
    new-instance v2, Landroid/graphics/Matrix;

    #@31
    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@34
    goto :goto_36

    #@35
    :cond_35
    :goto_35
    const/4 v2, 0x0

    #@36
    .line 210
    :goto_36
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@38
    const-string v3, "android:changeTransform:matrix"

    #@3a
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 211
    iget-boolean v1, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    #@3f
    if-eqz v1, :cond_7f

    #@41
    .line 212
    new-instance v1, Landroid/graphics/Matrix;

    #@43
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@46
    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Landroid/view/ViewGroup;

    #@4c
    .line 214
    invoke-static {v2, v1}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@4f
    .line 215
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    #@52
    move-result v3

    #@53
    neg-int v3, v3

    #@54
    int-to-float v3, v3

    #@55
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    #@58
    move-result v2

    #@59
    neg-int v2, v2

    #@5a
    int-to-float v2, v2

    #@5b
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@5e
    .line 216
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@60
    const-string v3, "android:changeTransform:parentMatrix"

    #@62
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 217
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@67
    sget v2, Landroidx/transition/R$id;->transition_transform:I

    #@69
    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@6c
    move-result-object v2

    #@6d
    const-string v3, "android:changeTransform:intermediateMatrix"

    #@6f
    .line 217
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    .line 219
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@74
    sget v1, Landroidx/transition/R$id;->parent_matrix:I

    #@76
    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@79
    move-result-object v0

    #@7a
    const-string v1, "android:changeTransform:intermediateParentMatrix"

    #@7c
    .line 219
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    :cond_7f
    return-void
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .registers 7

    #@0
    .line 388
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 390
    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@4
    const-string v2, "android:changeTransform:parentMatrix"

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/graphics/Matrix;

    #@c
    .line 391
    new-instance v2, Landroid/graphics/Matrix;

    #@e
    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@11
    .line 392
    invoke-static {p1, v2}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@14
    .line 394
    invoke-static {v0, p1, v2}, Landroidx/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;

    #@17
    move-result-object p1

    #@18
    if-nez p1, :cond_1b

    #@1a
    return-void

    #@1b
    .line 399
    :cond_1b
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1d
    const-string v2, "android:changeTransform:parent"

    #@1f
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/view/ViewGroup;

    #@25
    iget-object v2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@27
    invoke-interface {p1, v1, v2}, Landroidx/transition/GhostView;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@2a
    move-object v1, p0

    #@2b
    .line 403
    :goto_2b
    iget-object v2, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    #@2d
    if-eqz v2, :cond_32

    #@2f
    .line 404
    iget-object v1, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    #@31
    goto :goto_2b

    #@32
    .line 407
    :cond_32
    new-instance v2, Landroidx/transition/ChangeTransform$GhostListener;

    #@34
    invoke-direct {v2, v0, p1}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostView;)V

    #@37
    .line 408
    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@3a
    .line 412
    sget-boolean p1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    #@3c
    if-eqz p1, :cond_4f

    #@3e
    .line 413
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@40
    iget-object p3, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@42
    if-eq p1, p3, :cond_4a

    #@44
    .line 414
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@46
    const/4 p2, 0x0

    #@47
    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    #@4a
    :cond_4a
    const/high16 p1, 0x3f800000    # 1.0f

    #@4c
    .line 416
    invoke-static {v0, p1}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    #@4f
    :cond_4f
    return-void
.end method

.method private createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .registers 16

    #@0
    .line 286
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    const-string v0, "android:changeTransform:matrix"

    #@4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    check-cast p1, Landroid/graphics/Matrix;

    #@a
    .line 287
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@c
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/graphics/Matrix;

    #@12
    if-nez p1, :cond_16

    #@14
    .line 290
    sget-object p1, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@16
    :cond_16
    if-nez v0, :cond_1a

    #@18
    .line 294
    sget-object v0, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@1a
    :cond_1a
    move-object v4, v0

    #@1b
    .line 297
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_23

    #@21
    const/4 p1, 0x0

    #@22
    return-object p1

    #@23
    .line 301
    :cond_23
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@25
    const-string v1, "android:changeTransform:transforms"

    #@27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    move-object v6, v0

    #@2c
    check-cast v6, Landroidx/transition/ChangeTransform$Transforms;

    #@2e
    .line 304
    iget-object v5, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@30
    .line 305
    invoke-static {v5}, Landroidx/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    #@33
    const/16 p2, 0x9

    #@35
    new-array v0, p2, [F

    #@37
    .line 308
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    #@3a
    new-array p1, p2, [F

    #@3c
    .line 310
    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->getValues([F)V

    #@3f
    .line 311
    new-instance v7, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    #@41
    invoke-direct {v7, v5, v0}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    #@44
    .line 314
    sget-object v1, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    #@46
    new-instance v2, Landroidx/transition/FloatArrayEvaluator;

    #@48
    new-array p2, p2, [F

    #@4a
    invoke-direct {v2, p2}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    #@4d
    const/4 p2, 0x2

    #@4e
    new-array v3, p2, [[F

    #@50
    const/4 v8, 0x0

    #@51
    aput-object v0, v3, v8

    #@53
    const/4 v9, 0x1

    #@54
    aput-object p1, v3, v9

    #@56
    invoke-static {v1, v2, v3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@59
    move-result-object v1

    #@5a
    .line 317
    invoke-virtual {p0}, Landroidx/transition/ChangeTransform;->getPathMotion()Landroidx/transition/PathMotion;

    #@5d
    move-result-object v2

    #@5e
    aget v3, v0, p2

    #@60
    const/4 v10, 0x5

    #@61
    aget v0, v0, v10

    #@63
    aget v11, p1, p2

    #@65
    aget p1, p1, v10

    #@67
    invoke-virtual {v2, v3, v0, v11, p1}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@6a
    move-result-object p1

    #@6b
    .line 320
    sget-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    #@6d
    invoke-static {v0, p1}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@70
    move-result-object p1

    #@71
    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    #@73
    aput-object v1, p2, v8

    #@75
    aput-object p1, p2, v9

    #@77
    .line 322
    invoke-static {v7, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@7a
    move-result-object p1

    #@7b
    .line 327
    new-instance p2, Landroidx/transition/ChangeTransform$3;

    #@7d
    move-object v1, p2

    #@7e
    move-object v2, p0

    #@7f
    move v3, p3

    #@80
    invoke-direct/range {v1 .. v7}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    #@83
    .line 368
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@86
    .line 369
    invoke-static {p1, p2}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    #@89
    return-object p1
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .registers 6

    #@0
    .line 375
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v0, :cond_1a

    #@8
    invoke-virtual {p0, p2}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_1a

    #@f
    .line 378
    :cond_f
    invoke-virtual {p0, p1, v1}, Landroidx/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@12
    move-result-object p1

    #@13
    if-eqz p1, :cond_1f

    #@15
    .line 380
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@17
    if-ne p2, p1, :cond_1d

    #@19
    goto :goto_1e

    #@1a
    :cond_1a
    :goto_1a
    if-ne p1, p2, :cond_1d

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move v1, v2

    #@1e
    :goto_1e
    move v2, v1

    #@1f
    :cond_1f
    return v2
.end method

.method static setIdentityTransforms(Landroid/view/View;)V
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/high16 v4, 0x3f800000    # 1.0f

    #@5
    const/high16 v5, 0x3f800000    # 1.0f

    #@7
    const/4 v6, 0x0

    #@8
    const/4 v7, 0x0

    #@9
    const/4 v8, 0x0

    #@a
    move-object v0, p0

    #@b
    .line 441
    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    #@e
    return-void
.end method

.method private setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .registers 7

    #@0
    .line 421
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    const-string v1, "android:changeTransform:parentMatrix"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/graphics/Matrix;

    #@a
    .line 422
    iget-object p2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@c
    sget v2, Landroidx/transition/R$id;->parent_matrix:I

    #@e
    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@11
    .line 424
    iget-object p2, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    #@13
    .line 425
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    #@16
    .line 426
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@19
    .line 428
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1b
    const-string v2, "android:changeTransform:matrix"

    #@1d
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/graphics/Matrix;

    #@23
    if-nez v0, :cond_2f

    #@25
    .line 430
    new-instance v0, Landroid/graphics/Matrix;

    #@27
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@2a
    .line 431
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@2c
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 434
    :cond_2f
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object p1

    #@35
    check-cast p1, Landroid/graphics/Matrix;

    #@37
    .line 435
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@3a
    .line 436
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@3d
    return-void
.end method

.method static setTransforms(Landroid/view/View;FFFFFFFF)V
    .registers 9

    #@0
    .line 448
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    #@3
    .line 449
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    #@6
    .line 450
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    #@9
    .line 451
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    #@c
    .line 452
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    #@f
    .line 453
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    #@12
    .line 454
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    #@15
    .line 455
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    #@18
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 238
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 3

    #@0
    .line 226
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    .line 227
    sget-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    #@5
    if-nez v0, :cond_14

    #@7
    .line 231
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/ViewGroup;

    #@f
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    #@14
    :cond_14
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 9

    #@0
    if-eqz p2, :cond_79

    #@2
    if-eqz p3, :cond_79

    #@4
    .line 244
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string v1, "android:changeTransform:parent"

    #@8
    .line 245
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_79

    #@e
    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@10
    .line 246
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_17

    #@16
    goto :goto_79

    #@17
    .line 250
    :cond_17
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/view/ViewGroup;

    #@1f
    .line 251
    iget-object v2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@21
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Landroid/view/ViewGroup;

    #@27
    .line 252
    iget-boolean v2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    #@29
    if-eqz v2, :cond_33

    #@2b
    invoke-direct {p0, v0, v1}, Landroidx/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_33

    #@31
    const/4 v1, 0x1

    #@32
    goto :goto_34

    #@33
    :cond_33
    const/4 v1, 0x0

    #@34
    .line 254
    :goto_34
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@36
    const-string v3, "android:changeTransform:intermediateMatrix"

    #@38
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Landroid/graphics/Matrix;

    #@3e
    if-eqz v2, :cond_47

    #@40
    .line 256
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@42
    const-string v4, "android:changeTransform:matrix"

    #@44
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 259
    :cond_47
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@49
    const-string v3, "android:changeTransform:intermediateParentMatrix"

    #@4b
    .line 260
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    check-cast v2, Landroid/graphics/Matrix;

    #@51
    if-eqz v2, :cond_5a

    #@53
    .line 262
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@55
    const-string v4, "android:changeTransform:parentMatrix"

    #@57
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    :cond_5a
    if-eqz v1, :cond_5f

    #@5c
    .line 267
    invoke-direct {p0, p2, p3}, Landroidx/transition/ChangeTransform;->setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    #@5f
    .line 271
    :cond_5f
    invoke-direct {p0, p2, p3, v1}, Landroidx/transition/ChangeTransform;->createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    #@62
    move-result-object v2

    #@63
    if-eqz v1, :cond_6f

    #@65
    if-eqz v2, :cond_6f

    #@67
    .line 274
    iget-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    #@69
    if-eqz v1, :cond_6f

    #@6b
    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    #@6e
    goto :goto_78

    #@6f
    .line 276
    :cond_6f
    sget-boolean p1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    #@71
    if-nez p1, :cond_78

    #@73
    .line 278
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@75
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    #@78
    :cond_78
    :goto_78
    return-object v2

    #@79
    :cond_79
    :goto_79
    const/4 p1, 0x0

    #@7a
    return-object p1
.end method

.method public getReparent()Z
    .registers 2

    #@0
    .line 175
    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    #@2
    return v0
.end method

.method public getReparentWithOverlay()Z
    .registers 2

    #@0
    .line 141
    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    #@0
    .line 193
    sget-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setReparent(Z)V
    .registers 2

    #@0
    .line 188
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    #@2
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .registers 2

    #@0
    .line 163
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    #@2
    return-void
.end method
