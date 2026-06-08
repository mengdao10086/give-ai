.class Lcom/google/android/material/card/MaterialCardViewHelper;
.super Ljava/lang/Object;
.source "MaterialCardViewHelper.java"


# static fields
.field private static final CARD_VIEW_SHADOW_MULTIPLIER:F = 1.5f

.field private static final CHECKED_ICON_LAYER_INDEX:I = 0x2

.field private static final CHECKED_ICON_NONE:Landroid/graphics/drawable/Drawable;

.field private static final COS_45:D

.field public static final DEFAULT_FADE_ANIM_DURATION:I = 0x12c

.field private static final DEFAULT_STROKE_VALUE:I = -0x1


# instance fields
.field private final bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private checkable:Z

.field private checkedAnimationProgress:F

.field private checkedIcon:Landroid/graphics/drawable/Drawable;

.field private checkedIconGravity:I

.field private checkedIconMargin:I

.field private checkedIconSize:I

.field private checkedIconTint:Landroid/content/res/ColorStateList;

.field private clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private fgDrawable:Landroid/graphics/drawable/Drawable;

.field private final foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private iconAnimator:Landroid/animation/ValueAnimator;

.field private final iconFadeAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private final iconFadeInAnimDuration:I

.field private final iconFadeOutAnimDuration:I

.field private isBackgroundOverwritten:Z

.field private final materialCardView:Lcom/google/android/material/card/MaterialCardView;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private rippleDrawable:Landroid/graphics/drawable/Drawable;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private strokeColor:Landroid/content/res/ColorStateList;

.field private strokeWidth:I

.field private final userContentPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide v0, 0x4046800000000000L    # 45.0

    #@5
    .line 72
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@c
    move-result-wide v0

    #@d
    sput-wide v0, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    #@f
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@11
    const/16 v1, 0x1c

    #@13
    if-gt v0, v1, :cond_1b

    #@15
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@17
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    :goto_1c
    sput-object v0, Lcom/google/android/material/card/MaterialCardViewHelper;->CHECKED_ICON_NONE:Landroid/graphics/drawable/Drawable;

    #@1e
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V
    .registers 9

    #@0
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    #@a
    const/4 v0, 0x0

    #@b
    .line 126
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    #@d
    const/4 v0, 0x0

    #@e
    .line 133
    iput v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedAnimationProgress:F

    #@10
    .line 142
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@12
    .line 143
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@14
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@1b
    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1d
    .line 144
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@20
    move-result-object p4

    #@21
    invoke-virtual {v1, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@24
    const p4, -0xbbbbbc

    #@27
    .line 145
    invoke-virtual {v1, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    #@2a
    .line 147
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2d
    move-result-object p4

    #@2e
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@31
    move-result-object p4

    #@32
    .line 150
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@35
    move-result-object v1

    #@36
    sget-object v2, Lcom/google/android/material/R$styleable;->CardView:[I

    #@38
    sget v3, Lcom/google/android/material/R$style;->CardView:I

    #@3a
    .line 151
    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@3d
    move-result-object p2

    #@3e
    .line 152
    sget p3, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    #@40
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@43
    move-result p3

    #@44
    if-eqz p3, :cond_4f

    #@46
    .line 154
    sget p3, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    #@48
    .line 155
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@4b
    move-result p3

    #@4c
    .line 154
    invoke-virtual {p4, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@4f
    .line 158
    :cond_4f
    new-instance p3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@51
    invoke-direct {p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@54
    iput-object p3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@56
    .line 159
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@59
    move-result-object p3

    #@5a
    invoke-virtual {p0, p3}, Lcom/google/android/material/card/MaterialCardViewHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@5d
    .line 163
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@60
    move-result-object p3

    #@61
    sget p4, Lcom/google/android/material/R$attr;->motionEasingLinearInterpolator:I

    #@63
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@65
    .line 162
    invoke-static {p3, p4, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@68
    move-result-object p3

    #@69
    iput-object p3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconFadeAnimInterpolator:Landroid/animation/TimeInterpolator;

    #@6b
    .line 168
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@6e
    move-result-object p3

    #@6f
    sget p4, Lcom/google/android/material/R$attr;->motionDurationShort2:I

    #@71
    const/16 v0, 0x12c

    #@73
    .line 167
    invoke-static {p3, p4, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@76
    move-result p3

    #@77
    iput p3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconFadeInAnimDuration:I

    #@79
    .line 171
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@7c
    move-result-object p1

    #@7d
    sget p3, Lcom/google/android/material/R$attr;->motionDurationShort1:I

    #@7f
    .line 170
    invoke-static {p1, p3, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@82
    move-result p1

    #@83
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconFadeOutAnimDuration:I

    #@85
    .line 173
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@88
    return-void
.end method

.method private calculateActualCornerPadding()F
    .registers 5

    #@0
    .line 657
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    .line 660
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    #@b
    move-result v1

    #@c
    .line 659
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    #@f
    move-result v0

    #@10
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@12
    .line 662
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@18
    .line 663
    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopRightCornerResolvedSize()F

    #@1b
    move-result v2

    #@1c
    .line 661
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    #@1f
    move-result v1

    #@20
    .line 658
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@23
    move-result v0

    #@24
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@26
    .line 666
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2c
    .line 667
    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomRightCornerResolvedSize()F

    #@2f
    move-result v2

    #@30
    .line 665
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    #@33
    move-result v1

    #@34
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@36
    .line 669
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@39
    move-result-object v2

    #@3a
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3c
    .line 670
    invoke-virtual {v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomLeftCornerResolvedSize()F

    #@3f
    move-result v3

    #@40
    .line 668
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    #@43
    move-result v2

    #@44
    .line 664
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    #@47
    move-result v1

    #@48
    .line 657
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@4b
    move-result v0

    #@4c
    return v0
.end method

.method private calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F
    .registers 7

    #@0
    .line 674
    instance-of v0, p1, Lcom/google/android/material/shape/RoundedCornerTreatment;

    #@2
    if-eqz v0, :cond_d

    #@4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@6
    .line 675
    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    #@8
    sub-double/2addr v0, v2

    #@9
    float-to-double p1, p2

    #@a
    mul-double/2addr v0, p1

    #@b
    double-to-float p1, v0

    #@c
    return p1

    #@d
    .line 676
    :cond_d
    instance-of p1, p1, Lcom/google/android/material/shape/CutCornerTreatment;

    #@f
    if-eqz p1, :cond_15

    #@11
    const/high16 p1, 0x40000000    # 2.0f

    #@13
    div-float/2addr p2, p1

    #@14
    return p2

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    return p1
.end method

.method private calculateHorizontalBackgroundPadding()F
    .registers 3

    #@0
    .line 622
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMaxCardElevation()F

    #@5
    move-result v0

    #@6
    .line 623
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_11

    #@c
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    #@f
    move-result v1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v1, 0x0

    #@12
    :goto_12
    add-float/2addr v0, v1

    #@13
    return v0
.end method

.method private calculateVerticalBackgroundPadding()F
    .registers 3

    #@0
    .line 612
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMaxCardElevation()F

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x3fc00000    # 1.5f

    #@8
    mul-float/2addr v0, v1

    #@9
    .line 613
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_14

    #@f
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    #@12
    move-result v1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v1, 0x0

    #@15
    :goto_15
    add-float/2addr v0, v1

    #@16
    return v0
.end method

.method private canClipToOutline()Z
    .registers 2

    #@0
    .line 627
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method private createCompatRippleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 711
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@2
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@5
    .line 712
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@b
    .line 713
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@d
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@10
    const/4 v1, 0x1

    #@11
    new-array v1, v1, [I

    #@13
    const/4 v2, 0x0

    #@14
    const v3, 0x10100a7

    #@17
    aput v3, v1, v2

    #@19
    .line 714
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@1e
    return-object v0
.end method

.method private createForegroundRippleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 700
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 701
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a
    .line 703
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    #@c
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@e
    const/4 v2, 0x0

    #@f
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@14
    return-object v0

    #@15
    .line 706
    :cond_15
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createCompatRippleDrawable()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method private createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 3

    #@0
    .line 729
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@7
    return-object v0
.end method

.method private getClickableForeground()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 684
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v0, :cond_a

    #@4
    .line 685
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundRippleDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    .line 688
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@c
    if-nez v0, :cond_2c

    #@e
    .line 689
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    #@10
    const/4 v1, 0x3

    #@11
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    #@13
    const/4 v2, 0x0

    #@14
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    aput-object v3, v1, v2

    #@18
    const/4 v2, 0x1

    #@19
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1b
    aput-object v3, v1, v2

    #@1d
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@1f
    const/4 v3, 0x2

    #@20
    aput-object v2, v1, v3

    #@22
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@25
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@27
    .line 692
    sget v1, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    #@29
    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    #@2c
    .line 695
    :cond_2c
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@2e
    return-object v0
.end method

.method private getParentCardViewCalculatedCornerPadding()F
    .registers 5

    #@0
    .line 631
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1f

    #@8
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@a
    .line 632
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1f

    #@10
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@12
    .line 633
    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    #@14
    sub-double/2addr v0, v2

    #@15
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@17
    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    #@1a
    move-result v2

    #@1b
    float-to-double v2, v2

    #@1c
    mul-double/2addr v0, v2

    #@1d
    double-to-float v0, v0

    #@1e
    return v0

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    return v0
.end method

.method private insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 10

    #@0
    .line 578
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1f

    #@8
    .line 580
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateVerticalBackgroundPadding()F

    #@b
    move-result v0

    #@c
    float-to-double v0, v0

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@10
    move-result-wide v0

    #@11
    double-to-int v0, v0

    #@12
    .line 581
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateHorizontalBackgroundPadding()F

    #@15
    move-result v1

    #@16
    float-to-double v1, v1

    #@17
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    #@1a
    move-result-wide v1

    #@1b
    double-to-int v1, v1

    #@1c
    move v7, v0

    #@1d
    move v6, v1

    #@1e
    goto :goto_22

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    move v6, v0

    #@21
    move v7, v6

    #@22
    .line 583
    :goto_22
    new-instance v0, Lcom/google/android/material/card/MaterialCardViewHelper$1;

    #@24
    move-object v1, v0

    #@25
    move-object v2, p0

    #@26
    move-object v3, p1

    #@27
    move v4, v6

    #@28
    move v5, v7

    #@29
    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/card/MaterialCardViewHelper$1;-><init>(Lcom/google/android/material/card/MaterialCardViewHelper;Landroid/graphics/drawable/Drawable;IIII)V

    #@2c
    return-object v0
.end method

.method private isCheckedIconBottom()Z
    .registers 3

    #@0
    .line 763
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconGravity:I

    #@2
    const/16 v1, 0x50

    #@4
    and-int/2addr v0, v1

    #@5
    if-ne v0, v1, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method private isCheckedIconEnd()Z
    .registers 3

    #@0
    .line 759
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconGravity:I

    #@2
    const v1, 0x800005

    #@5
    and-int/2addr v0, v1

    #@6
    if-ne v0, v1, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method private shouldAddCornerPaddingInsideCardBackground()Z
    .registers 2

    #@0
    .line 639
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->canClipToOutline()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method private shouldAddCornerPaddingOutsideCardBackground()Z
    .registers 2

    #@0
    .line 643
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_18

    #@8
    .line 644
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->canClipToOutline()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_18

    #@e
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@10
    .line 645
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    :goto_19
    return v0
.end method

.method private updateInsetForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 555
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2
    .line 556
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 557
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@c
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    #@12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@15
    goto :goto_1f

    #@16
    .line 559
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@18
    invoke-direct {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@1f
    :goto_1f
    return-void
.end method

.method private updateRippleColor()V
    .registers 3

    #@0
    .line 720
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@2
    if-eqz v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 721
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    #@a
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    #@f
    goto :goto_19

    #@10
    .line 722
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@12
    if-eqz v0, :cond_19

    #@14
    .line 723
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@16
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@19
    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public animateCheckedIcon(Z)V
    .registers 7

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    if-eqz p1, :cond_6

    #@4
    move v1, v0

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-eqz p1, :cond_d

    #@9
    .line 311
    iget v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedAnimationProgress:F

    #@b
    sub-float/2addr v0, v2

    #@c
    goto :goto_f

    #@d
    :cond_d
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedAnimationProgress:F

    #@f
    .line 312
    :goto_f
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconAnimator:Landroid/animation/ValueAnimator;

    #@11
    if-eqz v2, :cond_19

    #@13
    .line 313
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    #@16
    const/4 v2, 0x0

    #@17
    .line 314
    iput-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconAnimator:Landroid/animation/ValueAnimator;

    #@19
    :cond_19
    const/4 v2, 0x2

    #@1a
    new-array v2, v2, [F

    #@1c
    const/4 v3, 0x0

    #@1d
    .line 316
    iget v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedAnimationProgress:F

    #@1f
    aput v4, v2, v3

    #@21
    const/4 v3, 0x1

    #@22
    aput v1, v2, v3

    #@24
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconAnimator:Landroid/animation/ValueAnimator;

    #@2a
    .line 317
    new-instance v2, Lcom/google/android/material/card/MaterialCardViewHelper$$ExternalSyntheticLambda0;

    #@2c
    invoke-direct {v2, p0}, Lcom/google/android/material/card/MaterialCardViewHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/card/MaterialCardViewHelper;)V

    #@2f
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@32
    .line 324
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconAnimator:Landroid/animation/ValueAnimator;

    #@34
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconFadeAnimInterpolator:Landroid/animation/TimeInterpolator;

    #@36
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@39
    .line 327
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconAnimator:Landroid/animation/ValueAnimator;

    #@3b
    if-eqz p1, :cond_40

    #@3d
    .line 329
    iget p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconFadeInAnimDuration:I

    #@3f
    goto :goto_42

    #@40
    .line 330
    :cond_40
    iget p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconFadeOutAnimDuration:I

    #@42
    :goto_42
    int-to-float p1, p1

    #@43
    mul-float/2addr p1, v0

    #@44
    float-to-long v2, p1

    #@45
    .line 327
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@48
    .line 331
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->iconAnimator:Landroid/animation/ValueAnimator;

    #@4a
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@4d
    return-void
.end method

.method forceRippleRedraw()V
    .registers 8

    #@0
    .line 517
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_22

    #@4
    .line 518
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 522
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@a
    .line 523
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@e
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@10
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@12
    add-int/lit8 v6, v1, -0x1

    #@14
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@17
    .line 524
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    #@19
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@1b
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@1d
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@1f
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@22
    :cond_22
    return-void
.end method

.method getBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    #@0
    .line 270
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    return-object v0
.end method

.method getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 278
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getCardForegroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 287
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 440
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method getCheckedIconGravity()I
    .registers 2

    #@0
    .line 749
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconGravity:I

    #@2
    return v0
.end method

.method getCheckedIconMargin()I
    .registers 2

    #@0
    .line 469
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@2
    return v0
.end method

.method getCheckedIconSize()I
    .registers 2

    #@0
    .line 460
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    #@2
    return v0
.end method

.method getCheckedIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 430
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getCornerRadius()F
    .registers 2

    #@0
    .line 348
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getProgress()F
    .registers 2

    #@0
    .line 364
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 435
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 546
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object v0
.end method

.method getStrokeColor()I
    .registers 2

    #@0
    .line 247
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, -0x1

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0
.end method

.method getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 252
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getStrokeWidth()I
    .registers 2

    #@0
    .line 265
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    #@2
    return v0
.end method

.method getUserContentPadding()Landroid/graphics/Rect;
    .registers 2

    #@0
    .line 297
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method isBackgroundOverwritten()Z
    .registers 2

    #@0
    .line 229
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    #@2
    return v0
.end method

.method isCheckable()Z
    .registers 2

    #@0
    .line 413
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    #@2
    return v0
.end method

.method synthetic lambda$animateCheckedIcon$0$com-google-android-material-card-MaterialCardViewHelper(Landroid/animation/ValueAnimator;)V
    .registers 4

    #@0
    .line 319
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
    const/high16 v0, 0x437f0000    # 255.0f

    #@c
    mul-float/2addr v0, p1

    #@d
    float-to-int v0, v0

    #@e
    .line 321
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@13
    .line 322
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedAnimationProgress:F

    #@15
    return-void
.end method

.method loadFromAttributes(Landroid/content/res/TypedArray;)V
    .registers 5

    #@0
    .line 177
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2
    .line 178
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeColor:I

    #@8
    .line 177
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@e
    if-nez v0, :cond_17

    #@10
    const/4 v0, -0x1

    #@11
    .line 182
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@17
    .line 185
    :cond_17
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeWidth:I

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    #@20
    .line 186
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_android_checkable:I

    #@22
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@25
    move-result v0

    #@26
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    #@28
    .line 187
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2a
    invoke-virtual {v2, v0}, Lcom/google/android/material/card/MaterialCardView;->setLongClickable(Z)V

    #@2d
    .line 188
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@2f
    .line 189
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@32
    move-result-object v0

    #@33
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconTint:I

    #@35
    .line 188
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    #@3b
    .line 190
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@3d
    .line 192
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@40
    move-result-object v0

    #@41
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIcon:I

    #@43
    .line 191
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    #@46
    move-result-object v0

    #@47
    .line 190
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    #@4a
    .line 193
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconSize:I

    #@4c
    .line 194
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4f
    move-result v0

    #@50
    .line 193
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconSize(I)V

    #@53
    .line 195
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconMargin:I

    #@55
    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@58
    move-result v0

    #@59
    .line 195
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconMargin(I)V

    #@5c
    .line 197
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconGravity:I

    #@5e
    const v1, 0x800035

    #@61
    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@64
    move-result v0

    #@65
    iput v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconGravity:I

    #@67
    .line 201
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@69
    .line 203
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@6c
    move-result-object v0

    #@6d
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCardView_rippleColor:I

    #@6f
    .line 202
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@72
    move-result-object v0

    #@73
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@75
    if-nez v0, :cond_85

    #@77
    .line 205
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@79
    sget v1, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    #@7b
    .line 207
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@7e
    move-result v0

    #@7f
    .line 206
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@82
    move-result-object v0

    #@83
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@85
    .line 210
    :cond_85
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@87
    .line 212
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@8a
    move-result-object v0

    #@8b
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCardView_cardForegroundColor:I

    #@8d
    .line 211
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@90
    move-result-object p1

    #@91
    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardForegroundColor(Landroid/content/res/ColorStateList;)V

    #@94
    .line 218
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateRippleColor()V

    #@97
    .line 219
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateElevation()V

    #@9a
    .line 220
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    #@9d
    .line 222
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@9f
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a1
    invoke-direct {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@a4
    move-result-object v0

    #@a5
    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    #@a8
    .line 224
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@aa
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    #@ad
    move-result p1

    #@ae
    if-eqz p1, :cond_b5

    #@b0
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getClickableForeground()Landroid/graphics/drawable/Drawable;

    #@b3
    move-result-object p1

    #@b4
    goto :goto_b7

    #@b5
    :cond_b5
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@b7
    :goto_b7
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    #@b9
    .line 225
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@bb
    invoke-direct {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@be
    move-result-object p1

    #@bf
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@c2
    return-void
.end method

.method recalculateCheckedIconPosition(II)V
    .registers 13

    #@0
    .line 477
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@2
    if-eqz v0, :cond_7f

    #@4
    .line 481
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_25

    #@c
    .line 482
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateVerticalBackgroundPadding()F

    #@f
    move-result v0

    #@10
    const/high16 v1, 0x40000000    # 2.0f

    #@12
    mul-float/2addr v0, v1

    #@13
    float-to-double v2, v0

    #@14
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@17
    move-result-wide v2

    #@18
    double-to-int v0, v2

    #@19
    .line 483
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateHorizontalBackgroundPadding()F

    #@1c
    move-result v2

    #@1d
    mul-float/2addr v2, v1

    #@1e
    float-to-double v1, v2

    #@1f
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    #@22
    move-result-wide v1

    #@23
    double-to-int v1, v1

    #@24
    goto :goto_27

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    move v1, v0

    #@27
    .line 487
    :goto_27
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isCheckedIconEnd()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_36

    #@2d
    .line 488
    iget v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@2f
    sub-int v2, p1, v2

    #@31
    iget v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    #@33
    sub-int/2addr v2, v3

    #@34
    sub-int/2addr v2, v1

    #@35
    goto :goto_38

    #@36
    .line 489
    :cond_36
    iget v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@38
    .line 491
    :goto_38
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isCheckedIconBottom()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_41

    #@3e
    .line 492
    iget v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@40
    goto :goto_49

    #@41
    .line 493
    :cond_41
    iget v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@43
    sub-int v3, p2, v3

    #@45
    iget v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    #@47
    sub-int/2addr v3, v4

    #@48
    sub-int/2addr v3, v0

    #@49
    :goto_49
    move v9, v3

    #@4a
    .line 496
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isCheckedIconEnd()Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_53

    #@50
    .line 497
    iget p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@52
    goto :goto_5a

    #@53
    .line 498
    :cond_53
    iget v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@55
    sub-int/2addr p1, v3

    #@56
    iget v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    #@58
    sub-int/2addr p1, v3

    #@59
    sub-int/2addr p1, v1

    #@5a
    .line 500
    :goto_5a
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isCheckedIconBottom()Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_68

    #@60
    .line 501
    iget v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@62
    sub-int/2addr p2, v1

    #@63
    iget v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    #@65
    sub-int/2addr p2, v1

    #@66
    sub-int/2addr p2, v0

    #@67
    goto :goto_6a

    #@68
    .line 502
    :cond_68
    iget p2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@6a
    :goto_6a
    move v7, p2

    #@6b
    .line 504
    iget-object p2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@6d
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@70
    move-result p2

    #@71
    const/4 v0, 0x1

    #@72
    if-ne p2, v0, :cond_77

    #@74
    move v6, p1

    #@75
    move v8, v2

    #@76
    goto :goto_79

    #@77
    :cond_77
    move v8, p1

    #@78
    move v6, v2

    #@79
    .line 511
    :goto_79
    iget-object v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@7b
    const/4 v5, 0x2

    #@7c
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    #@7f
    :cond_7f
    return-void
.end method

.method setBackgroundOverwritten(Z)V
    .registers 2

    #@0
    .line 233
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    #@2
    return-void
.end method

.method setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 274
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 282
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-nez p1, :cond_9

    #@4
    const/4 p1, 0x0

    #@5
    .line 283
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@8
    move-result-object p1

    #@9
    .line 282
    :cond_9
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@c
    return-void
.end method

.method setCheckable(Z)V
    .registers 2

    #@0
    .line 409
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    #@2
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 733
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->setChecked(ZZ)V

    #@4
    return-void
.end method

.method public setChecked(ZZ)V
    .registers 4

    #@0
    .line 737
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_1b

    #@4
    if-eqz p2, :cond_a

    #@6
    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->animateCheckedIcon(Z)V

    #@9
    goto :goto_1b

    #@a
    :cond_a
    if-eqz p1, :cond_f

    #@c
    const/16 p2, 0xff

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p2, 0x0

    #@10
    .line 741
    :goto_10
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@13
    if-eqz p1, :cond_18

    #@15
    const/high16 p1, 0x3f800000    # 1.0f

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 p1, 0x0

    #@19
    .line 742
    :goto_19
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedAnimationProgress:F

    #@1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    if-eqz p1, :cond_1b

    #@2
    .line 445
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@c
    .line 446
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    #@e
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@11
    .line 447
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@13
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    #@16
    move-result p1

    #@17
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setChecked(Z)V

    #@1a
    goto :goto_1f

    #@1b
    .line 449
    :cond_1b
    sget-object p1, Lcom/google/android/material/card/MaterialCardViewHelper;->CHECKED_ICON_NONE:Landroid/graphics/drawable/Drawable;

    #@1d
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@1f
    .line 452
    :goto_1f
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@21
    if-eqz p1, :cond_2a

    #@23
    .line 453
    sget v0, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    #@25
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@27
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    #@2a
    :cond_2a
    return-void
.end method

.method setCheckedIconGravity(I)V
    .registers 3

    #@0
    .line 753
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconGravity:I

    #@2
    .line 754
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@4
    .line 755
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getMeasuredWidth()I

    #@7
    move-result p1

    #@8
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMeasuredHeight()I

    #@d
    move-result v0

    #@e
    .line 754
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->recalculateCheckedIconPosition(II)V

    #@11
    return-void
.end method

.method setCheckedIconMargin(I)V
    .registers 2

    #@0
    .line 473
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    #@2
    return-void
.end method

.method setCheckedIconSize(I)V
    .registers 2

    #@0
    .line 464
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    #@2
    return-void
.end method

.method setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 422
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    #@2
    .line 423
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 424
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@9
    :cond_9
    return-void
.end method

.method setCornerRadius(F)V
    .registers 3

    #@0
    .line 335
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@9
    .line 336
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@e
    .line 337
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    #@11
    move-result p1

    #@12
    if-nez p1, :cond_1a

    #@14
    .line 338
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingInsideCardBackground()Z

    #@17
    move-result p1

    #@18
    if-eqz p1, :cond_1d

    #@1a
    .line 339
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    #@1d
    .line 342
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    #@20
    move-result p1

    #@21
    if-eqz p1, :cond_26

    #@23
    .line 343
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    #@26
    :cond_26
    return-void
.end method

.method setProgress(F)V
    .registers 3

    #@0
    .line 352
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@5
    .line 353
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    if-eqz v0, :cond_c

    #@9
    .line 354
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@c
    .line 357
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@e
    if-eqz v0, :cond_13

    #@10
    .line 358
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@13
    :cond_13
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 417
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@2
    .line 418
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateRippleColor()V

    #@5
    return-void
.end method

.method setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    #@0
    .line 529
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    .line 530
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@7
    .line 531
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@9
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    #@c
    move-result v1

    #@d
    xor-int/lit8 v1, v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    #@12
    .line 532
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@14
    if-eqz v0, :cond_19

    #@16
    .line 533
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@19
    .line 536
    :cond_19
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1b
    if-eqz v0, :cond_20

    #@1d
    .line 537
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@20
    .line 540
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@22
    if-eqz v0, :cond_27

    #@24
    .line 541
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@27
    :cond_27
    return-void
.end method

.method setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 237
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 241
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@7
    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    #@a
    return-void
.end method

.method setStrokeWidth(I)V
    .registers 3

    #@0
    .line 256
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 259
    :cond_5
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    #@7
    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    #@a
    return-void
.end method

.method setUserContentPadding(IIII)V
    .registers 6

    #@0
    .line 291
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@5
    .line 292
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    #@8
    return-void
.end method

.method updateClickable()V
    .registers 3

    #@0
    .line 301
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 303
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@4
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_f

    #@a
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getClickableForeground()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    goto :goto_11

    #@f
    :cond_f
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    :goto_11
    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    if-eq v0, v1, :cond_18

    #@15
    .line 305
    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsetForeground(Landroid/graphics/drawable/Drawable;)V

    #@18
    :cond_18
    return-void
.end method

.method updateContentPadding()V
    .registers 7

    #@0
    .line 392
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingInsideCardBackground()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    .line 393
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 v0, 0x1

    #@10
    :goto_10
    if-eqz v0, :cond_17

    #@12
    .line 398
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    #@15
    move-result v0

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    .line 399
    :goto_18
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getParentCardViewCalculatedCornerPadding()F

    #@1b
    move-result v1

    #@1c
    sub-float/2addr v0, v1

    #@1d
    float-to-int v0, v0

    #@1e
    .line 401
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@20
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    #@22
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@24
    add-int/2addr v2, v0

    #@25
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    #@27
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@29
    add-int/2addr v3, v0

    #@2a
    iget-object v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    #@2c
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@2e
    add-int/2addr v4, v0

    #@2f
    iget-object v5, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    #@31
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@33
    add-int/2addr v5, v0

    #@34
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/material/card/MaterialCardView;->setAncestorContentPadding(IIII)V

    #@37
    return-void
.end method

.method updateElevation()V
    .registers 3

    #@0
    .line 368
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@4
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getCardElevation()F

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@b
    return-void
.end method

.method updateInsets()V
    .registers 3

    #@0
    .line 373
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_11

    #@6
    .line 374
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@8
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a
    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 376
    :cond_11
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    #@13
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@1c
    return-void
.end method

.method updateStroke()V
    .registers 4

    #@0
    .line 380
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    iget v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    #@4
    int-to-float v1, v1

    #@5
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    #@a
    return-void
.end method
