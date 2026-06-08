.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;,
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;,
        Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;,
        Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;,
        Lcom/google/android/material/textfield/TextInputLayout$EndIconMode;,
        Lcom/google/android/material/textfield/TextInputLayout$BoxBackgroundMode;,
        Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;
    }
.end annotation


# static fields
.field public static final BOX_BACKGROUND_FILLED:I = 0x1

.field public static final BOX_BACKGROUND_NONE:I = 0x0

.field public static final BOX_BACKGROUND_OUTLINE:I = 0x2

.field private static final DEFAULT_PLACEHOLDER_FADE_DURATION:I = 0x57

.field private static final DEF_STYLE_RES:I

.field private static final EDIT_TEXT_BACKGROUND_RIPPLE_STATE:[[I

.field public static final END_ICON_CLEAR_TEXT:I = 0x2

.field public static final END_ICON_CUSTOM:I = -0x1

.field public static final END_ICON_DROPDOWN_MENU:I = 0x3

.field public static final END_ICON_NONE:I = 0x0

.field public static final END_ICON_PASSWORD_TOGGLE:I = 0x1

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xa7

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"

.field private static final NO_WIDTH:I = -0x1

.field private static final PLACEHOLDER_START_DELAY:I = 0x43


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private areCornerRadiiRtl:Z

.field private boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private boxBackgroundApplied:Z

.field private boxBackgroundColor:I

.field private boxBackgroundMode:I

.field private boxCollapsedPaddingTopPx:I

.field private final boxLabelCutoutPaddingPx:I

.field private boxStrokeColor:I

.field private boxStrokeWidthDefaultPx:I

.field private boxStrokeWidthFocusedPx:I

.field private boxStrokeWidthPx:I

.field private boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field final collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

.field counterEnabled:Z

.field private counterMaxLength:I

.field private counterOverflowTextAppearance:I

.field private counterOverflowTextColor:Landroid/content/res/ColorStateList;

.field private counterOverflowed:Z

.field private counterTextAppearance:I

.field private counterTextColor:Landroid/content/res/ColorStateList;

.field private counterView:Landroid/widget/TextView;

.field private defaultFilledBackgroundColor:I

.field private defaultHintTextColor:Landroid/content/res/ColorStateList;

.field private defaultStrokeColor:I

.field private disabledColor:I

.field private disabledFilledBackgroundColor:I

.field editText:Landroid/widget/EditText;

.field private final editTextAttachedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;",
            ">;"
        }
    .end annotation
.end field

.field private endDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private endDummyDrawableWidth:I

.field private final endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

.field private expandedHintEnabled:Z

.field private filledDropDownMenuBackground:Landroid/graphics/drawable/StateListDrawable;

.field private focusedFilledBackgroundColor:I

.field private focusedStrokeColor:I

.field private focusedTextColor:Landroid/content/res/ColorStateList;

.field private hint:Ljava/lang/CharSequence;

.field private hintAnimationEnabled:Z

.field private hintEnabled:Z

.field private hintExpanded:Z

.field private hoveredFilledBackgroundColor:I

.field private hoveredStrokeColor:I

.field private inDrawableStateChanged:Z

.field private final indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

.field private final inputFrame:Landroid/widget/FrameLayout;

.field private isProvidingHint:Z

.field private lengthCounter:Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;

.field private maxEms:I

.field private maxWidth:I

.field private minEms:I

.field private minWidth:I

.field private originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private originalHint:Ljava/lang/CharSequence;

.field private outlinedDropDownMenuBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private placeholderEnabled:Z

.field private placeholderFadeIn:Landroidx/transition/Fade;

.field private placeholderFadeOut:Landroidx/transition/Fade;

.field private placeholderText:Ljava/lang/CharSequence;

.field private placeholderTextAppearance:I

.field private placeholderTextColor:Landroid/content/res/ColorStateList;

.field private placeholderTextView:Landroid/widget/TextView;

.field private restoringSavedState:Z

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private startDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private startDummyDrawableWidth:I

.field private final startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

.field private strokeErrorColor:Landroid/content/res/ColorStateList;

.field private final tmpBoundsRect:Landroid/graphics/Rect;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    .line 196
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_TextInputLayout:I

    #@2
    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->DEF_STYLE_RES:I

    #@4
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [[I

    #@7
    const/4 v1, 0x1

    #@8
    new-array v2, v1, [I

    #@a
    const v3, 0x10100a7

    #@d
    const/4 v4, 0x0

    #@e
    aput v3, v2, v4

    #@10
    aput-object v2, v0, v4

    #@12
    new-array v2, v4, [I

    #@14
    aput-object v2, v0, v1

    #@16
    .line 207
    sput-object v0, Lcom/google/android/material/textfield/TextInputLayout;->EDIT_TEXT_BACKGROUND_RIPPLE_STATE:[[I

    #@18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 447
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 451
    sget v0, Lcom/google/android/material/R$attr;->textInputStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v7, p2

    #@4
    move/from16 v8, p3

    #@6
    .line 455
    sget v9, Lcom/google/android/material/textfield/TextInputLayout;->DEF_STYLE_RES:I

    #@8
    move-object/from16 v1, p1

    #@a
    invoke-static {v1, v7, v8, v9}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@11
    const/4 v10, -0x1

    #@12
    .line 220
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->minEms:I

    #@14
    .line 221
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->maxEms:I

    #@16
    .line 222
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->minWidth:I

    #@18
    .line 223
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->maxWidth:I

    #@1a
    .line 225
    new-instance v1, Lcom/google/android/material/textfield/IndicatorViewController;

    #@1c
    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    #@1f
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@21
    .line 243
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$$ExternalSyntheticLambda0;

    #@23
    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout$$ExternalSyntheticLambda0;-><init>()V

    #@26
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->lengthCounter:Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;

    #@28
    .line 302
    new-instance v1, Landroid/graphics/Rect;

    #@2a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2d
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    #@2f
    .line 303
    new-instance v1, Landroid/graphics/Rect;

    #@31
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@34
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->tmpBoundsRect:Landroid/graphics/Rect;

    #@36
    .line 304
    new-instance v1, Landroid/graphics/RectF;

    #@38
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@3b
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@3d
    .line 411
    new-instance v1, Ljava/util/LinkedHashSet;

    #@3f
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@42
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    #@44
    .line 436
    new-instance v1, Lcom/google/android/material/internal/CollapsingTextHelper;

    #@46
    invoke-direct {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    #@49
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@4b
    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@4e
    move-result-object v11

    #@4f
    const/4 v12, 0x1

    #@50
    .line 459
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setOrientation(I)V

    #@53
    const/4 v13, 0x0

    #@54
    .line 460
    invoke-virtual {v0, v13}, Lcom/google/android/material/textfield/TextInputLayout;->setWillNotDraw(Z)V

    #@57
    .line 461
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setAddStatesFromChildren(Z)V

    #@5a
    .line 463
    new-instance v14, Landroid/widget/FrameLayout;

    #@5c
    invoke-direct {v14, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5f
    iput-object v14, v0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@61
    .line 465
    invoke-virtual {v14, v12}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    #@64
    .line 467
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@66
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    #@69
    .line 468
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@6b
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    #@6e
    const v2, 0x800033

    #@71
    .line 469
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    #@74
    .line 471
    sget-object v3, Lcom/google/android/material/R$styleable;->TextInputLayout:[I

    #@76
    const/4 v1, 0x5

    #@77
    new-array v6, v1, [I

    #@79
    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    #@7b
    aput v1, v6, v13

    #@7d
    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    #@7f
    aput v1, v6, v12

    #@81
    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    #@83
    const/4 v15, 0x2

    #@84
    aput v1, v6, v15

    #@86
    const/4 v1, 0x3

    #@87
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    #@89
    aput v2, v6, v1

    #@8b
    const/4 v1, 0x4

    #@8c
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    #@8e
    aput v2, v6, v1

    #@90
    move-object v1, v11

    #@91
    move-object/from16 v2, p2

    #@93
    move/from16 v4, p3

    #@95
    move v5, v9

    #@96
    .line 472
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    #@99
    move-result-object v1

    #@9a
    .line 484
    new-instance v2, Lcom/google/android/material/textfield/StartCompoundLayout;

    #@9c
    invoke-direct {v2, v0, v1}, Lcom/google/android/material/textfield/StartCompoundLayout;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/TintTypedArray;)V

    #@9f
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@a1
    .line 486
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintEnabled:I

    #@a3
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@a6
    move-result v3

    #@a7
    iput-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@a9
    .line 487
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_hint:I

    #@ab
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    #@b2
    .line 488
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    #@b4
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@b7
    move-result v3

    #@b8
    iput-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    #@ba
    .line 489
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_expandedHintEnabled:I

    #@bc
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@bf
    move-result v3

    #@c0
    iput-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    #@c2
    .line 491
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minEms:I

    #@c4
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@c7
    move-result v3

    #@c8
    if-eqz v3, :cond_d4

    #@ca
    .line 492
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minEms:I

    #@cc
    invoke-virtual {v1, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@cf
    move-result v3

    #@d0
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    #@d3
    goto :goto_e5

    #@d4
    .line 493
    :cond_d4
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minWidth:I

    #@d6
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@d9
    move-result v3

    #@da
    if-eqz v3, :cond_e5

    #@dc
    .line 494
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minWidth:I

    #@de
    invoke-virtual {v1, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@e1
    move-result v3

    #@e2
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    #@e5
    .line 496
    :cond_e5
    :goto_e5
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxEms:I

    #@e7
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@ea
    move-result v3

    #@eb
    if-eqz v3, :cond_f7

    #@ed
    .line 497
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxEms:I

    #@ef
    invoke-virtual {v1, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@f2
    move-result v3

    #@f3
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    #@f6
    goto :goto_108

    #@f7
    .line 498
    :cond_f7
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxWidth:I

    #@f9
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@fc
    move-result v3

    #@fd
    if-eqz v3, :cond_108

    #@ff
    .line 499
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxWidth:I

    #@101
    invoke-virtual {v1, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@104
    move-result v3

    #@105
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    #@108
    .line 503
    :cond_108
    :goto_108
    invoke-static {v11, v7, v8, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@10b
    move-result-object v3

    #@10c
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@10f
    move-result-object v3

    #@110
    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@112
    .line 507
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@115
    move-result-object v3

    #@116
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    #@118
    .line 508
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@11b
    move-result v3

    #@11c
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    #@11e
    .line 509
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    #@120
    .line 510
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    #@123
    move-result v3

    #@124
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    #@126
    .line 512
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeWidth:I

    #@128
    .line 516
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12b
    move-result-object v4

    #@12c
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    #@12e
    .line 517
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@131
    move-result v4

    #@132
    .line 513
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@135
    move-result v3

    #@136
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    #@138
    .line 518
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeWidthFocused:I

    #@13a
    .line 522
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13d
    move-result-object v4

    #@13e
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    #@140
    .line 523
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@143
    move-result v4

    #@144
    .line 519
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@147
    move-result v3

    #@148
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    #@14a
    .line 524
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    #@14c
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    #@14e
    .line 526
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopStart:I

    #@150
    const/high16 v4, -0x40800000    # -1.0f

    #@152
    .line 527
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    #@155
    move-result v3

    #@156
    .line 528
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopEnd:I

    #@158
    .line 529
    invoke-virtual {v1, v5, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    #@15b
    move-result v5

    #@15c
    .line 530
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomEnd:I

    #@15e
    .line 531
    invoke-virtual {v1, v6, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    #@161
    move-result v6

    #@162
    .line 532
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomStart:I

    #@164
    .line 533
    invoke-virtual {v1, v7, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    #@167
    move-result v4

    #@168
    .line 534
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@16a
    invoke-virtual {v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@16d
    move-result-object v7

    #@16e
    const/4 v8, 0x0

    #@16f
    cmpl-float v9, v3, v8

    #@171
    if-ltz v9, :cond_176

    #@173
    .line 536
    invoke-virtual {v7, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@176
    :cond_176
    cmpl-float v3, v5, v8

    #@178
    if-ltz v3, :cond_17d

    #@17a
    .line 539
    invoke-virtual {v7, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@17d
    :cond_17d
    cmpl-float v3, v6, v8

    #@17f
    if-ltz v3, :cond_184

    #@181
    .line 542
    invoke-virtual {v7, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@184
    :cond_184
    cmpl-float v3, v4, v8

    #@186
    if-ltz v3, :cond_18b

    #@188
    .line 545
    invoke-virtual {v7, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@18b
    .line 547
    :cond_18b
    invoke-virtual {v7}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@18e
    move-result-object v3

    #@18f
    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@191
    .line 549
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundColor:I

    #@193
    .line 550
    invoke-static {v11, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@196
    move-result-object v3

    #@197
    if-eqz v3, :cond_1ed

    #@199
    .line 553
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@19c
    move-result v4

    #@19d
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    #@19f
    .line 554
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@1a1
    .line 555
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@1a4
    move-result v4

    #@1a5
    const v5, -0x101009e

    #@1a8
    if-eqz v4, :cond_1cb

    #@1aa
    new-array v4, v12, [I

    #@1ac
    aput v5, v4, v13

    #@1ae
    .line 557
    invoke-virtual {v3, v4, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1b1
    move-result v4

    #@1b2
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    #@1b4
    new-array v4, v15, [I

    #@1b6
    .line 559
    fill-array-data v4, :array_368

    #@1b9
    .line 560
    invoke-virtual {v3, v4, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1bc
    move-result v4

    #@1bd
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    #@1bf
    new-array v4, v15, [I

    #@1c1
    .line 562
    fill-array-data v4, :array_370

    #@1c4
    .line 563
    invoke-virtual {v3, v4, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1c7
    move-result v3

    #@1c8
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    #@1ca
    goto :goto_1f7

    #@1cb
    .line 566
    :cond_1cb
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    #@1cd
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    #@1cf
    .line 567
    sget v3, Lcom/google/android/material/R$color;->mtrl_filled_background_color:I

    #@1d1
    .line 568
    invoke-static {v11, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@1d4
    move-result-object v3

    #@1d5
    new-array v4, v12, [I

    #@1d7
    aput v5, v4, v13

    #@1d9
    .line 570
    invoke-virtual {v3, v4, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1dc
    move-result v4

    #@1dd
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    #@1df
    new-array v4, v12, [I

    #@1e1
    const v5, 0x1010367

    #@1e4
    aput v5, v4, v13

    #@1e6
    .line 573
    invoke-virtual {v3, v4, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1e9
    move-result v3

    #@1ea
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    #@1ec
    goto :goto_1f7

    #@1ed
    .line 577
    :cond_1ed
    iput v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@1ef
    .line 578
    iput v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    #@1f1
    .line 579
    iput v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    #@1f3
    .line 580
    iput v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    #@1f5
    .line 581
    iput v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    #@1f7
    .line 584
    :goto_1f7
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    #@1f9
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@1fc
    move-result v3

    #@1fd
    if-eqz v3, :cond_209

    #@1ff
    .line 585
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    #@201
    .line 586
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@204
    move-result-object v3

    #@205
    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    #@207
    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    #@209
    .line 589
    :cond_209
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    #@20b
    .line 590
    invoke-static {v11, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@20e
    move-result-object v3

    #@20f
    .line 592
    sget v4, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    #@211
    invoke-virtual {v1, v4, v13}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    #@214
    move-result v4

    #@215
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    #@217
    .line 593
    sget v4, Lcom/google/android/material/R$color;->mtrl_textinput_default_box_stroke_color:I

    #@219
    .line 594
    invoke-static {v11, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@21c
    move-result v4

    #@21d
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    #@21f
    .line 595
    sget v4, Lcom/google/android/material/R$color;->mtrl_textinput_disabled_color:I

    #@221
    invoke-static {v11, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@224
    move-result v4

    #@225
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    #@227
    .line 596
    sget v4, Lcom/google/android/material/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    #@229
    .line 597
    invoke-static {v11, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@22c
    move-result v4

    #@22d
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    #@22f
    if-eqz v3, :cond_234

    #@231
    .line 600
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    #@234
    .line 602
    :cond_234
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeErrorColor:I

    #@236
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@239
    move-result v3

    #@23a
    if-eqz v3, :cond_245

    #@23c
    .line 603
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeErrorColor:I

    #@23e
    .line 604
    invoke-static {v11, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@241
    move-result-object v3

    #@242
    .line 603
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    #@245
    .line 608
    :cond_245
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    #@247
    invoke-virtual {v1, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@24a
    move-result v3

    #@24b
    if-eq v3, v10, :cond_256

    #@24d
    .line 610
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    #@24f
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@252
    move-result v3

    #@253
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    #@256
    .line 613
    :cond_256
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    #@258
    .line 614
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@25b
    move-result v3

    #@25c
    .line 615
    sget v4, Lcom/google/android/material/R$styleable;->TextInputLayout_errorContentDescription:I

    #@25e
    .line 616
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@261
    move-result-object v4

    #@262
    .line 617
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_errorAccessibilityLiveRegion:I

    #@264
    .line 618
    invoke-virtual {v1, v5, v12}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@267
    move-result v5

    #@268
    .line 621
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_errorEnabled:I

    #@26a
    invoke-virtual {v1, v6, v13}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@26d
    move-result v6

    #@26e
    .line 623
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    #@270
    .line 624
    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@273
    move-result v7

    #@274
    .line 625
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextEnabled:I

    #@276
    .line 626
    invoke-virtual {v1, v8, v13}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@279
    move-result v8

    #@27a
    .line 627
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_helperText:I

    #@27c
    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@27f
    move-result-object v9

    #@280
    .line 629
    sget v11, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextAppearance:I

    #@282
    .line 630
    invoke-virtual {v1, v11, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@285
    move-result v11

    #@286
    .line 631
    sget v15, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderText:I

    #@288
    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@28b
    move-result-object v15

    #@28c
    .line 633
    sget v12, Lcom/google/android/material/R$styleable;->TextInputLayout_counterEnabled:I

    #@28e
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@291
    move-result v12

    #@292
    .line 634
    sget v13, Lcom/google/android/material/R$styleable;->TextInputLayout_counterMaxLength:I

    #@294
    invoke-virtual {v1, v13, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@297
    move-result v10

    #@298
    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    #@29b
    .line 635
    sget v10, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    #@29d
    const/4 v13, 0x0

    #@29e
    invoke-virtual {v1, v10, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@2a1
    move-result v10

    #@2a2
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    #@2a4
    .line 636
    sget v10, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    #@2a6
    .line 637
    invoke-virtual {v1, v10, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@2a9
    move-result v10

    #@2aa
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    #@2ac
    .line 639
    sget v10, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundMode:I

    #@2ae
    .line 640
    invoke-virtual {v1, v10, v13}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@2b1
    move-result v10

    #@2b2
    .line 639
    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    #@2b5
    .line 642
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    #@2b8
    .line 643
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorAccessibilityLiveRegion(I)V

    #@2bb
    .line 645
    iget v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    #@2bd
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    #@2c0
    .line 646
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    #@2c3
    .line 647
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    #@2c6
    .line 648
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    #@2c8
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    #@2cb
    .line 649
    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    #@2ce
    .line 650
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    #@2d1
    .line 652
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextColor:I

    #@2d3
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@2d6
    move-result v3

    #@2d7
    if-eqz v3, :cond_2e2

    #@2d9
    .line 653
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextColor:I

    #@2db
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@2de
    move-result-object v3

    #@2df
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    #@2e2
    .line 655
    :cond_2e2
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextColor:I

    #@2e4
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@2e7
    move-result v3

    #@2e8
    if-eqz v3, :cond_2f3

    #@2ea
    .line 656
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextColor:I

    #@2ec
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@2ef
    move-result-object v3

    #@2f0
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    #@2f3
    .line 658
    :cond_2f3
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextColor:I

    #@2f5
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@2f8
    move-result v3

    #@2f9
    if-eqz v3, :cond_304

    #@2fb
    .line 659
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextColor:I

    #@2fd
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@300
    move-result-object v3

    #@301
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    #@304
    .line 661
    :cond_304
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextColor:I

    #@306
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@309
    move-result v3

    #@30a
    if-eqz v3, :cond_315

    #@30c
    .line 662
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextColor:I

    #@30e
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@311
    move-result-object v3

    #@312
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    #@315
    .line 664
    :cond_315
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextColor:I

    #@317
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@31a
    move-result v3

    #@31b
    if-eqz v3, :cond_326

    #@31d
    .line 665
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextColor:I

    #@31f
    .line 666
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@322
    move-result-object v3

    #@323
    .line 665
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    #@326
    .line 668
    :cond_326
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextColor:I

    #@328
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@32b
    move-result v3

    #@32c
    if-eqz v3, :cond_337

    #@32e
    .line 669
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextColor:I

    #@330
    .line 670
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@333
    move-result-object v3

    #@334
    .line 669
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    #@337
    .line 673
    :cond_337
    new-instance v3, Lcom/google/android/material/textfield/EndCompoundLayout;

    #@339
    invoke-direct {v3, v0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/TintTypedArray;)V

    #@33c
    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@33e
    .line 675
    sget v4, Lcom/google/android/material/R$styleable;->TextInputLayout_android_enabled:I

    #@340
    const/4 v5, 0x1

    #@341
    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@344
    move-result v4

    #@345
    .line 677
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@348
    const/4 v1, 0x2

    #@349
    .line 681
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@34c
    .line 686
    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    #@34f
    .line 689
    invoke-virtual {v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@352
    .line 690
    invoke-virtual {v14, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@355
    .line 692
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    #@358
    .line 697
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    #@35b
    .line 699
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    #@35e
    .line 700
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    #@361
    .line 701
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    #@364
    .line 703
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    #@367
    return-void

    #@368
    :array_368
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    #@370
    :array_370
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .registers 1

    #@0
    .line 194
    iget-boolean p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    #@2
    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .registers 1

    #@0
    .line 194
    iget-boolean p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    #@2
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/TextInputLayout;Landroid/text/Editable;)V
    .registers 2

    #@0
    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText(Landroid/text/Editable;)V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/EndCompoundLayout;
    .registers 1

    #@0
    .line 194
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/StartCompoundLayout;
    .registers 1

    #@0
    .line 194
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/IndicatorViewController;
    .registers 1

    #@0
    .line 194
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    return-object p0
.end method

.method private addPlaceholderTextView()V
    .registers 3

    #@0
    .line 2474
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_f

    #@4
    .line 2475
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@6
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@9
    .line 2476
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@f
    :cond_f
    return-void
.end method

.method private adjustFilledEditTextPaddingForLargeFont()V
    .registers 7

    #@0
    .line 967
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_65

    #@4
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@6
    const/4 v1, 0x1

    #@7
    if-eq v0, v1, :cond_a

    #@9
    goto :goto_65

    #@a
    .line 971
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast2_0(Landroid/content/Context;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_38

    #@14
    .line 972
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@16
    .line 974
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@19
    move-result v1

    #@1a
    .line 975
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v2

    #@1e
    sget v3, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_2_0_padding_top:I

    #@20
    .line 976
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@23
    move-result v2

    #@24
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@26
    .line 977
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@29
    move-result v3

    #@2a
    .line 978
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@2d
    move-result-object v4

    #@2e
    sget v5, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_2_0_padding_bottom:I

    #@30
    .line 979
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@33
    move-result v4

    #@34
    .line 972
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@37
    goto :goto_65

    #@38
    .line 980
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@3b
    move-result-object v0

    #@3c
    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_65

    #@42
    .line 981
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@44
    .line 983
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@47
    move-result v1

    #@48
    .line 984
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@4b
    move-result-object v2

    #@4c
    sget v3, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_1_3_padding_top:I

    #@4e
    .line 985
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@51
    move-result v2

    #@52
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@54
    .line 986
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@57
    move-result v3

    #@58
    .line 987
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@5b
    move-result-object v4

    #@5c
    sget v5, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_1_3_padding_bottom:I

    #@5e
    .line 988
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@61
    move-result v4

    #@62
    .line 981
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@65
    :cond_65
    :goto_65
    return-void
.end method

.method private applyBoxAttributes()V
    .registers 4

    #@0
    .line 2860
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 2864
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@b
    if-eq v0, v1, :cond_12

    #@d
    .line 2865
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@f
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@12
    .line 2868
    :cond_12
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->canDrawOutlineStroke()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_22

    #@18
    .line 2869
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1a
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    #@1c
    int-to-float v1, v1

    #@1d
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@1f
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    #@22
    .line 2872
    :cond_22
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateBoxBackgroundColor()I

    #@25
    move-result v0

    #@26
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@28
    .line 2873
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2a
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@31
    .line 2875
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxUnderlineAttributes()V

    #@34
    .line 2876
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBoxBackgroundIfNeeded()V

    #@37
    return-void
.end method

.method private applyBoxUnderlineAttributes()V
    .registers 3

    #@0
    .line 2881
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-eqz v0, :cond_37

    #@4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_37

    #@9
    .line 2885
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->canDrawStroke()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_34

    #@f
    .line 2888
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    .line 2889
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@13
    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_20

    #@19
    .line 2890
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    #@1b
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@1e
    move-result-object v1

    #@1f
    goto :goto_26

    #@20
    .line 2891
    :cond_20
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@22
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@25
    move-result-object v1

    #@26
    .line 2888
    :goto_26
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@29
    .line 2892
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2b
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@2d
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@34
    .line 2894
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    #@37
    :cond_37
    :goto_37
    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .registers 4

    #@0
    .line 4183
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    #@4
    int-to-float v1, v1

    #@5
    sub-float/2addr v0, v1

    #@6
    iput v0, p1, Landroid/graphics/RectF;->left:F

    #@8
    .line 4184
    iget v0, p1, Landroid/graphics/RectF;->right:F

    #@a
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    #@c
    int-to-float v1, v1

    #@d
    add-float/2addr v0, v1

    #@e
    iput v0, p1, Landroid/graphics/RectF;->right:F

    #@10
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .registers 4

    #@0
    .line 785
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_5f

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v0, v2, :cond_47

    #@8
    const/4 v2, 0x2

    #@9
    if-ne v0, v2, :cond_2c

    #@b
    .line 792
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@d
    if-eqz v0, :cond_1e

    #@f
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    instance-of v0, v0, Lcom/google/android/material/textfield/CutoutDrawable;

    #@13
    if-nez v0, :cond_1e

    #@15
    .line 793
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@17
    invoke-static {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->create(Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/textfield/CutoutDrawable;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1d
    goto :goto_27

    #@1e
    .line 795
    :cond_1e
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@20
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@22
    invoke-direct {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@25
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@27
    .line 797
    :goto_27
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@29
    .line 798
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2b
    goto :goto_65

    #@2c
    .line 806
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    const-string v2, " is illegal; only @BoxBackgroundMode constants are supported."

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 787
    :cond_47
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@49
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@4b
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@4e
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@50
    .line 788
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@52
    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@55
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@57
    .line 789
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@59
    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@5c
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@5e
    goto :goto_65

    #@5f
    .line 801
    :cond_5f
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@61
    .line 802
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@63
    .line 803
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@65
    :goto_65
    return-void
.end method

.method private calculateBoxBackgroundColor()I
    .registers 4

    #@0
    .line 2851
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@2
    .line 2852
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@4
    const/4 v2, 0x1

    #@5
    if-ne v1, v2, :cond_14

    #@7
    .line 2853
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;II)I

    #@d
    move-result v0

    #@e
    .line 2854
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@10
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    #@13
    move-result v0

    #@14
    :cond_14
    return v0
.end method

.method private calculateCollapsedTextBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    #@0
    .line 2758
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_65

    #@4
    .line 2761
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpBoundsRect:Landroid/graphics/Rect;

    #@6
    .line 2762
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@9
    move-result v1

    #@a
    .line 2764
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@c
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@e
    .line 2765
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@10
    const/4 v3, 0x1

    #@11
    if-eq v2, v3, :cond_4d

    #@13
    const/4 v3, 0x2

    #@14
    if-eq v2, v3, :cond_2d

    #@16
    .line 2778
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@18
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getLabelLeftBoundAlightWithPrefix(IZ)I

    #@1b
    move-result v2

    #@1c
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@1e
    .line 2779
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    #@21
    move-result v2

    #@22
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@24
    .line 2780
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@26
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getLabelRightBoundAlignedWithSuffix(IZ)I

    #@29
    move-result p1

    #@2a
    iput p1, v0, Landroid/graphics/Rect;->right:I

    #@2c
    return-object v0

    #@2d
    .line 2767
    :cond_2d
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@2f
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@31
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    #@34
    move-result v2

    #@35
    add-int/2addr v1, v2

    #@36
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@38
    .line 2768
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@3a
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    #@3d
    move-result v2

    #@3e
    sub-int/2addr v1, v2

    #@3f
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@41
    .line 2769
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@43
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@45
    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingRight()I

    #@48
    move-result v1

    #@49
    sub-int/2addr p1, v1

    #@4a
    iput p1, v0, Landroid/graphics/Rect;->right:I

    #@4c
    return-object v0

    #@4d
    .line 2772
    :cond_4d
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@4f
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getLabelLeftBoundAlightWithPrefix(IZ)I

    #@52
    move-result v2

    #@53
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@55
    .line 2773
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@57
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    #@59
    add-int/2addr v2, v3

    #@5a
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@5c
    .line 2774
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@5e
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getLabelRightBoundAlignedWithSuffix(IZ)I

    #@61
    move-result p1

    #@62
    iput p1, v0, Landroid/graphics/Rect;->right:I

    #@64
    return-object v0

    #@65
    .line 2759
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    #@67
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    #@6a
    throw p1
.end method

.method private calculateExpandedLabelBottom(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I
    .registers 5

    #@0
    .line 2830
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isSingleLineFilledTextField()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 2834
    iget p1, p2, Landroid/graphics/Rect;->top:I

    #@8
    int-to-float p1, p1

    #@9
    add-float/2addr p1, p3

    #@a
    float-to-int p1, p1

    #@b
    return p1

    #@c
    .line 2836
    :cond_c
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@e
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@10
    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    #@13
    move-result p2

    #@14
    sub-int/2addr p1, p2

    #@15
    return p1
.end method

.method private calculateExpandedLabelTop(Landroid/graphics/Rect;F)I
    .registers 4

    #@0
    .line 2822
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isSingleLineFilledTextField()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 2823
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    #@9
    move-result p1

    #@a
    int-to-float p1, p1

    #@b
    const/high16 v0, 0x40000000    # 2.0f

    #@d
    div-float/2addr p2, v0

    #@e
    sub-float/2addr p1, p2

    #@f
    float-to-int p1, p1

    #@10
    return p1

    #@11
    .line 2825
    :cond_11
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@13
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@15
    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    #@18
    move-result p2

    #@19
    add-int/2addr p1, p2

    #@1a
    return p1
.end method

.method private calculateExpandedTextBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    #@0
    .line 2805
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_2f

    #@4
    .line 2809
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpBoundsRect:Landroid/graphics/Rect;

    #@6
    .line 2811
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@8
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextHeight()F

    #@b
    move-result v1

    #@c
    .line 2813
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@e
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@10
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    #@13
    move-result v3

    #@14
    add-int/2addr v2, v3

    #@15
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@17
    .line 2814
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->calculateExpandedLabelTop(Landroid/graphics/Rect;F)I

    #@1a
    move-result v2

    #@1b
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@1d
    .line 2815
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@1f
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@21
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    #@24
    move-result v3

    #@25
    sub-int/2addr v2, v3

    #@26
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@28
    .line 2816
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->calculateExpandedLabelBottom(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I

    #@2b
    move-result p1

    #@2c
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    #@2e
    return-object v0

    #@2f
    .line 2806
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@31
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    #@34
    throw p1
.end method

.method private calculateLabelMarginTop()I
    .registers 4

    #@0
    .line 2741
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 2745
    :cond_6
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@8
    if-eqz v0, :cond_19

    #@a
    const/4 v2, 0x2

    #@b
    if-eq v0, v2, :cond_e

    #@d
    return v1

    #@e
    .line 2747
    :cond_e
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@10
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    #@13
    move-result v0

    #@14
    const/high16 v1, 0x40000000    # 2.0f

    #@16
    div-float/2addr v0, v1

    #@17
    :goto_17
    float-to-int v0, v0

    #@18
    return v0

    #@19
    .line 2749
    :cond_19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@1b
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    #@1e
    move-result v0

    #@1f
    goto :goto_17
.end method

.method private canDrawOutlineStroke()Z
    .registers 3

    #@0
    .line 2898
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_d

    #@5
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->canDrawStroke()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_d

    #@b
    const/4 v0, 0x1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0
.end method

.method private canDrawStroke()Z
    .registers 3

    #@0
    .line 2902
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    #@2
    const/4 v1, -0x1

    #@3
    if-le v0, v1, :cond_b

    #@5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@7
    if-eqz v0, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0
.end method

.method private closeCutout()V
    .registers 2

    #@0
    .line 4177
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 4178
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    check-cast v0, Lcom/google/android/material/textfield/CutoutDrawable;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->removeCutout()V

    #@d
    :cond_d
    return-void
.end method

.method private collapseHint(Z)V
    .registers 3

    #@0
    .line 4127
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_f

    #@4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 4128
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@f
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    #@11
    if-eqz p1, :cond_1b

    #@13
    .line 4130
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    #@15
    if-eqz p1, :cond_1b

    #@17
    .line 4131
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    #@1a
    goto :goto_20

    #@1b
    .line 4133
    :cond_1b
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@1d
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    #@20
    :goto_20
    const/4 p1, 0x0

    #@21
    .line 4135
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@23
    .line 4136
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2c

    #@29
    .line 4137
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    #@2c
    .line 4139
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText()V

    #@2f
    .line 4141
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@31
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->onHintStateChanged(Z)V

    #@34
    .line 4142
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@36
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->onHintStateChanged(Z)V

    #@39
    return-void
.end method

.method private createPlaceholderFadeTransition()Landroidx/transition/Fade;
    .registers 5

    #@0
    .line 2432
    new-instance v0, Landroidx/transition/Fade;

    #@2
    invoke-direct {v0}, Landroidx/transition/Fade;-><init>()V

    #@5
    .line 2433
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    sget v2, Lcom/google/android/material/R$attr;->motionDurationShort2:I

    #@b
    const/16 v3, 0x57

    #@d
    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@10
    move-result v1

    #@11
    int-to-long v1, v1

    #@12
    invoke-virtual {v0, v1, v2}, Landroidx/transition/Fade;->setDuration(J)Landroidx/transition/Transition;

    #@15
    .line 2435
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@18
    move-result-object v1

    #@19
    sget v2, Lcom/google/android/material/R$attr;->motionEasingLinearInterpolator:I

    #@1b
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1d
    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroidx/transition/Fade;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    #@24
    return-object v0
.end method

.method private cutoutEnabled()Z
    .registers 2

    #@0
    .line 4146
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@2
    if-eqz v0, :cond_14

    #@4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    #@6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_14

    #@c
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@e
    instance-of v0, v0, Lcom/google/android/material/textfield/CutoutDrawable;

    #@10
    if-eqz v0, :cond_14

    #@12
    const/4 v0, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    :goto_15
    return v0
.end method

.method private dispatchOnEditTextAttached()V
    .registers 3

    #@0
    .line 3944
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    #@12
    .line 3945
    invoke-interface {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;->onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method private drawBoxUnderline(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    .line 4102
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-eqz v0, :cond_3e

    #@4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@6
    if-eqz v0, :cond_3e

    #@8
    .line 4105
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    #@b
    .line 4107
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@d
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_3e

    #@13
    .line 4108
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@15
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    #@18
    move-result-object v0

    #@19
    .line 4109
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1b
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    #@1e
    move-result-object v1

    #@1f
    .line 4113
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@21
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    #@24
    move-result v2

    #@25
    .line 4114
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    #@28
    move-result v3

    #@29
    .line 4116
    iget v4, v1, Landroid/graphics/Rect;->left:I

    #@2b
    .line 4117
    invoke-static {v3, v4, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    #@2e
    move-result v4

    #@2f
    iput v4, v0, Landroid/graphics/Rect;->left:I

    #@31
    .line 4118
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@33
    .line 4119
    invoke-static {v3, v1, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    #@36
    move-result v1

    #@37
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@39
    .line 4121
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3b
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    #@3e
    :cond_3e
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 4096
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 4097
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    #@9
    :cond_9
    return-void
.end method

.method private expandHint(Z)V
    .registers 3

    #@0
    .line 4338
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_f

    #@4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 4339
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    if-eqz p1, :cond_1a

    #@12
    .line 4341
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    #@14
    if-eqz p1, :cond_1a

    #@16
    .line 4342
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    #@19
    goto :goto_1f

    #@1a
    .line 4344
    :cond_1a
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@1c
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    #@1f
    .line 4346
    :goto_1f
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    #@22
    move-result p1

    #@23
    if-eqz p1, :cond_32

    #@25
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@27
    check-cast p1, Lcom/google/android/material/textfield/CutoutDrawable;

    #@29
    invoke-virtual {p1}, Lcom/google/android/material/textfield/CutoutDrawable;->hasCutout()Z

    #@2c
    move-result p1

    #@2d
    if-eqz p1, :cond_32

    #@2f
    .line 4347
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->closeCutout()V

    #@32
    :cond_32
    const/4 p1, 0x1

    #@33
    .line 4349
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@35
    .line 4350
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hidePlaceholderText()V

    #@38
    .line 4352
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@3a
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->onHintStateChanged(Z)V

    #@3d
    .line 4353
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@3f
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->onHintStateChanged(Z)V

    #@42
    return-void
.end method

.method private getDropDownMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 6

    #@0
    .line 927
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_shape_corner_size_small_component:I

    #@6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@9
    move-result v0

    #@a
    int-to-float v0, v0

    #@b
    if-eqz p1, :cond_f

    #@d
    move p1, v0

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    .line 931
    :goto_10
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@12
    instance-of v2, v1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@14
    if-eqz v2, :cond_1d

    #@16
    .line 932
    check-cast v1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@18
    invoke-virtual {v1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getPopupElevation()F

    #@1b
    move-result v1

    #@1c
    goto :goto_28

    #@1d
    .line 933
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v1

    #@21
    sget v2, Lcom/google/android/material/R$dimen;->m3_comp_outlined_autocomplete_menu_container_elevation:I

    #@23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@26
    move-result v1

    #@27
    int-to-float v1, v1

    #@28
    .line 936
    :goto_28
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v2

    #@2c
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    #@2e
    .line 937
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@31
    move-result v2

    #@32
    .line 939
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@35
    move-result-object v3

    #@36
    .line 940
    invoke-virtual {v3, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@39
    move-result-object v3

    #@3a
    .line 941
    invoke-virtual {v3, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@3d
    move-result-object p1

    #@3e
    .line 942
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@41
    move-result-object p1

    #@42
    .line 943
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@45
    move-result-object p1

    #@46
    .line 944
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@49
    move-result-object p1

    #@4a
    .line 946
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v0

    #@4e
    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@51
    move-result-object v0

    #@52
    .line 947
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@55
    const/4 p1, 0x0

    #@56
    .line 948
    invoke-virtual {v0, p1, v2, p1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPadding(IIII)V

    #@59
    return-object v0
.end method

.method private getEditTextBoxBackground()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 825
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    #@4
    if-eqz v1, :cond_37

    #@6
    invoke-static {v0}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_37

    #@d
    .line 829
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@f
    sget v1, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    #@11
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@14
    move-result v0

    #@15
    .line 830
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@17
    const/4 v2, 0x2

    #@18
    if-ne v1, v2, :cond_27

    #@1a
    .line 832
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@20
    sget-object v3, Lcom/google/android/material/textfield/TextInputLayout;->EDIT_TEXT_BACKGROUND_RIPPLE_STATE:[[I

    #@22
    .line 831
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->getOutlinedBoxBackgroundWithRipple(Landroid/content/Context;Lcom/google/android/material/shape/MaterialShapeDrawable;I[[I)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    :cond_27
    const/4 v2, 0x1

    #@28
    if-ne v1, v2, :cond_35

    #@2a
    .line 834
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2c
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@2e
    sget-object v3, Lcom/google/android/material/textfield/TextInputLayout;->EDIT_TEXT_BACKGROUND_RIPPLE_STATE:[[I

    #@30
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->getFilledBoxBackgroundWithRipple(Lcom/google/android/material/shape/MaterialShapeDrawable;II[[I)Landroid/graphics/drawable/Drawable;

    #@33
    move-result-object v0

    #@34
    return-object v0

    #@35
    :cond_35
    const/4 v0, 0x0

    #@36
    return-object v0

    #@37
    .line 826
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@39
    return-object v0
.end method

.method private static getFilledBoxBackgroundWithRipple(Lcom/google/android/material/shape/MaterialShapeDrawable;II[[I)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    const v0, 0x3dcccccd    # 0.1f

    #@3
    .line 873
    invoke-static {p2, p1, v0}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@6
    move-result p2

    #@7
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [I

    #@a
    const/4 v1, 0x0

    #@b
    aput p2, v0, v1

    #@d
    const/4 p2, 0x1

    #@e
    aput p1, v0, p2

    #@10
    .line 878
    new-instance p1, Landroid/content/res/ColorStateList;

    #@12
    invoke-direct {p1, p3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@15
    .line 879
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    #@17
    invoke-direct {p2, p1, p0, p0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@1a
    return-object p2
.end method

.method private getLabelLeftBoundAlightWithPrefix(IZ)I
    .registers 4

    #@0
    .line 2786
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    #@5
    move-result v0

    #@6
    add-int/2addr p1, v0

    #@7
    .line 2787
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_21

    #@d
    if-nez p2, :cond_21

    #@f
    .line 2789
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    #@12
    move-result-object p2

    #@13
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@16
    move-result p2

    #@17
    sub-int/2addr p1, p2

    #@18
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    #@1b
    move-result-object p2

    #@1c
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingLeft()I

    #@1f
    move-result p2

    #@20
    add-int/2addr p1, p2

    #@21
    :cond_21
    return p1
.end method

.method private getLabelRightBoundAlignedWithSuffix(IZ)I
    .registers 4

    #@0
    .line 2795
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    #@5
    move-result v0

    #@6
    sub-int/2addr p1, v0

    #@7
    .line 2796
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_21

    #@d
    if-eqz p2, :cond_21

    #@f
    .line 2798
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    #@12
    move-result-object p2

    #@13
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@16
    move-result p2

    #@17
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    #@1e
    move-result v0

    #@1f
    sub-int/2addr p2, v0

    #@20
    add-int/2addr p1, p2

    #@21
    :cond_21
    return p1
.end method

.method private getOrCreateFilledDropDownMenuBackground()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 915
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->filledDropDownMenuBackground:Landroid/graphics/drawable/StateListDrawable;

    #@2
    if-nez v0, :cond_26

    #@4
    .line 916
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@6
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->filledDropDownMenuBackground:Landroid/graphics/drawable/StateListDrawable;

    #@b
    const/4 v1, 0x1

    #@c
    new-array v1, v1, [I

    #@e
    const v2, 0x10100aa

    #@11
    const/4 v3, 0x0

    #@12
    aput v2, v1, v3

    #@14
    .line 919
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v2

    #@18
    .line 917
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@1b
    .line 920
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->filledDropDownMenuBackground:Landroid/graphics/drawable/StateListDrawable;

    #@1d
    new-array v1, v3, [I

    #@1f
    invoke-direct {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->getDropDownMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@26
    .line 922
    :cond_26
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->filledDropDownMenuBackground:Landroid/graphics/drawable/StateListDrawable;

    #@28
    return-object v0
.end method

.method private getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 908
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->outlinedDropDownMenuBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-nez v0, :cond_b

    #@4
    const/4 v0, 0x1

    #@5
    .line 909
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->getDropDownMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->outlinedDropDownMenuBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@b
    .line 911
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->outlinedDropDownMenuBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@d
    return-object v0
.end method

.method private static getOutlinedBoxBackgroundWithRipple(Landroid/content/Context;Lcom/google/android/material/shape/MaterialShapeDrawable;I[[I)Landroid/graphics/drawable/Drawable;
    .registers 10

    #@0
    .line 844
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    #@2
    const-string v1, "TextInputLayout"

    #@4
    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    #@7
    move-result p0

    #@8
    .line 845
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a
    .line 846
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@11
    const v1, 0x3dcccccd    # 0.1f

    #@14
    .line 847
    invoke-static {p2, p0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@17
    move-result p2

    #@18
    const/4 v1, 0x2

    #@19
    new-array v2, v1, [I

    #@1b
    const/4 v3, 0x0

    #@1c
    aput p2, v2, v3

    #@1e
    const/4 v4, 0x1

    #@1f
    aput v3, v2, v4

    #@21
    .line 849
    new-instance v5, Landroid/content/res/ColorStateList;

    #@23
    invoke-direct {v5, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@26
    invoke-virtual {v0, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@29
    .line 852
    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    #@2c
    new-array v2, v1, [I

    #@2e
    aput p2, v2, v3

    #@30
    aput p0, v2, v4

    #@32
    .line 854
    new-instance p0, Landroid/content/res/ColorStateList;

    #@34
    invoke-direct {p0, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@37
    .line 855
    new-instance p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@39
    .line 856
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@3c
    move-result-object p3

    #@3d
    invoke-direct {p2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@40
    const/4 p3, -0x1

    #@41
    .line 857
    invoke-virtual {p2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    #@44
    .line 858
    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    #@46
    invoke-direct {p3, p0, v0, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@49
    new-array p0, v1, [Landroid/graphics/drawable/Drawable;

    #@4b
    aput-object p3, p0, v3

    #@4d
    aput-object p1, p0, v4

    #@4f
    .line 860
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    #@51
    invoke-direct {p1, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@54
    return-object p1
.end method

.method private hidePlaceholderText()V
    .registers 3

    #@0
    .line 2466
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_19

    #@4
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    #@6
    if-eqz v1, :cond_19

    #@8
    const/4 v1, 0x0

    #@9
    .line 2467
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@c
    .line 2468
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@e
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderFadeOut:Landroidx/transition/Fade;

    #@10
    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@13
    .line 2469
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@15
    const/4 v1, 0x4

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@19
    :cond_19
    return-void
.end method

.method private isSingleLineFilledTextField()Z
    .registers 3

    #@0
    .line 2840
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_e

    #@5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@7
    .line 2841
    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    #@a
    move-result v0

    #@b
    if-gt v0, v1, :cond_e

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v1, 0x0

    #@f
    :goto_f
    return v1
.end method

.method static synthetic lambda$new$0(Landroid/text/Editable;)I
    .registers 1

    #@0
    if-eqz p0, :cond_7

    #@2
    .line 244
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@5
    move-result p0

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    :goto_8
    return p0
.end method

.method private onApplyBoxBackgroundMode()V
    .registers 2

    #@0
    .line 773
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->assignBoxBackgroundByMode()V

    #@3
    .line 774
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBoxBackgroundIfNeeded()V

    #@6
    .line 775
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@9
    .line 776
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateBoxCollapsedPaddingTop()V

    #@c
    .line 777
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->adjustFilledEditTextPaddingForLargeFont()V

    #@f
    .line 778
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 779
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    #@16
    .line 781
    :cond_16
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->setDropDownMenuBackgroundIfNeeded()V

    #@19
    return-void
.end method

.method private openCutout()V
    .registers 6

    #@0
    .line 4150
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 4153
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@9
    .line 4154
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@b
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@d
    .line 4155
    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    #@10
    move-result v2

    #@11
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@13
    invoke-virtual {v3}, Landroid/widget/EditText;->getGravity()I

    #@16
    move-result v3

    #@17
    .line 4154
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;II)V

    #@1a
    .line 4156
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x0

    #@1f
    cmpg-float v1, v1, v2

    #@21
    if-lez v1, :cond_51

    #@23
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@26
    move-result v1

    #@27
    cmpg-float v1, v1, v2

    #@29
    if-gtz v1, :cond_2c

    #@2b
    goto :goto_51

    #@2c
    .line 4159
    :cond_2c
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->applyCutoutPadding(Landroid/graphics/RectF;)V

    #@2f
    .line 4165
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingLeft()I

    #@32
    move-result v1

    #@33
    neg-int v1, v1

    #@34
    int-to-float v1, v1

    #@35
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    #@38
    move-result v2

    #@39
    neg-int v2, v2

    #@3a
    int-to-float v2, v2

    #@3b
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@3e
    move-result v3

    #@3f
    const/high16 v4, 0x40000000    # 2.0f

    #@41
    div-float/2addr v3, v4

    #@42
    sub-float/2addr v2, v3

    #@43
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    #@45
    int-to-float v3, v3

    #@46
    add-float/2addr v2, v3

    #@47
    .line 4164
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    #@4a
    .line 4166
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@4c
    check-cast v1, Lcom/google/android/material/textfield/CutoutDrawable;

    #@4e
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    #@51
    :cond_51
    :goto_51
    return-void
.end method

.method private recalculateCutout()V
    .registers 2

    #@0
    .line 4170
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@8
    if-nez v0, :cond_10

    #@a
    .line 4171
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->closeCutout()V

    #@d
    .line 4172
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    #@10
    :cond_10
    return-void
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .registers 6

    #@0
    .line 2671
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1a

    #@7
    .line 2672
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 2673
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    #@e
    .line 2674
    instance-of v3, v2, Landroid/view/ViewGroup;

    #@10
    if-eqz v3, :cond_17

    #@12
    .line 2675
    check-cast v2, Landroid/view/ViewGroup;

    #@14
    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    #@17
    :cond_17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_5

    #@1a
    :cond_1a
    return-void
.end method

.method private removePlaceholderTextView()V
    .registers 3

    #@0
    .line 2481
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_9

    #@4
    const/16 v1, 0x8

    #@6
    .line 2482
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@9
    :cond_9
    return-void
.end method

.method private setDropDownMenuBackgroundIfNeeded()V
    .registers 4

    #@0
    .line 891
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    #@4
    if-nez v1, :cond_7

    #@6
    return-void

    #@7
    .line 894
    :cond_7
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    #@9
    .line 896
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v1

    #@d
    if-nez v1, :cond_26

    #@f
    .line 897
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@11
    const/4 v2, 0x2

    #@12
    if-ne v1, v2, :cond_1c

    #@14
    .line 899
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v1

    #@18
    .line 898
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1b
    goto :goto_26

    #@1c
    :cond_1c
    const/4 v2, 0x1

    #@1d
    if-ne v1, v2, :cond_26

    #@1f
    .line 902
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateFilledDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v1

    #@23
    .line 901
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@26
    :cond_26
    :goto_26
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .registers 6

    #@0
    .line 1469
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-nez v0, :cond_e0

    #@4
    .line 1473
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconMode()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x3

    #@9
    if-eq v0, v1, :cond_16

    #@b
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    #@d
    if-nez v0, :cond_16

    #@f
    const-string v0, "TextInputLayout"

    #@11
    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    #@13
    .line 1474
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1480
    :cond_16
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@18
    .line 1481
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->minEms:I

    #@1a
    const/4 v1, -0x1

    #@1b
    if-eq v0, v1, :cond_21

    #@1d
    .line 1482
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    #@20
    goto :goto_26

    #@21
    .line 1484
    :cond_21
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->minWidth:I

    #@23
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    #@26
    .line 1486
    :goto_26
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxEms:I

    #@28
    if-eq v0, v1, :cond_2e

    #@2a
    .line 1487
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    #@2d
    goto :goto_33

    #@2e
    .line 1489
    :cond_2e
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxWidth:I

    #@30
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    #@33
    :goto_33
    const/4 v0, 0x0

    #@34
    .line 1491
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundApplied:Z

    #@36
    .line 1492
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    #@39
    .line 1493
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    #@3b
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    #@3e
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    #@41
    .line 1496
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@43
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@45
    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    #@4c
    .line 1497
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@4e
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@50
    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    #@53
    move-result v2

    #@54
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextSize(F)V

    #@57
    .line 1499
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@59
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@5b
    invoke-virtual {v2}, Landroid/widget/EditText;->getLetterSpacing()F

    #@5e
    move-result v2

    #@5f
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedLetterSpacing(F)V

    #@62
    .line 1502
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@64
    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    #@67
    move-result v1

    #@68
    .line 1503
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@6a
    and-int/lit8 v3, v1, -0x71

    #@6c
    or-int/lit8 v3, v3, 0x30

    #@6e
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    #@71
    .line 1505
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@73
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    #@76
    .line 1508
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@78
    new-instance v2, Lcom/google/android/material/textfield/TextInputLayout$1;

    #@7a
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    #@7d
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@80
    .line 1529
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    #@82
    if-nez v1, :cond_8c

    #@84
    .line 1530
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@86
    invoke-virtual {v1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    #@89
    move-result-object v1

    #@8a
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    #@8c
    .line 1534
    :cond_8c
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@8e
    const/4 v2, 0x1

    #@8f
    if-eqz v1, :cond_ac

    #@91
    .line 1535
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    #@93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_aa

    #@99
    .line 1537
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@9b
    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    #@9e
    move-result-object v1

    #@9f
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    #@a1
    .line 1538
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    #@a4
    .line 1540
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@a6
    const/4 v3, 0x0

    #@a7
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@aa
    .line 1542
    :cond_aa
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    #@ac
    .line 1545
    :cond_ac
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@ae
    if-eqz v1, :cond_b9

    #@b0
    .line 1546
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@b2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(Landroid/text/Editable;)V

    #@b9
    .line 1548
    :cond_b9
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    #@bc
    .line 1550
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@be
    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    #@c1
    .line 1552
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@c3
    invoke-virtual {v1}, Lcom/google/android/material/textfield/StartCompoundLayout;->bringToFront()V

    #@c6
    .line 1553
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@c8
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->bringToFront()V

    #@cb
    .line 1554
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->dispatchOnEditTextAttached()V

    #@ce
    .line 1555
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@d0
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextViewPadding()V

    #@d3
    .line 1559
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    #@d6
    move-result v1

    #@d7
    if-nez v1, :cond_dc

    #@d9
    .line 1560
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    #@dc
    .line 1564
    :cond_dc
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    #@df
    return-void

    #@e0
    .line 1470
    :cond_e0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@e2
    const-string v0, "We already have an EditText, can only have one"

    #@e4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e7
    throw p1
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 1798
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    #@2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_16

    #@8
    .line 1799
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    #@a
    .line 1800
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    #@f
    .line 1802
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@11
    if-nez p1, :cond_16

    #@13
    .line 1803
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    #@16
    :cond_16
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .registers 3

    #@0
    .line 2417
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    if-eqz p1, :cond_b

    #@7
    .line 2423
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->addPlaceholderTextView()V

    #@a
    goto :goto_11

    #@b
    .line 2425
    :cond_b
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->removePlaceholderTextView()V

    #@e
    const/4 v0, 0x0

    #@f
    .line 2426
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@11
    .line 2428
    :goto_11
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    #@13
    return-void
.end method

.method private shouldUpdateEndDummyDrawable()Z
    .registers 2

    #@0
    .line 4037
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isErrorIconVisible()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1e

    #@8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@a
    .line 4038
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->hasEndIcon()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_16

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEndIconVisible()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1e

    #@16
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@18
    .line 4039
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getSuffixText()Ljava/lang/CharSequence;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_28

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@20
    .line 4040
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getMeasuredWidth()I

    #@23
    move-result v0

    #@24
    if-lez v0, :cond_28

    #@26
    const/4 v0, 0x1

    #@27
    goto :goto_29

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    :goto_29
    return v0
.end method

.method private shouldUpdateStartDummyDrawable()Z
    .registers 2

    #@0
    .line 4031
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_16

    #@6
    .line 4032
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_20

    #@c
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_20

    #@16
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@18
    .line 4033
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getMeasuredWidth()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_20

    #@1e
    const/4 v0, 0x1

    #@1f
    goto :goto_21

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    :goto_21
    return v0
.end method

.method private showPlaceholderText()V
    .registers 3

    #@0
    .line 2454
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_2e

    #@4
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    #@6
    if-eqz v0, :cond_2e

    #@8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    #@a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2e

    #@10
    .line 2455
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@12
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@17
    .line 2456
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@19
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderFadeIn:Landroidx/transition/Fade;

    #@1b
    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@1e
    .line 2457
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@24
    .line 2458
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@26
    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    #@29
    .line 2460
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    #@2b
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@2e
    :cond_2e
    return-void
.end method

.method private updateBoxCollapsedPaddingTop()V
    .registers 3

    #@0
    .line 953
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_32

    #@5
    .line 954
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast2_0(Landroid/content/Context;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1c

    #@f
    .line 956
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v0

    #@13
    sget v1, Lcom/google/android/material/R$dimen;->material_font_2_0_box_collapsed_padding_top:I

    #@15
    .line 957
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    #@1b
    goto :goto_32

    #@1c
    .line 958
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_32

    #@26
    .line 960
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@29
    move-result-object v0

    #@2a
    sget v1, Lcom/google/android/material/R$dimen;->material_font_1_3_box_collapsed_padding_top:I

    #@2c
    .line 961
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    #@32
    :cond_32
    :goto_32
    return-void
.end method

.method private updateBoxUnderlineBounds(Landroid/graphics/Rect;)V
    .registers 7

    #@0
    .line 4072
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-eqz v0, :cond_14

    #@4
    .line 4073
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@6
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    #@8
    sub-int/2addr v0, v1

    #@9
    .line 4074
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@b
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@d
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@f
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@11
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    #@14
    .line 4076
    :cond_14
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@16
    if-eqz v0, :cond_28

    #@18
    .line 4077
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@1a
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    #@1c
    sub-int/2addr v0, v1

    #@1d
    .line 4078
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1f
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@21
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@23
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@25
    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    #@28
    :cond_28
    return-void
.end method

.method private updateCounter()V
    .registers 2

    #@0
    .line 2319
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 2320
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_e

    #@a
    :cond_a
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@d
    move-result-object v0

    #@e
    :goto_e
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(Landroid/text/Editable;)V

    #@11
    :cond_11
    return-void
.end method

.method private static updateCounterContentDescription(Landroid/content/Context;Landroid/widget/TextView;IIZ)V
    .registers 7

    #@0
    if-eqz p4, :cond_5

    #@2
    .line 2362
    sget p4, Lcom/google/android/material/R$string;->character_counter_overflowed_content_description:I

    #@4
    goto :goto_7

    #@5
    .line 2363
    :cond_5
    sget p4, Lcom/google/android/material/R$string;->character_counter_content_description:I

    #@7
    :goto_7
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [Ljava/lang/Object;

    #@a
    const/4 v1, 0x0

    #@b
    .line 2364
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p2

    #@f
    aput-object p2, v0, v1

    #@11
    const/4 p2, 0x1

    #@12
    .line 2365
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object p3

    #@16
    aput-object p3, v0, p2

    #@18
    .line 2360
    invoke-virtual {p0, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    .line 2359
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1f
    return-void
.end method

.method private updateCounterTextAppearanceAndColor()V
    .registers 3

    #@0
    .line 2702
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_2a

    #@4
    .line 2704
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@6
    if-eqz v1, :cond_b

    #@8
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    #@a
    goto :goto_d

    #@b
    :cond_b
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    #@d
    .line 2703
    :goto_d
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    #@10
    .line 2705
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@12
    if-nez v0, :cond_1d

    #@14
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    #@16
    if-eqz v0, :cond_1d

    #@18
    .line 2706
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@1d
    .line 2708
    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@1f
    if-eqz v0, :cond_2a

    #@21
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextColor:Landroid/content/res/ColorStateList;

    #@23
    if-eqz v0, :cond_2a

    #@25
    .line 2709
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@2a
    :cond_2a
    return-void
.end method

.method private updateCursorColor(Z)V
    .registers 4

    #@0
    .line 4321
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    sget v1, Lcom/google/android/material/R$attr;->colorControlActivated:I

    #@6
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColorStateListOrNull(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object v0

    #@a
    .line 4322
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@c
    if-eqz v1, :cond_2e

    #@e
    invoke-virtual {v1}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_2e

    #@14
    if-nez v0, :cond_17

    #@16
    goto :goto_2e

    #@17
    .line 4327
    :cond_17
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@19
    invoke-virtual {v1}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v1

    #@1d
    if-eqz p1, :cond_2b

    #@1f
    .line 4332
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@21
    if-eqz p1, :cond_24

    #@23
    goto :goto_2a

    #@24
    :cond_24
    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@26
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@29
    move-result-object p1

    #@2a
    :goto_2a
    move-object v0, p1

    #@2b
    .line 4334
    :cond_2b
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@2e
    :cond_2e
    :goto_2e
    return-void
.end method

.method private updateEditTextHeightBasedOnIcon()Z
    .registers 4

    #@0
    .line 3166
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 3173
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getMeasuredHeight()I

    #@b
    move-result v0

    #@c
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@e
    invoke-virtual {v2}, Lcom/google/android/material/textfield/StartCompoundLayout;->getMeasuredHeight()I

    #@11
    move-result v2

    #@12
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v0

    #@16
    .line 3174
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@18
    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    #@1b
    move-result v2

    #@1c
    if-ge v2, v0, :cond_25

    #@1e
    .line 3175
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@20
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMinimumHeight(I)V

    #@23
    const/4 v0, 0x1

    #@24
    return v0

    #@25
    :cond_25
    return v1
.end method

.method private updateInputLayoutMargins()V
    .registers 4

    #@0
    .line 1570
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_1c

    #@5
    .line 1571
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    #@d
    .line 1572
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    #@10
    move-result v1

    #@11
    .line 1574
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@13
    if-eq v1, v2, :cond_1c

    #@15
    .line 1575
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@17
    .line 1576
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@19
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    #@1c
    :cond_1c
    return-void
.end method

.method private updateLabelState(ZZ)V
    .registers 10

    #@0
    .line 1595
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    #@3
    move-result v0

    #@4
    .line 1596
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@6
    const/4 v2, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    if-eqz v1, :cond_16

    #@a
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@d
    move-result-object v1

    #@e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_16

    #@14
    move v1, v2

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v1, v3

    #@17
    .line 1597
    :goto_17
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@19
    if-eqz v4, :cond_23

    #@1b
    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_23

    #@21
    move v4, v2

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v4, v3

    #@24
    .line 1600
    :goto_24
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    #@26
    if-eqz v5, :cond_2d

    #@28
    .line 1601
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2a
    invoke-virtual {v6, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedAndExpandedTextColor(Landroid/content/res/ColorStateList;)V

    #@2d
    :cond_2d
    if-nez v0, :cond_4d

    #@2f
    .line 1607
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    #@31
    if-eqz v0, :cond_41

    #@33
    new-array v2, v2, [I

    #@35
    const v5, -0x101009e

    #@38
    aput v5, v2, v3

    #@3a
    .line 1608
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    #@3c
    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@3f
    move-result v0

    #@40
    goto :goto_43

    #@41
    .line 1610
    :cond_41
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    #@43
    .line 1611
    :goto_43
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@45
    .line 1612
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@48
    move-result-object v0

    #@49
    .line 1611
    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedAndExpandedTextColor(Landroid/content/res/ColorStateList;)V

    #@4c
    goto :goto_7c

    #@4d
    .line 1613
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowError()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_5f

    #@53
    .line 1614
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@55
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@57
    .line 1615
    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewTextColors()Landroid/content/res/ColorStateList;

    #@5a
    move-result-object v2

    #@5b
    .line 1614
    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedAndExpandedTextColor(Landroid/content/res/ColorStateList;)V

    #@5e
    goto :goto_7c

    #@5f
    .line 1616
    :cond_5f
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@61
    if-eqz v0, :cond_71

    #@63
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@65
    if-eqz v0, :cond_71

    #@67
    .line 1617
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@69
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedAndExpandedTextColor(Landroid/content/res/ColorStateList;)V

    #@70
    goto :goto_7c

    #@71
    :cond_71
    if-eqz v4, :cond_7c

    #@73
    .line 1618
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    #@75
    if-eqz v0, :cond_7c

    #@77
    .line 1619
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@79
    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    #@7c
    :cond_7c
    :goto_7c
    if-nez v1, :cond_95

    #@7e
    .line 1622
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    #@80
    if-eqz v0, :cond_95

    #@82
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    #@85
    move-result v0

    #@86
    if-eqz v0, :cond_8b

    #@88
    if-eqz v4, :cond_8b

    #@8a
    goto :goto_95

    #@8b
    :cond_8b
    if-nez p2, :cond_91

    #@8d
    .line 1629
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@8f
    if-nez p2, :cond_9e

    #@91
    .line 1630
    :cond_91
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->expandHint(Z)V

    #@94
    goto :goto_9e

    #@95
    :cond_95
    :goto_95
    if-nez p2, :cond_9b

    #@97
    .line 1624
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@99
    if-eqz p2, :cond_9e

    #@9b
    .line 1625
    :cond_9b
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->collapseHint(Z)V

    #@9e
    :cond_9e
    :goto_9e
    return-void
.end method

.method private updatePlaceholderMeasurementsBasedOnEditText()V
    .registers 6

    #@0
    .line 3183
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_2e

    #@4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@6
    if-eqz v0, :cond_2e

    #@8
    .line 3185
    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    #@b
    move-result v0

    #@c
    .line 3186
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    #@11
    .line 3188
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@13
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@15
    .line 3189
    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    #@18
    move-result v1

    #@19
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@1b
    .line 3190
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    #@1e
    move-result v2

    #@1f
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@21
    .line 3191
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    #@24
    move-result v3

    #@25
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@27
    .line 3192
    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    #@2a
    move-result v4

    #@2b
    .line 3188
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    #@2e
    :cond_2e
    return-void
.end method

.method private updatePlaceholderText()V
    .registers 2

    #@0
    .line 2441
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@9
    move-result-object v0

    #@a
    :goto_a
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText(Landroid/text/Editable;)V

    #@d
    return-void
.end method

.method private updatePlaceholderText(Landroid/text/Editable;)V
    .registers 3

    #@0
    .line 2445
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->lengthCounter:Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;->countLength(Landroid/text/Editable;)I

    #@5
    move-result p1

    #@6
    if-nez p1, :cond_10

    #@8
    .line 2446
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@a
    if-nez p1, :cond_10

    #@c
    .line 2447
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->showPlaceholderText()V

    #@f
    goto :goto_13

    #@10
    .line 2449
    :cond_10
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hidePlaceholderText()V

    #@13
    :goto_13
    return-void
.end method

.method private updateStrokeErrorColor(ZZ)V
    .registers 7

    #@0
    .line 4300
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@5
    move-result v0

    #@6
    .line 4301
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@8
    const/4 v2, 0x2

    #@9
    new-array v3, v2, [I

    #@b
    fill-array-data v3, :array_2a

    #@e
    .line 4302
    invoke-virtual {v1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@11
    move-result v1

    #@12
    .line 4305
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@14
    new-array v2, v2, [I

    #@16
    fill-array-data v2, :array_32

    #@19
    .line 4306
    invoke-virtual {v3, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1c
    move-result v2

    #@1d
    if-eqz p1, :cond_22

    #@1f
    .line 4310
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@21
    goto :goto_29

    #@22
    :cond_22
    if-eqz p2, :cond_27

    #@24
    .line 4312
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@26
    goto :goto_29

    #@27
    .line 4314
    :cond_27
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@29
    :goto_29
    return-void

    #@2a
    :array_2a
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    #@32
    :array_32
    .array-data 4
        0x10102fe
        0x101009e
    .end array-data
.end method


# virtual methods
.method public addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V
    .registers 3

    #@0
    .line 3741
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    .line 3742
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@7
    if-eqz v0, :cond_c

    #@9
    .line 3743
    invoke-interface {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;->onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V

    #@c
    :cond_c
    return-void
.end method

.method public addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V
    .registers 3

    #@0
    .line 3713
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    #@5
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    .line 709
    instance-of v0, p1, Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_24

    #@4
    .line 712
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    #@6
    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@9
    .line 713
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@b
    and-int/lit8 v0, v0, -0x71

    #@d
    or-int/lit8 v0, v0, 0x10

    #@f
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@11
    .line 714
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@13
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@16
    .line 718
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@18
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1b
    .line 719
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    #@1e
    .line 721
    check-cast p1, Landroid/widget/EditText;

    #@20
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    #@23
    goto :goto_27

    #@24
    .line 724
    :cond_24
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@27
    :goto_27
    return-void
.end method

.method animateToExpansionFraction(F)V
    .registers 6

    #@0
    .line 4358
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    #@5
    move-result v0

    #@6
    cmpl-float v0, v0, p1

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 4361
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@d
    if-nez v0, :cond_41

    #@f
    .line 4362
    new-instance v0, Landroid/animation/ValueAnimator;

    #@11
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@14
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@16
    .line 4364
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    sget v2, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@1c
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1e
    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@21
    move-result-object v1

    #@22
    .line 4363
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@25
    .line 4367
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@27
    .line 4368
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v1

    #@2b
    sget v2, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    #@2d
    const/16 v3, 0xa7

    #@2f
    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@32
    move-result v1

    #@33
    int-to-long v1, v1

    #@34
    .line 4367
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@37
    .line 4370
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@39
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$4;

    #@3b
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$4;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    #@3e
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@41
    .line 4378
    :cond_41
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@43
    const/4 v1, 0x2

    #@44
    new-array v1, v1, [F

    #@46
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@48
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    #@4b
    move-result v2

    #@4c
    const/4 v3, 0x0

    #@4d
    aput v2, v1, v3

    #@4f
    const/4 v2, 0x1

    #@50
    aput p1, v1, v2

    #@52
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@55
    .line 4379
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    #@57
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@5a
    return-void
.end method

.method public clearOnEditTextAttachedListeners()V
    .registers 2

    #@0
    .line 3759
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method public clearOnEndIconChangedListeners()V
    .registers 2

    #@0
    .line 3728
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->clearOnEndIconChangedListeners()V

    #@5
    return-void
.end method

.method cutoutIsOpen()Z
    .registers 2

    #@0
    .line 4189
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    check-cast v0, Lcom/google/android/material/textfield/CutoutDrawable;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->hasCutout()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 7

    #@0
    .line 1429
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 1430
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    #@7
    return-void

    #@8
    .line 1434
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    #@a
    const/4 v2, 0x0

    #@b
    if-eqz v1, :cond_30

    #@d
    .line 1437
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    #@f
    .line 1439
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    #@11
    .line 1440
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    .line 1441
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@17
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    #@19
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@1c
    .line 1443
    :try_start_1c
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_27

    #@1f
    .line 1445
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@21
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@24
    .line 1446
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    #@26
    goto :goto_69

    #@27
    :catchall_27
    move-exception p1

    #@28
    .line 1445
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2a
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@2d
    .line 1446
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    #@2f
    .line 1447
    throw p1

    #@30
    .line 1451
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    #@37
    .line 1452
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    #@3a
    .line 1453
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    #@3d
    .line 1455
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@3f
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    #@42
    move-result v0

    #@43
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    #@46
    .line 1456
    :goto_46
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@48
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    #@4b
    move-result v0

    #@4c
    if-ge v2, v0, :cond_69

    #@4e
    .line 1457
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    #@50
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    #@53
    move-result-object v0

    #@54
    .line 1458
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    #@57
    move-result-object v1

    #@58
    .line 1459
    invoke-virtual {v0, v1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    #@5b
    .line 1460
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@5d
    if-ne v0, v3, :cond_66

    #@5f
    .line 1461
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v1, v0}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    #@66
    :cond_66
    add-int/lit8 v2, v2, 0x1

    #@68
    goto :goto_46

    #@69
    :cond_69
    :goto_69
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 3032
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    #@3
    .line 3033
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    #@6
    const/4 p1, 0x0

    #@7
    .line 3034
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    #@9
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 4084
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 4085
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->drawHint(Landroid/graphics/Canvas;)V

    #@6
    .line 4086
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->drawBoxUnderline(Landroid/graphics/Canvas;)V

    #@9
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 5

    #@0
    .line 4194
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 4201
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    #@8
    .line 4203
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    #@b
    .line 4205
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    #@e
    move-result-object v1

    #@f
    .line 4208
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@11
    const/4 v3, 0x0

    #@12
    if-eqz v2, :cond_1a

    #@14
    .line 4209
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    #@17
    move-result v1

    #@18
    or-int/2addr v1, v3

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move v1, v3

    #@1b
    .line 4213
    :goto_1b
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@1d
    if-eqz v2, :cond_30

    #@1f
    .line 4214
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2c

    #@25
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2c

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v0, v3

    #@2d
    :goto_2d
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    #@30
    .line 4216
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    #@33
    .line 4217
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@36
    if-eqz v1, :cond_3b

    #@38
    .line 4220
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    #@3b
    .line 4223
    :cond_3b
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    #@3d
    return-void
.end method

.method public getBaseline()I
    .registers 3

    #@0
    .line 1583
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_13

    #@4
    .line 1584
    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    return v0

    #@13
    .line 1586
    :cond_13
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method getBoxBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 3

    #@0
    .line 730
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_f

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_9

    #@8
    goto :goto_f

    #@9
    .line 733
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@e
    throw v0

    #@f
    .line 731
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    return-object v0
.end method

.method public getBoxBackgroundColor()I
    .registers 2

    #@0
    .line 1227
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@2
    return v0
.end method

.method public getBoxBackgroundMode()I
    .registers 2

    #@0
    .line 769
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@2
    return v0
.end method

.method public getBoxCollapsedPaddingTop()I
    .registers 2

    #@0
    .line 1012
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    #@2
    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .registers 3

    #@0
    .line 1364
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 1365
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@e
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@11
    move-result v0

    #@12
    goto :goto_1f

    #@13
    .line 1366
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@15
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@1b
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@1e
    move-result v0

    #@1f
    :goto_1f
    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .registers 3

    #@0
    .line 1376
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 1377
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@e
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@11
    move-result v0

    #@12
    goto :goto_1f

    #@13
    .line 1378
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@15
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@1b
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@1e
    move-result v0

    #@1f
    :goto_1f
    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .registers 3

    #@0
    .line 1352
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 1353
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@e
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@11
    move-result v0

    #@12
    goto :goto_1f

    #@13
    .line 1354
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@15
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@1b
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@1e
    move-result v0

    #@1f
    :goto_1f
    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .registers 3

    #@0
    .line 1340
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 1341
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@e
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@11
    move-result v0

    #@12
    goto :goto_1f

    #@13
    .line 1342
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@15
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@1b
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@1e
    move-result v0

    #@1f
    :goto_1f
    return v0
.end method

.method public getBoxStrokeColor()I
    .registers 2

    #@0
    .line 1110
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    #@2
    return v0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1160
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getBoxStrokeWidth()I
    .registers 2

    #@0
    .line 1048
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    #@2
    return v0
.end method

.method public getBoxStrokeWidthFocused()I
    .registers 2

    #@0
    .line 1085
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    #@2
    return v0
.end method

.method public getCounterMaxLength()I
    .registers 2

    #@0
    .line 2686
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    #@2
    return v0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 2695
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    #@2
    if-eqz v0, :cond_11

    #@4
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@6
    if-eqz v0, :cond_11

    #@8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 2696
    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    return-object v0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 2286
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 2243
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1944
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    #@0
    .line 1638
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 3673
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 3567
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEndIconMinSize()I
    .registers 2

    #@0
    .line 3589
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconMinSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEndIconMode()I
    .registers 2

    #@0
    .line 3416
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEndIconScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    #@0
    .line 3635
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconScaleType()Landroid/widget/ImageView$ScaleType;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .registers 2

    #@0
    .line 3940
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 3045
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    :goto_10
    return-object v0
.end method

.method public getErrorAccessibilityLiveRegion()I
    .registers 2

    #@0
    .line 2095
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorAccessibilityLiveRegion()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 2076
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .registers 2

    #@0
    .line 1975
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 2153
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 3057
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isHelperTextEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 3058
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    :goto_10
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .registers 2

    #@0
    .line 2052
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperTextViewCurrentTextColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 1816
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0
.end method

.method final getHintCollapsedTextHeight()F
    .registers 2

    #@0
    .line 4398
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .registers 2

    #@0
    .line 4393
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1925
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getLengthCounter()Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;
    .registers 2

    #@0
    .line 1423
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->lengthCounter:Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;

    #@2
    return-object v0
.end method

.method public getMaxEms()I
    .registers 2

    #@0
    .line 1688
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxEms:I

    #@2
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    #@0
    .line 1770
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxWidth:I

    #@2
    return v0
.end method

.method public getMinEms()I
    .registers 2

    #@0
    .line 1663
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->minEms:I

    #@2
    return v0
.end method

.method public getMinWidth()I
    .registers 2

    #@0
    .line 1729
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->minWidth:I

    #@2
    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3848
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3834
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 2412
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0
.end method

.method public getPlaceholderTextAppearance()I
    .registers 2

    #@0
    .line 2530
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextAppearance:I

    #@2
    return v0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 2507
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 2553
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getPrefixText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 2585
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getPrefixTextColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 2566
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getPrefixTextView()Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 1250
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 3364
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 3231
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStartIconMinSize()I
    .registers 2

    #@0
    .line 3253
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getStartIconMinSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStartIconScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    #@0
    .line 3612
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getStartIconScaleType()Landroid/widget/ImageView$ScaleType;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 2617
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getSuffixText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 2649
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getSuffixTextColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 2630
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getSuffixTextView()Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 1405
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    #@2
    return-object v0
.end method

.method public isCounterEnabled()Z
    .registers 2

    #@0
    .line 2296
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    #@2
    return v0
.end method

.method public isEndIconCheckable()Z
    .registers 2

    #@0
    .line 3528
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconCheckable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEndIconVisible()Z
    .registers 2

    #@0
    .line 3488
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    #@0
    .line 1999
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isExpandedHintEnabled()Z
    .registers 2

    #@0
    .line 3090
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    #@2
    return v0
.end method

.method final isHelperTextDisplayed()Z
    .registers 2

    #@0
    .line 4388
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextIsDisplayed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isHelperTextEnabled()Z
    .registers 2

    #@0
    .line 2046
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isHelperTextEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isHintAnimationEnabled()Z
    .registers 2

    #@0
    .line 3069
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    #@2
    return v0
.end method

.method public isHintEnabled()Z
    .registers 2

    #@0
    .line 1869
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@2
    return v0
.end method

.method final isHintExpanded()Z
    .registers 2

    #@0
    .line 4383
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@2
    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3859
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isPasswordVisibilityToggleEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isProvidingHint()Z
    .registers 2

    #@0
    .line 1881
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    #@2
    return v0
.end method

.method public isStartIconCheckable()Z
    .registers 2

    #@0
    .line 3326
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->isStartIconCheckable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStartIconVisible()Z
    .registers 2

    #@0
    .line 3295
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->isStartIconVisible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    .line 4091
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 4092
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    #@8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 4045
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    #@3
    .line 4047
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@5
    if-eqz p1, :cond_56

    #@7
    .line 4048
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    #@9
    .line 4049
    invoke-static {p0, p1, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 4050
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->updateBoxUnderlineBounds(Landroid/graphics/Rect;)V

    #@f
    .line 4052
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@11
    if-eqz p1, :cond_56

    #@13
    .line 4053
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@15
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@17
    invoke-virtual {p3}, Landroid/widget/EditText;->getTextSize()F

    #@1a
    move-result p3

    #@1b
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextSize(F)V

    #@1e
    .line 4054
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@20
    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    #@23
    move-result p1

    #@24
    .line 4055
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@26
    and-int/lit8 p4, p1, -0x71

    #@28
    or-int/lit8 p4, p4, 0x30

    #@2a
    invoke-virtual {p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    #@2d
    .line 4057
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2f
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    #@32
    .line 4058
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@34
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->calculateCollapsedTextBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@37
    move-result-object p3

    #@38
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(Landroid/graphics/Rect;)V

    #@3b
    .line 4059
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@3d
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->calculateExpandedTextBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@40
    move-result-object p2

    #@41
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(Landroid/graphics/Rect;)V

    #@44
    .line 4060
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@46
    invoke-virtual {p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    #@49
    .line 4064
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    #@4c
    move-result p1

    #@4d
    if-eqz p1, :cond_56

    #@4f
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    #@51
    if-nez p1, :cond_56

    #@53
    .line 4065
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    #@56
    :cond_56
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    #@0
    .line 3148
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@3
    .line 3150
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextHeightBasedOnIcon()Z

    #@6
    move-result p1

    #@7
    .line 3151
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    #@a
    move-result p2

    #@b
    if-nez p1, :cond_f

    #@d
    if-eqz p2, :cond_19

    #@f
    .line 3153
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@11
    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout$3;

    #@13
    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout$3;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    #@16
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    #@19
    .line 3161
    :cond_19
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderMeasurementsBasedOnEditText()V

    #@1c
    .line 3162
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@1e
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextViewPadding()V

    #@21
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 3010
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 3011
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 3014
    :cond_8
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    #@a
    .line 3015
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 3016
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    #@13
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    #@16
    .line 3017
    iget-boolean p1, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isEndIconChecked:Z

    #@18
    if-eqz p1, :cond_22

    #@1a
    .line 3019
    new-instance p1, Lcom/google/android/material/textfield/TextInputLayout$2;

    #@1c
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$2;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    #@1f
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->post(Ljava/lang/Runnable;)Z

    #@22
    .line 3027
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->requestLayout()V

    #@25
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 11

    #@0
    .line 3109
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    #@3
    const/4 v0, 0x1

    #@4
    if-ne p1, v0, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 3111
    :goto_8
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->areCornerRadiiRtl:Z

    #@a
    if-eq v0, p1, :cond_81

    #@c
    .line 3113
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@e
    .line 3114
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@11
    move-result-object p1

    #@12
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@14
    invoke-interface {p1, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@17
    move-result p1

    #@18
    .line 3115
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@1a
    .line 3116
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@20
    invoke-interface {v1, v2}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@23
    move-result v1

    #@24
    .line 3117
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@26
    .line 3118
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@29
    move-result-object v2

    #@2a
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@2c
    invoke-interface {v2, v3}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@2f
    move-result v2

    #@30
    .line 3119
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@32
    .line 3120
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@35
    move-result-object v3

    #@36
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    #@38
    invoke-interface {v3, v4}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@3b
    move-result v3

    #@3c
    .line 3121
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@3e
    .line 3122
    invoke-virtual {v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@41
    move-result-object v4

    #@42
    .line 3123
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@44
    .line 3124
    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@47
    move-result-object v5

    #@48
    .line 3125
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@4a
    .line 3126
    invoke-virtual {v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@4d
    move-result-object v6

    #@4e
    .line 3127
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@50
    .line 3128
    invoke-virtual {v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    #@53
    move-result-object v7

    #@54
    .line 3131
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@57
    move-result-object v8

    #@58
    .line 3132
    invoke-virtual {v8, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@5b
    move-result-object v5

    #@5c
    .line 3133
    invoke-virtual {v5, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@5f
    move-result-object v4

    #@60
    .line 3134
    invoke-virtual {v4, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@63
    move-result-object v4

    #@64
    .line 3135
    invoke-virtual {v4, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@67
    move-result-object v4

    #@68
    .line 3136
    invoke-virtual {v4, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@6b
    move-result-object v1

    #@6c
    .line 3137
    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@6f
    move-result-object p1

    #@70
    .line 3138
    invoke-virtual {p1, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@73
    move-result-object p1

    #@74
    .line 3139
    invoke-virtual {p1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@77
    move-result-object p1

    #@78
    .line 3140
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@7b
    move-result-object p1

    #@7c
    .line 3141
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->areCornerRadiiRtl:Z

    #@7e
    .line 3142
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@81
    :cond_81
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 2999
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 3000
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    #@6
    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 3001
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowError()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_15

    #@f
    .line 3002
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    #@15
    .line 3004
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@17
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconChecked()Z

    #@1a
    move-result v0

    #@1b
    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isEndIconChecked:Z

    #@1d
    return-object v1
.end method

.method public passwordVisibilityToggleRequested(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3921
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->togglePasswordVisibilityToggle(Z)V

    #@5
    return-void
.end method

.method public refreshEndIconDrawableState()V
    .registers 2

    #@0
    .line 3505
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshEndIconDrawableState()V

    #@5
    return-void
.end method

.method public refreshErrorIconDrawableState()V
    .registers 2

    #@0
    .line 3470
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshErrorIconDrawableState()V

    #@5
    return-void
.end method

.method public refreshStartIconDrawableState()V
    .registers 2

    #@0
    .line 3303
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->refreshStartIconDrawableState()V

    #@5
    return-void
.end method

.method public removeOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V
    .registers 3

    #@0
    .line 3754
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public removeOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V
    .registers 3

    #@0
    .line 3723
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->removeOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    #@5
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .registers 3

    #@0
    .line 1188
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 1189
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@6
    .line 1190
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    #@8
    .line 1191
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    #@a
    .line 1192
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    #@c
    .line 1193
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    #@f
    :cond_f
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .registers 3

    #@0
    .line 1173
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    #@b
    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    .line 1207
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    #@6
    .line 1208
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@8
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [I

    #@b
    const/4 v1, 0x0

    #@c
    const v2, -0x101009e

    #@f
    aput v2, v0, v1

    #@11
    const/4 v1, -0x1

    #@12
    .line 1210
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    #@18
    const/4 v0, 0x2

    #@19
    new-array v2, v0, [I

    #@1b
    .line 1211
    fill-array-data v2, :array_34

    #@1e
    .line 1212
    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@21
    move-result v2

    #@22
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    #@24
    new-array v0, v0, [I

    #@26
    .line 1214
    fill-array-data v0, :array_3c

    #@29
    .line 1215
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@2c
    move-result p1

    #@2d
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    #@2f
    .line 1217
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    #@32
    return-void

    #@33
    nop

    #@34
    :array_34
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    #@3c
    :array_3c
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public setBoxBackgroundMode(I)V
    .registers 3

    #@0
    .line 752
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 755
    :cond_5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@7
    .line 756
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 757
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    #@e
    :cond_e
    return-void
.end method

.method public setBoxCollapsedPaddingTop(I)V
    .registers 2

    #@0
    .line 1002
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    #@2
    return-void
.end method

.method public setBoxCornerFamily(I)V
    .registers 4

    #@0
    .line 1260
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    .line 1261
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@8
    .line 1262
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@12
    .line 1263
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@1c
    .line 1264
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@23
    move-result-object v0

    #@24
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@26
    .line 1265
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@2d
    move-result-object p1

    #@2e
    .line 1266
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@31
    move-result-object p1

    #@32
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@34
    .line 1267
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    #@37
    return-void
.end method

.method public setBoxCornerRadii(FFFF)V
    .registers 7

    #@0
    .line 1308
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->areCornerRadiiRtl:Z

    #@6
    if-eqz v0, :cond_a

    #@8
    move v1, p2

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v1, p1

    #@b
    :goto_b
    if-eqz v0, :cond_e

    #@d
    goto :goto_f

    #@e
    :cond_e
    move p1, p2

    #@f
    :goto_f
    if-eqz v0, :cond_13

    #@11
    move p2, p4

    #@12
    goto :goto_14

    #@13
    :cond_13
    move p2, p3

    #@14
    :goto_14
    if-eqz v0, :cond_17

    #@16
    goto :goto_18

    #@17
    :cond_17
    move p3, p4

    #@18
    .line 1317
    :goto_18
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1a
    if-eqz p4, :cond_42

    #@1c
    .line 1318
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    #@1f
    move-result p4

    #@20
    cmpl-float p4, p4, v1

    #@22
    if-nez p4, :cond_42

    #@24
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@26
    .line 1319
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopRightCornerResolvedSize()F

    #@29
    move-result p4

    #@2a
    cmpl-float p4, p4, p1

    #@2c
    if-nez p4, :cond_42

    #@2e
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@30
    .line 1320
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomLeftCornerResolvedSize()F

    #@33
    move-result p4

    #@34
    cmpl-float p4, p4, p2

    #@36
    if-nez p4, :cond_42

    #@38
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3a
    .line 1321
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomRightCornerResolvedSize()F

    #@3d
    move-result p4

    #@3e
    cmpl-float p4, p4, p3

    #@40
    if-eqz p4, :cond_61

    #@42
    .line 1322
    :cond_42
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@44
    .line 1323
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@47
    move-result-object p4

    #@48
    .line 1324
    invoke-virtual {p4, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@4b
    move-result-object p4

    #@4c
    .line 1325
    invoke-virtual {p4, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@4f
    move-result-object p1

    #@50
    .line 1326
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@53
    move-result-object p1

    #@54
    .line 1327
    invoke-virtual {p1, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@57
    move-result-object p1

    #@58
    .line 1328
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@5b
    move-result-object p1

    #@5c
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@5e
    .line 1329
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    #@61
    :cond_61
    return-void
.end method

.method public setBoxCornerRadiiResources(IIII)V
    .registers 6

    #@0
    .line 1285
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@b
    move-result p1

    #@c
    .line 1286
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    #@17
    move-result p2

    #@18
    .line 1287
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    #@23
    move-result p4

    #@24
    .line 1288
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    #@2f
    move-result p3

    #@30
    .line 1284
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    #@33
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .registers 3

    #@0
    .line 1097
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1098
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    #@6
    .line 1099
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@9
    :cond_9
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    .line 1119
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_34

    #@6
    .line 1120
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    #@c
    const/4 v0, 0x1

    #@d
    new-array v0, v0, [I

    #@f
    const/4 v1, 0x0

    #@10
    const v2, -0x101009e

    #@13
    aput v2, v0, v1

    #@15
    const/4 v1, -0x1

    #@16
    .line 1122
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    #@1c
    const/4 v0, 0x2

    #@1d
    new-array v2, v0, [I

    #@1f
    .line 1123
    fill-array-data v2, :array_46

    #@22
    .line 1124
    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@25
    move-result v2

    #@26
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    #@28
    new-array v0, v0, [I

    #@2a
    .line 1126
    fill-array-data v0, :array_4e

    #@2d
    .line 1127
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@30
    move-result p1

    #@31
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    #@33
    goto :goto_42

    #@34
    .line 1129
    :cond_34
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    #@36
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@39
    move-result v1

    #@3a
    if-eq v0, v1, :cond_42

    #@3c
    .line 1132
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@3f
    move-result p1

    #@40
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    #@42
    .line 1134
    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@45
    return-void

    #@46
    :array_46
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    #@4e
    :array_4e
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1146
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1147
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@6
    .line 1148
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@9
    :cond_9
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .registers 2

    #@0
    .line 1037
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    #@2
    .line 1038
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@5
    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .registers 2

    #@0
    .line 1074
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    #@2
    .line 1075
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@5
    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .registers 3

    #@0
    .line 1062
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    #@b
    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .registers 3

    #@0
    .line 1025
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    #@b
    return-void
.end method

.method public setCounterEnabled(Z)V
    .registers 5

    #@0
    .line 2183
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    #@2
    if-eq v0, p1, :cond_55

    #@4
    const/4 v0, 0x2

    #@5
    if-eqz p1, :cond_49

    #@7
    .line 2185
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    #@9
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@10
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@12
    .line 2186
    sget v2, Lcom/google/android/material/R$id;->textinput_counter:I

    #@14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    #@17
    .line 2187
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    #@19
    if-eqz v1, :cond_20

    #@1b
    .line 2188
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@1d
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@20
    .line 2190
    :cond_20
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@22
    const/4 v2, 0x1

    #@23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    #@26
    .line 2191
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@28
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@2a
    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    #@2d
    .line 2192
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@2f
    .line 2193
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@35
    .line 2194
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@38
    move-result-object v1

    #@39
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_textinput_counter_margin_start:I

    #@3b
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@3e
    move-result v1

    #@3f
    .line 2192
    invoke-static {v0, v1}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@42
    .line 2195
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    #@45
    .line 2196
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter()V

    #@48
    goto :goto_53

    #@49
    .line 2198
    :cond_49
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@4b
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@4d
    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    #@50
    const/4 v0, 0x0

    #@51
    .line 2199
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@53
    .line 2201
    :goto_53
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    #@55
    :cond_55
    return-void
.end method

.method public setCounterMaxLength(I)V
    .registers 3

    #@0
    .line 2306
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    #@2
    if-eq v0, p1, :cond_13

    #@4
    if-lez p1, :cond_9

    #@6
    .line 2308
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    #@8
    goto :goto_c

    #@9
    :cond_9
    const/4 p1, -0x1

    #@a
    .line 2310
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    #@c
    .line 2312
    :goto_c
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    #@e
    if-eqz p1, :cond_13

    #@10
    .line 2313
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter()V

    #@13
    :cond_13
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .registers 3

    #@0
    .line 2254
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 2255
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    #@6
    .line 2256
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    #@9
    :cond_9
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 2270
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 2271
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 2272
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    #@9
    :cond_9
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .registers 3

    #@0
    .line 2213
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 2214
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    #@6
    .line 2215
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    #@9
    :cond_9
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 2228
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 2229
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 2230
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    #@9
    :cond_9
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 1930
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 1931
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    #@4
    .line 1933
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@6
    if-eqz p1, :cond_c

    #@8
    const/4 p1, 0x0

    #@9
    .line 1934
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    #@c
    :cond_c
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    #@0
    .line 2666
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    #@3
    .line 2667
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    #@6
    return-void
.end method

.method public setEndIconActivated(Z)V
    .registers 3

    #@0
    .line 3497
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconActivated(Z)V

    #@5
    return-void
.end method

.method public setEndIconCheckable(Z)V
    .registers 3

    #@0
    .line 3519
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconCheckable(Z)V

    #@5
    return-void
.end method

.method public setEndIconContentDescription(I)V
    .registers 3

    #@0
    .line 3648
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconContentDescription(I)V

    #@5
    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 3662
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setEndIconDrawable(I)V
    .registers 3

    #@0
    .line 3542
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconDrawable(I)V

    #@5
    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 3556
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setEndIconMinSize(I)V
    .registers 3

    #@0
    .line 3578
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMinSize(I)V

    #@5
    return-void
.end method

.method public setEndIconMode(I)V
    .registers 3

    #@0
    .line 3404
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMode(I)V

    #@5
    return-void
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    #@0
    .line 3427
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5
    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    #@0
    .line 3450
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@5
    return-void
.end method

.method public setEndIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    #@0
    .line 3623
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@5
    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 3688
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 3700
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@5
    return-void
.end method

.method public setEndIconVisible(Z)V
    .registers 3

    #@0
    .line 3479
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconVisible(Z)V

    #@5
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 2109
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    .line 2110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/4 v0, 0x1

    #@10
    .line 2115
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    #@13
    .line 2118
    :cond_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1f

    #@19
    .line 2119
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@1b
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->showError(Ljava/lang/CharSequence;)V

    #@1e
    goto :goto_24

    #@1f
    .line 2121
    :cond_1f
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@21
    invoke-virtual {p1}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    #@24
    :goto_24
    return-void
.end method

.method public setErrorAccessibilityLiveRegion(I)V
    .registers 3

    #@0
    .line 2086
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorAccessibilityLiveRegion(I)V

    #@5
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 2066
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setErrorEnabled(Z)V
    .registers 3

    #@0
    .line 1955
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorEnabled(Z)V

    #@5
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .registers 3

    #@0
    .line 2132
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconDrawable(I)V

    #@5
    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 2142
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    #@0
    .line 3438
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5
    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    #@0
    .line 3462
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@5
    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 2163
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 2174
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@5
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .registers 3

    #@0
    .line 1964
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    #@5
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1969
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .registers 3

    #@0
    .line 3101
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    #@2
    if-eq v0, p1, :cond_a

    #@4
    .line 3102
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    #@6
    const/4 p1, 0x0

    #@7
    .line 3103
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    #@a
    :cond_a
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 2027
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 2028
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_20

    #@c
    const/4 p1, 0x0

    #@d
    .line 2029
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    #@10
    goto :goto_20

    #@11
    .line 2032
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1b

    #@17
    const/4 v0, 0x1

    #@18
    .line 2033
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    #@1b
    .line 2035
    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@1d
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->showHelper(Ljava/lang/CharSequence;)V

    #@20
    :cond_20
    :goto_20
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1989
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .registers 3

    #@0
    .line 2010
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextEnabled(Z)V

    #@5
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .registers 3

    #@0
    .line 1984
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    #@5
    return-void
.end method

.method public setHint(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 1794
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    #@f
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 1780
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 1781
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    #@7
    const/16 p1, 0x800

    #@9
    .line 1782
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->sendAccessibilityEvent(I)V

    #@c
    :cond_c
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .registers 2

    #@0
    .line 3079
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    #@2
    return-void
.end method

.method public setHintEnabled(Z)V
    .registers 4

    #@0
    .line 1831
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@2
    if-eq p1, v0, :cond_51

    #@4
    .line 1832
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    #@6
    const/4 v0, 0x0

    #@7
    if-nez p1, :cond_2b

    #@9
    const/4 p1, 0x0

    #@a
    .line 1835
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    #@c
    .line 1836
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    #@e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result p1

    #@12
    if-nez p1, :cond_27

    #@14
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@16
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    #@19
    move-result-object p1

    #@1a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d
    move-result p1

    #@1e
    if-eqz p1, :cond_27

    #@20
    .line 1838
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@22
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    #@24
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@27
    .line 1841
    :cond_27
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    #@2a
    goto :goto_4a

    #@2b
    .line 1843
    :cond_2b
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2d
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    #@30
    move-result-object p1

    #@31
    .line 1844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_47

    #@37
    .line 1847
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    #@39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_42

    #@3f
    .line 1848
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    #@42
    .line 1850
    :cond_42
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@44
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@47
    :cond_47
    const/4 p1, 0x1

    #@48
    .line 1852
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    #@4a
    .line 1856
    :goto_4a
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@4c
    if-eqz p1, :cond_51

    #@4e
    .line 1857
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    #@51
    :cond_51
    return-void
.end method

.method public setHintTextAppearance(I)V
    .registers 3

    #@0
    .line 1890
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    #@5
    .line 1891
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@7
    invoke-virtual {p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    #@a
    move-result-object p1

    #@b
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    #@d
    .line 1893
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@f
    if-eqz p1, :cond_18

    #@11
    const/4 p1, 0x0

    #@12
    .line 1894
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    #@15
    .line 1896
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    #@18
    :cond_18
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1905
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_17

    #@4
    .line 1906
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    #@6
    if-nez v0, :cond_d

    #@8
    .line 1907
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    #@d
    .line 1910
    :cond_d
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    #@f
    .line 1912
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@11
    if-eqz p1, :cond_17

    #@13
    const/4 p1, 0x0

    #@14
    .line 1913
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    #@17
    :cond_17
    return-void
.end method

.method public setLengthCounter(Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;)V
    .registers 2

    #@0
    .line 1414
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->lengthCounter:Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;

    #@2
    return-void
.end method

.method public setMaxEms(I)V
    .registers 4

    #@0
    .line 1675
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxEms:I

    #@2
    .line 1676
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@4
    if-eqz v0, :cond_c

    #@6
    const/4 v1, -0x1

    #@7
    if-eq p1, v1, :cond_c

    #@9
    .line 1677
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxEms(I)V

    #@c
    :cond_c
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 4

    #@0
    .line 1742
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxWidth:I

    #@2
    .line 1743
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@4
    if-eqz v0, :cond_c

    #@6
    const/4 v1, -0x1

    #@7
    if-eq p1, v1, :cond_c

    #@9
    .line 1744
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxWidth(I)V

    #@c
    :cond_c
    return-void
.end method

.method public setMaxWidthResource(I)V
    .registers 3

    #@0
    .line 1758
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    #@f
    return-void
.end method

.method public setMinEms(I)V
    .registers 4

    #@0
    .line 1650
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->minEms:I

    #@2
    .line 1651
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@4
    if-eqz v0, :cond_c

    #@6
    const/4 v1, -0x1

    #@7
    if-eq p1, v1, :cond_c

    #@9
    .line 1652
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinEms(I)V

    #@c
    :cond_c
    return-void
.end method

.method public setMinWidth(I)V
    .registers 4

    #@0
    .line 1701
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->minWidth:I

    #@2
    .line 1702
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@4
    if-eqz v0, :cond_c

    #@6
    const/4 v1, -0x1

    #@7
    if-eq p1, v1, :cond_c

    #@9
    .line 1703
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinWidth(I)V

    #@c
    :cond_c
    return-void
.end method

.method public setMinWidthResource(I)V
    .registers 3

    #@0
    .line 1717
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    #@f
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3805
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleContentDescription(I)V

    #@5
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3821
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3774
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleDrawable(I)V

    #@5
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3789
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3874
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleEnabled(Z)V

    #@5
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3891
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3905
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@5
    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .registers 5

    #@0
    .line 2377
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@2
    if-nez v0, :cond_35

    #@4
    .line 2378
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@f
    .line 2379
    sget v1, Lcom/google/android/material/R$id;->textinput_placeholder:I

    #@11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    #@14
    .line 2380
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@16
    const/4 v1, 0x2

    #@17
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@1a
    .line 2383
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->createPlaceholderFadeTransition()Landroidx/transition/Fade;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderFadeIn:Landroidx/transition/Fade;

    #@20
    const-wide/16 v1, 0x43

    #@22
    .line 2384
    invoke-virtual {v0, v1, v2}, Landroidx/transition/Fade;->setStartDelay(J)Landroidx/transition/Transition;

    #@25
    .line 2385
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->createPlaceholderFadeTransition()Landroidx/transition/Fade;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderFadeOut:Landroidx/transition/Fade;

    #@2b
    .line 2387
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextAppearance:I

    #@2d
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    #@30
    .line 2388
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextColor:Landroid/content/res/ColorStateList;

    #@32
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    #@35
    .line 2392
    :cond_35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_40

    #@3b
    const/4 p1, 0x0

    #@3c
    .line 2393
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    #@3f
    goto :goto_4a

    #@40
    .line 2395
    :cond_40
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    #@42
    if-nez v0, :cond_48

    #@44
    const/4 v0, 0x1

    #@45
    .line 2397
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    #@48
    .line 2399
    :cond_48
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    #@4a
    .line 2401
    :goto_4a
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText()V

    #@4d
    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .registers 3

    #@0
    .line 2517
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextAppearance:I

    #@2
    .line 2518
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 2519
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@9
    :cond_9
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 2492
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 2493
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 2494
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    #@8
    if-eqz v0, :cond_f

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 2495
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@f
    :cond_f
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 2542
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setPrefixText(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .registers 3

    #@0
    .line 2594
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setPrefixTextAppearance(I)V

    #@5
    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 2575
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setPrefixTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    #@0
    .line 1237
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-eqz v0, :cond_f

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@7
    move-result-object v0

    #@8
    if-eq v0, p1, :cond_f

    #@a
    .line 1238
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@c
    .line 1239
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    #@f
    :cond_f
    return-void
.end method

.method public setStartIconCheckable(Z)V
    .registers 3

    #@0
    .line 3317
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconCheckable(Z)V

    #@5
    return-void
.end method

.method public setStartIconContentDescription(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 3339
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    #@f
    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 3353
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setStartIconDrawable(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 3206
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 3219
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setStartIconMinSize(I)V
    .registers 3

    #@0
    .line 3242
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconMinSize(I)V

    #@5
    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    #@0
    .line 3265
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5
    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    #@0
    .line 3277
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@5
    return-void
.end method

.method public setStartIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    #@0
    .line 3600
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@5
    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 3379
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 3391
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@5
    return-void
.end method

.method public setStartIconVisible(Z)V
    .registers 3

    #@0
    .line 3286
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconVisible(Z)V

    #@5
    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 2606
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .registers 3

    #@0
    .line 2658
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setSuffixTextAppearance(I)V

    #@5
    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 2639
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setSuffixTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 2718
    :try_start_1
    invoke-static {p1, p2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@4
    .line 2721
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@7
    move-result-object p2

    #@8
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@b
    move-result p2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_14

    #@c
    const v1, -0xff01

    #@f
    if-ne p2, v1, :cond_12

    #@11
    goto :goto_14

    #@12
    :cond_12
    const/4 p2, 0x0

    #@13
    move v0, p2

    #@14
    :catch_14
    :goto_14
    if-eqz v0, :cond_28

    #@16
    .line 2735
    sget p2, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Caption:I

    #@18
    invoke-static {p1, p2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@1b
    .line 2736
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@1e
    move-result-object p2

    #@1f
    sget v0, Lcom/google/android/material/R$color;->design_error:I

    #@21
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@24
    move-result p2

    #@25
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    #@28
    :cond_28
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V
    .registers 3

    #@0
    .line 3933
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 3934
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@7
    :cond_7
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    #@0
    .line 1388
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    #@2
    if-eq p1, v0, :cond_17

    #@4
    .line 1389
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    #@6
    .line 1391
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    #@b
    .line 1392
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@d
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTypefaces(Landroid/graphics/Typeface;)V

    #@10
    .line 1394
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@12
    if-eqz v0, :cond_17

    #@14
    .line 1395
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@17
    :cond_17
    return-void
.end method

.method shouldShowError()Z
    .registers 2

    #@0
    .line 2940
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method updateCounter(Landroid/text/Editable;)V
    .registers 10

    #@0
    .line 2325
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->lengthCounter:Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;->countLength(Landroid/text/Editable;)I

    #@5
    move-result p1

    #@6
    .line 2327
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@8
    .line 2328
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    #@a
    const/4 v2, -0x1

    #@b
    const/4 v3, 0x0

    #@c
    if-ne v1, v2, :cond_20

    #@e
    .line 2329
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@17
    .line 2330
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1d
    .line 2331
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@1f
    goto :goto_64

    #@20
    :cond_20
    const/4 v2, 0x1

    #@21
    if-le p1, v1, :cond_25

    #@23
    move v1, v2

    #@24
    goto :goto_26

    #@25
    :cond_25
    move v1, v3

    #@26
    .line 2333
    :goto_26
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@28
    .line 2335
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v1

    #@2c
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@2e
    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    #@30
    iget-boolean v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@32
    .line 2334
    invoke-static {v1, v4, p1, v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterContentDescription(Landroid/content/Context;Landroid/widget/TextView;IIZ)V

    #@35
    .line 2337
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@37
    if-eq v0, v1, :cond_3c

    #@39
    .line 2338
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    #@3c
    .line 2340
    :cond_3c
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    #@3f
    move-result-object v1

    #@40
    .line 2341
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@42
    .line 2343
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@45
    move-result-object v5

    #@46
    sget v6, Lcom/google/android/material/R$string;->character_counter_pattern:I

    #@48
    const/4 v7, 0x2

    #@49
    new-array v7, v7, [Ljava/lang/Object;

    #@4b
    .line 2344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object p1

    #@4f
    aput-object p1, v7, v3

    #@51
    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    #@53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object p1

    #@57
    aput-object p1, v7, v2

    #@59
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@5c
    move-result-object p1

    #@5d
    .line 2342
    invoke-virtual {v1, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object p1

    #@61
    .line 2341
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@64
    .line 2346
    :goto_64
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@66
    if-eqz p1, :cond_75

    #@68
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@6a
    if-eq v0, p1, :cond_75

    #@6c
    .line 2347
    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    #@6f
    .line 2348
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@72
    .line 2349
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    #@75
    :cond_75
    return-void
.end method

.method updateDummyDrawables()Z
    .registers 11

    #@0
    .line 3954
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 3960
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldUpdateStartDummyDrawable()Z

    #@9
    move-result v0

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x2

    #@c
    const/4 v4, 0x3

    #@d
    const/4 v5, 0x1

    #@e
    if-eqz v0, :cond_49

    #@10
    .line 3961
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Lcom/google/android/material/textfield/StartCompoundLayout;

    #@12
    invoke-virtual {v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getMeasuredWidth()I

    #@15
    move-result v0

    #@16
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@18
    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingLeft()I

    #@1b
    move-result v6

    #@1c
    sub-int/2addr v0, v6

    #@1d
    .line 3962
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@1f
    if-eqz v6, :cond_25

    #@21
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawableWidth:I

    #@23
    if-eq v6, v0, :cond_31

    #@25
    .line 3963
    :cond_25
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    #@27
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    #@2a
    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    .line 3964
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawableWidth:I

    #@2e
    .line 3965
    invoke-virtual {v6, v1, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@31
    .line 3967
    :cond_31
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@33
    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@36
    move-result-object v0

    #@37
    .line 3968
    aget-object v6, v0, v1

    #@39
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@3b
    if-eq v6, v7, :cond_62

    #@3d
    .line 3969
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@3f
    aget-object v8, v0, v5

    #@41
    aget-object v9, v0, v3

    #@43
    aget-object v0, v0, v4

    #@45
    invoke-static {v6, v7, v8, v9, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@48
    goto :goto_60

    #@49
    .line 3973
    :cond_49
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@4b
    if-eqz v0, :cond_62

    #@4d
    .line 3975
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@4f
    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@52
    move-result-object v0

    #@53
    .line 3976
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@55
    aget-object v7, v0, v5

    #@57
    aget-object v8, v0, v3

    #@59
    aget-object v0, v0, v4

    #@5b
    invoke-static {v6, v2, v7, v8, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@5e
    .line 3978
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@60
    :goto_60
    move v0, v5

    #@61
    goto :goto_63

    #@62
    :cond_62
    move v0, v1

    #@63
    .line 3983
    :goto_63
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldUpdateEndDummyDrawable()Z

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_d7

    #@69
    .line 3984
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@6b
    invoke-virtual {v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->getSuffixTextView()Landroid/widget/TextView;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@72
    move-result v2

    #@73
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@75
    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingRight()I

    #@78
    move-result v6

    #@79
    sub-int/2addr v2, v6

    #@7a
    .line 3985
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@7c
    invoke-virtual {v6}, Lcom/google/android/material/textfield/EndCompoundLayout;->getCurrentEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    #@7f
    move-result-object v6

    #@80
    if-eqz v6, :cond_92

    #@82
    .line 3989
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    #@85
    move-result v7

    #@86
    add-int/2addr v2, v7

    #@87
    .line 3991
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@8a
    move-result-object v6

    #@8b
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8d
    .line 3990
    invoke-static {v6}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@90
    move-result v6

    #@91
    add-int/2addr v2, v6

    #@92
    .line 3993
    :cond_92
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@94
    invoke-static {v6}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@97
    move-result-object v6

    #@98
    .line 3994
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@9a
    if-eqz v7, :cond_b3

    #@9c
    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawableWidth:I

    #@9e
    if-eq v8, v2, :cond_b3

    #@a0
    .line 3997
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawableWidth:I

    #@a2
    .line 3998
    invoke-virtual {v7, v1, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@a5
    .line 3999
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@a7
    aget-object v1, v6, v1

    #@a9
    aget-object v2, v6, v5

    #@ab
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@ad
    aget-object v4, v6, v4

    #@af
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@b2
    goto :goto_f8

    #@b3
    :cond_b3
    if-nez v7, :cond_c1

    #@b5
    .line 4004
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    #@b7
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    #@ba
    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@bc
    .line 4005
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawableWidth:I

    #@be
    .line 4006
    invoke-virtual {v7, v1, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@c1
    .line 4009
    :cond_c1
    aget-object v2, v6, v3

    #@c3
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@c5
    if-eq v2, v3, :cond_d5

    #@c7
    .line 4010
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    #@c9
    .line 4011
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@cb
    aget-object v1, v6, v1

    #@cd
    aget-object v2, v6, v5

    #@cf
    aget-object v4, v6, v4

    #@d1
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@d4
    goto :goto_f8

    #@d5
    :cond_d5
    move v5, v0

    #@d6
    goto :goto_f8

    #@d7
    .line 4016
    :cond_d7
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@d9
    if-eqz v6, :cond_f9

    #@db
    .line 4018
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@dd
    invoke-static {v6}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@e0
    move-result-object v6

    #@e1
    .line 4019
    aget-object v3, v6, v3

    #@e3
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@e5
    if-ne v3, v7, :cond_f5

    #@e7
    .line 4020
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@e9
    aget-object v1, v6, v1

    #@eb
    aget-object v3, v6, v5

    #@ed
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    #@ef
    aget-object v4, v6, v4

    #@f1
    invoke-static {v0, v1, v3, v7, v4}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@f4
    goto :goto_f6

    #@f5
    :cond_f5
    move v5, v0

    #@f6
    .line 4024
    :goto_f6
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    #@f8
    :goto_f8
    move v0, v5

    #@f9
    :cond_f9
    return v0
.end method

.method updateEditTextBackground()V
    .registers 4

    #@0
    .line 2908
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_4c

    #@4
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@6
    if-eqz v1, :cond_9

    #@8
    goto :goto_4c

    #@9
    .line 2912
    :cond_9
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_10

    #@f
    return-void

    #@10
    .line 2917
    :cond_10
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1a

    #@16
    .line 2918
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v0

    #@1a
    .line 2921
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowError()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2e

    #@20
    .line 2925
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    #@23
    move-result v1

    #@24
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@26
    .line 2924
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@29
    move-result-object v1

    #@2a
    .line 2923
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@2d
    goto :goto_4c

    #@2e
    .line 2926
    :cond_2e
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@30
    if-eqz v1, :cond_44

    #@32
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@34
    if-eqz v1, :cond_44

    #@36
    .line 2930
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@39
    move-result v1

    #@3a
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@3c
    .line 2929
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@3f
    move-result-object v1

    #@40
    .line 2928
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@43
    goto :goto_4c

    #@44
    .line 2934
    :cond_44
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    #@47
    .line 2935
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@49
    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    #@4c
    :cond_4c
    :goto_4c
    return-void
.end method

.method updateEditTextBoxBackgroundIfNeeded()V
    .registers 3

    #@0
    .line 812
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_23

    #@4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@6
    if-eqz v1, :cond_23

    #@8
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundApplied:Z

    #@a
    if-nez v1, :cond_12

    #@c
    .line 815
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_23

    #@12
    :cond_12
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@14
    if-nez v0, :cond_17

    #@16
    goto :goto_23

    #@17
    .line 819
    :cond_17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@19
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditTextBoxBackground()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@20
    const/4 v0, 0x1

    #@21
    .line 820
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundApplied:Z

    #@23
    :cond_23
    :goto_23
    return-void
.end method

.method updateLabelState(Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1591
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    #@4
    return-void
.end method

.method updateTextInputBoxState()V
    .registers 7

    #@0
    .line 4227
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    if-eqz v0, :cond_e2

    #@4
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@6
    if-nez v0, :cond_a

    #@8
    goto/16 :goto_e2

    #@a
    .line 4231
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isFocused()Z

    #@d
    move-result v0

    #@e
    const/4 v1, 0x0

    #@f
    const/4 v2, 0x1

    #@10
    if-nez v0, :cond_1f

    #@12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@14
    if-eqz v0, :cond_1d

    #@16
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1d

    #@1c
    goto :goto_1f

    #@1d
    :cond_1d
    move v0, v1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    :goto_1f
    move v0, v2

    #@20
    .line 4232
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHovered()Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_33

    #@26
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@28
    if-eqz v3, :cond_31

    #@2a
    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_31

    #@30
    goto :goto_33

    #@31
    :cond_31
    move v3, v1

    #@32
    goto :goto_34

    #@33
    :cond_33
    :goto_33
    move v3, v2

    #@34
    .line 4233
    :goto_34
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowError()Z

    #@37
    move-result v4

    #@38
    if-nez v4, :cond_42

    #@3a
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@3c
    if-eqz v4, :cond_43

    #@3e
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@40
    if-eqz v4, :cond_43

    #@42
    :cond_42
    move v1, v2

    #@43
    .line 4236
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    #@46
    move-result v4

    #@47
    if-nez v4, :cond_4e

    #@49
    .line 4237
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    #@4b
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@4d
    goto :goto_8c

    #@4e
    .line 4238
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowError()Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_63

    #@54
    .line 4239
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@56
    if-eqz v4, :cond_5c

    #@58
    .line 4240
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateStrokeErrorColor(ZZ)V

    #@5b
    goto :goto_8c

    #@5c
    .line 4242
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    #@5f
    move-result v4

    #@60
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@62
    goto :goto_8c

    #@63
    .line 4244
    :cond_63
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    #@65
    if-eqz v4, :cond_7a

    #@67
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    #@69
    if-eqz v4, :cond_7a

    #@6b
    .line 4245
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    #@6d
    if-eqz v5, :cond_73

    #@6f
    .line 4246
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateStrokeErrorColor(ZZ)V

    #@72
    goto :goto_8c

    #@73
    .line 4248
    :cond_73
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@76
    move-result v4

    #@77
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@79
    goto :goto_8c

    #@7a
    :cond_7a
    if-eqz v0, :cond_81

    #@7c
    .line 4251
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    #@7e
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@80
    goto :goto_8c

    #@81
    :cond_81
    if-eqz v3, :cond_88

    #@83
    .line 4253
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    #@85
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@87
    goto :goto_8c

    #@88
    .line 4255
    :cond_88
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    #@8a
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    #@8c
    .line 4258
    :goto_8c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8e
    const/16 v5, 0x1d

    #@90
    if-lt v4, v5, :cond_95

    #@92
    .line 4259
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateCursorColor(Z)V

    #@95
    .line 4262
    :cond_95
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@97
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->onTextInputBoxStateUpdated()V

    #@9a
    .line 4264
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->refreshStartIconDrawableState()V

    #@9d
    .line 4270
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@9f
    const/4 v4, 0x2

    #@a0
    if-ne v1, v4, :cond_bc

    #@a2
    .line 4271
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    #@a4
    if-eqz v0, :cond_b1

    #@a6
    .line 4272
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    #@a9
    move-result v4

    #@aa
    if-eqz v4, :cond_b1

    #@ac
    .line 4273
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    #@ae
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    #@b0
    goto :goto_b5

    #@b1
    .line 4275
    :cond_b1
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    #@b3
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    #@b5
    .line 4277
    :goto_b5
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    #@b7
    if-eq v4, v1, :cond_bc

    #@b9
    .line 4279
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->recalculateCutout()V

    #@bc
    .line 4284
    :cond_bc
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    #@be
    if-ne v1, v2, :cond_df

    #@c0
    .line 4285
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    #@c3
    move-result v1

    #@c4
    if-nez v1, :cond_cb

    #@c6
    .line 4286
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    #@c8
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@ca
    goto :goto_df

    #@cb
    :cond_cb
    if-eqz v3, :cond_d4

    #@cd
    if-nez v0, :cond_d4

    #@cf
    .line 4288
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    #@d1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@d3
    goto :goto_df

    #@d4
    :cond_d4
    if-eqz v0, :cond_db

    #@d6
    .line 4290
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    #@d8
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@da
    goto :goto_df

    #@db
    .line 4292
    :cond_db
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    #@dd
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    #@df
    .line 4296
    :cond_df
    :goto_df
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    #@e2
    :cond_e2
    :goto_e2
    return-void
.end method
