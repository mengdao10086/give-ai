.class public Landroidx/transition/Explode;
.super Landroidx/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@7
    .line 45
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@9
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@c
    sput-object v0, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@e
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 50
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    .line 48
    iput-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    #@8
    .line 51
    new-instance v0, Landroidx/transition/CircularPropagation;

    #@a
    invoke-direct {v0}, Landroidx/transition/CircularPropagation;-><init>()V

    #@d
    invoke-virtual {p0, v0}, Landroidx/transition/Explode;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    #@10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 p1, 0x2

    #@4
    new-array p1, p1, [I

    #@6
    .line 48
    iput-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    #@8
    .line 56
    new-instance p1, Landroidx/transition/CircularPropagation;

    #@a
    invoke-direct {p1}, Landroidx/transition/CircularPropagation;-><init>()V

    #@d
    invoke-virtual {p0, p1}, Landroidx/transition/Explode;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    #@10
    return-void
.end method

.method private static calculateDistance(FF)F
    .registers 2

    #@0
    mul-float/2addr p0, p0

    #@1
    mul-float/2addr p1, p1

    #@2
    add-float/2addr p0, p1

    #@3
    float-to-double p0, p0

    #@4
    .line 173
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    #@7
    move-result-wide p0

    #@8
    double-to-float p0, p0

    #@9
    return p0
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)F
    .registers 4

    #@0
    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    sub-int/2addr v0, p1

    #@5
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result p1

    #@9
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@c
    move-result p0

    #@d
    sub-int/2addr p0, p2

    #@e
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    #@11
    move-result p0

    #@12
    int-to-float p1, p1

    #@13
    int-to-float p0, p0

    #@14
    .line 169
    invoke-static {p1, p0}, Landroidx/transition/Explode;->calculateDistance(FF)F

    #@17
    move-result p0

    #@18
    return p0
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .registers 19

    #@0
    move-object v0, p0

    #@1
    move-object/from16 v1, p1

    #@3
    .line 128
    iget-object v2, v0, Landroidx/transition/Explode;->mTempLoc:[I

    #@5
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@8
    .line 129
    iget-object v2, v0, Landroidx/transition/Explode;->mTempLoc:[I

    #@a
    const/4 v3, 0x0

    #@b
    aget v4, v2, v3

    #@d
    const/4 v5, 0x1

    #@e
    .line 130
    aget v2, v2, v5

    #@10
    .line 134
    invoke-virtual {p0}, Landroidx/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    #@13
    move-result-object v6

    #@14
    if-nez v6, :cond_37

    #@16
    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    #@19
    move-result v6

    #@1a
    div-int/lit8 v6, v6, 0x2

    #@1c
    add-int/2addr v6, v4

    #@1d
    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    #@20
    move-result v7

    #@21
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@24
    move-result v7

    #@25
    add-int/2addr v6, v7

    #@26
    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    #@29
    move-result v7

    #@2a
    div-int/lit8 v7, v7, 0x2

    #@2c
    add-int/2addr v7, v2

    #@2d
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    #@30
    move-result v8

    #@31
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    #@34
    move-result v8

    #@35
    add-int/2addr v7, v8

    #@36
    goto :goto_42

    #@37
    .line 141
    :cond_37
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    #@3a
    move-result v7

    #@3b
    .line 142
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    #@3e
    move-result v6

    #@3f
    move v14, v7

    #@40
    move v7, v6

    #@41
    move v6, v14

    #@42
    .line 145
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    #@45
    move-result v8

    #@46
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    #@49
    move-result v9

    #@4a
    sub-int/2addr v8, v6

    #@4b
    int-to-float v8, v8

    #@4c
    sub-int/2addr v9, v7

    #@4d
    int-to-float v9, v9

    #@4e
    const/4 v10, 0x0

    #@4f
    cmpl-float v11, v8, v10

    #@51
    if-nez v11, :cond_6a

    #@53
    cmpl-float v10, v9, v10

    #@55
    if-nez v10, :cond_6a

    #@57
    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    #@5a
    move-result-wide v8

    #@5b
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@5d
    mul-double/2addr v8, v10

    #@5e
    double-to-float v8, v8

    #@5f
    const/high16 v9, 0x3f800000    # 1.0f

    #@61
    sub-float/2addr v8, v9

    #@62
    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    #@65
    move-result-wide v12

    #@66
    mul-double/2addr v12, v10

    #@67
    double-to-float v10, v12

    #@68
    sub-float v9, v10, v9

    #@6a
    .line 155
    :cond_6a
    invoke-static {v8, v9}, Landroidx/transition/Explode;->calculateDistance(FF)F

    #@6d
    move-result v10

    #@6e
    div-float/2addr v8, v10

    #@6f
    div-float/2addr v9, v10

    #@70
    sub-int/2addr v6, v4

    #@71
    sub-int/2addr v7, v2

    #@72
    .line 160
    invoke-static {v1, v6, v7}, Landroidx/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)F

    #@75
    move-result v1

    #@76
    mul-float/2addr v8, v1

    #@77
    .line 162
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    #@7a
    move-result v2

    #@7b
    aput v2, p3, v3

    #@7d
    mul-float/2addr v1, v9

    #@7e
    .line 163
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@81
    move-result v1

    #@82
    aput v1, p3, v5

    #@84
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 7

    #@0
    .line 60
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 61
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 62
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    #@9
    const/4 v2, 0x0

    #@a
    aget v2, v1, v2

    #@c
    const/4 v3, 0x1

    #@d
    .line 63
    aget v1, v1, v3

    #@f
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@12
    move-result v3

    #@13
    add-int/2addr v3, v2

    #@14
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@17
    move-result v0

    #@18
    add-int/2addr v0, v1

    #@19
    .line 66
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1b
    new-instance v4, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@20
    const-string v0, "android:explode:screenBounds"

    #@22
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 77
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    #@3
    .line 78
    invoke-direct {p0, p1}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    #@6
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 71
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    #@3
    .line 72
    invoke-direct {p0, p1}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    #@6
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 15

    #@0
    if-nez p4, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    .line 87
    :cond_4
    iget-object p3, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string v0, "android:explode:screenBounds"

    #@8
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p3

    #@c
    check-cast p3, Landroid/graphics/Rect;

    #@e
    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@11
    move-result v6

    #@12
    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@15
    move-result v7

    #@16
    .line 90
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    #@18
    invoke-direct {p0, p1, p3, v0}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    #@1b
    .line 91
    iget-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    #@1d
    const/4 v0, 0x0

    #@1e
    aget v0, p1, v0

    #@20
    int-to-float v0, v0

    #@21
    add-float v4, v6, v0

    #@23
    const/4 v0, 0x1

    #@24
    .line 92
    aget p1, p1, v0

    #@26
    int-to-float p1, p1

    #@27
    add-float v5, v7, p1

    #@29
    .line 94
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@2b
    iget v3, p3, Landroid/graphics/Rect;->top:I

    #@2d
    sget-object v8, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@2f
    move-object v0, p2

    #@30
    move-object v1, p4

    #@31
    move-object v9, p0

    #@32
    invoke-static/range {v0 .. v9}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    #@35
    move-result-object p1

    #@36
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 15

    #@0
    if-nez p3, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    .line 104
    :cond_4
    iget-object p4, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string v0, "android:explode:screenBounds"

    #@8
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p4

    #@c
    check-cast p4, Landroid/graphics/Rect;

    #@e
    .line 105
    iget v2, p4, Landroid/graphics/Rect;->left:I

    #@10
    .line 106
    iget v3, p4, Landroid/graphics/Rect;->top:I

    #@12
    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@15
    move-result v4

    #@16
    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@19
    move-result v5

    #@1a
    .line 111
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@1c
    sget v1, Landroidx/transition/R$id;->transition_position:I

    #@1e
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, [I

    #@24
    check-cast v0, [I

    #@26
    const/4 v1, 0x1

    #@27
    const/4 v6, 0x0

    #@28
    if-eqz v0, :cond_40

    #@2a
    .line 115
    aget v7, v0, v6

    #@2c
    iget v8, p4, Landroid/graphics/Rect;->left:I

    #@2e
    sub-int/2addr v7, v8

    #@2f
    int-to-float v7, v7

    #@30
    add-float/2addr v7, v4

    #@31
    .line 116
    aget v8, v0, v1

    #@33
    iget v9, p4, Landroid/graphics/Rect;->top:I

    #@35
    sub-int/2addr v8, v9

    #@36
    int-to-float v8, v8

    #@37
    add-float/2addr v8, v5

    #@38
    .line 117
    aget v9, v0, v6

    #@3a
    aget v0, v0, v1

    #@3c
    invoke-virtual {p4, v9, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    #@3f
    goto :goto_42

    #@40
    :cond_40
    move v7, v4

    #@41
    move v8, v5

    #@42
    .line 119
    :goto_42
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    #@44
    invoke-direct {p0, p1, p4, v0}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    #@47
    .line 120
    iget-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    #@49
    aget p4, p1, v6

    #@4b
    int-to-float p4, p4

    #@4c
    add-float v6, v7, p4

    #@4e
    .line 121
    aget p1, p1, v1

    #@50
    int-to-float p1, p1

    #@51
    add-float v7, v8, p1

    #@53
    .line 123
    sget-object v8, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@55
    move-object v0, p2

    #@56
    move-object v1, p3

    #@57
    move-object v9, p0

    #@58
    invoke-static/range {v0 .. v9}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    #@5b
    move-result-object p1

    #@5c
    return-object p1
.end method
