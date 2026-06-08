.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.source "FloatingActionButtonImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;
    }
.end annotation


# instance fields
.field private stateListAnimator:Landroid/animation/StateListAnimator;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V
    .registers 3

    #@0
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V

    #@3
    return-void
.end method

.method private createDefaultStateListAnimator(FFF)Landroid/animation/StateListAnimator;
    .registers 11

    #@0
    .line 125
    new-instance v0, Landroid/animation/StateListAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    #@5
    .line 128
    sget-object v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->PRESSED_ENABLED_STATE_SET:[I

    #@7
    .line 129
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    #@a
    move-result-object p3

    #@b
    .line 128
    invoke-virtual {v0, v1, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@e
    .line 130
    sget-object p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    #@10
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    #@13
    move-result-object v1

    #@14
    .line 130
    invoke-virtual {v0, p3, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@17
    .line 133
    sget-object p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    #@19
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    #@1c
    move-result-object v1

    #@1d
    .line 133
    invoke-virtual {v0, p3, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@20
    .line 136
    sget-object p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->HOVERED_ENABLED_STATE_SET:[I

    #@22
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    #@25
    move-result-object p2

    #@26
    .line 136
    invoke-virtual {v0, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@29
    .line 141
    new-instance p2, Landroid/animation/AnimatorSet;

    #@2b
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    #@2e
    .line 142
    new-instance p3, Ljava/util/ArrayList;

    #@30
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    #@33
    .line 143
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@35
    const/4 v2, 0x1

    #@36
    new-array v3, v2, [F

    #@38
    const/4 v4, 0x0

    #@39
    aput p1, v3, v4

    #@3b
    const-string p1, "elevation"

    #@3d
    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@40
    move-result-object p1

    #@41
    const-wide/16 v5, 0x0

    #@43
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@46
    move-result-object p1

    #@47
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4a
    .line 153
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@4c
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    #@4e
    new-array v2, v2, [F

    #@50
    const/4 v3, 0x0

    #@51
    aput v3, v2, v4

    #@53
    .line 154
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@56
    move-result-object p1

    #@57
    const-wide/16 v1, 0x64

    #@59
    .line 155
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@5c
    move-result-object p1

    #@5d
    .line 153
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    new-array p1, v4, [Landroid/animation/Animator;

    #@62
    .line 156
    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@65
    move-result-object p1

    #@66
    check-cast p1, [Landroid/animation/Animator;

    #@68
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@6b
    .line 157
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@6d
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@70
    .line 158
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ENABLED_STATE_SET:[I

    #@72
    invoke-virtual {v0, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@75
    .line 161
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->EMPTY_STATE_SET:[I

    #@77
    invoke-direct {p0, v3, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    #@7a
    move-result-object p2

    #@7b
    invoke-virtual {v0, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@7e
    return-object v0
.end method

.method private createElevationAnimator(FF)Landroid/animation/Animator;
    .registers 10

    #@0
    .line 168
    new-instance v0, Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@5
    .line 169
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@7
    const/4 v2, 0x1

    #@8
    new-array v3, v2, [F

    #@a
    const/4 v4, 0x0

    #@b
    aput p1, v3, v4

    #@d
    const-string p1, "elevation"

    #@f
    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@12
    move-result-object p1

    #@13
    const-wide/16 v5, 0x0

    #@15
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1c
    move-result-object p1

    #@1d
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@1f
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    #@21
    new-array v2, v2, [F

    #@23
    aput p2, v2, v4

    #@25
    .line 171
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@28
    move-result-object p2

    #@29
    const-wide/16 v1, 0x64

    #@2b
    .line 172
    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@2e
    move-result-object p2

    #@2f
    .line 170
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@32
    .line 173
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@34
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@37
    return-object v0
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/floatingactionbutton/BorderDrawable;
    .registers 9

    #@0
    .line 228
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 229
    new-instance v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    #@8
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@a
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@10
    invoke-direct {v1, v2}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@13
    .line 230
    sget v2, Lcom/google/android/material/R$color;->design_fab_stroke_top_outer_color:I

    #@15
    .line 231
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@18
    move-result v2

    #@19
    sget v3, Lcom/google/android/material/R$color;->design_fab_stroke_top_inner_color:I

    #@1b
    .line 232
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@1e
    move-result v3

    #@1f
    sget v4, Lcom/google/android/material/R$color;->design_fab_stroke_end_inner_color:I

    #@21
    .line 233
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@24
    move-result v4

    #@25
    sget v5, Lcom/google/android/material/R$color;->design_fab_stroke_end_outer_color:I

    #@27
    .line 234
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@2a
    move-result v0

    #@2b
    .line 230
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->setGradientColors(IIII)V

    #@2e
    int-to-float p1, p1

    #@2f
    .line 235
    invoke-virtual {v1, p1}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->setBorderWidth(F)V

    #@32
    .line 236
    invoke-virtual {v1, p2}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    #@35
    return-object v1
.end method

.method createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 3

    #@0
    .line 243
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    .line 244
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;

    #@a
    invoke-direct {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@d
    return-object v1
.end method

.method public getElevation()F
    .registers 2

    #@0
    .line 179
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getElevation()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .registers 4

    #@0
    .line 249
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_c

    #@8
    .line 250
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    #@b
    goto :goto_25

    #@c
    .line 251
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shouldExpandBoundsForA11y()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_21

    #@12
    .line 252
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->minTouchTargetSize:I

    #@14
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@16
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    #@19
    move-result v1

    #@1a
    sub-int/2addr v0, v1

    #@1b
    div-int/lit8 v0, v0, 0x2

    #@1d
    .line 253
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@20
    goto :goto_25

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    .line 255
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@25
    :goto_25
    return-void
.end method

.method initializeBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .registers 7

    #@0
    .line 64
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@6
    .line 65
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@b
    if-eqz p2, :cond_12

    #@d
    .line 67
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@f
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@12
    .line 69
    :cond_12
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@14
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@16
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@1d
    const/4 p2, 0x0

    #@1e
    if-lez p4, :cond_45

    #@20
    .line 73
    invoke-virtual {p0, p4, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    #@23
    move-result-object p1

    #@24
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    #@26
    .line 74
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    #@28
    const/4 p4, 0x2

    #@29
    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    #@2b
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    #@2d
    .line 75
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/graphics/drawable/Drawable;

    #@33
    const/4 v1, 0x0

    #@34
    aput-object v0, p4, v1

    #@36
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@38
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/graphics/drawable/Drawable;

    #@3e
    const/4 v1, 0x1

    #@3f
    aput-object v0, p4, v1

    #@41
    invoke-direct {p1, p4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@44
    goto :goto_49

    #@45
    .line 77
    :cond_45
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    #@47
    .line 78
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@49
    .line 81
    :goto_49
    new-instance p4, Landroid/graphics/drawable/RippleDrawable;

    #@4b
    .line 83
    invoke-static {p3}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@4e
    move-result-object p3

    #@4f
    invoke-direct {p4, p3, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@52
    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@54
    .line 85
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@56
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->contentBackground:Landroid/graphics/drawable/Drawable;

    #@58
    return-void
.end method

.method jumpDrawableToCurrentState()V
    .registers 1

    #@0
    return-void
.end method

.method onCompatShadowChanged()V
    .registers 1

    #@0
    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->updatePadding()V

    #@3
    return-void
.end method

.method onDrawableStateChanged([I)V
    .registers 2

    #@0
    return-void
.end method

.method onElevationsChanged(FFF)V
    .registers 6

    #@0
    .line 108
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getStateListAnimator()Landroid/animation/StateListAnimator;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->stateListAnimator:Landroid/animation/StateListAnimator;

    #@8
    if-ne v0, v1, :cond_17

    #@a
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createDefaultStateListAnimator(FFF)Landroid/animation/StateListAnimator;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->stateListAnimator:Landroid/animation/StateListAnimator;

    #@10
    .line 112
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@12
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->stateListAnimator:Landroid/animation/StateListAnimator;

    #@14
    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    #@17
    .line 115
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shouldAddPadding()Z

    #@1a
    move-result p1

    #@1b
    if-eqz p1, :cond_20

    #@1d
    .line 116
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->updatePadding()V

    #@20
    :cond_20
    return-void
.end method

.method requirePreDrawListener()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 90
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 91
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    #@a
    .line 92
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    #@11
    goto :goto_15

    #@12
    .line 94
    :cond_12
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setRippleColor(Landroid/content/res/ColorStateList;)V

    #@15
    :goto_15
    return-void
.end method

.method shouldAddPadding()Z
    .registers 2

    #@0
    .line 189
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_11

    #@8
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shouldExpandBoundsForA11y()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 v0, 0x1

    #@12
    :goto_12
    return v0
.end method

.method updateFromViewRotation()V
    .registers 1

    #@0
    return-void
.end method
