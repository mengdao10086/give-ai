.class public Landroidx/transition/ChangeClipBounds;
.super Landroidx/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "android:clipBounds:clip"

    #@2
    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 51
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 6

    #@0
    .line 59
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 60
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
    .line 64
    :cond_b
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    #@e
    move-result-object v1

    #@f
    .line 65
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@11
    const-string v3, "android:clipBounds:clip"

    #@13
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    if-nez v1, :cond_2d

    #@18
    .line 67
    new-instance v1, Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@21
    move-result v0

    #@22
    const/4 v3, 0x0

    #@23
    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@26
    .line 68
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@28
    const-string v0, "android:clipBounds:bounds"

    #@2a
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    :cond_2d
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 79
    invoke-direct {p0, p1}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 74
    invoke-direct {p0, p1}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 11

    #@0
    const/4 p1, 0x0

    #@1
    if-eqz p2, :cond_7e

    #@3
    if-eqz p3, :cond_7e

    #@5
    .line 85
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@7
    const-string v1, "android:clipBounds:clip"

    #@9
    .line 86
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_7e

    #@f
    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@11
    .line 87
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_18

    #@17
    goto :goto_7e

    #@18
    .line 90
    :cond_18
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1a
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/graphics/Rect;

    #@20
    .line 91
    iget-object v2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@22
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/graphics/Rect;

    #@28
    const/4 v2, 0x1

    #@29
    const/4 v3, 0x0

    #@2a
    if-nez v1, :cond_2e

    #@2c
    move v4, v2

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    move v4, v3

    #@2f
    :goto_2f
    if-nez v0, :cond_34

    #@31
    if-nez v1, :cond_34

    #@33
    return-object p1

    #@34
    :cond_34
    const-string v5, "android:clipBounds:bounds"

    #@36
    if-nez v0, :cond_42

    #@38
    .line 98
    iget-object p2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@3a
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object p2

    #@3e
    move-object v0, p2

    #@3f
    check-cast v0, Landroid/graphics/Rect;

    #@41
    goto :goto_4d

    #@42
    :cond_42
    if-nez v1, :cond_4d

    #@44
    .line 100
    iget-object p2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@46
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    move-result-object p2

    #@4a
    move-object v1, p2

    #@4b
    check-cast v1, Landroid/graphics/Rect;

    #@4d
    .line 102
    :cond_4d
    :goto_4d
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@50
    move-result p2

    #@51
    if-eqz p2, :cond_54

    #@53
    return-object p1

    #@54
    .line 106
    :cond_54
    iget-object p1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@56
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    #@59
    .line 107
    new-instance p1, Landroidx/transition/RectEvaluator;

    #@5b
    new-instance p2, Landroid/graphics/Rect;

    #@5d
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    #@60
    invoke-direct {p1, p2}, Landroidx/transition/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    #@63
    .line 108
    iget-object p2, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@65
    sget-object v5, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    #@67
    const/4 v6, 0x2

    #@68
    new-array v6, v6, [Landroid/graphics/Rect;

    #@6a
    aput-object v0, v6, v3

    #@6c
    aput-object v1, v6, v2

    #@6e
    invoke-static {p2, v5, p1, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@71
    move-result-object p1

    #@72
    if-eqz v4, :cond_7e

    #@74
    .line 111
    iget-object p2, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@76
    .line 112
    new-instance p3, Landroidx/transition/ChangeClipBounds$1;

    #@78
    invoke-direct {p3, p0, p2}, Landroidx/transition/ChangeClipBounds$1;-><init>(Landroidx/transition/ChangeClipBounds;Landroid/view/View;)V

    #@7b
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@7e
    :cond_7e
    :goto_7e
    return-object p1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    #@0
    .line 48
    sget-object v0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method
